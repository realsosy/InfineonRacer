#include "AppTaskFu.h"
#include "AsclinShellInterface.h"

static sint32 task_cnt_1m = 0;
static sint32 task_cnt_10m = 0;
static sint32 task_cnt_100m = 0;
static sint32 task_cnt_1000m = 0;

boolean task_flag_1m = FALSE;
boolean task_flag_10m = FALSE;
boolean task_flag_100m = FALSE;
boolean task_flag_1000m = FALSE;

void appTaskfu_init(void){
    BasicVadcBgScan_init();
    AsclinShellInterface_init();
}

void appTaskfu_1ms(void)
{
	task_cnt_1m++;
	if(task_cnt_1m == 1000){
		task_cnt_1m = 0;
	}

}


void appTaskfu_10ms(void)
{
	task_cnt_10m++;
	if(task_cnt_10m == 1000){
		task_cnt_10m = 0;
	}
	if(task_cnt_10m%2 == 0){
		BasicVadcBgScan_run();
	}

}

void appTaskfu_100ms(void)
{
	task_cnt_100m++;
	if(task_cnt_100m == 1000){
		task_cnt_100m = 0;
	}

}

void appTaskfu_1000ms(void)
{
	task_cnt_1000m++;
	if(task_cnt_1000m == 1000){
		task_cnt_1000m = 0;
	}
	IfxStdIf_DPipe_print(&g_AsclinShellInterface.stdIf.asc, "  Vadc [0, 4095]");
	IfxStdIf_DPipe_print(&g_AsclinShellInterface.stdIf.asc, "  Ch15: %5d,",(uint32) (IR_getChn15()*4096));
	IfxStdIf_DPipe_print(&g_AsclinShellInterface.stdIf.asc, "  Ch16: %5d,",(uint32) (IR_getChn16()*4096));
	IfxStdIf_DPipe_print(&g_AsclinShellInterface.stdIf.asc, "  Ch20: %5d,",(uint32) (IR_getChn20()*4096));
	IfxStdIf_DPipe_print(&g_AsclinShellInterface.stdIf.asc, "  Ch21: %5d"ENDL,(uint32) (IR_getChn21()*4096));
}

void appTaskfu_idle(void){


}

void appIsrCb_1ms(void){

}

