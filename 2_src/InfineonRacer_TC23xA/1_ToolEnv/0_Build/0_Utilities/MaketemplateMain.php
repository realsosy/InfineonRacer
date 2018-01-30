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

<?php if($mfile->targetSecondCoreExists) { ?>
GENERATE_SECOND_EXE= Yes
<?php } /*endif($mfile->targetSecondCoreExists)*/?>
<?php if($mfile->targetThirdCoreExists) { ?>
GENERATE_THIRD_EXE= Yes
<?php } /*endif($mfile->targetThirdCoreExists)*/?>

<?php if($mfile->thisIsSourceRootFolder) { ?>
include <?php echo $mfile->targetDefaultToolchainConfigMakeFilePathName . "\n"?>
<?php if($mfile->targetSecondCoreExists) { ?>
include <?php echo $mfile->targetSecondToolchainConfigMakeFilePathName . "\n"?>
<?php } /*endif($mfile->targetSecondCoreExists)*/?>
<?php if($mfile->targetThirdCoreExists) { ?>
include <?php echo $mfile->targetThirdToolchainConfigMakeFilePathName . "\n"?>
<?php } /*endif($mfile->targetThirdCoreExists)*/?>
include <?php echo $mfile->projectConfigMakeFilePathName . "\n"?>

<?php } /*endif($mfile->thisIsSourceRootFolder)*/?>
<?php if($mfile->subFolderMakeIncludeString !="") { ?>
include <?php echo $mfile->subFolderMakeIncludeString . "\n"?>

<?php } /*endif($mfile->subFolderMakeIncludeString !="")*/?>
<?php /*Make targets for C files*/?>
<?php foreach ($mfile->cFiles as $cFile) { ?>
OBJ_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $cFile->objFilePathName . "\n"?>
DEP_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $cFile->dependencyFilePathName . "\n"?>

<?php echo $cFile->objFilePathName ?>: <?php echo $cFile->filePathName ?> <?php echo $mfile->targetDefaultToolchainConfigMakeFilePathName . "\n"?>
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Compiling <?php echo $cFile->filePathName ?>'
<?php if($mfile->compiler=="Tasking") { ?>
	$(CC) -o $(@:.o=.src) $< --dep-file=$(@:.o=.dep) $(CC_OPTS) -f <?php echo $mfile->cIncludePathListFilePathName ?> 
	$(AS) -o $@ $(@:.o=.src) $(ASM_OPTS)
	@sed $(call TaskingDepConversionString,$(@F),$(@D)) $(@:.o=.dep) >$(@:.o=.d)
	@rm -f $(@:.o=.dep)	
<?php } elseif($mfile->compiler=="Gnuc") { ?>
	$(CC) $(CC_OPTS) @<?php echo $mfile->cIncludePathListFilePathName ?> -c $< -o $@ -save-temps=obj -MMD
<?php } elseif($mfile->compiler=="Dcc") { ?>
	$(CC) $(CC_OPTS) @<?php echo $mfile->cIncludePathListFilePathName ?> -c $< -o $@ -Xmake-dependency=4 -Xmake-dependency-savefile=$(@:.o=.d)
<?php } /*endif($mfile->compiler=="Tasking/Gnuc/Dcc")*/ ?>
	@echo ' '

<?php } /*endforeach ($mfile->cFiles as $cFile)*/ ?>
<?php /*Make targets for asm files*/?>
<?php foreach ($mfile->asmFiles as $asmFile) { ?>
OBJ_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $asmFile->objFilePathName ?> <?php echo $mfile->targetDefaultToolchainConfigMakeFilePathName . "\n"?>
DEP_FILES_<?php echo $mfile->cpuType ?>+= <?php echo $asmFile->dependencyFilePathName . "\n"?>

<?php echo $asmFile->objFilePathName ?>: <?php echo $asmFile->filePathName . "\n"?>
	@mkdir -p $(@D)
	@rm -f $(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN) $(MAP_FILE_MAIN) $(LIB_OBJ_MAIN)
	@echo 'Assembling <?php echo $asmFile->filePathName  ?>'
<?php if($mfile->compiler=="Tasking") { ?>
	$(AS) -o $@ $< --dep-file=$(@:.o=.dep) $(ASM_OPTS) -f <?php echo $mfile->asmIncludePathListFilePathName ?> 
	@sed $(call TaskingDepConversionString,$(@F),$(@D)) $(@:.o=.dep) >$(@:.o=.d)
	@rm -f $(@:.o=.dep)	
<?php } elseif($mfile->compiler=="Gnuc") { ?>
	$(CC) $(ASM_OPTS) @<?php echo $mfile->asmIncludePathListFilePathName ?> $< -o $@ 
<?php } elseif($mfile->compiler=="Dcc") { ?>
	$(CC) $(ASM_OPTS) @<?php echo $mfile->asmIncludePathListFilePathName ?> -c $< -o $@ -Xmake-dependency=4 -Xmake-dependency-savefile=$(@:.o=.d)
<?php } /*endif($mfile->compiler=="Tasking/Gnuc/Dcc")*/ ?>
	@echo ' '

<?php } /*endforeach ($mfile->asmFiles as $asmFile)*/ ?>
<?php if($mfile->thisIsSourceRootFolder) { ?>
.PHONY: All_Targets

ExeTargets:$(ELF_BIN_MAIN) $(ADDITIONAL_EXE_MAIN)<?php 
	if($mfile->targetSecondCoreExists) echo " $(ELF_BIN_SECOND)"; 
	if($mfile->targetThirdCoreExists) echo " $(ELF_BIN_THIRD)";
	echo "\n"; 
?>
	@echo '...Done'

PROJ_OBJS_MAIN:= <?php echo $mfile->objFilesForDefaultCoreString . "\n"?>

$(ELF_BIN_MAIN): $(OBJ_FILES_SPECIAL) $(OBJ_FILES_MAIN) $(PROJ_OBJS_MAIN) $(USER_MAKE_OBJS_MAIN) $(LSL_MAIN_FILE) $(PROJCONFIG_MAKE_FILE)
	@echo 'Building target: $@'
<?php if($mfile->compiler=="Tasking") { ?>
	$(LD) -f <?php echo $mfile->defaultObjListFilePathName ?> $(USER_MAKE_OBJS_MAIN) $(LD_OPTS) -L$(LIB_DIR)
<?php } elseif($mfile->compiler=="Gnuc") { ?>
	$(LD) $(LD_OPTS) $(LIB_DIR) @<?php echo $mfile->defaultObjListFilePathName ?> $(USER_MAKE_OBJS_MAIN) $(LIBS) -o $(ELF_BIN_MAIN)
	
$(HEX_BIN_MAIN): $(ELF_BIN_MAIN)
	$(HX) $(ELF_BIN_MAIN) -O ihex $(HEX_BIN_MAIN)
	
$(SREC_BIN_MAIN): $(ELF_BIN_MAIN)
	$(HX) $(ELF_BIN_MAIN) -O srec $(SREC_BIN_MAIN)
<?php } elseif($mfile->compiler=="Dcc") { ?>
	$(LD) $(LD_OPTS) -o $(ELF_BIN_MAIN) $(LIB_DIR) @<?php echo $mfile->defaultObjListFilePathName ?> $(USER_MAKE_OBJS_MAIN) $(LIBS)
	
$(HEX_BIN_MAIN): $(ELF_BIN_MAIN)
	$(DD) -R -o $(HEX_BIN_MAIN) $(ELF_BIN_MAIN)
	
$(SREC_BIN_MAIN): $(ELF_BIN_MAIN)
	$(DD) -R -o $(SREC_BIN_MAIN) $(ELF_BIN_MAIN)
<?php } /*endif($mfile->compiler=="Tasking/Gnuc/Dcc")*/?>
	@echo ' '

<?php /*Targets for the second target type*/ ?>
<?php if($mfile->targetSecondCoreExists) { ?>
PROJ_OBJS_SECOND:= <?php echo $mfile->objFilesForSecondCoreString . "\n"?>

$(ELF_BIN_SECOND): $(OBJ_FILES_SECOND) $(PROJ_OBJS_SECOND) $(USER_MAKE_OBJS_SECOND) $(LSL_SECOND_FILE) $(PROJCONFIG_MAKE_FILE)
	@echo 'Building target: $@'
	$(LD_COMMAND_S)
	@echo ' '

<?php } /*endif($mfile->targetSecondCoreExists)*/?>
<?php /*Targets for the third target type*/ ?>
<?php if($mfile->targetThirdCoreExists) { ?>
PROJ_OBJS_THIRD:= <?php echo $mfile->objFilesForThirdCoreString . "\n"?>

$(ELF_BIN_THIRD): $(OBJ_FILES_THIRD) $(PROJ_OBJS_THIRD) $(USER_MAKE_OBJS_THIRD) $(LSL_THIRD_FILE) $(PROJCONFIG_MAKE_FILE)
	@echo 'Building target: $@'
	$(LD_COMMAND_T)
	@echo ' '

<?php } /*endif($mfile->targetThirdCoreExists)*/?>
Archive: $(LIB_OBJ_MAIN)<?php 
	if($mfile->targetSecondCoreExists) echo " $(LIB_OBJ_SECOND)"; 
	if($mfile->targetThirdCoreExists) echo " $(LIB_OBJ_THIRD)";
	echo "\n"; 
?>
	@echo '...Done'

$(LIB_OBJ_MAIN): $(OBJ_FILES_SPECIAL) $(OBJ_FILES_MAIN) $(PROJ_OBJS_MAIN) $(USER_MAKE_OBJS_MAIN) $(PROJCONFIG_MAKE_FILE)
	@echo 'Building library: $@'
<?php if($mfile->compiler=="Tasking") { ?>
	$(AR) -rc $@ -f <?php echo $mfile->defaultObjListFilePathName ?> $(USER_MAKE_OBJS_MAIN)
<?php } elseif($mfile->compiler=="Gnuc") { ?>
	$(AR) rcs $@ @<?php echo $mfile->defaultObjListFilePathName ?> $(USER_MAKE_OBJS_MAIN)
<?php } elseif($mfile->compiler=="Dcc") { ?>
	$(AR) -rc $@ @<?php echo $mfile->defaultObjListFilePathName ?> $(USER_MAKE_OBJS_MAIN)
<?php } /*endif($mfile->compiler=="Tasking/Gnuc/Dcc")*/?>
	@echo ' '
	
<?php /*Targets for the second target type*/ ?>
<?php if(FALSE /*!!Blocked !! $mfile->targetSecondCoreExists*/) { ?>
$(LIB_OBJ_SECOND): $(OBJ_FILES_SECOND) $(PROJ_OBJS_SECOND) $(USER_MAKE_OBJS_SECOND) $(PROJCONFIG_MAKE_FILE)
	@echo 'Building library: $@'
	$(AR_COMMAND_S)
	@echo ' '
	
<?php } /*endif($mfile->targetSecondCoreExists)*/?>
<?php /*Targets for the third target type*/ ?>
<?php if(FALSE /*!!Blocked !! $mfile->targetThirdCoreExists*/) { ?>
$(LIB_OBJ_THIRD): $(OBJ_FILES_THIRD) $(PROJ_OBJS_THIRD) $(USER_MAKE_OBJS_THIRD) $(PROJCONFIG_MAKE_FILE)
	@echo 'Building library: $@'
	$(AR_COMMAND_T)
	@echo ' '
	
<?php } /*endif($mfile->targetThirdCoreExists)*/?>
clean: 
	@-rm -rf $(OUT_DIR) <?php if($mfile->targetSecondCoreExists) echo "$(OUT_DIR_SECOND)"; if($mfile->targetThirdCoreExists) echo " $(OUT_DIR_THIRD)"; ?> 

-include $(DEP_FILES_MAIN)
-include $(DEP_FILES_SPECIAL)
<?php if($mfile->targetSecondCoreExists) { ?>
-include $(DEP_FILES_SECOND)
<?php } /*endif($mfile->targetSecondCoreExists)*/?>
<?php if($mfile->targetThirdCoreExists) { ?>
-include $(DEP_FILES_THIRD)
<?php } /*endif($mfile->targetThirdCoreExists)*/?>
<?php } /*endif($mfile->thisIsSourceRootFolder)*/?>
