; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klatt_frame_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.Elm_s = type { ptr, i8, i8, i8, i8, ptr, ptr, i64, [19 x %struct.interp_t] }
%struct.interp_t = type { float, float, i8, i8, i8 }
%struct.darray_t = type { ptr, i32, i32, i16, i16 }

@.str = private unnamed_addr constant [62 x i8] c"$Id: ASCII.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@ASCII_id = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"space\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"exclamation mark\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"double quote\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"dollar\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"percent\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"ampersand\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"quote\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"open parenthesis\00", align 1
@.str.12 = private unnamed_addr constant [18 x i8] c"close parenthesis\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"asterisk\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"plus\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"comma\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"full stop\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"slash\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.28 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"colon\00", align 1
@.str.30 = private unnamed_addr constant [11 x i8] c"semi colon\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"less than\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"equals\00", align 1
@.str.33 = private unnamed_addr constant [13 x i8] c"greater than\00", align 1
@.str.34 = private unnamed_addr constant [14 x i8] c"question mark\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"at\00", align 1
@.str.36 = private unnamed_addr constant [3 x i8] c"ay\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"bee\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"see\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c"dee\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"eff\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"gee\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"aych\00", align 1
@.str.44 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"jay\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"kay\00", align 1
@.str.47 = private unnamed_addr constant [4 x i8] c"ell\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c"em\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c"ohe\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"pee\00", align 1
@.str.52 = private unnamed_addr constant [4 x i8] c"kju\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"are\00", align 1
@.str.54 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.55 = private unnamed_addr constant [4 x i8] c"tee\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"you\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"vee\00", align 1
@.str.58 = private unnamed_addr constant [11 x i8] c"double you\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"eks\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"why\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"zed\00", align 1
@.str.62 = private unnamed_addr constant [13 x i8] c"open bracket\00", align 1
@.str.63 = private unnamed_addr constant [11 x i8] c"back slash\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"close bracket\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c"circumflex\00", align 1
@.str.66 = private unnamed_addr constant [11 x i8] c"underscore\00", align 1
@.str.67 = private unnamed_addr constant [11 x i8] c"back quote\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"open brace\00", align 1
@.str.69 = private unnamed_addr constant [13 x i8] c"vertical bar\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"close brace\00", align 1
@.str.71 = private unnamed_addr constant [6 x i8] c"tilde\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.73 = private unnamed_addr constant [14 x i8] c"Revision: 2.0\00", align 1
@.str.74 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.75 = private unnamed_addr constant [12 x i8] c"File output\00", align 1
@.str.2.76 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@linear_file = internal global ptr null, align 8
@.str.3.77 = private unnamed_addr constant [27 x i8] c"Raw 16-bit linear pathname\00", align 1
@.str.4.78 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@au_file = internal global ptr null, align 8
@.str.5.79 = private unnamed_addr constant [25 x i8] c"Sun/Next audio file name\00", align 1
@.str.6.80 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@au_fd = internal global i32 -1, align 4
@au_encoding = internal unnamed_addr global i1 false, align 4
@au_size = internal unnamed_addr global i32 0, align 4
@linear_fd = internal global i32 -1, align 4
@.str.7.81 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.8.82 = private unnamed_addr constant [30 x i8] c"%s : No memory for ulaw data\0A\00", align 1
@.str.83 = private unnamed_addr constant [63 x i8] c"$Id: darray.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@darray_id = dso_local local_unnamed_addr global ptr @.str.83, align 8
@.str.84 = private unnamed_addr constant [65 x i8] c"$Id: def_pars.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@def_pars_id = dso_local local_unnamed_addr global ptr @.str.84, align 8
@.str.1.85 = private unnamed_addr constant [16 x i8] c"Synth paramters\00", align 1
@.str.2.86 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3.87 = private unnamed_addr constant [25 x i8] c"Quiet - minimal messages\00", align 1
@.str.4.88 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.5.89 = private unnamed_addr constant [23 x i8] c"Impulse glottal source\00", align 1
@.str.6.90 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.7.91 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8.92 = private unnamed_addr constant [24 x i8] c"Number cascade formants\00", align 1
@.str.9.93 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.10.94 = private unnamed_addr constant [11 x i8] c"F0 flutter\00", align 1
@.str.11.95 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.12.96 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.13.97 = private unnamed_addr constant [15 x i8] c"mSec per frame\00", align 1
@.str.14.98 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.15.99 = private unnamed_addr constant [8 x i8] c"Tilt dB\00", align 1
@.str.16.100 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.17.101 = private unnamed_addr constant [17 x i8] c"Base F0 in 0.1Hz\00", align 1
@.str.102 = private unnamed_addr constant [65 x i8] c"$Id: elements.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@elements_id = dso_local local_unnamed_addr global ptr @.str.102, align 8
@.str.1.103 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.2.104 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.3.105 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.4.106 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5.107 = private unnamed_addr constant [3 x i8] c"PY\00", align 1
@.str.6.108 = private unnamed_addr constant [3 x i8] c"PZ\00", align 1
@.str.7.109 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.8.110 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9.111 = private unnamed_addr constant [3 x i8] c"TY\00", align 1
@.str.10.112 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.11.113 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.12.114 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.13.115 = private unnamed_addr constant [3 x i8] c"KY\00", align 1
@.str.14.116 = private unnamed_addr constant [3 x i8] c"KZ\00", align 1
@.str.15.117 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.16.118 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17.119 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.18.120 = private unnamed_addr constant [3 x i8] c"BZ\00", align 1
@.str.19.121 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.20.122 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.21.123 = private unnamed_addr constant [3 x i8] c"DY\00", align 1
@.str.22.124 = private unnamed_addr constant [3 x i8] c"DZ\00", align 1
@.str.23.125 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.24.126 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.25.127 = private unnamed_addr constant [3 x i8] c"GY\00", align 1
@.str.26.128 = private unnamed_addr constant [3 x i8] c"GZ\00", align 1
@.str.27.129 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.28.130 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.29.131 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.30.132 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.31.133 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.32.134 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.33.135 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.34.136 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.35.137 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.36.138 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.37.139 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.38.140 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.39.141 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.40.142 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.41.143 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.42.144 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.43.145 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.44.146 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.45.147 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.46.148 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.47.149 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.48.150 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.49.151 = private unnamed_addr constant [3 x i8] c"ZZ\00", align 1
@.str.50.152 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.51.153 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.52.154 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.53.155 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.54.156 = private unnamed_addr constant [3 x i8] c"JY\00", align 1
@.str.55.157 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.56.158 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.57.159 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.58.160 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.59.161 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.60.162 = private unnamed_addr constant [6 x i8] c"<rzd>\00", align 1
@.str.61.163 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.62.164 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.63.165 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.64.166 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.65.167 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.66.168 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.67.169 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.68.170 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.69.171 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.70.172 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.71.173 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.72.174 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.73.175 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.74.176 = private unnamed_addr constant [3 x i8] c"A.\00", align 1
@.str.75 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.76 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.77 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.78 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.79 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.81 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"V\22\00", align 1
@.str.83.177 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.84.178 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.85 = private unnamed_addr constant [3 x i8] c"UU\00", align 1
@.str.86 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.87 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.88 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.89 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.90 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.91 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.92 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.93 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.94 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.95 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.96 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.97 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.98 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.99 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.100 = private unnamed_addr constant [3 x i8] c"fn\00", align 1
@.str.101 = private unnamed_addr constant [3 x i8] c"f1\00", align 1
@.str.102.179 = private unnamed_addr constant [3 x i8] c"f2\00", align 1
@.str.103 = private unnamed_addr constant [3 x i8] c"f3\00", align 1
@.str.104 = private unnamed_addr constant [3 x i8] c"b1\00", align 1
@.str.105 = private unnamed_addr constant [3 x i8] c"b2\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"b3\00", align 1
@.str.107 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.108 = private unnamed_addr constant [3 x i8] c"a1\00", align 1
@.str.109 = private unnamed_addr constant [3 x i8] c"a2\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"a3\00", align 1
@.str.111 = private unnamed_addr constant [3 x i8] c"a4\00", align 1
@.str.112 = private unnamed_addr constant [3 x i8] c"a5\00", align 1
@.str.113 = private unnamed_addr constant [3 x i8] c"a6\00", align 1
@.str.114 = private unnamed_addr constant [3 x i8] c"ab\00", align 1
@.str.115 = private unnamed_addr constant [3 x i8] c"av\00", align 1
@.str.116 = private unnamed_addr constant [4 x i8] c"avc\00", align 1
@.str.117 = private unnamed_addr constant [4 x i8] c"asp\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"af\00", align 1
@.str.180 = private unnamed_addr constant [64 x i8] c"$Id: english.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@english_id = dso_local local_unnamed_addr global ptr @.str.180, align 8
@punct_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.1.294, ptr @Anything, ptr @.str.1.294], [4 x ptr] [ptr @Anything, ptr @.str.2.295, ptr @Anything, ptr @.str.3.193], [4 x ptr] [ptr @.str.4.200, ptr @.str.5.296, ptr @Anything, ptr @.str.6.181], [4 x ptr] [ptr @.str.7.201, ptr @.str.5.296, ptr @Anything, ptr @.str.6.181], [4 x ptr] [ptr @.str.8.184, ptr @.str.5.296, ptr @Anything, ptr @.str.6.181], [4 x ptr] [ptr @Anything, ptr @.str.9.203, ptr @Anything, ptr @.str.3.193], [4 x ptr] [ptr @Anything, ptr @.str.10.297, ptr @Anything, ptr @.str.1.294], [4 x ptr] [ptr @Anything, ptr @.str.4.200, ptr @Anything, ptr @.str.1.294], [4 x ptr] [ptr @Anything, ptr @.str.11.298, ptr @Anything, ptr @.str.1.294], [4 x ptr] [ptr @Anything, ptr @.str.12.299, ptr @Anything, ptr @.str.1.294], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@A_rules = internal global [35 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.13.198, ptr @Nothing, ptr @.str.14.258], [4 x ptr] [ptr @Nothing, ptr @.str.15.259, ptr @Nothing, ptr @.str.16.260], [4 x ptr] [ptr @Nothing, ptr @.str.17.261, ptr @.str.18.197, ptr @.str.19.262], [4 x ptr] [ptr @Anything, ptr @.str.17.261, ptr @.str.8.184, ptr @.str.20.220], [4 x ptr] [ptr @.str.21.189, ptr @.str.22.263, ptr @.str.8.184, ptr @.str.23.264], [4 x ptr] [ptr @Anything, ptr @.str.13.198, ptr @.str.24.187, ptr @.str.14.258], [4 x ptr] [ptr @Anything, ptr @.str.25.265, ptr @Anything, ptr @.str.18.197], [4 x ptr] [ptr @.str.26.183, ptr @.str.27.266, ptr @Anything, ptr @.str.28.267], [4 x ptr] [ptr @Anything, ptr @.str.13.198, ptr @.str.29.268, ptr @.str.30.221], [4 x ptr] [ptr @.str.31.195, ptr @.str.32.269, ptr @Anything, ptr @.str.33.270], [4 x ptr] [ptr @Nothing, ptr @.str.34.271, ptr @.str.8.184, ptr @.str.35.209], [4 x ptr] [ptr @Anything, ptr @.str.36.272, ptr @Anything, ptr @.str.37.273], [4 x ptr] [ptr @.str.31.195, ptr @.str.38.274, ptr @.str.39.206, ptr @.str.40.275], [4 x ptr] [ptr @Anything, ptr @.str.13.198, ptr @.str.41.185, ptr @.str.42.276], [4 x ptr] [ptr @.str.26.183, ptr @.str.13.198, ptr @.str.43.277, ptr @.str.30.221], [4 x ptr] [ptr @Anything, ptr @.str.13.198, ptr @.str.44.205, ptr @.str.30.221], [4 x ptr] [ptr @Nothing, ptr @.str.45.278, ptr @Anything, ptr @.str.19.262], [4 x ptr] [ptr @Anything, ptr @.str.45.278, ptr @Anything, ptr @.str.46.279], [4 x ptr] [ptr @.str.26.183, ptr @.str.17.261, ptr @Nothing, ptr @.str.16.260], [4 x ptr] [ptr @Anything, ptr @.str.17.261, ptr @Nothing, ptr @.str.47.192], [4 x ptr] [ptr @Anything, ptr @.str.17.261, ptr @Anything, ptr @.str.16.260], [4 x ptr] [ptr @Anything, ptr @.str.48.280, ptr @Anything, ptr @.str.20.220], [4 x ptr] [ptr @Anything, ptr @.str.49.281, ptr @Anything, ptr @.str.30.221], [4 x ptr] [ptr @Anything, ptr @.str.50.282, ptr @Anything, ptr @.str.30.221], [4 x ptr] [ptr @Anything, ptr @.str.51.283, ptr @Anything, ptr @.str.18.197], [4 x ptr] [ptr @.str.31.195, ptr @.str.34.271, ptr @Nothing, ptr @.str.35.209], [4 x ptr] [ptr @.str.31.195, ptr @.str.52.284, ptr @Nothing, ptr @.str.53.285], [4 x ptr] [ptr @Anything, ptr @.str.54.286, ptr @Anything, ptr @.str.55.287], [4 x ptr] [ptr @Anything, ptr @.str.34.271, ptr @.str.21.189, ptr @.str.56.288], [4 x ptr] [ptr @.str.26.183, ptr @.str.57.289, ptr @Anything, ptr @.str.58.290], [4 x ptr] [ptr @Anything, ptr @.str.57.289, ptr @Anything, ptr @.str.59.291], [4 x ptr] [ptr @Anything, ptr @.str.60.292, ptr @.str.61.208, ptr @.str.62.293], [4 x ptr] [ptr @.str.21.189, ptr @.str.13.198, ptr @.str.63.186, ptr @.str.30.221], [4 x ptr] [ptr @Anything, ptr @.str.13.198, ptr @Anything, ptr @.str.42.276], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@B_rules = internal global [7 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.64.246, ptr @.str.63.186, ptr @.str.65.247], [4 x ptr] [ptr @Anything, ptr @.str.66.248, ptr @Anything, ptr @.str.67.249], [4 x ptr] [ptr @Nothing, ptr @.str.68.250, ptr @Nothing, ptr @.str.69.251], [4 x ptr] [ptr @Nothing, ptr @.str.70.252, ptr @.str.8.184, ptr @.str.71.253], [4 x ptr] [ptr @Anything, ptr @.str.72.254, ptr @Anything, ptr @.str.73.255], [4 x ptr] [ptr @Anything, ptr @.str.74.256, ptr @Anything, ptr @.str.75.257], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@C_rules = internal global [12 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.76.191, ptr @.str.21.189, ptr @.str.77.204], [4 x ptr] [ptr @.str.78.238, ptr @.str.76.191, ptr @Anything, ptr @.str.77.204], [4 x ptr] [ptr @Anything, ptr @.str.76.191, ptr @Anything, ptr @.str.79.196], [4 x ptr] [ptr @.str.80.239, ptr @.str.81.240, ptr @.str.8.184, ptr @.str.82.241], [4 x ptr] [ptr @Anything, ptr @.str.81.240, ptr @.str.13.198, ptr @.str.83.188], [4 x ptr] [ptr @Anything, ptr @.str.81.240, ptr @.str.18.197, ptr @.str.83.188], [4 x ptr] [ptr @Anything, ptr @.str.81.240, ptr @.str.84.242, ptr @.str.83.188], [4 x ptr] [ptr @Anything, ptr @.str.85.207, ptr @.str.61.208, ptr @.str.86.202], [4 x ptr] [ptr @Anything, ptr @.str.87.243, ptr @Anything, ptr @.str.77.204], [4 x ptr] [ptr @Anything, ptr @.str.88.244, ptr @.str.89.194, ptr @.str.90.245], [4 x ptr] [ptr @Anything, ptr @.str.85.207, ptr @Anything, ptr @.str.77.204], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@D_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @.str.31.195, ptr @.str.91.222, ptr @Nothing, ptr @.str.92.223], [4 x ptr] [ptr @.str.93.224, ptr @.str.94.190, ptr @Nothing, ptr @.str.95.213], [4 x ptr] [ptr @.str.96.225, ptr @.str.94.190, ptr @Nothing, ptr @.str.97.199], [4 x ptr] [ptr @Nothing, ptr @.str.98.226, ptr @.str.63.186, ptr @.str.99.227], [4 x ptr] [ptr @Nothing, ptr @.str.100.228, ptr @Nothing, ptr @.str.101.229], [4 x ptr] [ptr @Nothing, ptr @.str.102.230, ptr @Anything, ptr @.str.103.231], [4 x ptr] [ptr @Nothing, ptr @.str.104.232, ptr @Anything, ptr @.str.105.233], [4 x ptr] [ptr @Nothing, ptr @.str.106.234, ptr @Anything, ptr @.str.107.235], [4 x ptr] [ptr @Anything, ptr @.str.108.236, ptr @.str.13.198, ptr @.str.109.237], [4 x ptr] [ptr @Anything, ptr @.str.94.190, ptr @Anything, ptr @.str.95.213], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@E_rules = internal global [53 x [4 x ptr]] [[4 x ptr] [ptr @.str.31.195, ptr @.str.39.206, ptr @Nothing, ptr @.str.3.193], [4 x ptr] [ptr @.str.110.211, ptr @.str.39.206, ptr @Nothing, ptr @.str.3.193], [4 x ptr] [ptr @.str.26.183, ptr @.str.39.206, ptr @Nothing, ptr @.str.111.182], [4 x ptr] [ptr @.str.8.184, ptr @.str.112.212, ptr @Nothing, ptr @.str.95.213], [4 x ptr] [ptr @.str.31.195, ptr @.str.39.206, ptr @.str.113.214, ptr @.str.3.193], [4 x ptr] [ptr @Anything, ptr @.str.114.215, ptr @.str.115.216, ptr @.str.116.217], [4 x ptr] [ptr @Anything, ptr @.str.39.206, ptr @.str.44.205, ptr @.str.111.182], [4 x ptr] [ptr @Anything, ptr @.str.117.218, ptr @.str.8.184, ptr @.str.118.219], [4 x ptr] [ptr @Anything, ptr @.str.117.218, ptr @Anything, ptr @.str.119], [4 x ptr] [ptr @.str.31.195, ptr @.str.115.216, ptr @.str.8.184, ptr @.str.47.192], [4 x ptr] [ptr @Anything, ptr @.str.115.216, ptr @.str.8.184, ptr @.str.20.220], [4 x ptr] [ptr @Anything, ptr @.str.115.216, ptr @Anything, ptr @.str.47.192], [4 x ptr] [ptr @Nothing, ptr @.str.120, ptr @Anything, ptr @.str.121], [4 x ptr] [ptr @.str.31.195, ptr @.str.39.206, ptr @.str.122, ptr @.str.3.193], [4 x ptr] [ptr @.str.123, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.83.188, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.126, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.94.190, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.127, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.128, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.129, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.130, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.131, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.76.191, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.132, ptr @.str.124, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @Anything, ptr @.str.124, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr @.str.39.206, ptr @.str.18.197, ptr @.str.111.182], [4 x ptr] [ptr @.str.134, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.137, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.138, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.139, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.140, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.141, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.142, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.143, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.31.195, ptr @.str.39.206, ptr @.str.144, ptr @.str.3.193], [4 x ptr] [ptr @.str.31.195, ptr @.str.145, ptr @Nothing, ptr @.str.146], [4 x ptr] [ptr @.str.31.195, ptr @.str.147, ptr @Anything, ptr @.str.148], [4 x ptr] [ptr @Anything, ptr @.str.149, ptr @Anything, ptr @.str.150], [4 x ptr] [ptr @Anything, ptr @.str.151, ptr @Anything, ptr @.str.111.182], [4 x ptr] [ptr @Anything, ptr @.str.152, ptr @Anything, ptr @.str.153], [4 x ptr] [ptr @Nothing, ptr @.str.154, ptr @.str.21.189, ptr @.str.47.192], [4 x ptr] [ptr @Anything, ptr @.str.155, ptr @Anything, ptr @.str.156], [4 x ptr] [ptr @.str.31.195, ptr @.str.157, ptr @Nothing, ptr @.str.158], [4 x ptr] [ptr @Anything, ptr @.str.157, ptr @.str.159, ptr @.str.160], [4 x ptr] [ptr @Anything, ptr @.str.157, ptr @Anything, ptr @.str.111.182], [4 x ptr] [ptr @Anything, ptr @.str.161, ptr @Anything, ptr @.str.30.221], [4 x ptr] [ptr @Anything, ptr @.str.162, ptr @Anything, ptr @.str.111.182], [4 x ptr] [ptr @Nothing, ptr @.str.163, ptr @Anything, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.165, ptr @Anything, ptr @.str.111.182], [4 x ptr] [ptr @Anything, ptr @.str.166, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr @.str.39.206, ptr @Anything, ptr @.str.160], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@F_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.167, ptr @Anything, ptr @.str.150], [4 x ptr] [ptr @Anything, ptr @.str.168, ptr @Anything, ptr @.str.169], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@G_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.170, ptr @Anything, ptr @.str.171], [4 x ptr] [ptr @Nothing, ptr @.str.172, ptr @.str.173, ptr @.str.174], [4 x ptr] [ptr @Anything, ptr @.str.175, ptr @.str.123, ptr @.str.176], [4 x ptr] [ptr @.str.159, ptr @.str.177, ptr @Anything, ptr @.str.178], [4 x ptr] [ptr @Anything, ptr @.str.179, ptr @Anything, ptr @.str.174], [4 x ptr] [ptr @.str.180.210, ptr @.str.172, ptr @Anything, ptr @.str.174], [4 x ptr] [ptr @Anything, ptr @.str.172, ptr @.str.61.208, ptr @.str.181], [4 x ptr] [ptr @Anything, ptr @.str.182, ptr @Anything, ptr @.str.183], [4 x ptr] [ptr @.str.8.184, ptr @.str.184, ptr @Anything, ptr @.str.3.193], [4 x ptr] [ptr @Anything, ptr @.str.172, ptr @Anything, ptr @.str.174], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@H_rules = internal global [7 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.185, ptr @Anything, ptr @.str.186], [4 x ptr] [ptr @Nothing, ptr @.str.187, ptr @Anything, ptr @.str.188], [4 x ptr] [ptr @Nothing, ptr @.str.189, ptr @Anything, ptr @.str.190], [4 x ptr] [ptr @Anything, ptr @.str.191, ptr @Anything, ptr @.str.192], [4 x ptr] [ptr @Anything, ptr @.str.193, ptr @.str.8.184, ptr @.str.194], [4 x ptr] [ptr @Anything, ptr @.str.193, ptr @Anything, ptr @.str.3.193], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@I_rules = internal global [32 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.195, ptr @Nothing, ptr @.str.196], [4 x ptr] [ptr @Nothing, ptr @.str.197, ptr @Nothing, ptr @.str.198], [4 x ptr] [ptr @Nothing, ptr @.str.198, ptr @Anything, ptr @.str.199], [4 x ptr] [ptr @Nothing, ptr @.str.200, ptr @Nothing, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.198, ptr @.str.94.190, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.202, ptr @Anything, ptr @.str.203], [4 x ptr] [ptr @.str.204, ptr @.str.205, ptr @Anything, ptr @.str.206], [4 x ptr] [ptr @Anything, ptr @.str.205, ptr @Nothing, ptr @.str.207], [4 x ptr] [ptr @Anything, ptr @.str.208, ptr @Anything, ptr @.str.209], [4 x ptr] [ptr @Anything, ptr @.str.210, ptr @.str.123, ptr @.str.211], [4 x ptr] [ptr @.str.26.183, ptr @.str.200, ptr @.str.89.194, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.89.194, ptr @.str.111.182], [4 x ptr] [ptr @Anything, ptr @.str.210, ptr @Anything, ptr @.str.111.182], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.41.185, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr @.str.212, ptr @.str.8.184, ptr @.str.213], [4 x ptr] [ptr @Anything, ptr @.str.214, ptr @.str.89.194, ptr @.str.215], [4 x ptr] [ptr @Anything, ptr @.str.216, ptr @.str.89.194, ptr @.str.215], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.217, ptr @.str.164], [4 x ptr] [ptr @.str.218, ptr @.str.200, ptr @.str.219, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.220, ptr @.str.164], [4 x ptr] [ptr @.str.221, ptr @.str.200, ptr @.str.219, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @.str.219, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.212, ptr @Anything, ptr @.str.47.192], [4 x ptr] [ptr @Anything, ptr @.str.222, ptr @Anything, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.223, ptr @Anything, ptr @.str.224], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @Nothing, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @.str.21.189, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @.str.89.194, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.226, ptr @Anything, ptr @.str.227], [4 x ptr] [ptr @.str.21.189, ptr @.str.200, ptr @.str.63.186, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.200, ptr @Anything, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@J_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.130, ptr @Anything, ptr @.str.181], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@K_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.228, ptr @.str.129, ptr @.str.3.193], [4 x ptr] [ptr @Anything, ptr @.str.228, ptr @Anything, ptr @.str.77.204], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@L_rules = internal global [6 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.229, ptr @.str.230, ptr @.str.231], [4 x ptr] [ptr @.str.127, ptr @.str.127, ptr @Anything, ptr @.str.3.193], [4 x ptr] [ptr @.str.221, ptr @.str.127, ptr @.str.89.194, ptr @.str.35.209], [4 x ptr] [ptr @Anything, ptr @.str.232, ptr @Anything, ptr @.str.233], [4 x ptr] [ptr @Anything, ptr @.str.127, ptr @Anything, ptr @.str.234], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@M_rules = internal global [4 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.235, ptr @Anything, ptr @.str.236], [4 x ptr] [ptr @.str.8.184, ptr @.str.237, ptr @.str.8.184, ptr @.str.238], [4 x ptr] [ptr @Anything, ptr @.str.239, ptr @Anything, ptr @.str.238], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@N_rules = internal global [10 x [4 x ptr]] [[4 x ptr] [ptr @.str.39.206, ptr @.str.240, ptr @.str.61.208, ptr @.str.241], [4 x ptr] [ptr @Anything, ptr @.str.240, ptr @.str.126, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.240, ptr @.str.8.184, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.243, ptr @.str.89.194, ptr @.str.244], [4 x ptr] [ptr @Anything, ptr @.str.240, ptr @Anything, ptr @.str.129], [4 x ptr] [ptr @Anything, ptr @.str.245, ptr @Anything, ptr @.str.246], [4 x ptr] [ptr @Nothing, ptr @.str.247, ptr @Nothing, ptr @.str.248], [4 x ptr] [ptr @.str.8.184, ptr @.str.240, ptr @Nothing, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.129, ptr @Anything, ptr @.str.249], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@O_rules = internal global [49 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.250, ptr @Nothing, ptr @.str.251], [4 x ptr] [ptr @Anything, ptr @.str.252, ptr @Anything, ptr @.str.253], [4 x ptr] [ptr @.str.31.195, ptr @.str.254, ptr @Nothing, ptr @.str.47.192], [4 x ptr] [ptr @.str.31.195, ptr @.str.255, ptr @Nothing, ptr @.str.256], [4 x ptr] [ptr @Anything, ptr @.str.254, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Nothing, ptr @.str.258, ptr @Anything, ptr @.str.259], [4 x ptr] [ptr @Anything, ptr @.str.260, ptr @Anything, ptr @.str.261], [4 x ptr] [ptr @Nothing, ptr @.str.262, ptr @Anything, ptr @.str.263], [4 x ptr] [ptr @Anything, ptr @.str.264, ptr @Anything, ptr @.str.265], [4 x ptr] [ptr @Anything, ptr @.str.18.197, ptr @.str.44.205, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.18.197, ptr @.str.266, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.18.197, ptr @.str.267, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.268, ptr @.str.94.190, ptr @.str.269], [4 x ptr] [ptr @Anything, ptr @.str.270, ptr @Anything, ptr @.str.271], [4 x ptr] [ptr @Anything, ptr @.str.272, ptr @Anything, ptr @.str.273], [4 x ptr] [ptr @Nothing, ptr @.str.274, ptr @Anything, ptr @.str.275], [4 x ptr] [ptr @.str.193, ptr @.str.274, ptr @.str.276, ptr @.str.275], [4 x ptr] [ptr @Anything, ptr @.str.277, ptr @Anything, ptr @.str.278], [4 x ptr] [ptr @Anything, ptr @.str.279, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Anything, ptr @.str.280, ptr @Anything, ptr @.str.281], [4 x ptr] [ptr @.str.21.189, ptr @.str.274, ptr @.str.282, ptr @.str.283], [4 x ptr] [ptr @Anything, ptr @.str.284, ptr @Anything, ptr @.str.285], [4 x ptr] [ptr @Anything, ptr @.str.274, ptr @Anything, ptr @.str.275], [4 x ptr] [ptr @Anything, ptr @.str.286, ptr @Anything, ptr @.str.287], [4 x ptr] [ptr @Anything, ptr @.str.288, ptr @Anything, ptr @.str.289], [4 x ptr] [ptr @Anything, ptr @.str.290, ptr @Anything, ptr @.str.287], [4 x ptr] [ptr @Anything, ptr @.str.291, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Anything, ptr @.str.292, ptr @Anything, ptr @.str.293], [4 x ptr] [ptr @Anything, ptr @.str.294, ptr @Anything, ptr @.str.281], [4 x ptr] [ptr @Anything, ptr @.str.295, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @Anything, ptr @.str.18.197, ptr @.str.39.206, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.18.197, ptr @Nothing, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.296, ptr @Anything, ptr @.str.261], [4 x ptr] [ptr @Nothing, ptr @.str.297, ptr @Anything, ptr @.str.298], [4 x ptr] [ptr @Nothing, ptr @.str.299, ptr @Anything, ptr @.str.300], [4 x ptr] [ptr @Anything, ptr @.str.301, ptr @Anything, ptr @.str.302], [4 x ptr] [ptr @.str.85.207, ptr @.str.18.197, ptr @.str.129, ptr @.str.303], [4 x ptr] [ptr @Anything, ptr @.str.18.197, ptr @.str.240, ptr @.str.18.197], [4 x ptr] [ptr @.str.304, ptr @.str.18.197, ptr @.str.129, ptr @.str.283], [4 x ptr] [ptr @.str.200, ptr @.str.305, ptr @Anything, ptr @.str.306], [4 x ptr] [ptr @.str.31.195, ptr @.str.305, ptr @Nothing, ptr @.str.306], [4 x ptr] [ptr @.str.307, ptr @.str.305, ptr @Anything, ptr @.str.306], [4 x ptr] [ptr @Anything, ptr @.str.18.197, ptr @.str.308, ptr @.str.261], [4 x ptr] [ptr @Anything, ptr @.str.250, ptr @.str.21.189, ptr @.str.309], [4 x ptr] [ptr @Anything, ptr @.str.310, ptr @Anything, ptr @.str.311], [4 x ptr] [ptr @Anything, ptr @.str.312, ptr @Nothing, ptr @.str.313], [4 x ptr] [ptr @.str.221, ptr @.str.314, ptr @Anything, ptr @.str.315], [4 x ptr] [ptr @Anything, ptr @.str.18.197, ptr @Anything, ptr @.str.303], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@P_rules = internal global [6 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.316, ptr @Anything, ptr @.str.169], [4 x ptr] [ptr @Anything, ptr @.str.317, ptr @Anything, ptr @.str.318], [4 x ptr] [ptr @Anything, ptr @.str.319, ptr @Anything, ptr @.str.320], [4 x ptr] [ptr @Anything, ptr @.str.321, ptr @Nothing, ptr @.str.322], [4 x ptr] [ptr @Anything, ptr @.str.323, ptr @Anything, ptr @.str.324], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Q_rules = internal global [4 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.325, ptr @Anything, ptr @.str.326], [4 x ptr] [ptr @Anything, ptr @.str.327, ptr @Anything, ptr @.str.328], [4 x ptr] [ptr @Anything, ptr @.str.329, ptr @Anything, ptr @.str.77.204], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@R_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.330, ptr @.str.63.186, ptr @.str.331], [4 x ptr] [ptr @Anything, ptr @.str.126, ptr @Anything, ptr @.str.332], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@S_rules = internal global [24 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.132, ptr @Anything, ptr @.str.83.188], [4 x ptr] [ptr @.str.8.184, ptr @.str.333, ptr @Anything, ptr @.str.334], [4 x ptr] [ptr @Anything, ptr @.str.335, ptr @Anything, ptr @.str.336], [4 x ptr] [ptr @.str.8.184, ptr @.str.337, ptr @.str.8.184, ptr @.str.338], [4 x ptr] [ptr @Anything, ptr @.str.337, ptr @.str.8.184, ptr @.str.339], [4 x ptr] [ptr @.str.8.184, ptr @.str.159, ptr @.str.8.184, ptr @.str.340], [4 x ptr] [ptr @.str.8.184, ptr @.str.341, ptr @.str.8.184, ptr @.str.342], [4 x ptr] [ptr @.str.8.184, ptr @.str.343, ptr @Nothing, ptr @.str.344], [4 x ptr] [ptr @.str.8.184, ptr @.str.83.188, ptr @.str.8.184, ptr @.str.6.181], [4 x ptr] [ptr @Anything, ptr @.str.345, ptr @Anything, ptr @.str.346], [4 x ptr] [ptr @.str.21.189, ptr @.str.333, ptr @Anything, ptr @.str.347], [4 x ptr] [ptr @Anything, ptr @.str.83.188, ptr @.str.83.188, ptr @.str.3.193], [4 x ptr] [ptr @.str.4.200, ptr @.str.83.188, ptr @Nothing, ptr @.str.6.181], [4 x ptr] [ptr @.str.7.201, ptr @.str.83.188, ptr @Nothing, ptr @.str.6.181], [4 x ptr] [ptr @.str.348, ptr @.str.83.188, ptr @Nothing, ptr @.str.6.181], [4 x ptr] [ptr @.str.349, ptr @.str.83.188, ptr @Nothing, ptr @.str.86.202], [4 x ptr] [ptr @.str.350, ptr @.str.83.188, ptr @Nothing, ptr @.str.86.202], [4 x ptr] [ptr @.str.351, ptr @.str.83.188, ptr @Nothing, ptr @.str.6.181], [4 x ptr] [ptr @Nothing, ptr @.str.352, ptr @Anything, ptr @.str.353], [4 x ptr] [ptr @Anything, ptr @.str.83.188, ptr @.str.354, ptr @.str.3.193], [4 x ptr] [ptr @.str.8.184, ptr @.str.355, ptr @Anything, ptr @.str.356], [4 x ptr] [ptr @.str.8.184, ptr @.str.357, ptr @.str.9.203, ptr @.str.358], [4 x ptr] [ptr @Anything, ptr @.str.83.188, ptr @Anything, ptr @.str.86.202], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@T_rules = internal global [27 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.359, ptr @Nothing, ptr @.str.360], [4 x ptr] [ptr @Anything, ptr @.str.361, ptr @Nothing, ptr @.str.362], [4 x ptr] [ptr @Anything, ptr @.str.363, ptr @Nothing, ptr @.str.364], [4 x ptr] [ptr @Nothing, ptr @.str.365, ptr @Nothing, ptr @.str.366], [4 x ptr] [ptr @Nothing, ptr @.str.367, ptr @Anything, ptr @.str.368], [4 x ptr] [ptr @Nothing, ptr @.str.369, ptr @Anything, ptr @.str.370], [4 x ptr] [ptr @Anything, ptr @.str.371, ptr @Anything, ptr @.str.372], [4 x ptr] [ptr @Anything, ptr @.str.373, ptr @Anything, ptr @.str.370], [4 x ptr] [ptr @Nothing, ptr @.str.374, ptr @Nothing, ptr @.str.375], [4 x ptr] [ptr @Nothing, ptr @.str.376, ptr @Nothing, ptr @.str.377], [4 x ptr] [ptr @Anything, ptr @.str.378, ptr @Nothing, ptr @.str.379], [4 x ptr] [ptr @Nothing, ptr @.str.380, ptr @Anything, ptr @.str.381], [4 x ptr] [ptr @Anything, ptr @.str.382, ptr @Anything, ptr @.str.383], [4 x ptr] [ptr @Anything, ptr @.str.384, ptr @Anything, ptr @.str.385], [4 x ptr] [ptr @Anything, ptr @.str.386, ptr @Nothing, ptr @.str.387], [4 x ptr] [ptr @Nothing, ptr @.str.388, ptr @Anything, ptr @.str.389], [4 x ptr] [ptr @Anything, ptr @.str.131, ptr @Anything, ptr @.str.123], [4 x ptr] [ptr @.str.31.195, ptr @.str.390, ptr @Nothing, ptr @.str.391], [4 x ptr] [ptr @.str.83.188, ptr @.str.392, ptr @.str.393, ptr @.str.79.196], [4 x ptr] [ptr @Anything, ptr @.str.392, ptr @.str.18.197, ptr @.str.83.188], [4 x ptr] [ptr @Anything, ptr @.str.392, ptr @.str.13.198, ptr @.str.83.188], [4 x ptr] [ptr @Anything, ptr @.str.394, ptr @Anything, ptr @.str.347], [4 x ptr] [ptr @Anything, ptr @.str.395, ptr @.str.8.184, ptr @.str.396], [4 x ptr] [ptr @Anything, ptr @.str.397, ptr @.str.13.198, ptr @.str.398], [4 x ptr] [ptr @Nothing, ptr @.str.399, ptr @Anything, ptr @.str.362], [4 x ptr] [ptr @Anything, ptr @.str.123, ptr @Anything, ptr @.str.97.199], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@U_rules = internal global [36 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.400, ptr @.str.200, ptr @.str.401], [4 x ptr] [ptr @Nothing, ptr @.str.400, ptr @Anything, ptr @.str.402], [4 x ptr] [ptr @Nothing, ptr @.str.403, ptr @Anything, ptr @.str.404], [4 x ptr] [ptr @.str.123, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.83.188, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.126, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.94.190, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.127, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.128, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.129, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.130, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.131, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.76.191, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.132, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @Anything, ptr @.str.405, ptr @.str.8.184, ptr @.str.407], [4 x ptr] [ptr @Anything, ptr @.str.405, ptr @Anything, ptr @.str.47.192], [4 x ptr] [ptr @Anything, ptr @.str.350, ptr @.str.408, ptr @.str.283], [4 x ptr] [ptr @Anything, ptr @.str.350, ptr @.str.409, ptr @.str.283], [4 x ptr] [ptr @Anything, ptr @.str.410, ptr @Anything, ptr @.str.164], [4 x ptr] [ptr @.str.411, ptr @.str.350, ptr @.str.8.184, ptr @.str.3.193], [4 x ptr] [ptr @.str.172, ptr @.str.350, ptr @.str.89.194, ptr @.str.3.193], [4 x ptr] [ptr @.str.172, ptr @.str.350, ptr @.str.8.184, ptr @.str.412], [4 x ptr] [ptr @.str.393, ptr @.str.350, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @.str.123, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.83.188, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.126, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.94.190, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.127, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.128, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.129, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.130, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.131, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.76.191, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @.str.132, ptr @.str.350, ptr @Anything, ptr @.str.125], [4 x ptr] [ptr @Anything, ptr @.str.350, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@V_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.413, ptr @Anything, ptr @.str.414], [4 x ptr] [ptr @Anything, ptr @.str.283, ptr @Anything, ptr @.str.415], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@W_rules = internal global [13 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.416, ptr @Anything, ptr @.str.417], [4 x ptr] [ptr @Anything, ptr @.str.24.187, ptr @.str.83.188, ptr @.str.418], [4 x ptr] [ptr @Anything, ptr @.str.24.187, ptr @.str.123, ptr @.str.418], [4 x ptr] [ptr @Anything, ptr @.str.419, ptr @Anything, ptr @.str.420], [4 x ptr] [ptr @Anything, ptr @.str.421, ptr @Anything, ptr @.str.422], [4 x ptr] [ptr @Anything, ptr @.str.423, ptr @Anything, ptr @.str.424], [4 x ptr] [ptr @Anything, ptr @.str.425, ptr @Anything, ptr @.str.426], [4 x ptr] [ptr @Anything, ptr @.str.427, ptr @Anything, ptr @.str.428], [4 x ptr] [ptr @Anything, ptr @.str.429, ptr @Anything, ptr @.str.430], [4 x ptr] [ptr @Anything, ptr @.str.431, ptr @.str.21.189, ptr @.str.417], [4 x ptr] [ptr @Anything, ptr @.str.432, ptr @Anything, ptr @.str.332], [4 x ptr] [ptr @Anything, ptr @.str.122, ptr @Anything, ptr @.str.412], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@X_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.433, ptr @Anything, ptr @.str.434], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Y_rules = internal global [12 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.435, ptr @Anything, ptr @.str.436], [4 x ptr] [ptr @Nothing, ptr @.str.437, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Nothing, ptr @.str.438, ptr @Anything, ptr @.str.439], [4 x ptr] [ptr @Nothing, ptr @.str.440, ptr @Anything, ptr @.str.441], [4 x ptr] [ptr @.str.221, ptr @.str.440, ptr @Nothing, ptr @.str.111.182], [4 x ptr] [ptr @.str.221, ptr @.str.440, ptr @.str.200, ptr @.str.111.182], [4 x ptr] [ptr @.str.26.183, ptr @.str.440, ptr @Nothing, ptr @.str.164], [4 x ptr] [ptr @.str.26.183, ptr @.str.440, ptr @.str.8.184, ptr @.str.164], [4 x ptr] [ptr @.str.26.183, ptr @.str.440, ptr @.str.41.185, ptr @.str.200], [4 x ptr] [ptr @.str.26.183, ptr @.str.440, ptr @.str.63.186, ptr @.str.164], [4 x ptr] [ptr @Anything, ptr @.str.440, ptr @Anything, ptr @.str.200], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Z_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.128, ptr @Anything, ptr @.str.6.181], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Anything = internal global [1 x i8] zeroinitializer, align 1
@.str.1.294 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2.295 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.3.193 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4.200 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5.296 = private unnamed_addr constant [3 x i8] c"'S\00", align 1
@.str.6.181 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.7.201 = private unnamed_addr constant [5 x i8] c"#:.E\00", align 1
@.str.8.184 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.9.203 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.297 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11.298 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.12.299 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@Silent = internal global [1 x i8] zeroinitializer, align 1
@.str.13.198 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@Nothing = internal global [2 x i8] c" \00", align 1
@.str.14.258 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.15.259 = private unnamed_addr constant [4 x i8] c"ARE\00", align 1
@.str.16.260 = private unnamed_addr constant [3 x i8] c"0r\00", align 1
@.str.17.261 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.18.197 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.19.262 = private unnamed_addr constant [3 x i8] c"@r\00", align 1
@.str.20.220 = private unnamed_addr constant [3 x i8] c"er\00", align 1
@.str.21.189 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.22.263 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.23.264 = private unnamed_addr constant [4 x i8] c"eIs\00", align 1
@.str.24.187 = private unnamed_addr constant [3 x i8] c"WA\00", align 1
@.str.25.265 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.26.183 = private unnamed_addr constant [3 x i8] c" :\00", align 1
@.str.27.266 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.28.267 = private unnamed_addr constant [4 x i8] c"eni\00", align 1
@.str.29.268 = private unnamed_addr constant [4 x i8] c"^+#\00", align 1
@.str.30.221 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.31.195 = private unnamed_addr constant [3 x i8] c"#:\00", align 1
@.str.32.269 = private unnamed_addr constant [5 x i8] c"ALLY\00", align 1
@.str.33.270 = private unnamed_addr constant [4 x i8] c"@li\00", align 1
@.str.34.271 = private unnamed_addr constant [3 x i8] c"AL\00", align 1
@.str.35.209 = private unnamed_addr constant [3 x i8] c"@l\00", align 1
@.str.36.272 = private unnamed_addr constant [6 x i8] c"AGAIN\00", align 1
@.str.37.273 = private unnamed_addr constant [5 x i8] c"@gen\00", align 1
@.str.38.274 = private unnamed_addr constant [3 x i8] c"AG\00", align 1
@.str.39.206 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.40.275 = private unnamed_addr constant [4 x i8] c"IdZ\00", align 1
@.str.41.185 = private unnamed_addr constant [5 x i8] c"^+:#\00", align 1
@.str.42.276 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.43.277 = private unnamed_addr constant [4 x i8] c"^+ \00", align 1
@.str.44.205 = private unnamed_addr constant [3 x i8] c"^%\00", align 1
@.str.45.278 = private unnamed_addr constant [4 x i8] c"ARR\00", align 1
@.str.46.279 = private unnamed_addr constant [3 x i8] c"&r\00", align 1
@.str.47.192 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.48.280 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.49.281 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.50.282 = private unnamed_addr constant [3 x i8] c"AY\00", align 1
@.str.51.283 = private unnamed_addr constant [3 x i8] c"AU\00", align 1
@.str.52.284 = private unnamed_addr constant [4 x i8] c"ALS\00", align 1
@.str.53.285 = private unnamed_addr constant [4 x i8] c"@lz\00", align 1
@.str.54.286 = private unnamed_addr constant [4 x i8] c"ALK\00", align 1
@.str.55.287 = private unnamed_addr constant [3 x i8] c"Ok\00", align 1
@.str.56.288 = private unnamed_addr constant [3 x i8] c"Ol\00", align 1
@.str.57.289 = private unnamed_addr constant [5 x i8] c"ABLE\00", align 1
@.str.58.290 = private unnamed_addr constant [6 x i8] c"eIb@l\00", align 1
@.str.59.291 = private unnamed_addr constant [5 x i8] c"@b@l\00", align 1
@.str.60.292 = private unnamed_addr constant [4 x i8] c"ANG\00", align 1
@.str.61.208 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.62.293 = private unnamed_addr constant [6 x i8] c"eIndZ\00", align 1
@.str.63.186 = private unnamed_addr constant [3 x i8] c"^#\00", align 1
@.str.64.246 = private unnamed_addr constant [3 x i8] c"BE\00", align 1
@.str.65.247 = private unnamed_addr constant [3 x i8] c"bI\00", align 1
@.str.66.248 = private unnamed_addr constant [6 x i8] c"BEING\00", align 1
@.str.67.249 = private unnamed_addr constant [5 x i8] c"biIN\00", align 1
@.str.68.250 = private unnamed_addr constant [5 x i8] c"BOTH\00", align 1
@.str.69.251 = private unnamed_addr constant [5 x i8] c"b@UT\00", align 1
@.str.70.252 = private unnamed_addr constant [4 x i8] c"BUS\00", align 1
@.str.71.253 = private unnamed_addr constant [4 x i8] c"bIz\00", align 1
@.str.72.254 = private unnamed_addr constant [5 x i8] c"BUIL\00", align 1
@.str.73.255 = private unnamed_addr constant [4 x i8] c"bIl\00", align 1
@.str.74.256 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.75.257 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.76.191 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.77.204 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.78.238 = private unnamed_addr constant [3 x i8] c"^E\00", align 1
@.str.79.196 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.80.239 = private unnamed_addr constant [3 x i8] c" S\00", align 1
@.str.81.240 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.82.241 = private unnamed_addr constant [4 x i8] c"saI\00", align 1
@.str.83.188 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.84.242 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.85.207 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.86.202 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.87.243 = private unnamed_addr constant [3 x i8] c"CK\00", align 1
@.str.88.244 = private unnamed_addr constant [4 x i8] c"COM\00", align 1
@.str.89.194 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.90.245 = private unnamed_addr constant [4 x i8] c"kVm\00", align 1
@.str.91.222 = private unnamed_addr constant [4 x i8] c"DED\00", align 1
@.str.92.223 = private unnamed_addr constant [4 x i8] c"dId\00", align 1
@.str.93.224 = private unnamed_addr constant [3 x i8] c".E\00", align 1
@.str.94.190 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.95.213 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.96.225 = private unnamed_addr constant [5 x i8] c"#:^E\00", align 1
@.str.97.199 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.98.226 = private unnamed_addr constant [3 x i8] c"DE\00", align 1
@.str.99.227 = private unnamed_addr constant [3 x i8] c"dI\00", align 1
@.str.100.228 = private unnamed_addr constant [3 x i8] c"DO\00", align 1
@.str.101.229 = private unnamed_addr constant [3 x i8] c"du\00", align 1
@.str.102.230 = private unnamed_addr constant [5 x i8] c"DOES\00", align 1
@.str.103.231 = private unnamed_addr constant [4 x i8] c"dVz\00", align 1
@.str.104.232 = private unnamed_addr constant [6 x i8] c"DOING\00", align 1
@.str.105.233 = private unnamed_addr constant [5 x i8] c"duIN\00", align 1
@.str.106.234 = private unnamed_addr constant [4 x i8] c"DOW\00", align 1
@.str.107.235 = private unnamed_addr constant [4 x i8] c"daU\00", align 1
@.str.108.236 = private unnamed_addr constant [3 x i8] c"DU\00", align 1
@.str.109.237 = private unnamed_addr constant [4 x i8] c"dZu\00", align 1
@.str.110.211 = private unnamed_addr constant [4 x i8] c"':^\00", align 1
@.str.111.182 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.112.212 = private unnamed_addr constant [3 x i8] c"ED\00", align 1
@.str.113.214 = private unnamed_addr constant [3 x i8] c"D \00", align 1
@.str.114.215 = private unnamed_addr constant [3 x i8] c"EV\00", align 1
@.str.115.216 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.116.217 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str.117.218 = private unnamed_addr constant [4 x i8] c"ERI\00", align 1
@.str.118.219 = private unnamed_addr constant [4 x i8] c"iri\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"erI\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"EVEN\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"iven\00", align 1
@.str.122 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.123 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"EW\00", align 1
@.str.125 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.126 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.127 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.128 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.129 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.130 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.131 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.132 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.133 = private unnamed_addr constant [3 x i8] c"ju\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"#:S\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"ES\00", align 1
@.str.136 = private unnamed_addr constant [3 x i8] c"Iz\00", align 1
@.str.137 = private unnamed_addr constant [4 x i8] c"#:C\00", align 1
@.str.138 = private unnamed_addr constant [4 x i8] c"#:G\00", align 1
@.str.139 = private unnamed_addr constant [4 x i8] c"#:Z\00", align 1
@.str.140 = private unnamed_addr constant [4 x i8] c"#:X\00", align 1
@.str.141 = private unnamed_addr constant [4 x i8] c"#:J\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"#:CH\00", align 1
@.str.143 = private unnamed_addr constant [5 x i8] c"#:SH\00", align 1
@.str.144 = private unnamed_addr constant [3 x i8] c"S \00", align 1
@.str.145 = private unnamed_addr constant [4 x i8] c"ELY\00", align 1
@.str.146 = private unnamed_addr constant [3 x i8] c"li\00", align 1
@.str.147 = private unnamed_addr constant [6 x i8] c"EMENT\00", align 1
@.str.148 = private unnamed_addr constant [5 x i8] c"ment\00", align 1
@.str.149 = private unnamed_addr constant [5 x i8] c"EFUL\00", align 1
@.str.150 = private unnamed_addr constant [4 x i8] c"fUl\00", align 1
@.str.151 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.152 = private unnamed_addr constant [5 x i8] c"EARN\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"3n\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"EAR\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"EAD\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"ed\00", align 1
@.str.157 = private unnamed_addr constant [3 x i8] c"EA\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"i@\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"SU\00", align 1
@.str.160 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"EIGH\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"EI\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"EYE\00", align 1
@.str.164 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.165 = private unnamed_addr constant [3 x i8] c"EY\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"EU\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"FUL\00", align 1
@.str.168 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.169 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"GIV\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"gIv\00", align 1
@.str.172 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"I^\00", align 1
@.str.174 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"GGES\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"gdZes\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"GG\00", align 1
@.str.180.210 = private unnamed_addr constant [4 x i8] c" B#\00", align 1
@.str.181 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.182 = private unnamed_addr constant [6 x i8] c"GREAT\00", align 1
@.str.183 = private unnamed_addr constant [6 x i8] c"greIt\00", align 1
@.str.184 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@.str.185 = private unnamed_addr constant [4 x i8] c"HAV\00", align 1
@.str.186 = private unnamed_addr constant [4 x i8] c"h&v\00", align 1
@.str.187 = private unnamed_addr constant [5 x i8] c"HERE\00", align 1
@.str.188 = private unnamed_addr constant [4 x i8] c"hir\00", align 1
@.str.189 = private unnamed_addr constant [5 x i8] c"HOUR\00", align 1
@.str.190 = private unnamed_addr constant [4 x i8] c"aU3\00", align 1
@.str.191 = private unnamed_addr constant [4 x i8] c"HOW\00", align 1
@.str.192 = private unnamed_addr constant [4 x i8] c"haU\00", align 1
@.str.193 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.194 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.195 = private unnamed_addr constant [5 x i8] c"IAIN\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"I@n\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"ING\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.200 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"aIn\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"IER\00", align 1
@.str.203 = private unnamed_addr constant [3 x i8] c"i3\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"#:R\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"IED\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"aId\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"IEN\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"ien\00", align 1
@.str.210 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.211 = private unnamed_addr constant [4 x i8] c"aIe\00", align 1
@.str.212 = private unnamed_addr constant [3 x i8] c"IR\00", align 1
@.str.213 = private unnamed_addr constant [4 x i8] c"aIr\00", align 1
@.str.214 = private unnamed_addr constant [3 x i8] c"IZ\00", align 1
@.str.215 = private unnamed_addr constant [4 x i8] c"aIz\00", align 1
@.str.216 = private unnamed_addr constant [3 x i8] c"IS\00", align 1
@.str.217 = private unnamed_addr constant [3 x i8] c"D%\00", align 1
@.str.218 = private unnamed_addr constant [3 x i8] c"+^\00", align 1
@.str.219 = private unnamed_addr constant [3 x i8] c"^+\00", align 1
@.str.220 = private unnamed_addr constant [3 x i8] c"T%\00", align 1
@.str.221 = private unnamed_addr constant [4 x i8] c"#:^\00", align 1
@.str.222 = private unnamed_addr constant [4 x i8] c"IGH\00", align 1
@.str.223 = private unnamed_addr constant [4 x i8] c"ILD\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"aIld\00", align 1
@.str.225 = private unnamed_addr constant [4 x i8] c"IGN\00", align 1
@.str.226 = private unnamed_addr constant [5 x i8] c"IQUE\00", align 1
@.str.227 = private unnamed_addr constant [3 x i8] c"ik\00", align 1
@.str.228 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.229 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"l@U\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"LEAD\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"lid\00", align 1
@.str.234 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"MOV\00", align 1
@.str.236 = private unnamed_addr constant [4 x i8] c"muv\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"MM\00", align 1
@.str.238 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.239 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.240 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.241 = private unnamed_addr constant [4 x i8] c"ndZ\00", align 1
@.str.242 = private unnamed_addr constant [3 x i8] c"Ng\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"NGL\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"Ng@l\00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"NK\00", align 1
@.str.246 = private unnamed_addr constant [3 x i8] c"Nk\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"NOW\00", align 1
@.str.248 = private unnamed_addr constant [4 x i8] c"naU\00", align 1
@.str.249 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"OF\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"@v\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"OROUGH\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"3@U\00", align 1
@.str.254 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"ORS\00", align 1
@.str.256 = private unnamed_addr constant [3 x i8] c"3z\00", align 1
@.str.257 = private unnamed_addr constant [3 x i8] c"Or\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"ONE\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"wVn\00", align 1
@.str.260 = private unnamed_addr constant [3 x i8] c"OW\00", align 1
@.str.261 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"OVER\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"@Uv3\00", align 1
@.str.264 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"Vv\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"^EN\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"^I#\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"OL\00", align 1
@.str.269 = private unnamed_addr constant [4 x i8] c"@Ul\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"OUGHT\00", align 1
@.str.271 = private unnamed_addr constant [3 x i8] c"Ot\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"OUGH\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"Vf\00", align 1
@.str.274 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.275 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.276 = private unnamed_addr constant [3 x i8] c"S#\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"OUS\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"OUR\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"OULD\00", align 1
@.str.281 = private unnamed_addr constant [3 x i8] c"Ud\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"^L\00", align 1
@.str.283 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"OUP\00", align 1
@.str.285 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.286 = private unnamed_addr constant [3 x i8] c"OY\00", align 1
@.str.287 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"OING\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"@UIN\00", align 1
@.str.290 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.291 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"OOK\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"Uk\00", align 1
@.str.294 = private unnamed_addr constant [4 x i8] c"OOD\00", align 1
@.str.295 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.296 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"ONLY\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"@Unli\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"ONCE\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"wVns\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"ON'T\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"@Unt\00", align 1
@.str.303 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.304 = private unnamed_addr constant [4 x i8] c" :^\00", align 1
@.str.305 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@.str.306 = private unnamed_addr constant [3 x i8] c"@n\00", align 1
@.str.307 = private unnamed_addr constant [3 x i8] c"#^\00", align 1
@.str.308 = private unnamed_addr constant [4 x i8] c"ST \00", align 1
@.str.309 = private unnamed_addr constant [3 x i8] c"Of\00", align 1
@.str.310 = private unnamed_addr constant [6 x i8] c"OTHER\00", align 1
@.str.311 = private unnamed_addr constant [4 x i8] c"VD3\00", align 1
@.str.312 = private unnamed_addr constant [4 x i8] c"OSS\00", align 1
@.str.313 = private unnamed_addr constant [3 x i8] c"Os\00", align 1
@.str.314 = private unnamed_addr constant [3 x i8] c"OM\00", align 1
@.str.315 = private unnamed_addr constant [3 x i8] c"Vm\00", align 1
@.str.316 = private unnamed_addr constant [3 x i8] c"PH\00", align 1
@.str.317 = private unnamed_addr constant [5 x i8] c"PEOP\00", align 1
@.str.318 = private unnamed_addr constant [4 x i8] c"pip\00", align 1
@.str.319 = private unnamed_addr constant [4 x i8] c"POW\00", align 1
@.str.320 = private unnamed_addr constant [4 x i8] c"paU\00", align 1
@.str.321 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.322 = private unnamed_addr constant [4 x i8] c"pUt\00", align 1
@.str.323 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.324 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.325 = private unnamed_addr constant [5 x i8] c"QUAR\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"kwOr\00", align 1
@.str.327 = private unnamed_addr constant [3 x i8] c"QU\00", align 1
@.str.328 = private unnamed_addr constant [3 x i8] c"kw\00", align 1
@.str.329 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.330 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.331 = private unnamed_addr constant [3 x i8] c"ri\00", align 1
@.str.332 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.333 = private unnamed_addr constant [5 x i8] c"SION\00", align 1
@.str.334 = private unnamed_addr constant [4 x i8] c"Z@n\00", align 1
@.str.335 = private unnamed_addr constant [5 x i8] c"SOME\00", align 1
@.str.336 = private unnamed_addr constant [4 x i8] c"sVm\00", align 1
@.str.337 = private unnamed_addr constant [4 x i8] c"SUR\00", align 1
@.str.338 = private unnamed_addr constant [3 x i8] c"Z3\00", align 1
@.str.339 = private unnamed_addr constant [3 x i8] c"S3\00", align 1
@.str.340 = private unnamed_addr constant [3 x i8] c"Zu\00", align 1
@.str.341 = private unnamed_addr constant [4 x i8] c"SSU\00", align 1
@.str.342 = private unnamed_addr constant [3 x i8] c"Su\00", align 1
@.str.343 = private unnamed_addr constant [4 x i8] c"SED\00", align 1
@.str.344 = private unnamed_addr constant [3 x i8] c"zd\00", align 1
@.str.345 = private unnamed_addr constant [5 x i8] c"SAID\00", align 1
@.str.346 = private unnamed_addr constant [4 x i8] c"sed\00", align 1
@.str.347 = private unnamed_addr constant [4 x i8] c"S@n\00", align 1
@.str.348 = private unnamed_addr constant [6 x i8] c"#:^##\00", align 1
@.str.349 = private unnamed_addr constant [5 x i8] c"#:^#\00", align 1
@.str.350 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.351 = private unnamed_addr constant [4 x i8] c" :#\00", align 1
@.str.352 = private unnamed_addr constant [4 x i8] c"SCH\00", align 1
@.str.353 = private unnamed_addr constant [3 x i8] c"sk\00", align 1
@.str.354 = private unnamed_addr constant [3 x i8] c"C+\00", align 1
@.str.355 = private unnamed_addr constant [3 x i8] c"SM\00", align 1
@.str.356 = private unnamed_addr constant [3 x i8] c"zm\00", align 1
@.str.357 = private unnamed_addr constant [3 x i8] c"SN\00", align 1
@.str.358 = private unnamed_addr constant [4 x i8] c"z@n\00", align 1
@.str.359 = private unnamed_addr constant [4 x i8] c"THE\00", align 1
@.str.360 = private unnamed_addr constant [3 x i8] c"D@\00", align 1
@.str.361 = private unnamed_addr constant [3 x i8] c"TO\00", align 1
@.str.362 = private unnamed_addr constant [3 x i8] c"tu\00", align 1
@.str.363 = private unnamed_addr constant [5 x i8] c"THAT\00", align 1
@.str.364 = private unnamed_addr constant [4 x i8] c"D&t\00", align 1
@.str.365 = private unnamed_addr constant [5 x i8] c"THIS\00", align 1
@.str.366 = private unnamed_addr constant [4 x i8] c"DIs\00", align 1
@.str.367 = private unnamed_addr constant [5 x i8] c"THEY\00", align 1
@.str.368 = private unnamed_addr constant [4 x i8] c"DeI\00", align 1
@.str.369 = private unnamed_addr constant [6 x i8] c"THERE\00", align 1
@.str.370 = private unnamed_addr constant [4 x i8] c"Der\00", align 1
@.str.371 = private unnamed_addr constant [5 x i8] c"THER\00", align 1
@.str.372 = private unnamed_addr constant [3 x i8] c"D3\00", align 1
@.str.373 = private unnamed_addr constant [6 x i8] c"THEIR\00", align 1
@.str.374 = private unnamed_addr constant [5 x i8] c"THAN\00", align 1
@.str.375 = private unnamed_addr constant [4 x i8] c"D&n\00", align 1
@.str.376 = private unnamed_addr constant [5 x i8] c"THEM\00", align 1
@.str.377 = private unnamed_addr constant [4 x i8] c"Dem\00", align 1
@.str.378 = private unnamed_addr constant [6 x i8] c"THESE\00", align 1
@.str.379 = private unnamed_addr constant [4 x i8] c"Diz\00", align 1
@.str.380 = private unnamed_addr constant [5 x i8] c"THEN\00", align 1
@.str.381 = private unnamed_addr constant [4 x i8] c"Den\00", align 1
@.str.382 = private unnamed_addr constant [8 x i8] c"THROUGH\00", align 1
@.str.383 = private unnamed_addr constant [4 x i8] c"Tru\00", align 1
@.str.384 = private unnamed_addr constant [6 x i8] c"THOSE\00", align 1
@.str.385 = private unnamed_addr constant [5 x i8] c"D@Uz\00", align 1
@.str.386 = private unnamed_addr constant [7 x i8] c"THOUGH\00", align 1
@.str.387 = private unnamed_addr constant [4 x i8] c"D@U\00", align 1
@.str.388 = private unnamed_addr constant [5 x i8] c"THUS\00", align 1
@.str.389 = private unnamed_addr constant [4 x i8] c"DVs\00", align 1
@.str.390 = private unnamed_addr constant [4 x i8] c"TED\00", align 1
@.str.391 = private unnamed_addr constant [4 x i8] c"tId\00", align 1
@.str.392 = private unnamed_addr constant [3 x i8] c"TI\00", align 1
@.str.393 = private unnamed_addr constant [3 x i8] c"#N\00", align 1
@.str.394 = private unnamed_addr constant [5 x i8] c"TIEN\00", align 1
@.str.395 = private unnamed_addr constant [4 x i8] c"TUR\00", align 1
@.str.396 = private unnamed_addr constant [4 x i8] c"tS3\00", align 1
@.str.397 = private unnamed_addr constant [3 x i8] c"TU\00", align 1
@.str.398 = private unnamed_addr constant [4 x i8] c"tSu\00", align 1
@.str.399 = private unnamed_addr constant [4 x i8] c"TWO\00", align 1
@.str.400 = private unnamed_addr constant [3 x i8] c"UN\00", align 1
@.str.401 = private unnamed_addr constant [4 x i8] c"jun\00", align 1
@.str.402 = private unnamed_addr constant [3 x i8] c"Vn\00", align 1
@.str.403 = private unnamed_addr constant [5 x i8] c"UPON\00", align 1
@.str.404 = private unnamed_addr constant [5 x i8] c"@pOn\00", align 1
@.str.405 = private unnamed_addr constant [3 x i8] c"UR\00", align 1
@.str.406 = private unnamed_addr constant [3 x i8] c"Ur\00", align 1
@.str.407 = private unnamed_addr constant [4 x i8] c"jUr\00", align 1
@.str.408 = private unnamed_addr constant [3 x i8] c"^ \00", align 1
@.str.409 = private unnamed_addr constant [3 x i8] c"^^\00", align 1
@.str.410 = private unnamed_addr constant [3 x i8] c"UY\00", align 1
@.str.411 = private unnamed_addr constant [3 x i8] c" G\00", align 1
@.str.412 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.413 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.414 = private unnamed_addr constant [4 x i8] c"vju\00", align 1
@.str.415 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.416 = private unnamed_addr constant [5 x i8] c"WERE\00", align 1
@.str.417 = private unnamed_addr constant [3 x i8] c"w3\00", align 1
@.str.418 = private unnamed_addr constant [3 x i8] c"w0\00", align 1
@.str.419 = private unnamed_addr constant [6 x i8] c"WHERE\00", align 1
@.str.420 = private unnamed_addr constant [5 x i8] c"hwer\00", align 1
@.str.421 = private unnamed_addr constant [5 x i8] c"WHAT\00", align 1
@.str.422 = private unnamed_addr constant [5 x i8] c"hw0t\00", align 1
@.str.423 = private unnamed_addr constant [5 x i8] c"WHOL\00", align 1
@.str.424 = private unnamed_addr constant [5 x i8] c"h@Ul\00", align 1
@.str.425 = private unnamed_addr constant [4 x i8] c"WHO\00", align 1
@.str.426 = private unnamed_addr constant [3 x i8] c"hu\00", align 1
@.str.427 = private unnamed_addr constant [3 x i8] c"WH\00", align 1
@.str.428 = private unnamed_addr constant [3 x i8] c"hw\00", align 1
@.str.429 = private unnamed_addr constant [4 x i8] c"WAR\00", align 1
@.str.430 = private unnamed_addr constant [4 x i8] c"wOr\00", align 1
@.str.431 = private unnamed_addr constant [4 x i8] c"WOR\00", align 1
@.str.432 = private unnamed_addr constant [3 x i8] c"WR\00", align 1
@.str.433 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.434 = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@.str.435 = private unnamed_addr constant [6 x i8] c"YOUNG\00", align 1
@.str.436 = private unnamed_addr constant [4 x i8] c"jVN\00", align 1
@.str.437 = private unnamed_addr constant [4 x i8] c"YOU\00", align 1
@.str.438 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.439 = private unnamed_addr constant [4 x i8] c"jes\00", align 1
@.str.440 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.441 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.442 = private unnamed_addr constant [63 x i8] c"$Id: getarg.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@getarg_id = dso_local local_unnamed_addr global ptr @.str.442, align 8
@.str.1.447 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.2.448 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.3.449 = private unnamed_addr constant [12 x i8] c" -%s <%s> [\00", align 1
@.str.4.450 = private unnamed_addr constant [6 x i8] c"]\09%s\0A\00", align 1
@.str.5.452 = private unnamed_addr constant [23 x i8] c" -%s <string> [%s]\09%s\0A\00", align 1
@.str.6.451 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7.455 = private unnamed_addr constant [18 x i8] c" [+|-]%s [%s]\09%s\0A\00", align 1
@.str.8.453 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9.454 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10.456 = private unnamed_addr constant [27 x i8] c"%s : %s invalid after -%s\0A\00", align 1
@.str.11.457 = private unnamed_addr constant [28 x i8] c"%s : no argument after -%s\0A\00", align 1
@.str.12.458 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.459 = private unnamed_addr constant [63 x i8] c"$Id: holmes.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@holmes_id = dso_local local_unnamed_addr global ptr @.str.459, align 8
@frac = dso_local global double 1.000000e+00, align 8
@def_pars = dso_local global %struct.klatt_frame_t { i64 1330, i64 60, i64 500, i64 60, i64 1500, i64 90, i64 2800, i64 150, i64 3250, i64 200, i64 3700, i64 200, i64 4990, i64 500, i64 270, i64 100, i64 270, i64 100, i64 0, i64 30, i64 0, i64 10, i64 0, i64 0, i64 0, i64 80, i64 0, i64 200, i64 0, i64 350, i64 0, i64 500, i64 0, i64 600, i64 0, i64 800, i64 0, i64 0, i64 0, i64 62 }, align 8
@par_file = dso_local global ptr null, align 8
@Ep_name = dso_local local_unnamed_addr global [19 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102.179, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], align 16
@.str.8.467 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@jsru_file = dso_local global ptr null, align 8
@.str.11.470 = private unnamed_addr constant [7 x i8] c"Holmes\00", align 1
@.str.12.471 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.13.472 = private unnamed_addr constant [24 x i8] c"Parameter file for plot\00", align 1
@.str.14.473 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.15.474 = private unnamed_addr constant [32 x i8] c"Data for alternate synth (JSRU)\00", align 1
@.str.16.475 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17.476 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.18.477 = private unnamed_addr constant [24 x i8] c"Speed (1.0 is 'normal')\00", align 1
@.str.19.478 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.20.479 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.21.480 = private unnamed_addr constant [28 x i8] c"Parameter filter 'fraction'\00", align 1
@.str.22.481 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@_u2l = dso_local local_unnamed_addr global [256 x i16] [i16 -32256, i16 -31228, i16 -30200, i16 -29172, i16 -28143, i16 -27115, i16 -26087, i16 -25059, i16 -24031, i16 -23002, i16 -21974, i16 -20946, i16 -19918, i16 -18889, i16 -17861, i16 -16833, i16 -16062, i16 -15548, i16 -15033, i16 -14519, i16 -14005, i16 -13491, i16 -12977, i16 -12463, i16 -11949, i16 -11435, i16 -10920, i16 -10406, i16 -9892, i16 -9378, i16 -8864, i16 -8350, i16 -7964, i16 -7707, i16 -7450, i16 -7193, i16 -6936, i16 -6679, i16 -6422, i16 -6165, i16 -5908, i16 -5651, i16 -5394, i16 -5137, i16 -4880, i16 -4623, i16 -4365, i16 -4108, i16 -3916, i16 -3787, i16 -3659, i16 -3530, i16 -3402, i16 -3273, i16 -3144, i16 -3016, i16 -2887, i16 -2759, i16 -2630, i16 -2502, i16 -2373, i16 -2245, i16 -2116, i16 -1988, i16 -1891, i16 -1827, i16 -1763, i16 -1698, i16 -1634, i16 -1570, i16 -1506, i16 -1441, i16 -1377, i16 -1313, i16 -1249, i16 -1184, i16 -1120, i16 -1056, i16 -992, i16 -927, i16 -879, i16 -847, i16 -815, i16 -783, i16 -751, i16 -718, i16 -686, i16 -654, i16 -622, i16 -590, i16 -558, i16 -526, i16 -494, i16 -461, i16 -429, i16 -397, i16 -373, i16 -357, i16 -341, i16 -325, i16 -309, i16 -293, i16 -277, i16 -261, i16 -245, i16 -228, i16 -212, i16 -196, i16 -180, i16 -164, i16 -148, i16 -132, i16 -120, i16 -112, i16 -104, i16 -96, i16 -88, i16 -80, i16 -72, i16 -64, i16 -56, i16 -48, i16 -40, i16 -32, i16 -24, i16 -16, i16 -8, i16 0, i16 32256, i16 31228, i16 30200, i16 29172, i16 28143, i16 27115, i16 26087, i16 25059, i16 24031, i16 23002, i16 21974, i16 20946, i16 19918, i16 18889, i16 17861, i16 16833, i16 16062, i16 15548, i16 15033, i16 14519, i16 14005, i16 13491, i16 12977, i16 12463, i16 11949, i16 11435, i16 10920, i16 10406, i16 9892, i16 9378, i16 8864, i16 8350, i16 7964, i16 7707, i16 7450, i16 7193, i16 6936, i16 6679, i16 6422, i16 6165, i16 5908, i16 5651, i16 5394, i16 5137, i16 4880, i16 4623, i16 4365, i16 4108, i16 3916, i16 3787, i16 3659, i16 3530, i16 3402, i16 3273, i16 3144, i16 3016, i16 2887, i16 2759, i16 2630, i16 2502, i16 2373, i16 2245, i16 2116, i16 1988, i16 1891, i16 1827, i16 1763, i16 1698, i16 1634, i16 1570, i16 1506, i16 1441, i16 1377, i16 1313, i16 1249, i16 1184, i16 1120, i16 1056, i16 992, i16 927, i16 879, i16 847, i16 815, i16 783, i16 751, i16 718, i16 686, i16 654, i16 622, i16 590, i16 558, i16 526, i16 494, i16 461, i16 429, i16 397, i16 373, i16 357, i16 341, i16 325, i16 309, i16 293, i16 277, i16 261, i16 245, i16 228, i16 212, i16 196, i16 180, i16 164, i16 148, i16 132, i16 120, i16 112, i16 104, i16 96, i16 88, i16 80, i16 72, i16 64, i16 56, i16 48, i16 40, i16 32, i16 24, i16 16, i16 8, i16 0], align 16
@_l2u_ = internal global [8192 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F                                 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22################################$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'''''''''''''''''''''''''''''''''(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))********************************++++++++++++++++++++++++++++++++,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--------------------------------................................/////////////////////////////////0000000000000000111111111111111122222222222222223333333333333333444444444444444455555555555555556666666666666666777777777777777788888888888888889999999999999999::::::::::::::::;;;;;;;;;;;;;;;;<<<<<<<<<<<<<<<<=================>>>>>>>>>>>>>>>>????????????????@@@@@@@@AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFFGGGGGGGGHHHHHHHHIIIIIIIIJJJJJJJJKKKKKKKKLLLLLLLLMMMMMMMMNNNNNNNNOOOOOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZ[[[[\\\\\\\\]]]]^^^^____``aabbccddeeffgghhhiijjkkllmmnnoopqrstuvwxyz{|}~\FF\FE\FD\FC\FB\FA\F9\F8\F7\F6\F5\F4\F3\F2\F1\F0\EF\EF\EE\EE\ED\ED\EC\EC\EB\EB\EA\EA\E9\E9\E8\E8\E7\E7\E6\E6\E5\E5\E4\E4\E3\E3\E2\E2\E1\E1\E0\E0\DF\DF\DF\DF\DE\DE\DE\DE\DD\DD\DD\DD\DC\DC\DC\DC\DB\DB\DB\DB\DA\DA\DA\DA\D9\D9\D9\D9\D8\D8\D8\D8\D7\D7\D7\D7\D6\D6\D6\D6\D5\D5\D5\D5\D4\D4\D4\D4\D3\D3\D3\D3\D2\D2\D2\D2\D1\D1\D1\D1\D0\D0\D0\D0\CF\CF\CF\CF\CF\CF\CF\CF\CE\CE\CE\CE\CE\CE\CE\CE\CD\CD\CD\CD\CD\CD\CD\CD\CC\CC\CC\CC\CC\CC\CC\CC\CB\CB\CB\CB\CB\CB\CB\CB\CA\CA\CA\CA\CA\CA\CA\CA\C9\C9\C9\C9\C9\C9\C9\C9\C8\C8\C8\C8\C8\C8\C8\C8\C7\C7\C7\C7\C7\C7\C7\C7\C6\C6\C6\C6\C6\C6\C6\C6\C5\C5\C5\C5\C5\C5\C5\C5\C4\C4\C4\C4\C4\C4\C4\C4\C3\C3\C3\C3\C3\C3\C3\C3\C3\C2\C2\C2\C2\C2\C2\C2\C2\C1\C1\C1\C1\C1\C1\C1\C1\C0\C0\C0\C0\C0\C0\C0\C0\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", align 16
@_l2u = dso_local local_unnamed_addr global ptr getelementptr inbounds nuw (i8, ptr @_l2u_, i64 4096), align 8
@samp_rate = dso_local global i64 8000, align 8
@.str.486 = private unnamed_addr constant [11 x i8] c"/dev/sbdsp\00", align 1
@dev_file = dso_local local_unnamed_addr global ptr @.str.486, align 8
@.str.1.487 = private unnamed_addr constant [6 x i8] c"hplay\00", align 1
@prog = dso_local local_unnamed_addr global ptr @.str.1.487, align 8
@.str.2.488 = private unnamed_addr constant [12 x i8] c"linux Audio\00", align 1
@.str.3.489 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4.490 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5.491 = private unnamed_addr constant [12 x i8] c"Sample rate\00", align 1
@.str.6.492 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7.493 = private unnamed_addr constant [13 x i8] c"Audio enable\00", align 1
@dev_fd = internal unnamed_addr global i32 -1, align 4
@.str.8.494 = private unnamed_addr constant [24 x i8] c"Actual sound rate: %ld\0A\00", align 1
@.str.9.496 = private unnamed_addr constant [42 x i8] c"Could not allocate memory for conversion\0A\00", align 1
@.str.10.497 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.498 = private unnamed_addr constant [63 x i8] c"$Id: nsynth.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@nsynth_id = dso_local local_unnamed_addr global ptr @.str.498, align 8
@time_count = dso_local local_unnamed_addr global i32 0, align 4
@.str.1.499 = private unnamed_addr constant [7 x i8] c"F0hz10\00", align 1
@.str.2.500 = private unnamed_addr constant [5 x i8] c"AVdb\00", align 1
@.str.3.501 = private unnamed_addr constant [5 x i8] c"F1hz\00", align 1
@.str.4.502 = private unnamed_addr constant [5 x i8] c"B1hz\00", align 1
@.str.5.503 = private unnamed_addr constant [5 x i8] c"F2hz\00", align 1
@.str.6.504 = private unnamed_addr constant [5 x i8] c"B2hz\00", align 1
@.str.7.505 = private unnamed_addr constant [5 x i8] c"F3hz\00", align 1
@.str.8.506 = private unnamed_addr constant [5 x i8] c"B3hz\00", align 1
@.str.9.507 = private unnamed_addr constant [5 x i8] c"F4hz\00", align 1
@.str.10.508 = private unnamed_addr constant [5 x i8] c"B4hz\00", align 1
@.str.11.509 = private unnamed_addr constant [5 x i8] c"F5hz\00", align 1
@.str.12.510 = private unnamed_addr constant [5 x i8] c"B5hz\00", align 1
@.str.13.511 = private unnamed_addr constant [5 x i8] c"F6hz\00", align 1
@.str.14.512 = private unnamed_addr constant [5 x i8] c"B6hz\00", align 1
@.str.15.513 = private unnamed_addr constant [6 x i8] c"FNZhz\00", align 1
@.str.16.514 = private unnamed_addr constant [6 x i8] c"BNZhz\00", align 1
@.str.17.515 = private unnamed_addr constant [6 x i8] c"FNPhz\00", align 1
@.str.18.516 = private unnamed_addr constant [6 x i8] c"BNPhz\00", align 1
@.str.19.517 = private unnamed_addr constant [3 x i8] c"AP\00", align 1
@.str.20.518 = private unnamed_addr constant [6 x i8] c"Kopen\00", align 1
@.str.21.519 = private unnamed_addr constant [6 x i8] c"Aturb\00", align 1
@.str.22.520 = private unnamed_addr constant [6 x i8] c"TLTdb\00", align 1
@.str.23.521 = private unnamed_addr constant [3 x i8] c"AF\00", align 1
@.str.24.522 = private unnamed_addr constant [6 x i8] c"Kskew\00", align 1
@.str.25.523 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.26.524 = private unnamed_addr constant [6 x i8] c"B1phz\00", align 1
@.str.27.525 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.28.526 = private unnamed_addr constant [6 x i8] c"B2phz\00", align 1
@.str.29.527 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.30.528 = private unnamed_addr constant [6 x i8] c"B3phz\00", align 1
@.str.31.529 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.32.530 = private unnamed_addr constant [6 x i8] c"B4phz\00", align 1
@.str.33.531 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.34.532 = private unnamed_addr constant [6 x i8] c"B5phz\00", align 1
@.str.35.533 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@.str.36.534 = private unnamed_addr constant [6 x i8] c"B6phz\00", align 1
@.str.37.535 = private unnamed_addr constant [4 x i8] c"ANP\00", align 1
@.str.38.536 = private unnamed_addr constant [3 x i8] c"AB\00", align 1
@.str.39.537 = private unnamed_addr constant [6 x i8] c"AVpdb\00", align 1
@.str.40.538 = private unnamed_addr constant [6 x i8] c"Gain0\00", align 1
@par_name = dso_local local_unnamed_addr global [40 x ptr] [ptr @.str.1.499, ptr @.str.2.500, ptr @.str.3.501, ptr @.str.4.502, ptr @.str.5.503, ptr @.str.6.504, ptr @.str.7.505, ptr @.str.8.506, ptr @.str.9.507, ptr @.str.10.508, ptr @.str.11.509, ptr @.str.12.510, ptr @.str.13.511, ptr @.str.14.512, ptr @.str.15.513, ptr @.str.16.514, ptr @.str.17.515, ptr @.str.18.516, ptr @.str.19.517, ptr @.str.20.518, ptr @.str.21.519, ptr @.str.22.520, ptr @.str.23.521, ptr @.str.24.522, ptr @.str.25.523, ptr @.str.26.524, ptr @.str.27.525, ptr @.str.28.526, ptr @.str.29.527, ptr @.str.30.528, ptr @.str.31.529, ptr @.str.32.530, ptr @.str.33.531, ptr @.str.34.532, ptr @.str.35.533, ptr @.str.36.534, ptr @.str.37.535, ptr @.str.38.536, ptr @.str.39.537, ptr @.str.40.538], align 16
@show_parms.names = internal unnamed_addr global i32 0, align 4
@.str.41.539 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.42.540 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.43.541 = private unnamed_addr constant [5 x i8] c"%*d \00", align 1
@parwave.seed = internal unnamed_addr global i64 5, align 8
@nlast = internal unnamed_addr global float 0.000000e+00, align 4
@nper = internal unnamed_addr global i64 0, align 8
@nmod = internal unnamed_addr global i64 0, align 8
@amp_frica = internal unnamed_addr global float 0.000000e+00, align 4
@T0 = internal unnamed_addr global i64 0, align 8
@onemd = internal unnamed_addr global float 0.000000e+00, align 4
@vlast = internal unnamed_addr global float 0.000000e+00, align 4
@decay = internal unnamed_addr global float 0.000000e+00, align 4
@nopen = internal unnamed_addr global i64 0, align 8
@amp_breth = internal unnamed_addr global float 0.000000e+00, align 4
@amp_voice = internal unnamed_addr global float 0.000000e+00, align 4
@amp_aspir = internal unnamed_addr global float 0.000000e+00, align 4
@glotlast = internal unnamed_addr global float 0.000000e+00, align 4
@amp_bypas = internal unnamed_addr global float 0.000000e+00, align 4
@minus_pi_t = internal unnamed_addr global float 0.000000e+00, align 4
@two_pi_t = internal unnamed_addr global float 0.000000e+00, align 4
@warnsw = internal unnamed_addr global i32 0, align 4
@F0hz10 = internal unnamed_addr global i64 0, align 8
@AVdb = internal unnamed_addr global i64 0, align 8
@Kskew = internal unnamed_addr global i64 0, align 8
@.str.44.569 = private unnamed_addr constant [30 x i8] c"Try to compute amptable[%ld]\0A\00", align 1
@amptable = internal unnamed_addr constant [88 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.300000e+01, float 1.400000e+01, float 1.600000e+01, float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 2.500000e+01, float 2.800000e+01, float 3.200000e+01, float 3.500000e+01, float 4.000000e+01, float 4.500000e+01, float 5.100000e+01, float 5.700000e+01, float 6.400000e+01, float 7.100000e+01, float 8.000000e+01, float 9.000000e+01, float 1.010000e+02, float 1.140000e+02, float 1.280000e+02, float 1.420000e+02, float 1.590000e+02, float 1.790000e+02, float 2.020000e+02, float 2.270000e+02, float 2.560000e+02, float 2.840000e+02, float 3.180000e+02, float 3.590000e+02, float 4.050000e+02, float 4.550000e+02, float 5.120000e+02, float 5.680000e+02, float 6.380000e+02, float 7.190000e+02, float 8.110000e+02, float 9.110000e+02, float 1.024000e+03, float 1.137000e+03, float 1.276000e+03, float 1.438000e+03, float 1.622000e+03, float 1.823000e+03, float 2.048000e+03, float 2.273000e+03, float 2.552000e+03, float 2.875000e+03, float 3.244000e+03, float 3.645000e+03, float 4.096000e+03, float 4.547000e+03, float 5.104000e+03, float 5.751000e+03, float 6.488000e+03, float 7.291000e+03, float 8.192000e+03, float 9.093000e+03, float 1.020700e+04, float 1.150200e+04, float 1.297600e+04, float 1.458200e+04, float 1.638400e+04, float 1.835000e+04, float 2.064400e+04, float 2.342900e+04, float 2.621400e+04, float 2.949100e+04, float 3.276700e+04], align 16
@impulsive_source.doublet = internal unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.300000e+07, float -1.300000e+07], align 4
@vwave = internal unnamed_addr global float 0.000000e+00, align 4
@natglot_b = internal unnamed_addr global float 0.000000e+00, align 4
@natglot_a = internal unnamed_addr global float 0.000000e+00, align 4
@.str.45.564 = private unnamed_addr constant [58 x i8] c"Warning: glottal open period cannot exceed T0, truncated\0A\00", align 1
@.str.46.565 = private unnamed_addr constant [53 x i8] c"Warning: minimum glottal open period is 10 samples.\0A\00", align 1
@.str.47.566 = private unnamed_addr constant [24 x i8] c"truncated, nopen = %ld\0A\00", align 1
@natglot = internal unnamed_addr constant [224 x i16] [i16 1200, i16 1142, i16 1088, i16 1038, i16 991, i16 948, i16 907, i16 869, i16 833, i16 799, i16 768, i16 738, i16 710, i16 683, i16 658, i16 634, i16 612, i16 590, i16 570, i16 551, i16 533, i16 515, i16 499, i16 483, i16 468, i16 454, i16 440, i16 427, i16 415, i16 403, i16 391, i16 380, i16 370, i16 360, i16 350, i16 341, i16 332, i16 323, i16 315, i16 307, i16 300, i16 292, i16 285, i16 278, i16 272, i16 265, i16 259, i16 253, i16 247, i16 242, i16 237, i16 231, i16 226, i16 221, i16 217, i16 212, i16 208, i16 204, i16 199, i16 195, i16 192, i16 188, i16 184, i16 180, i16 177, i16 174, i16 170, i16 167, i16 164, i16 161, i16 158, i16 155, i16 153, i16 150, i16 147, i16 145, i16 142, i16 140, i16 137, i16 135, i16 133, i16 131, i16 128, i16 126, i16 124, i16 122, i16 120, i16 119, i16 117, i16 115, i16 113, i16 111, i16 110, i16 108, i16 106, i16 105, i16 103, i16 102, i16 100, i16 99, i16 97, i16 96, i16 95, i16 93, i16 92, i16 91, i16 90, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 80, i16 79, i16 78, i16 77, i16 76, i16 75, i16 75, i16 74, i16 73, i16 72, i16 71, i16 70, i16 69, i16 68, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 61, i16 60, i16 59, i16 59, i16 58, i16 57, i16 57, i16 56, i16 56, i16 55, i16 55, i16 54, i16 54, i16 53, i16 53, i16 52, i16 52, i16 51, i16 51, i16 50, i16 50, i16 49, i16 49, i16 48, i16 48, i16 47, i16 47, i16 46, i16 46, i16 45, i16 45, i16 44, i16 44, i16 43, i16 43, i16 42, i16 42, i16 41, i16 41, i16 41, i16 41, i16 40, i16 40, i16 39, i16 39, i16 38, i16 38, i16 38, i16 38, i16 37, i16 37, i16 36, i16 36, i16 36, i16 36, i16 35, i16 35, i16 35, i16 35, i16 34, i16 34, i16 33, i16 33, i16 33, i16 33, i16 32, i16 32, i16 32, i16 32, i16 31, i16 31, i16 31, i16 31, i16 30, i16 30, i16 30, i16 30, i16 29, i16 29, i16 29, i16 29, i16 28, i16 28, i16 28, i16 28, i16 27, i16 27], align 16
@.str.48.567 = private unnamed_addr constant [58 x i8] c"Kskew duration=%ld > glottal closed period=%ld, truncate\0A\00", align 1
@skew = internal unnamed_addr global i64 0, align 8
@.str.49.563 = private unnamed_addr constant [25 x i8] c"downsamp low-pass filter\00", align 1
@rlp = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.49.563, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.51.562 = private unnamed_addr constant [19 x i8] c"cascade nasal zero\00", align 1
@rnz = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.51.562, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.53.561 = private unnamed_addr constant [19 x i8] c"cascade nasal pole\00", align 1
@rnpc = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.53.561, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.55.560 = private unnamed_addr constant [20 x i8] c"cascade 8th formant\00", align 1
@r8c = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.55.560, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.57.559 = private unnamed_addr constant [20 x i8] c"cascade 7th formant\00", align 1
@r7c = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.57.559, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.59.558 = private unnamed_addr constant [20 x i8] c"cascade 6th formant\00", align 1
@r6c = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.59.558, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.61.557 = private unnamed_addr constant [20 x i8] c"cascade 5th formant\00", align 1
@r5c = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.61.557, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.63.556 = private unnamed_addr constant [20 x i8] c"cascade 4th formant\00", align 1
@r4c = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.63.556, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.65.555 = private unnamed_addr constant [20 x i8] c"cascade 3rd formant\00", align 1
@r3c = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.65.555, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.67.554 = private unnamed_addr constant [20 x i8] c"cascade 2nd formant\00", align 1
@r2c = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.67.554, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.69.553 = private unnamed_addr constant [20 x i8] c"cascade 1st formant\00", align 1
@r1c = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.69.553, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.71.552 = private unnamed_addr constant [21 x i8] c"parallel 1st formant\00", align 1
@r1p = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.71.552, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.73.551 = private unnamed_addr constant [21 x i8] c"parallel 6th formant\00", align 1
@r6p = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.73.551, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.75.550 = private unnamed_addr constant [21 x i8] c"parallel 5th formant\00", align 1
@r5p = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.75.550, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.77.549 = private unnamed_addr constant [21 x i8] c"parallel 4th formant\00", align 1
@r4p = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.77.549, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.79.548 = private unnamed_addr constant [21 x i8] c"parallel 3rd formant\00", align 1
@r3p = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.79.548, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.81.547 = private unnamed_addr constant [21 x i8] c"parallel 2nd formant\00", align 1
@r2p = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.81.547, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.83.546 = private unnamed_addr constant [16 x i8] c"output low-pass\00", align 1
@rout = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.83.546, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.85.544 = private unnamed_addr constant [17 x i8] c"\0A* * * WARNING: \00", align 1
@.str.86.545 = private unnamed_addr constant [59 x i8] c" Signal at output of synthesizer (+%3.1f dB) exceeds 0 dB\0A\00", align 1
@.str.87.570 = private unnamed_addr constant [20 x i8] c"parallel nasal pole\00", align 1
@rnpp = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.87.570, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.89.568 = private unnamed_addr constant [33 x i8] c"crit-damped glot low-pass filter\00", align 1
@rgl = internal global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.89.568, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@.str.573 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1.574 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.2.575 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.3.576 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.4.577 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.5.578 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.6.579 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.7.580 = private unnamed_addr constant [3 x i8] c"HH\00", align 1
@.str.8.581 = private unnamed_addr constant [3 x i8] c"JH\00", align 1
@.str.9.582 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.10.583 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.11.584 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.12.585 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.13.586 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.14.587 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.15.588 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.16.589 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.17.590 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.18.591 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.19.592 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.20.593 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str.21.594 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.22.595 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.23.596 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.24.597 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.25.598 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.26.599 = private unnamed_addr constant [3 x i8] c"AX\00", align 1
@.str.27.600 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.28.601 = private unnamed_addr constant [4 x i8] c"AA1\00", align 1
@.str.29.602 = private unnamed_addr constant [4 x i8] c"AA2\00", align 1
@.str.30.603 = private unnamed_addr constant [3 x i8] c"AE\00", align 1
@.str.31.604 = private unnamed_addr constant [4 x i8] c"AE1\00", align 1
@.str.32.605 = private unnamed_addr constant [4 x i8] c"AE2\00", align 1
@.str.33.606 = private unnamed_addr constant [3 x i8] c"AH\00", align 1
@.str.34.607 = private unnamed_addr constant [4 x i8] c"AH1\00", align 1
@.str.35.608 = private unnamed_addr constant [4 x i8] c"AH2\00", align 1
@.str.36.609 = private unnamed_addr constant [3 x i8] c"AO\00", align 1
@.str.37.610 = private unnamed_addr constant [4 x i8] c"AO1\00", align 1
@.str.38.611 = private unnamed_addr constant [4 x i8] c"AO2\00", align 1
@.str.39.612 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.40.613 = private unnamed_addr constant [4 x i8] c"AW1\00", align 1
@.str.41.614 = private unnamed_addr constant [4 x i8] c"AW2\00", align 1
@.str.42.615 = private unnamed_addr constant [3 x i8] c"AY\00", align 1
@.str.43.616 = private unnamed_addr constant [4 x i8] c"AY1\00", align 1
@.str.44.617 = private unnamed_addr constant [4 x i8] c"AY2\00", align 1
@.str.45.618 = private unnamed_addr constant [3 x i8] c"EA\00", align 1
@.str.46.619 = private unnamed_addr constant [4 x i8] c"EA1\00", align 1
@.str.47.620 = private unnamed_addr constant [4 x i8] c"EA2\00", align 1
@.str.48.621 = private unnamed_addr constant [3 x i8] c"EH\00", align 1
@.str.49.622 = private unnamed_addr constant [4 x i8] c"EH1\00", align 1
@.str.50.623 = private unnamed_addr constant [4 x i8] c"EH2\00", align 1
@.str.51.624 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.52.625 = private unnamed_addr constant [4 x i8] c"ER1\00", align 1
@.str.53.626 = private unnamed_addr constant [4 x i8] c"ER2\00", align 1
@.str.54.627 = private unnamed_addr constant [3 x i8] c"EY\00", align 1
@.str.55.628 = private unnamed_addr constant [4 x i8] c"EY1\00", align 1
@.str.56.629 = private unnamed_addr constant [4 x i8] c"EY2\00", align 1
@.str.57.630 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.58.631 = private unnamed_addr constant [4 x i8] c"IA1\00", align 1
@.str.59.632 = private unnamed_addr constant [4 x i8] c"IA2\00", align 1
@.str.60.633 = private unnamed_addr constant [3 x i8] c"IH\00", align 1
@.str.61.634 = private unnamed_addr constant [4 x i8] c"IH1\00", align 1
@.str.62.635 = private unnamed_addr constant [4 x i8] c"IH2\00", align 1
@.str.63.636 = private unnamed_addr constant [3 x i8] c"IY\00", align 1
@.str.64.637 = private unnamed_addr constant [4 x i8] c"IY1\00", align 1
@.str.65.638 = private unnamed_addr constant [4 x i8] c"IY2\00", align 1
@.str.66.639 = private unnamed_addr constant [3 x i8] c"OH\00", align 1
@.str.67.640 = private unnamed_addr constant [4 x i8] c"OH1\00", align 1
@.str.68.641 = private unnamed_addr constant [4 x i8] c"OH2\00", align 1
@.str.69.642 = private unnamed_addr constant [3 x i8] c"OW\00", align 1
@.str.70.643 = private unnamed_addr constant [4 x i8] c"OW1\00", align 1
@.str.71.644 = private unnamed_addr constant [4 x i8] c"OW2\00", align 1
@.str.72.645 = private unnamed_addr constant [3 x i8] c"OY\00", align 1
@.str.73.646 = private unnamed_addr constant [4 x i8] c"OY1\00", align 1
@.str.74.647 = private unnamed_addr constant [4 x i8] c"OY2\00", align 1
@.str.75.648 = private unnamed_addr constant [3 x i8] c"UA\00", align 1
@.str.76.649 = private unnamed_addr constant [4 x i8] c"UA1\00", align 1
@.str.77.650 = private unnamed_addr constant [4 x i8] c"UA2\00", align 1
@.str.78.651 = private unnamed_addr constant [3 x i8] c"UH\00", align 1
@.str.79.652 = private unnamed_addr constant [4 x i8] c"UH1\00", align 1
@.str.80.653 = private unnamed_addr constant [4 x i8] c"UH2\00", align 1
@.str.81.654 = private unnamed_addr constant [3 x i8] c"UW\00", align 1
@.str.82.655 = private unnamed_addr constant [4 x i8] c"UW1\00", align 1
@.str.83.656 = private unnamed_addr constant [4 x i8] c"UW2\00", align 1
@ph_name = dso_local local_unnamed_addr global [85 x ptr] [ptr @.str.573, ptr @.str.1.574, ptr @.str.2.575, ptr @.str.3.576, ptr @.str.4.577, ptr @.str.5.578, ptr @.str.6.579, ptr @.str.7.580, ptr @.str.8.581, ptr @.str.9.582, ptr @.str.10.583, ptr @.str.11.584, ptr @.str.12.585, ptr @.str.13.586, ptr @.str.14.587, ptr @.str.15.588, ptr @.str.16.589, ptr @.str.17.590, ptr @.str.18.591, ptr @.str.19.592, ptr @.str.20.593, ptr @.str.21.594, ptr @.str.22.595, ptr @.str.23.596, ptr @.str.24.597, ptr @.str.25.598, ptr @.str.26.599, ptr @.str.27.600, ptr @.str.28.601, ptr @.str.29.602, ptr @.str.30.603, ptr @.str.31.604, ptr @.str.32.605, ptr @.str.33.606, ptr @.str.34.607, ptr @.str.35.608, ptr @.str.36.609, ptr @.str.37.610, ptr @.str.38.611, ptr @.str.39.612, ptr @.str.40.613, ptr @.str.41.614, ptr @.str.42.615, ptr @.str.43.616, ptr @.str.44.617, ptr @.str.45.618, ptr @.str.46.619, ptr @.str.47.620, ptr @.str.48.621, ptr @.str.49.622, ptr @.str.50.623, ptr @.str.51.624, ptr @.str.52.625, ptr @.str.53.626, ptr @.str.54.627, ptr @.str.55.628, ptr @.str.56.629, ptr @.str.57.630, ptr @.str.58.631, ptr @.str.59.632, ptr @.str.60.633, ptr @.str.61.634, ptr @.str.62.635, ptr @.str.63.636, ptr @.str.64.637, ptr @.str.65.638, ptr @.str.66.639, ptr @.str.67.640, ptr @.str.68.641, ptr @.str.69.642, ptr @.str.70.643, ptr @.str.71.644, ptr @.str.72.645, ptr @.str.73.646, ptr @.str.74.647, ptr @.str.75.648, ptr @.str.76.649, ptr @.str.77.650, ptr @.str.78.651, ptr @.str.79.652, ptr @.str.80.653, ptr @.str.81.654, ptr @.str.82.655, ptr @.str.83.656, ptr null], align 16
@.str.84.657 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.85.658 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.86.659 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.87.660 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.88.661 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.89.662 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.90.663 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.91.664 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.92.665 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.93.666 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.94.667 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.95.668 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.96.669 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.97.670 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.98.671 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.99.672 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.100.673 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.101.674 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.102.675 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.103.676 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.104.677 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.105.678 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.106.679 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.107.680 = private unnamed_addr constant [3 x i8] c"'&\00", align 1
@.str.108.681 = private unnamed_addr constant [3 x i8] c",&\00", align 1
@.str.109.682 = private unnamed_addr constant [3 x i8] c"'V\00", align 1
@.str.110.683 = private unnamed_addr constant [3 x i8] c",V\00", align 1
@.str.111.684 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.112.685 = private unnamed_addr constant [3 x i8] c"'O\00", align 1
@.str.113.686 = private unnamed_addr constant [3 x i8] c",O\00", align 1
@.str.114.687 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.115.688 = private unnamed_addr constant [4 x i8] c"'aU\00", align 1
@.str.116.689 = private unnamed_addr constant [4 x i8] c",aU\00", align 1
@.str.117.690 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.118.691 = private unnamed_addr constant [4 x i8] c"'aI\00", align 1
@.str.119.692 = private unnamed_addr constant [4 x i8] c",aI\00", align 1
@.str.120.693 = private unnamed_addr constant [3 x i8] c"e@\00", align 1
@.str.121.694 = private unnamed_addr constant [4 x i8] c"'e@\00", align 1
@.str.122.695 = private unnamed_addr constant [4 x i8] c",e@\00", align 1
@.str.123.696 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.124.697 = private unnamed_addr constant [3 x i8] c"'e\00", align 1
@.str.125.698 = private unnamed_addr constant [3 x i8] c",e\00", align 1
@.str.126.699 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.127.700 = private unnamed_addr constant [3 x i8] c"'3\00", align 1
@.str.128.701 = private unnamed_addr constant [3 x i8] c",3\00", align 1
@.str.129.702 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.130.703 = private unnamed_addr constant [4 x i8] c"'eI\00", align 1
@.str.131.704 = private unnamed_addr constant [4 x i8] c",eI\00", align 1
@.str.132.705 = private unnamed_addr constant [3 x i8] c"I@\00", align 1
@.str.133.706 = private unnamed_addr constant [4 x i8] c"'I@\00", align 1
@.str.134.707 = private unnamed_addr constant [4 x i8] c",I@\00", align 1
@.str.135.708 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.136.709 = private unnamed_addr constant [3 x i8] c"'I\00", align 1
@.str.137.710 = private unnamed_addr constant [3 x i8] c",I\00", align 1
@.str.138.711 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.139.712 = private unnamed_addr constant [3 x i8] c"'i\00", align 1
@.str.140.713 = private unnamed_addr constant [3 x i8] c",i\00", align 1
@.str.141.714 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.142.715 = private unnamed_addr constant [3 x i8] c"'0\00", align 1
@.str.143.716 = private unnamed_addr constant [3 x i8] c",0\00", align 1
@.str.144.717 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.145.718 = private unnamed_addr constant [4 x i8] c"'@U\00", align 1
@.str.146.719 = private unnamed_addr constant [4 x i8] c",@U\00", align 1
@.str.147.720 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.148.721 = private unnamed_addr constant [4 x i8] c"'oI\00", align 1
@.str.149.722 = private unnamed_addr constant [4 x i8] c",oI\00", align 1
@.str.150.723 = private unnamed_addr constant [3 x i8] c"U@\00", align 1
@.str.151.724 = private unnamed_addr constant [4 x i8] c"'U@\00", align 1
@.str.152.725 = private unnamed_addr constant [4 x i8] c",U@\00", align 1
@.str.153.726 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.154.727 = private unnamed_addr constant [3 x i8] c"'U\00", align 1
@.str.155.728 = private unnamed_addr constant [3 x i8] c",U\00", align 1
@.str.156.729 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.157.730 = private unnamed_addr constant [3 x i8] c"'u\00", align 1
@.str.158.731 = private unnamed_addr constant [3 x i8] c",u\00", align 1
@ph_br = dso_local local_unnamed_addr global [85 x ptr] [ptr @.str.573, ptr @.str.84.657, ptr @.str.85.658, ptr @.str.86.659, ptr @.str.3.576, ptr @.str.87.660, ptr @.str.88.661, ptr @.str.89.662, ptr @.str.90.663, ptr @.str.91.664, ptr @.str.92.665, ptr @.str.93.666, ptr @.str.94.667, ptr @.str.12.585, ptr @.str.95.668, ptr @.str.96.669, ptr @.str.97.670, ptr @.str.16.589, ptr @.str.98.671, ptr @.str.18.591, ptr @.str.99.672, ptr @.str.100.673, ptr @.str.101.674, ptr @.str.102.675, ptr @.str.103.676, ptr @.str.24.597, ptr @.str.104.677, ptr @.str.105.678, ptr @.str.105.678, ptr @.str.105.678, ptr @.str.106.679, ptr @.str.107.680, ptr @.str.108.681, ptr @.str.21.594, ptr @.str.109.682, ptr @.str.110.683, ptr @.str.111.684, ptr @.str.112.685, ptr @.str.113.686, ptr @.str.114.687, ptr @.str.115.688, ptr @.str.116.689, ptr @.str.117.690, ptr @.str.118.691, ptr @.str.119.692, ptr @.str.120.693, ptr @.str.121.694, ptr @.str.122.695, ptr @.str.123.696, ptr @.str.124.697, ptr @.str.125.698, ptr @.str.126.699, ptr @.str.127.700, ptr @.str.128.701, ptr @.str.129.702, ptr @.str.130.703, ptr @.str.131.704, ptr @.str.132.705, ptr @.str.133.706, ptr @.str.134.707, ptr @.str.135.708, ptr @.str.136.709, ptr @.str.137.710, ptr @.str.138.711, ptr @.str.139.712, ptr @.str.140.713, ptr @.str.141.714, ptr @.str.142.715, ptr @.str.143.716, ptr @.str.144.717, ptr @.str.145.718, ptr @.str.146.719, ptr @.str.147.720, ptr @.str.148.721, ptr @.str.149.722, ptr @.str.150.723, ptr @.str.151.724, ptr @.str.152.725, ptr @.str.153.726, ptr @.str.154.727, ptr @.str.155.728, ptr @.str.156.729, ptr @.str.157.730, ptr @.str.158.731, ptr null], align 16
@.str.159.734 = private unnamed_addr constant [3 x i8] c"3R\00", align 1
@.str.160.735 = private unnamed_addr constant [4 x i8] c"'3R\00", align 1
@.str.161.736 = private unnamed_addr constant [4 x i8] c",3R\00", align 1
@.str.162.737 = private unnamed_addr constant [3 x i8] c"oU\00", align 1
@.str.163.738 = private unnamed_addr constant [4 x i8] c"'oU\00", align 1
@.str.164.739 = private unnamed_addr constant [4 x i8] c",oU\00", align 1
@ph_am = dso_local global [85 x ptr] [ptr @.str.573, ptr @.str.84.657, ptr @.str.85.658, ptr @.str.86.659, ptr @.str.3.576, ptr @.str.87.660, ptr @.str.88.661, ptr @.str.89.662, ptr @.str.90.663, ptr @.str.91.664, ptr @.str.92.665, ptr @.str.93.666, ptr @.str.94.667, ptr @.str.12.585, ptr @.str.95.668, ptr @.str.96.669, ptr @.str.97.670, ptr @.str.16.589, ptr @.str.98.671, ptr @.str.18.591, ptr @.str.99.672, ptr @.str.100.673, ptr @.str.101.674, ptr @.str.102.675, ptr @.str.103.676, ptr @.str.24.597, ptr @.str.104.677, ptr @.str.105.678, ptr @.str.105.678, ptr @.str.105.678, ptr @.str.106.679, ptr @.str.107.680, ptr @.str.108.681, ptr @.str.21.594, ptr @.str.109.682, ptr @.str.110.683, ptr @.str.111.684, ptr @.str.112.685, ptr @.str.113.686, ptr @.str.114.687, ptr @.str.115.688, ptr @.str.116.689, ptr @.str.117.690, ptr @.str.118.691, ptr @.str.119.692, ptr @.str.120.693, ptr @.str.121.694, ptr @.str.122.695, ptr @.str.123.696, ptr @.str.124.697, ptr @.str.125.698, ptr @.str.159.734, ptr @.str.160.735, ptr @.str.161.736, ptr @.str.129.702, ptr @.str.130.703, ptr @.str.131.704, ptr @.str.132.705, ptr @.str.133.706, ptr @.str.134.707, ptr @.str.135.708, ptr @.str.136.709, ptr @.str.137.710, ptr @.str.138.711, ptr @.str.139.712, ptr @.str.140.713, ptr @.str.141.714, ptr @.str.142.715, ptr @.str.143.716, ptr @.str.162.737, ptr @.str.163.738, ptr @.str.164.739, ptr @.str.147.720, ptr @.str.148.721, ptr @.str.149.722, ptr @.str.156.729, ptr @.str.157.730, ptr @.str.158.731, ptr @.str.153.726, ptr @.str.154.727, ptr @.str.155.728, ptr @.str.156.729, ptr @.str.157.730, ptr @.str.158.731, ptr null], align 16
@.str.740 = private unnamed_addr constant [64 x i8] c"$Id: phtoelm.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@phtoelm_id = dso_local local_unnamed_addr global ptr @.str.740, align 8
@phtoelm = dso_local global ptr null, align 8
@Elements = dso_local global [69 x { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] }] [{ ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.1.103, i8 31, i8 5, i8 5, i8 0, [4 x i8] zeroinitializer, ptr null, ptr null, i64 0, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.2.104, i8 29, i8 6, i8 6, i8 0, [4 x i8] zeroinitializer, ptr null, ptr null, i64 0, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.3.105, i8 23, i8 8, i8 8, i8 112, [4 x i8] zeroinitializer, ptr @.str.4.106, ptr @.str.4.106, i64 138412040, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.5.107, i8 29, i8 1, i8 1, i8 112, [4 x i8] zeroinitializer, ptr @.str.4.106, ptr @.str.4.106, i64 138412040, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.375000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.6.108, i8 23, i8 2, i8 2, i8 112, [4 x i8] zeroinitializer, ptr @.str.4.106, ptr @.str.4.106, i64 138412040, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.7.109, i8 23, i8 6, i8 6, i8 116, [4 x i8] zeroinitializer, ptr @.str.8.110, ptr @.str.8.110, i64 138412033, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.9.111, i8 29, i8 1, i8 1, i8 116, [4 x i8] zeroinitializer, ptr @.str.8.110, ptr @.str.8.110, i64 138412033, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.10.112, i8 23, i8 2, i8 2, i8 116, [4 x i8] zeroinitializer, ptr @.str.8.110, ptr @.str.8.110, i64 138412033, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 1, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 1, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 1, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 1, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.11.113, i8 23, i8 8, i8 8, i8 107, [4 x i8] zeroinitializer, ptr @.str.12.114, ptr @.str.12.114, i64 205520896, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.13.115, i8 29, i8 1, i8 1, i8 107, [4 x i8] zeroinitializer, ptr @.str.12.114, ptr @.str.12.114, i64 205520896, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.14.116, i8 23, i8 4, i8 4, i8 107, [4 x i8] zeroinitializer, ptr @.str.12.114, ptr @.str.12.114, i64 205520896, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.925000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.15.117, i8 26, i8 12, i8 12, i8 98, [4 x i8] zeroinitializer, ptr @.str.16.118, ptr @.str.16.118, i64 37748744, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.17.119, i8 29, i8 1, i8 1, i8 98, [4 x i8] zeroinitializer, ptr @.str.16.118, ptr @.str.16.118, i64 37748744, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.18.120, i8 26, i8 0, i8 0, i8 98, [4 x i8] zeroinitializer, ptr @.str.16.118, ptr @.str.16.118, i64 37748744, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.19.121, i8 26, i8 8, i8 8, i8 100, [4 x i8] zeroinitializer, ptr @.str.20.122, ptr @.str.20.122, i64 37748737, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.21.123, i8 29, i8 1, i8 1, i8 100, [4 x i8] zeroinitializer, ptr @.str.20.122, ptr @.str.20.122, i64 37748737, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.22.124, i8 26, i8 1, i8 1, i8 100, [4 x i8] zeroinitializer, ptr @.str.20.122, ptr @.str.20.122, i64 37748737, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.23.125, i8 26, i8 12, i8 12, i8 103, [4 x i8] zeroinitializer, ptr @.str.24.126, ptr @.str.24.126, i64 104857600, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.25.127, i8 29, i8 1, i8 1, i8 103, [4 x i8] zeroinitializer, ptr @.str.24.126, ptr @.str.24.126, i64 104857600, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.26.128, i8 26, i8 2, i8 2, i8 103, [4 x i8] zeroinitializer, ptr @.str.24.126, ptr @.str.24.126, i64 104857600, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.400000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.27.129, i8 15, i8 8, i8 8, i8 109, [4 x i8] zeroinitializer, ptr @.str.28.130, ptr @.str.28.130, i64 65544, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 3.600000e+02, float 3.600000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+03, float 3.500000e+02, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+03, float 0.000000e+00, i8 100, i8 5, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+01, float 2.000000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+02, float 8.700000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.200000e+02, float 0.000000e+00, i8 100, i8 5, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.600000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.300000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.29.131, i8 15, i8 8, i8 8, i8 110, [4 x i8] zeroinitializer, ptr @.str.30.132, ptr @.str.30.132, i64 65537, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 4.500000e+02, float 4.500000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 2.680000e+03, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+01, float 2.000000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.000000e+02, float 1.500000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.600000e+02, float 1.300000e+02, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.31.133, i8 15, i8 8, i8 8, i8 78, [4 x i8] zeroinitializer, ptr @.str.29.131, ptr @.str.29.131, i64 67174400, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 3.600000e+02, float 3.600000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.200000e+02, float 1.550000e+03, i8 50, i8 5, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+02, float 8.000000e+01, i8 0, i8 5, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+02, float 5.000000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.200000e+01, float 2.600000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.600000e+01, float 2.800000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.32.134, i8 18, i8 12, i8 12, i8 102, [4 x i8] zeroinitializer, ptr @.str.33.135, ptr @.str.33.135, i64 134219904, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.420000e+03, float 3.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 9.800000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.200000e+01, float 1.600000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.34.136, i8 18, i8 15, i8 15, i8 84, [4 x i8] zeroinitializer, ptr @.str.7.109, ptr @.str.7.109, i64 134217888, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.35.137, i8 18, i8 12, i8 12, i8 115, [4 x i8] zeroinitializer, ptr @.str.36.138, ptr @.str.36.138, i64 134217857, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.000000e+02, float 1.000000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.600000e+01, float 4.800000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.200000e+01, float 1.600000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.37.139, i8 18, i8 12, i8 12, i8 83, [4 x i8] zeroinitializer, ptr @.str.35.137, ptr @.str.35.137, i64 134480000, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.38.140, i8 18, i8 12, i8 12, i8 120, [4 x i8] zeroinitializer, ptr @.str.39.141, ptr @.str.39.141, i64 201326720, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.925000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.40.142, i8 9, i8 10, i8 10, i8 104, [4 x i8] zeroinitializer, ptr @.str.41.143, ptr @.str.41.143, i64 258, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float -1.400000e+01, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float -1.400000e+01, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float -7.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float -3.500000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.42.144, i8 20, i8 4, i8 4, i8 118, [4 x i8] zeroinitializer, ptr @.str.43.145, ptr @.str.43.145, i64 33556608, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.420000e+03, float 3.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 9.800000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.44.146, i8 30, i8 0, i8 0, i8 90, [4 x i8] zeroinitializer, ptr @.str.45.147, ptr @.str.45.147, i64 33554560, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.420000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.46.148, i8 20, i8 4, i8 4, i8 84, [4 x i8] zeroinitializer, ptr @.str.19.121, ptr @.str.19.121, i64 33554592, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.600000e+01, float 1.800000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.47.149, i8 20, i8 4, i8 4, i8 84, [4 x i8] zeroinitializer, ptr @.str.19.121, ptr @.str.19.121, i64 33554592, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.45.147, i8 20, i8 4, i8 4, i8 122, [4 x i8] zeroinitializer, ptr @.str.48.150, ptr @.str.48.150, i64 33554561, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+01, float 2.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.49.151, i8 20, i8 4, i8 4, i8 122, [4 x i8] zeroinitializer, ptr @.str.48.150, ptr @.str.48.150, i64 33554561, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.50.152, i8 20, i8 4, i8 4, i8 90, [4 x i8] zeroinitializer, ptr @.str.45.147, ptr @.str.45.147, i64 33816704, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.51.153, i8 23, i8 4, i8 4, i8 116, [4 x i8] zeroinitializer, ptr @.str.8.110, ptr @.str.8.110, i64 138412033, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.52.154, i8 18, i8 8, i8 8, i8 83, [4 x i8] zeroinitializer, ptr @.str.35.137, ptr @.str.35.137, i64 134480000, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.53.155, i8 26, i8 4, i8 4, i8 100, [4 x i8] zeroinitializer, ptr @.str.20.122, ptr @.str.20.122, i64 37748737, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.54.156, i8 20, i8 3, i8 3, i8 90, [4 x i8] zeroinitializer, ptr @.str.45.147, ptr @.str.45.147, i64 33816704, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.55.157, i8 11, i8 8, i8 8, i8 108, [4 x i8] zeroinitializer, ptr @.str.56.158, ptr @.str.56.158, i64 33555457, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.600000e+02, float 2.300000e+02, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 7.100000e+02, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.100000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.57.159, i8 11, i8 8, i8 8, i8 108, [4 x i8] zeroinitializer, ptr @.str.56.158, ptr @.str.56.158, i64 33555457, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.600000e+02, float 2.300000e+02, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.400000e+02, float 4.700000e+02, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.100000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.58.160, i8 10, i8 10, i8 10, i8 -43, [4 x i8] zeroinitializer, ptr @.str.59.161, ptr @.str.60.162, i64 1048576, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.180000e+03, float 0.000000e+00, i8 100, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 1.600000e+03, i8 0, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.000000e+01, float 3.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.000000e+01, float 2.500000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.59.161, i8 10, i8 11, i8 11, i8 -88, [4 x i8] zeroinitializer, ptr @.str.61.163, ptr @.str.61.163, i64 3, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.180000e+03, float 5.900000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 7.400000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.62.164, i8 10, i8 8, i8 8, i8 119, [4 x i8] zeroinitializer, ptr @.str.63.165, ptr @.str.63.165, i64 33558530, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 5.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 9.800000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.375000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.100000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.64.166, i8 10, i8 7, i8 7, i8 106, [4 x i8] zeroinitializer, ptr @.str.65.167, ptr @.str.65.167, i64 33685506, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.190000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.980000e+03, float 1.460000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.66.168, i8 2, i8 8, i8 6, i8 73, [4 x i8] zeroinitializer, ptr @.str.66.168, ptr @.str.66.168, i64 287309888, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.080000e+03, float 1.070000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 1.340000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.67.169, i8 2, i8 8, i8 4, i8 69, [4 x i8] zeroinitializer, ptr @.str.68.170, ptr @.str.67.169, i64 285220928, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.400000e+02, float 3.500000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.070000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.69.171, i8 2, i8 10, i8 5, i8 81, [4 x i8] zeroinitializer, ptr @.str.70.172, ptr @.str.70.172, i64 285229120, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.900000e+02, float 4.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.300000e+02, float 6.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.725000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.71.173, i8 2, i8 9, i8 6, i8 -61, [4 x i8] zeroinitializer, ptr @.str.42.144, ptr @.str.42.144, i64 285220868, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.000000e+02, float 3.500000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.360000e+03, float 7.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.375000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.72.174, i8 2, i8 9, i8 6, i8 -127, [4 x i8] zeroinitializer, ptr @.str.73.175, ptr @.str.74.176, i64 268976132, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.100000e+02, float 2.900000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.725000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.575000e+01, float 7.000000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.75, i8 2, i8 6, i8 4, i8 85, [4 x i8] zeroinitializer, ptr @.str.71.173, ptr @.str.71.173, i64 271056900, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.700000e+02, float 1.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+03, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.76, i8 2, i8 4, i8 4, i8 -85, [4 x i8] zeroinitializer, ptr @.str.77, ptr @.str.77, i64 285245456, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 7.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.78, i8 2, i8 11, i8 7, i8 105, [4 x i8] zeroinitializer, ptr @.str.79, ptr @.str.79, i64 285213248, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.320000e+03, float 1.190000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.200000e+03, float 1.580000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.80, i8 2, i8 16, i8 16, i8 -50, [4 x i8] zeroinitializer, ptr @.str.81, ptr @.str.82, i64 285220880, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.800000e+02, float 2.900000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.420000e+03, float 7.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.83.177, i8 2, i8 15, i8 15, i8 65, [4 x i8] zeroinitializer, ptr @.str.76, ptr @.str.76, i64 285229060, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.900000e+02, float 4.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.84.178, i8 2, i8 16, i8 10, i8 -115, [4 x i8] zeroinitializer, ptr @.str.72.174, ptr @.str.72.174, i64 268967940, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.200000e+02, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+01, float 7.000000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.85, i8 2, i8 14, i8 9, i8 117, [4 x i8] zeroinitializer, ptr @.str.86, ptr @.str.86, i64 268960260, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+03, float 1.100000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+01, float 7.000000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.050000e+01, float 3.500000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.87, i8 2, i8 9, i8 6, i8 69, [4 x i8] zeroinitializer, ptr @.str.68.170, ptr @.str.67.169, i64 285220928, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.400000e+02, float 2.900000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 8.300000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.88, i8 2, i8 9, i8 6, i8 97, [4 x i8] zeroinitializer, ptr @.str.89, ptr @.str.89, i64 285229072, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.900000e+02, float 4.100000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.800000e+02, float 4.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.90, i8 2, i8 9, i8 6, i8 111, [4 x i8] zeroinitializer, ptr @.str.91, ptr @.str.91, i64 277348356, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.200000e+02, float 3.500000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+01, float 7.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.92, i8 2, i8 9, i8 6, i8 97, [4 x i8] zeroinitializer, ptr @.str.89, ptr @.str.89, i64 285229072, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.900000e+02, float 4.100000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.300000e+03, float 5.900000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.725000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.93, i8 2, i8 8, i8 6, i8 85, [4 x i8] zeroinitializer, ptr @.str.71.173, ptr @.str.71.173, i64 271056900, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.700000e+02, float 1.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+03, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.94, i8 2, i8 9, i8 6, i8 -85, [4 x i8] zeroinitializer, ptr @.str.77, ptr @.str.77, i64 285245456, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 7.100000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.95, i8 2, i8 9, i8 6, i8 73, [4 x i8] zeroinitializer, ptr @.str.66.168, ptr @.str.66.168, i64 287309888, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.100000e+02, float 1.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+03, float 1.070000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.920000e+03, float 1.460000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.96, i8 2, i8 8, i8 6, i8 81, [4 x i8] zeroinitializer, ptr @.str.77, ptr @.str.77, i64 285229120, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 7.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.97, i8 2, i8 9, i8 6, i8 69, [4 x i8] zeroinitializer, ptr @.str.68.170, ptr @.str.67.169, i64 285220928, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.400000e+02, float 3.500000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.070000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.98, i8 2, i8 9, i8 6, i8 85, [4 x i8] zeroinitializer, ptr @.str.71.173, ptr @.str.71.173, i64 271056900, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.700000e+02, float 1.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+03, float 4.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 7.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.99, i8 2, i8 9, i8 6, i8 -115, [4 x i8] zeroinitializer, ptr @.str.72.174, ptr @.str.72.174, i64 268967940, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.200000e+02, float 4.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+01, float 7.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }], align 16
@speed = dso_local global i32 1, align 4
@.str.1.742 = private unnamed_addr constant [23 x i8] c"Ignoring %c in '%.*s'\0A\00", align 1
@.str.2.743 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3.744 = private unnamed_addr constant [2 x i8] c"Q\00", align 1
@.str.4.745 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.5.746 = private unnamed_addr constant [2 x i8] c"P\00", align 1
@.str.6.747 = private unnamed_addr constant [3 x i8] c"PY\00", align 1
@.str.7.748 = private unnamed_addr constant [3 x i8] c"PZ\00", align 1
@.str.8.749 = private unnamed_addr constant [2 x i8] c"t\00", align 1
@.str.9.750 = private unnamed_addr constant [2 x i8] c"T\00", align 1
@.str.10.751 = private unnamed_addr constant [3 x i8] c"TY\00", align 1
@.str.11.752 = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@.str.12.753 = private unnamed_addr constant [2 x i8] c"k\00", align 1
@.str.13.754 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@.str.14.755 = private unnamed_addr constant [3 x i8] c"KY\00", align 1
@.str.15.756 = private unnamed_addr constant [3 x i8] c"KZ\00", align 1
@.str.16.757 = private unnamed_addr constant [2 x i8] c"b\00", align 1
@.str.17.758 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.18.759 = private unnamed_addr constant [3 x i8] c"BY\00", align 1
@.str.19.760 = private unnamed_addr constant [3 x i8] c"BZ\00", align 1
@.str.20.761 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@.str.21.762 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.22.763 = private unnamed_addr constant [3 x i8] c"DY\00", align 1
@.str.23.764 = private unnamed_addr constant [3 x i8] c"DZ\00", align 1
@.str.24.765 = private unnamed_addr constant [2 x i8] c"g\00", align 1
@.str.25.766 = private unnamed_addr constant [2 x i8] c"G\00", align 1
@.str.26.767 = private unnamed_addr constant [3 x i8] c"GY\00", align 1
@.str.27.768 = private unnamed_addr constant [3 x i8] c"GZ\00", align 1
@.str.28.769 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.29.770 = private unnamed_addr constant [2 x i8] c"M\00", align 1
@.str.30.771 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.31.772 = private unnamed_addr constant [2 x i8] c"N\00", align 1
@.str.32.773 = private unnamed_addr constant [3 x i8] c"NG\00", align 1
@.str.33.774 = private unnamed_addr constant [2 x i8] c"f\00", align 1
@.str.34.775 = private unnamed_addr constant [2 x i8] c"F\00", align 1
@.str.35.776 = private unnamed_addr constant [3 x i8] c"TH\00", align 1
@.str.36.777 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.37.778 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.38.779 = private unnamed_addr constant [3 x i8] c"SH\00", align 1
@.str.39.780 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.40.781 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.41.782 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.42.783 = private unnamed_addr constant [2 x i8] c"V\00", align 1
@.str.43.784 = private unnamed_addr constant [3 x i8] c"QQ\00", align 1
@.str.44.785 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@.str.45.786 = private unnamed_addr constant [3 x i8] c"DI\00", align 1
@.str.46.787 = private unnamed_addr constant [2 x i8] c"z\00", align 1
@.str.47.788 = private unnamed_addr constant [2 x i8] c"Z\00", align 1
@.str.48.789 = private unnamed_addr constant [3 x i8] c"ZZ\00", align 1
@.str.49.790 = private unnamed_addr constant [3 x i8] c"ZH\00", align 1
@.str.50.791 = private unnamed_addr constant [3 x i8] c"tS\00", align 1
@.str.51.792 = private unnamed_addr constant [3 x i8] c"CH\00", align 1
@.str.52.793 = private unnamed_addr constant [3 x i8] c"CI\00", align 1
@.str.53.794 = private unnamed_addr constant [3 x i8] c"dZ\00", align 1
@.str.54.795 = private unnamed_addr constant [2 x i8] c"J\00", align 1
@.str.55.796 = private unnamed_addr constant [3 x i8] c"JY\00", align 1
@.str.56.797 = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.57.798 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.58.799 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.59.800 = private unnamed_addr constant [2 x i8] c"R\00", align 1
@.str.60.801 = private unnamed_addr constant [3 x i8] c"rr\00", align 1
@.str.61.802 = private unnamed_addr constant [3 x i8] c"RX\00", align 1
@.str.62.803 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.63.804 = private unnamed_addr constant [2 x i8] c"W\00", align 1
@.str.64.805 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.65.806 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.66.807 = private unnamed_addr constant [2 x i8] c"%\00", align 1
@.str.67.808 = private unnamed_addr constant [2 x i8] c"j\00", align 1
@.str.68.809 = private unnamed_addr constant [2 x i8] c"Y\00", align 1
@.str.69.810 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.70.811 = private unnamed_addr constant [2 x i8] c"e\00", align 1
@.str.71.812 = private unnamed_addr constant [2 x i8] c"E\00", align 1
@.str.72.813 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.73.814 = private unnamed_addr constant [3 x i8] c"AA\00", align 1
@.str.74.815 = private unnamed_addr constant [2 x i8] c"U\00", align 1
@.str.75.816 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.76.817 = private unnamed_addr constant [2 x i8] c"O\00", align 1
@.str.77.818 = private unnamed_addr constant [3 x i8] c"OO\00", align 1
@.str.78.819 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@.str.79.820 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.80.821 = private unnamed_addr constant [2 x i8] c"i\00", align 1
@.str.81.822 = private unnamed_addr constant [3 x i8] c"EE\00", align 1
@.str.82.823 = private unnamed_addr constant [2 x i8] c"3\00", align 1
@.str.83.824 = private unnamed_addr constant [3 x i8] c"ER\00", align 1
@.str.84.825 = private unnamed_addr constant [3 x i8] c"AR\00", align 1
@.str.85.826 = private unnamed_addr constant [3 x i8] c"AW\00", align 1
@.str.86.827 = private unnamed_addr constant [2 x i8] c"u\00", align 1
@.str.87.828 = private unnamed_addr constant [3 x i8] c"UU\00", align 1
@.str.88.829 = private unnamed_addr constant [2 x i8] c"o\00", align 1
@.str.89.830 = private unnamed_addr constant [3 x i8] c"OI\00", align 1
@.str.90.831 = private unnamed_addr constant [3 x i8] c"eI\00", align 1
@.str.91.832 = private unnamed_addr constant [3 x i8] c"AI\00", align 1
@.str.92.833 = private unnamed_addr constant [3 x i8] c"aI\00", align 1
@.str.93.834 = private unnamed_addr constant [3 x i8] c"IE\00", align 1
@.str.94.835 = private unnamed_addr constant [3 x i8] c"oI\00", align 1
@.str.95.836 = private unnamed_addr constant [3 x i8] c"aU\00", align 1
@.str.96.837 = private unnamed_addr constant [3 x i8] c"OU\00", align 1
@.str.97.838 = private unnamed_addr constant [3 x i8] c"OV\00", align 1
@.str.98.839 = private unnamed_addr constant [3 x i8] c"@U\00", align 1
@.str.99.840 = private unnamed_addr constant [3 x i8] c"OA\00", align 1
@.str.100.841 = private unnamed_addr constant [3 x i8] c"I@\00", align 1
@.str.101.842 = private unnamed_addr constant [3 x i8] c"IA\00", align 1
@.str.102.843 = private unnamed_addr constant [3 x i8] c"IB\00", align 1
@.str.103.844 = private unnamed_addr constant [3 x i8] c"e@\00", align 1
@.str.104.845 = private unnamed_addr constant [4 x i8] c"AIR\00", align 1
@.str.105.846 = private unnamed_addr constant [3 x i8] c"U@\00", align 1
@.str.106.847 = private unnamed_addr constant [4 x i8] c"OOR\00", align 1
@.str.107.848 = private unnamed_addr constant [3 x i8] c"O@\00", align 1
@.str.108.849 = private unnamed_addr constant [3 x i8] c"OR\00", align 1
@.str.109.850 = private unnamed_addr constant [3 x i8] c"oU\00", align 1
@.str.110.851 = private unnamed_addr constant [16 x i8] c"Cannot find %s\0A\00", align 1
@num_Elements = dso_local local_unnamed_addr global i32 69, align 4
@.str.852 = private unnamed_addr constant [60 x i8] c"$Id: say.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@say_id = dso_local local_unnamed_addr global ptr @.str.852, align 8
@.str.1.855 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@program = dso_local global ptr @.str.1.855, align 8
@.str.2.856 = private unnamed_addr constant [17 x i8] c"Spelling '%.*s'\0A\00", align 1
@ASCII = dso_local local_unnamed_addr global [129 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr null], align 16
@klatt_global = dso_local global %struct.klatt_global_t zeroinitializer, align 8
@.str.3.859 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@file_write = dso_local local_unnamed_addr global ptr null, align 8
@.str.4.857 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@verbose = internal global i32 0, align 4
@.str.5.861 = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.6.862 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.7.863 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.8.864 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9.865 = private unnamed_addr constant [5 x i8] c"Misc\00", align 1
@.str.10.866 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.11.867 = private unnamed_addr constant [28 x i8] c"Verbose, show phonetic form\00", align 1
@help_only = dso_local local_unnamed_addr global i32 0, align 4
@.str.12.868 = private unnamed_addr constant [43 x i8] c"Usage: %s [options as above] words to say\0A\00", align 1
@.str.13.869 = private unnamed_addr constant [44 x i8] c"or     %s [options as above] < file-to-say\0A\00", align 1
@.str.14.870 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@Revision = dso_local global ptr @.str.73, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@file_term = dso_local local_unnamed_addr global ptr null, align 8
@dict = dso_local global ptr null, align 8
@dialect = dso_local local_unnamed_addr global ptr @ph_am, align 8
@.str.15.860 = private unnamed_addr constant [17 x i8] c"Guess %p '%.*s'\0A\00", align 1
@.str.871 = private unnamed_addr constant [63 x i8] c"$Id: saynum.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@saynum_id = dso_local local_unnamed_addr global ptr @.str.871, align 8
@.str.1.874 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.2.875 = private unnamed_addr constant [6 x i8] c"a lot\00", align 1
@.str.3.876 = private unnamed_addr constant [8 x i8] c"billion\00", align 1
@.str.4.877 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5.878 = private unnamed_addr constant [8 x i8] c"million\00", align 1
@.str.6.879 = private unnamed_addr constant [9 x i8] c"thousand\00", align 1
@Cardinals = internal unnamed_addr constant [20 x ptr] [ptr @.str.12.889, ptr @.str.13.890, ptr @.str.14.891, ptr @.str.15.892, ptr @.str.16.893, ptr @.str.17.894, ptr @.str.18.895, ptr @.str.19.896, ptr @.str.20.897, ptr @.str.21.898, ptr @.str.22.899, ptr @.str.23.900, ptr @.str.24.901, ptr @.str.25.902, ptr @.str.26.903, ptr @.str.27.904, ptr @.str.28.905, ptr @.str.29.906, ptr @.str.30.907, ptr @.str.31.908], align 16
@.str.7.880 = private unnamed_addr constant [8 x i8] c"hundred\00", align 1
@Twenties = internal unnamed_addr constant [8 x ptr] [ptr @.str.32.881, ptr @.str.33.882, ptr @.str.34.883, ptr @.str.35.884, ptr @.str.36.885, ptr @.str.37.886, ptr @.str.38.887, ptr @.str.39.888], align 16
@.str.8.909 = private unnamed_addr constant [10 x i8] c"billionth\00", align 1
@.str.9.910 = private unnamed_addr constant [10 x i8] c"millionth\00", align 1
@.str.10.911 = private unnamed_addr constant [11 x i8] c"thousandth\00", align 1
@.str.11.912 = private unnamed_addr constant [10 x i8] c"hundredth\00", align 1
@Ord_twenties = internal unnamed_addr constant [8 x ptr] [ptr @.str.40.933, ptr @.str.41.934, ptr @.str.42.935, ptr @.str.43.936, ptr @.str.44.937, ptr @.str.45.938, ptr @.str.46.939, ptr @.str.47.940], align 16
@Ordinals = internal unnamed_addr constant [20 x ptr] [ptr @.str.48.913, ptr @.str.49.914, ptr @.str.50.915, ptr @.str.51.916, ptr @.str.52.917, ptr @.str.53.918, ptr @.str.54.919, ptr @.str.55.920, ptr @.str.56.921, ptr @.str.57.922, ptr @.str.58.923, ptr @.str.59.924, ptr @.str.60.925, ptr @.str.61.926, ptr @.str.62.927, ptr @.str.63.928, ptr @.str.64.929, ptr @.str.65.930, ptr @.str.66.931, ptr @.str.67.932], align 16
@.str.12.889 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@.str.13.890 = private unnamed_addr constant [4 x i8] c"one\00", align 1
@.str.14.891 = private unnamed_addr constant [4 x i8] c"two\00", align 1
@.str.15.892 = private unnamed_addr constant [6 x i8] c"three\00", align 1
@.str.16.893 = private unnamed_addr constant [5 x i8] c"four\00", align 1
@.str.17.894 = private unnamed_addr constant [5 x i8] c"five\00", align 1
@.str.18.895 = private unnamed_addr constant [4 x i8] c"six\00", align 1
@.str.19.896 = private unnamed_addr constant [6 x i8] c"seven\00", align 1
@.str.20.897 = private unnamed_addr constant [6 x i8] c"eight\00", align 1
@.str.21.898 = private unnamed_addr constant [5 x i8] c"nine\00", align 1
@.str.22.899 = private unnamed_addr constant [4 x i8] c"ten\00", align 1
@.str.23.900 = private unnamed_addr constant [7 x i8] c"eleven\00", align 1
@.str.24.901 = private unnamed_addr constant [7 x i8] c"twelve\00", align 1
@.str.25.902 = private unnamed_addr constant [9 x i8] c"thirteen\00", align 1
@.str.26.903 = private unnamed_addr constant [9 x i8] c"fourteen\00", align 1
@.str.27.904 = private unnamed_addr constant [8 x i8] c"fifteen\00", align 1
@.str.28.905 = private unnamed_addr constant [8 x i8] c"sixteen\00", align 1
@.str.29.906 = private unnamed_addr constant [10 x i8] c"seventeen\00", align 1
@.str.30.907 = private unnamed_addr constant [9 x i8] c"eighteen\00", align 1
@.str.31.908 = private unnamed_addr constant [9 x i8] c"nineteen\00", align 1
@.str.32.881 = private unnamed_addr constant [7 x i8] c"twenty\00", align 1
@.str.33.882 = private unnamed_addr constant [7 x i8] c"thirty\00", align 1
@.str.34.883 = private unnamed_addr constant [6 x i8] c"forty\00", align 1
@.str.35.884 = private unnamed_addr constant [6 x i8] c"fifty\00", align 1
@.str.36.885 = private unnamed_addr constant [6 x i8] c"sixty\00", align 1
@.str.37.886 = private unnamed_addr constant [8 x i8] c"seventy\00", align 1
@.str.38.887 = private unnamed_addr constant [7 x i8] c"eighty\00", align 1
@.str.39.888 = private unnamed_addr constant [7 x i8] c"ninety\00", align 1
@.str.40.933 = private unnamed_addr constant [10 x i8] c"twentieth\00", align 1
@.str.41.934 = private unnamed_addr constant [10 x i8] c"thirtieth\00", align 1
@.str.42.935 = private unnamed_addr constant [9 x i8] c"fortieth\00", align 1
@.str.43.936 = private unnamed_addr constant [9 x i8] c"fiftieth\00", align 1
@.str.44.937 = private unnamed_addr constant [9 x i8] c"sixtieth\00", align 1
@.str.45.938 = private unnamed_addr constant [11 x i8] c"seventieth\00", align 1
@.str.46.939 = private unnamed_addr constant [10 x i8] c"eightieth\00", align 1
@.str.47.940 = private unnamed_addr constant [10 x i8] c"ninetieth\00", align 1
@.str.48.913 = private unnamed_addr constant [7 x i8] c"zeroth\00", align 1
@.str.49.914 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.50.915 = private unnamed_addr constant [7 x i8] c"second\00", align 1
@.str.51.916 = private unnamed_addr constant [6 x i8] c"third\00", align 1
@.str.52.917 = private unnamed_addr constant [7 x i8] c"fourth\00", align 1
@.str.53.918 = private unnamed_addr constant [6 x i8] c"fifth\00", align 1
@.str.54.919 = private unnamed_addr constant [6 x i8] c"sixth\00", align 1
@.str.55.920 = private unnamed_addr constant [8 x i8] c"seventh\00", align 1
@.str.56.921 = private unnamed_addr constant [7 x i8] c"eighth\00", align 1
@.str.57.922 = private unnamed_addr constant [6 x i8] c"ninth\00", align 1
@.str.58.923 = private unnamed_addr constant [6 x i8] c"tenth\00", align 1
@.str.59.924 = private unnamed_addr constant [9 x i8] c"eleventh\00", align 1
@.str.60.925 = private unnamed_addr constant [8 x i8] c"twelfth\00", align 1
@.str.61.926 = private unnamed_addr constant [11 x i8] c"thirteenth\00", align 1
@.str.62.927 = private unnamed_addr constant [11 x i8] c"fourteenth\00", align 1
@.str.63.928 = private unnamed_addr constant [10 x i8] c"fifteenth\00", align 1
@.str.64.929 = private unnamed_addr constant [10 x i8] c"sixteenth\00", align 1
@.str.65.930 = private unnamed_addr constant [12 x i8] c"seventeenth\00", align 1
@.str.66.931 = private unnamed_addr constant [11 x i8] c"eighteenth\00", align 1
@.str.67.932 = private unnamed_addr constant [11 x i8] c"nineteenth\00", align 1
@.str.941 = private unnamed_addr constant [61 x i8] c"$Id: text.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@text_id = dso_local local_unnamed_addr global ptr @.str.941, align 8
@Rules = dso_local local_unnamed_addr global [27 x ptr] [ptr @punct_rules, ptr @A_rules, ptr @B_rules, ptr @C_rules, ptr @D_rules, ptr @E_rules, ptr @F_rules, ptr @G_rules, ptr @H_rules, ptr @I_rules, ptr @J_rules, ptr @K_rules, ptr @L_rules, ptr @M_rules, ptr @N_rules, ptr @O_rules, ptr @P_rules, ptr @Q_rules, ptr @R_rules, ptr @S_rules, ptr @T_rules, ptr @U_rules, ptr @V_rules, ptr @W_rules, ptr @X_rules, ptr @Y_rules, ptr @Z_rules], align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.944 = private unnamed_addr constant [42 x i8] c"Error: Can't find rule for: '%c' in \22%s\22\0A\00", align 1
@.str.2.946 = private unnamed_addr constant [29 x i8] c"Bad char in left rule: '%c'\0A\00", align 1
@.str.3.945 = private unnamed_addr constant [29 x i8] c"Bad char in right rule:'%c'\0A\00", align 1
@.str.947 = private unnamed_addr constant [61 x i8] c"$Id: trie.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@trie_id = dso_local local_unnamed_addr global ptr @.str.947, align 8
@str = private unnamed_addr constant [57 x i8] c"Warning: glottal open period cannot exceed T0, truncated\00", align 1
@str.23 = private unnamed_addr constant [52 x i8] c"Warning: minimum glottal open period is 10 samples.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @au_header(i32 noundef %fd, i32 noundef %enc, i32 noundef %rate, i32 noundef %size, ptr nofree noundef %comment) local_unnamed_addr #0 {
entry:
  %tobool.i.not = icmp eq ptr %comment, null
  %spec.select = select i1 %tobool.i.not, ptr @.str.74, ptr %comment
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef 779316836) #29
  %call = tail call i64 @strlen(ptr nofree noundef nonnull readonly dereferenceable(1) %spec.select) #30
  %add = add i64 %call, 24
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef %add) #29
  %conv = zext i32 %size to i64
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef %conv) #29
  %conv1 = zext i32 %enc to i64
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef %conv1) #29
  %conv2 = zext i32 %rate to i64
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef %conv2) #29
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef 1) #29
  %call3 = tail call i64 @strlen(ptr nofree noundef nonnull readonly dereferenceable(1) %spec.select) #31
  %call4 = tail call i64 @write(i32 noundef %fd, ptr noundef nonnull %spec.select, i64 noundef %call3) #29
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @wblong(i32 noundef %fd, i64 noundef %x) unnamed_addr #0 {
entry:
  %byte = alloca i8, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %.sink = phi i32 [ 24, %entry ], [ %sub, %for.inc ]
  %cmp = icmp sgt i32 %.sink, -1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull %byte) #32
  %sh_prom = zext nneg i32 %.sink to i64
  %shr = lshr i64 %x, %sh_prom
  %conv = trunc i64 %shr to i8
  store i8 %conv, ptr %byte, align 1, !tbaa !5
  %call = call i64 @write(i32 noundef %fd, ptr noundef nonnull %byte, i64 noundef 1) #29
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull %byte) #29
  %sub = add nsw i32 %.sink, -8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #1

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @file_init(i32 noundef %argc, ptr nofree noundef captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, i32, ptr, ...) @getargs(ptr nofree noundef nonnull dereferenceable(12) @.str.1.75, i32 noundef %argc, ptr nofree noundef captures(none) %argv, ptr noundef nonnull dereferenceable(2) @.str.2.76, ptr noundef nonnull dereferenceable(1) @.str.74, ptr noundef nonnull align 8 dereferenceable(8) @linear_file, ptr noundef nonnull dereferenceable(27) @.str.3.77, ptr noundef nonnull dereferenceable(2) @.str.4.78, ptr noundef nonnull dereferenceable(1) @.str.74, ptr noundef nonnull align 8 dereferenceable(8) @au_file, ptr noundef nonnull dereferenceable(25) @.str.5.79, ptr noundef null) #29
  %0 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = tail call fastcc i1 @outlined_ir_func_3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) @au_file, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) @au_fd) #29
  br i1 %1, label %if.end31, label %if.end9

if.end9:                                          ; preds = %if.end
  %2 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp10 = icmp sgt i32 %2, -1
  br i1 %cmp10, label %if.then11, label %if.end31

if.then11:                                        ; preds = %if.end9
  %3 = load i64, ptr @samp_rate, align 8, !tbaa !12
  %cmp12 = icmp sgt i64 %3, 8000
  %. = select i1 %cmp12, i32 3, i32 1
  store i1 %cmp12, ptr @au_encoding, align 4
  %conv = trunc i64 %3 to i32
  tail call void @au_header(i32 noundef %2, i32 noundef %., i32 noundef %conv, i32 noundef -1, ptr nofree noundef nonnull dereferenceable(1) @.str.74) #29
  store i32 0, ptr @au_size, align 4, !tbaa !10
  br label %if.end31

if.end31:                                         ; preds = %if.end, %if.then11, %if.end9
  %4 = tail call fastcc i1 @outlined_ir_func_3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) @linear_file, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) @linear_fd) #29
  %5 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp32 = icmp sgt i32 %5, -1
  %6 = load i32, ptr @linear_fd, align 4
  %cmp34 = icmp sgt i32 %6, -1
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp34
  br i1 %or.cond, label %if.then36, label %return

if.then36:                                        ; preds = %if.end31
  store ptr @aufile_write, ptr @file_write, align 8, !tbaa !14
  store ptr @aufile_term, ptr @file_term, align 8, !tbaa !14
  br label %return

return:                                           ; preds = %if.end31, %if.then36, %entry
  ret i32 %call
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @open(ptr noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold
declare void @perror(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @aufile_write(i32 noundef %n, ptr noundef %data) #0 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end55

if.then:                                          ; preds = %entry
  %0 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %cmp1 = icmp sgt i32 %0, -1
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  %1 = shl nuw i32 %n, 1
  %mul = zext i32 %1 to i64
  %call = tail call i64 @write(i32 noundef %0, ptr noundef %data, i64 noundef %mul) #29
  %cmp7.not = icmp eq i64 %call, %mul
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then2
  tail call void @perror(ptr noundef nonnull @.str.7.81) #33
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.then9, %if.then
  %2 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp11 = icmp sgt i32 %2, -1
  br i1 %cmp11, label %if.then13, label %if.end55

if.then13:                                        ; preds = %if.end10
  %.b1 = load i1, ptr @au_encoding, align 4
  br i1 %.b1, label %if.then16, label %if.then31

if.then16:                                        ; preds = %if.then13
  %3 = shl nuw i32 %n, 1
  %conv21 = zext i32 %3 to i64
  %call22 = tail call i64 @write(i32 noundef %2, ptr noundef %data, i64 noundef %conv21) #29
  %cmp24.not = icmp eq i64 %call22, %conv21
  br i1 %cmp24.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then16
  tail call void @perror(ptr noundef nonnull @.str.7.81) #33
  br label %if.end55

if.else:                                          ; preds = %if.then16
  %4 = load i32, ptr @au_size, align 4, !tbaa !10
  %add = add i32 %4, %3
  store i32 %add, ptr @au_size, align 4, !tbaa !10
  br label %if.end55

if.then31:                                        ; preds = %if.then13
  %conv32 = zext nneg i32 %n to i64
  %call33 = tail call noalias ptr @malloc(i64 noundef %conv32) #34
  %tobool.i.not = icmp eq ptr %call33, null
  br i1 %tobool.i.not, label %if.else48, label %if.then34

if.then34:                                        ; preds = %if.then31
  %add.ptr = getelementptr inbounds nuw i8, ptr %call33, i64 %conv32
  %5 = load ptr, ptr @_l2u, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then34
  %data.addr.0 = phi ptr [ %data, %if.then34 ], [ %incdec.ptr, %while.body ]
  %p.0 = phi ptr [ %call33, %if.then34 ], [ %incdec.ptr38, %while.body ]
  %cmp35 = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %data.addr.0, i64 2
  %6 = load i16, ptr %data.addr.0, align 2, !tbaa !16, !invariant.load !18
  %7 = ashr i16 %6, 3
  %idxprom = sext i16 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !18
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  store i8 %8, ptr %p.0, align 1, !tbaa !5
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr @au_fd, align 4, !tbaa !10
  %call40 = tail call i64 @write(i32 noundef %9, ptr noundef nonnull %call33, i64 noundef %conv32) #29
  %cmp42.not = icmp eq i64 %call40, %conv32
  br i1 %cmp42.not, label %if.else45, label %if.then44

if.then44:                                        ; preds = %while.end
  tail call void @outlined_ir_func_1.22(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) @au_file) #29
  br label %if.end47

if.else45:                                        ; preds = %while.end
  %10 = load i32, ptr @au_size, align 4, !tbaa !10
  %add46 = add i32 %10, %n
  store i32 %add46, ptr @au_size, align 4, !tbaa !10
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.else45
  tail call void @free(ptr noundef nonnull %call33) #29
  br label %if.end55

if.else48:                                        ; preds = %if.then31
  tail call fastcc void @outlined_ir_func_2.20(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) @program, ptr noundef nonnull dereferenceable(30) @.str.8.82) #29
  br label %if.end55

if.end55:                                         ; preds = %if.else48, %if.end47, %if.then26, %if.else, %if.end10, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @aufile_term() #0 {
entry:
  %0 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #29
  %cmp1 = icmp sgt i64 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.then
  %1 = load i32, ptr @au_fd, align 4, !tbaa !10
  %call3 = tail call i32 @ftruncate(i32 noundef %1, i64 noundef %call) #29
  %2 = load i32, ptr @au_fd, align 4, !tbaa !10
  %call4 = tail call i64 @lseek(i32 noundef %2, i64 noundef 8, i32 noundef 0) #29
  %cmp5 = icmp eq i64 %call4, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then2
  %3 = load i32, ptr @au_fd, align 4, !tbaa !10
  %4 = load i32, ptr @au_size, align 4, !tbaa !10
  %conv = zext i32 %4 to i64
  tail call fastcc void @wblong(i32 noundef %3, i64 noundef %conv) #29
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.then6, %if.then
  tail call fastcc void @outlined_ir_func_10(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) @au_fd) #29
  br label %if.end13

if.end13:                                         ; preds = %if.end7, %entry
  %5 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %cmp14 = icmp sgt i32 %5, -1
  br i1 %cmp14, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i64 @lseek(i32 noundef %5, i64 noundef 0, i32 noundef 1) #29
  %call18 = tail call i32 @ftruncate(i32 noundef %5, i64 noundef %call17) #29
  tail call fastcc void @outlined_ir_func_10(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) @linear_fd) #29
  br label %if.end24

if.end24:                                         ; preds = %if.then16, %if.end13
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @close(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noreturn nounwind
declare void @abort() local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @darray_free(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %a) local_unnamed_addr #0 {
entry:
  %targetBlock = tail call fastcc i1 @outlined_ir_func_11(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %a) #29
  br i1 %targetBlock, label %if.end, label %entry_after_outline

entry_after_outline:                              ; preds = %entry
  store ptr null, ptr %a, align 8, !tbaa !20
  br label %if.end

if.end:                                           ; preds = %entry, %entry_after_outline
  %alloc = getelementptr inbounds nuw i8, ptr %a, i64 12
  store i32 0, ptr %alloc, align 4, !tbaa !23
  %items = getelementptr inbounds nuw i8, ptr %a, i64 8
  store i32 0, ptr %items, align 8, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Darray_find(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %alloc = getelementptr inbounds nuw i8, ptr %a, i64 12
  %0 = load i32, ptr %alloc, align 4, !tbaa !23
  %cmp.not = icmp ult i32 %n, %0
  %1 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %2 = load i32, ptr %1, align 8, !tbaa !24, !invariant.load !18
  br i1 %cmp.not, label %lor.lhs.false, label %if.then

lor.lhs.false:                                    ; preds = %entry
  %cmp1.not = icmp ult i32 %n, %2
  br i1 %cmp1.not, label %lor.lhs.false.if.end53_crit_edge, label %if.then.thread

lor.lhs.false.if.end53_crit_edge:                 ; preds = %lor.lhs.false
  %.pre = load ptr, ptr %a, align 8, !tbaa !20, !invariant.load !18
  %esize55.phi.trans.insert = getelementptr inbounds nuw i8, ptr %a, i64 16
  %.pre20 = load i16, ptr %esize55.phi.trans.insert, align 8, !tbaa !25, !invariant.load !18
  br label %if.end53

if.then:                                          ; preds = %entry
  %esize = getelementptr inbounds nuw i8, ptr %a, i64 16
  %3 = load i16, ptr %esize, align 8, !tbaa !25, !invariant.load !18
  %conv = zext i16 %3 to i32
  %mul = mul i32 %2, %conv
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.then4, label %if.then8

if.then.thread:                                   ; preds = %lor.lhs.false
  %esize7 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %4 = load i16, ptr %esize7, align 8, !tbaa !25, !invariant.load !18
  %tobool11.not = icmp eq i16 %4, 0
  br i1 %tobool11.not, label %if.then4, label %if.else34

if.then4:                                         ; preds = %if.then.thread, %if.then
  tail call void @abort() #35
  unreachable

if.then8:                                         ; preds = %if.then
  %get = getelementptr inbounds nuw i8, ptr %a, i64 18
  %5 = load i16, ptr %get, align 2, !tbaa !26, !invariant.load !18
  %narrow = tail call range(i16 1, 0) i16 @llvm.umax.i16(i16 %5, i16 noundef 1)
  %spec.select = zext i16 %narrow to i32
  %add13 = add i32 %n, %spec.select
  %mul16 = mul i32 %add13, %conv
  %conv17 = zext i32 %mul16 to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv17) #34
  %tobool18.not = icmp eq ptr %call, null
  br i1 %tobool18.not, label %return, label %if.then19

if.then19:                                        ; preds = %if.then8
  %tobool20.not = icmp eq i32 %mul, 0
  br i1 %tobool20.not, label %cleanup.cont, label %if.then21

if.then21:                                        ; preds = %if.then19
  %6 = load ptr, ptr %a, align 8, !tbaa !20, !invariant.load !18
  %conv22 = zext i32 %mul to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call, ptr align 1 %6, i64 %conv22, i1 noundef false)
  br label %cleanup.cont

cleanup.cont:                                     ; preds = %if.then19, %if.then21
  %targetBlock = tail call fastcc i1 @outlined_ir_func_11(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %a) #29
  store ptr %call, ptr %a, align 8, !tbaa !20
  store i32 %add13, ptr %alloc, align 4, !tbaa !23
  br label %if.end39

if.else34:                                        ; preds = %if.then.thread
  %conv8 = zext i16 %4 to i32
  %mul9 = mul i32 %2, %conv8
  %add35 = add nuw i32 %n, 1
  %mul38 = mul i32 %add35, %conv8
  %.pre19.pre = load ptr, ptr %a, align 8, !tbaa !20, !invariant.load !18
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %cleanup.cont
  %.pre19 = phi ptr [ %call, %cleanup.cont ], [ %.pre19.pre, %if.else34 ]
  %7 = phi i16 [ %3, %cleanup.cont ], [ %4, %if.else34 ]
  %mul1316 = phi i32 [ %mul, %cleanup.cont ], [ %mul9, %if.else34 ]
  %nsize.0 = phi i32 [ %mul16, %cleanup.cont ], [ %mul38, %if.else34 ]
  %cmp41.not = icmp ult i32 %n, %2
  br i1 %cmp41.not, label %if.end53, label %if.then43

if.then43:                                        ; preds = %if.end39
  %idx.ext = zext i32 %mul1316 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %.pre19, i64 %idx.ext
  %sub = sub i32 %nsize.0, %mul1316
  %conv45 = zext i32 %sub to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 noundef 0, i64 %conv45, i1 noundef false)
  %add46 = add i32 %n, 1
  store i32 %add46, ptr %1, align 8, !tbaa !24
  br label %if.end53

if.end53:                                         ; preds = %lor.lhs.false.if.end53_crit_edge, %if.then43, %if.end39
  %8 = phi i16 [ %.pre20, %lor.lhs.false.if.end53_crit_edge ], [ %7, %if.then43 ], [ %7, %if.end39 ]
  %9 = phi ptr [ %.pre, %lor.lhs.false.if.end53_crit_edge ], [ %.pre19, %if.then43 ], [ %.pre19, %if.end39 ]
  %conv56 = zext i16 %8 to i32
  %mul57 = mul i32 %n, %conv56
  %idx.ext58 = zext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds nuw i8, ptr %9, i64 %idx.ext58
  br label %return

return:                                           ; preds = %if.then8, %if.end53
  %retval.0 = phi ptr [ %add.ptr59, %if.end53 ], [ null, %if.then8 ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local noundef range(i32 0, 2) i32 @darray_delete(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %alloc.i.i = getelementptr inbounds nuw i8, ptr %a, i64 12
  %0 = load i32, ptr %alloc.i.i, align 4, !tbaa !23, !invariant.load !18, !noalias !27
  %cmp.i.i = icmp ult i32 %n, %0
  %items.i.i = getelementptr inbounds nuw i8, ptr %a, i64 8
  %1 = load i32, ptr %items.i.i, align 8, !noalias !27
  %cmp1.i.i = icmp ult i32 %n, %1
  %or.cond.i.i = select i1 %cmp.i.i, i1 %cmp1.i.i, i1 false
  br i1 %or.cond.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %entry
  %2 = load ptr, ptr %a, align 8, !tbaa !20, !invariant.load !18, !noalias !27
  %esize.i.i = getelementptr inbounds nuw i8, ptr %a, i64 16
  %3 = load i16, ptr %esize.i.i, align 8, !tbaa !25, !invariant.load !18, !noalias !27
  %conv.i.i = zext i16 %3 to i32
  %mul.i.i = mul i32 %n, %conv.i.i
  %idx.ext.i.i = zext i32 %mul.i.i to i64
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %2, i64 %idx.ext.i.i
  br label %darray_find.exit

if.end.i.i:                                       ; preds = %entry
  %call.i.i = tail call ptr @Darray_find(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %a, i32 noundef %n) #29, !noalias !27
  br label %darray_find.exit

darray_find.exit:                                 ; preds = %if.then.i.i, %if.end.i.i
  %storemerge.i.i = phi ptr [ %call.i.i, %if.end.i.i ], [ %add.ptr.i.i, %if.then.i.i ]
  %tobool.not = icmp eq ptr %storemerge.i.i, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %darray_find.exit
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %dec = add i32 %1, -1
  store i32 %dec, ptr %items.i.i, align 8, !tbaa !24
  %4 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %5 = load i16, ptr %4, align 8, !tbaa !25, !invariant.load !18
  %conv12 = zext i16 %5 to i64
  %umax = call i32 @llvm.umax.i32(i32 %1, i32 noundef %n)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %n.addr.0 = phi i32 [ %n, %if.then2 ], [ %inc, %while.body ]
  %p.0 = phi ptr [ %storemerge.i.i, %if.then2 ], [ %add.ptr, %while.body ]
  %exitcond.not = icmp eq i32 %n.addr.0, %umax
  br i1 %exitcond.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %inc = add i32 %n.addr.0, 1
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 %conv12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %p.0, ptr align 1 %add.ptr, i64 %conv12, i1 noundef false)
  br label %while.cond, !llvm.loop !31

while.end:                                        ; preds = %while.cond
  tail call void @llvm.memset.p0.i64(ptr align 1 %p.0, i8 noundef 0, i64 %conv12, i1 noundef false)
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @abort() #35
  unreachable

cleanup:                                          ; preds = %darray_find.exit, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %darray_find.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @init_synth(i32 noundef %argc, ptr nofree noundef captures(none) %argv) local_unnamed_addr #0 {
entry:
  %mSec_per_frame = alloca double, align 8
  %impulse = alloca i32, align 4
  %casc = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %mSec_per_frame) #36
  store double 1.000000e+01, ptr %mSec_per_frame, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %impulse) #36
  store i32 0, ptr %impulse, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %casc) #36
  store i32 0, ptr %casc, align 4, !tbaa !10
  %0 = load i64, ptr @samp_rate, align 8, !tbaa !12
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 16), align 8, !tbaa !34
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 4), align 4, !tbaa !36
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 32), align 8, !tbaa !37
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 8), align 8, !tbaa !38
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr nofree noundef nonnull dereferenceable(16) @.str.1.85, i32 noundef %argc, ptr nofree noundef captures(none) %argv, ptr noundef nonnull dereferenceable(2) @.str.2.86, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(44) getelementptr inbounds nuw (i8, ptr @klatt_global, i64 4), ptr noundef nonnull dereferenceable(25) @.str.3.87, ptr noundef nonnull dereferenceable(2) @.str.4.88, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %impulse, ptr noundef nonnull dereferenceable(23) @.str.5.89, ptr noundef nonnull dereferenceable(2) @.str.6.90, ptr noundef nonnull dereferenceable(3) @.str.7.91, ptr noundef nonnull align 4 dereferenceable(4) %casc, ptr noundef nonnull dereferenceable(24) @.str.8.92, ptr noundef nonnull dereferenceable(2) @.str.9.93, ptr noundef nonnull dereferenceable(3) @.str.7.91, ptr noundef nonnull align 8 dereferenceable(40) getelementptr inbounds nuw (i8, ptr @klatt_global, i64 8), ptr noundef nonnull dereferenceable(11) @.str.10.94, ptr noundef nonnull dereferenceable(2) @.str.11.95, ptr noundef nonnull dereferenceable(4) @.str.12.96, ptr noundef nonnull align 8 dereferenceable(8) %mSec_per_frame, ptr noundef nonnull dereferenceable(15) @.str.13.97, ptr noundef nonnull dereferenceable(2) @.str.14.98, ptr noundef nonnull dereferenceable(3) @.str.7.91, ptr noundef nonnull align 8 dereferenceable(152) getelementptr inbounds nuw (i8, ptr @def_pars, i64 168), ptr noundef nonnull dereferenceable(8) @.str.15.99, ptr noundef nonnull dereferenceable(2) @.str.16.100, ptr noundef nonnull dereferenceable(3) @.str.7.91, ptr noundef nonnull align 8 dereferenceable(320) @def_pars, ptr noundef nonnull dereferenceable(17) @.str.17.101, ptr noundef null) #29
  %1 = load i32, ptr %casc, align 4, !tbaa !10
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = zext nneg i32 %1 to i64
  store i64 %conv, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 24), align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %.sink = phi i32 [ 1, %if.then ], [ 2, %entry ]
  store i32 %.sink, ptr @klatt_global, align 8, !tbaa !40
  %2 = load i32, ptr %impulse, align 4, !tbaa !10
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 32), align 8, !tbaa !37
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 16), align 8, !tbaa !34
  %conv3 = sitofp i64 %3 to double
  %4 = load double, ptr %mSec_per_frame, align 8, !tbaa !32
  %mul = fmul double %4, %conv3
  %div = fdiv double %mul, 1.000000e+03
  %conv4 = fptosi double %div to i64
  store i64 %conv4, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 40), align 8, !tbaa !41
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %casc) #36
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %impulse) #36
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %mSec_per_frame) #36
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef align 4294967296 ptr @dict_find(ptr nofree readnone captures(none) %s, i32 %n) local_unnamed_addr #10 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @dict_init(i32 noundef returned %argc, ptr nofree readnone captures(none) %argv) local_unnamed_addr #10 {
entry:
  ret i32 %argc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dict_term() local_unnamed_addr #10 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getargs(ptr nofree noundef %module, i32 noundef %argc, ptr nofree noundef captures(none) %argv, ...) local_unnamed_addr #0 {
entry:
  %module.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %desc = alloca ptr, align 8
  store ptr %module, ptr %module.addr, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 noundef 24, ptr noundef nonnull align 16 captures(none) dereferenceable(24) %ap) #27
  %overflow_arg_area_p = getelementptr inbounds nuw i8, ptr %ap, i64 8
  %0 = getelementptr inbounds nuw i8, ptr %ap, i64 16
  br label %while.cond

while.cond:                                       ; preds = %if.end212, %entry
  %done_module.0 = phi i32 [ 0, %entry ], [ %done_module.6, %if.end212 ]
  %i.0 = phi i32 [ 0, %entry ], [ %i.2, %if.end212 ]
  %argc.addr.0 = phi i32 [ %argc, %entry ], [ %argc.addr.2, %if.end212 ]
  %cmp = icmp slt i32 %i.0, %argc.addr.0
  br i1 %cmp, label %while.body, label %while.end213

while.body:                                       ; preds = %while.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !42, !invariant.load !18
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %2 = load i8, ptr %1, align 1, !tbaa !5, !invariant.load !18
  %3 = load i8, ptr %incdec.ptr, align 1, !tbaa !5, !invariant.load !18
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else210, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  switch i8 %2, label %if.else210 [
    i8 45, label %if.then
    i8 43, label %if.then
  ]

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true
  %cmp171 = icmp eq i8 %2, 43
  br label %while.cond6

while.cond6:                                      ; preds = %cleanup.cont194, %if.then
  %4 = phi i8 [ %3, %if.then ], [ %.pre, %cleanup.cont194 ]
  %off.0 = phi i32 [ 1, %if.then ], [ %off.4, %cleanup.cont194 ]
  %s.0 = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr130, %cleanup.cont194 ]
  %done_module.1 = phi i32 [ %done_module.0, %if.then ], [ %done_module.2, %cleanup.cont194 ]
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %while.end195, label %while.body8

while.body8:                                      ; preds = %while.cond6
  call void @llvm.va_start.p0(ptr noundef nonnull align 16 dereferenceable(24) %ap) #37
  %overflow_arg_area22.i = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next23.i = getelementptr i8, ptr %overflow_arg_area22.i, i64 8
  %overflow_arg_area.next23.i15 = getelementptr i8, ptr %overflow_arg_area22.i, i64 16
  %overflow_arg_area.next23.i25 = getelementptr i8, ptr %overflow_arg_area22.i, i64 24
  %reg_save_area19.i = load ptr, ptr %0, align 16
  br label %while.cond9

while.cond9:                                      ; preds = %cleanup.cont, %while.body8
  %done_module.2 = phi i32 [ %done_module.1, %while.body8 ], [ %done_module.3, %cleanup.cont ]
  %gp_offset = load i32, ptr %ap, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.end, label %vaarg.end.thread

vaarg.end:                                        ; preds = %while.cond9
  %reg_save_area = load ptr, ptr %0, align 16
  %5 = zext nneg i32 %gp_offset to i64
  %6 = getelementptr i8, ptr %reg_save_area, i64 %5
  %7 = add nuw nsw i32 %gp_offset, 8
  store i32 %7, ptr %ap, align 16
  %8 = load ptr, ptr %6, align 8, !tbaa !42, !invariant.load !18
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %while.end195.thread, label %vaarg.in_reg18.i27

vaarg.end.thread:                                 ; preds = %while.cond9
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i64 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  %9 = load ptr, ptr %overflow_arg_area, align 8, !tbaa !42, !invariant.load !18
  %tobool11.not98 = icmp eq ptr %9, null
  br i1 %tobool11.not98, label %while.end195.thread, label %vaarg.in_mem20.i22

vaarg.in_reg18.i27:                               ; preds = %vaarg.end
  %call = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %8) #31
  %10 = zext nneg i32 %gp_offset to i64
  %11 = getelementptr i8, ptr %reg_save_area19.i, i64 %10
  %12 = add nuw nsw i32 %gp_offset, 8
  %13 = load ptr, ptr %11, align 8, !tbaa !42, !invariant.load !18, !noalias !43
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %desc) #27
  store i32 %12, ptr %ap, align 16, !noalias !46
  br label %outlined_ir_func_2.exit29

vaarg.in_mem20.i22:                               ; preds = %vaarg.end.thread
  %call99 = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %9) #31
  %14 = load ptr, ptr %overflow_arg_area22.i, align 8, !tbaa !42, !invariant.load !18, !noalias !43
  %15 = load ptr, ptr %overflow_arg_area.next23.i, align 8, !tbaa !42, !invariant.load !18, !noalias !49
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %desc) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  store ptr %overflow_arg_area.next23.i25, ptr %overflow_arg_area_p, align 8, !noalias !46
  %.pre96 = load ptr, ptr %overflow_arg_area.next23.i15, align 8, !tbaa !42, !invariant.load !18, !noalias !46
  br label %outlined_ir_func_2.exit29

outlined_ir_func_2.exit29:                        ; preds = %vaarg.in_reg18.i27, %vaarg.in_mem20.i22
  %call101 = phi i64 [ %call, %vaarg.in_reg18.i27 ], [ %call99, %vaarg.in_mem20.i22 ]
  %16 = phi ptr [ %8, %vaarg.in_reg18.i27 ], [ %9, %vaarg.in_mem20.i22 ]
  %17 = phi ptr [ %13, %vaarg.in_reg18.i27 ], [ %.pre96, %vaarg.in_mem20.i22 ]
  %18 = phi ptr [ %13, %vaarg.in_reg18.i27 ], [ %15, %vaarg.in_mem20.i22 ]
  %19 = phi ptr [ %13, %vaarg.in_reg18.i27 ], [ %14, %vaarg.in_mem20.i22 ]
  store ptr %17, ptr %desc, align 8, !tbaa !42, !alias.scope !46
  %call50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s.0, ptr noundef nonnull dereferenceable(6) @.str.1.447) #31
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.else86

if.then52:                                        ; preds = %outlined_ir_func_2.exit29
  store i32 1, ptr @help_only, align 4, !tbaa !10
  %inc = add nsw i32 %done_module.2, 1
  %tobool53.not = icmp eq i32 %done_module.2, 0
  br i1 %tobool53.not, label %if.then54, label %if.end

if.then54:                                        ; preds = %if.then52
  call fastcc void @outlined_ir_func_2.20(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %module.addr, ptr noundef nonnull dereferenceable(5) @.str.2.448) #29
  br label %if.end

if.end:                                           ; preds = %if.then54, %if.then52
  %tobool.i.not = icmp eq ptr %19, null
  br i1 %tobool.i.not, label %if.else81, label %if.then57

if.then57:                                        ; preds = %if.end
  %call58 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 37) #30
  %tobool59.not = icmp eq ptr %call58, null
  %20 = load ptr, ptr @stderr, align 8, !tbaa !52
  br i1 %tobool59.not, label %if.else77, label %if.then60

if.then60:                                        ; preds = %if.then57
  %add.ptr = getelementptr inbounds nuw i8, ptr %call58, i64 1
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.3.449, ptr noundef nonnull %16, ptr noundef nonnull %add.ptr) #33
  %call62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call58) #30
  %add.ptr63 = getelementptr inbounds nuw i8, ptr %call58, i64 %call62
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr63, i64 -1
  %21 = load i8, ptr %add.ptr64, align 1, !tbaa !5
  switch i8 %21, label %sw.epilog [
    i8 101, label %sw.bb
    i8 102, label %sw.bb
    i8 103, label %sw.bb
    i8 117, label %sw.bb67
    i8 100, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.then60, %if.then60, %if.then60
  %22 = load ptr, ptr @stderr, align 8, !tbaa !52
  %23 = load double, ptr %18, align 8, !tbaa !32, !invariant.load !18
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull %19, double noundef %23) #33
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then60, %if.then60
  %24 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %cmp70 = icmp eq i8 %24, 108
  %25 = load ptr, ptr @stderr, align 8, !tbaa !52
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %sw.bb67
  %26 = load i64, ptr %18, align 8, !tbaa !12, !invariant.load !18
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull %19, i64 noundef %26) #33
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb67
  %27 = load i32, ptr %18, align 4, !tbaa !10, !invariant.load !18
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull %19, i32 noundef %27) #33
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then72, %if.else, %sw.bb, %if.then60
  call fastcc void @outlined_ir_func_2.20(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %desc, ptr noundef nonnull dereferenceable(6) @.str.4.450) #29
  br label %cleanup.cont

if.else77:                                        ; preds = %if.then57
  %28 = load ptr, ptr %18, align 8, !tbaa !42, !invariant.load !18
  %tobool78.not = icmp eq ptr %28, null
  %spec.select = select i1 %tobool78.not, ptr @.str.6.451, ptr %28
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.5.452, ptr noundef nonnull %16, ptr noundef nonnull %spec.select, ptr noundef %17) #33
  br label %cleanup.cont

if.else81:                                        ; preds = %if.end
  %29 = load ptr, ptr @stderr, align 8, !tbaa !52
  %30 = load i32, ptr %18, align 4, !tbaa !10, !invariant.load !18
  %tobool82.not = icmp eq i32 %30, 0
  %cond83 = select i1 %tobool82.not, ptr @.str.9.454, ptr @.str.8.453
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.7.455, ptr noundef nonnull %16, ptr noundef nonnull %cond83, ptr noundef %17) #33
  br label %cleanup.cont

if.else86:                                        ; preds = %outlined_ir_func_2.exit29
  %conv13103 = trunc i64 %call101 to i32
  %cmp87 = icmp sgt i32 %conv13103, 1
  br i1 %cmp87, label %land.lhs.true91, label %if.else132

land.lhs.true91:                                  ; preds = %if.else86
  %call92 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s.0, ptr noundef nonnull dereferenceable(1) %16) #30
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %cleanup.cont

if.then94:                                        ; preds = %land.lhs.true91
  %tobool95.not = icmp eq ptr %19, null
  br i1 %tobool95.not, label %if.else121, label %if.then96

if.then96:                                        ; preds = %if.then94
  %add = add nsw i32 %off.0, %i.0
  %cmp97 = icmp slt i32 %add, %argc.addr.0
  br i1 %cmp97, label %if.then99, label %if.else117

if.then99:                                        ; preds = %if.then96
  %inc101 = add nsw i32 %off.0, 1
  %idxprom103 = sext i32 %add to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom103
  %31 = load ptr, ptr %arrayidx104, align 8, !tbaa !42
  %call105 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 37) #30
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %if.else115, label %if.then107

if.then107:                                       ; preds = %if.then99
  %call108 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %31, ptr noundef nonnull %19, ptr noundef %18) #29
  %cmp109.not = icmp eq i32 %call108, 1
  br i1 %cmp109.not, label %if.end128, label %if.then111

if.then111:                                       ; preds = %if.then107
  %32 = load ptr, ptr @stderr, align 8, !tbaa !52
  %33 = load ptr, ptr %argv, align 8, !tbaa !42
  %call113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.10.456, ptr noundef %33, ptr noundef %31, ptr noundef nonnull %16) #33
  br label %if.end128

if.else115:                                       ; preds = %if.then99
  store ptr %31, ptr %18, align 8, !tbaa !42
  br label %if.end128

if.else117:                                       ; preds = %if.then96
  %34 = load ptr, ptr @stderr, align 8, !tbaa !52
  %35 = load ptr, ptr %argv, align 8, !tbaa !42
  %call119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull @.str.11.457, ptr noundef %35, ptr noundef nonnull %16) #33
  br label %if.end128

if.else121:                                       ; preds = %if.then94
  br i1 %cmp171, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.else121
  store i32 1, ptr %18, align 4, !tbaa !10
  br label %if.end128

if.else125:                                       ; preds = %if.else121
  %36 = load i32, ptr %18, align 4, !tbaa !10, !invariant.load !18
  %tobool126.not = icmp eq i32 %36, 0
  %lnot.ext = zext i1 %tobool126.not to i32
  store i32 %lnot.ext, ptr %18, align 4, !tbaa !10
  br label %if.end128

if.end128:                                        ; preds = %if.else115, %if.then111, %if.then107, %if.then124, %if.else125, %if.else117
  %off.2 = phi i32 [ %off.0, %if.else117 ], [ %off.0, %if.then124 ], [ %off.0, %if.else125 ], [ %inc101, %if.then107 ], [ %inc101, %if.then111 ], [ %inc101, %if.else115 ]
  %idx.ext = and i64 %call101, 2147483647
  br label %cleanup.cont194

if.else132:                                       ; preds = %if.else86
  %37 = load i8, ptr %16, align 1, !tbaa !5, !invariant.load !18
  %cmp135 = icmp eq i8 %4, %37
  br i1 %cmp135, label %if.then137, label %cleanup.cont

if.then137:                                       ; preds = %if.else132
  %tobool138.not = icmp eq ptr %19, null
  br i1 %tobool138.not, label %lor.lhs.false167, label %if.then139

if.then139:                                       ; preds = %if.then137
  %add140 = add nsw i32 %off.0, %i.0
  %cmp141 = icmp slt i32 %add140, %argc.addr.0
  br i1 %cmp141, label %if.then143, label %if.else161

if.then143:                                       ; preds = %if.then139
  %inc145 = add nsw i32 %off.0, 1
  %idxprom147 = sext i32 %add140 to i64
  %arrayidx148 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom147
  %38 = load ptr, ptr %arrayidx148, align 8, !tbaa !42
  %call149 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %19, i32 noundef 37) #30
  %tobool150.not = icmp eq ptr %call149, null
  br i1 %tobool150.not, label %if.else159, label %if.then151

if.then151:                                       ; preds = %if.then143
  %call152 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %38, ptr noundef nonnull %19, ptr noundef %18) #29
  %cmp153.not = icmp eq i32 %call152, 1
  br i1 %cmp153.not, label %cleanup.cont194, label %if.then155

if.then155:                                       ; preds = %if.then151
  %39 = load ptr, ptr @stderr, align 8, !tbaa !52
  %40 = load ptr, ptr %argv, align 8, !tbaa !42
  %call157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.10.456, ptr noundef %40, ptr noundef %38, ptr noundef nonnull %16) #33
  br label %cleanup.cont194

if.else159:                                       ; preds = %if.then143
  store ptr %38, ptr %18, align 8, !tbaa !42
  br label %cleanup.cont194

if.else161:                                       ; preds = %if.then139
  %41 = load ptr, ptr @stderr, align 8, !tbaa !52
  %42 = load ptr, ptr %argv, align 8, !tbaa !42
  %call163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef nonnull @.str.11.457, ptr noundef %42, ptr noundef nonnull %16) #33
  br label %cleanup.cont194

lor.lhs.false167:                                 ; preds = %if.then137
  br i1 %cmp171, label %if.then170, label %if.else173

if.then170:                                       ; preds = %lor.lhs.false167
  store i32 1, ptr %18, align 4, !tbaa !10
  br label %cleanup.cont194

if.else173:                                       ; preds = %lor.lhs.false167
  %43 = load i32, ptr %18, align 4, !tbaa !10, !invariant.load !18
  %tobool174.not = icmp eq i32 %43, 0
  %lnot.ext176 = zext i1 %tobool174.not to i32
  store i32 %lnot.ext176, ptr %18, align 4, !tbaa !10
  br label %cleanup.cont194

cleanup.cont:                                     ; preds = %if.else77, %sw.epilog, %land.lhs.true91, %if.else132, %if.else81
  %done_module.3 = phi i32 [ %done_module.2, %land.lhs.true91 ], [ %done_module.2, %if.else132 ], [ %inc, %if.else81 ], [ %inc, %sw.epilog ], [ %inc, %if.else77 ]
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull captures(none) %desc) #29
  br label %while.cond9, !llvm.loop !54

while.end195.thread:                              ; preds = %vaarg.end.thread, %vaarg.end
  call void @llvm.va_end.p0(ptr noundef nonnull align 16 dereferenceable(24) %ap) #37
  br label %if.else207

cleanup.cont194:                                  ; preds = %if.else161, %if.else173, %if.then170, %if.then151, %if.then155, %if.else159, %if.end128
  %idx.ext.sink = phi i64 [ %idx.ext, %if.end128 ], [ 1, %if.else159 ], [ 1, %if.then155 ], [ 1, %if.then151 ], [ 1, %if.then170 ], [ 1, %if.else173 ], [ 1, %if.else161 ]
  %off.4 = phi i32 [ %off.2, %if.end128 ], [ %inc145, %if.else159 ], [ %inc145, %if.then155 ], [ %inc145, %if.then151 ], [ %off.0, %if.then170 ], [ %off.0, %if.else173 ], [ %off.0, %if.else161 ]
  %add.ptr130 = getelementptr inbounds nuw i8, ptr %s.0, i64 %idx.ext.sink
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull captures(none) %desc) #29
  call void @llvm.va_end.p0(ptr noundef nonnull align 16 dereferenceable(24) %ap) #37
  %.pre = load i8, ptr %add.ptr130, align 1, !tbaa !5, !invariant.load !18
  br label %while.cond6, !llvm.loop !55

while.end195:                                     ; preds = %while.cond6
  %cmp196.not = icmp eq i32 %off.0, 0
  br i1 %cmp196.not, label %if.else207, label %if.then198

if.then198:                                       ; preds = %while.end195
  %sub = sub nsw i32 %argc.addr.0, %off.0
  %44 = sext i32 %sub to i64
  %45 = sext i32 %off.0 to i64
  %invariant.gep = getelementptr ptr, ptr %argv, i64 %45
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then198
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %idxprom, %if.then198 ]
  %cmp199.not = icmp sgt i64 %indvars.iv, %44
  br i1 %cmp199.not, label %if.end212, label %for.body

for.body:                                         ; preds = %for.cond
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv
  %46 = load ptr, ptr %gep, align 8, !tbaa !42, !invariant.load !18
  %arrayidx205 = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv
  store ptr %46, ptr %arrayidx205, align 8, !tbaa !42
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond

if.else207:                                       ; preds = %while.end195.thread, %while.end195
  %done_module.4 = phi i32 [ %done_module.2, %while.end195.thread ], [ %done_module.1, %while.end195 ]
  %inc208 = add nsw i32 %i.0, 1
  br label %if.end212

if.else210:                                       ; preds = %land.lhs.true, %while.body
  %inc211 = add nsw i32 %i.0, 1
  br label %if.end212

if.end212:                                        ; preds = %for.cond, %if.else207, %if.else210
  %done_module.6 = phi i32 [ %done_module.0, %if.else210 ], [ %done_module.4, %if.else207 ], [ %done_module.1, %for.cond ]
  %i.2 = phi i32 [ %inc211, %if.else210 ], [ %inc208, %if.else207 ], [ %i.0, %for.cond ]
  %argc.addr.2 = phi i32 [ %argc.addr.0, %if.else210 ], [ %argc.addr.0, %if.else207 ], [ %sub, %for.cond ]
  br label %while.cond, !llvm.loop !56

while.end213:                                     ; preds = %while.cond
  %47 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool214 = icmp ne i32 %47, 0
  %tobool216 = icmp ne i32 %done_module.0, 0
  %or.cond = select i1 %tobool214, i1 %tobool216, i1 false
  br i1 %or.cond, label %if.then217, label %if.end219

if.then217:                                       ; preds = %while.end213
  %48 = load ptr, ptr @stderr, align 8, !tbaa !52
  %fputc = call i32 @fputc(i32 noundef 10, ptr noundef %48) #29
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %while.end213
  call void @llvm.lifetime.end.p0(i64 noundef 24, ptr noundef nonnull captures(none) %ap) #27
  ret i32 %argc.addr.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: noreturn nounwind uwtable
define dso_local noundef i32 @holmes(i32 noundef %nelm, ptr nofree noundef readnone captures(none) %elm, i32 noundef %nsamp, ptr nofree noundef readnone captures(none) %samp_base) local_unnamed_addr #12 {
entry:
  tail call void @parwave_init(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) @klatt_global) #29
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  br label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nounwind uwtable
define dso_local i32 @init_holmes(i32 noundef %argc, ptr nofree noundef captures(none) %argv) local_unnamed_addr #0 {
entry:
  %par_name = alloca ptr, align 8
  %jsru_name = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %par_name) #36
  store ptr null, ptr %par_name, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %jsru_name) #36
  store ptr null, ptr %jsru_name, align 8, !tbaa !42
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr nofree noundef nonnull dereferenceable(7) @.str.11.470, i32 noundef %argc, ptr nofree noundef captures(none) %argv, ptr noundef nonnull dereferenceable(2) @.str.12.471, ptr noundef nonnull dereferenceable(1) @.str.8.467, ptr noundef nonnull align 8 dereferenceable(8) %par_name, ptr noundef nonnull dereferenceable(24) @.str.13.472, ptr noundef nonnull dereferenceable(2) @.str.14.473, ptr noundef nonnull dereferenceable(1) @.str.8.467, ptr noundef nonnull align 8 dereferenceable(8) %jsru_name, ptr noundef nonnull dereferenceable(32) @.str.15.474, ptr noundef nonnull dereferenceable(2) @.str.16.475, ptr noundef nonnull dereferenceable(3) @.str.17.476, ptr noundef nonnull align 4 dereferenceable(4) @speed, ptr noundef nonnull dereferenceable(24) @.str.18.477, ptr noundef nonnull dereferenceable(2) @.str.19.478, ptr noundef nonnull dereferenceable(4) @.str.20.479, ptr noundef nonnull align 8 dereferenceable(8) @frac, ptr noundef nonnull dereferenceable(28) @.str.21.480, ptr noundef null) #29
  %0 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %if.end14, label %cleanup

if.end14:                                         ; preds = %entry
  call fastcc void @outlined_ir_func_8(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %par_name, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) @par_file) #29
  call fastcc void @outlined_ir_func_8(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %jsru_name, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) @jsru_file) #29
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end14
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %jsru_name) #36
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %par_name) #36
  ret i32 %call
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @term_holmes() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @par_file, align 8, !tbaa !52
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @fclose(ptr noundef nonnull %0) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @jsru_file, align 8, !tbaa !52
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @fclose(ptr noundef nonnull %1) #29
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

declare i32 @fclose(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @audio_init(i32 noundef %argc, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %argv) local_unnamed_addr #0 {
entry:
  %rate_set = alloca i32, align 4
  %use_audio = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %rate_set) #36
  store i32 0, ptr %rate_set, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 captures(none) dereferenceable(4) %use_audio) #36
  store i32 1, ptr %use_audio, align 4, !tbaa !10
  %0 = load ptr, ptr %argv, align 8, !tbaa !42
  store ptr %0, ptr @prog, align 8, !tbaa !42
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr nofree noundef nonnull dereferenceable(12) @.str.2.488, i32 noundef %argc, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %argv, ptr noundef nonnull dereferenceable(2) @.str.3.489, ptr noundef nonnull dereferenceable(3) @.str.4.490, ptr noundef nonnull align 4 dereferenceable(4) %rate_set, ptr noundef nonnull dereferenceable(12) @.str.5.491, ptr noundef nonnull dereferenceable(2) @.str.6.492, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) %use_audio, ptr noundef nonnull dereferenceable(13) @.str.7.493, ptr noundef null) #29
  %1 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %use_audio, align 4, !tbaa !10
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr @dev_file, align 8, !tbaa !42
  %call.i = call i32 (ptr, i32, ...) @open(ptr noundef %3, i32 noundef 2049) #29
  store i32 %call.i, ptr @dev_fd, align 4, !tbaa !10
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end4

if.then.i:                                        ; preds = %if.then2
  call void @outlined_ir_func_1.22(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) @dev_file) #29
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then2, %if.end
  %4 = load i32, ptr %rate_set, align 4, !tbaa !10
  %tobool5.not = icmp eq i32 %4, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  %conv = sext i32 %4 to i64
  store i64 %conv, ptr @samp_rate, align 8, !tbaa !12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %5 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %cmp = icmp sgt i32 %5, 0
  br i1 %cmp, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end7
  %call10 = call i32 (i32, i64, ...) @ioctl(i32 noundef %5, i64 noundef 3221508098, ptr noundef nonnull @samp_rate) #29
  %6 = load i64, ptr @samp_rate, align 8, !tbaa !12
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.494, i64 noundef %6) #29
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9, %entry
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %use_audio) #27
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %rate_set) #27
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #5

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @audio_term() local_unnamed_addr #0 {
entry:
  %dummy = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull %dummy) #36
  %0 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef 20481, ptr noundef nonnull %dummy) #29
  %1 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %call1 = call i32 @close(i32 noundef %1) #29
  store i32 -1, ptr @dev_fd, align 4, !tbaa !10
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %dummy) #36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @audio_play(i32 noundef %n, ptr nofree noundef readnone captures(none) %data) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %conv = zext nneg i32 %n to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #34
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then3, label %for.body

if.then3:                                         ; preds = %if.then
  %0 = load ptr, ptr @stderr, align 8, !tbaa !52
  %1 = tail call i64 @fwrite(ptr noundef nonnull @.str.9.496, i64 noundef 41, i64 noundef 1, ptr noundef %0) #33
  tail call void @exit(i32 noundef 3) #38
  unreachable

for.body:                                         ; preds = %if.then, %for.body
  br label %for.body

if.end33:                                         ; preds = %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @show_parms(ptr nofree noundef readnone captures(none) %globals, ptr nofree noundef readonly captures(none) %pars) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @show_parms.names, align 4, !tbaa !10
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @show_parms.names, align 4, !tbaa !10
  %1 = and i32 %0, 63
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %for.cond, label %if.end

for.cond:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 40
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [40 x ptr], ptr @par_name, i64 0, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !42, !invariant.load !18
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41.539, ptr noundef %2) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %putchar = tail call i32 @putchar(i32 noundef 10) #29
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc13, %if.end
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc13 ], [ 0, %if.end ]
  %exitcond9.not = icmp eq i64 %indvars.iv6, 40
  br i1 %exitcond9.not, label %for.end15, label %for.inc13

for.inc13:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [40 x ptr], ptr @par_name, i64 0, i64 %indvars.iv6
  %3 = load ptr, ptr %arrayidx8, align 8, !tbaa !42, !invariant.load !18
  %call9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #30
  %conv = trunc i64 %call9 to i32
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %pars, i64 %indvars.iv6
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !10, !invariant.load !18
  %call12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43.541, i32 noundef %conv, i32 noundef %4) #29
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond4, !llvm.loop !58

for.end15:                                        ; preds = %for.cond4
  %putchar4 = tail call i32 @putchar(i32 noundef 10) #29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @parwave(ptr nofree noundef captures(none) %globals, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %frame, ptr nofree noundef writeonly captures(none) %jwave) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %frame, align 8, !tbaa !59, !invariant.load !18
  store i64 %0, ptr @F0hz10, align 8, !tbaa !12
  %AVdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 8
  %1 = load i64, ptr %AVdb.i, align 8, !tbaa !61, !invariant.load !18
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 noundef 7)
  %spec.store.select.i = add nsw i64 %2, -7
  store i64 %spec.store.select.i, ptr @AVdb, align 8
  %ASP.i = getelementptr inbounds nuw i8, ptr %frame, i64 144
  %3 = load i64, ptr %ASP.i, align 8, !tbaa !62, !invariant.load !18
  %call.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %3) #29
  %conv.i = fpext float %call.i to double
  %mul.i = fmul double %conv.i, 5.000000e-02
  %conv1.i = fptrunc double %mul.i to float
  store float %conv1.i, ptr @amp_aspir, align 4, !tbaa !63
  %AF.i = getelementptr inbounds nuw i8, ptr %frame, i64 176
  %4 = load i64, ptr %AF.i, align 8, !tbaa !65, !invariant.load !18
  %call2.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %4) #29
  %conv5.i = fmul float %call2.i, 2.500000e-01
  store float %conv5.i, ptr @amp_frica, align 4, !tbaa !63
  %Kskew.i = getelementptr inbounds nuw i8, ptr %frame, i64 184
  %5 = load i64, ptr %Kskew.i, align 8, !tbaa !66, !invariant.load !18
  store i64 %5, ptr @Kskew, align 8, !tbaa !12
  %AVpdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 304
  %6 = load i64, ptr %AVpdb.i, align 8, !tbaa !67, !invariant.load !18
  %call6.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %6) #29
  %A1.i = getelementptr inbounds nuw i8, ptr %frame, i64 192
  %7 = load i64, ptr %A1.i, align 8, !tbaa !68, !invariant.load !18
  %call7.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %7) #29
  %A2.i = getelementptr inbounds nuw i8, ptr %frame, i64 208
  %8 = load i64, ptr %A2.i, align 8, !tbaa !69, !invariant.load !18
  %call11.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %8) #29
  %A3.i = getelementptr inbounds nuw i8, ptr %frame, i64 224
  %9 = load i64, ptr %A3.i, align 8, !tbaa !70, !invariant.load !18
  %call15.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %9) #29
  %A4.i = getelementptr inbounds nuw i8, ptr %frame, i64 240
  %10 = load i64, ptr %A4.i, align 8, !tbaa !71, !invariant.load !18
  %call19.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %10) #29
  %A5.i = getelementptr inbounds nuw i8, ptr %frame, i64 256
  %11 = load i64, ptr %A5.i, align 8, !tbaa !72, !invariant.load !18
  %call23.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %11) #29
  %A6.i = getelementptr inbounds nuw i8, ptr %frame, i64 272
  %12 = load i64, ptr %A6.i, align 8, !tbaa !73, !invariant.load !18
  %call27.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %12) #29
  %ANP.i = getelementptr inbounds nuw i8, ptr %frame, i64 288
  %13 = load i64, ptr %ANP.i, align 8, !tbaa !74, !invariant.load !18
  %call31.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %13) #29
  %AB.i = getelementptr inbounds nuw i8, ptr %frame, i64 296
  %14 = load i64, ptr %AB.i, align 8, !tbaa !75, !invariant.load !18
  %call35.i = tail call fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %14) #29
  %conv36.i = fpext float %call35.i to double
  %mul37.i = fmul double %conv36.i, 5.000000e-02
  %conv38.i = fptrunc double %mul37.i to float
  store float %conv38.i, ptr @amp_bypas, align 4, !tbaa !63
  %nfcascade.i = getelementptr inbounds nuw i8, ptr %globals, i64 24
  %15 = load i64, ptr %nfcascade.i, align 8, !tbaa !39, !invariant.load !18
  %cmp39.i = icmp sgt i64 %15, 7
  br i1 %cmp39.i, label %if.then41.i, label %if.end47.i

if.then41.i:                                      ; preds = %entry
  %samrate.i = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %16 = load i64, ptr %samrate.i, align 8, !tbaa !34, !invariant.load !18
  %cmp42.i = icmp sgt i64 %16, 15999
  br i1 %cmp42.i, label %if.then51.thread.i, label %if.else56.i

if.then51.thread.i:                               ; preds = %if.then41.i
  tail call fastcc void @setabc(i64 noundef 7500, i64 noundef 600, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @r8c) #29
  br label %if.then55.i

if.end47.i:                                       ; preds = %entry
  %cmp49.i = icmp eq i64 %15, 7
  br i1 %cmp49.i, label %if.then51.i, label %if.end59.i

if.then51.i:                                      ; preds = %if.end47.i
  %samrate52.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %.pre.i = load i64, ptr %samrate52.phi.trans.insert.i, align 8, !tbaa !34, !invariant.load !18
  %17 = icmp sgt i64 %.pre.i, 15999
  br i1 %17, label %if.then55.i, label %if.else56.i

if.then55.i:                                      ; preds = %if.then51.i, %if.then51.thread.i
  tail call fastcc void @setabc(i64 noundef 6500, i64 noundef 500, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @r7c) #29
  br label %if.end64.thread.i

if.else56.i:                                      ; preds = %if.then51.i, %if.then41.i
  store i64 6, ptr %nfcascade.i, align 8, !tbaa !39
  br label %if.end64.thread.i

if.end59.i:                                       ; preds = %if.end47.i
  %cmp61.i = icmp sgt i64 %15, 5
  br i1 %cmp61.i, label %if.end64.thread.i, label %if.end64.i

if.end64.thread.i:                                ; preds = %if.end59.i, %if.else56.i, %if.then55.i
  %F6hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 96
  %18 = load i64, ptr %F6hz.i, align 8, !tbaa !76, !invariant.load !18
  %B6hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 104
  %19 = load i64, ptr %B6hz.i, align 8, !tbaa !77, !invariant.load !18
  tail call fastcc void @setabc(i64 noundef %18, i64 noundef %19, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @r6c) #29
  br label %if.then68.i

if.end64.i:                                       ; preds = %if.end59.i
  %cmp66.i = icmp eq i64 %15, 5
  br i1 %cmp66.i, label %if.then68.i, label %if.end64.if.end69_crit_edge.i

if.end64.if.end69_crit_edge.i:                    ; preds = %if.end64.i
  %F5hz76.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %frame, i64 80
  %.pre13.i = load i64, ptr %F5hz76.phi.trans.insert.i, align 8, !tbaa !78, !invariant.load !18
  br label %frame_init.exit

if.then68.i:                                      ; preds = %if.end64.i, %if.end64.thread.i
  %F5hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 80
  %20 = load i64, ptr %F5hz.i, align 8, !tbaa !78, !invariant.load !18
  %B5hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 88
  %21 = load i64, ptr %B5hz.i, align 8, !tbaa !79, !invariant.load !18
  tail call fastcc void @setabc(i64 noundef %20, i64 noundef %21, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @r5c) #29
  br label %frame_init.exit

frame_init.exit:                                  ; preds = %if.end64.if.end69_crit_edge.i, %if.then68.i
  %22 = phi i64 [ %.pre13.i, %if.end64.if.end69_crit_edge.i ], [ %20, %if.then68.i ]
  %conv32.i = fpext float %call31.i to double
  %mul33.i = fmul double %conv32.i, 6.000000e-01
  %conv34.i = fptrunc double %mul33.i to float
  %conv28.i = fpext float %call27.i to double
  %mul29.i = fmul double %conv28.i, 3.000000e-02
  %conv30.i = fptrunc double %mul29.i to float
  %conv24.i = fpext float %call23.i to double
  %mul25.i = fmul double %conv24.i, 2.200000e-02
  %conv26.i = fptrunc double %mul25.i to float
  %conv20.i = fpext float %call19.i to double
  %mul21.i = fmul double %conv20.i, 4.000000e-02
  %conv22.i = fptrunc double %mul21.i to float
  %conv16.i = fpext float %call15.i to double
  %mul17.i = fmul double %conv16.i, 6.000000e-02
  %conv18.i = fptrunc double %mul17.i to float
  %conv12.i = fpext float %call11.i to double
  %mul13.i = fmul double %conv12.i, 1.500000e-01
  %conv14.i = fptrunc double %mul13.i to float
  %conv8.i = fpext float %call7.i to double
  %mul9.i = fmul double %conv8.i, 4.000000e-01
  %conv10.i = fptrunc double %mul9.i to float
  %F4hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 64
  %23 = load i64, ptr %F4hz.i, align 8, !tbaa !80, !invariant.load !18
  %B4hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 72
  %24 = load i64, ptr %B4hz.i, align 8, !tbaa !81, !invariant.load !18
  tail call fastcc void @setabc(i64 noundef %23, i64 noundef %24, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @r4c) #29
  %F3hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 48
  %25 = load i64, ptr %F3hz.i, align 8, !tbaa !82, !invariant.load !18
  %B3hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 56
  %26 = load i64, ptr %B3hz.i, align 8, !tbaa !83, !invariant.load !18
  tail call fastcc void @setabc(i64 noundef %25, i64 noundef %26, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @r3c) #29
  %F2hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 32
  %27 = load i64, ptr %F2hz.i, align 8, !tbaa !84, !invariant.load !18
  %B2hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 40
  %28 = load i64, ptr %B2hz.i, align 8, !tbaa !85, !invariant.load !18
  tail call fastcc void @setabc(i64 noundef %27, i64 noundef %28, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @r2c) #29
  %F1hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 16
  %29 = load i64, ptr %F1hz.i, align 8, !tbaa !86, !invariant.load !18
  %B1hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 24
  %30 = load i64, ptr %B1hz.i, align 8, !tbaa !87, !invariant.load !18
  tail call fastcc void @setabc(i64 noundef %29, i64 noundef %30, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @r1c) #29
  %FNPhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 128
  %31 = load i64, ptr %FNPhz.i, align 8, !tbaa !88, !invariant.load !18
  %BNPhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 136
  %32 = load i64, ptr %BNPhz.i, align 8, !tbaa !89, !invariant.load !18
  tail call fastcc void @setabc(i64 noundef %31, i64 noundef %32, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @rnpc) #29
  %FNZhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 112
  %33 = load i64, ptr %FNZhz.i, align 8, !tbaa !90, !invariant.load !18
  %BNZhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 120
  %34 = load i64, ptr %BNZhz.i, align 8, !tbaa !91, !invariant.load !18
  tail call fastcc void @setabc(i64 noundef %33, i64 noundef %34, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @rnz) #29
  %35 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 8), align 8, !tbaa !92, !invariant.load !18
  %conv1.i.i = fdiv float 1.000000e+00, %35
  store float %conv1.i.i, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 8), align 8, !tbaa !92
  %fneg.i.i = fneg float %conv1.i.i
  %36 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 12), align 4, !tbaa !94, !invariant.load !18
  %mul.i.i = fmul float %36, %fneg.i.i
  store float %mul.i.i, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 12), align 4, !tbaa !94
  %37 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 16), align 8, !tbaa !95, !invariant.load !18
  %mul6.i.i = fmul float %37, %fneg.i.i
  store float %mul6.i.i, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 16), align 8, !tbaa !95
  %B1phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 200
  %38 = load i64, ptr %B1phz.i, align 8, !tbaa !96, !invariant.load !18
  tail call fastcc void @setabcg(i64 noundef %29, i64 noundef %38, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r1p, float noundef %conv10.i) #29
  tail call fastcc void @setabcg(i64 noundef %31, i64 noundef %32, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @rnpp, float noundef %conv34.i) #29
  %B2phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 216
  %39 = load i64, ptr %B2phz.i, align 8, !tbaa !97, !invariant.load !18
  tail call fastcc void @setabcg(i64 noundef %27, i64 noundef %39, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r2p, float noundef %conv14.i) #29
  %B3phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 232
  %40 = load i64, ptr %B3phz.i, align 8, !tbaa !98, !invariant.load !18
  tail call fastcc void @setabcg(i64 noundef %25, i64 noundef %40, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r3p, float noundef %conv18.i) #29
  %B4phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 248
  %41 = load i64, ptr %B4phz.i, align 8, !tbaa !99, !invariant.load !18
  tail call fastcc void @setabcg(i64 noundef %23, i64 noundef %41, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r4p, float noundef %conv22.i) #29
  %B5phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 264
  %42 = load i64, ptr %B5phz.i, align 8, !tbaa !100, !invariant.load !18
  tail call fastcc void @setabcg(i64 noundef %22, i64 noundef %42, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r5p, float noundef %conv26.i) #29
  %F6hz77.i = getelementptr inbounds nuw i8, ptr %frame, i64 96
  %43 = load i64, ptr %F6hz77.i, align 8, !tbaa !76, !invariant.load !18
  %B6phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 280
  %44 = load i64, ptr %B6phz.i, align 8, !tbaa !101, !invariant.load !18
  tail call fastcc void @setabcg(i64 noundef %43, i64 noundef %44, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r6p, float noundef %conv30.i) #29
  %Gain078.i = getelementptr inbounds nuw i8, ptr %frame, i64 312
  %45 = load i64, ptr %Gain078.i, align 8, !tbaa !102, !invariant.load !18
  %sub79.i = add nsw i64 %45, -3
  %cmp80.i = icmp slt i64 %45, 4
  %spec.select.i = select i1 %cmp80.i, i64 57, i64 %sub79.i
  %samrate84.i = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %46 = load i64, ptr %samrate84.i, align 8, !tbaa !34, !invariant.load !18
  %call85.i = tail call fastcc float @DBtoLIN(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %globals, i64 noundef %spec.select.i) #29
  tail call fastcc void @setabcg(i64 noundef 0, i64 noundef %46, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @rout, float noundef %call85.i) #29
  %f0_flutter = getelementptr inbounds nuw i8, ptr %globals, i64 8
  %47 = load i32, ptr %f0_flutter, align 8, !tbaa !38, !invariant.load !18
  %cmp.not = icmp eq i32 %47, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %frame_init.exit
  %48 = load i32, ptr @time_count, align 4, !tbaa !10
  %inc = add nsw i32 %48, 1
  store i32 %inc, ptr @time_count, align 4, !tbaa !10
  %div.i = sdiv i64 %0, 10
  %conv.i1 = sitofp i32 %47 to double
  %div1.i = fdiv double %conv.i1, 5.000000e+01
  %conv2.i = sitofp i64 %div.i to double
  %div3.i = fdiv double %conv2.i, 1.000000e+02
  %conv4.i = sitofp i32 %inc to double
  %mul.i2 = fmul double %conv4.i, 0x4053F2F91CA1765C
  %call.i3 = tail call double @sin(double noundef %mul.i2) #29, !tbaa !10
  %49 = load i32, ptr @time_count, align 4, !tbaa !10
  %conv5.i4 = sitofp i32 %49 to double
  %mul6.i = fmul double %conv5.i4, 0x40464E28AD1D5A02
  %call7.i5 = tail call double @sin(double noundef %mul6.i) #29, !tbaa !10
  %50 = load i32, ptr @time_count, align 4, !tbaa !10
  %conv8.i6 = sitofp i32 %50 to double
  %mul9.i7 = fmul double %conv8.i6, 0x403D87EDBD883645
  %call10.i = tail call double @sin(double noundef %mul9.i7) #29, !tbaa !10
  %mul11.i = fmul double %div3.i, %div1.i
  %add.i = fadd double %call.i3, %call7.i5
  %add12.i = fadd double %add.i, %call10.i
  %mul13.i8 = fmul double %mul11.i, %add12.i
  %mul14.i = fmul double %mul13.i8, 1.000000e+01
  %conv15.i = fptosi double %mul14.i to i64
  %51 = load i64, ptr @F0hz10, align 8, !tbaa !12
  %add16.i = add nsw i64 %51, %conv15.i
  store i64 %add16.i, ptr @F0hz10, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %frame_init.exit
  %nspfr = getelementptr inbounds nuw i8, ptr %globals, i64 40
  %52 = load i64, ptr %nspfr, align 8, !tbaa !41, !invariant.load !18
  %glsource = getelementptr inbounds nuw i8, ptr %globals, i64 32
  %mul.i20 = mul nsw i64 %46, 40
  %Aturb.i = getelementptr inbounds nuw i8, ptr %frame, i64 160
  %Kopen.i = getelementptr inbounds nuw i8, ptr %frame, i64 152
  %quiet_flag.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %TLTdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 168
  %smax = call i64 @llvm.smax.i64(i64 %52, i64 noundef 0)
  br label %for.cond

for.cond:                                         ; preds = %clip.exit, %if.end
  %voice.0 = phi float [ undef, %if.end ], [ %voice.3, %clip.exit ]
  %ns.0 = phi i64 [ 0, %if.end ], [ %inc80, %clip.exit ]
  %jwave.addr.0 = phi ptr [ %jwave, %if.end ], [ %incdec.ptr, %clip.exit ]
  %exitcond58.not = icmp eq i64 %ns.0, %smax
  br i1 %exitcond58.not, label %for.end81, label %for.body

for.body:                                         ; preds = %for.cond
  %53 = load i64, ptr @parwave.seed, align 8, !tbaa !12
  %mul = mul i64 %53, 1664525
  %add = add i64 %mul, 1
  %and = and i64 %add, 4294967295
  store i64 %and, ptr @parwave.seed, align 8, !tbaa !12
  %shl = shl nuw i64 %and, 32
  %shr = ashr i64 %shl, 50
  %conv = sitofp i64 %shr to double
  %54 = load float, ptr @nlast, align 4, !tbaa !63
  %conv2 = fpext float %54 to double
  %55 = tail call double @llvm.fmuladd.f64(double noundef %conv2, double noundef 7.500000e-01, double %conv)
  %conv4 = fptrunc double %55 to float
  store float %conv4, ptr @nlast, align 4, !tbaa !63
  %56 = load i64, ptr @nper, align 8, !tbaa !12
  %57 = load i64, ptr @nmod, align 8, !tbaa !12
  %58 = load float, ptr @amp_frica, align 4, !tbaa !63
  %cmp66.old.i = icmp eq i64 %ns.0, 0
  br label %for.cond13

for.cond13:                                       ; preds = %if.end25, %for.body
  %59 = phi i64 [ %inc27, %if.end25 ], [ %56, %for.body ]
  %voice.1 = phi float [ %call26, %if.end25 ], [ %voice.0, %for.body ]
  %60 = phi i32 [ %inc.i, %if.end25 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i32 %60, 4
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond13
  %61 = load i64, ptr %glsource, align 8, !tbaa !37
  %cmp17 = icmp eq i64 %61, 1
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body16
  %cmp.i = icmp slt i64 %59, 3
  br i1 %cmp.i, label %if.then.i, label %impulsive_source.exit

if.then.i:                                        ; preds = %if.then19
  %arrayidx.i = getelementptr inbounds [3 x float], ptr @impulsive_source.doublet, i64 0, i64 %59
  %62 = load float, ptr %arrayidx.i, align 4, !tbaa !63
  br label %impulsive_source.exit

impulsive_source.exit:                            ; preds = %if.then19, %if.then.i
  %storemerge.i = phi float [ %62, %if.then.i ], [ 0.000000e+00, %if.then19 ]
  store float %storemerge.i, ptr @vwave, align 4, !tbaa !63
  %call.i9 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @rgl, float noundef %storemerge.i) #36
  br label %if.end21

if.else:                                          ; preds = %for.body16
  %63 = load i64, ptr @nopen, align 8, !tbaa !12
  %cmp.i10 = icmp slt i64 %59, %63
  br i1 %cmp.i10, label %if.then.i11, label %natural_source.exit

if.then.i11:                                      ; preds = %if.else
  %64 = load float, ptr @natglot_b, align 4, !tbaa !63
  %65 = load float, ptr @natglot_a, align 4, !tbaa !63
  %sub.i = fsub float %65, %64
  store float %sub.i, ptr @natglot_a, align 4, !tbaa !63
  %66 = load float, ptr @vwave, align 4, !tbaa !63
  %add.i12 = fadd float %sub.i, %66
  %conv.i13 = fpext float %add.i12 to double
  %mul.i14 = fmul double %conv.i13, 2.800000e-02
  %conv1.i15 = fptrunc double %mul.i14 to float
  br label %natural_source.exit

natural_source.exit:                              ; preds = %if.else, %if.then.i11
  %.sink.i = phi float [ %add.i12, %if.then.i11 ], [ 0.000000e+00, %if.else ]
  %retval.0.i = phi float [ %conv1.i15, %if.then.i11 ], [ 0.000000e+00, %if.else ]
  store float %.sink.i, ptr @vwave, align 4, !tbaa !63
  br label %if.end21

if.end21:                                         ; preds = %natural_source.exit, %impulsive_source.exit
  %voice.2 = phi float [ %call.i9, %impulsive_source.exit ], [ %retval.0.i, %natural_source.exit ]
  %67 = load i64, ptr @T0, align 8, !tbaa !12
  %cmp22.not = icmp slt i64 %59, %67
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  store i64 0, ptr @nper, align 8, !tbaa !12
  %68 = load i64, ptr @F0hz10, align 8, !tbaa !12
  %cmp.i16 = icmp sgt i64 %68, 0
  br i1 %cmp.i16, label %if.then.i18, label %if.end63.thread.i

if.then.i18:                                      ; preds = %if.then24
  %div.i21 = sdiv i64 %mul.i20, %68
  store i64 %div.i21, ptr @T0, align 8, !tbaa !12
  %69 = load i64, ptr @AVdb, align 8, !tbaa !12
  %call.i22 = tail call fastcc float @DBtoLIN(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %globals, i64 noundef %69) #29
  store float %call.i22, ptr @amp_voice, align 4, !tbaa !63
  %70 = load i64, ptr @T0, align 8, !tbaa !12
  store i64 %70, ptr @nmod, align 8, !tbaa !12
  %71 = load i64, ptr @AVdb, align 8, !tbaa !12
  %cmp1.i = icmp sgt i64 %71, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i18
  %shr.i = ashr i64 %70, 1
  store i64 %shr.i, ptr @nmod, align 8, !tbaa !12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i18
  %72 = load i64, ptr %Aturb.i, align 8, !tbaa !103, !invariant.load !18
  %call3.i = tail call fastcc float @DBtoLIN(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %globals, i64 noundef %72) #29
  %conv.i23 = fpext float %call3.i to double
  %mul4.i = fmul double %conv.i23, 1.000000e-01
  %conv5.i24 = fptrunc double %mul4.i to float
  store float %conv5.i24, ptr @amp_breth, align 4, !tbaa !63
  %73 = load i64, ptr %Kopen.i, align 8, !tbaa !104, !invariant.load !18
  %mul6.i25 = shl nsw i64 %73, 2
  %cmp9.i = icmp sgt i64 %73, 65
  %or.cond.i = select i1 %cmp17, i1 %cmp9.i, i1 false
  %spec.store.select.i26 = select i1 %or.cond.i, i64 263, i64 %mul6.i25
  store i64 %spec.store.select.i26, ptr @nopen, align 8
  %74 = load i64, ptr @T0, align 8, !tbaa !12
  %sub.i27 = add nsw i64 %74, -1
  %cmp13.not.i = icmp slt i64 %spec.store.select.i26, %sub.i27
  br i1 %cmp13.not.i, label %if.end20.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  %sub16.i = add nsw i64 %74, -2
  store i64 %sub16.i, ptr @nopen, align 8, !tbaa !12
  %75 = load i32, ptr %quiet_flag.i, align 4, !tbaa !36, !invariant.load !18
  %tobool.not.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.then15.i
  %puts.i = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @str) #29
  %.pr.i = load i64, ptr @nopen, align 8, !tbaa !12
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.then15.i, %if.end.i
  %76 = phi i64 [ %sub16.i, %if.then15.i ], [ %.pr.i, %if.then17.i ], [ %spec.store.select.i26, %if.end.i ]
  %cmp21.i = icmp slt i64 %76, 40
  br i1 %cmp21.i, label %if.then23.i, label %if.end30.i

if.then23.i:                                      ; preds = %if.end20.i
  store i64 40, ptr @nopen, align 8, !tbaa !12
  %77 = load i32, ptr %quiet_flag.i, align 4, !tbaa !36, !invariant.load !18
  %tobool25.not.i = icmp eq i32 %77, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end30.i

if.then26.i:                                      ; preds = %if.then23.i
  %puts5.i = tail call i32 @puts(ptr noundef nonnull dereferenceable(1) @str.23) #29
  %78 = load i64, ptr @nopen, align 8, !tbaa !12
  %call28.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47.566, i64 noundef %78) #29
  %.pre.i34 = load i64, ptr @nopen, align 8, !tbaa !12
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.then23.i, %if.end20.i
  %79 = phi i64 [ 40, %if.then23.i ], [ %.pre.i34, %if.then26.i ], [ %76, %if.end20.i ]
  %sub31.i = add nsw i64 %79, -40
  %arrayidx.i28 = getelementptr inbounds [224 x i16], ptr @natglot, i64 0, i64 %sub31.i
  %80 = load i16, ptr %arrayidx.i28, align 2, !tbaa !16, !invariant.load !18
  %conv32.i29 = sitofp i16 %80 to float
  store float %conv32.i29, ptr @natglot_b, align 4, !tbaa !63
  %conv33.i = sitofp i64 %79 to float
  %mul34.i = fmul float %conv33.i, %conv32.i29
  %conv35.i = fpext float %mul34.i to double
  %mul36.i = fmul double %conv35.i, 3.330000e-01
  %conv37.i = fptrunc double %mul36.i to float
  store float %conv37.i, ptr @natglot_a, align 4, !tbaa !63
  %div39.i = sdiv i64 %46, %79
  tail call fastcc void @setabc(i64 noundef 0, i64 noundef %div39.i, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @rgl) #29
  %81 = load i64, ptr @nopen, align 8, !tbaa !12
  %conv40.i = sitofp i64 %81 to double
  %mul41.i = fmul double %conv40.i, 8.330000e-03
  %conv42.i = fptrunc double %mul41.i to float
  %mul43.i = fmul float %conv42.i, %conv42.i
  %82 = load float, ptr getelementptr inbounds nuw (i8, ptr @rgl, i64 8), align 8, !tbaa !92
  %mul44.i = fmul float %82, %mul43.i
  store float %mul44.i, ptr getelementptr inbounds nuw (i8, ptr @rgl, i64 8), align 8, !tbaa !92
  %83 = load i64, ptr @T0, align 8, !tbaa !12
  %sub45.i = sub nsw i64 %83, %81
  %84 = load i64, ptr @Kskew, align 8, !tbaa !12
  %cmp46.i = icmp sgt i64 %84, %sub45.i
  br i1 %cmp46.i, label %if.then48.i, label %if.end55.i

if.then48.i:                                      ; preds = %if.end30.i
  %85 = load i32, ptr %quiet_flag.i, align 4, !tbaa !36, !invariant.load !18
  %tobool50.not.i = icmp eq i32 %85, 0
  br i1 %tobool50.not.i, label %if.then51.i33, label %if.end54.i

if.then51.i33:                                    ; preds = %if.then48.i
  %call53.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48.567, i64 noundef %84, i64 noundef %sub45.i) #29
  %.pre7.pre.i = load i64, ptr @T0, align 8, !tbaa !12
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i33, %if.then48.i
  %.pre7.i = phi i64 [ %.pre7.pre.i, %if.then51.i33 ], [ %83, %if.then48.i ]
  store i64 %sub45.i, ptr @Kskew, align 8, !tbaa !12
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end54.i, %if.end30.i
  %86 = phi i64 [ %.pre7.i, %if.end54.i ], [ %83, %if.end30.i ]
  %87 = phi i64 [ %sub45.i, %if.end54.i ], [ %84, %if.end30.i ]
  %88 = load i64, ptr @skew, align 8, !tbaa !12
  %sub59.i = sub nsw i64 0, %87
  %cmp566.i = icmp slt i64 %88, 0
  %storemerge.i30 = select i1 %cmp566.i, i64 %sub59.i, i64 %87
  %add.i31 = add nsw i64 %storemerge.i30, %86
  store i64 %add.i31, ptr @T0, align 8, !tbaa !12
  %sub61.i = sub nsw i64 0, %storemerge.i30
  store i64 %sub61.i, ptr @skew, align 8, !tbaa !12
  %cmp64.i = icmp ne i64 %add.i31, 4
  %or.cond4.i = or i1 %cmp66.old.i, %cmp64.i
  br i1 %or.cond4.i, label %if.then68.i17, label %if.end25

if.end63.thread.i:                                ; preds = %if.then24
  store i64 4, ptr @T0, align 8, !tbaa !12
  store float 0.000000e+00, ptr @amp_voice, align 4, !tbaa !63
  store i64 4, ptr @nmod, align 8, !tbaa !12
  store float 0.000000e+00, ptr @amp_breth, align 4, !tbaa !63
  store float 0.000000e+00, ptr @natglot_a, align 4, !tbaa !63
  store float 0.000000e+00, ptr @natglot_b, align 4, !tbaa !63
  br i1 %cmp66.old.i, label %if.then68.i17, label %if.end25

if.then68.i17:                                    ; preds = %if.end63.thread.i, %if.end55.i
  %89 = load i64, ptr %TLTdb.i, align 8, !tbaa !105, !invariant.load !18
  %conv69.i = sitofp i64 %89 to double
  %mul70.i = fmul double %conv69.i, 3.300000e-02
  %conv71.i = fptrunc double %mul70.i to float
  store float %conv71.i, ptr @decay, align 4, !tbaa !63
  %cmp73.i = fcmp ogt float %conv71.i, 0.000000e+00
  %conv78.i = fsub float 1.000000e+00, %conv71.i
  %conv78.sink.i = select i1 %cmp73.i, float %conv78.i, float 1.000000e+00
  store float %conv78.sink.i, ptr @onemd, align 4, !tbaa !63
  br label %if.end25

if.end25:                                         ; preds = %if.then68.i17, %if.end63.thread.i, %if.end55.i, %if.end21
  %call26 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @rlp, float noundef %voice.2) #29
  %90 = load i64, ptr @nper, align 8, !tbaa !12
  %inc27 = add nsw i64 %90, 1
  store i64 %inc27, ptr @nper, align 8, !tbaa !12
  %inc.i = add nuw nsw i32 %60, 1
  br label %for.cond13

for.end:                                          ; preds = %for.cond13
  %cmp5 = icmp sgt i64 %56, %57
  %conv10 = fmul float %conv4, 5.000000e-01
  %noise.0 = select i1 %cmp5, float %conv10, float %conv4
  %mul12 = fmul float %58, %noise.0
  %91 = load float, ptr @onemd, align 4, !tbaa !63
  %92 = load float, ptr @vlast, align 4, !tbaa !63
  %93 = load float, ptr @decay, align 4, !tbaa !63
  %mul30 = fmul float %92, %93
  %94 = tail call float @llvm.fmuladd.f32(float %voice.1, float %91, float %mul30)
  store float %94, ptr @vlast, align 4, !tbaa !63
  %95 = load i64, ptr @nopen, align 8, !tbaa !12
  %cmp31 = icmp slt i64 %59, %95
  %96 = load float, ptr @amp_breth, align 4
  %conv34 = sitofp i64 %shr to float
  %97 = tail call float @llvm.fmuladd.f32(float %96, float %conv34, float %94)
  %voice.3 = select i1 %cmp31, float %97, float %94
  %98 = load float, ptr @amp_voice, align 4, !tbaa !63
  %mul37 = fmul float %98, %voice.3
  %99 = load float, ptr @amp_aspir, align 4, !tbaa !63
  %mul38 = fmul float %noise.0, %99
  %add39 = fadd float %mul37, %mul38
  %100 = load i32, ptr %globals, align 8, !tbaa !40
  %cmp40.not = icmp eq i32 %100, 2
  %call61 = tail call fastcc float @antiresonator(float noundef %add39) #29
  %call62 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @rnpc, float noundef %call61) #29
  br i1 %cmp40.not, label %if.else60, label %if.then42

if.then42:                                        ; preds = %for.end
  switch i64 %15, label %for.inc79 [
    i64 8, label %sw.bb
    i64 7, label %sw.bb46
    i64 6, label %sw.bb48
    i64 5, label %sw.bb50
    i64 4, label %sw.bb52
    i64 3, label %sw.bb54
    i64 2, label %sw.bb56
    i64 1, label %sw.bb58
  ]

sw.bb:                                            ; preds = %if.then42
  %call45 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r8c, float noundef %call62) #29
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb, %if.then42
  %casc_next_in.0 = phi float [ %call45, %sw.bb ], [ %call62, %if.then42 ]
  %call47 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r7c, float noundef %casc_next_in.0) #29
  br label %sw.bb48

sw.bb48:                                          ; preds = %sw.bb46, %if.then42
  %casc_next_in.1 = phi float [ %call47, %sw.bb46 ], [ %call62, %if.then42 ]
  %call49 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r6c, float noundef %casc_next_in.1) #29
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb48, %if.then42
  %casc_next_in.2 = phi float [ %call49, %sw.bb48 ], [ %call62, %if.then42 ]
  %call51 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r5c, float noundef %casc_next_in.2) #29
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb50, %if.then42
  %casc_next_in.3 = phi float [ %call51, %sw.bb50 ], [ %call62, %if.then42 ]
  %call53 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r4c, float noundef %casc_next_in.3) #29
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb52, %if.then42
  %casc_next_in.4 = phi float [ %call53, %sw.bb52 ], [ %call62, %if.then42 ]
  %call55 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r3c, float noundef %casc_next_in.4) #29
  br label %sw.bb56

sw.bb56:                                          ; preds = %sw.bb54, %if.then42
  %casc_next_in.5 = phi float [ %call55, %sw.bb54 ], [ %call62, %if.then42 ]
  %call57 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r2c, float noundef %casc_next_in.5) #29
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb56, %if.then42
  %casc_next_in.6 = phi float [ %call57, %sw.bb56 ], [ %call62, %if.then42 ]
  %call59 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r1c, float noundef %casc_next_in.6) #29
  br label %for.inc79

if.else60:                                        ; preds = %for.end
  %call63 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r1p, float noundef %call62) #29
  %101 = load float, ptr @glotlast, align 4, !tbaa !63
  %sub = fsub float %call62, %101
  %add64 = fadd float %mul12, %sub
  store float %call62, ptr @glotlast, align 4, !tbaa !63
  br label %for.inc79

for.inc79:                                        ; preds = %sw.bb58, %if.then42, %if.else60
  %sourc.0 = phi float [ %add64, %if.else60 ], [ %mul12, %if.then42 ], [ %mul12, %sw.bb58 ]
  %out.1 = phi float [ %call63, %if.else60 ], [ 0.000000e+00, %if.then42 ], [ %call59, %sw.bb58 ]
  %call66 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r6p, float noundef %sourc.0) #29
  %sub67 = fsub float %call66, %out.1
  %call68 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r5p, float noundef %sourc.0) #29
  %sub69 = fsub float %call68, %sub67
  %call70 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r4p, float noundef %sourc.0) #29
  %sub71 = fsub float %call70, %sub69
  %call72 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r3p, float noundef %sourc.0) #29
  %sub73 = fsub float %call72, %sub71
  %call74 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @r2p, float noundef %sourc.0) #29
  %sub75 = fsub float %call74, %sub73
  %102 = load float, ptr @amp_bypas, align 4, !tbaa !63
  %neg = fneg float %sub75
  %103 = tail call float @llvm.fmuladd.f32(float %102, float noundef %sourc.0, float %neg)
  %call77 = tail call fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) @rout, float noundef %103) #29
  %conv.i35 = fptosi float %call77 to i64
  %cmp.i36 = icmp slt i64 %conv.i35, -32767
  br i1 %cmp.i36, label %if.then.i37, label %if.else.i

if.then.i37:                                      ; preds = %for.inc79
  %sub.i38 = sub nsw i64 0, %conv.i35
  br label %if.end5.sink.split.i

if.else.i:                                        ; preds = %for.inc79
  %cmp2.i = icmp sgt i64 %conv.i35, 32767
  br i1 %cmp2.i, label %if.end5.sink.split.i, label %clip.exit

if.end5.sink.split.i:                             ; preds = %if.else.i, %if.then.i37
  %conv.sink.i = phi i64 [ %sub.i38, %if.then.i37 ], [ %conv.i35, %if.else.i ]
  %temp.0.ph.i = phi i64 [ -32767, %if.then.i37 ], [ 32767, %if.else.i ]
  %104 = load i32, ptr @warnsw, align 4, !tbaa !10
  %cmp.i39 = icmp eq i32 %104, 0
  br i1 %cmp.i39, label %if.then.i40, label %clip.exit

if.then.i40:                                      ; preds = %if.end5.sink.split.i
  store i32 1, ptr @warnsw, align 4, !tbaa !10
  %105 = load i32, ptr %quiet_flag.i, align 4, !tbaa !36, !invariant.load !18
  %tobool.not.i42 = icmp eq i32 %105, 0
  br i1 %tobool.not.i42, label %if.then1.i, label %clip.exit

if.then1.i:                                       ; preds = %if.then.i40
  %call.i43 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85.544) #29
  %conv.i.i = uitofp nneg i64 %conv.sink.i to double
  %div.i.i = fdiv double %conv.i.i, 3.276700e+04
  %call.i.i = tail call double @log10(double noundef %div.i.i) #29, !tbaa !10
  %mul.i.i44 = fmul double %call.i.i, 2.000000e+01
  %conv1.i.i45 = fptrunc double %mul.i.i44 to float
  %conv.i46 = fpext float %conv1.i.i45 to double
  %call3.i47 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86.545, double noundef %conv.i46) #29
  br label %clip.exit

clip.exit:                                        ; preds = %if.then1.i, %if.then.i40, %if.end5.sink.split.i, %if.else.i
  %temp.0.i = phi i64 [ %conv.i35, %if.else.i ], [ %temp.0.ph.i, %if.end5.sink.split.i ], [ %temp.0.ph.i, %if.then.i40 ], [ %temp.0.ph.i, %if.then1.i ]
  %conv6.i = trunc nsw i64 %temp.0.i to i16
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %jwave.addr.0, i64 2
  store i16 %conv6.i, ptr %jwave.addr.0, align 2, !tbaa !16
  %inc80 = add nuw i64 %ns.0, 1
  br label %for.cond, !llvm.loop !106

for.end81:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite) uwtable
define internal fastcc float @resonator(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) %r, float noundef %input) unnamed_addr #14 {
entry:
  %a = getelementptr inbounds nuw i8, ptr %r, i64 8
  %0 = load float, ptr %a, align 8, !tbaa !92
  %b = getelementptr inbounds nuw i8, ptr %r, i64 12
  %1 = load float, ptr %b, align 4, !tbaa !94
  %p1 = getelementptr inbounds nuw i8, ptr %r, i64 20
  %2 = load float, ptr %p1, align 4, !tbaa !107
  %mul1 = fmul float %1, %2
  %3 = tail call float @llvm.fmuladd.f32(float %0, float noundef %input, float %mul1) #39
  %c = getelementptr inbounds nuw i8, ptr %r, i64 16
  %4 = load float, ptr %c, align 8, !tbaa !95
  %p2 = getelementptr inbounds nuw i8, ptr %r, i64 24
  %5 = load float, ptr %p2, align 8, !tbaa !108
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %3) #39
  store float %2, ptr %p2, align 8, !tbaa !108
  store float %6, ptr %p1, align 4, !tbaa !107
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc float @antiresonator(float noundef %input) unnamed_addr #15 {
entry:
  %0 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 8), align 8, !tbaa !92
  %1 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 12), align 4, !tbaa !94
  %2 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 20), align 4, !tbaa !107
  %mul1 = fmul float %1, %2
  %3 = tail call float @llvm.fmuladd.f32(float %0, float noundef %input, float %mul1) #39
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 16), align 8, !tbaa !95
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 24), align 8, !tbaa !108
  %6 = tail call float @llvm.fmuladd.f32(float %4, float noundef %5, float %3) #39
  store float %2, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 24), align 8, !tbaa !108
  store float %input, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 20), align 4, !tbaa !107
  ret float %6
}

; Function Attrs: nounwind
declare double @log10(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc float @DBtoLIN(ptr nofree noundef readonly captures(none) %globals, i64 noundef %dB) unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %dB, 0
  br i1 %cmp, label %if.end5, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp samesign ugt i64 %dB, 87
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.else
  %quiet_flag = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %0 = load i32, ptr %quiet_flag, align 4, !tbaa !36, !invariant.load !18
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then2
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %dB) #29
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then3, %entry, %if.else
  %dB.addr.0 = phi i64 [ %dB, %if.else ], [ 0, %entry ], [ 87, %if.then3 ], [ 87, %if.then2 ]
  %arrayidx = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0
  %1 = load float, ptr %arrayidx, align 4, !tbaa !63, !invariant.load !18
  %conv = fpext float %1 to double
  %mul = fmul double %conv, 1.000000e-03
  %conv6 = fptrunc double %mul to float
  ret float %conv6
}

; Function Attrs: nounwind uwtable
define internal fastcc void @setabc(i64 noundef %f, i64 noundef %bw, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((8, 20)) %rp) unnamed_addr #0 {
entry:
  %0 = load float, ptr @minus_pi_t, align 4, !tbaa !63
  %conv = sitofp i64 %bw to float
  %mul = fmul float %0, %conv
  %conv1 = fpext float %mul to double
  %call = tail call double @exp(double noundef %conv1) #29, !tbaa !10
  %conv2 = fptrunc double %call to float
  %1 = fneg float %conv2
  %fneg = fmul float %conv2, %1
  %c = getelementptr inbounds nuw i8, ptr %rp, i64 16
  store float %fneg, ptr %c, align 8, !tbaa !95
  %2 = load float, ptr @two_pi_t, align 4, !tbaa !63
  %conv4 = sitofp i64 %f to float
  %mul5 = fmul float %2, %conv4
  %conv6 = fpext float %mul5 to double
  %conv7 = fpext float %conv2 to double
  %call8 = tail call double @cos(double noundef %conv6) #29, !tbaa !10
  %mul9 = fmul double %call8, %conv7
  %mul10 = fmul double %mul9, 2.000000e+00
  %conv11 = fptrunc double %mul10 to float
  %b = getelementptr inbounds nuw i8, ptr %rp, i64 12
  store float %conv11, ptr %b, align 4, !tbaa !94
  %conv13 = fpext float %conv11 to double
  %sub = fsub double 1.000000e+00, %conv13
  %conv15 = fpext float %fneg to double
  %sub16 = fsub double %sub, %conv15
  %conv17 = fptrunc double %sub16 to float
  %a = getelementptr inbounds nuw i8, ptr %rp, i64 8
  store float %conv17, ptr %a, align 8, !tbaa !92
  ret void
}

; Function Attrs: nounwind
declare double @exp(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare double @cos(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare double @sin(double noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc void @setabcg(i64 noundef %f, i64 noundef %bw, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((8, 20)) %rp, float noundef %gain) unnamed_addr #0 {
entry:
  tail call fastcc void @setabc(i64 noundef %f, i64 noundef %bw, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) %rp) #29
  %a = getelementptr inbounds nuw i8, ptr %rp, i64 8
  %0 = load float, ptr %a, align 8, !tbaa !92, !invariant.load !18
  %mul = fmul float %gain, %0
  store float %mul, ptr %a, align 8, !tbaa !92
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @parwave_init(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %globals) local_unnamed_addr #0 {
entry:
  %samrate = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %0 = load i64, ptr %samrate, align 8, !tbaa !34, !invariant.load !18
  %mul = mul nsw i64 %0, 950
  %div = sdiv i64 %mul, 10000
  %mul2 = mul nsw i64 %0, 630
  %div3 = sdiv i64 %mul2, 10000
  %conv = sitofp i64 %0 to double
  %div5 = fdiv double 0xC00921FB5A7ED197, %conv
  %conv6 = fptrunc double %div5 to float
  store float %conv6, ptr @minus_pi_t, align 4, !tbaa !63
  %conv9 = fmul float %conv6, -2.000000e+00
  store float %conv9, ptr @two_pi_t, align 4, !tbaa !63
  tail call fastcc void @setabc(i64 noundef %div, i64 noundef %div3, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) @rlp) #29
  store i64 0, ptr @nper, align 8, !tbaa !12
  store i64 0, ptr @T0, align 8, !tbaa !12
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r1p, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r1p, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r2p, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r2p, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r3p, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r3p, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r4p, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r4p, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r5p, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r5p, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r6p, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r6p, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r1c, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r1c, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r2c, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r2c, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r3c, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r3c, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r4c, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r4c, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r5c, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r5c, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r6c, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r6c, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r7c, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r7c, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r8c, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r8c, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnpc, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnpc, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rgl, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rgl, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rlp, i64 20), align 4, !tbaa !107
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rlp, i64 24), align 8, !tbaa !108
  store float 0.000000e+00, ptr @vlast, align 4, !tbaa !63
  store float 0.000000e+00, ptr @nlast, align 4, !tbaa !63
  store float 0.000000e+00, ptr @glotlast, align 4, !tbaa !63
  store i32 0, ptr @warnsw, align 4, !tbaa !10
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %p, i32 noundef returned %ch) local_unnamed_addr #0 {
darray_find.741.exit:
  %items = getelementptr inbounds nuw i8, ptr %p, i64 8
  %0 = load i32, ptr %items, align 8, !tbaa !24, !invariant.load !18
  %call.i.i = tail call ptr @Darray_find(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %p, i32 noundef %0) #29, !noalias !109
  %conv = trunc i32 %ch to i8
  store i8 %conv, ptr %call.i.i, align 1, !tbaa !5
  ret i32 %ch
}

; Function Attrs: nounwind uwtable
define dso_local i32 @phone_to_elm(ptr noundef %phone, i32 noundef %n, ptr nofree noundef captures(none) %elm) local_unnamed_addr #0 {
entry:
  %s = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %s) #27
  store ptr %phone, ptr %s, align 8, !tbaa !42
  %idx.ext = sext i32 %n to i64
  %add.ptr = getelementptr inbounds i8, ptr %phone, i64 %idx.ext
  %0 = load ptr, ptr @phtoelm, align 8, !tbaa !113
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.2.743, ptr noundef nonnull dereferenceable(2) @.str.3.744, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.4.745, ptr noundef nonnull dereferenceable(2) @.str.5.746, ptr noundef nonnull dereferenceable(3) @.str.6.747, ptr noundef nonnull dereferenceable(3) @.str.7.748, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.8.749, ptr noundef nonnull dereferenceable(2) @.str.9.750, ptr noundef nonnull dereferenceable(3) @.str.10.751, ptr noundef nonnull dereferenceable(3) @.str.11.752, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.12.753, ptr noundef nonnull dereferenceable(2) @.str.13.754, ptr noundef nonnull dereferenceable(3) @.str.14.755, ptr noundef nonnull dereferenceable(3) @.str.15.756, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.16.757, ptr noundef nonnull dereferenceable(2) @.str.17.758, ptr noundef nonnull dereferenceable(3) @.str.18.759, ptr noundef nonnull dereferenceable(3) @.str.19.760, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.20.761, ptr noundef nonnull dereferenceable(2) @.str.21.762, ptr noundef nonnull dereferenceable(3) @.str.22.763, ptr noundef nonnull dereferenceable(3) @.str.23.764, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.24.765, ptr noundef nonnull dereferenceable(2) @.str.25.766, ptr noundef nonnull dereferenceable(3) @.str.26.767, ptr noundef nonnull dereferenceable(3) @.str.27.768, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.28.769, ptr noundef nonnull dereferenceable(2) @.str.29.770, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.30.771, ptr noundef nonnull dereferenceable(2) @.str.31.772, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.31.772, ptr noundef nonnull dereferenceable(3) @.str.32.773, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.33.774, ptr noundef nonnull dereferenceable(2) @.str.34.775, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.9.750, ptr noundef nonnull dereferenceable(3) @.str.35.776, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.36.777, ptr noundef nonnull dereferenceable(2) @.str.37.778, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.37.778, ptr noundef nonnull dereferenceable(3) @.str.38.779, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.39.780, ptr noundef nonnull dereferenceable(2) @.str.40.781, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.41.782, ptr noundef nonnull dereferenceable(2) @.str.42.783, ptr noundef nonnull dereferenceable(3) @.str.43.784, ptr noundef nonnull dereferenceable(2) @.str.42.783, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.21.762, ptr noundef nonnull dereferenceable(3) @.str.44.785, ptr noundef nonnull dereferenceable(3) @.str.43.784, ptr noundef nonnull dereferenceable(3) @.str.45.786, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.46.787, ptr noundef nonnull dereferenceable(2) @.str.47.788, ptr noundef nonnull dereferenceable(3) @.str.43.784, ptr noundef nonnull dereferenceable(3) @.str.48.789, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.47.788, ptr noundef nonnull dereferenceable(3) @.str.49.790, ptr noundef nonnull dereferenceable(3) @.str.43.784, ptr noundef nonnull dereferenceable(3) @.str.49.790, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.50.791, ptr noundef nonnull dereferenceable(3) @.str.51.792, ptr noundef nonnull dereferenceable(3) @.str.52.793, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.53.794, ptr noundef nonnull dereferenceable(2) @.str.54.795, ptr noundef nonnull dereferenceable(3) @.str.55.796, ptr noundef nonnull dereferenceable(3) @.str.43.784, ptr noundef nonnull dereferenceable(3) @.str.55.796, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.56.797, ptr noundef nonnull dereferenceable(2) @.str.57.798, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.58.799, ptr noundef nonnull dereferenceable(2) @.str.59.800, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.60.801, ptr noundef nonnull dereferenceable(2) @.str.59.800, ptr noundef nonnull dereferenceable(3) @.str.43.784, ptr noundef nonnull dereferenceable(2) @.str.59.800, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.59.800, ptr noundef nonnull dereferenceable(3) @.str.61.802, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.62.803, ptr noundef nonnull dereferenceable(2) @.str.63.804, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.64.805, ptr noundef nonnull dereferenceable(2) @.str.65.806, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.66.807, ptr noundef nonnull dereferenceable(3) @.str.43.784, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.67.808, ptr noundef nonnull dereferenceable(2) @.str.68.809, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.69.810, ptr noundef nonnull dereferenceable(2) @.str.69.810, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.70.811, ptr noundef nonnull dereferenceable(2) @.str.71.812, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.72.813, ptr noundef nonnull dereferenceable(3) @.str.73.814, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.42.783, ptr noundef nonnull dereferenceable(2) @.str.74.815, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.75.816, ptr noundef nonnull dereferenceable(2) @.str.76.817, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.74.815, ptr noundef nonnull dereferenceable(3) @.str.77.818, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.78.819, ptr noundef nonnull dereferenceable(2) @.str.79.820, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.80.821, ptr noundef nonnull dereferenceable(3) @.str.81.822, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.82.823, ptr noundef nonnull dereferenceable(3) @.str.83.824, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.79.820, ptr noundef nonnull dereferenceable(3) @.str.84.825, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.76.817, ptr noundef nonnull dereferenceable(3) @.str.85.826, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.86.827, ptr noundef nonnull dereferenceable(3) @.str.87.828, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) @.str.88.829, ptr noundef nonnull dereferenceable(3) @.str.89.830, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.90.831, ptr noundef nonnull dereferenceable(3) @.str.91.832, ptr noundef nonnull dereferenceable(2) @.str.69.810, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.92.833, ptr noundef nonnull dereferenceable(3) @.str.93.834, ptr noundef nonnull dereferenceable(2) @.str.69.810, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.94.835, ptr noundef nonnull dereferenceable(3) @.str.89.830, ptr noundef nonnull dereferenceable(2) @.str.69.810, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.95.836, ptr noundef nonnull dereferenceable(3) @.str.96.837, ptr noundef nonnull dereferenceable(3) @.str.97.838, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.98.839, ptr noundef nonnull dereferenceable(3) @.str.99.840, ptr noundef nonnull dereferenceable(3) @.str.97.838, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.100.841, ptr noundef nonnull dereferenceable(3) @.str.101.842, ptr noundef nonnull dereferenceable(3) @.str.102.843, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.103.844, ptr noundef nonnull dereferenceable(4) @.str.104.845, ptr noundef nonnull dereferenceable(3) @.str.102.843, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.105.846, ptr noundef nonnull dereferenceable(4) @.str.106.847, ptr noundef nonnull dereferenceable(3) @.str.102.843, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.107.848, ptr noundef nonnull dereferenceable(3) @.str.108.849, ptr noundef nonnull dereferenceable(3) @.str.102.843, ptr noundef null) #29
  tail call void (ptr, ...) @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(3) @.str.109.850, ptr noundef nonnull dereferenceable(3) @.str.89.830, ptr noundef nonnull dereferenceable(3) @.str.97.838, ptr noundef null) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end
  %1 = phi ptr [ %phone, %if.end ], [ %.pre, %if.end27 ]
  %t.0 = phi i32 [ 0, %if.end ], [ %t.2, %if.end27 ]
  %stress.0 = phi i32 [ 0, %if.end ], [ %stress.3, %if.end27 ]
  %cmp = icmp ult ptr %1, %add.ptr
  br i1 %cmp, label %land.end, label %while.end28

land.end:                                         ; preds = %while.cond
  %2 = load i8, ptr %1, align 1, !tbaa !5
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %while.end28, label %while.body

while.body:                                       ; preds = %land.end
  %call = call ptr @trie_lookup(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) @phtoelm, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %s) #27
  %tobool.i.not = icmp eq ptr %call, null
  br i1 %tobool.i.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %while.body
  %3 = load i8, ptr %call, align 1, !tbaa !5, !invariant.load !18
  %conv5 = sext i8 %3 to i32
  br label %while.cond6

while.cond6:                                      ; preds = %while.body9, %if.then3
  %call.pn = phi ptr [ %call, %if.then3 ], [ %e.0, %while.body9 ]
  %t.1 = phi i32 [ %t.0, %if.then3 ], [ %add19, %while.body9 ]
  %stress.1 = phi i32 [ %stress.0, %if.then3 ], [ %spec.select, %while.body9 ]
  %4 = phi i32 [ %conv5, %if.then3 ], [ %dec, %while.body9 ]
  %cmp7 = icmp sgt i32 %4, 0
  br i1 %cmp7, label %while.body9, label %if.end27.loopexit

while.body9:                                      ; preds = %while.cond6
  %e.0 = getelementptr inbounds nuw i8, ptr %call.pn, i64 1
  %dec = add nsw i32 %4, -1
  %5 = load i8, ptr %e.0, align 1, !tbaa !5, !invariant.load !18
  %conv11 = sext i8 %5 to i32
  %idxprom = sext i8 %5 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom
  %call12 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %elm, i32 noundef %conv11) #29
  %feat = getelementptr inbounds nuw i8, ptr %arrayidx, i64 32
  %6 = load i64, ptr %feat, align 8, !tbaa !115, !invariant.load !18
  %and = and i64 %6, 268435456
  %tobool13.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 %stress.1
  %du = getelementptr inbounds nuw i8, ptr %arrayidx, i64 9
  %7 = load i8, ptr %du, align 1, !tbaa !117
  %conv16 = sext i8 %7 to i16
  %ud = getelementptr inbounds nuw i8, ptr %arrayidx, i64 10
  %8 = load i8, ptr %ud, align 2, !tbaa !118
  %conv17 = sext i8 %8 to i16
  %add = add nsw i16 %conv17, %conv16
  %div6 = sdiv i16 %add, 2
  %div.sext = sext i16 %div6 to i32
  %9 = load i32, ptr @speed, align 4, !tbaa !10
  %mul = mul nsw i32 %9, %div.sext
  %call18 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %elm, i32 noundef %mul) #29
  %add19 = add i32 %mul, %t.1
  %call20 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %elm, i32 noundef %spec.select) #29
  br label %while.cond6, !llvm.loop !119

if.else:                                          ; preds = %while.body
  %10 = load ptr, ptr %s, align 8, !tbaa !42
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %10, i64 1
  store ptr %incdec.ptr21, ptr %s, align 8, !tbaa !42
  %11 = load i8, ptr %10, align 1, !tbaa !5, !invariant.load !18
  switch i8 %11, label %sw.default [
    i8 39, label %sw.bb
    i8 44, label %sw.bb23
    i8 43, label %sw.bb24
    i8 45, label %if.end27
  ]

sw.bb:                                            ; preds = %if.else
  br label %if.end27

sw.bb23:                                          ; preds = %if.else
  br label %if.end27

sw.bb24:                                          ; preds = %if.else
  br label %if.end27

sw.default:                                       ; preds = %if.else
  %conv22 = sext i8 %11 to i32
  %12 = load ptr, ptr @stderr, align 8, !tbaa !52
  %call26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef nonnull @.str.1.742, i32 noundef %conv22, i32 noundef %n, ptr noundef %phone) #33
  br label %if.end27

if.end27.loopexit:                                ; preds = %while.cond6
  %.pre.pre = load ptr, ptr %s, align 8, !tbaa !42
  br label %if.end27

if.end27:                                         ; preds = %if.end27.loopexit, %if.else, %sw.bb, %sw.bb23, %sw.bb24, %sw.default
  %.pre = phi ptr [ %incdec.ptr21, %sw.default ], [ %incdec.ptr21, %sw.bb24 ], [ %incdec.ptr21, %sw.bb23 ], [ %incdec.ptr21, %sw.bb ], [ %incdec.ptr21, %if.else ], [ %.pre.pre, %if.end27.loopexit ]
  %t.2 = phi i32 [ %t.0, %sw.default ], [ %t.0, %sw.bb24 ], [ %t.0, %sw.bb23 ], [ %t.0, %sw.bb ], [ %t.0, %if.else ], [ %t.1, %if.end27.loopexit ]
  %stress.3 = phi i32 [ %stress.0, %sw.default ], [ 1, %sw.bb24 ], [ 2, %sw.bb23 ], [ 3, %sw.bb ], [ %stress.0, %if.else ], [ %stress.1, %if.end27.loopexit ]
  br label %while.cond, !llvm.loop !120

while.end28:                                      ; preds = %while.cond, %land.end
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %s) #29
  ret i32 %t.0
}

; Function Attrs: nounwind uwtable
define internal void @enter(ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %p, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %s = alloca ptr, align 8
  %buf = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 24, ptr noundef nonnull align 16 %ap) #40
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %s) #40
  call void @llvm.lifetime.start.p0(i64 noundef 20, ptr noundef nonnull align 16 %buf) #40
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i64 1
  call void @llvm.va_start.p0(ptr noundef nonnull align 16 %ap) #37
  %overflow_arg_area_p = getelementptr inbounds nuw i8, ptr %ap, i64 8
  %0 = getelementptr inbounds nuw i8, ptr %ap, i64 16
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %x.0 = phi ptr [ %add.ptr, %entry ], [ %x.1, %if.end ]
  %gp_offset = load i32, ptr %ap, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %reg_save_area = load ptr, ptr %0, align 16
  %1 = zext nneg i32 %gp_offset to i64
  %2 = getelementptr i8, ptr %reg_save_area, i64 %1
  %3 = add nuw nsw i32 %gp_offset, 8
  store i32 %3, ptr %ap, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i64 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %4 = load ptr, ptr %vaarg.addr, align 8, !tbaa !42, !invariant.load !18
  store ptr %4, ptr %s, align 8, !tbaa !42
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %vaarg.end
  %5 = load i32, ptr @num_Elements, align 4, !tbaa !10
  %idx.ext.i = zext i32 %5 to i64
  %add.ptr.i = getelementptr inbounds nuw %struct.Elm_s, ptr @Elements, i64 %idx.ext.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %while.body
  %e.0.i = phi ptr [ @Elements, %while.body ], [ %incdec.ptr.i, %if.end.i ]
  %cmp.i = icmp ult ptr %e.0.i, %add.ptr.i
  br i1 %cmp.i, label %while.body.i, label %if.else

while.body.i:                                     ; preds = %while.cond.i
  %6 = load ptr, ptr %e.0.i, align 8, !tbaa !121, !invariant.load !18
  %call.i = call i32 @strcmp(ptr nofree noundef nonnull readonly dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #31
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %e.0.i, i64 272
  br label %while.cond.i, !llvm.loop !122

if.then:                                          ; preds = %while.body.i
  %sub.ptr.lhs.cast = ptrtoint ptr %e.0.i to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @Elements to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 272
  %conv = trunc i64 %sub.ptr.div to i8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %x.0, i64 1
  store i8 %conv, ptr %x.0, align 1, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %while.cond.i
  call fastcc void @outlined_ir_func_2.20(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %s, ptr noundef nonnull dereferenceable(16) @.str.110.851) #29
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %x.1 = phi ptr [ %incdec.ptr, %if.then ], [ %x.0, %if.else ]
  br label %while.cond, !llvm.loop !123

while.end:                                        ; preds = %vaarg.end
  call void @llvm.va_end.p0(ptr noundef nonnull align 16 %ap) #37
  %sub.ptr.lhs.cast7 = ptrtoint ptr %x.0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i64
  %7 = xor i64 %sub.ptr.rhs.cast, -1
  %sub = add i64 %sub.ptr.lhs.cast7, %7
  %conv9 = trunc i64 %sub to i8
  store i8 %conv9, ptr %buf, align 16, !tbaa !5
  %sext = shl i64 %sub, 56
  %conv11 = ashr exact i64 %sext, 56
  %add = add nsw i64 %conv11, 1
  %call13 = call noalias ptr @malloc(i64 noundef %add) #34
  %8 = load i8, ptr %buf, align 16, !tbaa !5
  %conv16 = sext i8 %8 to i64
  %add17 = add nsw i64 %conv16, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 captures(none) %call13, ptr noundef nonnull align 16 %buf, i64 %add17, i1 noundef false) #37
  call void @trie_insert(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) @phtoelm, ptr nofree noundef nonnull readonly captures(none) dereferenceable(2) %p, ptr nofree noundef %call13) #29
  call void @llvm.lifetime.end.p0(i64 noundef 20, ptr noundef nonnull %buf) #27
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %s) #27
  call void @llvm.lifetime.end.p0(i64 noundef 24, ptr noundef nonnull %ap) #27
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @spell_out(ptr noundef %word, i32 noundef %n, ptr nofree noundef captures(none) %phone) local_unnamed_addr #16 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !52
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.856, i32 noundef %n, ptr noundef %word) #33
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %word.addr.0 = phi ptr [ %word, %entry ], [ %incdec.ptr, %while.body ]
  %nph.0 = phi i32 [ 0, %entry ], [ %add, %while.body ]
  %1 = phi i32 [ %n, %entry ], [ %dec, %while.body ]
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %1, -1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %word.addr.0, i64 1
  %2 = load i8, ptr %word.addr.0, align 1, !tbaa !5, !invariant.load !18
  %3 = and i8 %2, 127
  %idxprom = zext nneg i8 %3 to i64
  %arrayidx = getelementptr inbounds nuw [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !42, !invariant.load !18
  %call1 = tail call i32 @xlate_string(ptr nofree noundef %4, ptr nofree noundef captures(none) %phone) #29
  %add = add i32 %call1, %nph.0
  br label %while.cond, !llvm.loop !124

while.end:                                        ; preds = %while.cond
  ret i32 %nph.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_string(ptr nofree noundef %string, ptr nofree noundef captures(none) %phone) local_unnamed_addr #0 {
while.end:
  %s = alloca ptr, align 8
  %ch = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %s) #27
  store ptr %string, ptr %s, align 8, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef nonnull captures(none) dereferenceable(1) %ch) #27
  call fastcc void @outlined_ir_func_5(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %s, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %ch, i32 noundef 8192) #41
  %items = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %alloc.i.i = getelementptr inbounds nuw i8, ptr %phone, i64 12
  br label %while.cond2

while.cond2:                                      ; preds = %while.end302, %while.end
  %nph.0 = phi i32 [ 0, %while.end ], [ %nph.2, %while.end302 ]
  %0 = load ptr, ptr %s, align 8, !tbaa !42
  %1 = load i8, ptr %0, align 1, !tbaa !5, !invariant.load !18
  %tobool3.not = icmp eq i8 %1, 0
  br i1 %tobool3.not, label %while.end303, label %while.body4

while.body4:                                      ; preds = %while.cond2
  %call5 = tail call align 8 ptr @__ctype_b_loc() #42
  %2 = load ptr, ptr %call5, align 8, !tbaa !125
  %idxprom7 = sext i8 %1 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %2, i64 %idxprom7
  %3 = load i16, ptr %arrayidx8, align 2, !tbaa !16, !invariant.load !18
  %conv9 = zext i16 %3 to i32
  %and10 = and i32 %conv9, 1024
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else103, label %while.cond12

while.cond12:                                     ; preds = %while.body4, %while.body37
  %4 = phi i16 [ %.pre51, %while.body37 ], [ %3, %while.body4 ]
  %5 = phi i8 [ %.pre, %while.body37 ], [ %1, %while.body4 ]
  %s.promoted32 = phi ptr [ %incdec.ptr38, %while.body37 ], [ %0, %while.body4 ]
  %conv17 = zext i16 %4 to i32
  %and18 = and i32 %conv17, 1024
  %tobool19.not = icmp eq i32 %and18, 0
  br i1 %tobool19.not, label %lor.rhs, label %while.cond12.while.body37_crit_edge

while.cond12.while.body37_crit_edge:              ; preds = %while.cond12
  %incdec.ptr38.phi.trans.insert = getelementptr inbounds nuw i8, ptr %s.promoted32, i64 1
  %.pre.pre = load i8, ptr %incdec.ptr38.phi.trans.insert, align 1, !tbaa !5, !invariant.load !18
  %idxprom15.phi.trans.insert.phi.trans.insert = sext i8 %.pre.pre to i64
  %arrayidx16.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16, ptr %2, i64 %idxprom15.phi.trans.insert.phi.trans.insert
  %.pre51.pre = load i16, ptr %arrayidx16.phi.trans.insert.phi.trans.insert, align 2, !tbaa !16, !invariant.load !18
  br label %while.body37

lor.rhs:                                          ; preds = %while.cond12
  switch i8 %5, label %while.end39 [
    i8 39, label %lor.end
    i8 45, label %lor.end
    i8 46, label %lor.end
  ]

lor.end:                                          ; preds = %lor.rhs, %lor.rhs, %lor.rhs
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %s.promoted32, i64 1
  %6 = load i8, ptr %arrayidx30, align 1, !tbaa !5, !invariant.load !18
  %idxprom32 = sext i8 %6 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %2, i64 %idxprom32
  %7 = load i16, ptr %arrayidx33, align 2, !tbaa !16, !invariant.load !18
  %8 = and i16 %7, 1024
  %tobool36.not = icmp eq i16 %8, 0
  br i1 %tobool36.not, label %while.end39, label %while.body37

while.body37:                                     ; preds = %while.cond12.while.body37_crit_edge, %lor.end
  %.pre51 = phi i16 [ %.pre51.pre, %while.cond12.while.body37_crit_edge ], [ %7, %lor.end ]
  %.pre = phi i8 [ %.pre.pre, %while.cond12.while.body37_crit_edge ], [ %6, %lor.end ]
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %s.promoted32, i64 1
  br label %while.cond12, !llvm.loop !127

while.end39:                                      ; preds = %lor.rhs, %lor.end
  store ptr %s.promoted32, ptr %s, align 8
  %tobool40 = icmp eq i8 %5, 0
  %9 = and i32 %conv17, 8196
  %10 = icmp ne i32 %9, 0
  %or.cond24 = or i1 %tobool40, %10
  br i1 %or.cond24, label %if.then68, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %while.end39
  %and63 = and i32 %conv17, 2048
  %tobool64.not = icmp ne i32 %and63, 0
  %sub.ptr.lhs.cast = ptrtoint ptr %s.promoted32 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv65 = trunc i64 %sub.ptr.sub to i32
  %cmp.i = icmp sgt i32 %conv65, 0
  %or.cond46 = and i1 %tobool64.not, %cmp.i
  br i1 %or.cond46, label %for.cond.i, label %while.cond74

for.cond.i:                                       ; preds = %lor.lhs.false57, %for.cond.i
  br label %for.cond.i

if.then68:                                        ; preds = %while.end39
  %sub.ptr.lhs.cast69 = ptrtoint ptr %s.promoted32 to i64
  %sub.ptr.rhs.cast70 = ptrtoint ptr %0 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %conv72 = trunc i64 %sub.ptr.sub71 to i32
  %call73 = tail call fastcc i32 @xlate_word(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %conv72, ptr nofree noundef captures(none) %phone) #29
  %add = add i32 %call73, %nph.0
  br label %while.end302

while.cond74:                                     ; preds = %lor.lhs.false57, %while.body94
  %incdec.ptr9533 = phi ptr [ %incdec.ptr95, %while.body94 ], [ %s.promoted32, %lor.lhs.false57 ]
  %11 = load i8, ptr %incdec.ptr9533, align 1, !tbaa !5, !invariant.load !18
  %tobool76.not = icmp eq i8 %11, 0
  br i1 %tobool76.not, label %while.end96, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %while.cond74
  %idxprom80 = sext i8 %11 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %2, i64 %idxprom80
  %12 = load i16, ptr %arrayidx81, align 2, !tbaa !16, !invariant.load !18
  %13 = and i16 %12, 8196
  %or.cond = icmp eq i16 %13, 0
  br i1 %or.cond, label %while.body94, label %while.end96

while.body94:                                     ; preds = %land.lhs.true77
  %incdec.ptr95 = getelementptr inbounds nuw i8, ptr %incdec.ptr9533, i64 1
  br label %while.cond74, !llvm.loop !128

while.end96:                                      ; preds = %while.cond74, %land.lhs.true77
  store ptr %incdec.ptr9533, ptr %s, align 8
  %sub.ptr.lhs.cast97 = ptrtoint ptr %incdec.ptr9533 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast
  %conv100 = trunc i64 %sub.ptr.sub99 to i32
  %call101 = tail call i32 @spell_out(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %conv100, ptr nofree noundef captures(none) %phone) #29
  %add102 = add i32 %call101, %nph.0
  br label %while.end302

if.else103:                                       ; preds = %while.body4
  %and109 = and i32 %conv9, 2048
  %tobool110.not = icmp eq i32 %and109, 0
  %cmp126 = icmp eq i8 %1, 45
  br i1 %tobool110.not, label %lor.lhs.false111, label %if.then124

lor.lhs.false111:                                 ; preds = %if.else103
  br i1 %cmp126, label %land.lhs.true115, label %if.else189

land.lhs.true115:                                 ; preds = %lor.lhs.false111
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %14 = load i8, ptr %arrayidx117, align 1, !tbaa !5, !invariant.load !18
  %idxprom119 = sext i8 %14 to i64
  %arrayidx120 = getelementptr inbounds i16, ptr %2, i64 %idxprom119
  %15 = load i16, ptr %arrayidx120, align 2, !tbaa !16, !invariant.load !18
  %16 = and i16 %15, 2048
  %tobool123.not = icmp eq i16 %16, 0
  br i1 %tobool123.not, label %if.else215, label %if.then130

if.then124:                                       ; preds = %if.else103
  br i1 %cmp126, label %if.then124.if.then130_crit_edge, label %if.end132

if.then124.if.then130_crit_edge:                  ; preds = %if.then124
  %incdec.ptr131.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.pre54 = load i8, ptr %incdec.ptr131.phi.trans.insert, align 1, !tbaa !5, !invariant.load !18
  br label %if.then130

if.then130:                                       ; preds = %if.then124.if.then130_crit_edge, %land.lhs.true115
  %17 = phi i8 [ %.pre54, %if.then124.if.then130_crit_edge ], [ %14, %land.lhs.true115 ]
  %incdec.ptr131 = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.then124
  %18 = phi i8 [ %17, %if.then130 ], [ %1, %if.then124 ]
  %s.promoted38 = phi ptr [ %incdec.ptr131, %if.then130 ], [ %0, %if.then124 ]
  %cond21 = phi i64 [ -1, %if.then130 ], [ 1, %if.then124 ]
  br label %while.cond133

while.cond133:                                    ; preds = %while.body141, %if.end132
  %19 = phi i8 [ %18, %if.end132 ], [ %.pre56, %while.body141 ]
  %incdec.ptr14439 = phi ptr [ %s.promoted38, %if.end132 ], [ %incdec.ptr144, %while.body141 ]
  %value.0 = phi i64 [ 0, %if.end132 ], [ %sub, %while.body141 ]
  %idxprom136 = sext i8 %19 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %2, i64 %idxprom136
  %20 = load i16, ptr %arrayidx137, align 2, !tbaa !16, !invariant.load !18
  %21 = and i16 %20, 2048
  %tobool140.not = icmp eq i16 %21, 0
  br i1 %tobool140.not, label %while.end145, label %while.body141

while.body141:                                    ; preds = %while.cond133
  %mul = mul nsw i64 %value.0, 10
  %add143 = add i64 %mul, -48
  %sub = add i64 %add143, %idxprom136
  %incdec.ptr144 = getelementptr inbounds nuw i8, ptr %incdec.ptr14439, i64 1
  %.pre56 = load i8, ptr %incdec.ptr144, align 1, !tbaa !5, !invariant.load !18
  br label %while.cond133, !llvm.loop !129

while.end145:                                     ; preds = %while.cond133
  store ptr %incdec.ptr14439, ptr %s, align 8
  %cmp147 = icmp eq i8 %19, 46
  br i1 %cmp147, label %land.lhs.true149, label %if.else183

land.lhs.true149:                                 ; preds = %while.end145
  %arrayidx151 = getelementptr inbounds nuw i8, ptr %incdec.ptr14439, i64 1
  %22 = load i8, ptr %arrayidx151, align 1, !tbaa !5, !invariant.load !18
  %idxprom153 = sext i8 %22 to i64
  %arrayidx154 = getelementptr inbounds i16, ptr %2, i64 %idxprom153
  %23 = load i16, ptr %arrayidx154, align 2, !tbaa !16, !invariant.load !18
  %24 = and i16 %23, 2048
  %tobool157.not = icmp eq i16 %24, 0
  br i1 %tobool157.not, label %if.else183, label %while.end176

while.end176:                                     ; preds = %land.lhs.true149
  store ptr %arrayidx151, ptr %s, align 8, !tbaa !42
  %mul161 = mul nsw i64 %value.0, %cond21
  %call162 = tail call i32 @xlate_cardinal(i64 noundef %mul161, ptr nofree noundef captures(none) %phone) #29
  %add163 = add i32 %call162, %nph.0
  %call164 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(6) @.str.4.857, ptr nofree noundef captures(none) %phone) #29
  %add165 = add i32 %add163, %call164
  call fastcc void @outlined_ir_func_5(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %s, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %ch, i32 noundef 2048) #29
  %25 = load ptr, ptr %s, align 8, !tbaa !42
  %sub.ptr.lhs.cast177 = ptrtoint ptr %25 to i64
  %sub.ptr.rhs.cast178 = ptrtoint ptr %arrayidx151 to i64
  %sub.ptr.sub179 = sub i64 %sub.ptr.lhs.cast177, %sub.ptr.rhs.cast178
  %conv180 = trunc i64 %sub.ptr.sub179 to i32
  %call181 = tail call i32 @spell_out(ptr noundef nonnull %arrayidx151, i32 noundef %conv180, ptr nofree noundef captures(none) %phone) #29
  br label %if.end188

if.else183:                                       ; preds = %land.lhs.true149, %while.end145
  %mul185 = mul nsw i64 %value.0, %cond21
  %call186 = tail call i32 @xlate_cardinal(i64 noundef %mul185, ptr nofree noundef captures(none) %phone) #29
  br label %if.end188

if.end188:                                        ; preds = %if.else183, %while.end176
  %nph.1 = phi i32 [ %add165, %while.end176 ], [ %nph.0, %if.else183 ]
  %call186.sink = phi i32 [ %call181, %while.end176 ], [ %call186, %if.else183 ]
  %add187 = add i32 %call186.sink, %nph.1
  br label %while.end302

if.else189:                                       ; preds = %lor.lhs.false111
  %cmp191 = icmp eq i8 %1, 91
  br i1 %cmp191, label %land.lhs.true193, label %if.else215

land.lhs.true193:                                 ; preds = %if.else189
  %call194 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 93) #31
  %tobool195.not = icmp eq ptr %call194, null
  br i1 %tobool195.not, label %if.else215, label %while.cond198

while.cond198:                                    ; preds = %land.lhs.true193, %land.end206
  %incdec.ptr20236 = phi ptr [ %incdec.ptr202, %land.end206 ], [ %0, %land.lhs.true193 ]
  %26 = load i8, ptr %incdec.ptr20236, align 1, !tbaa !5, !invariant.load !18
  %tobool200.not = icmp eq i8 %26, 0
  br i1 %tobool200.not, label %while.end208, label %land.end206

land.end206:                                      ; preds = %while.cond198
  %incdec.ptr202 = getelementptr inbounds nuw i8, ptr %incdec.ptr20236, i64 1
  %cmp204.not = icmp eq i8 %26, 93
  br i1 %cmp204.not, label %while.end208, label %while.cond198, !llvm.loop !130

while.end208:                                     ; preds = %while.cond198, %land.end206
  %incdec.ptr20237 = phi ptr [ %incdec.ptr20236, %while.cond198 ], [ %incdec.ptr202, %land.end206 ]
  store ptr %incdec.ptr20237, ptr %s, align 8
  %sub.ptr.lhs.cast209 = ptrtoint ptr %incdec.ptr20237 to i64
  %sub.ptr.rhs.cast210 = ptrtoint ptr %0 to i64
  %sub.ptr.sub211 = sub i64 %sub.ptr.lhs.cast209, %sub.ptr.rhs.cast210
  %conv212 = trunc i64 %sub.ptr.sub211 to i32
  %call213 = tail call fastcc i32 @xlate_word(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %conv212, ptr nofree noundef captures(none) %phone) #29
  %add214 = add i32 %call213, %nph.0
  br label %while.end302

if.else215:                                       ; preds = %land.lhs.true115, %land.lhs.true193, %if.else189
  %and221 = and i32 %conv9, 4
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %while.cond266, label %if.then223

if.then223:                                       ; preds = %if.else215
  switch i8 %1, label %sw.default [
    i8 33, label %sw.bb
    i8 63, label %sw.bb
    i8 46, label %sw.bb
    i8 34, label %sw.bb245
    i8 58, label %sw.bb245
    i8 45, label %sw.bb245
    i8 59, label %sw.bb245
    i8 44, label %sw.bb245
    i8 40, label %sw.bb245
    i8 41, label %sw.bb245
    i8 91, label %sw.bb248
  ]

sw.bb:                                            ; preds = %if.then223, %if.then223, %if.then223
  %arrayidx225 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %27 = load i8, ptr %arrayidx225, align 1, !tbaa !5, !invariant.load !18
  %tobool226.not = icmp eq i8 %27, 0
  br i1 %tobool226.not, label %land.lhs.true236, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %sw.bb
  %idxprom231 = sext i8 %27 to i64
  %arrayidx232 = getelementptr inbounds i16, ptr %2, i64 %idxprom231
  %28 = load i16, ptr %arrayidx232, align 2, !tbaa !16, !invariant.load !18
  %29 = and i16 %28, 8192
  %tobool235.not = icmp eq i16 %29, 0
  br i1 %tobool235.not, label %if.end242, label %land.lhs.true236

land.lhs.true236:                                 ; preds = %lor.lhs.false227, %sw.bb
  %30 = load i32, ptr %items, align 8, !tbaa !24, !invariant.load !18
  %tobool237.not = icmp eq i32 %30, 0
  br i1 %tobool237.not, label %if.end242, label %if.then238

if.then238:                                       ; preds = %land.lhs.true236
  %31 = load i32, ptr %alloc.i.i, align 4, !tbaa !23, !invariant.load !18, !noalias !131
  %cmp.i.i.not = icmp eq i32 %31, 0
  br i1 %cmp.i.i.not, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then238
  %32 = load ptr, ptr %phone, align 8, !tbaa !20, !invariant.load !18, !noalias !131
  br label %darray_find.858.exit

if.end.i.i:                                       ; preds = %if.then238
  %call.i.i = tail call ptr @Darray_find(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %phone, i32 noundef 0) #29, !noalias !131
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.then.i.i, %if.end.i.i
  %storemerge.i.i = phi ptr [ %call.i.i, %if.end.i.i ], [ %32, %if.then.i.i ]
  %33 = load i32, ptr @verbose, align 4, !tbaa !10
  tail call void @say_phones(ptr noundef %storemerge.i.i, i32 noundef %30, i32 noundef %33) #29
  store i32 0, ptr %items, align 8, !tbaa !24
  br label %if.end242

if.end242:                                        ; preds = %darray_find.858.exit, %land.lhs.true236, %lor.lhs.false227
  store ptr %arrayidx225, ptr %s, align 8, !tbaa !42
  %call244 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %phone, i32 noundef 32) #29
  br label %while.end302

sw.bb245:                                         ; preds = %if.then223, %if.then223, %if.then223, %if.then223, %if.then223, %if.then223, %if.then223
  %incdec.ptr246 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %incdec.ptr246, ptr %s, align 8, !tbaa !42
  %call247 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %phone, i32 noundef 32) #29
  br label %while.end302

sw.bb248:                                         ; preds = %if.then223
  %call249 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 93) #30
  %tobool250.not = icmp eq ptr %call249, null
  br i1 %tobool250.not, label %sw.default, label %if.then251

if.then251:                                       ; preds = %sw.bb248
  br label %while.cond253

while.cond253:                                    ; preds = %while.body256, %if.then251
  %incdec.ptr25742.pn = phi ptr [ %incdec.ptr25742, %while.body256 ], [ %0, %if.then251 ]
  %incdec.ptr25742 = getelementptr inbounds nuw i8, ptr %incdec.ptr25742.pn, i64 1
  %cmp254 = icmp ult ptr %incdec.ptr25742, %call249
  br i1 %cmp254, label %while.body256, label %cleanup

while.body256:                                    ; preds = %while.cond253
  %34 = load i8, ptr %incdec.ptr25742, align 1, !tbaa !5, !invariant.load !18
  %conv258 = sext i8 %34 to i32
  %call259 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %phone, i32 noundef %conv258) #29
  br label %while.cond253, !llvm.loop !135

cleanup:                                          ; preds = %while.cond253
  %add.ptr = getelementptr inbounds nuw i8, ptr %call249, i64 1
  store ptr %add.ptr, ptr %s, align 8, !tbaa !42
  br label %while.end302

sw.default:                                       ; preds = %sw.bb248, %if.then223
  %call262 = tail call i32 @spell_out(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 1, ptr nofree noundef captures(none) %phone) #29
  %add263 = add i32 %call262, %nph.0
  %incdec.ptr264 = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %incdec.ptr264, ptr %s, align 8, !tbaa !42
  br label %while.end302

while.cond266:                                    ; preds = %if.else215, %while.body279
  %35 = phi i8 [ %.pre57, %while.body279 ], [ %1, %if.else215 ]
  %incdec.ptr28044 = phi ptr [ %incdec.ptr280, %while.body279 ], [ %0, %if.else215 ]
  %tobool268.not = icmp eq i8 %35, 0
  br i1 %tobool268.not, label %while.end281, label %land.end278

land.end278:                                      ; preds = %while.cond266
  %idxprom272 = sext i8 %35 to i64
  %arrayidx273 = getelementptr inbounds i16, ptr %2, i64 %idxprom272
  %36 = load i16, ptr %arrayidx273, align 2, !tbaa !16, !invariant.load !18
  %37 = and i16 %36, 8192
  %tobool276.not = icmp eq i16 %37, 0
  br i1 %tobool276.not, label %while.body279, label %while.end281

while.body279:                                    ; preds = %land.end278
  %incdec.ptr280 = getelementptr inbounds nuw i8, ptr %incdec.ptr28044, i64 1
  %.pre57 = load i8, ptr %incdec.ptr280, align 1, !tbaa !5, !invariant.load !18
  br label %while.cond266, !llvm.loop !136

while.end281:                                     ; preds = %while.cond266, %land.end278
  store ptr %incdec.ptr28044, ptr %s, align 8
  %sub.ptr.lhs.cast282 = ptrtoint ptr %incdec.ptr28044 to i64
  %sub.ptr.rhs.cast283 = ptrtoint ptr %0 to i64
  %sub.ptr.sub284 = sub i64 %sub.ptr.lhs.cast282, %sub.ptr.rhs.cast283
  %conv285 = trunc i64 %sub.ptr.sub284 to i32
  %call286 = tail call i32 @spell_out(ptr noundef nonnull dereferenceable(1) %0, i32 noundef %conv285, ptr nofree noundef captures(none) %phone) #29
  %add287 = add i32 %call286, %nph.0
  br label %while.end302

while.end302:                                     ; preds = %while.end96, %if.then68, %while.end208, %if.end242, %sw.bb245, %sw.default, %cleanup, %while.end281, %if.end188
  %nph.2 = phi i32 [ %add, %if.then68 ], [ %add102, %while.end96 ], [ %add187, %if.end188 ], [ %add214, %while.end208 ], [ %add263, %sw.default ], [ %nph.0, %if.end242 ], [ %nph.0, %sw.bb245 ], [ %nph.0, %cleanup ], [ %add287, %while.end281 ]
  call fastcc void @outlined_ir_func_5(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %s, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %ch, i32 noundef 8192) #29
  br label %while.cond2, !llvm.loop !137

while.end303:                                     ; preds = %while.cond2
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef nonnull captures(none) dereferenceable(1) %ch) #29
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %s) #29
  ret i32 %nph.0
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #17

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @suspect_word(ptr nofree noundef readnone captures(none) %s, i32 noundef %n) local_unnamed_addr #18 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  br i1 %cmp, label %for.cond, label %for.end

for.end:                                          ; preds = %for.cond
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @xlate_word(ptr noundef nonnull dereferenceable(1) %word, i32 noundef %n, ptr nofree noundef captures(none) %phone) unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @dict, align 8
  %tobool.i.not = icmp eq ptr %0, null
  br label %tailrecurse

tailrecurse:                                      ; preds = %cleanup42.thread, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add37, %cleanup42.thread ]
  %word.tr = phi ptr [ %word, %entry ], [ %incdec.ptr26, %cleanup42.thread ]
  %n.tr = phi i32 [ %n, %entry ], [ %conv35, %cleanup42.thread ]
  %1 = load i8, ptr %word.tr, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %1, 91
  br i1 %cmp.not, label %if.else60, label %if.then

if.then:                                          ; preds = %tailrecurse
  br i1 %tobool.i.not, label %if.end45, label %while.cond15.preheader

while.cond15.preheader:                           ; preds = %if.then
  %idx.ext = sext i32 %n.tr to i64
  %add.ptr = getelementptr inbounds i8, ptr %word.tr, i64 %idx.ext
  br label %while.cond15

while.cond15:                                     ; preds = %while.cond15.preheader, %if.end
  %h.0 = phi ptr [ %incdec.ptr39, %if.end ], [ %word.tr, %while.cond15.preheader ]
  %cmp16 = icmp ult ptr %h.0, %add.ptr
  br i1 %cmp16, label %while.body18, label %if.end45

while.body18:                                     ; preds = %while.cond15
  %2 = load i8, ptr %h.0, align 1, !tbaa !5, !invariant.load !18
  %conv19 = sext i8 %2 to i32
  %conv19.off = add nsw i32 %conv19, -45
  %switch = icmp ult i32 %conv19.off, 2
  br i1 %switch, label %cleanup42.thread, label %if.end

if.end:                                           ; preds = %while.body18
  %incdec.ptr39 = getelementptr inbounds nuw i8, ptr %h.0, i64 1
  br label %while.cond15, !llvm.loop !138

cleanup42.thread:                                 ; preds = %while.body18
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %h.0, i64 1
  %sub.ptr.lhs.cast = ptrtoint ptr %h.0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %word.tr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv27 = trunc i64 %sub.ptr.sub to i32
  %call28 = tail call fastcc i32 @xlate_word(ptr noundef nonnull dereferenceable(1) %word.tr, i32 noundef %conv27, ptr nofree noundef captures(none) %phone) #29
  %sub.ptr.lhs.cast32 = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast33 = ptrtoint ptr %incdec.ptr26 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %conv35 = trunc i64 %sub.ptr.sub34 to i32
  %add37 = add i32 %call28, %accumulator.tr
  br label %tailrecurse

if.end45:                                         ; preds = %if.then, %while.cond15
  %accumulator.tr33 = phi i32 [ %accumulator.tr, %while.cond15 ], [ 0, %if.then ]
  %word.tr29 = phi ptr [ %word.tr, %while.cond15 ], [ %word, %if.then ]
  %n.tr26 = phi i32 [ %n.tr, %while.cond15 ], [ %n, %if.then ]
  %cmp.i = icmp sgt i32 %n.tr26, 0
  br i1 %cmp.i, label %for.cond.i, label %if.then48

for.cond.i:                                       ; preds = %if.end45, %for.cond.i
  br label %for.cond.i

if.then48:                                        ; preds = %if.end45
  %call49 = tail call i32 @spell_out(ptr noundef nonnull dereferenceable(1) %word.tr29, i32 noundef %n.tr26, ptr nofree noundef captures(none) %phone) #29
  br label %cleanup83

if.else60:                                        ; preds = %tailrecurse
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %word.tr, i64 1
  %3 = sext i32 %n.tr to i64
  %4 = getelementptr i8, ptr %incdec.ptr61, i64 %3
  %arrayidx63 = getelementptr i8, ptr %4, i64 -2
  %5 = load i8, ptr %arrayidx63, align 1, !tbaa !5, !invariant.load !18
  %cmp65 = icmp eq i8 %5, 93
  %spec.select.v = select i1 %cmp65, i32 -2, i32 -1
  %spec.select = add nsw i32 %spec.select.v, %n.tr
  br label %while.cond70

while.cond70:                                     ; preds = %while.body74, %if.else60
  %n.addr.1 = phi i32 [ %spec.select, %if.else60 ], [ %dec71, %while.body74 ]
  %nph.1 = phi i32 [ 0, %if.else60 ], [ %inc78, %while.body74 ]
  %word.addr.0 = phi ptr [ %incdec.ptr61, %if.else60 ], [ %incdec.ptr75, %while.body74 ]
  %cmp72 = icmp sgt i32 %n.addr.1, 0
  br i1 %cmp72, label %while.body74, label %if.end80

while.body74:                                     ; preds = %while.cond70
  %dec71 = add nsw i32 %n.addr.1, -1
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %word.addr.0, i64 1
  %6 = load i8, ptr %word.addr.0, align 1, !tbaa !5, !invariant.load !18
  %conv76 = sext i8 %6 to i32
  %call77 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %phone, i32 noundef %conv76) #29
  %inc78 = add nuw i32 %nph.1, 1
  br label %while.cond70, !llvm.loop !139

if.end80:                                         ; preds = %while.cond70
  %call81 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %phone, i32 noundef 32) #29
  %add82 = add i32 %nph.1, 1
  br label %cleanup83

cleanup83:                                        ; preds = %if.end80, %if.then48
  %accumulator.tr32 = phi i32 [ %accumulator.tr33, %if.then48 ], [ %accumulator.tr, %if.end80 ]
  %retval.0 = phi i32 [ %call49, %if.then48 ], [ %add82, %if.end80 ]
  %accumulator.ret.tr = add i32 %retval.0, %accumulator.tr32
  ret i32 %accumulator.ret.tr
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @darray_find.858(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %a) unnamed_addr #19 {
entry:
  %alloc.i = getelementptr inbounds nuw i8, ptr %a, i64 12
  %0 = load i32, ptr %alloc.i, align 4, !tbaa !23, !invariant.load !18, !noalias !140
  %cmp.i = icmp ne i32 %0, 0
  %items.i = getelementptr inbounds nuw i8, ptr %a, i64 8
  %1 = load i32, ptr %items.i, align 8, !noalias !140
  %cmp1.i = icmp ne i32 %1, 0
  %or.cond.i = select i1 %cmp.i, i1 %cmp1.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  %2 = load ptr, ptr %a, align 8, !tbaa !20, !invariant.load !18, !noalias !140
  br label %outlined_ir_func_0.exit

if.end.i:                                         ; preds = %entry
  %call.i = tail call ptr @Darray_find(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %a, i32 noundef 0) #29, !noalias !140
  br label %outlined_ir_func_0.exit

outlined_ir_func_0.exit:                          ; preds = %if.then.i, %if.end.i
  %storemerge.i = phi ptr [ %call.i, %if.end.i ], [ %2, %if.then.i ]
  ret ptr %storemerge.i
}

; Function Attrs: nounwind uwtable
define dso_local void @say_phones(ptr noundef %phone, i32 noundef %len, i32 noundef %verbose) local_unnamed_addr #0 {
entry:
  %elm = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 24, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %elm) #36
  %esize.i = getelementptr inbounds nuw i8, ptr %elm, i64 16
  store i16 1, ptr %esize.i, align 8, !tbaa !25, !alias.scope !144
  %conv1.i = trunc i32 %len to i16
  %get2.i = getelementptr inbounds nuw i8, ptr %elm, i64 18
  store i16 %conv1.i, ptr %get2.i, align 2, !tbaa !26, !alias.scope !144
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 8 dereferenceable(24) %elm, i8 noundef 0, i64 noundef 16, i1 noundef false) #37, !alias.scope !144
  %call = call i32 @phone_to_elm(ptr noundef %phone, i32 noundef %len, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %elm) #29
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 40), align 8, !tbaa !41
  %1 = trunc i64 %0 to i32
  %conv1 = mul i32 %call, %1
  %conv2 = zext i32 %conv1 to i64
  %mul3 = shl nuw nsw i64 %conv2, 1
  %call4 = tail call noalias ptr @malloc(i64 noundef %mul3) #34
  %tobool5.not = icmp eq i32 %verbose, 0
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8, !tbaa !52
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3.859, i32 noundef %len, ptr noundef %phone) #33
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %tobool.i.not = icmp eq ptr %call4, null
  br i1 %tobool.i.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end
  %call10 = call fastcc ptr @darray_find.858(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %elm) #29
  tail call void @parwave_init(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) @klatt_global) #29
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.then9
  br label %for.body.i

if.end17:                                         ; preds = %if.end, %entry
  call void @darray_free(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %elm) #29
  call void @llvm.lifetime.end.p0(i64 noundef 24, ptr noundef nonnull captures(none) %elm) #29
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #17

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @concat_args(i32 noundef %argc, ptr nofree noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %smax = call i32 @llvm.smax.i32(i32 noundef %argc, i32 noundef 1) #37
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %len.0 = phi i64 [ %add1, %for.body ], [ 0, %entry ]
  %sext = shl i64 %len.0, 32
  %conv3 = ashr exact i64 %sext, 32
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw ptr, ptr %argv, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !42, !invariant.load !18
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %add = add nsw i64 %conv3, 1
  %add1 = add i64 %add, %call
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond

for.end:                                          ; preds = %for.cond
  %call4 = tail call noalias ptr @malloc(i64 noundef %conv3) #34
  %tobool.i.not = icmp eq ptr %call4, null
  br i1 %tobool.i.not, label %if.end19, label %for.cond5

for.cond5:                                        ; preds = %for.end, %while.end
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %while.end ], [ 1, %for.end ]
  %d.0 = phi ptr [ %d.2, %while.end ], [ %call4, %for.end ]
  %exitcond10.not = icmp eq i64 %indvars.iv6, %wide.trip.count
  br i1 %exitcond10.not, label %if.end19, label %for.body8

for.body8:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw ptr, ptr %argv, i64 %indvars.iv6
  %1 = load ptr, ptr %arrayidx11, align 8, !tbaa !42, !invariant.load !18
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body8
  %d.1 = phi ptr [ %d.0, %for.body8 ], [ %incdec.ptr13, %while.body ]
  %s.0 = phi ptr [ %1, %for.body8 ], [ %incdec.ptr, %while.body ]
  %2 = load i8, ptr %s.0, align 1, !tbaa !5, !invariant.load !18
  %tobool12.not = icmp eq i8 %2, 0
  br i1 %tobool12.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.0, i64 1
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %d.1, i64 1
  store i8 %2, ptr %d.1, align 1, !tbaa !5
  br label %while.cond, !llvm.loop !147

while.end:                                        ; preds = %while.cond
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  %3 = trunc nuw i64 %indvars.iv.next7 to i32
  %cmp14 = icmp sgt i32 %argc, %3
  %storemerge = select i1 %cmp14, i8 32, i8 0
  %d.2.idx = zext i1 %cmp14 to i64
  %d.2 = getelementptr inbounds nuw i8, ptr %d.1, i64 %d.2.idx
  store i8 %storemerge, ptr %d.1, align 1, !tbaa !5
  br label %for.cond5, !llvm.loop !148

if.end19:                                         ; preds = %for.cond5, %for.end
  ret ptr %call4
}

; Function Attrs: nounwind uwtable
define dso_local void @say_string(ptr nofree noundef %s) local_unnamed_addr #0 {
entry:
  %phone = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 24, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %phone) #36
  %esize.i = getelementptr inbounds nuw i8, ptr %phone, i64 16
  store i16 1, ptr %esize.i, align 8, !tbaa !25, !alias.scope !149
  %get2.i = getelementptr inbounds nuw i8, ptr %phone, i64 18
  store i16 128, ptr %get2.i, align 2, !tbaa !26, !alias.scope !149
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 8 dereferenceable(24) %phone, i8 noundef 0, i64 noundef 16, i1 noundef false) #43, !alias.scope !149
  %call = call i32 @xlate_string(ptr nofree noundef %s, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %phone) #29
  %items = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %0 = load i32, ptr %items, align 8, !tbaa !24
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call fastcc void @outlined_ir_func_6(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %phone) #29
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @darray_free(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %phone) #29
  call void @llvm.lifetime.end.p0(i64 noundef 24, ptr noundef nonnull captures(none) %phone) #29
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @darray_fget(ptr noundef %f, ptr nofree noundef captures(none) %p) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call i32 @fgetc(ptr noundef %f) #29
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %p, i32 noundef %call) #29
  %cmp2 = icmp eq i32 %call, 10
  br i1 %cmp2, label %while.end, label %while.cond, !llvm.loop !152

while.end:                                        ; preds = %while.body, %while.cond
  %call3 = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %p, i32 noundef 0) #29
  %items = getelementptr inbounds nuw i8, ptr %p, i64 8
  %0 = load i32, ptr %items, align 8, !tbaa !24
  %sub = add i32 %0, -1
  ret i32 %sub
}

declare i32 @fgetc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @say_file(ptr noundef %f) local_unnamed_addr #0 {
entry:
  %loop_wrap2 = alloca i64, align 8
  %line = alloca %struct.darray_t, align 8
  %phone = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 %loop_wrap2) #27
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str.5.861, ptr noundef nonnull @.str.6.862) #29
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !52
  %1 = tail call i64 @fwrite(ptr noundef nonnull @.str.7.863, i64 noundef 28, i64 noundef 1, ptr noundef %0) #33
  tail call void @exit(i32 noundef 1) #38
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.8.864, ptr noundef nonnull %loop_wrap2) #29
  %call3 = call i32 @fclose(ptr noundef nonnull %call) #29
  call void @llvm.lifetime.start.p0(i64 noundef 24, ptr noundef nonnull align 8 dereferenceable(24) %line) #29
  call void @llvm.lifetime.start.p0(i64 noundef 24, ptr noundef nonnull align 8 captures(none) dereferenceable(24) %phone) #29
  %esize.i = getelementptr inbounds nuw i8, ptr %line, i64 16
  store i16 1, ptr %esize.i, align 8, !tbaa !25, !alias.scope !153
  %get2.i = getelementptr inbounds nuw i8, ptr %line, i64 18
  store i16 128, ptr %get2.i, align 2, !tbaa !26, !alias.scope !153
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %line, i8 noundef 0, i64 noundef 16, i1 noundef false), !alias.scope !153
  %esize.i5 = getelementptr inbounds nuw i8, ptr %phone, i64 16
  store i16 1, ptr %esize.i5, align 8, !tbaa !25, !alias.scope !156
  %get2.i6 = getelementptr inbounds nuw i8, ptr %phone, i64 18
  store i16 128, ptr %get2.i6, align 2, !tbaa !26, !alias.scope !156
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %phone, i8 noundef 0, i64 noundef 16, i1 noundef false), !alias.scope !156
  %items.i.i = getelementptr inbounds nuw i8, ptr %line, i64 8
  br label %while.cond

while.cond:                                       ; preds = %darray_find.858.exit, %if.end
  %nlines.0 = phi i64 [ 0, %if.end ], [ %inc, %darray_find.858.exit ]
  %call4 = call i32 @darray_fget(ptr noundef %f, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %line) #29
  %tobool = icmp ne i32 %call4, 0
  %cmp5 = icmp samesign ult i64 %nlines.0, 500
  %or.cond = select i1 %tobool, i1 %cmp5, i1 false
  br i1 %or.cond, label %darray_find.858.exit, label %while.end

darray_find.858.exit:                             ; preds = %while.cond
  %inc = add nuw nsw i64 %nlines.0, 1
  %call.i.i = call ptr @Darray_find(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %line, i32 noundef 0) #29, !noalias !159
  %call7 = call i32 @xlate_string(ptr nofree noundef %call.i.i, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %phone) #29
  store i32 0, ptr %items.i.i, align 8, !tbaa !24
  br label %while.cond, !llvm.loop !163

while.end:                                        ; preds = %while.cond
  %items8 = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %2 = load i32, ptr %items8, align 8, !tbaa !24
  %tobool9.not = icmp eq i32 %2, 0
  br i1 %tobool9.not, label %if.end15, label %for.cond

for.cond:                                         ; preds = %while.end, %for.inc
  %loop_wrap1.0 = phi i64 [ %inc14, %for.inc ], [ 0, %while.end ]
  %3 = load i64, ptr %loop_wrap2, align 8, !tbaa !12
  %cmp11 = icmp slt i64 %loop_wrap1.0, %3
  br i1 %cmp11, label %for.inc, label %if.end15

for.inc:                                          ; preds = %for.cond
  call fastcc void @outlined_ir_func_6(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %phone) #29
  %inc14 = add nuw nsw i64 %loop_wrap1.0, 1
  br label %for.cond, !llvm.loop !164

if.end15:                                         ; preds = %for.cond, %while.end
  call void @darray_free(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %phone) #29
  call void @darray_free(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %line) #29
  call void @llvm.lifetime.end.p0(i64 noundef 24, ptr noundef nonnull captures(none) %phone) #29
  call void @llvm.lifetime.end.p0(i64 noundef 24, ptr noundef nonnull %line) #29
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %loop_wrap2) #29
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %argv, ptr nofree noundef readnone captures(none) %env) local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr %argv, align 8, !tbaa !42
  store ptr %0, ptr @program, align 8, !tbaa !42
  %call = tail call i32 @audio_init(i32 noundef %argc, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %argv) #29
  %call1 = tail call i32 @init_synth(i32 noundef %call, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %argv) #29
  %call2 = tail call i32 @init_holmes(i32 noundef %call1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %argv) #29
  %call4 = tail call i32 @file_init(i32 noundef %call2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %argv) #29
  %call5 = tail call i32 (ptr, i32, ptr, ...) @getargs(ptr nofree noundef nonnull dereferenceable(5) @.str.9.865, i32 noundef %call4, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %argv, ptr noundef nonnull dereferenceable(2) @.str.10.866, ptr noundef null, ptr noundef nonnull align 4 dereferenceable(4) @verbose, ptr noundef nonnull dereferenceable(28) @.str.11.867, ptr noundef null) #29
  %1 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !52
  %3 = load ptr, ptr @program, align 8, !tbaa !42
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.12.868, ptr noundef %3) #33
  %4 = load ptr, ptr @stderr, align 8, !tbaa !52
  %5 = load ptr, ptr @program, align 8, !tbaa !42
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.13.869, ptr noundef %5) #33
  tail call fastcc void @outlined_ir_func_2.20(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) @Revision, ptr noundef nonnull dereferenceable(6) @.str.14.870) #29
  br label %if.end15

if.else:                                          ; preds = %entry
  %cmp = icmp sgt i32 %call5, 1
  br i1 %cmp, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  %call10 = tail call noalias ptr @concat_args(i32 noundef %call5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %argv) #29
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.then9
  tail call void @say_string(ptr nofree noundef nonnull %call10) #29
  tail call void @free(ptr noundef nonnull %call10) #29
  br label %if.end15

if.else13:                                        ; preds = %if.else
  %6 = load ptr, ptr @stdin, align 8, !tbaa !52
  tail call void @say_file(ptr noundef %6) #29
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then12, %if.else13, %if.then
  %7 = load ptr, ptr @file_term, align 8, !tbaa !14
  %tobool16.not = icmp eq ptr %7, null
  br i1 %tobool16.not, label %if.end21, label %if.then17

if.then17:                                        ; preds = %if.end15
  tail call void %7() #29
  br label %if.end21

if.end21:                                         ; preds = %if.end15, %if.then17
  tail call void @audio_term() #29
  tail call void @term_holmes() #29
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_cardinal(i64 noundef %value, ptr nofree noundef captures(none) %phone) local_unnamed_addr #0 {
entry:
  %value.addr = alloca i64, align 8
  %nph = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %nph) #36
  %targetBlock = call fastcc i16 @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %nph, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %value.addr, ptr nofree noundef captures(none) %phone) #29
  switch i16 %targetBlock, label %entry_after_outline [
    i16 0, label %cleanup
    i16 1, label %entry.if.end20thread-pre-split_crit_edge
  ]

entry.if.end20thread-pre-split_crit_edge:         ; preds = %entry
  %.pr.pre = load i64, ptr %value.addr, align 8, !tbaa !12
  br label %if.end20

entry_after_outline:                              ; preds = %entry
  %call10 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(8) @.str.3.876, ptr nofree noundef captures(none) %phone) #29
  %0 = load i32, ptr %nph, align 4, !tbaa !10
  %add11 = add i32 %0, %call10
  store i32 %add11, ptr %nph, align 4, !tbaa !10
  %1 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem = srem i64 %1, 1000000000
  %cmp12 = icmp eq i64 %rem, 0
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %entry_after_outline
  %cmp15 = icmp slt i64 %rem, 100
  br i1 %cmp15, label %if.end68.sink.split, label %if.end20

if.end20:                                         ; preds = %entry.if.end20thread-pre-split_crit_edge, %if.end14
  %2 = phi i64 [ %rem, %if.end14 ], [ %.pr.pre, %entry.if.end20thread-pre-split_crit_edge ]
  %cmp21 = icmp sgt i64 %2, 999999
  br i1 %cmp21, label %if.then22, label %if.end37

if.then22:                                        ; preds = %if.end20
  %div23 = udiv i64 %2, 1000000
  %call24 = tail call i32 @xlate_cardinal(i64 noundef %div23, ptr nofree noundef captures(none) %phone) #29
  %3 = load i32, ptr %nph, align 4, !tbaa !10
  %add25 = add i32 %3, %call24
  %call26 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(8) @.str.5.878, ptr nofree noundef captures(none) %phone) #29
  %add27 = add i32 %call26, %add25
  store i32 %add27, ptr %nph, align 4, !tbaa !10
  %rem28 = urem i64 %2, 1000000
  %cmp29 = icmp eq i64 %rem28, 0
  br i1 %cmp29, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.then22
  %cmp32 = icmp samesign ult i64 %rem28, 100
  br i1 %cmp32, label %if.end68.sink.split, label %if.end37

if.end37:                                         ; preds = %if.end20, %if.end31
  %4 = phi i64 [ %rem28, %if.end31 ], [ %2, %if.end20 ]
  %cmp38 = icmp sgt i64 %4, 999
  %5 = add nsw i64 %4, -2000
  %or.cond = icmp ult i64 %5, -900
  %or.cond11 = select i1 %cmp38, i1 %or.cond, i1 false
  br i1 %or.cond11, label %if.then41, label %if.end56

if.then41:                                        ; preds = %if.end37
  %div42.lhs.trunc = trunc i64 %4 to i32
  %div4225 = udiv i32 %div42.lhs.trunc, 1000
  %div42.zext = zext nneg i32 %div4225 to i64
  %call43 = tail call i32 @xlate_cardinal(i64 noundef %div42.zext, ptr nofree noundef captures(none) %phone) #29
  %6 = load i32, ptr %nph, align 4, !tbaa !10
  %add44 = add i32 %6, %call43
  %call45 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(9) @.str.6.879, ptr nofree noundef captures(none) %phone) #29
  %add46 = add i32 %call45, %add44
  %rem47.lhs.trunc = trunc i64 %4 to i32
  %rem4726 = urem i32 %rem47.lhs.trunc, 1000
  %cmp48 = icmp eq i32 %rem4726, 0
  br i1 %cmp48, label %cleanup, label %if.end50

if.end50:                                         ; preds = %if.then41
  %rem47.zext = zext nneg i32 %rem4726 to i64
  %cmp51 = icmp samesign ult i32 %rem4726, 100
  br i1 %cmp51, label %if.end68.sink.split, label %if.then58

if.end56:                                         ; preds = %if.end37
  %cmp57 = icmp sgt i64 %4, 99
  br i1 %cmp57, label %if.end56.if.then58_crit_edge, label %if.end68

if.end56.if.then58_crit_edge:                     ; preds = %if.end56
  %.pre = load i32, ptr %nph, align 4, !tbaa !10
  br label %if.then58

if.then58:                                        ; preds = %if.end56.if.then58_crit_edge, %if.end50
  %7 = phi i32 [ %add46, %if.end50 ], [ %.pre, %if.end56.if.then58_crit_edge ]
  %8 = phi i64 [ %rem47.zext, %if.end50 ], [ %4, %if.end56.if.then58_crit_edge ]
  %div59.lhs.trunc = trunc i64 %8 to i16
  %div5927 = udiv i16 %div59.lhs.trunc, 100
  %div59.zext = zext nneg i16 %div5927 to i64
  %arrayidx = getelementptr inbounds nuw [20 x ptr], ptr @Cardinals, i64 0, i64 %div59.zext
  %9 = load ptr, ptr %arrayidx, align 8, !tbaa !42, !invariant.load !18
  %call60 = tail call i32 @xlate_string(ptr nofree noundef %9, ptr nofree noundef captures(none) %phone) #29
  %add61 = add i32 %7, %call60
  %call62 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(8) @.str.7.880, ptr nofree noundef captures(none) %phone) #29
  %add63 = add i32 %call62, %add61
  store i32 %add63, ptr %nph, align 4, !tbaa !10
  %rem64.lhs.trunc = trunc i64 %8 to i16
  %rem6428 = urem i16 %rem64.lhs.trunc, 100
  %rem64.zext = zext nneg i16 %rem6428 to i64
  %cmp65 = icmp eq i16 %rem6428, 0
  br i1 %cmp65, label %cleanup, label %if.end68

if.end68.sink.split:                              ; preds = %if.end50, %if.end31, %if.end14
  %add11.sink = phi i32 [ %add11, %if.end14 ], [ %add27, %if.end31 ], [ %add46, %if.end50 ]
  %.ph = phi i64 [ %rem, %if.end14 ], [ %rem28, %if.end31 ], [ %rem47.zext, %if.end50 ]
  %call17 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(4) @.str.4.877, ptr nofree noundef captures(none) %phone) #29
  %add18 = add i32 %call17, %add11.sink
  store i32 %add18, ptr %nph, align 4, !tbaa !10
  br label %if.end68

if.end68:                                         ; preds = %if.end68.sink.split, %if.then58, %if.end56
  %10 = phi i64 [ %rem64.zext, %if.then58 ], [ %4, %if.end56 ], [ %.ph, %if.end68.sink.split ]
  %cmp69 = icmp sgt i64 %10, 19
  br i1 %cmp69, label %if.then70, label %if.end68.if.end80_crit_edge

if.end68.if.end80_crit_edge:                      ; preds = %if.end68
  %.pre15 = load i32, ptr %nph, align 4, !tbaa !10
  br label %if.end80

if.then70:                                        ; preds = %if.end68
  %11 = trunc i64 %10 to i8
  %div7222.lhs.trunc = add i8 %11, -20
  %div722223 = udiv i8 %div7222.lhs.trunc, 10
  %div7222.zext = zext nneg i8 %div722223 to i64
  %arrayidx73 = getelementptr inbounds nuw [8 x ptr], ptr @Twenties, i64 0, i64 %div7222.zext
  %12 = load ptr, ptr %arrayidx73, align 8, !tbaa !42, !invariant.load !18
  %call74 = tail call i32 @xlate_string(ptr nofree noundef %12, ptr nofree noundef captures(none) %phone) #29
  %13 = load i32, ptr %nph, align 4, !tbaa !10
  %add75 = add i32 %13, %call74
  %rem76.lhs.trunc = trunc i64 %10 to i8
  %rem7624 = urem i8 %rem76.lhs.trunc, 10
  %rem76.zext = zext nneg i8 %rem7624 to i64
  %cmp77 = icmp eq i8 %rem7624, 0
  br i1 %cmp77, label %cleanup, label %if.end80

if.end80:                                         ; preds = %if.end68.if.end80_crit_edge, %if.then70
  %14 = phi i32 [ %add75, %if.then70 ], [ %.pre15, %if.end68.if.end80_crit_edge ]
  %15 = phi i64 [ %rem76.zext, %if.then70 ], [ %10, %if.end68.if.end80_crit_edge ]
  %arrayidx81 = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %15
  %16 = load ptr, ptr %arrayidx81, align 8, !tbaa !42, !invariant.load !18
  %call82 = tail call i32 @xlate_string(ptr nofree noundef %16, ptr nofree noundef captures(none) %phone) #29
  %add83 = add i32 %14, %call82
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %entry_after_outline, %if.then22, %if.then41, %if.then58, %if.then70, %entry
  %retval.0 = phi i32 [ undef, %entry ], [ %add75, %if.then70 ], [ %add63, %if.then58 ], [ %add46, %if.then41 ], [ %add27, %if.then22 ], [ %add11, %entry_after_outline ], [ %add83, %if.end80 ]
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %nph) #29
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_ordinal(i64 noundef %value, ptr nofree noundef captures(none) %phone) local_unnamed_addr #0 {
entry:
  %value.addr = alloca i64, align 8
  %nph = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 dereferenceable(4) %nph) #36
  %targetBlock = call fastcc i16 @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %nph, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %value.addr, ptr nofree noundef captures(none) %phone) #29
  %cond = icmp eq i16 %targetBlock, 1
  %.pr.pre = load i64, ptr %value.addr, align 8, !tbaa !12
  br i1 %cond, label %if.end22, label %entry_after_outline

entry_after_outline:                              ; preds = %entry
  %rem = srem i64 %.pr.pre, 1000000000
  %cmp10 = icmp eq i64 %rem, 0
  br i1 %cmp10, label %cleanup.gvnsink.split, label %if.end14

if.end14:                                         ; preds = %entry_after_outline
  %call15 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(8) @.str.3.876, ptr nofree noundef captures(none) %phone) #29
  %0 = load i32, ptr %nph, align 4, !tbaa !10
  %add16 = add i32 %0, %call15
  store i32 %add16, ptr %nph, align 4, !tbaa !10
  %cmp17 = icmp slt i64 %rem, 100
  br i1 %cmp17, label %if.end76.sink.split, label %if.end22

if.end22:                                         ; preds = %entry, %if.end14
  %1 = phi i64 [ %rem, %if.end14 ], [ %.pr.pre, %entry ]
  %cmp23 = icmp sgt i64 %1, 999999
  br i1 %cmp23, label %if.then24, label %if.end41

if.then24:                                        ; preds = %if.end22
  %div25 = udiv i64 %1, 1000000
  %call26 = tail call i32 @xlate_cardinal(i64 noundef %div25, ptr nofree noundef captures(none) %phone) #29
  %2 = load i32, ptr %nph, align 4, !tbaa !10
  %add27 = add i32 %2, %call26
  store i32 %add27, ptr %nph, align 4, !tbaa !10
  %rem28 = urem i64 %1, 1000000
  %cmp29 = icmp eq i64 %rem28, 0
  br i1 %cmp29, label %cleanup.gvnsink.split, label %if.end33

if.end33:                                         ; preds = %if.then24
  %call34 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(8) @.str.5.878, ptr nofree noundef captures(none) %phone) #29
  %add35 = add i32 %call34, %add27
  store i32 %add35, ptr %nph, align 4, !tbaa !10
  %cmp36 = icmp samesign ult i64 %rem28, 100
  br i1 %cmp36, label %if.end76.sink.split, label %if.end41

if.end41:                                         ; preds = %if.end22, %if.end33
  %3 = phi i64 [ %rem28, %if.end33 ], [ %1, %if.end22 ]
  %cmp42 = icmp sgt i64 %3, 999
  %4 = add nsw i64 %3, -2000
  %or.cond = icmp ult i64 %4, -900
  %or.cond12 = select i1 %cmp42, i1 %or.cond, i1 false
  br i1 %or.cond12, label %if.then45, label %if.end62

if.then45:                                        ; preds = %if.end41
  %div46.lhs.trunc = trunc i64 %3 to i32
  %div4625 = udiv i32 %div46.lhs.trunc, 1000
  %div46.zext = zext nneg i32 %div4625 to i64
  %call47 = tail call i32 @xlate_cardinal(i64 noundef %div46.zext, ptr nofree noundef captures(none) %phone) #29
  %5 = load i32, ptr %nph, align 4, !tbaa !10
  %add48 = add i32 %5, %call47
  store i32 %add48, ptr %nph, align 4, !tbaa !10
  %rem49.lhs.trunc = trunc i64 %3 to i32
  %rem4926 = urem i32 %rem49.lhs.trunc, 1000
  %cmp50 = icmp eq i32 %rem4926, 0
  br i1 %cmp50, label %cleanup.gvnsink.split, label %if.end54

if.end54:                                         ; preds = %if.then45
  %rem49.zext = zext nneg i32 %rem4926 to i64
  %call55 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(9) @.str.6.879, ptr nofree noundef captures(none) %phone) #29
  %add56 = add i32 %call55, %add48
  %cmp57 = icmp samesign ult i32 %rem4926, 100
  br i1 %cmp57, label %if.end76.sink.split, label %if.then64

if.end62:                                         ; preds = %if.end41
  %cmp63 = icmp sgt i64 %3, 99
  br i1 %cmp63, label %if.end62.if.then64_crit_edge, label %if.end76

if.end62.if.then64_crit_edge:                     ; preds = %if.end62
  %.pre = load i32, ptr %nph, align 4, !tbaa !10
  br label %if.then64

if.then64:                                        ; preds = %if.end62.if.then64_crit_edge, %if.end54
  %6 = phi i32 [ %add56, %if.end54 ], [ %.pre, %if.end62.if.then64_crit_edge ]
  %7 = phi i64 [ %rem49.zext, %if.end54 ], [ %3, %if.end62.if.then64_crit_edge ]
  %div65.lhs.trunc = trunc i64 %7 to i16
  %div6527 = udiv i16 %div65.lhs.trunc, 100
  %div65.zext = zext nneg i16 %div6527 to i64
  %arrayidx = getelementptr inbounds nuw [20 x ptr], ptr @Cardinals, i64 0, i64 %div65.zext
  %8 = load ptr, ptr %arrayidx, align 8, !tbaa !42, !invariant.load !18
  %call66 = tail call i32 @xlate_string(ptr nofree noundef %8, ptr nofree noundef captures(none) %phone) #29
  %add67 = add i32 %6, %call66
  store i32 %add67, ptr %nph, align 4, !tbaa !10
  %rem68.lhs.trunc = trunc i64 %7 to i16
  %rem6828 = urem i16 %rem68.lhs.trunc, 100
  %rem68.zext = zext nneg i16 %rem6828 to i64
  %cmp69 = icmp eq i16 %rem6828, 0
  br i1 %cmp69, label %cleanup.gvnsink.split, label %if.end76.sink.split

if.end76.sink.split:                              ; preds = %if.then64, %if.end54, %if.end33, %if.end14
  %.str.4.877.sink = phi ptr [ @.str.4.877, %if.end14 ], [ @.str.4.877, %if.end33 ], [ @.str.4.877, %if.end54 ], [ @.str.7.880, %if.then64 ]
  %add16.sink = phi i32 [ %add16, %if.end14 ], [ %add35, %if.end33 ], [ %add56, %if.end54 ], [ %add67, %if.then64 ]
  %.ph = phi i64 [ %rem, %if.end14 ], [ %rem28, %if.end33 ], [ %rem49.zext, %if.end54 ], [ %rem68.zext, %if.then64 ]
  %call19 = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(4) %.str.4.877.sink, ptr nofree noundef captures(none) %phone) #29
  %add20 = add i32 %call19, %add16.sink
  store i32 %add20, ptr %nph, align 4, !tbaa !10
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %if.end62
  %9 = phi i64 [ %3, %if.end62 ], [ %.ph, %if.end76.sink.split ]
  %cmp77 = icmp sgt i64 %9, 19
  br i1 %cmp77, label %if.then78, label %if.end94

if.then78:                                        ; preds = %if.end76
  %rem79.lhs.trunc = trunc i64 %9 to i8
  %rem7922 = urem i8 %rem79.lhs.trunc, 10
  %cmp80 = icmp eq i8 %rem7922, 0
  %10 = trunc i64 %9 to i8
  %div8323.lhs.trunc = add i8 %10, -20
  %div832324 = udiv i8 %div8323.lhs.trunc, 10
  %div8323.zext = zext nneg i8 %div832324 to i64
  br i1 %cmp80, label %if.then81, label %if.end87

if.then81:                                        ; preds = %if.then78
  %arrayidx84 = getelementptr inbounds nuw [8 x ptr], ptr @Ord_twenties, i64 0, i64 %div8323.zext
  %11 = load ptr, ptr %arrayidx84, align 8, !tbaa !42
  br label %cleanup.gvnsink.split

if.end87:                                         ; preds = %if.then78
  %rem79.zext = zext nneg i8 %rem7922 to i64
  %arrayidx90 = getelementptr inbounds nuw [8 x ptr], ptr @Twenties, i64 0, i64 %div8323.zext
  %12 = load ptr, ptr %arrayidx90, align 8, !tbaa !42
  %call91 = tail call i32 @xlate_string(ptr nofree noundef %12, ptr nofree noundef captures(none) %phone) #29
  %13 = load i32, ptr %nph, align 4, !tbaa !10
  %add92 = add i32 %13, %call91
  store i32 %add92, ptr %nph, align 4, !tbaa !10
  br label %if.end94

if.end94:                                         ; preds = %if.end87, %if.end76
  %14 = phi i64 [ %rem79.zext, %if.end87 ], [ %9, %if.end76 ]
  %arrayidx95 = getelementptr inbounds [20 x ptr], ptr @Ordinals, i64 0, i64 %14
  %15 = load ptr, ptr %arrayidx95, align 8, !tbaa !42, !invariant.load !18
  br label %cleanup.gvnsink.split

cleanup.gvnsink.split:                            ; preds = %if.then64, %if.then45, %if.then24, %entry_after_outline, %if.then81, %if.end94
  %.str.8.909.sink = phi ptr [ %11, %if.then81 ], [ %15, %if.end94 ], [ @.str.8.909, %entry_after_outline ], [ @.str.9.910, %if.then24 ], [ @.str.10.911, %if.then45 ], [ @.str.11.912, %if.then64 ]
  %call12 = tail call i32 @xlate_string(ptr nofree noundef %.str.8.909.sink, ptr nofree noundef captures(none) %phone) #29
  %16 = load i32, ptr %nph, align 4, !tbaa !10
  %add97 = add i32 %16, %call12
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %nph) #29
  ret i32 %add97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @isvowel(i32 noundef %chr) local_unnamed_addr #10 {
entry:
  %0 = add i32 %chr, -65
  %1 = tail call i32 @llvm.fshl.i32(i32 noundef %0, i32 noundef %0, i32 noundef 31)
  switch i32 %1, label %lor.rhs [
    i32 0, label %lor.end
    i32 2, label %lor.end
    i32 4, label %lor.end
    i32 7, label %lor.end
    i32 10, label %lor.end
  ]

lor.rhs:                                          ; preds = %entry
  br label %lor.end

lor.end:                                          ; preds = %entry, %entry, %entry, %entry, %entry, %lor.rhs
  %lor.ext = phi i32 [ 1, %entry ], [ 0, %lor.rhs ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ]
  ret i32 %lor.ext
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef range(i32 0, 2) i32 @isconsonant(i32 noundef %chr) local_unnamed_addr #20 {
entry:
  %call = tail call align 8 ptr @__ctype_b_loc() #42
  %0 = load ptr, ptr %call, align 8, !tbaa !125
  %idxprom = sext i32 %chr to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2, !tbaa !16, !invariant.load !18
  %2 = and i16 %1, 256
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %3 = add i32 %chr, -65
  %4 = tail call i32 @llvm.fshl.i32(i32 noundef %3, i32 noundef %3, i32 noundef 31)
  switch i32 %4, label %lor.rhs.i [
    i32 0, label %land.end
    i32 2, label %land.end
    i32 4, label %land.end
    i32 7, label %land.end
    i32 10, label %land.end
  ]

lor.rhs.i:                                        ; preds = %land.rhs
  br label %land.end

land.end:                                         ; preds = %lor.rhs.i, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %land.rhs, %entry
  %land.ext = phi i32 [ 0, %entry ], [ 0, %land.rhs ], [ 1, %lor.rhs.i ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ], [ 0, %land.rhs ]
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @NRL(ptr nofree noundef readonly captures(none) %s, i32 noundef %n, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(12) %phone) local_unnamed_addr #0 {
entry:
  %add = add i32 %n, 3
  %conv = zext i32 %add to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #34
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %call, i64 1
  store i8 32, ptr %call, align 1, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %s.addr.0 = phi ptr [ %s, %entry ], [ %incdec.ptr2, %if.end ]
  %n.addr.0 = phi i32 [ %n, %entry ], [ %dec, %if.end ]
  %d.0 = phi ptr [ %incdec.ptr, %entry ], [ %incdec.ptr11, %if.end ]
  %dec = add i32 %n.addr.0, -1
  %cmp.not = icmp eq i32 %n.addr.0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %s.addr.0, i64 1
  %0 = load i8, ptr %s.addr.0, align 1, !tbaa !5, !invariant.load !18
  %call3 = tail call align 8 ptr @__ctype_b_loc() #44
  %1 = load ptr, ptr %call3, align 8, !tbaa !125
  %idxprom = sext i8 %0 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !16, !invariant.load !18
  %3 = and i16 %2, 512
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call6 = tail call align 8 ptr @__ctype_toupper_loc() #44
  %4 = load ptr, ptr %call6, align 8, !tbaa !165
  %arrayidx9 = getelementptr inbounds i32, ptr %4, i64 %idxprom
  %5 = load i32, ptr %arrayidx9, align 4, !tbaa !10, !invariant.load !18
  %conv10 = trunc i32 %5 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %ch.0 = phi i8 [ %conv10, %if.then ], [ %0, %while.body ]
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %d.0, i64 1
  store i8 %ch.0, ptr %d.0, align 1, !tbaa !5
  br label %while.cond, !llvm.loop !167

while.end:                                        ; preds = %while.cond
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %d.0, i64 1
  store i8 32, ptr %d.0, align 1, !tbaa !5
  store i8 0, ptr %incdec.ptr12, align 1, !tbaa !5
  %call.i = tail call align 8 ptr @__ctype_b_loc() #44
  %invariant.gep.i.i = getelementptr i8, ptr %call, i64 -1
  %.pre.i = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  br label %do.body.i

do.body.i:                                        ; preds = %find_rule.exit.i, %while.end
  %6 = phi i8 [ %.pre.i, %while.end ], [ %60, %find_rule.exit.i ]
  %index.0.i = phi i32 [ 1, %while.end ], [ %retval.0.i.i, %find_rule.exit.i ]
  %7 = load ptr, ptr %call.i, align 8, !tbaa !125
  %idxprom.i = sext i32 %index.0.i to i64
  %conv.i = sext i8 %6 to i32
  %idxprom1.i = sext i8 %6 to i64
  %arrayidx2.i = getelementptr inbounds i16, ptr %7, i64 %idxprom1.i
  %8 = load i16, ptr %arrayidx2.i, align 2, !tbaa !16, !invariant.load !18
  %9 = and i16 %8, 256
  %tobool.not.i = icmp eq i16 %9, 0
  %add.i = add nsw i32 %conv.i, -64
  %10 = sext i32 %add.i to i64
  %idxprom7.i = select i1 %tobool.not.i, i64 0, i64 %10
  %arrayidx8.i = getelementptr inbounds [0 x ptr], ptr @Rules, i64 0, i64 %idxprom7.i
  %11 = load ptr, ptr %arrayidx8.i, align 8, !tbaa !168
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %idxprom.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.backedge.i.i, %do.body.i
  %rules.addr.0.i.i = phi ptr [ %11, %do.body.i ], [ %incdec.ptr.i.i, %for.cond.backedge.i.i ]
  %incdec.ptr.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.0.i.i, i64 32
  %arrayidx.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.0.i.i, i64 8
  %12 = load ptr, ptr %arrayidx.i.i, align 8, !tbaa !42, !invariant.load !18
  %cmp.i.i = icmp eq ptr %12, null
  br i1 %cmp.i.i, label %if.then.i.i, label %for.cond2.i.i

if.then.i.i:                                      ; preds = %for.cond.i.i
  %13 = load ptr, ptr @stderr, align 8, !tbaa !52
  %call.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.1.944, i32 noundef %conv.i, ptr noundef nonnull dereferenceable(1) %call) #33
  %add.i.i = add nsw i32 %index.0.i, 1
  br label %find_rule.exit.i

for.cond2.i.i:                                    ; preds = %for.cond.i.i, %for.inc.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc.i.i ], [ %idxprom.i, %for.cond.i.i ]
  %match.0.i.i = phi ptr [ %incdec.ptr14.i.i, %for.inc.i.i ], [ %12, %for.cond.i.i ]
  %14 = load i8, ptr %match.0.i.i, align 1, !tbaa !5, !invariant.load !18
  %cmp4.not.i.i = icmp eq i8 %14, 0
  br i1 %cmp4.not.i.i, label %if.end19.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond2.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i.i
  %15 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5, !invariant.load !18
  %cmp10.not.i.i = icmp eq i8 %14, %15
  br i1 %cmp10.not.i.i, label %for.inc.i.i, label %for.cond.backedge.i.i, !llvm.loop !171

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr14.i.i = getelementptr inbounds nuw i8, ptr %match.0.i.i, i64 1
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  br label %for.cond2.i.i, !llvm.loop !172

if.end19.i.i:                                     ; preds = %for.cond2.i.i
  %16 = load ptr, ptr %rules.addr.0.i.i, align 8, !tbaa !42, !invariant.load !18
  %arrayidx21.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.0.i.i, i64 16
  %17 = load ptr, ptr %arrayidx21.i.i, align 8, !tbaa !42, !invariant.load !18
  %18 = load i8, ptr %16, align 1, !tbaa !5, !invariant.load !18
  %cmp.i.i.i = icmp eq i8 %18, 0
  br i1 %cmp.i.i.i, label %if.end26.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end19.i.i
  %call.i.i.i = tail call i64 @strlen(ptr nofree noundef nonnull readonly dereferenceable(1) %16) #31
  %conv2.i.i.i = trunc i64 %call.i.i.i to i32
  %sub.i.i.i = shl i64 %call.i.i.i, 32
  %sext.i.i.i = add i64 %sub.i.i.i, -4294967296
  %idx.ext.i.i.i = ashr exact i64 %sext.i.i.i, 32
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %16, i64 %idx.ext.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.end.i.i.i
  %pat.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end.i.i.i ], [ %incdec.ptr112.i.i.i, %for.inc.i.i.i ]
  %text.0.i.i.i = phi ptr [ %gep.i.i, %if.end.i.i.i ], [ %text.1.i.i.i, %for.inc.i.i.i ]
  %count.0.i.i.i = phi i32 [ %conv2.i.i.i, %if.end.i.i.i ], [ %dec.i.i.i, %for.inc.i.i.i ]
  %cmp3.i.i.i = icmp sgt i32 %count.0.i.i.i, 0
  br i1 %cmp3.i.i.i, label %for.body.i.i.i, label %if.end26.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %19 = load ptr, ptr %call.i, align 8, !tbaa !125
  %20 = load i8, ptr %pat.0.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %idxprom.i.i.i = sext i8 %20 to i64
  %arrayidx.i.i.i = getelementptr inbounds i16, ptr %19, i64 %idxprom.i.i.i
  %21 = load i16, ptr %arrayidx.i.i.i, align 2, !tbaa !16, !invariant.load !18
  %.fr16.i.i.i = freeze i16 %21
  %22 = and i16 %.fr16.i.i.i, 1024
  %tobool.not.i.i.i = icmp eq i16 %22, 0
  br i1 %tobool.not.i.i.i, label %switch.early.test.i.i.i, label %if.then15.i.i.i

switch.early.test.i.i.i:                          ; preds = %for.body.i.i.i
  switch i8 %20, label %for.cond.backedge.sink.split.i.i [
    i8 39, label %if.then15.i.i.i
    i8 32, label %if.then15.i.i.i
    i8 35, label %sw.bb.i.i.i
    i8 58, label %while.cond34.i.i.i
    i8 94, label %sw.bb41.i.i.i
    i8 46, label %sw.bb48.i.i.i
    i8 43, label %sw.bb94.i.i.i
  ]

if.then15.i.i.i:                                  ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %for.body.i.i.i
  %23 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %cmp18.not.i.i.i = icmp eq i8 %20, %23
  br i1 %cmp18.not.i.i.i, label %for.inc.gvnsink.split.i.i.i, label %for.cond.backedge.i.i

sw.bb.i.i.i:                                      ; preds = %switch.early.test.i.i.i
  %24 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %conv23.i.i.i = sext i8 %24 to i32
  %25 = add nsw i32 %conv23.i.i.i, -65
  %26 = tail call i32 @llvm.fshl.i32(i32 %25, i32 %25, i32 noundef 31)
  switch i32 %26, label %for.cond.backedge.i.i [
    i32 0, label %if.end27.i.i.i
    i32 2, label %if.end27.i.i.i
    i32 4, label %if.end27.i.i.i
    i32 7, label %if.end27.i.i.i
    i32 10, label %if.end27.i.i.i
  ]

if.end27.i.i.i:                                   ; preds = %sw.bb.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i, %if.end27.i.i.i
  %text.2.i.i.i = phi ptr [ %text.0.i.i.i, %if.end27.i.i.i ], [ %incdec.ptr28.i.i.i, %while.body.i.i.i ]
  %incdec.ptr28.i.i.i = getelementptr inbounds i8, ptr %text.2.i.i.i, i64 -1
  %27 = load i8, ptr %incdec.ptr28.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %conv29.i.i.i = sext i8 %27 to i32
  %28 = add nsw i32 %conv29.i.i.i, -65
  %29 = tail call i32 @llvm.fshl.i32(i32 %28, i32 %28, i32 noundef 31)
  switch i32 %29, label %for.inc.i.i.i [
    i32 0, label %while.body.i.i.i
    i32 2, label %while.body.i.i.i
    i32 4, label %while.body.i.i.i
    i32 7, label %while.body.i.i.i
    i32 10, label %while.body.i.i.i
  ]

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i
  br label %while.cond.i.i.i, !llvm.loop !173

while.cond34.i.i.i:                               ; preds = %switch.early.test.i.i.i, %while.cond34.i.i.i
  %text.3.i.i.i = phi ptr [ %incdec.ptr39.i.i.i, %while.cond34.i.i.i ], [ %text.0.i.i.i, %switch.early.test.i.i.i ]
  %30 = load i8, ptr %text.3.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %conv35.i.i.i = sext i8 %30 to i32
  %call36.i.i.i = tail call range(i32 0, 2) i32 @isconsonant(i32 noundef %conv35.i.i.i) #29
  %tobool37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  %incdec.ptr39.i.i.i = getelementptr inbounds i8, ptr %text.3.i.i.i, i64 -1
  br i1 %tobool37.not.i.i.i, label %for.inc.i.i.i, label %while.cond34.i.i.i, !llvm.loop !174

sw.bb41.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %31 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %conv42.i.i.i = sext i8 %31 to i32
  %call43.i.i.i = tail call range(i32 0, 2) i32 @isconsonant(i32 noundef %conv42.i.i.i) #29
  %tobool44.not.i.i.i = icmp eq i32 %call43.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %for.cond.backedge.i.i, label %for.inc.gvnsink.split.i.i.i

sw.bb48.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %32 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5, !invariant.load !18
  switch i8 %32, label %for.cond.backedge.i.i [
    i8 66, label %for.inc.gvnsink.split.i.i.i
    i8 68, label %for.inc.gvnsink.split.i.i.i
    i8 86, label %for.inc.gvnsink.split.i.i.i
    i8 71, label %for.inc.gvnsink.split.i.i.i
    i8 74, label %for.inc.gvnsink.split.i.i.i
    i8 76, label %for.inc.gvnsink.split.i.i.i
    i8 77, label %for.inc.gvnsink.split.i.i.i
    i8 78, label %for.inc.gvnsink.split.i.i.i
    i8 82, label %for.inc.gvnsink.split.i.i.i
    i8 87, label %for.inc.gvnsink.split.i.i.i
    i8 90, label %for.inc.gvnsink.split.i.i.i
  ]

sw.bb94.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %33 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5, !invariant.load !18
  switch i8 %33, label %for.cond.backedge.i.i [
    i8 69, label %for.inc.gvnsink.split.i.i.i
    i8 73, label %for.inc.gvnsink.split.i.i.i
    i8 89, label %for.inc.gvnsink.split.i.i.i
  ]

for.inc.gvnsink.split.i.i.i:                      ; preds = %sw.bb94.i.i.i, %sw.bb94.i.i.i, %sw.bb94.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb41.i.i.i, %if.then15.i.i.i
  %incdec.ptr108.i.i.i = getelementptr inbounds i8, ptr %text.0.i.i.i, i64 -1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %while.cond34.i.i.i, %while.cond.i.i.i, %for.inc.gvnsink.split.i.i.i
  %text.1.i.i.i = phi ptr [ %incdec.ptr108.i.i.i, %for.inc.gvnsink.split.i.i.i ], [ %incdec.ptr28.i.i.i, %while.cond.i.i.i ], [ %text.3.i.i.i, %while.cond34.i.i.i ]
  %incdec.ptr112.i.i.i = getelementptr inbounds i8, ptr %pat.0.i.i.i, i64 -1
  %dec.i.i.i = add nsw i32 %count.0.i.i.i, -1
  br label %for.cond.i.i.i, !llvm.loop !175

for.cond.backedge.sink.split.i.i:                 ; preds = %switch.early.test.i.i.i, %switch.early.test.i23.i.i
  %.lcssa76.sink.i.i = phi i8 [ %37, %switch.early.test.i23.i.i ], [ %20, %switch.early.test.i.i.i ]
  %.str.3.945.sink.i.i = phi ptr [ @.str.3.945, %switch.early.test.i23.i.i ], [ @.str.2.946, %switch.early.test.i.i.i ]
  %conv2.le.i.i.i = sext i8 %.lcssa76.sink.i.i to i32
  %34 = load ptr, ptr @stderr, align 8, !tbaa !52
  %call162.i.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull %.str.3.945.sink.i.i, i32 noundef %conv2.le.i.i.i) #33
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %for.body.i.i, %sw.bb94.i.i.i, %sw.bb48.i.i.i, %sw.bb41.i.i.i, %sw.bb.i.i.i, %if.then15.i.i.i, %if.then151.i.i.i, %if.then146.i.i.i, %sw.bb108.i.i.i, %sw.bb93.i.i.i, %sw.bb47.i.i.i, %sw.bb40.i.i.i, %sw.bb.i25.i.i, %if.then14.i.i.i, %for.cond.backedge.sink.split.i.i
  br label %for.cond.i.i, !llvm.loop !171

if.end26.i.i:                                     ; preds = %for.cond.i.i.i, %if.end19.i.i
  %35 = load i8, ptr %17, align 1, !tbaa !5, !invariant.load !18
  %cmp.i10.i.i = icmp eq i8 %35, 0
  br i1 %cmp.i10.i.i, label %if.end32.i.i, label %for.cond.i11.preheader.i.i

for.cond.i11.preheader.i.i:                       ; preds = %if.end26.i.i
  %sext.i.i = shl i64 %indvars.iv.i.i, 32
  %idxprom27.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx28.i.i = getelementptr inbounds i8, ptr %call, i64 %idxprom27.i.i
  %36 = load ptr, ptr %call.i, align 8, !tbaa !125
  br label %for.cond.i11.i.i

for.cond.i11.i.i:                                 ; preds = %for.inc.i21.i.i, %for.cond.i11.preheader.i.i
  %37 = phi i8 [ %.pre.i.i.i, %for.inc.i21.i.i ], [ %35, %for.cond.i11.preheader.i.i ]
  %pat.0.i12.i.i = phi ptr [ %incdec.ptr163.i.i.i, %for.inc.i21.i.i ], [ %17, %for.cond.i11.preheader.i.i ]
  %text.0.i13.i.i = phi ptr [ %text.1.i22.i.i, %for.inc.i21.i.i ], [ %arrayidx28.i.i, %for.cond.i11.preheader.i.i ]
  %cmp3.not.i.i.i = icmp eq i8 %37, 0
  br i1 %cmp3.not.i.i.i, label %if.end32.i.i, label %for.body.i14.i.i

for.body.i14.i.i:                                 ; preds = %for.cond.i11.i.i
  %idxprom.i16.i.i = sext i8 %37 to i64
  %arrayidx.i17.i.i = getelementptr inbounds i16, ptr %36, i64 %idxprom.i16.i.i
  %38 = load i16, ptr %arrayidx.i17.i.i, align 2, !tbaa !16, !invariant.load !18
  %.fr18.i.i.i = freeze i16 %38
  %39 = and i16 %.fr18.i.i.i, 1024
  %tobool.not.i18.i.i = icmp eq i16 %39, 0
  br i1 %tobool.not.i18.i.i, label %switch.early.test.i23.i.i, label %if.then14.i.i.i

switch.early.test.i23.i.i:                        ; preds = %for.body.i14.i.i
  switch i8 %37, label %for.cond.backedge.sink.split.i.i [
    i8 39, label %if.then14.i.i.i
    i8 32, label %if.then14.i.i.i
    i8 35, label %sw.bb.i25.i.i
    i8 58, label %while.cond33.i.i.i
    i8 94, label %sw.bb40.i.i.i
    i8 46, label %sw.bb47.i.i.i
    i8 43, label %sw.bb93.i.i.i
    i8 37, label %sw.bb108.i.i.i
  ]

if.then14.i.i.i:                                  ; preds = %switch.early.test.i23.i.i, %switch.early.test.i23.i.i, %for.body.i14.i.i
  %40 = load i8, ptr %text.0.i13.i.i, align 1, !tbaa !5, !invariant.load !18
  %cmp17.not.i.i.i = icmp eq i8 %37, %40
  br i1 %cmp17.not.i.i.i, label %for.inc.gvnsink.split.i19.i.i, label %for.cond.backedge.i.i

sw.bb.i25.i.i:                                    ; preds = %switch.early.test.i23.i.i
  %41 = load i8, ptr %text.0.i13.i.i, align 1, !tbaa !5, !invariant.load !18
  %conv22.i.i.i = sext i8 %41 to i32
  %42 = add nsw i32 %conv22.i.i.i, -65
  %43 = tail call i32 @llvm.fshl.i32(i32 %42, i32 %42, i32 noundef 31)
  switch i32 %43, label %for.cond.backedge.i.i [
    i32 0, label %if.end26.i.i.i
    i32 2, label %if.end26.i.i.i
    i32 4, label %if.end26.i.i.i
    i32 7, label %if.end26.i.i.i
    i32 10, label %if.end26.i.i.i
  ]

if.end26.i.i.i:                                   ; preds = %sw.bb.i25.i.i, %sw.bb.i25.i.i, %sw.bb.i25.i.i, %sw.bb.i25.i.i, %sw.bb.i25.i.i
  br label %while.cond.i26.i.i

while.cond.i26.i.i:                               ; preds = %while.body.i28.i.i, %if.end26.i.i.i
  %text.2.i27.i.i = phi ptr [ %text.0.i13.i.i, %if.end26.i.i.i ], [ %incdec.ptr27.i.i.i, %while.body.i28.i.i ]
  %incdec.ptr27.i.i.i = getelementptr inbounds nuw i8, ptr %text.2.i27.i.i, i64 1
  %44 = load i8, ptr %incdec.ptr27.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %conv28.i.i.i = sext i8 %44 to i32
  %45 = add nsw i32 %conv28.i.i.i, -65
  %46 = tail call i32 @llvm.fshl.i32(i32 %45, i32 %45, i32 noundef 31)
  switch i32 %46, label %for.inc.i21.i.i [
    i32 0, label %while.body.i28.i.i
    i32 2, label %while.body.i28.i.i
    i32 4, label %while.body.i28.i.i
    i32 7, label %while.body.i28.i.i
    i32 10, label %while.body.i28.i.i
  ]

while.body.i28.i.i:                               ; preds = %while.cond.i26.i.i, %while.cond.i26.i.i, %while.cond.i26.i.i, %while.cond.i26.i.i, %while.cond.i26.i.i
  br label %while.cond.i26.i.i, !llvm.loop !176

while.cond33.i.i.i:                               ; preds = %switch.early.test.i23.i.i, %while.cond33.i.i.i
  %text.3.i24.i.i = phi ptr [ %incdec.ptr38.i.i.i, %while.cond33.i.i.i ], [ %text.0.i13.i.i, %switch.early.test.i23.i.i ]
  %47 = load i8, ptr %text.3.i24.i.i, align 1, !tbaa !5, !invariant.load !18
  %conv34.i.i.i = sext i8 %47 to i32
  %call35.i.i.i = tail call i32 @isconsonant(i32 noundef %conv34.i.i.i) #29
  %tobool36.not.i.i.i = icmp eq i32 %call35.i.i.i, 0
  %incdec.ptr38.i.i.i = getelementptr inbounds nuw i8, ptr %text.3.i24.i.i, i64 1
  br i1 %tobool36.not.i.i.i, label %for.inc.i21.i.i, label %while.cond33.i.i.i, !llvm.loop !177

sw.bb40.i.i.i:                                    ; preds = %switch.early.test.i23.i.i
  %48 = load i8, ptr %text.0.i13.i.i, align 1, !tbaa !5, !invariant.load !18
  %conv41.i.i.i = sext i8 %48 to i32
  %call42.i.i.i = tail call i32 @isconsonant(i32 noundef %conv41.i.i.i) #29
  %tobool43.not.i.i.i = icmp eq i32 %call42.i.i.i, 0
  br i1 %tobool43.not.i.i.i, label %for.cond.backedge.i.i, label %for.inc.gvnsink.split.i19.i.i

sw.bb47.i.i.i:                                    ; preds = %switch.early.test.i23.i.i
  %49 = load i8, ptr %text.0.i13.i.i, align 1, !tbaa !5, !invariant.load !18
  switch i8 %49, label %for.cond.backedge.i.i [
    i8 66, label %for.inc.gvnsink.split.i19.i.i
    i8 68, label %for.inc.gvnsink.split.i19.i.i
    i8 86, label %for.inc.gvnsink.split.i19.i.i
    i8 71, label %for.inc.gvnsink.split.i19.i.i
    i8 74, label %for.inc.gvnsink.split.i19.i.i
    i8 76, label %for.inc.gvnsink.split.i19.i.i
    i8 77, label %for.inc.gvnsink.split.i19.i.i
    i8 78, label %for.inc.gvnsink.split.i19.i.i
    i8 82, label %for.inc.gvnsink.split.i19.i.i
    i8 87, label %for.inc.gvnsink.split.i19.i.i
    i8 90, label %for.inc.gvnsink.split.i19.i.i
  ]

sw.bb93.i.i.i:                                    ; preds = %switch.early.test.i23.i.i
  %50 = load i8, ptr %text.0.i13.i.i, align 1, !tbaa !5, !invariant.load !18
  switch i8 %50, label %for.cond.backedge.i.i [
    i8 69, label %for.inc.gvnsink.split.i19.i.i
    i8 73, label %for.inc.gvnsink.split.i19.i.i
    i8 89, label %for.inc.gvnsink.split.i19.i.i
  ]

sw.bb108.i.i.i:                                   ; preds = %switch.early.test.i23.i.i
  %51 = load i8, ptr %text.0.i13.i.i, align 1, !tbaa !5, !invariant.load !18
  switch i8 %51, label %for.cond.backedge.i.i [
    i8 69, label %if.then112.i.i.i
    i8 73, label %if.then146.i.i.i
  ]

if.then112.i.i.i:                                 ; preds = %sw.bb108.i.i.i
  %incdec.ptr113.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i13.i.i, i64 1
  %52 = load i8, ptr %incdec.ptr113.i.i.i, align 1, !tbaa !5, !invariant.load !18
  switch i8 %52, label %for.inc.i21.i.i [
    i8 76, label %if.then117.i.i.i
    i8 82, label %if.then138.i.i.i
    i8 83, label %if.then138.i.i.i
    i8 68, label %if.then138.i.i.i
  ]

if.then117.i.i.i:                                 ; preds = %if.then112.i.i.i
  %incdec.ptr118.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i13.i.i, i64 2
  %53 = load i8, ptr %incdec.ptr118.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %cmp120.i.i.i = icmp eq i8 %53, 89
  %54 = select i1 %cmp120.i.i.i, i64 1, i64 -1
  br label %for.inc.gvnsink.split.i19.i.i

if.then138.i.i.i:                                 ; preds = %if.then112.i.i.i, %if.then112.i.i.i, %if.then112.i.i.i
  %incdec.ptr139.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i13.i.i, i64 2
  br label %for.inc.i21.i.i

if.then146.i.i.i:                                 ; preds = %sw.bb108.i.i.i
  %incdec.ptr147.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i13.i.i, i64 1
  %55 = load i8, ptr %incdec.ptr147.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %cmp149.i.i.i = icmp eq i8 %55, 78
  br i1 %cmp149.i.i.i, label %if.then151.i.i.i, label %for.cond.backedge.i.i

if.then151.i.i.i:                                 ; preds = %if.then146.i.i.i
  %incdec.ptr152.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i13.i.i, i64 2
  %56 = load i8, ptr %incdec.ptr152.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %cmp154.i.i.i = icmp eq i8 %56, 71
  br i1 %cmp154.i.i.i, label %for.inc.gvnsink.split.i19.i.i, label %for.cond.backedge.i.i

for.inc.gvnsink.split.i19.i.i:                    ; preds = %if.then151.i.i.i, %if.then117.i.i.i, %sw.bb93.i.i.i, %sw.bb93.i.i.i, %sw.bb93.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb40.i.i.i, %if.then14.i.i.i
  %.sink1.i20.i.i = phi i64 [ 1, %if.then14.i.i.i ], [ 1, %sw.bb40.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb93.i.i.i ], [ 1, %if.then151.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb47.i.i.i ], [ 1, %sw.bb93.i.i.i ], [ 1, %sw.bb93.i.i.i ], [ %54, %if.then117.i.i.i ]
  %.sink.i.i.i = phi ptr [ %text.0.i13.i.i, %if.then14.i.i.i ], [ %text.0.i13.i.i, %sw.bb40.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb93.i.i.i ], [ %incdec.ptr152.i.i.i, %if.then151.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb47.i.i.i ], [ %text.0.i13.i.i, %sw.bb93.i.i.i ], [ %text.0.i13.i.i, %sw.bb93.i.i.i ], [ %incdec.ptr118.i.i.i, %if.then117.i.i.i ]
  %incdec.ptr157.i.i.i = getelementptr inbounds i8, ptr %.sink.i.i.i, i64 %.sink1.i20.i.i
  br label %for.inc.i21.i.i

for.inc.i21.i.i:                                  ; preds = %while.cond33.i.i.i, %while.cond.i26.i.i, %for.inc.gvnsink.split.i19.i.i, %if.then138.i.i.i, %if.then112.i.i.i
  %text.1.i22.i.i = phi ptr [ %incdec.ptr157.i.i.i, %for.inc.gvnsink.split.i19.i.i ], [ %incdec.ptr139.i.i.i, %if.then138.i.i.i ], [ %incdec.ptr113.i.i.i, %if.then112.i.i.i ], [ %incdec.ptr27.i.i.i, %while.cond.i26.i.i ], [ %text.3.i24.i.i, %while.cond33.i.i.i ]
  %incdec.ptr163.i.i.i = getelementptr inbounds nuw i8, ptr %pat.0.i12.i.i, i64 1
  %.pre.i.i.i = load i8, ptr %incdec.ptr163.i.i.i, align 1, !tbaa !5, !invariant.load !18
  br label %for.cond.i11.i.i, !llvm.loop !178

if.end32.i.i:                                     ; preds = %if.end26.i.i, %for.cond.i11.i.i
  %arrayidx33.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.0.i.i, i64 24
  %57 = load ptr, ptr %arrayidx33.i.i, align 8, !tbaa !42, !invariant.load !18
  br label %while.cond.i30.i.i

while.cond.i30.i.i:                               ; preds = %while.body.i32.i.i, %if.end32.i.i
  %s.addr.0.i.i.i = phi ptr [ %57, %if.end32.i.i ], [ %incdec.ptr.i.i.i, %while.body.i32.i.i ]
  %58 = load i8, ptr %s.addr.0.i.i.i, align 1, !tbaa !5, !invariant.load !18
  %tobool.not.i31.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i31.i.i, label %find_rule.exit.loopexit.i, label %while.body.i32.i.i

while.body.i32.i.i:                               ; preds = %while.cond.i30.i.i
  %incdec.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %s.addr.0.i.i.i, i64 1
  %conv.i.i.i = sext i8 %58 to i32
  %call.i33.i.i = tail call i32 @phone_append(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) %phone, i32 noundef %conv.i.i.i) #29
  br label %while.cond.i30.i.i, !llvm.loop !179

find_rule.exit.loopexit.i:                        ; preds = %while.cond.i30.i.i
  %59 = trunc nsw i64 %indvars.iv.i.i to i32
  br label %find_rule.exit.i

find_rule.exit.i:                                 ; preds = %find_rule.exit.loopexit.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %59, %find_rule.exit.loopexit.i ]
  %idxprom10.i = sext i32 %retval.0.i.i to i64
  %arrayidx11.i = getelementptr inbounds i8, ptr %call, i64 %idxprom10.i
  %60 = load i8, ptr %arrayidx11.i, align 1, !tbaa !5, !invariant.load !18
  %cmp.not.i = icmp eq i8 %60, 0
  br i1 %cmp.not.i, label %guess_word.exit, label %do.body.i, !llvm.loop !180

guess_word.exit:                                  ; preds = %find_rule.exit.i
  tail call void @free(ptr noundef nonnull %call) #29
  ret i32 0
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @trie_insert(ptr nofree noundef captures(none) %r, ptr nofree noundef readonly captures(none) %s, ptr nofree noundef %value) local_unnamed_addr #21 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %r.addr.0 = phi ptr [ %r, %entry ], [ %more, %if.end10 ]
  %s.addr.0 = phi ptr [ %s, %entry ], [ %incdec.ptr, %if.end10 ]
  %p.0 = phi ptr [ null, %entry ], [ %p.1, %if.end10 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.addr.0, i64 1
  %0 = load i8, ptr %s.addr.0, align 1, !tbaa !5, !invariant.load !18
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %while.end11, label %while.cond1

while.cond1:                                      ; preds = %while.cond, %while.body3
  %r.addr.1 = phi ptr [ %1, %while.body3 ], [ %r.addr.0, %while.cond ]
  %1 = load ptr, ptr %r.addr.1, align 8, !tbaa !113, !invariant.load !18
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.then8, label %while.body3

while.body3:                                      ; preds = %while.cond1
  %ch4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = load i8, ptr %ch4, align 8, !tbaa !181, !invariant.load !18
  %cmp = icmp eq i8 %2, %0
  br i1 %cmp, label %if.end10, label %while.cond1

if.then8:                                         ; preds = %while.cond1
  %calloc = call dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32)
  %ch9 = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store i8 %0, ptr %ch9, align 8, !tbaa !181
  store ptr %calloc, ptr %r.addr.1, align 8, !tbaa !113
  br label %if.end10

if.end10:                                         ; preds = %while.body3, %if.then8
  %p.1 = phi ptr [ %calloc, %if.then8 ], [ %1, %while.body3 ]
  %more = getelementptr inbounds nuw i8, ptr %p.1, i64 8
  br label %while.cond, !llvm.loop !183

while.end11:                                      ; preds = %while.cond
  %value12 = getelementptr inbounds nuw i8, ptr %p.0, i64 16
  store ptr %value, ptr %value12, align 8, !tbaa !184
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @trie_lookup(ptr nofree noundef captures(none) %r, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %sp) local_unnamed_addr #22 {
entry:
  %0 = load ptr, ptr %sp, align 8, !tbaa !42
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %r.addr.0 = phi ptr [ %r, %entry ], [ %more, %cleanup.cont ]
  %s.0 = phi ptr [ %0, %entry ], [ %incdec.ptr, %cleanup.cont ]
  %value.0 = phi ptr [ null, %entry ], [ %6, %cleanup.cont ]
  %1 = load i8, ptr %s.0, align 1, !tbaa !5, !invariant.load !18
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.end15, label %while.cond1

while.cond1:                                      ; preds = %while.cond, %while.body3
  %l.0 = phi ptr [ %2, %while.body3 ], [ %r.addr.0, %while.cond ]
  %2 = load ptr, ptr %l.0, align 8, !tbaa !113, !invariant.load !18
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %while.end15, label %while.body3

while.body3:                                      ; preds = %while.cond1
  %ch4 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %3 = load i8, ptr %ch4, align 8, !tbaa !181, !invariant.load !18
  %cmp = icmp eq i8 %3, %1
  br i1 %cmp, label %cleanup.cont, label %while.cond1

cleanup.cont:                                     ; preds = %while.body3
  %4 = load ptr, ptr %2, align 8, !tbaa !185, !invariant.load !18
  store ptr %4, ptr %l.0, align 8, !tbaa !113
  %5 = load ptr, ptr %r.addr.0, align 8, !tbaa !113, !invariant.load !18
  store ptr %5, ptr %2, align 8, !tbaa !185
  store ptr %2, ptr %r.addr.0, align 8, !tbaa !113
  %more = getelementptr inbounds nuw i8, ptr %2, i64 8
  %value11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = load ptr, ptr %value11, align 8, !tbaa !184, !invariant.load !18
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.0, i64 1
  br label %while.cond, !llvm.loop !186

while.end15:                                      ; preds = %while.cond, %while.cond1
  store ptr %s.0, ptr %sp, align 8, !tbaa !42
  ret ptr %value.0
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc noundef range(i16 1, 3) i16 @outlined_ir_func_1(ptr noalias nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef captures(none) %2) unnamed_addr #23 {
entry_to_outline:
  store i32 0, ptr %0, align 4, !tbaa !10
  %3 = load i64, ptr %1, align 8, !tbaa !12
  %cmp = icmp slt i64 %3, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry_to_outline
  %call = tail call i32 @xlate_string(ptr nofree noundef nonnull dereferenceable(6) @.str.1.874, ptr nofree noundef captures(none) %2) #29
  store i32 %call, ptr %0, align 4, !tbaa !10
  %sub = sub nsw i64 0, %3
  store i64 %sub, ptr %1, align 8, !tbaa !12
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry_to_outline
  %4 = phi i32 [ %call, %if.then ], [ 0, %entry_to_outline ]
  %5 = phi i64 [ %sub, %if.then ], [ %3, %entry_to_outline ]
  %cmp6 = icmp samesign ugt i64 %5, 999999999
  br i1 %cmp6, label %entry_after_outline.exitStub, label %common.ret

common.ret:                                       ; preds = %if.end5, %entry_after_outline.exitStub
  %common.ret.op = phi i16 [ 2, %entry_after_outline.exitStub ], [ 1, %if.end5 ]
  ret i16 %common.ret.op

entry_after_outline.exitStub:                     ; preds = %if.end5
  %div = udiv i64 %5, 1000000000
  %call8 = tail call i32 @xlate_cardinal(i64 noundef %div, ptr nofree noundef captures(none) %2) #29
  %add9 = add i32 %4, %call8
  store i32 %add9, ptr %0, align 4, !tbaa !10
  br label %common.ret
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc noundef i1 @outlined_ir_func_3(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #23 {
if.end_to_outline:
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %common.ret, label %sub_0

sub_0:                                            ; preds = %if.end_to_outline
  %3 = load i8, ptr %2, align 1, !invariant.load !18
  %.not = icmp eq i8 %3, 45
  br i1 %.not, label %if.then2.tail, label %if.else

if.then2.tail:                                    ; preds = %sub_0
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 1
  %5 = load i8, ptr %4, align 1, !invariant.load !18
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2.tail
  store i32 1, ptr %1, align 4, !tbaa !10
  br label %common.ret

if.else:                                          ; preds = %sub_0, %if.then2.tail
  %call5 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %2, i32 noundef 577, i32 noundef 438) #29
  store i32 %call5, ptr %1, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %common.ret

if.then7:                                         ; preds = %if.else
  tail call void @outlined_ir_func_1.22(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) #29
  br label %common.ret

common.ret:                                       ; preds = %if.then4, %if.else, %if.then7, %if.end_to_outline
  ret i1 %tobool1.not
}

; Function Attrs: minsize nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @outlined_ir_func_5(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull writeonly captures(none) dereferenceable(1) %1, i32 noundef %2) unnamed_addr #24 {
entry_to_outline:
  %call = tail call align 8 ptr @__ctype_b_loc() #42
  %3 = load ptr, ptr %call, align 8, !tbaa !125
  %.promoted = load ptr, ptr %0, align 8, !tbaa !42
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry_to_outline
  %incdec.ptr1 = phi ptr [ %incdec.ptr, %while.body ], [ %.promoted, %entry_to_outline ]
  %4 = load i8, ptr %incdec.ptr1, align 1, !tbaa !5, !invariant.load !18
  %idxprom = sext i8 %4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %3, i64 %idxprom
  %5 = load i16, ptr %arrayidx, align 2, !tbaa !16, !invariant.load !18
  %conv1 = zext i16 %5 to i32
  %and = and i32 %2, %conv1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %while.end.exitStub, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %incdec.ptr1, i64 1
  store ptr %incdec.ptr, ptr %0, align 8, !tbaa !42
  br label %while.cond, !llvm.loop !187

while.end.exitStub:                               ; preds = %while.cond
  store i8 %4, ptr %1, align 1, !tbaa !5
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_6(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #23 {
if.then_after_outline.exitStub:
  %call1 = tail call fastcc ptr @darray_find.858(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) #29
  %items2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %1 = load i32, ptr %items2, align 8, !tbaa !24, !invariant.load !18
  %2 = load i32, ptr @verbose, align 4, !tbaa !10
  tail call void @say_phones(ptr noundef %call1, i32 noundef %1, i32 noundef %2) #29
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_8(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #23 {
if.end_to_outline:
  %2 = load ptr, ptr %0, align 8, !tbaa !42, !invariant.load !18
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end7.exitStub, label %if.then2

if.then2:                                         ; preds = %if.end_to_outline
  %call3 = tail call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.22.481) #29
  store ptr %call3, ptr %1, align 8, !tbaa !52
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7.exitStub

if.then5:                                         ; preds = %if.then2
  tail call void @outlined_ir_func_1.22(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) #29
  br label %if.end7.exitStub

if.end7.exitStub:                                 ; preds = %if.then5, %if.then2, %if.end_to_outline
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_10(ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %0) unnamed_addr #23 {
if.end7_to_outline:
  %1 = load i32, ptr %0, align 4, !tbaa !10
  %cmp8.not = icmp eq i32 %1, 1
  br i1 %cmp8.not, label %if.end7_after_outline.exitStub, label %if.then10

if.then10:                                        ; preds = %if.end7_to_outline
  %call11 = tail call i32 @close(i32 noundef %1) #29
  br label %if.end7_after_outline.exitStub

if.end7_after_outline.exitStub:                   ; preds = %if.end7_to_outline, %if.then10
  store i32 -1, ptr %0, align 4, !tbaa !10
  ret void
}

; Function Attrs: minsize nounwind optsize uwtable
define internal fastcc noundef i1 @outlined_ir_func_11(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #23 {
entry_to_outline:
  %1 = load ptr, ptr %0, align 8, !tbaa !20, !invariant.load !18
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %common.ret, label %entry_after_outline.exitStub

common.ret:                                       ; preds = %entry_to_outline, %entry_after_outline.exitStub
  ret i1 %tobool.not

entry_after_outline.exitStub:                     ; preds = %entry_to_outline
  tail call void @free(ptr noundef nonnull %1) #29
  br label %common.ret
}

; Function Attrs: cold minsize nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_2.20(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull dereferenceable(5) %1) unnamed_addr #25 {
if.end50.exitStub:
  %2 = load ptr, ptr @stderr, align 8, !tbaa !52
  %3 = load ptr, ptr %0, align 8, !tbaa !42
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull dereferenceable(5) %1, ptr noundef %3) #33
  ret void
}

; Function Attrs: cold minsize nounwind optsize uwtable
define internal void @outlined_ir_func_1.22(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) #25 {
if.end47.exitStub:
  %1 = load ptr, ptr %0, align 8, !tbaa !42, !invariant.load !18
  tail call void @perror(ptr noundef %1) #33
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) #27

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #13

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #27

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { minsize nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { minsize nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { cold minsize nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { nofree nounwind }
attributes #28 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #29 = { nounwind }
attributes #30 = { nounwind willreturn memory(read) }
attributes #31 = { nosync nounwind willreturn memory(read) }
attributes #32 = { nofree nounwind willreturn memory(readwrite) }
attributes #33 = { cold nounwind }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { noreturn nounwind }
attributes #36 = { nofree nounwind willreturn }
attributes #37 = { nofree }
attributes #38 = { cold noreturn nounwind }
attributes #39 = { nofree nosync willreturn }
attributes #40 = { nofree nounwind memory(readwrite) }
attributes #41 = { nosync nounwind }
attributes #42 = { nosync nounwind willreturn memory(none) }
attributes #43 = { nofree willreturn }
attributes #44 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"short", !6, i64 0}
!18 = !{}
!19 = distinct !{!19, !9}
!20 = !{!21, !22, i64 0}
!21 = !{!"", !22, i64 0, !11, i64 8, !11, i64 12, !17, i64 16, !17, i64 18}
!22 = !{!"p1 omnipotent char", !15, i64 0}
!23 = !{!21, !11, i64 12}
!24 = !{!21, !11, i64 8}
!25 = !{!21, !17, i64 16}
!26 = !{!21, !17, i64 18}
!27 = !{!28, !30}
!28 = distinct !{!28, !29, !"outlined_ir_func_0: argument 0"}
!29 = distinct !{!29, !"outlined_ir_func_0"}
!30 = distinct !{!30, !29, !"outlined_ir_func_0: argument 1"}
!31 = distinct !{!31, !9}
!32 = !{!33, !33, i64 0}
!33 = !{!"double", !6, i64 0}
!34 = !{!35, !13, i64 16}
!35 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!36 = !{!35, !11, i64 4}
!37 = !{!35, !13, i64 32}
!38 = !{!35, !11, i64 8}
!39 = !{!35, !13, i64 24}
!40 = !{!35, !11, i64 0}
!41 = !{!35, !13, i64 40}
!42 = !{!22, !22, i64 0}
!43 = !{!44}
!44 = distinct !{!44, !45, !"outlined_ir_func_2: argument 0"}
!45 = distinct !{!45, !"outlined_ir_func_2"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"outlined_ir_func_2: argument 0"}
!48 = distinct !{!48, !"outlined_ir_func_2"}
!49 = !{!50}
!50 = distinct !{!50, !51, !"outlined_ir_func_2: argument 0"}
!51 = distinct !{!51, !"outlined_ir_func_2"}
!52 = !{!53, !53, i64 0}
!53 = !{!"p1 _ZTS8_IO_FILE", !15, i64 0}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = !{!60, !13, i64 0}
!60 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312}
!61 = !{!60, !13, i64 8}
!62 = !{!60, !13, i64 144}
!63 = !{!64, !64, i64 0}
!64 = !{!"float", !6, i64 0}
!65 = !{!60, !13, i64 176}
!66 = !{!60, !13, i64 184}
!67 = !{!60, !13, i64 304}
!68 = !{!60, !13, i64 192}
!69 = !{!60, !13, i64 208}
!70 = !{!60, !13, i64 224}
!71 = !{!60, !13, i64 240}
!72 = !{!60, !13, i64 256}
!73 = !{!60, !13, i64 272}
!74 = !{!60, !13, i64 288}
!75 = !{!60, !13, i64 296}
!76 = !{!60, !13, i64 96}
!77 = !{!60, !13, i64 104}
!78 = !{!60, !13, i64 80}
!79 = !{!60, !13, i64 88}
!80 = !{!60, !13, i64 64}
!81 = !{!60, !13, i64 72}
!82 = !{!60, !13, i64 48}
!83 = !{!60, !13, i64 56}
!84 = !{!60, !13, i64 32}
!85 = !{!60, !13, i64 40}
!86 = !{!60, !13, i64 16}
!87 = !{!60, !13, i64 24}
!88 = !{!60, !13, i64 128}
!89 = !{!60, !13, i64 136}
!90 = !{!60, !13, i64 112}
!91 = !{!60, !13, i64 120}
!92 = !{!93, !64, i64 8}
!93 = !{!"", !22, i64 0, !64, i64 8, !64, i64 12, !64, i64 16, !64, i64 20, !64, i64 24}
!94 = !{!93, !64, i64 12}
!95 = !{!93, !64, i64 16}
!96 = !{!60, !13, i64 200}
!97 = !{!60, !13, i64 216}
!98 = !{!60, !13, i64 232}
!99 = !{!60, !13, i64 248}
!100 = !{!60, !13, i64 264}
!101 = !{!60, !13, i64 280}
!102 = !{!60, !13, i64 312}
!103 = !{!60, !13, i64 160}
!104 = !{!60, !13, i64 152}
!105 = !{!60, !13, i64 168}
!106 = distinct !{!106, !9}
!107 = !{!93, !64, i64 20}
!108 = !{!93, !64, i64 24}
!109 = !{!110, !112}
!110 = distinct !{!110, !111, !"outlined_ir_func_0: argument 0"}
!111 = distinct !{!111, !"outlined_ir_func_0"}
!112 = distinct !{!112, !111, !"outlined_ir_func_0: argument 1"}
!113 = !{!114, !114, i64 0}
!114 = !{!"p1 _ZTS6trie_s", !15, i64 0}
!115 = !{!116, !13, i64 32}
!116 = !{!"Elm_s", !22, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !22, i64 16, !22, i64 24, !13, i64 32, !6, i64 40}
!117 = !{!116, !6, i64 9}
!118 = !{!116, !6, i64 10}
!119 = distinct !{!119, !9}
!120 = distinct !{!120, !9}
!121 = !{!116, !22, i64 0}
!122 = distinct !{!122, !9}
!123 = distinct !{!123, !9}
!124 = distinct !{!124, !9}
!125 = !{!126, !126, i64 0}
!126 = !{!"p1 short", !15, i64 0}
!127 = distinct !{!127, !9}
!128 = distinct !{!128, !9}
!129 = distinct !{!129, !9}
!130 = distinct !{!130, !9}
!131 = !{!132, !134}
!132 = distinct !{!132, !133, !"outlined_ir_func_0: argument 0"}
!133 = distinct !{!133, !"outlined_ir_func_0"}
!134 = distinct !{!134, !133, !"outlined_ir_func_0: argument 1"}
!135 = distinct !{!135, !9}
!136 = distinct !{!136, !9}
!137 = distinct !{!137, !9}
!138 = distinct !{!138, !9}
!139 = distinct !{!139, !9}
!140 = !{!141, !143}
!141 = distinct !{!141, !142, !"outlined_ir_func_0: argument 0"}
!142 = distinct !{!142, !"outlined_ir_func_0"}
!143 = distinct !{!143, !142, !"outlined_ir_func_0: argument 1"}
!144 = !{!145}
!145 = distinct !{!145, !146, !"darray_init: %a"}
!146 = distinct !{!146, !"darray_init"}
!147 = distinct !{!147, !9}
!148 = distinct !{!148, !9}
!149 = !{!150}
!150 = distinct !{!150, !151, !"darray_init: %a"}
!151 = distinct !{!151, !"darray_init"}
!152 = distinct !{!152, !9}
!153 = !{!154}
!154 = distinct !{!154, !155, !"darray_init: %a"}
!155 = distinct !{!155, !"darray_init"}
!156 = !{!157}
!157 = distinct !{!157, !158, !"darray_init: %a"}
!158 = distinct !{!158, !"darray_init"}
!159 = !{!160, !162}
!160 = distinct !{!160, !161, !"outlined_ir_func_0: argument 0"}
!161 = distinct !{!161, !"outlined_ir_func_0"}
!162 = distinct !{!162, !161, !"outlined_ir_func_0: argument 1"}
!163 = distinct !{!163, !9}
!164 = distinct !{!164, !9}
!165 = !{!166, !166, i64 0}
!166 = !{!"p1 int", !15, i64 0}
!167 = distinct !{!167, !9}
!168 = !{!169, !169, i64 0}
!169 = !{!"p2 omnipotent char", !170, i64 0}
!170 = !{!"any p2 pointer", !15, i64 0}
!171 = distinct !{!171, !9}
!172 = distinct !{!172, !9}
!173 = distinct !{!173, !9}
!174 = distinct !{!174, !9}
!175 = distinct !{!175, !9}
!176 = distinct !{!176, !9}
!177 = distinct !{!177, !9}
!178 = distinct !{!178, !9}
!179 = distinct !{!179, !9}
!180 = distinct !{!180, !9}
!181 = !{!182, !6, i64 24}
!182 = !{!"trie_s", !114, i64 0, !114, i64 8, !15, i64 16, !6, i64 24}
!183 = distinct !{!183, !9}
!184 = !{!182, !15, i64 16}
!185 = !{!182, !114, i64 0}
!186 = distinct !{!186, !9}
!187 = distinct !{!187, !9}
