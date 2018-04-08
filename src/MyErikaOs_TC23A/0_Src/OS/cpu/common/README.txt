This directory contains a reference implementation of part of the HAL that
should be usable as it is in many platforms.  A new porting should use this
implementation when possible, or an ad-hoc implementation under cpu/XXX
otherwise.

Please do not modify these files to accommodate some quirks of your
architecture.  Instead, make a copy of them and create a branch under your
cpu/XXX directory or whatever.  Implementations that can potentially be useful on
many platforms are welcome; e.g., "inc/ee_compiler_gcc.h" works only for Gcc,
but it should work across all platforms where Gcc is available.
