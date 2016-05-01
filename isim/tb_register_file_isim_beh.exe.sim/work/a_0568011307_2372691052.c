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
static const char *ng0 = "/home/ctnguyen/Works/pipelineCPU/tb/tb_register_file.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_0568011307_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 2044U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2396);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1944);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2396);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1944);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0568011307_2372691052_p_1(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int t8;
    int t9;
    int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
    int t16;
    char *t17;

LAB0:    t1 = (t0 + 2180U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4800);
    xsi_report(t2, 37U, 0);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2432);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 2080);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2432);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2080);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4837);
    *((int *)t2) = 0;
    t3 = (t0 + 4841);
    *((int *)t3) = 31;
    t8 = 0;
    t9 = 31;

LAB12:    if (t8 <= t9)
        goto LAB13;

LAB15:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 4845);
    *((int *)t2) = 0;
    t3 = (t0 + 4849);
    *((int *)t3) = 15;
    t8 = 0;
    t9 = 15;

LAB24:    if (t8 <= t9)
        goto LAB25;

LAB27:    xsi_set_current_line(113, ng0);
    if ((unsigned char)0 == 0)
        goto LAB33;

LAB34:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB13:    xsi_set_current_line(97, ng0);
    t4 = (t0 + 4837);
    t10 = xsi_vhdl_mod(*((int *)t4), 2);
    t11 = (t10 == 1);
    if (t11 != 0)
        goto LAB16;

LAB18:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2468);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);

LAB17:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4837);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t15, *((int *)t2), 5);
    t4 = (t0 + 2504);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 5U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 4837);
    t10 = *((int *)t2);
    t16 = (t10 + 938);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t15, t16, 16);
    t4 = (t0 + 2540);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2080);
    xsi_process_wait(t2, t7);

LAB21:    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB14:    t2 = (t0 + 4837);
    t8 = *((int *)t2);
    t3 = (t0 + 4841);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB15;

LAB23:    t10 = (t8 + 1);
    t8 = t10;
    t4 = (t0 + 4837);
    *((int *)t4) = t8;
    goto LAB12;

LAB16:    xsi_set_current_line(98, ng0);
    t5 = (t0 + 2468);
    t6 = (t5 + 32U);
    t12 = *((char **)t6);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    goto LAB17;

LAB19:    goto LAB14;

LAB20:    goto LAB19;

LAB22:    goto LAB20;

LAB25:    xsi_set_current_line(108, ng0);
    t4 = (t0 + 4845);
    t5 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t15, *((int *)t4), 5);
    t6 = (t0 + 2576);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 32U);
    t17 = *((char **)t14);
    memcpy(t17, t5, 5U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4845);
    t10 = *((int *)t2);
    t16 = (15 + t10);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t15, t16, 5);
    t4 = (t0 + 2612);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    t12 = (t6 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 5U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1500U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 2080);
    xsi_process_wait(t2, t7);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB26:    t2 = (t0 + 4845);
    t8 = *((int *)t2);
    t3 = (t0 + 4849);
    t9 = *((int *)t3);
    if (t8 == t9)
        goto LAB27;

LAB32:    t10 = (t8 + 1);
    t8 = t10;
    t4 = (t0 + 4845);
    *((int *)t4) = t8;
    goto LAB24;

LAB28:    goto LAB26;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB33:    t2 = (t0 + 4853);
    xsi_report(t2, 21U, (unsigned char)3);
    goto LAB34;

}


extern void work_a_0568011307_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0568011307_2372691052_p_0,(void *)work_a_0568011307_2372691052_p_1};
	xsi_register_didat("work_a_0568011307_2372691052", "isim/tb_register_file_isim_beh.exe.sim/work/a_0568011307_2372691052.didat");
	xsi_register_executes(pe);
}
