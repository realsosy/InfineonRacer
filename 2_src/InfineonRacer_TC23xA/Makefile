################################################################################
SHELL = sh
################################################################################
# Automatically fetch the project name
PROJ_NAME= $(lastword $(subst /, ,$(CURDIR)))

include 1_ToolEnv/0_Build/1_Config/ConfigPrj.mk

.PHONY:all

all: $(PRE_BUILD_TARGET) build $(POST_BUILD_TARGET) 

build: $(PROJ_FIRST_SUBMAKE)
	@echo Now Build started !!!
	@$(MAKE) $(MULTI_PROC) --no-print-directory -f $(PROJ_FIRST_SUBMAKE) $(BUILD_TARGET)

$(PROJ_FIRST_SUBMAKE): $(SUBDIR_MAKE_TARGET)
	@echo Now the make files are generated !!!
	$(PHP) $(PHP_MAKEGEN_SCRIPT) $(MAKEGEN_COMMAND)
	@echo ''

#The target "clean" will remove obj + executables
clean: $(PROJ_FIRST_SUBMAKE)
	@$(MAKE) $(MULTI_PROC) --no-print-directory -f $(PROJ_FIRST_SUBMAKE) clean

#The target "cleanMake" will remove generated make files
cleanMake:
	@-rm -rf $(MAK_FILE_DIR)/*

#The target "rmall" will remove obj + executables and also generated make files
rmall:
	@-rm -rf 2_Out/*
	@-rm -rf $(MAK_FILE_DIR)/*

#The target "clean" will remove obj + executables + generated make files then rebuilds the whole project
rebuild: rmall all

#The target "indent" will make standard indentation and standard styling for the c and h files
indent:
	@$(MAKE) -i $(MULTI_PROC) --no-print-directory -f $(PROJ_DIR)/1_ToolEnv/0_Build/0_Utilities/Indent.mk

#The target "doc" invokes the doxygen tool to generate the doxygen files
doc:
	@$(MAKE) $(MULTI_PROC) --no-print-directory -f $(PROJ_DIR)/1_ToolEnv/0_Build/0_Utilities/Doxygen.mk
	
#The target "cleandoc" makes the output of documentation removed
cleandoc:
	@$(MAKE) $(MULTI_PROC) --no-print-directory -f $(PROJ_DIR)/1_ToolEnv/0_Build/0_Utilities/Doxygen.mk clean

#The target "oscfg" generates the Erika OS configurations
oscfg:
	@$(MAKE) -f $(PROJ_DIR)/1_ToolEnv/0_Build/0_Utilities/Erika_RT_Druid.mk

release:
	@echo Release Being Prepared !!!
	@-rm -rf 2_Out/Release
	@$(PHP) $(PHP_RELEASE_SCRIPT) "TOOLS_PATH=$(BINUTILS_PATH)"
	@echo ..Done
	
#The target "help" will provide the help on this make targets	
Help:
	@echo "Software Framework $(FW_VERSION)"
	@echo "Used iLLD version: $(ILLD_VERSION)"
	@echo "Copyright © 2014 Infineon Technologies AG. All rights reserved."
	@echo
	@echo "GnuWin32 tool versions used with Software Framework Tools:"
	@make --version
	@sed --version
	@find --version
	@echo
	@echo "PHP tool versions used with Software Framework Tools:"
	$(PHP) --version
	@echo
	@echo "Usage: make -f Makefile <target>"
	@echo "following are the make targets"
	@echo  
	@echo "all: Recursive project build"
	@echo "example: make -f Makefile all"
	@echo  
	@echo "clean: removes the generated object files and executables for the configured toolchain"
	@echo "example: make -f Makefile clean"
	@echo  
	@echo "rmall: removes generated make files object files and executables. This command shall always be used when toolchain configuration changed"
	@echo "example: make -f Makefile rmall"
	@echo  
	@echo "rebuild: removes generated make files object files and executables. builds the projects"
	@echo "example: make -f Makefile rebuild"
	@echo  
	@echo "indent: Format the c and header files for non excluded part of the project. Exclude of required part shall be done with the file 1_ToolEnv/0_Build/1_Config/CfgIndent.mk"
	@echo "example: make -f Makefile indent"
	@echo  
	@echo "doc: Generate the doxygen docuement for non excluded part of the project. Exclude of required part shall be done with the file 1_ToolEnv/0_Build/1_Config/CfgDoxygen.mk"
	@echo "example: make -f Makefile indent"
	@echo  
	@echo "cleandoc: Removes generated the doxygen docuements "
	@echo "example: make -f Makefile cleandoc"
	@echo  
	@echo "oscfg: generate the configuration files for Erika OS "
	@echo "example: make -f Makefile oscfg"
	@echo 
	@echo "help: displays this help message "
	@echo "example: make -f Makefile help"
	@echo  
	
#	@hh.exe help document under development
	
