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
static const char *ng0 = "/home/ise/gianni/IEEE754Adder/Swap.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_2579272516_1004118533_p_0(char *t0)
{
    int t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    int t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    char *t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t22;
    int t23;
    int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    unsigned char t29;
    unsigned char t30;
    unsigned char t31;
    char *t32;
    int t33;
    int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    xsi_set_current_line(18, ng0);
    t1 = (8 - 1);
    t2 = (t0 + 5109);
    *((int *)t2) = t1;
    t3 = (t0 + 5113);
    *((int *)t3) = 0;
    t4 = t1;
    t5 = 0;

LAB2:    if (t4 >= t5)
        goto LAB3;

LAB5:    t2 = (t0 + 3264);
    *((int *)t2) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(20, ng0);
    t6 = (t0 + 1352U);
    t7 = *((char **)t6);
    t8 = *((unsigned char *)t7);
    t9 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t8);
    t6 = (t0 + 1032U);
    t10 = *((char **)t6);
    t6 = (t0 + 5109);
    t11 = *((int *)t6);
    t12 = (t11 - 7);
    t13 = (t12 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t6));
    t14 = (1U * t13);
    t15 = (0 + t14);
    t16 = (t10 + t15);
    t17 = *((unsigned char *)t16);
    t18 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t9, t17);
    t19 = (t0 + 1352U);
    t20 = *((char **)t19);
    t21 = *((unsigned char *)t20);
    t19 = (t0 + 1192U);
    t22 = *((char **)t19);
    t19 = (t0 + 5109);
    t23 = *((int *)t19);
    t24 = (t23 - 7);
    t25 = (t24 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t19));
    t26 = (1U * t25);
    t27 = (0 + t26);
    t28 = (t22 + t27);
    t29 = *((unsigned char *)t28);
    t30 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t21, t29);
    t31 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t18, t30);
    t32 = (t0 + 5109);
    t33 = *((int *)t32);
    t34 = (t33 - 7);
    t35 = (t34 * -1);
    t36 = (1 * t35);
    t37 = (0U + t36);
    t38 = (t0 + 3344);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    t41 = (t40 + 56U);
    t42 = *((char **)t41);
    *((unsigned char *)t42) = t31;
    xsi_driver_first_trans_delta(t38, t37, 1, 0LL);
    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1352U);
    t3 = *((char **)t2);
    t8 = *((unsigned char *)t3);
    t9 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t8);
    t2 = (t0 + 1192U);
    t6 = *((char **)t2);
    t2 = (t0 + 5109);
    t1 = *((int *)t2);
    t11 = (t1 - 7);
    t13 = (t11 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t2));
    t14 = (1U * t13);
    t15 = (0 + t14);
    t7 = (t6 + t15);
    t17 = *((unsigned char *)t7);
    t18 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t9, t17);
    t10 = (t0 + 1352U);
    t16 = *((char **)t10);
    t21 = *((unsigned char *)t16);
    t10 = (t0 + 1032U);
    t19 = *((char **)t10);
    t10 = (t0 + 5109);
    t12 = *((int *)t10);
    t23 = (t12 - 7);
    t25 = (t23 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t10));
    t26 = (1U * t25);
    t27 = (0 + t26);
    t20 = (t19 + t27);
    t29 = *((unsigned char *)t20);
    t30 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t21, t29);
    t31 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t18, t30);
    t22 = (t0 + 5109);
    t24 = *((int *)t22);
    t33 = (t24 - 7);
    t35 = (t33 * -1);
    t36 = (1 * t35);
    t37 = (0U + t36);
    t28 = (t0 + 3408);
    t32 = (t28 + 56U);
    t38 = *((char **)t32);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    *((unsigned char *)t40) = t31;
    xsi_driver_first_trans_delta(t28, t37, 1, 0LL);

LAB4:    t2 = (t0 + 5109);
    t4 = *((int *)t2);
    t3 = (t0 + 5113);
    t5 = *((int *)t3);
    if (t4 == t5)
        goto LAB5;

LAB6:    t1 = (t4 + -1);
    t4 = t1;
    t6 = (t0 + 5109);
    *((int *)t6) = t4;
    goto LAB2;

}


extern void work_a_2579272516_1004118533_init()
{
	static char *pe[] = {(void *)work_a_2579272516_1004118533_p_0};
	xsi_register_didat("work_a_2579272516_1004118533", "isim/SwapTest_isim_beh.exe.sim/work/a_2579272516_1004118533.didat");
	xsi_register_executes(pe);
}
