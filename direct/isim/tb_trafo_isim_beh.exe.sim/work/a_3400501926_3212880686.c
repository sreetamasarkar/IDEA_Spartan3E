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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Masters/VHDL System Design Lab/submit/direct/mulop.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767632659_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3400501926_3212880686_p_0(char *t0)
{
    char t5[16];
    char t12[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 7968U);
    t3 = (t0 + 8271);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 15;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (15 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 7968U);
    t1 = xsi_base_array_concat(t1, t5, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t9 = (1U + 16U);
    t10 = (17U != t9);
    if (t10 == 1)
        goto LAB7;

LAB8:    t6 = (t0 + 5192);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 17U);
    xsi_driver_first_trans_fast(t6);

LAB3:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 7984U);
    t3 = (t0 + 8287);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 15;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (15 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = ((IEEE_P_2592010699) + 4024);
    t4 = (t0 + 7984U);
    t1 = xsi_base_array_concat(t1, t5, t3, (char)99, (unsigned char)2, (char)97, t2, t4, (char)101);
    t9 = (1U + 16U);
    t10 = (17U != t9);
    if (t10 == 1)
        goto LAB14;

LAB15:    t6 = (t0 + 5256);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    t13 = (t11 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 17U);
    xsi_driver_first_trans_fast(t6);

LAB10:    t1 = (t0 + 5032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(53, ng0);
    t7 = (t0 + 1032U);
    t11 = *((char **)t7);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t0 + 7968U);
    t7 = xsi_base_array_concat(t7, t12, t13, (char)99, (unsigned char)3, (char)97, t11, t14, (char)101);
    t9 = (1U + 16U);
    t15 = (17U != t9);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 5192);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 17U);
    xsi_driver_first_trans_fast(t16);
    goto LAB3;

LAB5:    xsi_size_not_matching(17U, t9, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(17U, t9, 0);
    goto LAB8;

LAB9:    xsi_set_current_line(59, ng0);
    t7 = (t0 + 1192U);
    t11 = *((char **)t7);
    t13 = ((IEEE_P_2592010699) + 4024);
    t14 = (t0 + 7984U);
    t7 = xsi_base_array_concat(t7, t12, t13, (char)99, (unsigned char)3, (char)97, t11, t14, (char)101);
    t9 = (1U + 16U);
    t15 = (17U != t9);
    if (t15 == 1)
        goto LAB12;

LAB13:    t16 = (t0 + 5256);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t7, 17U);
    xsi_driver_first_trans_fast(t16);
    goto LAB10;

LAB12:    xsi_size_not_matching(17U, t9, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(17U, t9, 0);
    goto LAB15;

}

static void work_a_3400501926_3212880686_p_1(char *t0)
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

LAB0:    xsi_set_current_line(65, ng0);

LAB3:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t2 = (t0 + 8016U);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t4 = (t0 + 8032U);
    t6 = ieee_p_3620187407_sub_767632659_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (34U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 5320);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 34U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 5048);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(34U, t9, 0);
    goto LAB6;

}

static void work_a_3400501926_3212880686_p_2(char *t0)
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

LAB0:    xsi_set_current_line(66, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (33 - 32);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5384);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 17U);
    xsi_driver_first_trans_fast(t6);

LAB2:    t11 = (t0 + 5064);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3400501926_3212880686_p_3(char *t0)
{
    char t7[16];
    char t9[16];
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t8;
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(67, ng0);

LAB3:    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = (33 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t8 = ((IEEE_P_2592010699) + 4024);
    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 15;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 15);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t6 = xsi_base_array_concat(t6, t7, t8, (char)99, (unsigned char)2, (char)97, t1, t9, (char)101);
    t13 = (1U + 16U);
    t14 = (17U != t13);
    if (t14 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 5448);
    t15 = (t11 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t6, 17U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t19 = (t0 + 5080);
    *((int *)t19) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(17U, t13, 0);
    goto LAB6;

}

static void work_a_3400501926_3212880686_p_4(char *t0)
{
    char t6[16];
    char t21[16];
    char t22[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t23;

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8080U);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t3 = (t0 + 8064U);
    t5 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t2, t1, t4, t3);
    if (t5 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 8080U);
    t3 = (t0 + 1992U);
    t4 = *((char **)t3);
    t3 = (t0 + 8064U);
    t7 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t21, t2, t1, t4, t3);
    t8 = (t0 + 8303);
    t10 = (t22 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 16;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t23 = (16 - 0);
    t13 = (t23 * 1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t6, t7, t21, t8, t22);
    t12 = (t6 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    t5 = (17U != t14);
    if (t5 == 1)
        goto LAB7;

LAB8:    t16 = (t0 + 5512);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 17U);
    xsi_driver_first_trans_fast(t16);

LAB3:    t1 = (t0 + 5096);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(72, ng0);
    t7 = (t0 + 2152U);
    t8 = *((char **)t7);
    t7 = (t0 + 8080U);
    t9 = (t0 + 1992U);
    t10 = *((char **)t9);
    t9 = (t0 + 8064U);
    t11 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t6, t8, t7, t10, t9);
    t12 = (t6 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    t15 = (17U != t14);
    if (t15 == 1)
        goto LAB5;

LAB6:    t16 = (t0 + 5512);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 17U);
    xsi_driver_first_trans_fast(t16);
    goto LAB3;

LAB5:    xsi_size_not_matching(17U, t14, 0);
    goto LAB6;

LAB7:    xsi_size_not_matching(17U, t14, 0);
    goto LAB8;

}

static void work_a_3400501926_3212880686_p_5(char *t0)
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

LAB0:    xsi_set_current_line(78, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = (16 - 15);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 5576);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 5112);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3400501926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3400501926_3212880686_p_0,(void *)work_a_3400501926_3212880686_p_1,(void *)work_a_3400501926_3212880686_p_2,(void *)work_a_3400501926_3212880686_p_3,(void *)work_a_3400501926_3212880686_p_4,(void *)work_a_3400501926_3212880686_p_5};
	xsi_register_didat("work_a_3400501926_3212880686", "isim/tb_trafo_isim_beh.exe.sim/work/a_3400501926_3212880686.didat");
	xsi_register_executes(pe);
}
