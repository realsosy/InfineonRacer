/* ###*B*###
 * ERIKA Enterprise - a tiny RTOS for small microcontrollers
 *
 * Copyright (C) 2002-2011  Evidence Srl
 *
 * This file is part of ERIKA Enterprise.  ERIKA Enterprise is free software;
 * you can redistribute it and/or modify it under the terms of the
 * GPLv2 + Linking Exception license (contained in the file `ee/LICENSE').
 *
 * ERIKA Enterprise is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE.  See the license for more details.
 *
 * ###*E*### */

/*
 * This file contains the version numbers indicating changes in the
 * interface between RT-Druid and ERIKA source code.  Values can be checked
 * against RT-Druid's version in RTDRUID_CONFIGURATOR_NUMBER.
 */

#ifndef EE_RTDRUID_VERSIONS_H
#define EE_RTDRUID_VERSIONS_H

/* ORTI variables are no longer defined inside eecfg.c */
#define RTDRUID_CONFNUM_NO_ORTI_VARS 1273

/* Added syscall for ORTI service tracing  */
#define RTDRUID_CONFNUM_ORTI_SERVICE_API 1274

/* Added stack address in EE_APP_SEC_INFO_T */
#define RTDRUID_CONFNUM_STACK_IN_APP_SEC_INFO 1275

/* Added support for S12G, S12XS CPU support based on the common folder */
#define RTDRUID_CONFNUM_S12_COMMON_SUPPORT 1276

#endif /* EE_RTDRUID_VERSIONS_H */
