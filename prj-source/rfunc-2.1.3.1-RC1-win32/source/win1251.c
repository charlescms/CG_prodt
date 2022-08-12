/*====================================================================
		rstring.c

		rFunc InterBase UDF library.
		String functions.

		Copyright 1998-2003 Polaris Software
		http://rfunc.sourceforge.net
		mailto: rFunc@mail.ru

	 This library is free software; you can redistribute it and/or
	 modify it under the terms of the GNU Lesser General Public
	 License as published by the Free Software Foundation; either
	 version 2.1 of the License, or (at your option) any later version.
	 See license.txt for more details.

====================================================================== */

#include <string.h>
#include <stdlib.h>
#include "rfunc.h"
#include "rmath.h"
#include "win1251.h"

unsigned char upper_win1251[] = {
0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,
0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f,
0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2a,0x2b,0x2c,0x2d,0x2e,0x2f,
0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x3c,0x3d,0x3e,0x3f,
0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,
0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x5b,0x5c,0x5d,0x5e,0x5f,
0x60,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,
0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x7b,0x7c,0x7d,0x7e,0x7f,
0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8a,0x8b,0x8c,0x8d,0x8e,0x8f,
0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9a,0x9b,0x9c,0x9d,0x9e,0x9f,
0xa0,0xa1,0xa2,0xa3,0xa4,0xa5,0xa6,0xa7,0xa8,0xa9,0xaa,0xab,0xac,0xad,0xae,0xaf,
0xb0,0xb1,0xb2,0xb2,0xb4,0xb5,0xb6,0xb7,0xa8,0xb9,0xaa,0xbb,0xbc,0xbd,0xbe,0xaf,
0xc0,0xc1,0xc2,0xc3,0xc4,0xc5,0xc6,0xc7,0xc8,0xc9,0xca,0xcb,0xcc,0xcd,0xce,0xcf,
0xd0,0xd1,0xd2,0xd3,0xd4,0xd5,0xd6,0xd7,0xd8,0xd9,0xda,0xdb,0xdc,0xdd,0xde,0xdf,
0xc0,0xc1,0xc2,0xc3,0xc4,0xc5,0xc6,0xc7,0xc8,0xc9,0xca,0xcb,0xcc,0xcd,0xce,0xcf,
0xd0,0xd1,0xd2,0xd3,0xd4,0xd5,0xd6,0xd7,0xd8,0xd9,0xda,0xdb,0xdc,0xdd,0xde,0xdf
};

unsigned char lower_win1251[] = {
0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,
0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f,
0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2a,0x2b,0x2c,0x2d,0x2e,0x2f,
0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x3c,0x3d,0x3e,0x3f,
0x40,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,
0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78,0x79,0x7a,0x5b,0x5c,0x5d,0x5e,0x5f,
0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,
0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78,0x79,0x7a,0x7b,0x7c,0x7d,0x7e,0x7f,
0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8a,0x8b,0x8c,0x8d,0x8e,0x8f,
0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9a,0x9b,0x9c,0x9d,0x9e,0x9f,
0xa0,0xa1,0xa2,0xa3,0xa4,0xa5,0xa6,0xa7,0xb8,0xa9,0xba,0xab,0xac,0xad,0xae,0xbf,
0xb0,0xb1,0xb3,0xb3,0xb4,0xb5,0xb6,0xb7,0xb8,0xb9,0xba,0xbb,0xbc,0xbd,0xbe,0xbf,
0xe0,0xe1,0xe2,0xe3,0xe4,0xe5,0xe6,0xe7,0xe8,0xe9,0xea,0xeb,0xec,0xed,0xee,0xef,
0xf0,0xf1,0xf2,0xf3,0xf4,0xf5,0xf6,0xf7,0xf8,0xf9,0xfa,0xfb,0xfc,0xfd,0xfe,0xff,
0xe0,0xe1,0xe2,0xe3,0xe4,0xe5,0xe6,0xe7,0xe8,0xe9,0xea,0xeb,0xec,0xed,0xee,0xef,
0xf0,0xf1,0xf2,0xf3,0xf4,0xf5,0xf6,0xf7,0xf8,0xf9,0xfa,0xfb,0xfc,0xfd,0xfe,0xff
};

unsigned char latin_win1251[] = {
0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,
0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f,
0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2a,0x2b,0x2c,0x2d,0x2e,0x2f,
0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x3c,0x3d,0x3e,0x3f,
0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,
0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x5b,0x5c,0x5d,0x5e,0x5f,
0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,
0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78,0x79,0x7a,0x7b,0x7c,0x7d,0x7e,0x7f,
0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8a,0x8b,0x8c,0x8d,0x8e,0x8f,
0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9a,0x9b,0x9c,0x9d,0x9e,0x9f,
0xa0,0xa1,0xa2,0xa3,0xa4,0xa5,0xa6,0xa7,0x45,0xa9,0x45,0xab,0xac,0xad,0xae,0x49,
0xb0,0xb1,0x49,0x69,0xb4,0xb5,0xb6,0xb7,0x65,0xb9,0x65,0xbb,0xbc,0xbd,0xbe,0x69,
0x41,0x42,0x56,0x47,0x44,0x45,0x4a,0x5a,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,0x50,
0x52,0x53,0x54,0x55,0x46,0x48,0x43,0x43,0x53,0x53,0x5f,0x49,0x5f,0x45,0x55,0x4a,
0x61,0x62,0x76,0x67,0x64,0x65,0x6a,0x7a,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,0x70,
0x72,0x73,0x74,0x75,0x66,0x68,0x63,0x63,0x73,0x73,0x5f,0x69,0x5f,0x65,0x75,0x6a
};

#define TYP_win1251_len	72 //66

char *TYP_win1251[TYP_win1251_len] = {
	"a", "b", "v", "g", "d", "e", "yo", "zh", "z", "i",
	"y", "k", "l", "m", "n", "o", "p", "r", "s", "t",
	"u", "f", "kh", "ts", "ch", "sh", "sch", "", "y", "",
	"e", "yu", "ya",
	"A", "B", "V", "G", "D", "E", "YO", "ZH", "Z", "I",
	"Y", "K", "L", "M", "N", "O", "P", "R", "S", "T",
	"U", "F", "KH", "TS", "CH", "SH", "SCH", "", "Y", "",
	"E", "YU", "YA",
	/*Ukrainian*/
	"i", "yi", "ye",
	"I", "YI", "YE"
};


short translit_win1251[] = {
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,72, 0, 0, 0, 0, 0,
 0, 0, 0, 0, 0, 0, 0, 0,40, 0, 0, 0, 0, 0, 0,71,
 0, 0,70,67, 0, 0, 0, 0, 7, 0,69, 0, 0, 0, 0,68,
34,35,36,37,38,39,41,42,43,44,45,46,47,48,49,50,
51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,
 1, 2, 3, 4, 5, 6, 8, 9,10,11,12,13,14,15,16,17,
18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33
};
/*
unsigned char xxx_win1251[256] = {
0x00,0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0a,0x0b,0x0c,0x0d,0x0e,0x0f,
0x10,0x11,0x12,0x13,0x14,0x15,0x16,0x17,0x18,0x19,0x1a,0x1b,0x1c,0x1d,0x1e,0x1f,
0x20,0x21,0x22,0x23,0x24,0x25,0x26,0x27,0x28,0x29,0x2a,0x2b,0x2c,0x2d,0x2e,0x2f,
0x30,0x31,0x32,0x33,0x34,0x35,0x36,0x37,0x38,0x39,0x3a,0x3b,0x3c,0x3d,0x3e,0x3f,
0x40,0x41,0x42,0x43,0x44,0x45,0x46,0x47,0x48,0x49,0x4a,0x4b,0x4c,0x4d,0x4e,0x4f,
0x50,0x51,0x52,0x53,0x54,0x55,0x56,0x57,0x58,0x59,0x5a,0x5b,0x5c,0x5d,0x5e,0x5f,
0x60,0x61,0x62,0x63,0x64,0x65,0x66,0x67,0x68,0x69,0x6a,0x6b,0x6c,0x6d,0x6e,0x6f,
0x70,0x71,0x72,0x73,0x74,0x75,0x76,0x77,0x78,0x79,0x7a,0x7b,0x7c,0x7d,0x7e,0x7f,
0x80,0x81,0x82,0x83,0x84,0x85,0x86,0x87,0x88,0x89,0x8a,0x8b,0x8c,0x8d,0x8e,0x8f,
0x90,0x91,0x92,0x93,0x94,0x95,0x96,0x97,0x98,0x99,0x9a,0x9b,0x9c,0x9d,0x9e,0x9f,
0xa0,0xa1,0xa2,0xa3,0xa4,0xa5,0xa6,0xa7,0xa8,0xa9,0xaa,0xab,0xac,0xad,0xae,0xaf,
0xb0,0xb1,0xb2,0xb3,0xb4,0xb5,0xb6,0xb7,0xb8,0xb9,0xba,0xbb,0xbc,0xbd,0xbe,0xbf,
0xc0,0xc1,0xc2,0xc3,0xc4,0xc5,0xc6,0xc7,0xc8,0xc9,0xca,0xcb,0xcc,0xcd,0xce,0xcf,
0xd0,0xd1,0xd2,0xd3,0xd4,0xd5,0xd6,0xd7,0xd8,0xd9,0xda,0xdb,0xdc,0xdd,0xde,0xdf,
0xe0,0xe1,0xe2,0xe3,0xe4,0xe5,0xe6,0xe7,0xe8,0xe9,0xea,0xeb,0xec,0xed,0xee,0xef,
0xf0,0xf1,0xf2,0xf3,0xf4,0xf5,0xf6,0xf7,0xf8,0xf9,0xfa,0xfb,0xfc,0xfd,0xfe,0xff
};
*/

char *a1[20][4] = {
	{"����","","",""},
	{"����","����","����","����"},
	{"���","���","���","����"},
	{"���","���","���","����"},
	{"������","������","������","�������"},
	{"����","����","����","������"},
	{"�����","�����","�����","�������"},
	{"����","����","����","������"},
	{"������","������","������","��������"},
	{"������","������","������","��������"},
	{"������","������","������","��������"},
	{"�����������","","",""},
	{"����������","","",""},
	{"����������","","",""},
	{"������������","","",""},
	{"����������","","",""},
	{"�����������","","",""},
	{"����������","","",""},
	{"������������","","",""},
	{"������������","","",""}

};

char *a10[10] = {
	"����",
	"������",
	"��������",
	"��������",
	"�����",
	"���������",
	"����������",
	"���������",
	"�����������",
	"���������"
};

char *a100[10] = {
	"����",
	"���",
	"������",
	"������" ,
	"���������",
	"�������",
	"��������",
	"�������",
	"���������",
	"���������"
};

char *aExp[5][4] = {
	{"2","��������","���������","��������o�"},
	{"2","��������","���������","����������"},
	{"2","�������","��������","���������"},
	{"3","������","������","�����"},
	{"0","","",""}
};

unsigned char* EXPORT fn_rupper(ARG(unsigned char*, s))
ARGLIST(unsigned char *s)
{
	unsigned char *ptr = s;

#if defined(RLOCALE)
	setlocale(LC_ALL, "");
	while (*ptr)
	{
		*ptr = (unsigned char) toupper((int) *ptr);
		ptr++;
	}
#else
	while (*ptr) *ptr = upper_win1251[(short)*ptr++];
#endif /* RLOCALE */
	return s;
}

unsigned char* EXPORT fn_rlower(ARG(unsigned char*, s))
ARGLIST(unsigned char *s)
{
	unsigned char *ptr = s;

#if defined(RLOCALE)
	setlocale(LC_ALL, "");
	while (*ptr)
	{
		*ptr = (unsigned char) tolower((int) *ptr);
		ptr++;
	}
#else
	while (*ptr) *ptr = lower_win1251[(short)*ptr++];
#endif /* RLOCALE */
	return s;
}

unsigned char* EXPORT fn_rlatin(ARG(unsigned char*, s))
ARGLIST(unsigned char *s)
{
	unsigned char *ptr = s;

	while (*ptr) *ptr = latin_win1251[(short)*ptr++];
	return s;
}

unsigned char* rntranslit(ARG(unsigned char*, s), ARG(long, maxlength))
ARGLIST(unsigned char *s)
ARGLIST(long maxlength)
{
	unsigned char *buffer = (unsigned char*) MALLOC (maxlength);
	unsigned char *sptr = s;
	int i, l = 0;
	short r;

	while (*sptr)
	{
		 if (r = translit_win1251[(short)*sptr])
		 {
			i = 0;
			 while ((buffer[l++] = TYP_win1251[r-1][i++]) && (l < maxlength));
			 l--;
		 } else
			 buffer[l++] = *sptr;
		 sptr++;
		if (l >= maxlength) break;
	}
	buffer[l] = '\0';
	return buffer;
}

unsigned char* EXPORT fn_rtranslit(ARG(unsigned char*, s))
ARGLIST(unsigned char *s)
{
	return rntranslit(s, shortlen);
}

unsigned char* EXPORT fn_longrtranslit(ARG(unsigned char*, s))
ARGLIST(unsigned char *s)
{
	return rntranslit(s, longlen);
}

short TestNum(ARG(long*, Num))
ARGLIST(long* Num)
{
	if ((nmod(*Num, 10) == 1) && (nmod(*Num, 100) != 11)) return 0;
	if ((2 <= nmod(*Num, 10)) && (nmod(*Num, 10) <= 4) &&
		!((12 <= nmod(*Num, 100)) && (nmod(*Num, 100) <= 14))) return 1;
	return 2;
}

char* EXPORT fn_numinwords(ARG(long*, Sum), ARG(char*, sGender))
ARGLIST(long *Sum)
ARGLIST(char *sGender)
{
	short Gender;
	char *buffer = (char*) MALLOC (shortlen);
	long i, j, l = 0, nGender, mNum, tn;
	long pNum, Divider;

	// N - Neuter, M - Male, F - Female, P - Plural
	switch (*sGender)
	{
		case 'M': Gender = 1; break;
		case 'F': Gender = 2; break;
		case 'P': Gender = 3; break;
		default: Gender = 0;
	}

	if (*Sum < 0)
	{
		pNum = -*Sum;
		buffer[l++] = '-';
	}
	else
		pNum = *Sum;

//	Divider = 1000000000000;
	Divider = 1000000000;
	for (i = 0; i <= 3/*!*/; i++)
	{
		mNum = ndiv(pNum, Divider);
		if (mNum)
		{
			if (mNum > 99)
			{
				tn = ndiv(mNum, 100);
				j = 0; while ((buffer[l++] = a100[tn][j++]));
				buffer[l-1] = ' ';
				mNum = nmod(mNum, 100);
			}
			if (mNum > 19)
			{
				tn = ndiv(mNum, 10);
				j = 0; while ((buffer[l++] = a10[tn][j++]));
				buffer[l-1] = ' ';
				mNum = nmod(mNum, 10);
			}
			if (mNum > 0)
			{
				if (i == 3/*!*/)
					nGender = Gender + 1;
				else
					nGender = atoi(aExp[i+1/*!*/][0]);
				if (!((1 <= nGender) && (nGender <= 4))) nGender = 1;
				if (!*a1[mNum][nGender-1]) nGender = 1/*!*/;
				j = 0; while ((buffer[l++] = a1[mNum][nGender-1][j++]));
				buffer[l-1] = ' ';
			}
			if (i < 3/*!*/)
			{
				// name of numeral
				tn = TestNum(&mNum) + 2;
				j = 0; while ((buffer[l++] = aExp[i+1/*!*/][tn-1][j++]));
				buffer[l-1] = ' ';
			}
		}
		pNum = nmod(pNum, Divider);
		Divider = ndiv(Divider, 1000);
	}

	j = 0; if (!l) while ((buffer[l++] = a1[0][0][j++]));
	buffer[l] = '\0';
	return buffer;
}

