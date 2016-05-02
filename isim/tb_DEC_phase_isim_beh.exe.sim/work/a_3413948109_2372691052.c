/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/ctnguyen/Works/pipelineCPU/tb/tb_DEC_phase.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3413948109_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1860U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2212);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1760);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2212);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1760);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3413948109_2372691052_p_1(char *t0)
{
    char t8[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t9;
    int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    int t15;

LAB0:    t1 = (t0 + 1996U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 1896);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 1896);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(88, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 88, 16);
    t3 = (t0 + 2284);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_delta(t3, 0U, 16U, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4288);
    *((int *)t2) = 0;
    t3 = (t0 + 4292);
    *((int *)t3) = 17;
    t10 = 0;
    t11 = 17;

LAB12:    if (t10 <= t11)
        goto LAB13;

LAB15:    xsi_set_current_line(98, ng0);
    if ((unsigned char)0 == 0)
        goto LAB21;

LAB22:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(92, ng0);
    t4 = (t0 + 4288);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, *((int *)t4), 6);
    t6 = (t0 + 2284);
    t9 = (t6 + 32U);
    t12 = *((char **)t9);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    memcpy(t14, t5, 6U);
    xsi_driver_first_trans_delta(t6, 16U, 6U, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 8, 5);
    t3 = (t0 + 2284);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_delta(t3, 22U, 5U, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 6, 5);
    t3 = (t0 + 2284);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_delta(t3, 27U, 5U, 0LL);
    xsi_set_current_line(95, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 16384, 16);
    t3 = (t0 + 2284);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_delta(t3, 32U, 16U, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1316U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 1896);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 4288);
    t10 = *((int *)t2);
    t3 = (t0 + 4292);
    t11 = *((int *)t3);
    if (t10 == t11)
        goto LAB15;

LAB20:    t15 = (t10 + 1);
    t10 = t15;
    t4 = (t0 + 4288);
    *((int *)t4) = t10;
    goto LAB12;

LAB16:    goto LAB14;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    t2 = (t0 + 4296);
    xsi_report(t2, 21U, (unsigned char)3);
    goto LAB22;

}


extern void work_a_3413948109_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3413948109_2372691052_p_0,(void *)work_a_3413948109_2372691052_p_1};
	xsi_register_didat("work_a_3413948109_2372691052", "isim/tb_DEC_phase_isim_beh.exe.sim/work/a_3413948109_2372691052.didat");
	xsi_register_executes(pe);
}
