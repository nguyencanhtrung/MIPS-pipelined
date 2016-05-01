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
static const char *ng0 = "/home/ctnguyen/Works/pipelineCPU/src/alu_Shift.vhd";
extern char *IEEE_P_1242562249;
extern char *WORK_P_2115113520;
extern char *IEEE_P_2592010699;

int ieee_p_1242562249_sub_2271993008_1035706684(char *, char *, char *);
char *ieee_p_2592010699_sub_3293060193_503743352(char *, char *, char *, char *, unsigned char );
char *ieee_p_2592010699_sub_393209765_503743352(char *, char *, char *, char *);


static void work_a_1072230740_3212880686_p_0(char *t0)
{
    char t6[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(35, ng0);

LAB3:    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = (15 - 10);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 10;
    t8 = (t7 + 4U);
    *((int *)t8) = 6;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (6 - 10);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_p_1242562249_sub_2271993008_1035706684(IEEE_P_1242562249, t1, t6);
    t8 = (t0 + 1976);
    t12 = (t8 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    *((int *)t15) = t11;
    xsi_driver_first_trans_fast(t8);

LAB2:    t16 = (t0 + 1924);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1072230740_3212880686_p_1(char *t0)
{
    char t7[16];
    char t8[16];
    char t32[16];
    char t33[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    char *t14;
    char *t15;
    int t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned char t29;
    unsigned int t30;
    char *t31;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    char *t39;
    char *t40;
    int t41;
    char *t42;
    char *t43;
    unsigned int t44;
    unsigned char t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;
    char *t50;
    char *t51;

LAB0:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_2115113520) + 3460U);
    t3 = *((char **)t1);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:    t26 = (t0 + 776U);
    t27 = *((char **)t26);
    t26 = ((WORK_P_2115113520) + 3528U);
    t28 = *((char **)t26);
    t29 = 1;
    if (2U == 2U)
        goto LAB15;

LAB16:    t29 = 0;

LAB17:    if (t29 != 0)
        goto LAB13;

LAB14:
LAB2:    t51 = (t0 + 1932);
    *((int *)t51) = 1;

LAB1:    return;
LAB3:    t9 = (t0 + 592U);
    t10 = *((char **)t9);
    t9 = (t0 + 3344U);
    t11 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t8, t10, t9, (unsigned char)0);
    t12 = (t8 + 12U);
    t13 = *((unsigned int *)t12);
    t13 = (t13 * 1U);
    t14 = (t0 + 960U);
    t15 = *((char **)t14);
    t16 = *((int *)t15);
    t14 = xsi_vhdl_bitvec_sll(t14, t11, t13, t16);
    t17 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t7, t14, t8);
    t18 = (t7 + 12U);
    t19 = *((unsigned int *)t18);
    t19 = (t19 * 1U);
    t20 = (16U != t19);
    if (t20 == 1)
        goto LAB11;

LAB12:    t21 = (t0 + 2012);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    memcpy(t25, t17, 16U);
    xsi_driver_first_trans_fast_port(t21);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t1 = (t2 + t5);
    t6 = (t3 + t5);
    if (*((unsigned char *)t1) != *((unsigned char *)t6))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    xsi_size_not_matching(16U, t19, 0);
    goto LAB12;

LAB13:    t34 = (t0 + 592U);
    t35 = *((char **)t34);
    t34 = (t0 + 3344U);
    t36 = ieee_p_2592010699_sub_3293060193_503743352(IEEE_P_2592010699, t33, t35, t34, (unsigned char)0);
    t37 = (t33 + 12U);
    t38 = *((unsigned int *)t37);
    t38 = (t38 * 1U);
    t39 = (t0 + 960U);
    t40 = *((char **)t39);
    t41 = *((int *)t40);
    t39 = xsi_vhdl_bitvec_srl(t39, t36, t38, t41);
    t42 = ieee_p_2592010699_sub_393209765_503743352(IEEE_P_2592010699, t32, t39, t33);
    t43 = (t32 + 12U);
    t44 = *((unsigned int *)t43);
    t44 = (t44 * 1U);
    t45 = (16U != t44);
    if (t45 == 1)
        goto LAB21;

LAB22:    t46 = (t0 + 2012);
    t47 = (t46 + 32U);
    t48 = *((char **)t47);
    t49 = (t48 + 32U);
    t50 = *((char **)t49);
    memcpy(t50, t42, 16U);
    xsi_driver_first_trans_fast_port(t46);
    goto LAB2;

LAB15:    t30 = 0;

LAB18:    if (t30 < 2U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t26 = (t27 + t30);
    t31 = (t28 + t30);
    if (*((unsigned char *)t26) != *((unsigned char *)t31))
        goto LAB16;

LAB20:    t30 = (t30 + 1);
    goto LAB18;

LAB21:    xsi_size_not_matching(16U, t44, 0);
    goto LAB22;

}


extern void work_a_1072230740_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1072230740_3212880686_p_0,(void *)work_a_1072230740_3212880686_p_1};
	xsi_register_didat("work_a_1072230740_3212880686", "isim/tb_ALU_wrapper_isim_beh.exe.sim/work/a_1072230740_3212880686.didat");
	xsi_register_executes(pe);
}
