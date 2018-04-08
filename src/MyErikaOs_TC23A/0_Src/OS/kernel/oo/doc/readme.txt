Structure of the include files for the OO Kernel
--------------------------------------------------

ee_common.h
   ^
  /|\
   |
   +------------+
   |            |
   |            |
   |         ee_intfunc.h
   |            ^
   |           /|\
   |            |
   |         +--+--------+
   |         |           |
   |     ee_inline.h     |
   |         ^           |
   |        /|\          |
   |         |           |        | Directories...
   | +-------+           |        |
   | |                   |        |
ee_kern.h         ee_internal.h   | pkg/kernel/oo/inc
   ^                     ^        |
  /|\                   /|\       |
   |                     |        +--------------
   |                     |        |
ee.h              ee_internal.h   | pkg



Compilation of the oo primitives:
ee_internal.h -> ee_internal.h -> ee_intfunc.h -> ee_common.h

Compilation of the application (with source code):
ee.h -> ee_kernel.h -> ee_inline.h -> ee_intfunc.h -> ee_common.h

Compilation of the application (binary distribution):
ee.h -> ee_kernel.h -> ee_common.h

ee_common.h 
-----------
Contains the common part between application and kernel:
- constants
- types
- kernel configuration data structures ("extern" declarations)

ee_intfunc.h
------------
Contains a set of data structures/functions that are needed to write
inline functions

ee_inline.h
-----------
Inline functions

ee_kernel.h
-----------
OO API

ee_internal.h
-------------
Internal data structures that are not needed to be seen by the application
