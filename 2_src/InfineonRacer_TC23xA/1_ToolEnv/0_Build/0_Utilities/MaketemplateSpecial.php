<?php
/*Script only section*/
/*arguments passed from the caller*/
$mfile= $this->infoSourceObject;
?>
<?php /*template section*/ ?>
###############################################################################
#                                                                             #
#       Copyright (C) 2015 Infineon Technologies AG. All rights reserved.     #
#                                                                             #
#                                                                             #
#                              IMPORTANT NOTICE                               #
#                                                                             #
#                                                                             #
# Infineon Technologies AG (Infineon) is supplying this file for use          #
# exclusively with Infineon’s microcontroller products. This file can be      #
# freely distributed within development tools that are supporting such        #
# microcontroller products.                                                   #
#                                                                             #
# THIS SOFTWARE IS PROVIDED "AS IS".  NO WARRANTIES, WHETHER EXPRESS, IMPLIED #
# OR STATUTORY, INCLUDING, BUT NOT LIMITED TO, IMPLIED WARRANTIES OF          #
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE APPLY TO THIS SOFTWARE.#
# INFINEON SHALL NOT, IN ANY CIRCUMSTANCES, BE LIABLE FOR SPECIAL, INCIDENTAL,#
# OR CONSEQUENTIAL DAMAGES, FOR	ANY REASON WHATSOEVER.                        #
#                                                                             #
###############################################################################
# Subdirectory make file for <?php echo $mfile->sourceFolderName . "\n"?>
# This is for core type "<?php echo $mfile->cpuType ?>" and <?php echo $mfile->compiler ?> toolchain !
###############################################################################

<?php if($mfile->subFolderMakeIncludeString !="") { ?>
include <?php echo $mfile->subFolderMakeIncludeString . "\n"?>

<?php } /*endif($mfile->subFolderMakeIncludeString !="")*/?> 
<?php /*Make targets for asm files*/?>
<?php foreach ($mfile->asmFiles as $asmFile) { ?>
OBJ_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $asmFile->objFilePathName . "\n"?>
DEP_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $asmFile->dependencyFilePathName . "\n"?>

<?php echo $asmFile->objFilePathName ?>: <?php echo $asmFile->filePathName  ?> <?php echo $mfile->targetDefaultToolchainConfigMakeFilePathName . "\n"?>
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(HEX_BIN_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Assembling <?php echo $asmFile->filePathName  ?>'
	@echo 'Invoking: MCS Assembler'
	$(GTMASM) $< $(@:.o=.c) >$(@D)/asm.out
<?php if($mfile->compiler=="Tasking") { ?>
	$(CC) $(CC_OPTS) $(@:.o=.c) -o $(@:.o=.src)
	$(AS) $(ASM_OPTS) $(@:.o=.src) -o $@	
<?php } elseif($mfile->compiler=="Gnuc") { ?>
	$(CC) $(CC_OPTS) -c $(@:.o=.c) -o $@ -MMD
<?php } elseif($mfile->compiler=="Dcc") { ?>
	$(CC) $(CC_OPTS) -c $(@:.o=.c) $< -o $@ -Xmake-dependency=4 -Xmake-dependency-savefile=$(@:.o=.d)
<?php } /*endif($mfile->compiler=="Tasking/Gnuc/Dcc")*/ ?>
	@echo ' '

<?php } /*endforeach ($mfile->asmFiles as $asmFile)*/ ?>
