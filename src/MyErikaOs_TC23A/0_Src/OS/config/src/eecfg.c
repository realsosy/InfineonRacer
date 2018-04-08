#include "ee.h"



/***************************************************************************
 *
 * Stack definition for TriCore
 *
 **************************************************************************/
    #define STACK_1_SIZE 256 /* size = 256 bytes */
    #define STACK_2_SIZE 256 /* size = 256 bytes */
    #define STACK_3_SIZE 256 /* size = 256 bytes */
    #define STACK_4_SIZE 256 /* size = 256 bytes */

    EE_STACK_T EE_STACK_ATTRIB EE_tc_stack_1[EE_STACK_WLEN(STACK_1_SIZE)] EE_TC_FILL_STACK(EE_tc_stack_1);	/* Task 0 (IFX_OSTASK_EVENT1) */
    EE_STACK_T EE_STACK_ATTRIB EE_tc_stack_2[EE_STACK_WLEN(STACK_2_SIZE)] EE_TC_FILL_STACK(EE_tc_stack_2);	/* Task 1 (IFX_OSTASK_EVENT2) */
    EE_STACK_T EE_STACK_ATTRIB EE_tc_stack_3[EE_STACK_WLEN(STACK_3_SIZE)] EE_TC_FILL_STACK(EE_tc_stack_3);	/* Task 2 (IFX_OSTASK_EVENT3) */
    EE_STACK_T EE_STACK_ATTRIB EE_tc_stack_4[EE_STACK_WLEN(STACK_4_SIZE)] EE_TC_FILL_STACK(EE_tc_stack_4);	/* irq stack */

    const EE_UREG EE_std_thread_tos[EE_MAX_TASK+1] = {
        0U,	/* dummy */
        1U,	/* IFX_OSTASK_EVENT1 */
        2U,	/* IFX_OSTASK_EVENT2 */
        3U,	/* IFX_OSTASK_EVENT3 */
        0U,	/* IFX_OSTASK_1MS */
        0U,	/* IFX_OSTASK_5MS */
        0U,	/* IFX_OSTASK_10MS */
        0U,	/* IFX_OSTASK_20MS */
        0U,	/* IFX_OSTASK_50MS */
        0U,	/* IFX_OSTASK_100MS */
        0U,	/* IFX_OSTASK_BACKGROUND */
        0U 	/* IFX_OSTASK_INIT */
    };

    struct EE_TC_TOS EE_tc_system_tos[4] = {
        {0, 0U},	/* Task   (dummy), Task 3 (IFX_OSTASK_1MS), Task 4 (IFX_OSTASK_5MS), Task 5 (IFX_OSTASK_10MS), Task 6 (IFX_OSTASK_20MS), Task 7 (IFX_OSTASK_50MS), Task 8 (IFX_OSTASK_100MS), Task 9 (IFX_OSTASK_BACKGROUND), Task 10 (IFX_OSTASK_INIT) */
        {EE_STACK_INITP(EE_tc_stack_1), 0U},	/* Task 0 (IFX_OSTASK_EVENT1) */
        {EE_STACK_INITP(EE_tc_stack_2), 0U},	/* Task 1 (IFX_OSTASK_EVENT2) */
        {EE_STACK_INITP(EE_tc_stack_3), 0U} 	/* Task 2 (IFX_OSTASK_EVENT3) */
    };

    EE_UREG EE_tc_active_tos = 0U;/* dummy */

    EE_ADDR EE_tc_tasks_RA[EE_MAX_TASK+1];

    /* stack used only by IRQ handlers */
    struct EE_TOS EE_tc_IRQ_tos = {
        EE_STACK_INITP(EE_tc_stack_4)
    };



/***************************************************************************
 *
 * Kernel ( CPU 0 )
 *
 **************************************************************************/
    /* Definition of task's body */
    DeclareTask(IFX_OSTASK_EVENT1);
    DeclareTask(IFX_OSTASK_EVENT2);
    DeclareTask(IFX_OSTASK_EVENT3);
    DeclareTask(IFX_OSTASK_1MS);
    DeclareTask(IFX_OSTASK_5MS);
    DeclareTask(IFX_OSTASK_10MS);
    DeclareTask(IFX_OSTASK_20MS);
    DeclareTask(IFX_OSTASK_50MS);
    DeclareTask(IFX_OSTASK_100MS);
    DeclareTask(IFX_OSTASK_BACKGROUND);
    DeclareTask(IFX_OSTASK_INIT);

    const EE_THREAD_PTR EE_hal_thread_body[EE_MAX_TASK] = {
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_EVENT1 */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_EVENT2 */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_EVENT3 */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_1MS */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_5MS */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_10MS */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_20MS */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_50MS */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_100MS */
        &EE_oo_thread_stub,		 /* thread IFX_OSTASK_BACKGROUND */
        &EE_oo_thread_stub 		 /* thread IFX_OSTASK_INIT */

    };

    EE_UINT32 EE_terminate_data[EE_MAX_TASK];

    /* ip of each thread body (ROM) */
    const EE_THREAD_PTR EE_terminate_real_th_body[EE_MAX_TASK] = {
        &FuncIFX_OSTASK_EVENT1,
        &FuncIFX_OSTASK_EVENT2,
        &FuncIFX_OSTASK_EVENT3,
        &FuncIFX_OSTASK_1MS,
        &FuncIFX_OSTASK_5MS,
        &FuncIFX_OSTASK_10MS,
        &FuncIFX_OSTASK_20MS,
        &FuncIFX_OSTASK_50MS,
        &FuncIFX_OSTASK_100MS,
        &FuncIFX_OSTASK_BACKGROUND,
        &FuncIFX_OSTASK_INIT
    };
    /* ready priority */
    const EE_TYPEPRIO EE_th_ready_prio[EE_MAX_TASK] = {
        0x40U,		 /* thread IFX_OSTASK_EVENT1 */
        0x40U,		 /* thread IFX_OSTASK_EVENT2 */
        0x40U,		 /* thread IFX_OSTASK_EVENT3 */
        0x40U,		 /* thread IFX_OSTASK_1MS */
        0x20U,		 /* thread IFX_OSTASK_5MS */
        0x10U,		 /* thread IFX_OSTASK_10MS */
        0x8U,		 /* thread IFX_OSTASK_20MS */
        0x4U,		 /* thread IFX_OSTASK_50MS */
        0x2U,		 /* thread IFX_OSTASK_100MS */
        0x1U,		 /* thread IFX_OSTASK_BACKGROUND */
        0x2U 		 /* thread IFX_OSTASK_INIT */
    };

    const EE_TYPEPRIO EE_th_dispatch_prio[EE_MAX_TASK] = {
        0x40U,		 /* thread IFX_OSTASK_EVENT1 */
        0x40U,		 /* thread IFX_OSTASK_EVENT2 */
        0x40U,		 /* thread IFX_OSTASK_EVENT3 */
        0x40U,		 /* thread IFX_OSTASK_1MS */
        0x20U,		 /* thread IFX_OSTASK_5MS */
        0x10U,		 /* thread IFX_OSTASK_10MS */
        0x8U,		 /* thread IFX_OSTASK_20MS */
        0x4U,		 /* thread IFX_OSTASK_50MS */
        0x2U,		 /* thread IFX_OSTASK_100MS */
        0x1U,		 /* thread IFX_OSTASK_BACKGROUND */
        0x2U 		 /* thread IFX_OSTASK_INIT */
    };

    /* thread status */
    EE_TYPESTATUS EE_th_status[EE_MAX_TASK] = {
        SUSPENDED,
        SUSPENDED,
        SUSPENDED,
        SUSPENDED,
        SUSPENDED,
        SUSPENDED,
        SUSPENDED,
        SUSPENDED,
        SUSPENDED,
        SUSPENDED,
        SUSPENDED
    };

    /* next thread */
    EE_TID EE_th_next[EE_MAX_TASK] = {
        EE_NIL,
        EE_NIL,
        EE_NIL,
        EE_NIL,
        EE_NIL,
        EE_NIL,
        EE_NIL,
        EE_NIL,
        EE_NIL,
        EE_NIL,
        EE_NIL
    };

    /* The first stacked task */
    EE_TID EE_stkfirst = EE_NIL;

    /* system ceiling */
    EE_TYPEPRIO EE_sys_ceiling= 0x0000U;

    /* The priority queues: (16 priorities maximum!) */
    EE_TYPEPAIR EE_rq_queues_head[16] =
        { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
    EE_TYPEPAIR EE_rq_queues_tail[16] =
        { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};

    EE_TYPE_RQ_MASK EE_rq_bitmask = 0U;

    /* remaining nact: init= maximum pending activations of a Task */
    EE_TYPENACT EE_th_rnact[EE_MAX_TASK] = {
        1U,		 /* thread IFX_OSTASK_EVENT1 */
        1U,		 /* thread IFX_OSTASK_EVENT2 */
        1U,		 /* thread IFX_OSTASK_EVENT3 */
        1U,		 /* thread IFX_OSTASK_1MS */
        1U,		 /* thread IFX_OSTASK_5MS */
        1U,		 /* thread IFX_OSTASK_10MS */
        1U,		 /* thread IFX_OSTASK_20MS */
        1U,		 /* thread IFX_OSTASK_50MS */
        1U,		 /* thread IFX_OSTASK_100MS */
        1U,		 /* thread IFX_OSTASK_BACKGROUND */
        1U		 /* thread IFX_OSTASK_INIT */
    };

    const EE_TYPENACT EE_th_rnact_max[EE_MAX_TASK] = {
        1U,		 /* thread IFX_OSTASK_EVENT1 */
        1U,		 /* thread IFX_OSTASK_EVENT2 */
        1U,		 /* thread IFX_OSTASK_EVENT3 */
        1U,		 /* thread IFX_OSTASK_1MS */
        1U,		 /* thread IFX_OSTASK_5MS */
        1U,		 /* thread IFX_OSTASK_10MS */
        1U,		 /* thread IFX_OSTASK_20MS */
        1U,		 /* thread IFX_OSTASK_50MS */
        1U,		 /* thread IFX_OSTASK_100MS */
        1U,		 /* thread IFX_OSTASK_BACKGROUND */
        1U		 /* thread IFX_OSTASK_INIT */
    };

    EE_TYPEPRIO EE_rq_link[EE_MAX_TASK] =
        { 6U, 6U, 6U, 6U, 5U, 4U, 3U, 2U, 1U, 0U, 1U};

    /* The pairs that are enqueued into the priority queues (11 is the total number of task activations) */
    EE_TYPEPAIR EE_rq_pairs_next[] =
        { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -1};

    /* no need to be initialized */
    EE_TID EE_rq_pairs_tid[11];

    /* a list of unused pairs */
    EE_TYPEPAIR EE_rq_free = 0; /* pointer to a free pair */

    #ifndef __OO_NO_CHAINTASK__
        /* The next task to be activated after a ChainTask. initvalue=all EE_NIL */
        EE_TID EE_th_terminate_nextask[EE_MAX_TASK] = {
            EE_NIL,
            EE_NIL,
            EE_NIL,
            EE_NIL,
            EE_NIL,
            EE_NIL,
            EE_NIL,
            EE_NIL,
            EE_NIL,
            EE_NIL,
            EE_NIL
        };
    #endif



/***************************************************************************
 *
 * Event handling
 *
 **************************************************************************/
    EE_TYPEEVENTMASK EE_th_event_active[EE_MAX_TASK] =
        { 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};    /* thread event already active */

    EE_TYPEEVENTMASK EE_th_event_waitmask[EE_MAX_TASK] =
        { 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};    /* thread wait mask */

    EE_TYPEBOOL EE_th_waswaiting[EE_MAX_TASK] =
        { 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};

    EE_TYPEPRIO EE_th_is_extended[EE_MAX_TASK] =
        { 1U, 1U, 1U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U};



/***************************************************************************
 *
 * Counters
 *
 **************************************************************************/
    const EE_oo_counter_ROM_type EE_counter_ROM[] = {
        {10000U, 1U, 5U}         /* IFX_OSTASK_COUNTER */
    };

    EE_oo_counter_RAM_type       EE_counter_RAM[EE_MAX_COUNTER] = {
        {0U, -1}
    };


/***************************************************************************
 *
 * Alarms
 *
 **************************************************************************/
    const EE_oo_alarm_ROM_type   EE_alarm_ROM[] = {
        {0, EE_ALARM_ACTION_TASK    , IFX_OSTASK_1MS, 0U, (EE_VOID_CALLBACK)NULL, -1 },
        {0, EE_ALARM_ACTION_TASK    , IFX_OSTASK_5MS, 0U, (EE_VOID_CALLBACK)NULL, -1 },
        {0, EE_ALARM_ACTION_TASK    , IFX_OSTASK_10MS, 0U, (EE_VOID_CALLBACK)NULL, -1 },
        {0, EE_ALARM_ACTION_TASK    , IFX_OSTASK_20MS, 0U, (EE_VOID_CALLBACK)NULL, -1 },
        {0, EE_ALARM_ACTION_TASK    , IFX_OSTASK_50MS, 0U, (EE_VOID_CALLBACK)NULL, -1 },
        {0, EE_ALARM_ACTION_TASK    , IFX_OSTASK_100MS, 0U, (EE_VOID_CALLBACK)NULL, -1 }
    };

    EE_oo_alarm_RAM_type         EE_alarm_RAM[EE_MAX_ALARM];



/***************************************************************************
 *
 * AppMode
 *
 **************************************************************************/
    EE_TYPEAPPMODE EE_ApplicationMode;


/***************************************************************************
 *
 * Auto Start (TASK)
 *
 **************************************************************************/
    /*
     *     static const EE_TID EE_oo_autostart_task_mode_OSDEFAULTAPPMODE[0] = 
     *         {  };
    */
    static const EE_TID EE_oo_autostart_task_mode_TRICORE_CPU[1] = 
        { IFX_OSTASK_INIT };

    const struct EE_oo_autostart_task_type EE_oo_autostart_task_data[EE_MAX_APPMODE] = {
        { 0U, 0U},
        { 1U, EE_oo_autostart_task_mode_TRICORE_CPU}
    };


/***************************************************************************
 *
 * Auto Start (ALARM)
 *
 **************************************************************************/
    /*
     *     static const EE_TYPEALARM EE_oo_autostart_alarm_mode_OSDEFAULTAPPMODE[0] =
     *         {  };
    */
    static const EE_TYPEALARM EE_oo_autostart_alarm_mode_TRICORE_CPU[6] =
        { IFX_OSTASK_ALARM_1MS, IFX_OSTASK_ALARM_5MS, IFX_OSTASK_ALARM_10MS, IFX_OSTASK_ALARM_20MS, IFX_OSTASK_ALARM_50MS, IFX_OSTASK_ALARM_100MS };

    const struct EE_oo_autostart_alarm_type EE_oo_autostart_alarm_data[EE_MAX_APPMODE] = {
        { 0U, 0U},
        { 6U, EE_oo_autostart_alarm_mode_TRICORE_CPU}
    };


/***************************************************************************
 *
 * Init alarms parameters (ALARM)
 *
 **************************************************************************/

    const EE_TYPETICK EE_oo_autostart_alarm_increment[EE_MAX_ALARM] =
        {5U, 25U, 50U, 100U, 250U, 500U };

    const EE_TYPETICK EE_oo_autostart_alarm_cycle[EE_MAX_ALARM] =
        {10U, 50U, 100U, 200U, 500U, 1000U };

