// This file is part of the SV-Benchmarks collection of verification tasks:
// https://github.com/sosy-lab/sv-benchmarks
//
// SPDX-FileCopyrightText: 2014-2020 The SV-Benchmarks Community
// SPDX-FileCopyrightText: 2012 The RERS Challenge <https://www.rers-challenge.org>
//
// SPDX-License-Identifier: Apache-2.0

int calculate_output(int);
extern void abort(void);
extern void __assert_fail(const char *, const char *, unsigned int, const char *) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
void reach_error() { __assert_fail("0", "Problem01_label57.c", 4, "reach_error"); }
extern int __VERIFIER_nondet_int(void);
extern void exit(int);

	// inputs
	int a= 1;
	int d= 4;
	int e= 5;
	int f= 6;
	int c= 3;
	int b= 2;

	// outputs
	int u = 21;
	int v = 22;
	int w = 23;
	int x = 24;
	int y = 25;
	int z = 26;

	int a17 = 1;
	int a7 = 0;
	int a20 = 1;
	int a8 = 15;
	int a12 = 8;
	int a16 = 5;
	int a21 = 1;

	int calculate_output(int input) {
	    if((((a8==15)&&(((((a21==1)&&(((a16==5)||(a16==6))&&(input==1)))&&(a20==1))&&(a17==1))&&!(a7==1)))&&(a12==8))){
	    	a16 = 5;
	    	a20 = 0;
	    	return 24;
	    } else if((((((((input==5)&&((((a16==6)&&(a17==1))||(!(a17==1)&&(a16==4)))||(!(a17==1)&&(a16==5))))&&(a20==1))&&(a12==8))&&(a7==1))&&!(a21==1))&&(a8==13))){
	    	a20 = 0;
	    	a16 = 6;
	    	a17 = 0;
	    	a8 = 15;
	    	a7 = 0;
	    	a21 = 1;
	    	return 26;
	    } else if(((!(a7==1)&&((((a16==6)&&((a21==1)&&((a17==1)&&(input==3))))&&!(a20==1))&&(a8==15)))&&(a12==8))){
	    	a20 = 1;
	    	a16 = 4;
	    	a7 = 1;
	    	a8 = 13;
	    	return -1;
	    } else if(((a17==1)&&((!(a7==1)&&(((a21==1)&&((((a16==5)||(a16==6))&&(input==6))&&(a20==1)))&&(a8==15)))&&(a12==8)))){
	    	a8 = 13;
	    	a7 = 1;
	    	a16 = 4;
	    	return -1;
	    } else if((((input==3)&&((((a16==6)&&((!(a20==1)&&(!(a7==1)&&!(a17==1)))&&(a8==15)))&&(a21==1))||((((a8==13)&&((a20==1)&&((a17==1)&&(a7==1))))&&(a16==4))&&!(a21==1))))&&(a12==8))){
	    	a7 = 0;
	    	a20 = 1;
	    	a21 = 1;
	    	a16 = 4;
	    	a17 = 1;
	    	a8 = 13;
	    	return -1;
	    } else if((((a17==1)&&(((a21==1)&&((!(a7==1)&&((input==4)&&(a8==15)))&&!(a20==1)))&&(a12==8)))&&(a16==6))){
	    	a17 = 0;
	    	return 26;
	    } else if((((a12==8)&&(((a21==1)&&((((input==5)&&!(a7==1))&&(a8==15))&&(a16==5)))&&!(a20==1)))&&!(a17==1))){
	    	a7 = 1;
	    	a16 = 4;
	    	a8 = 13;
	    	a20 = 1;
	    	a17 = 1;
	    	return -1;
	    } else if(((a12==8)&&((input==1)&&(((a21==1)&&(((a8==15)&&((!(a17==1)&&!(a7==1))&&!(a20==1)))&&(a16==6)))||(!(a21==1)&&((a16==4)&&((a8==13)&&(((a17==1)&&(a7==1))&&(a20==1))))))))){
	    	a7 = 1;
	    	a17 = 1;
	    	a21 = 0;
	    	a20 = 1;
	    	a8 = 13;
	    	a16 = 5;
	    	return 26;
	    } else if(((((!(a17==1)&&(!(a7==1)&&((a21==1)&&((a8==15)&&(input==4)))))&&!(a20==1))&&(a12==8))&&(a16==4))){
	    	a17 = 1;
	    	a16 = 5;
	    	return 21;
	    } else if(((((((a16==6)&&((!(a20==1)&&(!(a17==1)&&!(a7==1)))&&(a8==15)))&&(a21==1))||(((a16==4)&&(((a20==1)&&((a17==1)&&(a7==1)))&&(a8==13)))&&!(a21==1)))&&(input==2))&&(a12==8))){
	    	a7 = 0;
	    	a20 = 1;
	    	a8 = 14;
	    	a16 = 4;
	    	a21 = 1;
	    	a17 = 0;
	    	return -1;
	    } else if(((a8==13)&&(!(a21==1)&&((((input==3)&&((((a20==1)&&!(a17==1))&&(a16==6))||((!(a20==1)&&(a17==1))&&(a16==4))))&&(a12==8))&&(a7==1))))){
	    	a16 = 4;
	    	a17 = 1;
	    	a20 = 1;
	    	return 26;
	    } else if(((((a21==1)&&((a12==8)&&((input==1)&&(((!(a20==1)&&(a17==1))&&(a16==4))||(((a16==5)&&(!(a17==1)&&(a20==1)))||((a16==6)&&(!(a17==1)&&(a20==1))))))))&&!(a7==1))&&(a8==15))){
	    	a16 = 6;
	    	a20 = 1;
	    	a17 = 0;
	    	return 24;
	    } else if((((a16==5)&&(((a7==1)&&((!(a21==1)&&((a12==8)&&(input==3)))&&(a8==13)))&&(a17==1)))&&(a20==1))){
	    	a20 = 0;
	    	a8 = 15;
	    	a17 = 0;
	    	a21 = 1;
	    	return -1;
	    } else if(((a17==1)&&(((a8==15)&&(((a12==8)&&((!(a7==1)&&(input==5))&&(a21==1)))&&!(a20==1)))&&(a16==5)))){
	    	a20 = 1;
	    	a8 = 13;
	    	a7 = 1;
	    	a16 = 4;
	    	return -1;
	    } else if((!(a7==1)&&(((((a21==1)&&(((a8==15)&&(input==5))&&!(a17==1)))&&(a12==8))&&(a20==1))&&(a16==4)))){
	    	a8 = 13;
	    	a17 = 1;
	    	a7 = 1;
	    	return -1;
	    } else if(((!(a21==1)&&(((a12==8)&&((((a16==6)&&((a20==1)&&!(a17==1)))||((!(a20==1)&&(a17==1))&&(a16==4)))&&(input==1)))&&(a8==13)))&&(a7==1))){
	    	a16 = 6;
	    	a20 = 1;
	    	a17 = 0;
	    	return -1;
	    } else if(((a17==1)&&(!(a7==1)&&(((a21==1)&&(((a12==8)&&((input==5)&&((a16==5)||(a16==6))))&&(a20==1)))&&(a8==15))))){
	    	a7 = 1;
	    	a16 = 4;
	    	a8 = 13;
	    	return -1;
	    } else if((((a12==8)&&(!(a21==1)&&((a7==1)&&((a8==13)&&((input==6)&&((((a16==6)&&(a17==1))||((a16==4)&&!(a17==1)))||((a16==5)&&!(a17==1))))))))&&(a20==1))){
	    	a8 = 15;
	    	a17 = 0;
	    	a21 = 1;
	    	a20 = 0;
	    	a16 = 4;
	    	return -1;
	    } else if((((a16==5)&&((((a8==15)&&((!(a7==1)&&(input==2))&&(a21==1)))&&(a12==8))&&!(a20==1)))&&!(a17==1))){
	    	a16 = 4;
	    	a17 = 1;
	    	return 24;
	    } else if((!(a20==1)&&((a21==1)&&((a16==4)&&((a8==15)&&(((a12==8)&&((input==2)&&!(a7==1)))&&!(a17==1))))))){
	    	a17 = 1;
	    	a16 = 5;
	    	return 21;
	    } else if((((a21==1)&&(!(a7==1)&&((!(a20==1)&&(!(a17==1)&&((a12==8)&&(input==6))))&&(a16==4))))&&(a8==15))){
	    	a20 = 1;
	    	a16 = 6;
	    	return 22;
	    } else if(((a17==1)&&((((((a12==8)&&((input==4)&&(a8==13)))&&(a20==1))&&!(a21==1))&&(a16==5))&&(a7==1)))){
	    	a16 = 4;
	    	a17 = 0;
	    	return 25;
	    } else if(((((a8==13)&&((a12==8)&&((((((a16==6)&&(a17==1))||(!(a17==1)&&(a16==4)))||(!(a17==1)&&(a16==5)))&&(input==1))&&!(a21==1))))&&(a20==1))&&(a7==1))){
	    	a8 = 15;
	    	a16 = 6;
	    	a21 = 1;
	    	a20 = 0;
	    	a7 = 0;
	    	a17 = 1;
	    	return -1;
	    } else if(((a8==13)&&(!(a21==1)&&((((((!(a17==1)&&(a20==1))&&(a16==6))||((a16==4)&&((a17==1)&&!(a20==1))))&&(input==5))&&(a7==1))&&(a12==8))))){
	    	a17 = 1;
	    	a20 = 0;
	    	a16 = 4;
	    	return 25;
	    } else if(((!(a21==1)&&((((((a16==6)&&((a20==1)&&!(a17==1)))||(((a17==1)&&!(a20==1))&&(a16==4)))&&(input==4))&&(a7==1))&&(a12==8)))&&(a8==13))){
	    	a8 = 15;
	    	a21 = 1;
	    	a20 = 0;
	    	a7 = 0;
	    	a16 = 6;
	    	a17 = 0;
	    	return 26;
	    } else if((((a21==1)&&(!(a7==1)&&((((((a16==5)&&((a20==1)&&!(a17==1)))||((!(a17==1)&&(a20==1))&&(a16==6)))||((a16==4)&&((a17==1)&&!(a20==1))))&&(input==4))&&(a12==8))))&&(a8==15))){
	    	a16 = 4;
	    	a20 = 0;
	    	a17 = 0;
	    	return 24;
	    } else if(((((((a16==6)&&((!(a20==1)&&(!(a17==1)&&!(a7==1)))&&(a8==15)))&&(a21==1))||(((a16==4)&&((((a7==1)&&(a17==1))&&(a20==1))&&(a8==13)))&&!(a21==1)))&&(input==4))&&(a12==8))){
	    	a17 = 0;
	    	a16 = 5;
	    	a21 = 1;
	    	a8 = 14;
	    	a7 = 1;
	    	a20 = 1;
	    	return -1;
	    } else if((!(a17==1)&&(((a12==8)&&(!(a20==1)&&(((a8==15)&&((a21==1)&&(input==4)))&&!(a7==1))))&&(a16==5)))){
	    	a17 = 1;
	    	return 24;
	    } else if((((!(a7==1)&&(((input==2)&&((((a16==5)&&((a20==1)&&!(a17==1)))||((a16==6)&&((a20==1)&&!(a17==1))))||((a16==4)&&(!(a20==1)&&(a17==1)))))&&(a8==15)))&&(a12==8))&&(a21==1))){
	    	a17 = 0;
	    	a16 = 5;
	    	a20 = 1;
	    	return 25;
	    } else if((!(a20==1)&&(((((((input==6)&&(a16==5))&&(a21==1))&&!(a17==1))&&(a12==8))&&!(a7==1))&&(a8==15)))){
	    	a17 = 1;
	    	return 24;
	    } else if(((a12==8)&&(((((((a21==1)&&(input==5))&&(a8==15))&&(a17==1))&&!(a7==1))&&!(a20==1))&&(a16==6)))){
	    	a20 = 1;
	    	a16 = 4;
	    	a7 = 1;
	    	a8 = 13;
	    	return -1;
	    } else if(((((a8==15)&&(!(a7==1)&&((((!(a20==1)&&(a17==1))&&(a16==4))||(((!(a17==1)&&(a20==1))&&(a16==5))||((a16==6)&&((a20==1)&&!(a17==1)))))&&(input==6))))&&(a12==8))&&(a21==1))){
	    	a20 = 0;
	    	a17 = 1;
	    	a16 = 4;
	    	return 22;
	    } else if(((a8==15)&&((a16==4)&&(!(a20==1)&&((((a21==1)&&(!(a17==1)&&(input==5)))&&!(a7==1))&&(a12==8)))))){
	    	a7 = 1;
	    	a8 = 13;
	    	a17 = 1;
	    	a20 = 1;
	    	return -1;
	    } else if(((a17==1)&&((a12==8)&&((a8==15)&&(((!(a7==1)&&(((a16==5)||(a16==6))&&(input==2)))&&(a21==1))&&(a20==1)))))){
	    	a17 = 0;
	    	a16 = 6;
	    	return 22;
	    } else if((!(a7==1)&&(((a8==15)&&((!(a17==1)&&((a12==8)&&((input==3)&&(a21==1))))&&(a16==4)))&&(a20==1)))){
	    	a17 = 1;
	    	a7 = 1;
	    	a8 = 13;
	    	return -1;
	    } else if(((a16==5)&&((!(a21==1)&&(((a8==13)&&(((input==2)&&(a20==1))&&(a12==8)))&&(a7==1)))&&(a17==1)))){
	    	a21 = 1;
	    	a8 = 14;
	    	a16 = 4;
	    	a20 = 0;
	    	a7 = 0;
	    	a17 = 0;
	    	return -1;
	    } else if(((a20==1)&&(((a12==8)&&((a7==1)&&((a8==13)&&(((!(a17==1)&&(a16==5))||(((a17==1)&&(a16==6))||(!(a17==1)&&(a16==4))))&&(input==3)))))&&!(a21==1)))){
	    	a8 = 14;
	    	a7 = 0;
	    	a17 = 1;
	    	a21 = 1;
	    	a16 = 4;
	    	return -1;
	    } else if(((a12==8)&&((a7==1)&&(!(a21==1)&&((a8==13)&&((input==6)&&(((a16==6)&&((a20==1)&&!(a17==1)))||((a16==4)&&((a17==1)&&!(a20==1)))))))))){
	    	a20 = 0;
	    	a21 = 1;
	    	a17 = 0;
	    	a8 = 14;
	    	a16 = 4;
	    	return -1;
	    } else if(((!(a7==1)&&(!(a17==1)&&((((a16==4)&&((a8==15)&&(input==1)))&&(a12==8))&&(a21==1))))&&(a20==1))){
	    	a7 = 1;
	    	a8 = 13;
	    	a17 = 1;
	    	return -1;
	    } else if(((a17==1)&&(((a21==1)&&(!(a20==1)&&((a12==8)&&((a8==15)&&(!(a7==1)&&(input==1))))))&&(a16==6)))){
	    	a20 = 1;
	    	a8 = 13;
	    	a7 = 1;
	    	a16 = 4;
	    	return -1;
	    } else if(((a20==1)&&((a12==8)&&((((a17==1)&&((((a16==5)||(a16==6))&&(input==4))&&(a8==15)))&&(a21==1))&&!(a7==1))))){
	    	a16 = 4;
	    	a7 = 1;
	    	a8 = 13;
	    	return -1;
	    } else if(((((a8==13)&&((((!(a21==1)&&(input==6))&&(a20==1))&&(a12==8))&&(a17==1)))&&(a7==1))&&(a16==5))){
	    	a16 = 4;
	    	a20 = 0;
	    	return 25;
	    } else if(((a16==5)&&(((((a12==8)&&(!(a7==1)&&((input==2)&&!(a20==1))))&&(a21==1))&&(a17==1))&&(a8==15)))){
	    	a17 = 0;
	    	return 24;
	    } else if((((a12==8)&&(((!(a17==1)&&((a21==1)&&((input==4)&&!(a7==1))))&&(a8==15))&&(a20==1)))&&(a16==4))){
	    	a20 = 0;
	    	a17 = 1;
	    	a16 = 6;
	    	return 21;
	    } else if(((a7==1)&&((a8==13)&&((a12==8)&&(!(a21==1)&&((input==2)&&((((a20==1)&&!(a17==1))&&(a16==6))||(((a17==1)&&!(a20==1))&&(a16==4))))))))){
	    	a16 = 4;
	    	a20 = 0;
	    	a17 = 1;
	    	return -1;
	    } else if((((((((!(a20==1)&&(!(a17==1)&&!(a7==1)))&&(a8==15))&&(a16==6))&&(a21==1))||((((a8==13)&&(((a17==1)&&(a7==1))&&(a20==1)))&&(a16==4))&&!(a21==1)))&&(input==6))&&(a12==8))){
	    	a20 = 1;
	    	a8 = 13;
	    	a16 = 4;
	    	a7 = 0;
	    	a21 = 1;
	    	a17 = 0;
	    	return -1;
	    } else if(((!(a7==1)&&(!(a17==1)&&(((((input==3)&&(a21==1))&&(a16==4))&&(a8==15))&&(a12==8))))&&!(a20==1))){
	    	a17 = 1;
	    	a7 = 1;
	    	a8 = 13;
	    	a20 = 1;
	    	return -1;
	    } else if((((((a12==8)&&(((((a17==1)&&!(a20==1))&&(a16==4))||((((a20==1)&&!(a17==1))&&(a16==5))||((!(a17==1)&&(a20==1))&&(a16==6))))&&(input==3)))&&(a8==15))&&(a21==1))&&!(a7==1))){
	    	a16 = 4;
	    	a17 = 1;
	    	a8 = 13;
	    	a20 = 1;
	    	a7 = 1;
	    	return -1;
	    } else if((((!(a7==1)&&(((input==5)&&((((a16==5)&&(!(a17==1)&&(a20==1)))||((a16==6)&&((a20==1)&&!(a17==1))))||((a16==4)&&(!(a20==1)&&(a17==1)))))&&(a12==8)))&&(a21==1))&&(a8==15))){
	    	a16 = 4;
	    	a17 = 1;
	    	a7 = 1;
	    	a20 = 1;
	    	a8 = 13;
	    	return -1;
	    } else if(((!(a7==1)&&(((a21==1)&&(((a17==1)&&((a12==8)&&(input==2)))&&!(a20==1)))&&(a16==6)))&&(a8==15))){
	    	a8 = 13;
	    	a20 = 1;
	    	a16 = 4;
	    	a7 = 1;
	    	return -1;
	    } else if(((!(a17==1)&&((a21==1)&&((!(a20==1)&&((a12==8)&&((input==3)&&!(a7==1))))&&(a8==15))))&&(a16==5))){
	    	a8 = 13;
	    	a16 = 4;
	    	return -1;
	    } else if((((a16==5)&&(!(a20==1)&&(((((input==6)&&(a21==1))&&(a17==1))&&!(a7==1))&&(a12==8))))&&(a8==15))){
	    	return 24;
	    } else if((!(a7==1)&&((a17==1)&&(((a16==6)&&(!(a20==1)&&(((input==6)&&(a12==8))&&(a21==1))))&&(a8==15))))){
	    	a7 = 1;
	    	a8 = 13;
	    	a20 = 1;
	    	a16 = 4;
	    	return -1;
	    } else if(((((a21==1)&&((a8==15)&&((a12==8)&&(!(a7==1)&&(!(a17==1)&&(input==2))))))&&(a16==4))&&(a20==1))){
	    	a17 = 1;
	    	a8 = 13;
	    	a7 = 1;
	    	return -1;
	    } else if(((a8==15)&&(((a16==4)&&((a12==8)&&((!(a20==1)&&(!(a7==1)&&(input==1)))&&!(a17==1))))&&(a21==1)))){
	    	a16 = 6;
	    	a20 = 1;
	    	return 22;
	    } else if(((a21==1)&&(((a12==8)&&((((a17==1)&&((input==3)&&((a16==5)||(a16==6))))&&!(a7==1))&&(a20==1)))&&(a8==15)))){
	    	a17 = 0;
	    	a16 = 4;
	    	return 21;
	    } else if((!(a21==1)&&((a20==1)&&(((a12==8)&&((a8==13)&&((((a16==5)&&!(a17==1))||(((a17==1)&&(a16==6))||(!(a17==1)&&(a16==4))))&&(input==2))))&&(a7==1))))){
	    	a21 = 1;
	    	a8 = 15;
	    	a17 = 1;
	    	a7 = 0;
	    	a16 = 6;
	    	a20 = 0;
	    	return -1;
	    } else if(((a7==1)&&((a12==8)&&((((a20==1)&&(((!(a17==1)&&(a16==5))||(((a17==1)&&(a16==6))||((a16==4)&&!(a17==1))))&&(input==4)))&&(a8==13))&&!(a21==1))))){
	    	a8 = 15;
	    	a16 = 6;
	    	a21 = 1;
	    	a7 = 0;
	    	a20 = 0;
	    	a17 = 0;
	    	return 26;
	    } else if(((a21==1)&&((((!(a7==1)&&((a8==15)&&(!(a20==1)&&(input==4))))&&(a17==1))&&(a16==5))&&(a12==8)))){
	    	return 24;
	    } else if((((!(a7==1)&&((!(a20==1)&&((a21==1)&&((input==3)&&(a17==1))))&&(a8==15)))&&(a12==8))&&(a16==5))){
	    	a20 = 1;
	    	a8 = 13;
	    	a7 = 1;
	    	a16 = 4;
	    	return -1;
	    } else if(((((!(a17==1)&&(!(a20==1)&&((a8==15)&&((input==1)&&(a16==5)))))&&(a12==8))&&(a21==1))&&!(a7==1))){
	    	return -1;
	    } else if(((((a21==1)&&((a8==15)&&(((a16==5)&&((a12==8)&&(input==1)))&&(a17==1))))&&!(a7==1))&&!(a20==1))){
	    	return 21;
	    } else if(((!(a21==1)&&((a20==1)&&((((a8==13)&&((a7==1)&&(input==5)))&&(a17==1))&&(a12==8))))&&(a16==5))){
	    	a21 = 1;
	    	a7 = 0;
	    	a17 = 0;
	    	a8 = 14;
	    	a20 = 0;
	    	return -1;
	    } else if((((!(a7==1)&&((a21==1)&&((((input==6)&&(a20==1))&&(a8==15))&&!(a17==1))))&&(a12==8))&&(a16==4))){
	    	a7 = 1;
	    	a8 = 13;
	    	a17 = 1;
	    	return -1;
	    } else if(((((a20==1)&&(((!(a21==1)&&((a7==1)&&(input==1)))&&(a8==13))&&(a17==1)))&&(a12==8))&&(a16==5))){
	    	a21 = 1;
	    	a16 = 6;
	    	a7 = 0;
	    	return -1;
	    } else if(((a12==8)&&((input==5)&&((((((!(a17==1)&&!(a7==1))&&!(a20==1))&&(a8==15))&&(a16==6))&&(a21==1))||(!(a21==1)&&((a16==4)&&(((a20==1)&&((a7==1)&&(a17==1)))&&(a8==13)))))))){
	    	a20 = 0;
	    	a21 = 1;
	    	a8 = 14;
	    	a17 = 0;
	    	a16 = 5;
	    	a7 = 1;
	    	return -1;
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_20: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_47: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==15))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_32: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_37: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_56: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==15))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_33: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_57: {reach_error();abort();}
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_50: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_35: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_15: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_38: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_21: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_44: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_41: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_19: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_40: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==15))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_27: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&(a20==1))&&(a8==15))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_59: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_2: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_1: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==15))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_31: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==15))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_28: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_5: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==15))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_23: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_4: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	globalError: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==15))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_24: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_58: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_18: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==15))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_29: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_36: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==15))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_26: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_7: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==15))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_34: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_51: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_49: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_0: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_11: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_10: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_55: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_46: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_8: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_53: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_42: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_17: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_45: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_9: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==15))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_25: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_12: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_48: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_54: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_13: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_6: exit(0);
	    } 
	    if((((((((a17==1)&&(a7==1))&&!(a20==1))&&(a8==15))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_30: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_52: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&!(a20==1))&&(a8==14))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_22: exit(0);
	    } 
	    if((((((((a17==1)&&!(a7==1))&&!(a20==1))&&(a8==13))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_43: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_3: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==6))&&(a21==1))){
	    	error_16: exit(0);
	    } 
	    if(((((((!(a17==1)&&(a7==1))&&(a20==1))&&(a8==14))&&(a12==8))&&(a16==4))&&(a21==1))){
	    	error_14: exit(0);
	    } 
	    if(((((((!(a17==1)&&!(a7==1))&&(a20==1))&&(a8==13))&&(a12==8))&&(a16==5))&&(a21==1))){
	    	error_39: exit(0);
	    } 
	    return -2; 
	}

int main()
{
    // default output
    int output = -1;

    // main i/o-loop
    while(1)
    {
        // read input
        int input;
        input = __VERIFIER_nondet_int();
        if ((input != 1) && (input != 2) && (input != 3) && (input != 4) && (input != 5) && (input != 6)) return -2;

        // operate eca engine
        output = calculate_output(input);

    }
}
