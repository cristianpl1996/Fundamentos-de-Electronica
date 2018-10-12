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
static const char *ng0 = "C:/Users/fran/Desktop/Proyecto Alu/Proyecto Alu/ALU/Comparador8bits.vhd";
extern char *IEEE_P_2592010699;



static void work_a_2652172116_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(156, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t1 = ((IEEE_P_2592010699) + 4024);
    t4 = xsi_vhdl_greater(t1, t2, 8U, t3, 8U);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(159, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 7232);
    t3 = (t1 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 7152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(157, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t5 = (t0 + 7232);
    t7 = (t5 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 8U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB3;

}


extern void work_a_2652172116_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2652172116_3212880686_p_0};
	xsi_register_didat("work_a_2652172116_3212880686", "isim/Comparador8bits_TB_isim_beh.exe.sim/work/a_2652172116_3212880686.didat");
	xsi_register_executes(pe);
}
