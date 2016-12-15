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
static const char *ng0 = "C:/Users/Sebastian/Documents/UNIVERSITY/Electronica Digital/Mesas_turnero/Debouncer.vhd";
extern char *IEEE_P_3620187407;

unsigned char ieee_p_3620187407_sub_2546454082_3965413181(char *, char *, char *, int );
unsigned char ieee_p_3620187407_sub_3908131327_3965413181(char *, char *, char *, int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_1440759038_2120217776_p_0(char *t0)
{
    char t12[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2992);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(18, ng0);
    t4 = (t0 + 3072);
    t8 = (t4 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(19, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 5096U);
    t3 = ieee_p_3620187407_sub_2546454082_3965413181(IEEE_P_3620187407, t4, t2, 0);
    if (t3 == 1)
        goto LAB11;

LAB12:    t1 = (unsigned char)0;

LAB13:    if (t1 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(22, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB16;

LAB18:
LAB17:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(20, ng0);
    t5 = (t0 + 1512U);
    t9 = *((char **)t5);
    t5 = (t0 + 5096U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t9, t5, 1);
    t11 = (t12 + 12U);
    t13 = *((unsigned int *)t11);
    t14 = (1U * t13);
    t15 = (24U != t14);
    if (t15 == 1)
        goto LAB14;

LAB15:    t16 = (t0 + 3136);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t10, 24U);
    xsi_driver_first_trans_fast(t16);
    goto LAB9;

LAB11:    t5 = (t0 + 1192U);
    t8 = *((char **)t5);
    t6 = *((unsigned char *)t8);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB13;

LAB14:    xsi_size_not_matching(24U, t14, 0);
    goto LAB15;

LAB16:    xsi_set_current_line(23, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t2 = (t0 + 5096U);
    t6 = ieee_p_3620187407_sub_3908131327_3965413181(IEEE_P_3620187407, t5, t2, 500000);
    if (t6 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 5096U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t12, t4, t2, 1);
    t8 = (t12 + 12U);
    t13 = *((unsigned int *)t8);
    t14 = (1U * t13);
    t1 = (24U != t14);
    if (t1 == 1)
        goto LAB22;

LAB23:    t9 = (t0 + 3136);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    t16 = (t11 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 24U);
    xsi_driver_first_trans_fast(t9);

LAB20:    goto LAB17;

LAB19:    xsi_set_current_line(24, ng0);
    t8 = (t0 + 3072);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t16 = *((char **)t11);
    *((unsigned char *)t16) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    xsi_set_current_line(25, ng0);
    t2 = xsi_get_transient_memory(24U);
    memset(t2, 0, 24U);
    t4 = t2;
    memset(t4, (unsigned char)2, 24U);
    t5 = (t0 + 3136);
    t8 = (t5 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 24U);
    xsi_driver_first_trans_fast(t5);
    goto LAB20;

LAB22:    xsi_size_not_matching(24U, t14, 0);
    goto LAB23;

}


extern void work_a_1440759038_2120217776_init()
{
	static char *pe[] = {(void *)work_a_1440759038_2120217776_p_0};
	xsi_register_didat("work_a_1440759038_2120217776", "isim/Mesa_tb_isim_beh.exe.sim/work/a_1440759038_2120217776.didat");
	xsi_register_executes(pe);
}
