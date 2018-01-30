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
<?php /*Make targets for C files*/?>
<?php foreach ($mfile->cFiles as $cFile) { ?>
OBJ_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $cFile->objFilePathName . "\n"?>
DEP_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $cFile->dependencyFilePathName . "\n"?>

<?php echo $cFile->objFilePathName ?>: <?php echo $cFile->filePathName  ?> <?php echo $mfile->targetThirdToolchainConfigMakeFilePathName . "\n"?>
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_THIRD) $(ADDITIONAL_EXE_THIRD) $(MAP_FILE_THIRD) $(LIB_OBJ_THIRD)
	@echo 'Compiling <?php echo $cFile->filePathName  ?>'
	$(COMPILE_COMMAND_T)
	@echo ' '

<?php } /*endforeach ($mfile->cFiles as $cFile)*/ ?>
<?php /*Make targets for asm files*/?>
<?php foreach ($mfile->asmFiles as $asmFile) { ?>
OBJ_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $asmFile->objFilePathName . "\n"?>
DEP_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $asmFile->dependencyFilePathName . "\n"?>

<?php echo $asmFile->objFilePathName ?>: <?php echo $asmFile->filePathName  ?> <?php echo $mfile->targetThirdToolchainConfigMakeFilePathName . "\n"?>
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_THIRD) $(ADDITIONAL_EXE_THIRD) $(MAP_FILE_THIRD) $(LIB_OBJ_THIRD)
	@echo 'Assembling <?php echo $asmFile->filePathName  ?>'
	$(ASM_COMMAND_T)
	@echo ' '

<?php } /*endforeach ($mfile->asmFiles as $asmFile)*/ ?>
