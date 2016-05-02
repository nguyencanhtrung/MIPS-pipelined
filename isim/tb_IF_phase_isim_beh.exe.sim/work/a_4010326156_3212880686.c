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
static const char *ng0 = "/home/ctnguyen/Works/pipelineCPU/src/IF_phase.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_2115113520;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_4010326156_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2568);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 776U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = ((WORK_P_2115113520) + 2032U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = (t2 == t5);
    if (t6 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t1 = (t0 + 2620);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB9:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(56, ng0);
    t3 = xsi_get_transient_memory(16U);
    memset(t3, 0, 16U);
    t7 = t3;
    memset(t7, (unsigned char)2, 16U);
    t8 = (t0 + 2620);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 16U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1236U);
    t7 = *((char **)t1);
    t1 = (t0 + 2620);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    memcpy(t11, t7, 16U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB9;

}

static void work_a_4010326156_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 568U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2576);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 684U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 1236U);
    t3 = *((char **)t1);
    t1 = (t0 + 2656);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 16U);
    xsi_driver_first_trans_delta(t1, 0U, 16U, 0LL);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 960U);
    t3 = *((char **)t1);
    t1 = (t0 + 2656);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t3, 32U);
    xsi_driver_first_trans_delta(t1, 16U, 32U, 0LL);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(72, ng0);
    t3 = xsi_get_transient_memory(48U);
    memset(t3, 0, 48U);
    t7 = t3;
    memset(t7, (unsigned char)2, 48U);
    t8 = (t0 + 2656);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 48U);
    xsi_driver_first_trans_fast_port(t8);
    goto LAB6;

}


extern void work_a_4010326156_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4010326156_3212880686_p_0,(void *)work_a_4010326156_3212880686_p_1};
	xsi_register_didat("work_a_4010326156_3212880686", "isim/tb_IF_phase_isim_beh.exe.sim/work/a_4010326156_3212880686.didat");
	xsi_register_executes(pe);
}
