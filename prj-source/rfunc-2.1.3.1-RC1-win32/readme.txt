====================================================================
      ���� readme.txt

      ���������� ������� rFunc ��� ���� InterBase.
      ��������.

      Copyright 1998-2003 Polaris Software
      http://rfunc.sourceforge.net
      mailto:rFunc@mail.ru

====================================================================

��� ����� �������� ��������� ����� ����� ���������� ���� 
����� ��������� ��������� �� ���� ����� � �������� ����� 
������� �� ������ (Word wrap).

����������

1. ������� ��������
2. ������� ����������
3. ������� ���������
4. ������� ���������������
5. ������ ������
6. �������������

----------------------------------------------

1. ������� ��������
-------------------

���������� ������� rFunc (����� - ����������) ������������� ��� ���������� ������������ ���� InterBase. �������� � ���� ����� 140 ���������, ��������, ������� �������, ������ � ������, BLOB���, �������������� � ��. �������.
����� ���������� �������� ������ (����������� ���������), ������� ��������� ��������� �������� ���������, �������� � ���� ������, � ��������� ����������. ����� ���� ����� ��������� � ������������������ �������. 

������ �������:
  > ��������: Abs Ceil Floor MaxNum MinNum Power Round SoftRound Z IIf DIf DZero Div Mod InitRandom GetRandom
  > ������: CalcExpr ExprIsValid
  > ���������: Chr Ord StrReplace StrStuff LTrim RTrim StrLen StrPos StrRepeat SubStr Trim CIf StrCount WordCount WordNum RLower RUpper PadLeft PadRight RLatin RTranslit
  > ����: DateToStr DayPerMonth Dow EncodeDate EncodeDateTime ExtractDate ExtractDay ExtractMonth ExtractYear ExtractHour ExtractMinute ExtractSecond ExtractWeekDay ExtractYearDay Quarter FirstDayMonth LastDayMonth IsLeapYear DaysBetween DtIf IncDate IncDateTime
  > BLOB: B_Line B_Line_Count B_Max_Segment B_Number_Segments B_Put_Segment B_SubStr B_Total_Length
  > �������: BitAnd BitNot BitOr BitXor GetBit SetBit
  > ������������: Add_User Modify_User Delete_User (������ ��� IB 5.x � ����)
  > ������: MsgBox (������ Windows)
������������ ������ � ��������� �������� ����� ������������ ����� 255 ��������. ��� �������� ������� ����� ����������� ������� � ��������� Long (����� �� 16K).
������ �������� ������� ��������� � �������� doc.

���������� �������� �� C++, ������������ � ��������� �������� �������� ����� (������� source). ��� ��������� �������������� �� �� ����� ���������, �������������� ����� Interbase.

� �������� sql ������������ ����� �������� ��� ����������, �������� � ������������ ������� � ����� ���� ������. ������� ��� �������� � ������������ ������� ���������� �� ��������� ��� ������ ������ IB, ������� ����������� ������ ��� �� ����������.

�������������� ��:
  Windows 9x, NT, Me, W2K, XP
  Linux kernel 2.2 � ����
  FreeBSD 5.x
�������������� ������ InterBase:
  ��� Windows: InterBase 4.2, 5.x, 6.x, Firebird 1.x, Yaffil 1.x.
    ��� Linux: InterBase      5.x, 6.x, Firebird 1.x.
  ��� FreeBSD: Firebird 1.x.

���������. ����� �� ������ IB6 ����� �������� InterBase 6.x � ����, Firebird 1.x ��� Yaffil 1.x.

2. ������� ����������
---------------------

��� �������� ���������� � ����� �������� make-����� � ������� makefileN.win � makefileN.linux ��� Windows � Linux ��������������, ��� N - ������ IB.

��� Windows:

1. ���������� ���� �� ������������ Borland C++.
2. ���������� ����� � ����������� � �����-������ �����.
3. ������� ����� source.
4. ��������������� make-���� makefile.bc: ��������� ���� � IB (���� IBASE), � �++ (BCDIR), � ��������� ����� Windows (SYSDIR).
5. ������� ���������� ��������
     <����� BC++>\bin\make -f makefile.bc all

���������� ������������� �� Free Borland C++ Compiler 5.5 � Borland �++Builder 4.0.

��� Linux:

1. ���������� ����� � ����������� � ������� mc ��� ���������
     gzip -d rfunc.tar.gz
     tar xvf rfunc.tar
2. ����� � ������� source.
3. ��������������� make-���� makefile.linux: ��������� ���� � IB (���� IBASE).
4. ������� ���������� ��������
     make -f makefile.linux all

���������� ������������� �� RH 6.2 kernel 2.2.14, Mandrake 8.0 kernel 2.4.4.

��� FreeBSD:

1. ���������� ����� � ����������� � ������� mc ��� ���������
     gzip -d rfunc.tar.gz
     tar xvf rfunc.tar
2. ����� � ������� source.
3. ��������������� make-���� makefile.freebsd: ��������� ���� � IB (���� IBASE).
4. ������� ���������� ��������
     make -f makefile.freebsd all

���������� ������������� �� FreeBSD 5.1.


3. ������� ���������
--------------------

� ������������� ������������ ���������������� ���������� rFunc ������ ��� Firebird 1.x. ��� ������ ������ IB ���������� �������������� �������������� �� ���, ���� ������������������ �������������, �������� �� �� ���.

��� Windows:

1. ���� RFUNC.DLL ���������� ���������� � �����
   ������� 1: <���� IB>\Bin (��� IB6 - <���� IB>\UDF), ��� <���� IB> - ���� � �����, � ������� ���������� Interbase (�������������).
   ������� 2: Windows\System (��� Windows 9x) ��� WinNT\System32 (Windows NT, 2k).
2. ������ ��� IB 5.x: ����������� ���� ib_util.dll �� <���� IB>\Lib � <���� IB>\Bin.

���� �� ����� ���������� ����������� ��������� ������ �������� Interbase, ���������� ������������ ���������� rFunc, ��������������� �������������� ������� IB (GDS32.DLL).
������������� ����� �������� ������� Interbase �������� GDS32.DLL �� ��������������� ������ �������.

��� Linux:

IB 5.x
������� 1: ���������� ���� rfunc � ������� /usr/lib.
������� 2: ���������� ���� rfunc � �����-������ �������, ��������, /home/rFunc. ����� ��� �������� ������ �� ���������� ��������� ������� ln -s /home/rFunc/rfunc /usr/lib/rfunc. �����������, ��� ������������ ������ ����� ����� �� �������� ������ � �������� /usr/lib.

IB6
���������� ���� rfunc � ������� <������� IB>\UDF.


4. ������� ���������������
--------------------------

��� �������, ��������� � �������������� � ���������������� ����������, ������������ GNU Lesser General Public License.
����� �������� ��������� � ����� license.txt.

���������� �������� �������� ���������������� ��������� (freeware) � �� ����������� ��������� ���� �� �������������.
���������� ����������� �������������� ������� (10$) �����������. ��� ��� ���, ��� ����� �������� ����������� ���������, ����� ����� �� �������������� ������������ ����� ������� � ��������� � ���������� ��������� �������.
������������������ ����� �� ������ http://www.shareg.com/req.php3?prodid=691&referer=2866.


5. ������ ������
----------------

��������/�����           ��������
------------------------------------------------------------
bin/                     ���������������� ����������
rfunc.dll                ��� Firebird 1.x (Windows)
rfunc                    ��� Firebird 1.x (Linux)

doc/                     ��������
*.html                   �������� �������� ������� (� ������ �����)
*eng.html                �������� �������� ������� (� ������ ������������� �����)
*.gif, polesoft.css      �������� � ������� ������ ��� html
rfunc.txt                �������� ������� (win1251)
rfunceng.txt             �������� ������� (english)
rfunc.koi8               �������� ������� (koi8r)

source/                  ���, ��� ����� ��� ����������
makefile*.*              make-����� ��� ���������� ��� ��������� ������ IB � ��� Windows � Linux
rblob.*                  ������� ������ � BLOB
rcalc.*                  ������
rdatetime.*              ������� ������ � ������
rfunc.h                  header-���� ��� rfunc
rfunc*.rc                ��������� ���� c VersionInfo ��� ��������� ������ IB (������ Windows)
rmath.*                  �������������� �������
rmisc.*                  ������ �������
rsecurity.*              ������� ������ � ��������������
rstring.*                ��������� �������
win1251.h                ������� �������� ��� ������� rUpper, rLower, rLatin, rTranslit

sql/                     �������
rdrop.sql                �������� ������� �� ���� ������
rfunc*.sql               ���������� ������� � ���� ������ ��� ��������� ������ IB
rtest.sql                ������������ �������

changes.txt              ������� ��������� (win1251)
changeseng.txt           ������� ��������� (english)
changes.koi8             ������� ��������� (koi8r)
license.txt              �������� (english)
readme.txt               ���� �������� (win1251)
readmeeng.txt            ���� �������� (english)
readme.koi8              ���� �������� (koi8r)


6. �������������
----------------

�������� ���������
Software developer
Storm International CS B.V.

----------------------------------------------

24.07.2001

� ���������,
Polaris Software, ������, ���������

������� �� ������� � ����� ���������.