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
static const char *ng0 = "/home/ctnguyen/Works/pipelineCPU/src/alu_Logic.vhd";
extern char *WORK_P_2115113520;
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_1697423399_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1837678034_503743352(char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3017487367_3212880686_p_0(char *t0)
{
    char t7[16];
    char t28[16];
    char t49[16];
    char t68[16];
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned char t25;
    unsigned int t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    unsigned char t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    unsigned char t46;
    unsigned int t47;
    char *t48;
    char *t50;
    char *t51;
    char *t52;
    char *t53;
    unsigned int t54;
    unsigned int t55;
    unsigned char t56;
    char *t57;
    char *t58;
    char *t59;
    char *t60;
    char *t61;
    char *t62;
    char *t63;
    char *t64;
    unsigned char t65;
    unsigned int t66;
    char *t67;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    unsigned int t75;
    unsigned int t76;
    unsigned char t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;

LAB0:    xsi_set_current_line(29, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = ((WORK_P_2115113520) + 3188U);
    t3 = *((char **)t1);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:    t22 = (t0 + 776U);
    t23 = *((char **)t22);
    t22 = ((WORK_P_2115113520) + 3256U);
    t24 = *((char **)t22);
    t25 = 1;
    if (2U == 2U)
        goto LAB15;

LAB16:    t25 = 0;

LAB17:    if (t25 != 0)
        goto LAB13;

LAB14:    t43 = (t0 + 776U);
    t44 = *((char **)t43);
    t43 = ((WORK_P_2115113520) + 3324U);
    t45 = *((char **)t43);
    t46 = 1;
    if (2U == 2U)
        goto LAB25;

LAB26:    t46 = 0;

LAB27:    if (t46 != 0)
        goto LAB23;

LAB24:    t62 = (t0 + 776U);
    t63 = *((char **)t62);
    t62 = ((WORK_P_2115113520) + 3392U);
    t64 = *((char **)t62);
    t65 = 1;
    if (2U == 2U)
        goto LAB35;

LAB36:    t65 = 0;

LAB37:    if (t65 != 0)
        goto LAB33;

LAB34:
LAB2:    t83 = (t0 + 1696);
    *((int *)t83) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t8 = (t0 + 2936U);
    t10 = (t0 + 684U);
    t11 = *((char **)t10);
    t10 = (t0 + 2952U);
    t12 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t7, t9, t8, t11, t10);
    t13 = (t7 + 12U);
    t14 = *((unsigned int *)t13);
    t15 = (1U * t14);
    t16 = (16U != t15);
    if (t16 == 1)
        goto LAB11;

LAB12:    t17 = (t0 + 1740);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    memcpy(t21, t12, 16U);
    xsi_driver_first_trans_fast_port(t17);
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

LAB11:    xsi_size_not_matching(16U, t15, 0);
    goto LAB12;

LAB13:    t29 = (t0 + 592U);
    t30 = *((char **)t29);
    t29 = (t0 + 2936U);
    t31 = (t0 + 684U);
    t32 = *((char **)t31);
    t31 = (t0 + 2952U);
    t33 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t28, t30, t29, t32, t31);
    t34 = (t28 + 12U);
    t35 = *((unsigned int *)t34);
    t36 = (1U * t35);
    t37 = (16U != t36);
    if (t37 == 1)
        goto LAB21;

LAB22:    t38 = (t0 + 1740);
    t39 = (t38 + 32U);
    t40 = *((char **)t39);
    t41 = (t40 + 32U);
    t42 = *((char **)t41);
    memcpy(t42, t33, 16U);
    xsi_driver_first_trans_fast_port(t38);
    goto LAB2;

LAB15:    t26 = 0;

LAB18:    if (t26 < 2U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t22 = (t23 + t26);
    t27 = (t24 + t26);
    if (*((unsigned char *)t22) != *((unsigned char *)t27))
        goto LAB16;

LAB20:    t26 = (t26 + 1);
    goto LAB18;

LAB21:    xsi_size_not_matching(16U, t36, 0);
    goto LAB22;

LAB23:    t50 = (t0 + 592U);
    t51 = *((char **)t50);
    t50 = (t0 + 2936U);
    t52 = ieee_p_2592010699_sub_1837678034_503743352(IEEE_P_2592010699, t49, t51, t50);
    t53 = (t49 + 12U);
    t54 = *((unsigned int *)t53);
    t55 = (1U * t54);
    t56 = (16U != t55);
    if (t56 == 1)
        goto LAB31;

LAB32:    t57 = (t0 + 1740);
    t58 = (t57 + 32U);
    t59 = *((char **)t58);
    t60 = (t59 + 32U);
    t61 = *((char **)t60);
    memcpy(t61, t52, 16U);
    xsi_driver_first_trans_fast_port(t57);
    goto LAB2;

LAB25:    t47 = 0;

LAB28:    if (t47 < 2U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t43 = (t44 + t47);
    t48 = (t45 + t47);
    if (*((unsigned char *)t43) != *((unsigned char *)t48))
        goto LAB26;

LAB30:    t47 = (t47 + 1);
    goto LAB28;

LAB31:    xsi_size_not_matching(16U, t55, 0);
    goto LAB32;

LAB33:    t69 = (t0 + 592U);
    t70 = *((char **)t69);
    t69 = (t0 + 2936U);
    t71 = (t0 + 684U);
    t72 = *((char **)t71);
    t71 = (t0 + 2952U);
    t73 = ieee_p_2592010699_sub_1697423399_503743352(IEEE_P_2592010699, t68, t70, t69, t72, t71);
    t74 = (t68 + 12U);
    t75 = *((unsigned int *)t74);
    t76 = (1U * t75);
    t77 = (16U != t76);
    if (t77 == 1)
        goto LAB41;

LAB42:    t78 = (t0 + 1740);
    t79 = (t78 + 32U);
    t80 = *((char **)t79);
    t81 = (t80 + 32U);
    t82 = *((char **)t81);
    memcpy(t82, t73, 16U);
    xsi_driver_first_trans_fast_port(t78);
    goto LAB2;

LAB35:    t66 = 0;

LAB38:    if (t66 < 2U)
        goto LAB39;
    else
        goto LAB37;

LAB39:    t62 = (t63 + t66);
    t67 = (t64 + t66);
    if (*((unsigned char *)t62) != *((unsigned char *)t67))
        goto LAB36;

LAB40:    t66 = (t66 + 1);
    goto LAB38;

LAB41:    xsi_size_not_matching(16U, t76, 0);
    goto LAB42;

}


extern void work_a_3017487367_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3017487367_3212880686_p_0};
	xsi_register_didat("work_a_3017487367_3212880686", "isim/tb_EX_phase_isim_beh.exe.sim/work/a_3017487367_3212880686.didat");
	xsi_register_executes(pe);
}
