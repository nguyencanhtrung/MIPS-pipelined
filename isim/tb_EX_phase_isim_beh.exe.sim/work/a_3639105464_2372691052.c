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
static const char *ng0 = "/home/ctnguyen/Works/pipelineCPU/tb/tb_EX_phase.vhd";
extern char *IEEE_P_1242562249;
extern char *WORK_P_2115113520;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_3639105464_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1936);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1484);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1936);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1484);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3639105464_2372691052_p_1(char *t0)
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
    unsigned char t10;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1972);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(72, ng0);
    t2 = (t0 + 1972);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(85, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 16384, 16);
    t3 = (t0 + 2008);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_delta(t3, 64U, 16U, 0LL);
    xsi_set_current_line(86, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 4, 5);
    t3 = (t0 + 2008);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 5U);
    xsi_driver_first_trans_delta(t3, 59U, 5U, 0LL);
    xsi_set_current_line(87, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 29, 16);
    t3 = (t0 + 2008);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_delta(t3, 43U, 16U, 0LL);
    xsi_set_current_line(88, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 18, 16);
    t3 = (t0 + 2008);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_delta(t3, 27U, 16U, 0LL);
    xsi_set_current_line(89, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 88, 16);
    t3 = (t0 + 2008);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_delta(t3, 11U, 16U, 0LL);
    xsi_set_current_line(90, ng0);
    t2 = ((WORK_P_2115113520) + 2032U);
    t3 = *((char **)t2);
    t2 = (t0 + 2008);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t3, 3U);
    xsi_driver_first_trans_delta(t2, 8U, 3U, 0LL);
    xsi_set_current_line(91, ng0);
    t2 = ((WORK_P_2115113520) + 2712U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t2 = (t0 + 2008);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = t10;
    xsi_driver_first_trans_delta(t2, 7U, 1, 0LL);
    xsi_set_current_line(92, ng0);
    t2 = ((WORK_P_2115113520) + 2576U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t2 = (t0 + 2008);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = t10;
    xsi_driver_first_trans_delta(t2, 6U, 1, 0LL);
    xsi_set_current_line(93, ng0);
    t2 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t8, 38, 6);
    t3 = (t0 + 2008);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t2, 6U);
    xsi_driver_first_trans_delta(t3, 0U, 6U, 0LL);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t7);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(95, ng0);
    t2 = ((WORK_P_2115113520) + 2032U);
    t3 = *((char **)t2);
    t2 = (t0 + 2008);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    memcpy(t9, t3, 3U);
    xsi_driver_first_trans_delta(t2, 8U, 3U, 0LL);
    xsi_set_current_line(96, ng0);
    t2 = ((WORK_P_2115113520) + 2780U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t2 = (t0 + 2008);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = t10;
    xsi_driver_first_trans_delta(t2, 7U, 1, 0LL);
    xsi_set_current_line(97, ng0);
    t2 = ((WORK_P_2115113520) + 2644U);
    t3 = *((char **)t2);
    t10 = *((unsigned char *)t3);
    t2 = (t0 + 2008);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t9 = *((char **)t6);
    *((unsigned char *)t9) = t10;
    xsi_driver_first_trans_delta(t2, 6U, 1, 0LL);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t7);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(99, ng0);
    if ((unsigned char)0 == 0)
        goto LAB20;

LAB21:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t2 = (t0 + 3768);
    xsi_report(t2, 21U, (unsigned char)3);
    goto LAB21;

}


extern void work_a_3639105464_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3639105464_2372691052_p_0,(void *)work_a_3639105464_2372691052_p_1};
	xsi_register_didat("work_a_3639105464_2372691052", "isim/tb_EX_phase_isim_beh.exe.sim/work/a_3639105464_2372691052.didat");
	xsi_register_executes(pe);
}
