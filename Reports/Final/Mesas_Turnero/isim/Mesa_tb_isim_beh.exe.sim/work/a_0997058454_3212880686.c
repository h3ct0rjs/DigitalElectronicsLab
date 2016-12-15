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
static const char *ng0 = "C:/Users/Sebastian/Documents/UNIVERSITY/Electronica Digital/Mesas_turnero/selector_arch.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0997058454_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    int t5;
    unsigned char t6;
    char *t7;
    int t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 2992);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(45, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((int *)t4);
    t6 = (t5 == 200000);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1352U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 3200);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t8;
    xsi_driver_first_trans_fast(t1);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(46, ng0);
    t3 = (t0 + 1512U);
    t7 = *((char **)t3);
    t8 = *((int *)t7);
    t9 = (t8 == 0);
    if (t9 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 1);
    if (t2 != 0)
        goto LAB11;

LAB13:
LAB12:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 2);
    if (t2 != 0)
        goto LAB14;

LAB16:
LAB15:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t2 = (t5 == 3);
    if (t2 != 0)
        goto LAB17;

LAB19:
LAB18:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3200);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB8:    xsi_set_current_line(47, ng0);
    t3 = (t0 + 5444);
    t11 = (t0 + 3072);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t3, 4U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t8;
    xsi_driver_first_trans_fast(t1);
    goto LAB9;

LAB11:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 5448);
    t7 = (t0 + 3072);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t8;
    xsi_driver_first_trans_fast(t1);
    goto LAB12;

LAB14:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 5452);
    t7 = (t0 + 3072);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((int *)t3);
    t8 = (t5 + 1);
    t1 = (t0 + 3136);
    t4 = (t1 + 56U);
    t7 = *((char **)t4);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((int *)t11) = t8;
    xsi_driver_first_trans_fast(t1);
    goto LAB15;

LAB17:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 5456);
    t7 = (t0 + 3072);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t1, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3136);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t7 = (t4 + 56U);
    t10 = *((char **)t7);
    *((int *)t10) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB18;

}


extern void work_a_0997058454_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0997058454_3212880686_p_0};
	xsi_register_didat("work_a_0997058454_3212880686", "isim/Mesa_tb_isim_beh.exe.sim/work/a_0997058454_3212880686.didat");
	xsi_register_executes(pe);
}
