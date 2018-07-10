#include "AppTaskFu.h"

static sint32 task_cnt_1m = 0;
static sint32 task_cnt_10m = 0;
static sint32 task_cnt_100m = 0;
static sint32 task_cnt_1000m = 0;

boolean task_flag_1m = FALSE;
boolean task_flag_10m = FALSE;
boolean task_flag_100m = FALSE;
boolean task_flag_1000m = FALSE;

void appTaskfu_init(void){
	BasicLineScan_init();
	BasicPort_init();
    BasicGtmTom_init();
    BasicVadcBgScan_init();
    BasicGpt12Enc_init();
    AsclinShellInterface_init();

    tft_app_init(1);
    perf_meas_init();
    background_light_init();

#ifdef CODE_ERT
    IR_Controller_initialize();
#else
    InfineonRacer_init();
#endif
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
		BasicLineScan_run();
		InfineonRacer_detectLane();
		BasicPort_run();
		BasicGtmTom_run();
		BasicVadcBgScan_run();

		if(IR_Ctrl.basicTest == FALSE){
			#ifdef CODE_ERT
				IR_Controller_step();
			#else
				InfineonRacer_control();
			#endif
		}
		AsclinShellInterface_runLineScan();
	}

}

void appTaskfu_100ms(void)
{
	task_cnt_100m++;
	if(task_cnt_100m == 1000){
		task_cnt_100m = 0;
	}
	if(task_cnt_100m % REFRESH_TFT == 0){
		tft_app_run();
	}
}

void appTaskfu_1000ms(void)
{
	task_cnt_1000m++;
	if(task_cnt_1000m == 1000){
		task_cnt_1000m = 0;
	}

}

void appTaskfu_idle(void){
	AsclinShellInterface_run();
	perf_meas_idle();

}

void appIsrCb_1ms(void){
	BasicGpt12Enc_run();
}

