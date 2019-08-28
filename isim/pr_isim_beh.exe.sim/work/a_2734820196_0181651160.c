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
static const char *ng0 = "/home/ise/gianni/IEEE754Adder/pr.vhd";
extern char *IEEE_P_2592010699;

char *ieee_p_2592010699_sub_16439989832805790689_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_207919886985903570_503743352(char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_3488546069778340532_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_3488768496604610246_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_374109322130769762_503743352(char *, unsigned char );


static void work_a_2734820196_0181651160_p_0(char *t0)
{
    char t1[16];
    char t4[16];
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(18, ng0);

LAB3:    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 7008U);
    t5 = (t0 + 1192U);
    t6 = *((char **)t5);
    t5 = (t0 + 7008U);
    t7 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t4, t6, t5);
    t8 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t1, t3, t2, t7, t4);
    t9 = (t1 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = (1U * t10);
    t12 = (8U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 4840);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 4696);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t11, 0);
    goto LAB6;

}

static void work_a_2734820196_0181651160_p_1(char *t0)
{
    char t1[16];
    char t2[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(19, ng0);

LAB3:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 7008U);
    t5 = ieee_p_2592010699_sub_207919886985903570_503743352(IEEE_P_2592010699, t2, t4, t3);
    t6 = (t0 + 1192U);
    t7 = *((char **)t6);
    t6 = (t0 + 7008U);
    t8 = ieee_p_2592010699_sub_16439989832805790689_503743352(IEEE_P_2592010699, t1, t5, t2, t7, t6);
    t9 = (t1 + 12U);
    t10 = *((unsigned int *)t9);
    t11 = (1U * t10);
    t12 = (8U != t11);
    if (t12 == 1)
        goto LAB5;

LAB6:    t13 = (t0 + 4904);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t8, 8U);
    xsi_driver_first_trans_fast(t13);

LAB2:    t18 = (t0 + 4712);
    *((int *)t18) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(8U, t11, 0);
    goto LAB6;

}

static void work_a_2734820196_0181651160_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(21, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 4968);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4728);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2734820196_0181651160_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(22, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5032);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4744);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2734820196_0181651160_p_4(char *t0)
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
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    unsigned char t25;
    unsigned char t26;
    unsigned char t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(27, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((unsigned char *)t1) = (unsigned char)2;
    xsi_set_current_line(28, ng0);
    t1 = (t0 + 7117);
    *((int *)t1) = 7;
    t2 = (t0 + 7121);
    *((int *)t2) = 0;
    t3 = 7;
    t4 = 0;

LAB2:    if (t3 >= t4)
        goto LAB3;

LAB5:    xsi_set_current_line(31, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t7 = *((unsigned char *)t2);
    t1 = (t0 + 5096);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t14 = *((char **)t8);
    *((unsigned char *)t14) = t7;
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 4760);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(29, ng0);
    t5 = (t0 + 2408U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t5 = (t0 + 1832U);
    t8 = *((char **)t5);
    t5 = (t0 + 7117);
    t9 = *((int *)t5);
    t10 = (t9 - 7);
    t11 = (t10 * -1);
    t12 = (1U * t11);
    t13 = (0 + t12);
    t14 = (t8 + t13);
    t15 = *((unsigned char *)t14);
    t16 = ieee_p_2592010699_sub_374109322130769762_503743352(IEEE_P_2592010699, t15);
    t17 = (t0 + 1992U);
    t18 = *((char **)t17);
    t17 = (t0 + 7117);
    t19 = *((int *)t17);
    t20 = (t19 - 7);
    t21 = (t20 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, *((int *)t17));
    t22 = (1U * t21);
    t23 = (0 + t22);
    t24 = (t18 + t23);
    t25 = *((unsigned char *)t24);
    t26 = ieee_p_2592010699_sub_3488768496604610246_503743352(IEEE_P_2592010699, t16, t25);
    t27 = ieee_p_2592010699_sub_3488546069778340532_503743352(IEEE_P_2592010699, t7, t26);
    t28 = (t0 + 2408U);
    t29 = *((char **)t28);
    t28 = (t29 + 0);
    *((unsigned char *)t28) = t27;

LAB4:    t1 = (t0 + 7117);
    t3 = *((int *)t1);
    t2 = (t0 + 7121);
    t4 = *((int *)t2);
    if (t3 == t4)
        goto LAB5;

LAB6:    t9 = (t3 + -1);
    t3 = t9;
    t5 = (t0 + 7117);
    *((int *)t5) = t3;
    goto LAB2;

}


extern void work_a_2734820196_0181651160_init()
{
	static char *pe[] = {(void *)work_a_2734820196_0181651160_p_0,(void *)work_a_2734820196_0181651160_p_1,(void *)work_a_2734820196_0181651160_p_2,(void *)work_a_2734820196_0181651160_p_3,(void *)work_a_2734820196_0181651160_p_4};
	xsi_register_didat("work_a_2734820196_0181651160", "isim/pr_isim_beh.exe.sim/work/a_2734820196_0181651160.didat");
	xsi_register_executes(pe);
}
