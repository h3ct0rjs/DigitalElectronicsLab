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
static const char *ng0 = "C:/Users/Sebastian/Documents/UNIVERSITY/Electronica Digital/generadorturnos/tx_arch.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_2507238156_503743352(char *, unsigned char , unsigned char );


static void work_a_0360864308_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    unsigned char t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    int t19;
    int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    static char *nl0[] = {&&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB13};

LAB0:    xsi_set_current_line(26, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4032);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(28, ng0);
    t3 = (t0 + 1832U);
    t7 = *((char **)t3);
    t8 = *((unsigned char *)t7);
    t3 = (char *)((nl0) + t8);
    goto **((char **)t3);

LAB8:    goto LAB6;

LAB9:    xsi_set_current_line(30, ng0);
    t9 = (t0 + 1352U);
    t10 = *((char **)t9);
    t11 = *((unsigned char *)t10);
    t12 = (t11 == (unsigned char)3);
    if (t12 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2728U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 4112);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast_port(t1);

LAB15:    goto LAB8;

LAB10:    xsi_set_current_line(39, ng0);
    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 2312U);
    t4 = *((char **)t1);
    t19 = *((int *)t4);
    t20 = (t19 - 7);
    t21 = (t20 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t19);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t1 = (t3 + t23);
    t2 = *((unsigned char *)t1);
    t7 = (t0 + 4112);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    t13 = (t10 + 56U);
    t15 = *((char **)t13);
    *((unsigned char *)t15) = t2;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t19 = *((int *)t7);
    t20 = (t19 - 7);
    t21 = (t20 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t19);
    t22 = (1U * t21);
    t23 = (0 + t22);
    t1 = (t4 + t23);
    t5 = *((unsigned char *)t1);
    t6 = ieee_p_2592010699_sub_2507238156_503743352(IEEE_P_2592010699, t2, t5);
    t9 = (t0 + 4304);
    t10 = (t9 + 56U);
    t13 = *((char **)t10);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = t6;
    xsi_driver_first_trans_fast(t9);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t19 = *((int *)t3);
    t2 = (t19 == 7);
    if (t2 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t19 = *((int *)t3);
    t20 = (t19 + 1);
    t1 = (t0 + 4368);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((int *)t10) = t20;
    xsi_driver_first_trans_fast(t1);

LAB18:    goto LAB8;

LAB11:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 2152U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 4112);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 4240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB12:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2728U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 4112);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 4240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)4;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB13:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 2728U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t1 = (t0 + 4112);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 4240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB14:    xsi_set_current_line(31, ng0);
    t9 = (t0 + 2608U);
    t13 = *((char **)t9);
    t14 = *((unsigned char *)t13);
    t9 = (t0 + 4112);
    t15 = (t9 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast_port(t9);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 4176);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t3, 8U);
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 4240);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 4304);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 4240);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t9 = (t7 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 4368);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t9 = *((char **)t7);
    *((int *)t9) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

}


extern void work_a_0360864308_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0360864308_3212880686_p_0};
	xsi_register_didat("work_a_0360864308_3212880686", "isim/gen_tb_isim_beh.exe.sim/work/a_0360864308_3212880686.didat");
	xsi_register_executes(pe);
}
