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
static const char *ng0 = "/home/ctnguyen/Works/pipelineCPU/tb/tb_MEM_data.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0098386454_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1768U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 2136);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 1224U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1668);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2136);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1224U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1668);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0098386454_2372691052_p_1(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t11;
    char *t12;
    int64 t13;
    int t14;
    unsigned char t15;

LAB0:    t1 = (t0 + 1904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4076);
    *((int *)t2) = 0;
    t3 = (t0 + 4080);
    *((int *)t3) = 10;
    t4 = 0;
    t5 = 10;

LAB4:    if (t4 <= t5)
        goto LAB5;

LAB7:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4084);
    *((int *)t2) = 0;
    t3 = (t0 + 4088);
    *((int *)t3) = 10;
    t4 = 0;
    t5 = 10;

LAB17:    if (t4 <= t5)
        goto LAB18;

LAB20:    xsi_set_current_line(93, ng0);
    if ((unsigned char)0 == 0)
        goto LAB30;

LAB31:    goto LAB2;

LAB5:    xsi_set_current_line(79, ng0);

LAB10:    t6 = (t0 + 2084);
    *((int *)t6) = 1;
    *((char **)t1) = &&LAB11;

LAB1:    return;
LAB6:    t2 = (t0 + 4076);
    t4 = *((int *)t2);
    t3 = (t0 + 4080);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB7;

LAB16:    t14 = (t4 + 1);
    t4 = t14;
    t6 = (t0 + 4076);
    *((int *)t6) = t4;
    goto LAB4;

LAB8:    t9 = (t0 + 2084);
    *((int *)t9) = 0;
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2172);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 4076);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t2), 16);
    t6 = (t0 + 2208);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4076);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t2), 16);
    t6 = (t0 + 2244);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1224U);
    t3 = *((char **)t2);
    t13 = *((int64 *)t3);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, t13);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    t7 = (t0 + 568U);
    t8 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t7, 0U, 0U);
    if (t8 == 1)
        goto LAB8;
    else
        goto LAB10;

LAB11:    goto LAB9;

LAB12:    goto LAB6;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB18:    xsi_set_current_line(88, ng0);

LAB23:    t6 = (t0 + 2092);
    *((int *)t6) = 1;
    *((char **)t1) = &&LAB24;
    goto LAB1;

LAB19:    t2 = (t0 + 4084);
    t4 = *((int *)t2);
    t3 = (t0 + 4088);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB20;

LAB29:    t14 = (t4 + 1);
    t4 = t14;
    t6 = (t0 + 4084);
    *((int *)t6) = t4;
    goto LAB17;

LAB21:    t9 = (t0 + 2092);
    *((int *)t9) = 0;
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 960U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t15 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t8);
    t2 = (t0 + 2280);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t9 = (t7 + 32U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t15;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4084);
    t3 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t10, *((int *)t2), 16);
    t6 = (t0 + 2208);
    t7 = (t6 + 32U);
    t9 = *((char **)t7);
    t11 = (t9 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1224U);
    t3 = *((char **)t2);
    t13 = *((int64 *)t3);
    t2 = (t0 + 1804);
    xsi_process_wait(t2, t13);

LAB27:    *((char **)t1) = &&LAB28;
    goto LAB1;

LAB22:    t7 = (t0 + 568U);
    t8 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t7, 0U, 0U);
    if (t8 == 1)
        goto LAB21;
    else
        goto LAB23;

LAB24:    goto LAB22;

LAB25:    goto LAB19;

LAB26:    goto LAB25;

LAB28:    goto LAB26;

LAB30:    t2 = (t0 + 4092);
    xsi_report(t2, 21U, (unsigned char)3);
    goto LAB31;

}


extern void work_a_0098386454_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0098386454_2372691052_p_0,(void *)work_a_0098386454_2372691052_p_1};
	xsi_register_didat("work_a_0098386454_2372691052", "isim/tb_MEM_data_isim_beh.exe.sim/work/a_0098386454_2372691052.didat");
	xsi_register_executes(pe);
}
