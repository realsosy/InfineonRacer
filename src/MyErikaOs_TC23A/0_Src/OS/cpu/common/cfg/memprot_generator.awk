#!/usr/bin/awk

# ###*B*###
# ERIKA Enterprise - a tiny RTOS for small microcontrollers
# 
# Copyright (C) 2002-2011  Evidence Srl
# 
# This file is part of ERIKA Enterprise.
# 
# ERIKA Enterprise is free software; you can redistribute it
# and/or modify it under the terms of the GNU General Public License
# version 2 as published by the Free Software Foundation, 
# (with a special exception described below).
# 
# Linking this code statically or dynamically with other modules is
# making a combined work based on this code.  Thus, the terms and
# conditions of the GNU General Public License cover the whole
# combination.
# 
# As a special exception, the copyright holders of this library give you
# permission to link this code with independent modules to produce an
# executable, regardless of the license terms of these independent
# modules, and to copy and distribute the resulting executable under
# terms of your choice, provided that you also meet, for each linked
# independent module, the terms and conditions of the license of that
# module.  An independent module is a module which is not derived from
# or based on this library.  If you modify this code, you may extend
# this exception to your version of the code, but you are not
# obligated to do so.  If you do not wish to do so, delete this
# exception statement from your version.
# 
# ERIKA Enterprise is distributed in the hope that it will be
# useful, but WITHOUT ANY WARRANTY; without even the implied warranty
# of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License version 2 for more details.
# 
# You should have received a copy of the GNU General Public License
# version 2 along with ERIKA Enterprise; if not, write to the
# Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301 USA.
# ###*E*###

# Script to generate configuration files with memory protection active
# Author: 2011 Bernardo  Dal Seno

# This script expects a list of OS-application parameters followed by a
# template; the first line that doesn't seem to contain OS-application
# parameters is considered to be the first line of the template.  The script is
# a parser organized as a finite-state machine (there are only two recursion
# levels, so no stack is needed).  Whenever a FOR_EACH_APP marker is encoutered,
# text begins accumulating inside the sec_templ array, one row for every chunk
# of text enclosed between any two markers (INNER_FOR_EACH_PREV_APP and
# INNER_END_EACH_PREV_APP included).  When END_EACH_APP is encoutered,
# print_app-sections() is called, which runs through the content of sec_templ
# once for each OS-application.  print_sec_part() does the variable substition
# and also handles the repetition of the innner sections.
#
# Parser states:
#  0: parsing of application list
#  1: parsing of linker script template, outside any section
#  2: beginning of an application section
#  3: reading an application section
#  4: printing out an application section
#  5: beginning of a nested application section
#  6: reading a nested application section
#  7: exiting from a nested application section
#
# Please note that "section" above refers to a chunk of text between two markers
# in a template, not to a data or code section inside an object file

BEGIN {
	state = 0	# State of the parser (see above)
	numapps = 0	# Number of applications
}

# Other variables:
#   sec_part:	Current part of a section template (an integer, counting from 0)
#   sec_templ:	Section template, a two-dimension array
#		sec_templ[i, "templ"]: text, possibly containing variables to
#				be substituted
#		sec_templ[i, "type"]: 1 if the text comes from a nested
#				section, 0 otherwise
#   app_type:	Type of applictions the current section applies to (1 = trusted,
#		0 = unstrusted, -1 = both)

/[_A-Za-z0-9]+[[:space:]]+(0x[0-9a-fA-F]+|[0-9]+)[[:space:]]+(0x[0-9a-fA-F]+|[0-9]+)[[:space:]]+(0x[0-9a-fA-F]+|[0-9]+)/ {
	if (state == 0) {
		apps[numapps, "APP_NAME"] = $1
		apps[numapps, "APP_BASE"] = $2
		apps[numapps, "APP_SIZE"] = $3
		apps[numapps, "APP_TYPE"] = $4
		numapps += 1
	}
}

! /[_A-Za-z0-9]+[[:space:]]+(0x[0-9a-fA-F]+|[0-9]+)[[:space:]]+(0x[0-9a-fA-F]+|[0-9]+)[[:space:]]+(0x[0-9a-fA-F]+|[0-9]+)/ {
	if (state == 0) {
		state = 1
	}
}

/FOR_EACH_APP/ {
	if (state == 1) {
		sec_part = 0
		delete sec_templ
		sec_templ[sec_part, "templ"] = ""
		sec_templ[sec_part, "type"] = 0
		app_type = -1
		state = 2
	} else {
		print "FOR_EACH_APP found in the wrong context" >> "/dev/stderr"
		exit
	}
}

/INNER_FOR_EACH_PREV_APP/ {
	if (state == 3) {
		sec_part += 1
		sec_templ[sec_part, "templ"] = ""
		sec_templ[sec_part, "type"] = 1
		state = 5
	} else {
		print "INNER_FOR_EACH_PREV_APP found in the wrong context" \
			>> "/dev/stderr"
		exit
	}
}

/INNER_END_EACH_PREV_APP/ {
	if (state == 6) {
		sec_part += 1
		sec_templ[sec_part, "templ"] = ""
		sec_templ[sec_part, "type"] = 0
		state = 7;
	} else {
		print "INNER_END_EACH_PREV_APP found in the wrong context" \
			>> "/dev/stderr"
		exit
	}
}

/END_EACH_APP/ {
	if (state == 3) {
		state = 4
		print_app_sections(sec_templ, sec_part, app_type)
	} else {
		print "END_EACH_APP found in the wrong context" >> "/dev/stderr"
		exit
	}
}

{
	if (state == 1) {
		printf("%s\n", $0)
	} else if (state == 2) {
		state = 3
	} else if (state == 3 || state == 6) {
		sec_templ[sec_part, "templ"] = \
			sec_templ[sec_part, "templ"] $0 "\n"
	} else if (state == 4) {
		state = 1
	} else if (state == 5) {
		state = 6
	} else if (state == 7) {
		state = 3
	}
}


# Print the application section template `sec_templ', once for each application
# of the given type, after variable substitution.  `num_parts' is the number of
# parts composing the section.  `app_type' is 1 for trusted applications, 0 for
# untrusted applications, -1 for both.
function print_app_sections(sec_templ, num_parts, app_type,   i, j)
{
	for (j = 0; j < numapps; ++j) {
		for (i = 0; i <= num_parts; ++i) {
			print_sec_part(sec_templ[i, "templ"], \
				       sec_templ[i, "type"], j, app_type)
		}
	}
}


# Print the part `templ', from an application section.  If `type' is 1 (nested
# part) print the template once for each application `app' up to the current
# one; if it is 0, print the template for the current application `app.
# `app_type' is used to filter applications: it is 1 for trusted applications, 0
# for untrusted applications, -1 for both.
function print_sec_part(templ, type, app, app_type,   t, first, last, j)
{
	if (type == 1) {
		first = 0
		last = app - 1
	} else {
		first = app
		last = app
	}

	for (j = first; j <= last; ++j) {
		if (app_type == -1 || app_type == apps[j, "APP_TYPE"]) {
			t = templ
			gsub("\\$\\{APP_NAME\\}", apps[j, "APP_NAME"], t)
			gsub("\\$\\{APP_BASE\\}", apps[j, "APP_BASE"], t)
			gsub("\\$\\{APP_SIZE\\}", apps[j, "APP_SIZE"], t)
			printf("%s", t)
		}
	}
}
