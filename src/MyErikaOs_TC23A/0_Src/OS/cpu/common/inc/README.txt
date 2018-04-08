The header files contained in this directory should be building blocks for other
architectures.  They should not include each other, nor include
architecture-dependent headers; it is okay to include general headers, like
"ee.h" or "ee_internals.h" (please notice that this is the one sitting in
'ee/pkg').  In this way, an implementation is free to use only the parts
needed/suitable for a particular architecture.
