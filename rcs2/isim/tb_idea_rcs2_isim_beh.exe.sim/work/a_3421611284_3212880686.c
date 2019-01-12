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
static const char *ng0 = "D:/Masters/VHDL System Design Lab/submit/rcs2/roundcounter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3421611284_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(63, ng0);
    t3 = (t0 + 2312U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t3 = (t0 + 5568);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2632U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 5632);
    t4 = (t1 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

}

static void work_a_3421611284_3212880686_p_1(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;
    int t12;
    char *t13;
    int t15;
    char *t16;
    int t18;
    char *t19;
    int t21;
    char *t22;
    int t24;
    char *t25;
    int t27;
    char *t28;
    int t30;
    char *t31;
    char *t32;
    unsigned char t33;
    unsigned char t34;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;

LAB0:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 5440);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(71, ng0);
    t3 = (t0 + 2952U);
    t4 = *((char **)t3);
    t3 = (t0 + 9255);
    t6 = xsi_mem_cmp(t3, t4, 4U);
    if (t6 == 1)
        goto LAB6;

LAB16:    t7 = (t0 + 9259);
    t9 = xsi_mem_cmp(t7, t4, 4U);
    if (t9 == 1)
        goto LAB7;

LAB17:    t10 = (t0 + 9263);
    t12 = xsi_mem_cmp(t10, t4, 4U);
    if (t12 == 1)
        goto LAB8;

LAB18:    t13 = (t0 + 9267);
    t15 = xsi_mem_cmp(t13, t4, 4U);
    if (t15 == 1)
        goto LAB9;

LAB19:    t16 = (t0 + 9271);
    t18 = xsi_mem_cmp(t16, t4, 4U);
    if (t18 == 1)
        goto LAB10;

LAB20:    t19 = (t0 + 9275);
    t21 = xsi_mem_cmp(t19, t4, 4U);
    if (t21 == 1)
        goto LAB11;

LAB21:    t22 = (t0 + 9279);
    t24 = xsi_mem_cmp(t22, t4, 4U);
    if (t24 == 1)
        goto LAB12;

LAB22:    t25 = (t0 + 9283);
    t27 = xsi_mem_cmp(t25, t4, 4U);
    if (t27 == 1)
        goto LAB13;

LAB23:    t28 = (t0 + 9287);
    t30 = xsi_mem_cmp(t28, t4, 4U);
    if (t30 == 1)
        goto LAB14;

LAB24:
LAB15:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 9327);
    t4 = (t0 + 5696);
    t5 = (t4 + 56U);
    t7 = *((char **)t5);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t4);

LAB5:    goto LAB3;

LAB6:    xsi_set_current_line(73, ng0);
    t31 = (t0 + 1192U);
    t32 = *((char **)t31);
    t33 = *((unsigned char *)t32);
    t34 = (t33 == (unsigned char)3);
    if (t34 != 0)
        goto LAB26;

LAB28:
LAB27:    goto LAB5;

LAB7:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t33 = (t2 == (unsigned char)3);
    if (t33 != 0)
        goto LAB29;

LAB31:
LAB30:    goto LAB5;

LAB8:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t33 = (t2 == (unsigned char)3);
    if (t33 != 0)
        goto LAB32;

LAB34:
LAB33:    goto LAB5;

LAB9:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t33 = (t2 == (unsigned char)3);
    if (t33 != 0)
        goto LAB35;

LAB37:
LAB36:    goto LAB5;

LAB10:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t33 = (t2 == (unsigned char)3);
    if (t33 != 0)
        goto LAB38;

LAB40:
LAB39:    goto LAB5;

LAB11:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t33 = (t2 == (unsigned char)3);
    if (t33 != 0)
        goto LAB41;

LAB43:
LAB42:    goto LAB5;

LAB12:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t33 = (t2 == (unsigned char)3);
    if (t33 != 0)
        goto LAB44;

LAB46:
LAB45:    goto LAB5;

LAB13:    xsi_set_current_line(108, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t33 = (t2 == (unsigned char)3);
    if (t33 != 0)
        goto LAB47;

LAB49:
LAB48:    goto LAB5;

LAB14:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t33 = (t2 == (unsigned char)3);
    if (t33 != 0)
        goto LAB50;

LAB52:
LAB51:    goto LAB5;

LAB25:;
LAB26:    xsi_set_current_line(74, ng0);
    t31 = (t0 + 9291);
    t36 = (t0 + 5696);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    t39 = (t38 + 56U);
    t40 = *((char **)t39);
    memcpy(t40, t31, 4U);
    xsi_driver_first_trans_fast(t36);
    goto LAB27;

LAB29:    xsi_set_current_line(79, ng0);
    t1 = (t0 + 9295);
    t5 = (t0 + 5696);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB30;

LAB32:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 9299);
    t5 = (t0 + 5696);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB33;

LAB35:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 9303);
    t5 = (t0 + 5696);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB36;

LAB38:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 9307);
    t5 = (t0 + 5696);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB39;

LAB41:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 9311);
    t5 = (t0 + 5696);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB42;

LAB44:    xsi_set_current_line(104, ng0);
    t1 = (t0 + 9315);
    t5 = (t0 + 5696);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB45;

LAB47:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 9319);
    t5 = (t0 + 5696);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB48;

LAB50:    xsi_set_current_line(114, ng0);
    t1 = (t0 + 9323);
    t5 = (t0 + 5696);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t1, 4U);
    xsi_driver_first_trans_fast(t5);
    goto LAB51;

}

static void work_a_3421611284_3212880686_p_2(char *t0)
{
    char t5[16];
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
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    char *t18;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB8};

LAB0:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 9220U);
    t3 = (t0 + 9331);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 3;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 5760);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t10);
    goto **((char **)t1);

LAB2:    xsi_set_current_line(127, ng0);
    t7 = (t0 + 5760);
    t11 = (t7 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t7);
    goto LAB3;

LAB5:    t1 = (t0 + 5456);
    *((int *)t1) = 1;

LAB1:    return;
LAB6:    xsi_set_current_line(135, ng0);
    t3 = (t0 + 5824);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    t7 = (t6 + 56U);
    t11 = *((char **)t7);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(136, ng0);
    t1 = (t0 + 5888);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(138, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t15 = (t10 == (unsigned char)3);
    if (t15 != 0)
        goto LAB9;

LAB11:    xsi_set_current_line(141, ng0);
    t1 = (t0 + 5952);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB10:    goto LAB5;

LAB7:    xsi_set_current_line(145, ng0);
    t1 = (t0 + 5824);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(146, ng0);
    t1 = (t0 + 5888);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(147, ng0);
    t1 = (t0 + 5952);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB5;

LAB8:    xsi_set_current_line(150, ng0);
    t1 = (t0 + 5824);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(151, ng0);
    t1 = (t0 + 5888);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(153, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t15 = (t10 == (unsigned char)2);
    if (t15 != 0)
        goto LAB12;

LAB14:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t15 = *((unsigned char *)t2);
    t16 = (t15 == (unsigned char)3);
    if (t16 == 1)
        goto LAB17;

LAB18:    t10 = (unsigned char)0;

LAB19:    if (t10 != 0)
        goto LAB15;

LAB16:    xsi_set_current_line(158, ng0);
    t1 = (t0 + 5952);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t6 = *((char **)t4);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB13:    goto LAB5;

LAB9:    xsi_set_current_line(139, ng0);
    t1 = (t0 + 5952);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    goto LAB10;

LAB12:    xsi_set_current_line(154, ng0);
    t1 = (t0 + 5952);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB13;

LAB15:    xsi_set_current_line(156, ng0);
    t11 = (t0 + 5952);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t18 = *((char **)t14);
    *((unsigned char *)t18) = (unsigned char)0;
    xsi_driver_first_trans_fast(t11);
    goto LAB13;

LAB17:    t1 = (t0 + 2952U);
    t3 = *((char **)t1);
    t1 = (t0 + 9220U);
    t4 = (t0 + 9335);
    t7 = (t5 + 0U);
    t11 = (t7 + 0U);
    *((int *)t11) = 0;
    t11 = (t7 + 4U);
    *((int *)t11) = 3;
    t11 = (t7 + 8U);
    *((int *)t11) = 1;
    t8 = (3 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t11 = (t7 + 12U);
    *((unsigned int *)t11) = t9;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t1, t4, t5);
    t10 = t17;
    goto LAB19;

}

static void work_a_3421611284_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    unsigned int t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(163, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t3 = (3 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (0 + t5);
    t1 = (t2 + t6);
    t7 = *((unsigned char *)t1);
    t8 = (t0 + 6016);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = t7;
    xsi_driver_first_trans_fast_port(t8);

LAB2:    t13 = (t0 + 5472);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3421611284_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(164, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 6080);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 5488);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3421611284_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3421611284_3212880686_p_0,(void *)work_a_3421611284_3212880686_p_1,(void *)work_a_3421611284_3212880686_p_2,(void *)work_a_3421611284_3212880686_p_3,(void *)work_a_3421611284_3212880686_p_4};
	xsi_register_didat("work_a_3421611284_3212880686", "isim/tb_idea_rcs2_isim_beh.exe.sim/work/a_3421611284_3212880686.didat");
	xsi_register_executes(pe);
}
