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
extern char *STD_TEXTIO;
static const char *ng1 = "input_file";
extern char *STD_STANDARD;
extern char *IEEE_P_3564397177;
static const char *ng4 = "/home/ctnguyen/Works/pipelineCPU/src/MEM_Instruction.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
void ieee_p_3564397177_sub_3902175275_91900896(char *, char *, char *, char *, char *, char *);


char *work_a_2022548673_3212880686_sub_2098602024_3057020925(char *t1, char *t2, char *t3)
{
    char t4[184];
    char t5[16];
    char t17[32];
    char t26[320];
    char t35[8];
    char t52[16];
    char t56[16];
    char t57[16];
    char *t0;
    char *t6;
    char *t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;
    char *t22;
    int t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t36;
    char *t37;
    char *t38;
    unsigned char t39;
    char *t40;
    int t41;
    int t42;
    char *t43;
    char *t44;
    unsigned char t45;
    unsigned char t46;
    char *t47;
    char *t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    int t53;
    int t54;
    unsigned int t55;
    int t58;
    int t59;
    unsigned int t60;

LAB0:    t6 = ((STD_TEXTIO) + 1996);
    t7 = (t3 + 12U);
    t8 = *((unsigned int *)t7);
    t8 = (t8 * 1U);
    t9 = (t4 + 4U);
    t10 = xsi_create_file_variable_in_buffer(0, ng1, t6, t2, t8, 1);
    *((char **)t9) = t10;
    t11 = (t4 + 8U);
    t12 = ((STD_TEXTIO) + 1908);
    t13 = (t11 + 32U);
    *((char **)t13) = t12;
    t14 = (t11 + 24U);
    *((char **)t14) = 0;
    t15 = (t11 + 36U);
    *((int *)t15) = 1;
    t16 = (t11 + 28U);
    *((char **)t16) = 0;
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 0;
    t19 = (t18 + 4U);
    *((int *)t19) = 9;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (9 - 0);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    t19 = (t17 + 16U);
    t22 = (t19 + 0U);
    *((int *)t22) = 31;
    t22 = (t19 + 4U);
    *((int *)t22) = 0;
    t22 = (t19 + 8U);
    *((int *)t22) = -1;
    t23 = (0 - 31);
    t21 = (t23 * -1);
    t21 = (t21 + 1);
    t22 = (t19 + 12U);
    *((unsigned int *)t22) = t21;
    t22 = (t4 + 48U);
    t24 = (t1 + 2256);
    t25 = (t22 + 52U);
    *((char **)t25) = t24;
    t27 = (t22 + 36U);
    *((char **)t27) = t26;
    xsi_type_set_default_value(t24, t26, 0);
    t28 = (t22 + 40U);
    t29 = (t24 + 44U);
    t30 = *((char **)t29);
    *((char **)t28) = t30;
    t31 = (t22 + 48U);
    *((unsigned int *)t31) = 320U;
    t32 = (t4 + 116U);
    t33 = ((STD_STANDARD) + 0);
    t34 = (t32 + 52U);
    *((char **)t34) = t33;
    t36 = (t32 + 36U);
    *((char **)t36) = t35;
    xsi_type_set_default_value(t33, t35, 0);
    t37 = (t32 + 48U);
    *((unsigned int *)t37) = 1U;
    t38 = (t5 + 4U);
    t39 = (t2 != 0);
    if (t39 == 1)
        goto LAB3;

LAB2:    t40 = (t5 + 8U);
    *((char **)t40) = t3;
    t41 = 0;
    t42 = 9;

LAB4:    if (t41 <= t42)
        goto LAB5;

LAB7:    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    t39 = std_textio_endfile(t7);
    t45 = (!(t39));
    if (t45 != 0)
        goto LAB14;

LAB16:
LAB15:    t6 = (t22 + 36U);
    t7 = *((char **)t6);
    t39 = (320U != 320U);
    if (t39 == 1)
        goto LAB19;

LAB20:    t0 = xsi_get_transient_memory(320U);
    memcpy(t0, t7, 320U);

LAB1:    xsi_access_variable_delete(t11);
    t6 = (t4 + 4U);
    t7 = *((char **)t6);
    xsi_delete_file_variable(t7);
    return t0;
LAB3:    *((char **)t38) = t2;
    goto LAB2;

LAB5:    t43 = (t4 + 4U);
    t44 = *((char **)t43);
    t45 = std_textio_endfile(t44);
    t46 = (!(t45));
    if (t46 != 0)
        goto LAB8;

LAB10:    t20 = (32 - 1);
    t23 = (0 - t20);
    t8 = (t23 * -1);
    t8 = (t8 + 1);
    t8 = (t8 * 1U);
    t6 = xsi_get_transient_memory(t8);
    memset(t6, 0, t8);
    t7 = t6;
    memset(t7, (unsigned char)2, t8);
    t9 = (t22 + 36U);
    t10 = *((char **)t9);
    t49 = (t41 - 0);
    t21 = (t49 * 1);
    xsi_vhdl_check_range_of_index(0, 9, 1, t41);
    t53 = (32 - 1);
    t54 = (0 - t53);
    t50 = (t54 * -1);
    t50 = (t50 + 1);
    t50 = (t50 * 1U);
    t51 = (t50 * t21);
    t55 = (0 + t51);
    t9 = (t10 + t55);
    t58 = (32 - 1);
    t59 = (0 - t58);
    t60 = (t59 * -1);
    t60 = (t60 + 1);
    t60 = (t60 * 1U);
    memcpy(t9, t6, t60);

LAB9:
LAB6:    if (t41 == t42)
        goto LAB7;

LAB13:    t20 = (t41 + 1);
    t41 = t20;
    goto LAB4;

LAB8:    t47 = (t4 + 4U);
    t48 = *((char **)t47);
    std_textio_readline(STD_TEXTIO, (char *)0, t48, t11);
    t6 = (t22 + 36U);
    t7 = *((char **)t6);
    t20 = (t41 - 0);
    t8 = (t20 * 1);
    xsi_vhdl_check_range_of_index(0, 9, 1, t41);
    t23 = (32 - 1);
    t49 = (0 - t23);
    t21 = (t49 * -1);
    t21 = (t21 + 1);
    t21 = (t21 * 1U);
    t50 = (t21 * t8);
    t51 = (0 + t50);
    t6 = (t7 + t51);
    t53 = (32 - 1);
    t9 = (t52 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = t53;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t54 = (0 - t53);
    t55 = (t54 * -1);
    t55 = (t55 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t55;
    t10 = (t32 + 36U);
    t12 = *((char **)t10);
    t10 = (t12 + 0);
    ieee_p_3564397177_sub_3902175275_91900896(IEEE_P_3564397177, (char *)0, t11, t6, t52, t10);
    t6 = (t32 + 36U);
    t7 = *((char **)t6);
    t39 = *((unsigned char *)t7);
    if (t39 == 0)
        goto LAB11;

LAB12:    goto LAB9;

LAB11:    t6 = (t1 + 4194);
    t10 = ((STD_STANDARD) + 240);
    t12 = xsi_int_to_mem(t41);
    t13 = xsi_string_variable_get_image(t52, t10, t12);
    t15 = ((STD_STANDARD) + 656);
    t16 = (t57 + 0U);
    t18 = (t16 + 0U);
    *((int *)t18) = 1;
    t18 = (t16 + 4U);
    *((int *)t18) = 33;
    t18 = (t16 + 8U);
    *((int *)t18) = 1;
    t20 = (33 - 1);
    t8 = (t20 * 1);
    t8 = (t8 + 1);
    t18 = (t16 + 12U);
    *((unsigned int *)t18) = t8;
    t14 = xsi_base_array_concat(t14, t56, t15, (char)97, t6, t57, (char)97, t13, t52, (char)101);
    t18 = (t52 + 12U);
    t8 = *((unsigned int *)t18);
    t21 = (33U + t8);
    xsi_report(t14, t21, (unsigned char)1);
    goto LAB12;

LAB14:    if ((unsigned char)0 == 0)
        goto LAB17;

LAB18:    goto LAB15;

LAB17:    t9 = (t1 + 4227);
    xsi_report(t9, 43U, (unsigned char)3);
    goto LAB18;

LAB19:    xsi_size_not_matching(320U, 320U, 0);
    goto LAB20;

LAB21:;
}

static void work_a_2022548673_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;

LAB0:    xsi_set_current_line(78, ng4);
    t1 = (t0 + 1128U);
    t2 = *((char **)t1);
    t1 = (t0 + 592U);
    t3 = *((char **)t1);
    t1 = (t0 + 3748U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 9, 1, t4);
    t7 = (32U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 1980);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 32U);
    xsi_driver_first_trans_fast_port(t10);
    t1 = (t0 + 1936);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_2022548673_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2022548673_3212880686_p_0};
	static char *se[] = {(void *)work_a_2022548673_3212880686_sub_2098602024_3057020925};
	xsi_register_didat("work_a_2022548673_3212880686", "isim/tb_MEM_Instruction_isim_beh.exe.sim/work/a_2022548673_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
