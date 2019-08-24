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
static const char *ng0 = "/home/Luca/ISE/IEEE754Adder/EqualCheck.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_2347761600_1146481140_p_0(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(15, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5352U);
    t4 = (t0 + 1192U);
    t5 = *((char **)t4);
    t4 = (t0 + 5368U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (31U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 3568);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 31U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 3472);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(31U, t9, 0);
    goto LAB6;

}

static void work_a_2347761600_1146481140_p_1(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    int t4;
    char *t5;
    char *t6;
    unsigned char t7;
    char *t8;
    int t9;
    int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(20, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(21, ng0);
    t1 = (t0 + 5506);
    *((int *)t1) = 30;
    t2 = (t0 + 5510);
    *((int *)t2) = 0;
    t3 = 30;
    t4 = 0;

LAB2:    if (t3 >= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1928U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t15 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t7);
    t1 = (t0 + 3632);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = t15;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3488);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(22, ng0);
    t5 = (t0 + 1928U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t5 = (t0 + 1512U);
    t8 = *((char **)t5);
    t5 = (t0 + 5506);
    t9 = *((int *)t5);
    t10 = (t9 - 30);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t14 = (t8 + t13);
    t15 = *((unsigned char *)t14);
    t16 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t7, t15);
    t17 = (t0 + 1928U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    *((unsigned char *)t17) = t16;

LAB4:    t1 = (t0 + 5506);
    t3 = *((int *)t1);
    t2 = (t0 + 5510);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB6:    t9 = (t3 + -1);
    t3 = t9;
    t5 = (t0 + 5506);
    *((int *)t5) = t3;
    goto LAB2;

}


extern void work_a_2347761600_1146481140_init()
{
	static char *pe[] = {(void *)work_a_2347761600_1146481140_p_0,(void *)work_a_2347761600_1146481140_p_1};
	xsi_register_didat("work_a_2347761600_1146481140", "isim/SpecialCasesTest_isim_beh.exe.sim/work/a_2347761600_1146481140.didat");
	xsi_register_executes(pe);
}
