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
static const char *ng0 = "/home/Luca/ISE/IEEE754Adder/TypeCheck.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_0557987184_1272247069_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(17, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (31 - 30);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5104);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 4944);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0557987184_1272247069_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(18, ng0);

LAB3:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = (31 - 22);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5168);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 23U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 4960);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0557987184_1272247069_p_2(char *t0)
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

LAB0:    xsi_set_current_line(23, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)3;
    xsi_set_current_line(24, ng0);
    t1 = (t0 + 7603);
    *((int *)t1) = 7;
    t2 = (t0 + 7607);
    *((int *)t2) = 0;
    t3 = 7;
    t4 = 0;

LAB2:    if (t3 >= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 5232);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = t7;
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 4976);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(25, ng0);
    t5 = (t0 + 2288U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t5 = (t0 + 1512U);
    t8 = *((char **)t5);
    t5 = (t0 + 7603);
    t9 = *((int *)t5);
    t10 = (t9 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t14 = (t8 + t13);
    t15 = *((unsigned char *)t14);
    t16 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t7, t15);
    t17 = (t0 + 2288U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    *((unsigned char *)t17) = t16;

LAB4:    t1 = (t0 + 7603);
    t3 = *((int *)t1);
    t2 = (t0 + 7607);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB6:    t9 = (t3 + -1);
    t3 = t9;
    t5 = (t0 + 7603);
    *((int *)t5) = t3;
    goto LAB2;

}

static void work_a_0557987184_1272247069_p_3(char *t0)
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

LAB0:    xsi_set_current_line(33, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 7611);
    *((int *)t1) = 22;
    t2 = (t0 + 7615);
    *((int *)t2) = 0;
    t3 = 22;
    t4 = 0;

LAB2:    if (t3 >= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(37, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 5296);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = t7;
    xsi_driver_first_trans_fast(t1);
    t1 = (t0 + 4992);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(35, ng0);
    t5 = (t0 + 2408U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t5 = (t0 + 1672U);
    t8 = *((char **)t5);
    t5 = (t0 + 7611);
    t9 = *((int *)t5);
    t10 = (t9 - 22);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t14 = (t8 + t13);
    t15 = *((unsigned char *)t14);
    t16 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t7, t15);
    t17 = (t0 + 2408U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    *((unsigned char *)t17) = t16;

LAB4:    t1 = (t0 + 7611);
    t3 = *((int *)t1);
    t2 = (t0 + 7615);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB6:    t9 = (t3 + -1);
    t3 = t9;
    t5 = (t0 + 7611);
    *((int *)t5) = t3;
    goto LAB2;

}

static void work_a_0557987184_1272247069_p_4(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(40, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t5);
    t1 = (t0 + 5360);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t11 = (t0 + 5008);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_0557987184_1272247069_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;

LAB0:    xsi_set_current_line(41, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t5 = *((unsigned char *)t4);
    t6 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t5);
    t7 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t3, t6);
    t1 = (t0 + 5424);
    t8 = (t1 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t12 = (t0 + 5024);
    *((int *)t12) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0557987184_1272247069_init()
{
	static char *pe[] = {(void *)work_a_0557987184_1272247069_p_0,(void *)work_a_0557987184_1272247069_p_1,(void *)work_a_0557987184_1272247069_p_2,(void *)work_a_0557987184_1272247069_p_3,(void *)work_a_0557987184_1272247069_p_4,(void *)work_a_0557987184_1272247069_p_5};
	xsi_register_didat("work_a_0557987184_1272247069", "isim/SpecialCasesCheck_isim_beh.exe.sim/work/a_0557987184_1272247069.didat");
	xsi_register_executes(pe);
}
