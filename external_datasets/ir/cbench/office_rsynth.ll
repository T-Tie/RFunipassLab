; ModuleID = '/root/exp/RFunipassLab/external_datasets/build/ir_build/cbench/office_rsynth/office_rsynth.linked.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klatt_frame_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.darray_t = type { ptr, i32, i32, i16, i16 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.filter_t = type { float, float, float }
%struct.slope_t = type { float, i32 }
%struct.Elm_s = type { ptr, i8, i8, i8, i8, ptr, ptr, i64, [19 x %struct.interp_t] }
%struct.interp_t = type { float, float, i8, i8, i8 }
%struct.resonator_t = type { ptr, float, float, float, float, float }
%struct.trie_s = type { ptr, ptr, ptr, i8 }

@.str = private unnamed_addr constant [62 x i8] c"$Id: ASCII.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@ASCII_id = dso_local global ptr @.str, align 8
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
@au_encoding = internal global i32 1, align 4
@au_size = internal global i32 0, align 4
@linear_fd = internal global i32 -1, align 4
@.str.7.81 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.8.82 = private unnamed_addr constant [30 x i8] c"%s : No memory for ulaw data\0A\00", align 1
@.str.83 = private unnamed_addr constant [63 x i8] c"$Id: darray.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@darray_id = dso_local global ptr @.str.83, align 8
@.str.84 = private unnamed_addr constant [65 x i8] c"$Id: def_pars.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@def_pars_id = dso_local global ptr @.str.84, align 8
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
@elements_id = dso_local global ptr @.str.102, align 8
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
@english_id = dso_local global ptr @.str.180, align 8
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
@getarg_id = dso_local global ptr @.str.442, align 8
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
@holmes_id = dso_local global ptr @.str.459, align 8
@frac = dso_local global double 1.000000e+00, align 8
@def_pars = dso_local global %struct.klatt_frame_t { i64 1330, i64 60, i64 500, i64 60, i64 1500, i64 90, i64 2800, i64 150, i64 3250, i64 200, i64 3700, i64 200, i64 4990, i64 500, i64 270, i64 100, i64 270, i64 100, i64 0, i64 30, i64 0, i64 10, i64 0, i64 0, i64 0, i64 80, i64 0, i64 200, i64 0, i64 350, i64 0, i64 500, i64 0, i64 600, i64 0, i64 800, i64 0, i64 0, i64 0, i64 62 }, align 8
@par_file = dso_local global ptr null, align 8
@.str.1.460 = private unnamed_addr constant [11 x i8] c"# %s < %s\0A\00", align 1
@.str.2.461 = private unnamed_addr constant [12 x i8] c"# %s >= %s\0A\00", align 1
@.str.3.462 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.4.463 = private unnamed_addr constant [6 x i8] c"%c%6s\00", align 1
@Ep_name = dso_local global [19 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102.179, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], align 16
@.str.5.464 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6.465 = private unnamed_addr constant [8 x i8] c"%c%6.4g\00", align 1
@.str.7.466 = private unnamed_addr constant [6 x i8] c"%c%6d\00", align 1
@.str.8.467 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9.468 = private unnamed_addr constant [3 x i8] c"f0\00", align 1
@.str.10.469 = private unnamed_addr constant [7 x i8] c" %6.4g\00", align 1
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
@_u2l = dso_local global [256 x i16] [i16 -32256, i16 -31228, i16 -30200, i16 -29172, i16 -28143, i16 -27115, i16 -26087, i16 -25059, i16 -24031, i16 -23002, i16 -21974, i16 -20946, i16 -19918, i16 -18889, i16 -17861, i16 -16833, i16 -16062, i16 -15548, i16 -15033, i16 -14519, i16 -14005, i16 -13491, i16 -12977, i16 -12463, i16 -11949, i16 -11435, i16 -10920, i16 -10406, i16 -9892, i16 -9378, i16 -8864, i16 -8350, i16 -7964, i16 -7707, i16 -7450, i16 -7193, i16 -6936, i16 -6679, i16 -6422, i16 -6165, i16 -5908, i16 -5651, i16 -5394, i16 -5137, i16 -4880, i16 -4623, i16 -4365, i16 -4108, i16 -3916, i16 -3787, i16 -3659, i16 -3530, i16 -3402, i16 -3273, i16 -3144, i16 -3016, i16 -2887, i16 -2759, i16 -2630, i16 -2502, i16 -2373, i16 -2245, i16 -2116, i16 -1988, i16 -1891, i16 -1827, i16 -1763, i16 -1698, i16 -1634, i16 -1570, i16 -1506, i16 -1441, i16 -1377, i16 -1313, i16 -1249, i16 -1184, i16 -1120, i16 -1056, i16 -992, i16 -927, i16 -879, i16 -847, i16 -815, i16 -783, i16 -751, i16 -718, i16 -686, i16 -654, i16 -622, i16 -590, i16 -558, i16 -526, i16 -494, i16 -461, i16 -429, i16 -397, i16 -373, i16 -357, i16 -341, i16 -325, i16 -309, i16 -293, i16 -277, i16 -261, i16 -245, i16 -228, i16 -212, i16 -196, i16 -180, i16 -164, i16 -148, i16 -132, i16 -120, i16 -112, i16 -104, i16 -96, i16 -88, i16 -80, i16 -72, i16 -64, i16 -56, i16 -48, i16 -40, i16 -32, i16 -24, i16 -16, i16 -8, i16 0, i16 32256, i16 31228, i16 30200, i16 29172, i16 28143, i16 27115, i16 26087, i16 25059, i16 24031, i16 23002, i16 21974, i16 20946, i16 19918, i16 18889, i16 17861, i16 16833, i16 16062, i16 15548, i16 15033, i16 14519, i16 14005, i16 13491, i16 12977, i16 12463, i16 11949, i16 11435, i16 10920, i16 10406, i16 9892, i16 9378, i16 8864, i16 8350, i16 7964, i16 7707, i16 7450, i16 7193, i16 6936, i16 6679, i16 6422, i16 6165, i16 5908, i16 5651, i16 5394, i16 5137, i16 4880, i16 4623, i16 4365, i16 4108, i16 3916, i16 3787, i16 3659, i16 3530, i16 3402, i16 3273, i16 3144, i16 3016, i16 2887, i16 2759, i16 2630, i16 2502, i16 2373, i16 2245, i16 2116, i16 1988, i16 1891, i16 1827, i16 1763, i16 1698, i16 1634, i16 1570, i16 1506, i16 1441, i16 1377, i16 1313, i16 1249, i16 1184, i16 1120, i16 1056, i16 992, i16 927, i16 879, i16 847, i16 815, i16 783, i16 751, i16 718, i16 686, i16 654, i16 622, i16 590, i16 558, i16 526, i16 494, i16 461, i16 429, i16 397, i16 373, i16 357, i16 341, i16 325, i16 309, i16 293, i16 277, i16 261, i16 245, i16 228, i16 212, i16 196, i16 180, i16 164, i16 148, i16 132, i16 120, i16 112, i16 104, i16 96, i16 88, i16 80, i16 72, i16 64, i16 56, i16 48, i16 40, i16 32, i16 24, i16 16, i16 8, i16 0], align 16
@_l2u_ = internal global [8192 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F                                 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22################################$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'''''''''''''''''''''''''''''''''(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))********************************++++++++++++++++++++++++++++++++,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--------------------------------................................/////////////////////////////////0000000000000000111111111111111122222222222222223333333333333333444444444444444455555555555555556666666666666666777777777777777788888888888888889999999999999999::::::::::::::::;;;;;;;;;;;;;;;;<<<<<<<<<<<<<<<<=================>>>>>>>>>>>>>>>>????????????????@@@@@@@@AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFFGGGGGGGGHHHHHHHHIIIIIIIIJJJJJJJJKKKKKKKKLLLLLLLLMMMMMMMMNNNNNNNNOOOOOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZ[[[[\\\\\\\\]]]]^^^^____``aabbccddeeffgghhhiijjkkllmmnnoopqrstuvwxyz{|}~\FF\FE\FD\FC\FB\FA\F9\F8\F7\F6\F5\F4\F3\F2\F1\F0\EF\EF\EE\EE\ED\ED\EC\EC\EB\EB\EA\EA\E9\E9\E8\E8\E7\E7\E6\E6\E5\E5\E4\E4\E3\E3\E2\E2\E1\E1\E0\E0\DF\DF\DF\DF\DE\DE\DE\DE\DD\DD\DD\DD\DC\DC\DC\DC\DB\DB\DB\DB\DA\DA\DA\DA\D9\D9\D9\D9\D8\D8\D8\D8\D7\D7\D7\D7\D6\D6\D6\D6\D5\D5\D5\D5\D4\D4\D4\D4\D3\D3\D3\D3\D2\D2\D2\D2\D1\D1\D1\D1\D0\D0\D0\D0\CF\CF\CF\CF\CF\CF\CF\CF\CE\CE\CE\CE\CE\CE\CE\CE\CD\CD\CD\CD\CD\CD\CD\CD\CC\CC\CC\CC\CC\CC\CC\CC\CB\CB\CB\CB\CB\CB\CB\CB\CA\CA\CA\CA\CA\CA\CA\CA\C9\C9\C9\C9\C9\C9\C9\C9\C8\C8\C8\C8\C8\C8\C8\C8\C7\C7\C7\C7\C7\C7\C7\C7\C6\C6\C6\C6\C6\C6\C6\C6\C5\C5\C5\C5\C5\C5\C5\C5\C4\C4\C4\C4\C4\C4\C4\C4\C3\C3\C3\C3\C3\C3\C3\C3\C3\C2\C2\C2\C2\C2\C2\C2\C2\C1\C1\C1\C1\C1\C1\C1\C1\C0\C0\C0\C0\C0\C0\C0\C0\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", align 16
@_l2u = dso_local global ptr getelementptr (i8, ptr @_l2u_, i64 4096), align 8
@samp_rate = dso_local global i64 8000, align 8
@.str.486 = private unnamed_addr constant [11 x i8] c"/dev/sbdsp\00", align 1
@dev_file = dso_local global ptr @.str.486, align 8
@.str.1.487 = private unnamed_addr constant [6 x i8] c"hplay\00", align 1
@prog = dso_local global ptr @.str.1.487, align 8
@.str.2.488 = private unnamed_addr constant [12 x i8] c"linux Audio\00", align 1
@.str.3.489 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4.490 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5.491 = private unnamed_addr constant [12 x i8] c"Sample rate\00", align 1
@.str.6.492 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.7.493 = private unnamed_addr constant [13 x i8] c"Audio enable\00", align 1
@dev_fd = internal global i32 -1, align 4
@.str.8.494 = private unnamed_addr constant [24 x i8] c"Actual sound rate: %ld\0A\00", align 1
@linear_fd.495 = internal global i32 -1, align 4
@.str.9.496 = private unnamed_addr constant [42 x i8] c"Could not allocate memory for conversion\0A\00", align 1
@.str.10.497 = private unnamed_addr constant [6 x i8] c"write\00", align 1
@.str.498 = private unnamed_addr constant [63 x i8] c"$Id: nsynth.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@nsynth_id = dso_local global ptr @.str.498, align 8
@time_count = dso_local global i32 0, align 4
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
@par_name = dso_local global [40 x ptr] [ptr @.str.1.499, ptr @.str.2.500, ptr @.str.3.501, ptr @.str.4.502, ptr @.str.5.503, ptr @.str.6.504, ptr @.str.7.505, ptr @.str.8.506, ptr @.str.9.507, ptr @.str.10.508, ptr @.str.11.509, ptr @.str.12.510, ptr @.str.13.511, ptr @.str.14.512, ptr @.str.15.513, ptr @.str.16.514, ptr @.str.17.515, ptr @.str.18.516, ptr @.str.19.517, ptr @.str.20.518, ptr @.str.21.519, ptr @.str.22.520, ptr @.str.23.521, ptr @.str.24.522, ptr @.str.25.523, ptr @.str.26.524, ptr @.str.27.525, ptr @.str.28.526, ptr @.str.29.527, ptr @.str.30.528, ptr @.str.31.529, ptr @.str.32.530, ptr @.str.33.531, ptr @.str.34.532, ptr @.str.35.533, ptr @.str.36.534, ptr @.str.37.535, ptr @.str.38.536, ptr @.str.39.537, ptr @.str.40.538], align 16
@show_parms.names = internal global i32 0, align 4
@.str.41.539 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.42.540 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.43.541 = private unnamed_addr constant [5 x i8] c"%*d \00", align 1
@parwave.seed = internal global i64 5, align 8
@nlast = internal global float 0.000000e+00, align 4
@nper = internal global i64 0, align 8
@nmod = internal global i64 0, align 8
@amp_frica = internal global float 0.000000e+00, align 4
@T0 = internal global i64 0, align 8
@onemd = internal global float 0.000000e+00, align 4
@vlast = internal global float 0.000000e+00, align 4
@decay = internal global float 0.000000e+00, align 4
@nopen = internal global i64 0, align 8
@amp_breth = internal global float 0.000000e+00, align 4
@amp_voice = internal global float 0.000000e+00, align 4
@amp_aspir = internal global float 0.000000e+00, align 4
@glotlast = internal global float 0.000000e+00, align 4
@amp_bypas = internal global float 0.000000e+00, align 4
@minus_pi_t = internal global float 0.000000e+00, align 4
@two_pi_t = internal global float 0.000000e+00, align 4
@warnsw = internal global i32 0, align 4
@F0hz10 = internal global i64 0, align 8
@AVdb = internal global i64 0, align 8
@Kskew = internal global i64 0, align 8
@par_amp_voice = internal global float 0.000000e+00, align 4
@.str.44.569 = private unnamed_addr constant [30 x i8] c"Try to compute amptable[%ld]\0A\00", align 1
@amptable = internal constant [88 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.300000e+01, float 1.400000e+01, float 1.600000e+01, float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 2.500000e+01, float 2.800000e+01, float 3.200000e+01, float 3.500000e+01, float 4.000000e+01, float 4.500000e+01, float 5.100000e+01, float 5.700000e+01, float 6.400000e+01, float 7.100000e+01, float 8.000000e+01, float 9.000000e+01, float 1.010000e+02, float 1.140000e+02, float 1.280000e+02, float 1.420000e+02, float 1.590000e+02, float 1.790000e+02, float 2.020000e+02, float 2.270000e+02, float 2.560000e+02, float 2.840000e+02, float 3.180000e+02, float 3.590000e+02, float 4.050000e+02, float 4.550000e+02, float 5.120000e+02, float 5.680000e+02, float 6.380000e+02, float 7.190000e+02, float 8.110000e+02, float 9.110000e+02, float 1.024000e+03, float 1.137000e+03, float 1.276000e+03, float 1.438000e+03, float 1.622000e+03, float 1.823000e+03, float 2.048000e+03, float 2.273000e+03, float 2.552000e+03, float 2.875000e+03, float 3.244000e+03, float 3.645000e+03, float 4.096000e+03, float 4.547000e+03, float 5.104000e+03, float 5.751000e+03, float 6.488000e+03, float 7.291000e+03, float 8.192000e+03, float 9.093000e+03, float 1.020700e+04, float 1.150200e+04, float 1.297600e+04, float 1.458200e+04, float 1.638400e+04, float 1.835000e+04, float 2.064400e+04, float 2.342900e+04, float 2.621400e+04, float 2.949100e+04, float 3.276700e+04], align 16
@impulsive_source.doublet = internal global [3 x float] [float 0.000000e+00, float 1.300000e+07, float -1.300000e+07], align 4
@vwave = internal global float 0.000000e+00, align 4
@natglot_b = internal global float 0.000000e+00, align 4
@natglot_a = internal global float 0.000000e+00, align 4
@.str.45.564 = private unnamed_addr constant [58 x i8] c"Warning: glottal open period cannot exceed T0, truncated\0A\00", align 1
@.str.46.565 = private unnamed_addr constant [53 x i8] c"Warning: minimum glottal open period is 10 samples.\0A\00", align 1
@.str.47.566 = private unnamed_addr constant [24 x i8] c"truncated, nopen = %ld\0A\00", align 1
@natglot = internal constant [224 x i16] [i16 1200, i16 1142, i16 1088, i16 1038, i16 991, i16 948, i16 907, i16 869, i16 833, i16 799, i16 768, i16 738, i16 710, i16 683, i16 658, i16 634, i16 612, i16 590, i16 570, i16 551, i16 533, i16 515, i16 499, i16 483, i16 468, i16 454, i16 440, i16 427, i16 415, i16 403, i16 391, i16 380, i16 370, i16 360, i16 350, i16 341, i16 332, i16 323, i16 315, i16 307, i16 300, i16 292, i16 285, i16 278, i16 272, i16 265, i16 259, i16 253, i16 247, i16 242, i16 237, i16 231, i16 226, i16 221, i16 217, i16 212, i16 208, i16 204, i16 199, i16 195, i16 192, i16 188, i16 184, i16 180, i16 177, i16 174, i16 170, i16 167, i16 164, i16 161, i16 158, i16 155, i16 153, i16 150, i16 147, i16 145, i16 142, i16 140, i16 137, i16 135, i16 133, i16 131, i16 128, i16 126, i16 124, i16 122, i16 120, i16 119, i16 117, i16 115, i16 113, i16 111, i16 110, i16 108, i16 106, i16 105, i16 103, i16 102, i16 100, i16 99, i16 97, i16 96, i16 95, i16 93, i16 92, i16 91, i16 90, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 80, i16 79, i16 78, i16 77, i16 76, i16 75, i16 75, i16 74, i16 73, i16 72, i16 71, i16 70, i16 69, i16 68, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 61, i16 60, i16 59, i16 59, i16 58, i16 57, i16 57, i16 56, i16 56, i16 55, i16 55, i16 54, i16 54, i16 53, i16 53, i16 52, i16 52, i16 51, i16 51, i16 50, i16 50, i16 49, i16 49, i16 48, i16 48, i16 47, i16 47, i16 46, i16 46, i16 45, i16 45, i16 44, i16 44, i16 43, i16 43, i16 42, i16 42, i16 41, i16 41, i16 41, i16 41, i16 40, i16 40, i16 39, i16 39, i16 38, i16 38, i16 38, i16 38, i16 37, i16 37, i16 36, i16 36, i16 36, i16 36, i16 35, i16 35, i16 35, i16 35, i16 34, i16 34, i16 33, i16 33, i16 33, i16 33, i16 32, i16 32, i16 32, i16 32, i16 31, i16 31, i16 31, i16 31, i16 30, i16 30, i16 30, i16 30, i16 29, i16 29, i16 29, i16 29, i16 28, i16 28, i16 28, i16 28, i16 27, i16 27], align 16
@.str.48.567 = private unnamed_addr constant [58 x i8] c"Kskew duration=%ld > glottal closed period=%ld, truncate\0A\00", align 1
@skew = internal global i64 0, align 8
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
@ph_name = dso_local global [85 x ptr] [ptr @.str.573, ptr @.str.1.574, ptr @.str.2.575, ptr @.str.3.576, ptr @.str.4.577, ptr @.str.5.578, ptr @.str.6.579, ptr @.str.7.580, ptr @.str.8.581, ptr @.str.9.582, ptr @.str.10.583, ptr @.str.11.584, ptr @.str.12.585, ptr @.str.13.586, ptr @.str.14.587, ptr @.str.15.588, ptr @.str.16.589, ptr @.str.17.590, ptr @.str.18.591, ptr @.str.19.592, ptr @.str.20.593, ptr @.str.21.594, ptr @.str.22.595, ptr @.str.23.596, ptr @.str.24.597, ptr @.str.25.598, ptr @.str.26.599, ptr @.str.27.600, ptr @.str.28.601, ptr @.str.29.602, ptr @.str.30.603, ptr @.str.31.604, ptr @.str.32.605, ptr @.str.33.606, ptr @.str.34.607, ptr @.str.35.608, ptr @.str.36.609, ptr @.str.37.610, ptr @.str.38.611, ptr @.str.39.612, ptr @.str.40.613, ptr @.str.41.614, ptr @.str.42.615, ptr @.str.43.616, ptr @.str.44.617, ptr @.str.45.618, ptr @.str.46.619, ptr @.str.47.620, ptr @.str.48.621, ptr @.str.49.622, ptr @.str.50.623, ptr @.str.51.624, ptr @.str.52.625, ptr @.str.53.626, ptr @.str.54.627, ptr @.str.55.628, ptr @.str.56.629, ptr @.str.57.630, ptr @.str.58.631, ptr @.str.59.632, ptr @.str.60.633, ptr @.str.61.634, ptr @.str.62.635, ptr @.str.63.636, ptr @.str.64.637, ptr @.str.65.638, ptr @.str.66.639, ptr @.str.67.640, ptr @.str.68.641, ptr @.str.69.642, ptr @.str.70.643, ptr @.str.71.644, ptr @.str.72.645, ptr @.str.73.646, ptr @.str.74.647, ptr @.str.75.648, ptr @.str.76.649, ptr @.str.77.650, ptr @.str.78.651, ptr @.str.79.652, ptr @.str.80.653, ptr @.str.81.654, ptr @.str.82.655, ptr @.str.83.656, ptr null], align 16
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
@ph_br = dso_local global [85 x ptr] [ptr @.str.573, ptr @.str.84.657, ptr @.str.85.658, ptr @.str.86.659, ptr @.str.3.576, ptr @.str.87.660, ptr @.str.88.661, ptr @.str.89.662, ptr @.str.90.663, ptr @.str.91.664, ptr @.str.92.665, ptr @.str.93.666, ptr @.str.94.667, ptr @.str.12.585, ptr @.str.95.668, ptr @.str.96.669, ptr @.str.97.670, ptr @.str.16.589, ptr @.str.98.671, ptr @.str.18.591, ptr @.str.99.672, ptr @.str.100.673, ptr @.str.101.674, ptr @.str.102.675, ptr @.str.103.676, ptr @.str.24.597, ptr @.str.104.677, ptr @.str.105.678, ptr @.str.105.678, ptr @.str.105.678, ptr @.str.106.679, ptr @.str.107.680, ptr @.str.108.681, ptr @.str.21.594, ptr @.str.109.682, ptr @.str.110.683, ptr @.str.111.684, ptr @.str.112.685, ptr @.str.113.686, ptr @.str.114.687, ptr @.str.115.688, ptr @.str.116.689, ptr @.str.117.690, ptr @.str.118.691, ptr @.str.119.692, ptr @.str.120.693, ptr @.str.121.694, ptr @.str.122.695, ptr @.str.123.696, ptr @.str.124.697, ptr @.str.125.698, ptr @.str.126.699, ptr @.str.127.700, ptr @.str.128.701, ptr @.str.129.702, ptr @.str.130.703, ptr @.str.131.704, ptr @.str.132.705, ptr @.str.133.706, ptr @.str.134.707, ptr @.str.135.708, ptr @.str.136.709, ptr @.str.137.710, ptr @.str.138.711, ptr @.str.139.712, ptr @.str.140.713, ptr @.str.141.714, ptr @.str.142.715, ptr @.str.143.716, ptr @.str.144.717, ptr @.str.145.718, ptr @.str.146.719, ptr @.str.147.720, ptr @.str.148.721, ptr @.str.149.722, ptr @.str.150.723, ptr @.str.151.724, ptr @.str.152.725, ptr @.str.153.726, ptr @.str.154.727, ptr @.str.155.728, ptr @.str.156.729, ptr @.str.157.730, ptr @.str.158.731, ptr null], align 16
@.str.159.734 = private unnamed_addr constant [3 x i8] c"3R\00", align 1
@.str.160.735 = private unnamed_addr constant [4 x i8] c"'3R\00", align 1
@.str.161.736 = private unnamed_addr constant [4 x i8] c",3R\00", align 1
@.str.162.737 = private unnamed_addr constant [3 x i8] c"oU\00", align 1
@.str.163.738 = private unnamed_addr constant [4 x i8] c"'oU\00", align 1
@.str.164.739 = private unnamed_addr constant [4 x i8] c",oU\00", align 1
@ph_am = dso_local global [85 x ptr] [ptr @.str.573, ptr @.str.84.657, ptr @.str.85.658, ptr @.str.86.659, ptr @.str.3.576, ptr @.str.87.660, ptr @.str.88.661, ptr @.str.89.662, ptr @.str.90.663, ptr @.str.91.664, ptr @.str.92.665, ptr @.str.93.666, ptr @.str.94.667, ptr @.str.12.585, ptr @.str.95.668, ptr @.str.96.669, ptr @.str.97.670, ptr @.str.16.589, ptr @.str.98.671, ptr @.str.18.591, ptr @.str.99.672, ptr @.str.100.673, ptr @.str.101.674, ptr @.str.102.675, ptr @.str.103.676, ptr @.str.24.597, ptr @.str.104.677, ptr @.str.105.678, ptr @.str.105.678, ptr @.str.105.678, ptr @.str.106.679, ptr @.str.107.680, ptr @.str.108.681, ptr @.str.21.594, ptr @.str.109.682, ptr @.str.110.683, ptr @.str.111.684, ptr @.str.112.685, ptr @.str.113.686, ptr @.str.114.687, ptr @.str.115.688, ptr @.str.116.689, ptr @.str.117.690, ptr @.str.118.691, ptr @.str.119.692, ptr @.str.120.693, ptr @.str.121.694, ptr @.str.122.695, ptr @.str.123.696, ptr @.str.124.697, ptr @.str.125.698, ptr @.str.159.734, ptr @.str.160.735, ptr @.str.161.736, ptr @.str.129.702, ptr @.str.130.703, ptr @.str.131.704, ptr @.str.132.705, ptr @.str.133.706, ptr @.str.134.707, ptr @.str.135.708, ptr @.str.136.709, ptr @.str.137.710, ptr @.str.138.711, ptr @.str.139.712, ptr @.str.140.713, ptr @.str.141.714, ptr @.str.142.715, ptr @.str.143.716, ptr @.str.162.737, ptr @.str.163.738, ptr @.str.164.739, ptr @.str.147.720, ptr @.str.148.721, ptr @.str.149.722, ptr @.str.156.729, ptr @.str.157.730, ptr @.str.158.731, ptr @.str.153.726, ptr @.str.154.727, ptr @.str.155.728, ptr @.str.156.729, ptr @.str.157.730, ptr @.str.158.731, ptr null], align 16
@.str.740 = private unnamed_addr constant [64 x i8] c"$Id: phtoelm.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@phtoelm_id = dso_local global ptr @.str.740, align 8
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
@num_Elements = dso_local global i32 69, align 4
@.str.852 = private unnamed_addr constant [60 x i8] c"$Id: say.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@say_id = dso_local global ptr @.str.852, align 8
@.str.1.855 = private unnamed_addr constant [4 x i8] c"say\00", align 1
@program = dso_local global ptr @.str.1.855, align 8
@.str.2.856 = private unnamed_addr constant [17 x i8] c"Spelling '%.*s'\0A\00", align 1
@ASCII = dso_local global [129 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr null], align 16
@klatt_global = dso_local global %struct.klatt_global_t zeroinitializer, align 8
@.str.3.859 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@file_write = dso_local global ptr null, align 8
@once = internal global i32 0, align 4
@.str.4.857 = private unnamed_addr constant [6 x i8] c"point\00", align 1
@verbose = internal global i32 0, align 4
@.str.5.861 = private unnamed_addr constant [15 x i8] c"_finfo_dataset\00", align 1
@.str.6.862 = private unnamed_addr constant [3 x i8] c"rt\00", align 1
@.str.7.863 = private unnamed_addr constant [29 x i8] c"\0AError: Can't find dataset!\0A\00", align 1
@.str.8.864 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.9.865 = private unnamed_addr constant [5 x i8] c"Misc\00", align 1
@.str.10.866 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.11.867 = private unnamed_addr constant [28 x i8] c"Verbose, show phonetic form\00", align 1
@help_only = dso_local global i32 0, align 4
@.str.12.868 = private unnamed_addr constant [43 x i8] c"Usage: %s [options as above] words to say\0A\00", align 1
@.str.13.869 = private unnamed_addr constant [44 x i8] c"or     %s [options as above] < file-to-say\0A\00", align 1
@.str.14.870 = private unnamed_addr constant [6 x i8] c"(%s)\0A\00", align 1
@Revision = dso_local global ptr @.str.73, align 8
@stdin = external global ptr, align 8
@file_term = dso_local global ptr null, align 8
@dict = dso_local global ptr null, align 8
@dialect = dso_local global ptr @ph_am, align 8
@.str.15.860 = private unnamed_addr constant [17 x i8] c"Guess %p '%.*s'\0A\00", align 1
@.str.871 = private unnamed_addr constant [63 x i8] c"$Id: saynum.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@saynum_id = dso_local global ptr @.str.871, align 8
@.str.1.874 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
@.str.2.875 = private unnamed_addr constant [6 x i8] c"a lot\00", align 1
@.str.3.876 = private unnamed_addr constant [8 x i8] c"billion\00", align 1
@.str.4.877 = private unnamed_addr constant [4 x i8] c"and\00", align 1
@.str.5.878 = private unnamed_addr constant [8 x i8] c"million\00", align 1
@.str.6.879 = private unnamed_addr constant [9 x i8] c"thousand\00", align 1
@Cardinals = internal global [20 x ptr] [ptr @.str.12.889, ptr @.str.13.890, ptr @.str.14.891, ptr @.str.15.892, ptr @.str.16.893, ptr @.str.17.894, ptr @.str.18.895, ptr @.str.19.896, ptr @.str.20.897, ptr @.str.21.898, ptr @.str.22.899, ptr @.str.23.900, ptr @.str.24.901, ptr @.str.25.902, ptr @.str.26.903, ptr @.str.27.904, ptr @.str.28.905, ptr @.str.29.906, ptr @.str.30.907, ptr @.str.31.908], align 16
@.str.7.880 = private unnamed_addr constant [8 x i8] c"hundred\00", align 1
@Twenties = internal global [8 x ptr] [ptr @.str.32.881, ptr @.str.33.882, ptr @.str.34.883, ptr @.str.35.884, ptr @.str.36.885, ptr @.str.37.886, ptr @.str.38.887, ptr @.str.39.888], align 16
@.str.8.909 = private unnamed_addr constant [10 x i8] c"billionth\00", align 1
@.str.9.910 = private unnamed_addr constant [10 x i8] c"millionth\00", align 1
@.str.10.911 = private unnamed_addr constant [11 x i8] c"thousandth\00", align 1
@.str.11.912 = private unnamed_addr constant [10 x i8] c"hundredth\00", align 1
@Ord_twenties = internal global [8 x ptr] [ptr @.str.40.933, ptr @.str.41.934, ptr @.str.42.935, ptr @.str.43.936, ptr @.str.44.937, ptr @.str.45.938, ptr @.str.46.939, ptr @.str.47.940], align 16
@Ordinals = internal global [20 x ptr] [ptr @.str.48.913, ptr @.str.49.914, ptr @.str.50.915, ptr @.str.51.916, ptr @.str.52.917, ptr @.str.53.918, ptr @.str.54.919, ptr @.str.55.920, ptr @.str.56.921, ptr @.str.57.922, ptr @.str.58.923, ptr @.str.59.924, ptr @.str.60.925, ptr @.str.61.926, ptr @.str.62.927, ptr @.str.63.928, ptr @.str.64.929, ptr @.str.65.930, ptr @.str.66.931, ptr @.str.67.932], align 16
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
@text_id = dso_local global ptr @.str.941, align 8
@Rules = dso_local global [27 x ptr] [ptr @punct_rules, ptr @A_rules, ptr @B_rules, ptr @C_rules, ptr @D_rules, ptr @E_rules, ptr @F_rules, ptr @G_rules, ptr @H_rules, ptr @I_rules, ptr @J_rules, ptr @K_rules, ptr @L_rules, ptr @M_rules, ptr @N_rules, ptr @O_rules, ptr @P_rules, ptr @Q_rules, ptr @R_rules, ptr @S_rules, ptr @T_rules, ptr @U_rules, ptr @V_rules, ptr @W_rules, ptr @X_rules, ptr @Y_rules, ptr @Z_rules], align 16
@stderr = external global ptr, align 8
@.str.1.944 = private unnamed_addr constant [42 x i8] c"Error: Can't find rule for: '%c' in \22%s\22\0A\00", align 1
@.str.2.946 = private unnamed_addr constant [29 x i8] c"Bad char in left rule: '%c'\0A\00", align 1
@.str.3.945 = private unnamed_addr constant [29 x i8] c"Bad char in right rule:'%c'\0A\00", align 1
@.str.947 = private unnamed_addr constant [61 x i8] c"$Id: trie.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@trie_id = dso_local global ptr @.str.947, align 8

; Function Attrs: nounwind uwtable
define dso_local void @au_header(i32 noundef %fd, i32 noundef %enc, i32 noundef %rate, i32 noundef %size, ptr noundef %comment) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %enc.addr = alloca i32, align 4
  %rate.addr = alloca i32, align 4
  %size.addr = alloca i32, align 4
  %comment.addr = alloca ptr, align 8
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !5
  store i32 %enc, ptr %enc.addr, align 4, !tbaa !5
  store i32 %rate, ptr %rate.addr, align 4, !tbaa !5
  store i32 %size, ptr %size.addr, align 4, !tbaa !5
  store ptr %comment, ptr %comment.addr, align 8, !tbaa !9
  %0 = load ptr, ptr %comment.addr, align 8, !tbaa !9
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  store ptr @.str.74, ptr %comment.addr, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load i32, ptr %fd.addr, align 4, !tbaa !5
  call void @wblong(i32 noundef %1, i64 noundef 779316836)
  %2 = load i32, ptr %fd.addr, align 4, !tbaa !5
  %3 = load ptr, ptr %comment.addr, align 8, !tbaa !9
  %call = call i64 @strlen(ptr noundef %3) #14
  %add = add i64 24, %call
  call void @wblong(i32 noundef %2, i64 noundef %add)
  %4 = load i32, ptr %fd.addr, align 4, !tbaa !5
  %5 = load i32, ptr %size.addr, align 4, !tbaa !5
  %conv = zext i32 %5 to i64
  call void @wblong(i32 noundef %4, i64 noundef %conv)
  %6 = load i32, ptr %fd.addr, align 4, !tbaa !5
  %7 = load i32, ptr %enc.addr, align 4, !tbaa !5
  %conv1 = zext i32 %7 to i64
  call void @wblong(i32 noundef %6, i64 noundef %conv1)
  %8 = load i32, ptr %fd.addr, align 4, !tbaa !5
  %9 = load i32, ptr %rate.addr, align 4, !tbaa !5
  %conv2 = zext i32 %9 to i64
  call void @wblong(i32 noundef %8, i64 noundef %conv2)
  %10 = load i32, ptr %fd.addr, align 4, !tbaa !5
  call void @wblong(i32 noundef %10, i64 noundef 1)
  %11 = load i32, ptr %fd.addr, align 4, !tbaa !5
  %12 = load ptr, ptr %comment.addr, align 8, !tbaa !9
  %13 = load ptr, ptr %comment.addr, align 8, !tbaa !9
  %call3 = call i64 @strlen(ptr noundef %13) #14
  %call4 = call i64 @write(i32 noundef %11, ptr noundef %12, i64 noundef %call3)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @wblong(i32 noundef %fd, i64 noundef %x) #0 {
entry:
  %fd.addr = alloca i32, align 4
  %x.addr = alloca i64, align 8
  %i = alloca i32, align 4
  %byte = alloca i8, align 1
  store i32 %fd, ptr %fd.addr, align 4, !tbaa !5
  store i64 %x, ptr %x.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  store i32 24, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %byte) #15
  %1 = load i64, ptr %x.addr, align 8, !tbaa !12
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %sh_prom = zext i32 %2 to i64
  %shr = lshr i64 %1, %sh_prom
  %and = and i64 %shr, 255
  %conv = trunc i64 %and to i8
  store i8 %conv, ptr %byte, align 1, !tbaa !14
  %3 = load i32, ptr %fd.addr, align 4, !tbaa !5
  %call = call i64 @write(i32 noundef %3, ptr noundef %byte, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr %byte) #15
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 8
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #1

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @file_init(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef @.str.1.75, i32 noundef %0, ptr noundef %1, ptr noundef @.str.2.76, ptr noundef @.str.74, ptr noundef @linear_file, ptr noundef @.str.3.77, ptr noundef @.str.4.78, ptr noundef @.str.74, ptr noundef @au_file, ptr noundef @.str.5.79, ptr noundef null)
  store i32 %call, ptr %argc.addr, align 4, !tbaa !5
  %2 = load i32, ptr @help_only, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %argc.addr, align 4, !tbaa !5
  store i32 %3, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr @au_file, align 8, !tbaa !9
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.end17

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr @au_file, align 8, !tbaa !9
  %call3 = call i32 @strcmp(ptr noundef %5, ptr noundef @.str.6.80) #14
  %cmp = icmp eq i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  store i32 1, ptr @au_fd, align 4, !tbaa !5
  br label %if.end9

if.else:                                          ; preds = %if.then2
  %6 = load ptr, ptr @au_file, align 8, !tbaa !9
  %call5 = call i32 (ptr, i32, ...) @open(ptr noundef %6, i32 noundef 577, i32 noundef 438)
  store i32 %call5, ptr @au_fd, align 4, !tbaa !5
  %7 = load i32, ptr @au_fd, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %7, 0
  br i1 %cmp6, label %if.then7, label %if.end8

if.then7:                                         ; preds = %if.else
  %8 = load ptr, ptr @au_file, align 8, !tbaa !9
  call void @perror(ptr noundef %8) #16
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then4
  %9 = load i32, ptr @au_fd, align 4, !tbaa !5
  %cmp10 = icmp sge i32 %9, 0
  br i1 %cmp10, label %if.then11, label %if.end16

if.then11:                                        ; preds = %if.end9
  %10 = load i64, ptr @samp_rate, align 8, !tbaa !12
  %cmp12 = icmp sgt i64 %10, 8000
  br i1 %cmp12, label %if.then13, label %if.else14

if.then13:                                        ; preds = %if.then11
  store i32 3, ptr @au_encoding, align 4, !tbaa !5
  br label %if.end15

if.else14:                                        ; preds = %if.then11
  store i32 1, ptr @au_encoding, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.else14, %if.then13
  %11 = load i32, ptr @au_fd, align 4, !tbaa !5
  %12 = load i32, ptr @au_encoding, align 4, !tbaa !5
  %13 = load i64, ptr @samp_rate, align 8, !tbaa !12
  %conv = trunc i64 %13 to i32
  call void @au_header(i32 noundef %11, i32 noundef %12, i32 noundef %conv, i32 noundef -1, ptr noundef @.str.74)
  store i32 0, ptr @au_size, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end9
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %if.end
  %14 = load ptr, ptr @linear_file, align 8, !tbaa !9
  %tobool18 = icmp ne ptr %14, null
  br i1 %tobool18, label %if.then19, label %if.end31

if.then19:                                        ; preds = %if.end17
  %15 = load ptr, ptr @linear_file, align 8, !tbaa !9
  %call20 = call i32 @strcmp(ptr noundef %15, ptr noundef @.str.6.80) #14
  %cmp21 = icmp eq i32 %call20, 0
  br i1 %cmp21, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then19
  store i32 1, ptr @linear_fd, align 4, !tbaa !5
  br label %if.end30

if.else24:                                        ; preds = %if.then19
  %16 = load ptr, ptr @linear_file, align 8, !tbaa !9
  %call25 = call i32 (ptr, i32, ...) @open(ptr noundef %16, i32 noundef 577, i32 noundef 438)
  store i32 %call25, ptr @linear_fd, align 4, !tbaa !5
  %17 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %17, 0
  br i1 %cmp26, label %if.then28, label %if.end29

if.then28:                                        ; preds = %if.else24
  %18 = load ptr, ptr @linear_file, align 8, !tbaa !9
  call void @perror(ptr noundef %18) #16
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.else24
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then23
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.end17
  %19 = load i32, ptr @au_fd, align 4, !tbaa !5
  %cmp32 = icmp sge i32 %19, 0
  br i1 %cmp32, label %if.then36, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end31
  %20 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %cmp34 = icmp sge i32 %20, 0
  br i1 %cmp34, label %if.then36, label %if.end37

if.then36:                                        ; preds = %lor.lhs.false, %if.end31
  store ptr @aufile_write, ptr @file_write, align 8, !tbaa !20
  store ptr @aufile_term, ptr @file_term, align 8, !tbaa !20
  br label %if.end37

if.end37:                                         ; preds = %if.then36, %lor.lhs.false
  %21 = load i32, ptr %argc.addr, align 4, !tbaa !5
  store i32 %21, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end37, %if.then
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #1

declare i32 @open(ptr noundef, i32 noundef, ...) #2

; Function Attrs: cold
declare void @perror(ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal void @aufile_write(i32 noundef %n, ptr noundef %data) #0 {
entry:
  %n.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %size = alloca i32, align 4
  %size17 = alloca i32, align 4
  %plabuf = alloca ptr, align 8
  %p = alloca ptr, align 8
  %e = alloca ptr, align 8
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !21
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end55

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %1, 0
  br i1 %cmp1, label %if.then2, label %if.end10

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #15
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv = sext i32 %2 to i64
  %mul = mul i64 %conv, 2
  %conv3 = trunc i64 %mul to i32
  store i32 %conv3, ptr %size, align 4, !tbaa !5
  %3 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %4 = load ptr, ptr %data.addr, align 8, !tbaa !21
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv4 = sext i32 %5 to i64
  %mul5 = mul i64 %conv4, 2
  %call = call i64 @write(i32 noundef %3, ptr noundef %4, i64 noundef %mul5)
  %6 = load i32, ptr %size, align 4, !tbaa !5
  %conv6 = zext i32 %6 to i64
  %cmp7 = icmp ne i64 %call, %conv6
  br i1 %cmp7, label %if.then9, label %if.end

if.then9:                                         ; preds = %if.then2
  call void @perror(ptr noundef @.str.7.81) #16
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #15
  br label %if.end10

if.end10:                                         ; preds = %if.end, %if.then
  %7 = load i32, ptr @au_fd, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %7, 0
  br i1 %cmp11, label %if.then13, label %if.end54

if.then13:                                        ; preds = %if.end10
  %8 = load i32, ptr @au_encoding, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %8, 3
  br i1 %cmp14, label %if.then16, label %if.else28

if.then16:                                        ; preds = %if.then13
  call void @llvm.lifetime.start.p0(i64 4, ptr %size17) #15
  %9 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv18 = sext i32 %9 to i64
  %mul19 = mul i64 %conv18, 2
  %conv20 = trunc i64 %mul19 to i32
  store i32 %conv20, ptr %size17, align 4, !tbaa !5
  %10 = load i32, ptr @au_fd, align 4, !tbaa !5
  %11 = load ptr, ptr %data.addr, align 8, !tbaa !21
  %12 = load i32, ptr %size17, align 4, !tbaa !5
  %conv21 = zext i32 %12 to i64
  %call22 = call i64 @write(i32 noundef %10, ptr noundef %11, i64 noundef %conv21)
  %13 = load i32, ptr %size17, align 4, !tbaa !5
  %conv23 = zext i32 %13 to i64
  %cmp24 = icmp ne i64 %call22, %conv23
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.then16
  call void @perror(ptr noundef @.str.7.81) #16
  br label %if.end27

if.else:                                          ; preds = %if.then16
  %14 = load i32, ptr %size17, align 4, !tbaa !5
  %15 = load i32, ptr @au_size, align 4, !tbaa !5
  %add = add i32 %15, %14
  store i32 %add, ptr @au_size, align 4, !tbaa !5
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then26
  call void @llvm.lifetime.end.p0(i64 4, ptr %size17) #15
  br label %if.end53

if.else28:                                        ; preds = %if.then13
  %16 = load i32, ptr @au_encoding, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %16, 1
  br i1 %cmp29, label %if.then31, label %if.else51

if.then31:                                        ; preds = %if.else28
  call void @llvm.lifetime.start.p0(i64 8, ptr %plabuf) #15
  %17 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv32 = sext i32 %17 to i64
  %call33 = call noalias ptr @malloc(i64 noundef %conv32) #17
  store ptr %call33, ptr %plabuf, align 8, !tbaa !9
  %18 = load ptr, ptr %plabuf, align 8, !tbaa !9
  %tobool = icmp ne ptr %18, null
  br i1 %tobool, label %if.then34, label %if.else48

if.then34:                                        ; preds = %if.then31
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15
  %19 = load ptr, ptr %plabuf, align 8, !tbaa !9
  store ptr %19, ptr %p, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #15
  %20 = load ptr, ptr %p, align 8, !tbaa !9
  %21 = load i32, ptr %n.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i8, ptr %20, i64 %idx.ext
  store ptr %add.ptr, ptr %e, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then34
  %22 = load ptr, ptr %p, align 8, !tbaa !9
  %23 = load ptr, ptr %e, align 8, !tbaa !9
  %cmp35 = icmp ult ptr %22, %23
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %24 = load ptr, ptr @_l2u, align 8, !tbaa !9
  %25 = load ptr, ptr %data.addr, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %25, i32 1
  store ptr %incdec.ptr, ptr %data.addr, align 8, !tbaa !21
  %26 = load i16, ptr %25, align 2, !tbaa !23
  %conv37 = sext i16 %26 to i32
  %shr = ashr i32 %conv37, 3
  %idxprom = sext i32 %shr to i64
  %arrayidx = getelementptr inbounds i8, ptr %24, i64 %idxprom
  %27 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %28 = load ptr, ptr %p, align 8, !tbaa !9
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %28, i32 1
  store ptr %incdec.ptr38, ptr %p, align 8, !tbaa !9
  store i8 %27, ptr %28, align 1, !tbaa !14
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  %29 = load i32, ptr @au_fd, align 4, !tbaa !5
  %30 = load ptr, ptr %plabuf, align 8, !tbaa !9
  %31 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv39 = sext i32 %31 to i64
  %call40 = call i64 @write(i32 noundef %29, ptr noundef %30, i64 noundef %conv39)
  %32 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv41 = sext i32 %32 to i64
  %cmp42 = icmp ne i64 %call40, %conv41
  br i1 %cmp42, label %if.then44, label %if.else45

if.then44:                                        ; preds = %while.end
  %33 = load ptr, ptr @au_file, align 8, !tbaa !9
  call void @perror(ptr noundef %33) #16
  br label %if.end47

if.else45:                                        ; preds = %while.end
  %34 = load i32, ptr %n.addr, align 4, !tbaa !5
  %35 = load i32, ptr @au_size, align 4, !tbaa !5
  %add46 = add i32 %35, %34
  store i32 %add46, ptr @au_size, align 4, !tbaa !5
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then44
  %36 = load ptr, ptr %plabuf, align 8, !tbaa !9
  call void @free(ptr noundef %36) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15
  br label %if.end50

if.else48:                                        ; preds = %if.then31
  %37 = load ptr, ptr @stderr, align 8, !tbaa !26
  %38 = load ptr, ptr @program, align 8, !tbaa !9
  %call49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.8.82, ptr noundef %38) #15
  br label %if.end50

if.end50:                                         ; preds = %if.else48, %if.end47
  call void @llvm.lifetime.end.p0(i64 8, ptr %plabuf) #15
  br label %if.end52

if.else51:                                        ; preds = %if.else28
  call void @abort() #18
  unreachable

if.end52:                                         ; preds = %if.end50
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.end27
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end10
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @aufile_term() #0 {
entry:
  %here = alloca i64, align 8
  %0 = load i32, ptr @au_fd, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %here) #15
  %1 = load i32, ptr @au_fd, align 4, !tbaa !5
  %call = call i64 @lseek(i32 noundef %1, i64 noundef 0, i32 noundef 1) #15
  store i64 %call, ptr %here, align 8, !tbaa !12
  %2 = load i64, ptr %here, align 8, !tbaa !12
  %cmp1 = icmp sge i64 %2, 0
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr @au_fd, align 4, !tbaa !5
  %4 = load i64, ptr %here, align 8, !tbaa !12
  %call3 = call i32 @ftruncate(i32 noundef %3, i64 noundef %4) #15
  %5 = load i32, ptr @au_fd, align 4, !tbaa !5
  %call4 = call i64 @lseek(i32 noundef %5, i64 noundef 8, i32 noundef 0) #15
  %cmp5 = icmp eq i64 %call4, 8
  br i1 %cmp5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then2
  %6 = load i32, ptr @au_fd, align 4, !tbaa !5
  %7 = load i32, ptr @au_size, align 4, !tbaa !5
  %conv = zext i32 %7 to i64
  call void @wblong(i32 noundef %6, i64 noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %8 = load i32, ptr @au_fd, align 4, !tbaa !5
  %cmp8 = icmp ne i32 %8, 1
  br i1 %cmp8, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end7
  %9 = load i32, ptr @au_fd, align 4, !tbaa !5
  %call11 = call i32 @close(i32 noundef %9)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  store i32 -1, ptr @au_fd, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %here) #15
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry
  %10 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %10, 0
  br i1 %cmp14, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end13
  %11 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %12 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %call17 = call i64 @lseek(i32 noundef %12, i64 noundef 0, i32 noundef 1) #15
  %call18 = call i32 @ftruncate(i32 noundef %11, i64 noundef %call17) #15
  %13 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %cmp19 = icmp ne i32 %13, 1
  br i1 %cmp19, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then16
  %14 = load i32, ptr @linear_fd, align 4, !tbaa !5
  %call22 = call i32 @close(i32 noundef %14)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then16
  store i32 -1, ptr @linear_fd, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end13
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #5

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) #5

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind
declare i32 @fprintf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: noreturn nounwind
declare void @abort() #7

; Function Attrs: nounwind uwtable
define dso_local void @darray_free(ptr noundef %a) #0 {
entry:
  %a.addr = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8, !tbaa !20
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data = getelementptr inbounds nuw %struct.darray_t, ptr %0, i32 0, i32 0
  %1 = load ptr, ptr %data, align 8, !tbaa !28
  %tobool = icmp ne ptr %1, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data1 = getelementptr inbounds nuw %struct.darray_t, ptr %2, i32 0, i32 0
  %3 = load ptr, ptr %data1, align 8, !tbaa !28
  call void @free(ptr noundef %3) #15
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data2 = getelementptr inbounds nuw %struct.darray_t, ptr %4, i32 0, i32 0
  store ptr null, ptr %data2, align 8, !tbaa !28
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %alloc = getelementptr inbounds nuw %struct.darray_t, ptr %5, i32 0, i32 2
  store i32 0, ptr %alloc, align 4, !tbaa !30
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %6, i32 0, i32 1
  store i32 0, ptr %items, align 8, !tbaa !31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Darray_find(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %retval = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %osize = alloca i32, align 4
  %nsize = alloca i32, align 4
  %add = alloca i32, align 4
  %ndata = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !20
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %alloc = getelementptr inbounds nuw %struct.darray_t, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %alloc, align 4, !tbaa !30
  %cmp = icmp uge i32 %0, %2
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %items, align 8, !tbaa !31
  %cmp1 = icmp uge i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end53

if.then:                                          ; preds = %lor.lhs.false, %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %osize) #15
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items2 = getelementptr inbounds nuw %struct.darray_t, ptr %6, i32 0, i32 1
  %7 = load i32, ptr %items2, align 8, !tbaa !31
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize = getelementptr inbounds nuw %struct.darray_t, ptr %8, i32 0, i32 3
  %9 = load i16, ptr %esize, align 8, !tbaa !32
  %conv = zext i16 %9 to i32
  %mul = mul i32 %7, %conv
  store i32 %mul, ptr %osize, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsize) #15
  %10 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize3 = getelementptr inbounds nuw %struct.darray_t, ptr %10, i32 0, i32 3
  %11 = load i16, ptr %esize3, align 8, !tbaa !32
  %tobool = icmp ne i16 %11, 0
  br i1 %tobool, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @abort() #18
  unreachable

if.end:                                           ; preds = %if.then
  %12 = load i32, ptr %n.addr, align 4, !tbaa !5
  %13 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %alloc5 = getelementptr inbounds nuw %struct.darray_t, ptr %13, i32 0, i32 2
  %14 = load i32, ptr %alloc5, align 4, !tbaa !30
  %cmp6 = icmp uge i32 %12, %14
  br i1 %cmp6, label %if.then8, label %if.else34

if.then8:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %add) #15
  %15 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %get = getelementptr inbounds nuw %struct.darray_t, ptr %15, i32 0, i32 4
  %16 = load i16, ptr %get, align 2, !tbaa !33
  %conv9 = zext i16 %16 to i32
  %tobool10 = icmp ne i32 %conv9, 0
  br i1 %tobool10, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then8
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %get11 = getelementptr inbounds nuw %struct.darray_t, ptr %17, i32 0, i32 4
  %18 = load i16, ptr %get11, align 2, !tbaa !33
  %conv12 = zext i16 %18 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.then8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv12, %cond.true ], [ 1, %cond.false ]
  store i32 %cond, ptr %add, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %ndata) #15
  %19 = load i32, ptr %n.addr, align 4, !tbaa !5
  %20 = load i32, ptr %add, align 4, !tbaa !5
  %add13 = add i32 %19, %20
  %21 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize14 = getelementptr inbounds nuw %struct.darray_t, ptr %21, i32 0, i32 3
  %22 = load i16, ptr %esize14, align 8, !tbaa !32
  %conv15 = zext i16 %22 to i32
  %mul16 = mul i32 %add13, %conv15
  store i32 %mul16, ptr %nsize, align 4, !tbaa !5
  %conv17 = zext i32 %mul16 to i64
  %call = call noalias ptr @malloc(i64 noundef %conv17) #17
  store ptr %call, ptr %ndata, align 8, !tbaa !9
  %23 = load ptr, ptr %ndata, align 8, !tbaa !9
  %tobool18 = icmp ne ptr %23, null
  br i1 %tobool18, label %if.then19, label %if.else

if.then19:                                        ; preds = %cond.end
  %24 = load i32, ptr %osize, align 4, !tbaa !5
  %tobool20 = icmp ne i32 %24, 0
  br i1 %tobool20, label %if.then21, label %if.end23

if.then21:                                        ; preds = %if.then19
  %25 = load ptr, ptr %ndata, align 8, !tbaa !9
  %26 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data = getelementptr inbounds nuw %struct.darray_t, ptr %26, i32 0, i32 0
  %27 = load ptr, ptr %data, align 8, !tbaa !28
  %28 = load i32, ptr %osize, align 4, !tbaa !5
  %conv22 = zext i32 %28 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %27, i64 %conv22, i1 false)
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then19
  %29 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data24 = getelementptr inbounds nuw %struct.darray_t, ptr %29, i32 0, i32 0
  %30 = load ptr, ptr %data24, align 8, !tbaa !28
  %tobool25 = icmp ne ptr %30, null
  br i1 %tobool25, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  %31 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data27 = getelementptr inbounds nuw %struct.darray_t, ptr %31, i32 0, i32 0
  %32 = load ptr, ptr %data27, align 8, !tbaa !28
  call void @free(ptr noundef %32) #15
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23
  %33 = load ptr, ptr %ndata, align 8, !tbaa !9
  %34 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data29 = getelementptr inbounds nuw %struct.darray_t, ptr %34, i32 0, i32 0
  store ptr %33, ptr %data29, align 8, !tbaa !28
  %35 = load i32, ptr %n.addr, align 4, !tbaa !5
  %36 = load i32, ptr %add, align 4, !tbaa !5
  %add30 = add i32 %35, %36
  %37 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %alloc31 = getelementptr inbounds nuw %struct.darray_t, ptr %37, i32 0, i32 2
  store i32 %add30, ptr %alloc31, align 4, !tbaa !30
  br label %if.end32

if.else:                                          ; preds = %cond.end
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end32:                                         ; preds = %if.end28
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.else
  call void @llvm.lifetime.end.p0(i64 8, ptr %ndata) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %add) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup49 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end39

if.else34:                                        ; preds = %if.end
  %38 = load i32, ptr %n.addr, align 4, !tbaa !5
  %add35 = add i32 %38, 1
  %39 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize36 = getelementptr inbounds nuw %struct.darray_t, ptr %39, i32 0, i32 3
  %40 = load i16, ptr %esize36, align 8, !tbaa !32
  %conv37 = zext i16 %40 to i32
  %mul38 = mul i32 %add35, %conv37
  store i32 %mul38, ptr %nsize, align 4, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.else34, %cleanup.cont
  %41 = load i32, ptr %n.addr, align 4, !tbaa !5
  %42 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items40 = getelementptr inbounds nuw %struct.darray_t, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %items40, align 8, !tbaa !31
  %cmp41 = icmp uge i32 %41, %43
  br i1 %cmp41, label %if.then43, label %if.end48

if.then43:                                        ; preds = %if.end39
  %44 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data44 = getelementptr inbounds nuw %struct.darray_t, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %data44, align 8, !tbaa !28
  %46 = load i32, ptr %osize, align 4, !tbaa !5
  %idx.ext = zext i32 %46 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %45, i64 %idx.ext
  %47 = load i32, ptr %nsize, align 4, !tbaa !5
  %48 = load i32, ptr %osize, align 4, !tbaa !5
  %sub = sub i32 %47, %48
  %conv45 = zext i32 %sub to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv45, i1 false)
  %49 = load i32, ptr %n.addr, align 4, !tbaa !5
  %add46 = add i32 %49, 1
  %50 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items47 = getelementptr inbounds nuw %struct.darray_t, ptr %50, i32 0, i32 1
  store i32 %add46, ptr %items47, align 8, !tbaa !31
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.end39
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup49

cleanup49:                                        ; preds = %if.end48, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsize) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %osize) #15
  %cleanup.dest51 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest51, label %unreachable [
    i32 0, label %cleanup.cont52
    i32 1, label %return
  ]

cleanup.cont52:                                   ; preds = %cleanup49
  br label %if.end53

if.end53:                                         ; preds = %cleanup.cont52, %lor.lhs.false
  %51 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data54 = getelementptr inbounds nuw %struct.darray_t, ptr %51, i32 0, i32 0
  %52 = load ptr, ptr %data54, align 8, !tbaa !28
  %53 = load i32, ptr %n.addr, align 4, !tbaa !5
  %54 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize55 = getelementptr inbounds nuw %struct.darray_t, ptr %54, i32 0, i32 3
  %55 = load i16, ptr %esize55, align 8, !tbaa !32
  %conv56 = zext i16 %55 to i32
  %mul57 = mul i32 %53, %conv56
  %idx.ext58 = zext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds nuw i8, ptr %52, i64 %idx.ext58
  store ptr %add.ptr59, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end53, %cleanup49
  %56 = load ptr, ptr %retval, align 8
  ret ptr %56

unreachable:                                      ; preds = %cleanup49
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: nounwind uwtable
define dso_local i32 @darray_delete(ptr noundef %a, i32 noundef %n) #0 {
entry:
  %retval = alloca i32, align 4
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !20
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call = call ptr @darray_find(ptr noundef %0, i32 noundef %1)
  store ptr %call, ptr %p, align 8, !tbaa !9
  %2 = load ptr, ptr %p, align 8, !tbaa !9
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then, label %if.else13

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %items, align 8, !tbaa !31
  %tobool1 = icmp ne i32 %4, 0
  br i1 %tobool1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items3 = getelementptr inbounds nuw %struct.darray_t, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %items3, align 8, !tbaa !31
  %dec = add i32 %6, -1
  store i32 %dec, ptr %items3, align 8, !tbaa !31
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %7 = load i32, ptr %n.addr, align 4, !tbaa !5
  %inc = add i32 %7, 1
  store i32 %inc, ptr %n.addr, align 4, !tbaa !5
  %8 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items4 = getelementptr inbounds nuw %struct.darray_t, ptr %8, i32 0, i32 1
  %9 = load i32, ptr %items4, align 8, !tbaa !31
  %cmp = icmp ult i32 %7, %9
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %10 = load ptr, ptr %p, align 8, !tbaa !9
  %11 = load ptr, ptr %p, align 8, !tbaa !9
  %12 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize = getelementptr inbounds nuw %struct.darray_t, ptr %12, i32 0, i32 3
  %13 = load i16, ptr %esize, align 8, !tbaa !32
  %conv = zext i16 %13 to i32
  %idx.ext = sext i32 %conv to i64
  %add.ptr = getelementptr inbounds i8, ptr %11, i64 %idx.ext
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize5 = getelementptr inbounds nuw %struct.darray_t, ptr %14, i32 0, i32 3
  %15 = load i16, ptr %esize5, align 8, !tbaa !32
  %conv6 = zext i16 %15 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %10, ptr align 1 %add.ptr, i64 %conv6, i1 false)
  %16 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize7 = getelementptr inbounds nuw %struct.darray_t, ptr %16, i32 0, i32 3
  %17 = load i16, ptr %esize7, align 8, !tbaa !32
  %conv8 = zext i16 %17 to i32
  %18 = load ptr, ptr %p, align 8, !tbaa !9
  %idx.ext9 = sext i32 %conv8 to i64
  %add.ptr10 = getelementptr inbounds i8, ptr %18, i64 %idx.ext9
  store ptr %add.ptr10, ptr %p, align 8, !tbaa !9
  br label %while.cond, !llvm.loop !34

while.end:                                        ; preds = %while.cond
  %19 = load ptr, ptr %p, align 8, !tbaa !9
  %20 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize11 = getelementptr inbounds nuw %struct.darray_t, ptr %20, i32 0, i32 3
  %21 = load i16, ptr %esize11, align 8, !tbaa !32
  %conv12 = zext i16 %21 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %19, i8 0, i64 %conv12, i1 false)
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @abort() #18
  unreachable

if.else13:                                        ; preds = %entry
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else13, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @darray_find(ptr noundef %a, i32 noundef %n) #10 {
entry:
  %retval = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !20
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %alloc = getelementptr inbounds nuw %struct.darray_t, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %alloc, align 4, !tbaa !30
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %items, align 8, !tbaa !31
  %cmp1 = icmp ult i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data = getelementptr inbounds nuw %struct.darray_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %data, align 8, !tbaa !28
  %8 = load i32, ptr %n.addr, align 4, !tbaa !5
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize = getelementptr inbounds nuw %struct.darray_t, ptr %9, i32 0, i32 3
  %10 = load i16, ptr %esize, align 8, !tbaa !32
  %conv = zext i16 %10 to i32
  %mul = mul i32 %8, %conv
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %12 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call = call ptr @Darray_find(ptr noundef %11, i32 noundef %12)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @init_synth(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %mSec_per_frame = alloca double, align 8
  %impulse = alloca i32, align 4
  %casc = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %mSec_per_frame) #15
  store double 1.000000e+01, ptr %mSec_per_frame, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr %impulse) #15
  store i32 0, ptr %impulse, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %casc) #15
  store i32 0, ptr %casc, align 4, !tbaa !5
  %0 = load i64, ptr @samp_rate, align 8, !tbaa !12
  store i64 %0, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 4), align 8, !tbaa !37
  store i32 1, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 1), align 4, !tbaa !39
  store i64 2, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 6), align 8, !tbaa !40
  store i32 0, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 2), align 8, !tbaa !41
  %1 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %2 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef @.str.1.85, i32 noundef %1, ptr noundef %2, ptr noundef @.str.2.86, ptr noundef null, ptr noundef getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 1), ptr noundef @.str.3.87, ptr noundef @.str.4.88, ptr noundef null, ptr noundef %impulse, ptr noundef @.str.5.89, ptr noundef @.str.6.90, ptr noundef @.str.7.91, ptr noundef %casc, ptr noundef @.str.8.92, ptr noundef @.str.9.93, ptr noundef @.str.7.91, ptr noundef getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 2), ptr noundef @.str.10.94, ptr noundef @.str.11.95, ptr noundef @.str.12.96, ptr noundef %mSec_per_frame, ptr noundef @.str.13.97, ptr noundef @.str.14.98, ptr noundef @.str.7.91, ptr noundef getelementptr inbounds nuw (%struct.klatt_frame_t, ptr @def_pars, i32 0, i32 21), ptr noundef @.str.15.99, ptr noundef @.str.16.100, ptr noundef @.str.7.91, ptr noundef @def_pars, ptr noundef @.str.17.101, ptr noundef null)
  store i32 %call, ptr %argc.addr, align 4, !tbaa !5
  %3 = load i32, ptr %casc, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 1, ptr @klatt_global, align 8, !tbaa !42
  %4 = load i32, ptr %casc, align 4, !tbaa !5
  %conv = sext i32 %4 to i64
  store i64 %conv, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 5), align 8, !tbaa !43
  br label %if.end

if.else:                                          ; preds = %entry
  store i32 2, ptr @klatt_global, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %5 = load i32, ptr %impulse, align 4, !tbaa !5
  %tobool = icmp ne i32 %5, 0
  br i1 %tobool, label %if.then1, label %if.end2

if.then1:                                         ; preds = %if.end
  store i64 1, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 6), align 8, !tbaa !40
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %6 = load i64, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 4), align 8, !tbaa !37
  %conv3 = sitofp i64 %6 to double
  %7 = load double, ptr %mSec_per_frame, align 8, !tbaa !35
  %mul = fmul double %conv3, %7
  %div = fdiv double %mul, 1.000000e+03
  %conv4 = fptosi double %div to i64
  store i64 %conv4, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 7), align 8, !tbaa !44
  %8 = load i32, ptr %argc.addr, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %casc) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %impulse) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %mSec_per_frame) #15
  ret i32 %8
}

; Function Attrs: nounwind uwtable
define dso_local ptr @dict_find(ptr noundef %s, i32 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  ret ptr null
}

; Function Attrs: nounwind uwtable
define dso_local i32 @dict_init(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  ret i32 %0
}

; Function Attrs: nounwind uwtable
define dso_local void @dict_term() #0 {
entry:
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @getargs(ptr noundef %module, i32 noundef %argc, ptr noundef %argv, ...) #0 {
entry:
  %module.addr = alloca ptr, align 8
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %i = alloca i32, align 4
  %done_module = alloca i32, align 4
  %s = alloca ptr, align 8
  %flag = alloca i32, align 4
  %off = alloca i32, align 4
  %a = alloca ptr, align 8
  %count = alloca i32, align 4
  %l = alloca i32, align 4
  %fmt = alloca ptr, align 8
  %var = alloca ptr, align 8
  %desc = alloca ptr, align 8
  %x = alloca ptr, align 8
  %x100 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %x144 = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %module, ptr %module.addr, align 8, !tbaa !9
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %done_module) #15
  store i32 0, ptr %done_module, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end212, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %while.body, label %while.end213

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  %2 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %4, ptr %s, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #15
  %5 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !9
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %conv = sext i8 %6 to i32
  store i32 %conv, ptr %flag, align 4, !tbaa !5
  %7 = load ptr, ptr %s, align 8, !tbaa !9
  %8 = load i8, ptr %7, align 1, !tbaa !14
  %conv1 = sext i8 %8 to i32
  %tobool = icmp ne i32 %conv1, 0
  br i1 %tobool, label %land.lhs.true, label %if.else210

land.lhs.true:                                    ; preds = %while.body
  %9 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %9, 45
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %10 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %10, 43
  br i1 %cmp4, label %if.then, label %if.else210

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %off) #15
  store i32 1, ptr %off, align 4, !tbaa !5
  br label %while.cond6

while.cond6:                                      ; preds = %cleanup.cont194, %if.then
  %11 = load ptr, ptr %s, align 8, !tbaa !9
  %12 = load i8, ptr %11, align 1, !tbaa !14
  %tobool7 = icmp ne i8 %12, 0
  br i1 %tobool7, label %while.body8, label %while.end195

while.body8:                                      ; preds = %while.cond6
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15
  store i32 0, ptr %count, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay)
  br label %while.cond9

while.cond9:                                      ; preds = %cleanup.cont, %while.body8
  %arraydecay10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay10, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond9
  %13 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay10, i32 0, i32 3
  %reg_save_area = load ptr, ptr %13, align 16
  %14 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %15 = add i32 %gp_offset, 8
  store i32 %15, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond9
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay10, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %14, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %16 = load ptr, ptr %vaarg.addr, align 8, !tbaa !9
  store ptr %16, ptr %a, align 8, !tbaa !9
  %tobool11 = icmp ne ptr %16, null
  br i1 %tobool11, label %while.body12, label %while.end

while.body12:                                     ; preds = %vaarg.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #15
  %17 = load ptr, ptr %a, align 8, !tbaa !9
  %call = call i64 @strlen(ptr noundef %17) #14
  %conv13 = trunc i64 %call to i32
  store i32 %conv13, ptr %l, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %fmt) #15
  %arraydecay14 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p15 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 0
  %gp_offset16 = load i32, ptr %gp_offset_p15, align 16
  %fits_in_gp17 = icmp ule i32 %gp_offset16, 40
  br i1 %fits_in_gp17, label %vaarg.in_reg18, label %vaarg.in_mem20

vaarg.in_reg18:                                   ; preds = %while.body12
  %18 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 3
  %reg_save_area19 = load ptr, ptr %18, align 16
  %19 = getelementptr i8, ptr %reg_save_area19, i32 %gp_offset16
  %20 = add i32 %gp_offset16, 8
  store i32 %20, ptr %gp_offset_p15, align 16
  br label %vaarg.end24

vaarg.in_mem20:                                   ; preds = %while.body12
  %overflow_arg_area_p21 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay14, i32 0, i32 2
  %overflow_arg_area22 = load ptr, ptr %overflow_arg_area_p21, align 8
  %overflow_arg_area.next23 = getelementptr i8, ptr %overflow_arg_area22, i32 8
  store ptr %overflow_arg_area.next23, ptr %overflow_arg_area_p21, align 8
  br label %vaarg.end24

vaarg.end24:                                      ; preds = %vaarg.in_mem20, %vaarg.in_reg18
  %vaarg.addr25 = phi ptr [ %19, %vaarg.in_reg18 ], [ %overflow_arg_area22, %vaarg.in_mem20 ]
  %21 = load ptr, ptr %vaarg.addr25, align 8, !tbaa !9
  store ptr %21, ptr %fmt, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %var) #15
  %arraydecay26 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p27 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 0
  %gp_offset28 = load i32, ptr %gp_offset_p27, align 16
  %fits_in_gp29 = icmp ule i32 %gp_offset28, 40
  br i1 %fits_in_gp29, label %vaarg.in_reg30, label %vaarg.in_mem32

vaarg.in_reg30:                                   ; preds = %vaarg.end24
  %22 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 3
  %reg_save_area31 = load ptr, ptr %22, align 16
  %23 = getelementptr i8, ptr %reg_save_area31, i32 %gp_offset28
  %24 = add i32 %gp_offset28, 8
  store i32 %24, ptr %gp_offset_p27, align 16
  br label %vaarg.end36

vaarg.in_mem32:                                   ; preds = %vaarg.end24
  %overflow_arg_area_p33 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay26, i32 0, i32 2
  %overflow_arg_area34 = load ptr, ptr %overflow_arg_area_p33, align 8
  %overflow_arg_area.next35 = getelementptr i8, ptr %overflow_arg_area34, i32 8
  store ptr %overflow_arg_area.next35, ptr %overflow_arg_area_p33, align 8
  br label %vaarg.end36

vaarg.end36:                                      ; preds = %vaarg.in_mem32, %vaarg.in_reg30
  %vaarg.addr37 = phi ptr [ %23, %vaarg.in_reg30 ], [ %overflow_arg_area34, %vaarg.in_mem32 ]
  %25 = load ptr, ptr %vaarg.addr37, align 8, !tbaa !20
  store ptr %25, ptr %var, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %desc) #15
  %arraydecay38 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p39 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay38, i32 0, i32 0
  %gp_offset40 = load i32, ptr %gp_offset_p39, align 16
  %fits_in_gp41 = icmp ule i32 %gp_offset40, 40
  br i1 %fits_in_gp41, label %vaarg.in_reg42, label %vaarg.in_mem44

vaarg.in_reg42:                                   ; preds = %vaarg.end36
  %26 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay38, i32 0, i32 3
  %reg_save_area43 = load ptr, ptr %26, align 16
  %27 = getelementptr i8, ptr %reg_save_area43, i32 %gp_offset40
  %28 = add i32 %gp_offset40, 8
  store i32 %28, ptr %gp_offset_p39, align 16
  br label %vaarg.end48

vaarg.in_mem44:                                   ; preds = %vaarg.end36
  %overflow_arg_area_p45 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay38, i32 0, i32 2
  %overflow_arg_area46 = load ptr, ptr %overflow_arg_area_p45, align 8
  %overflow_arg_area.next47 = getelementptr i8, ptr %overflow_arg_area46, i32 8
  store ptr %overflow_arg_area.next47, ptr %overflow_arg_area_p45, align 8
  br label %vaarg.end48

vaarg.end48:                                      ; preds = %vaarg.in_mem44, %vaarg.in_reg42
  %vaarg.addr49 = phi ptr [ %27, %vaarg.in_reg42 ], [ %overflow_arg_area46, %vaarg.in_mem44 ]
  %29 = load ptr, ptr %vaarg.addr49, align 8, !tbaa !9
  store ptr %29, ptr %desc, align 8, !tbaa !9
  %30 = load ptr, ptr %s, align 8, !tbaa !9
  %call50 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.1.447) #14
  %tobool51 = icmp ne i32 %call50, 0
  br i1 %tobool51, label %if.else86, label %if.then52

if.then52:                                        ; preds = %vaarg.end48
  store i32 1, ptr @help_only, align 4, !tbaa !5
  %31 = load i32, ptr %done_module, align 4, !tbaa !5
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %done_module, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %31, 0
  br i1 %tobool53, label %if.end, label %if.then54

if.then54:                                        ; preds = %if.then52
  %32 = load ptr, ptr @stderr, align 8, !tbaa !26
  %33 = load ptr, ptr %module.addr, align 8, !tbaa !9
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str.2.448, ptr noundef %33) #15
  br label %if.end

if.end:                                           ; preds = %if.then54, %if.then52
  %34 = load ptr, ptr %fmt, align 8, !tbaa !9
  %tobool56 = icmp ne ptr %34, null
  br i1 %tobool56, label %if.then57, label %if.else81

if.then57:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #15
  %35 = load ptr, ptr %fmt, align 8, !tbaa !9
  %call58 = call ptr @strchr(ptr noundef %35, i32 noundef 37) #14
  store ptr %call58, ptr %x, align 8, !tbaa !9
  %36 = load ptr, ptr %x, align 8, !tbaa !9
  %tobool59 = icmp ne ptr %36, null
  br i1 %tobool59, label %if.then60, label %if.else77

if.then60:                                        ; preds = %if.then57
  %37 = load ptr, ptr @stderr, align 8, !tbaa !26
  %38 = load ptr, ptr %a, align 8, !tbaa !9
  %39 = load ptr, ptr %x, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %39, i64 1
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef @.str.3.449, ptr noundef %38, ptr noundef %add.ptr) #15
  %40 = load ptr, ptr %x, align 8, !tbaa !9
  %41 = load ptr, ptr %x, align 8, !tbaa !9
  %call62 = call i64 @strlen(ptr noundef %41) #14
  %add.ptr63 = getelementptr inbounds nuw i8, ptr %40, i64 %call62
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr63, i64 -1
  %42 = load i8, ptr %add.ptr64, align 1, !tbaa !14
  %conv65 = sext i8 %42 to i32
  switch i32 %conv65, label %sw.epilog [
    i32 101, label %sw.bb
    i32 102, label %sw.bb
    i32 103, label %sw.bb
    i32 117, label %sw.bb67
    i32 100, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.then60, %if.then60, %if.then60
  %43 = load ptr, ptr @stderr, align 8, !tbaa !26
  %44 = load ptr, ptr %fmt, align 8, !tbaa !9
  %45 = load ptr, ptr %var, align 8, !tbaa !20
  %46 = load double, ptr %45, align 8, !tbaa !35
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef %44, double noundef %46) #15
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then60, %if.then60
  %47 = load ptr, ptr %x, align 8, !tbaa !9
  %arrayidx68 = getelementptr inbounds i8, ptr %47, i64 1
  %48 = load i8, ptr %arrayidx68, align 1, !tbaa !14
  %conv69 = sext i8 %48 to i32
  %cmp70 = icmp eq i32 %conv69, 108
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %sw.bb67
  %49 = load ptr, ptr @stderr, align 8, !tbaa !26
  %50 = load ptr, ptr %fmt, align 8, !tbaa !9
  %51 = load ptr, ptr %var, align 8, !tbaa !20
  %52 = load i64, ptr %51, align 8, !tbaa !12
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef %50, i64 noundef %52) #15
  br label %if.end75

if.else:                                          ; preds = %sw.bb67
  %53 = load ptr, ptr @stderr, align 8, !tbaa !26
  %54 = load ptr, ptr %fmt, align 8, !tbaa !9
  %55 = load ptr, ptr %var, align 8, !tbaa !20
  %56 = load i32, ptr %55, align 4, !tbaa !5
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef %54, i32 noundef %56) #15
  br label %if.end75

if.end75:                                         ; preds = %if.else, %if.then72
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then60, %if.end75, %sw.bb
  %57 = load ptr, ptr @stderr, align 8, !tbaa !26
  %58 = load ptr, ptr %desc, align 8, !tbaa !9
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %57, ptr noundef @.str.4.450, ptr noundef %58) #15
  br label %if.end80

if.else77:                                        ; preds = %if.then57
  %59 = load ptr, ptr @stderr, align 8, !tbaa !26
  %60 = load ptr, ptr %a, align 8, !tbaa !9
  %61 = load ptr, ptr %var, align 8, !tbaa !20
  %62 = load ptr, ptr %61, align 8, !tbaa !9
  %tobool78 = icmp ne ptr %62, null
  br i1 %tobool78, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.else77
  %63 = load ptr, ptr %var, align 8, !tbaa !20
  %64 = load ptr, ptr %63, align 8, !tbaa !9
  br label %cond.end

cond.false:                                       ; preds = %if.else77
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %64, %cond.true ], [ @.str.6.451, %cond.false ]
  %65 = load ptr, ptr %desc, align 8, !tbaa !9
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef @.str.5.452, ptr noundef %60, ptr noundef %cond, ptr noundef %65) #15
  br label %if.end80

if.end80:                                         ; preds = %cond.end, %sw.epilog
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #15
  br label %if.end85

if.else81:                                        ; preds = %if.end
  %66 = load ptr, ptr @stderr, align 8, !tbaa !26
  %67 = load ptr, ptr %a, align 8, !tbaa !9
  %68 = load ptr, ptr %var, align 8, !tbaa !20
  %69 = load i32, ptr %68, align 4, !tbaa !5
  %tobool82 = icmp ne i32 %69, 0
  %70 = zext i1 %tobool82 to i64
  %cond83 = select i1 %tobool82, ptr @.str.8.453, ptr @.str.9.454
  %71 = load ptr, ptr %desc, align 8, !tbaa !9
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %66, ptr noundef @.str.7.455, ptr noundef %67, ptr noundef %cond83, ptr noundef %71) #15
  br label %if.end85

if.end85:                                         ; preds = %if.else81, %if.end80
  br label %if.end183

if.else86:                                        ; preds = %vaarg.end48
  %72 = load i32, ptr %l, align 4, !tbaa !5
  %cmp87 = icmp sgt i32 %72, 1
  br i1 %cmp87, label %if.then89, label %if.else132

if.then89:                                        ; preds = %if.else86
  %73 = load i32, ptr %count, align 4, !tbaa !5
  %tobool90 = icmp ne i32 %73, 0
  br i1 %tobool90, label %if.end131, label %land.lhs.true91

land.lhs.true91:                                  ; preds = %if.then89
  %74 = load ptr, ptr %s, align 8, !tbaa !9
  %75 = load ptr, ptr %a, align 8, !tbaa !9
  %call92 = call i32 @strcmp(ptr noundef %74, ptr noundef %75) #14
  %tobool93 = icmp ne i32 %call92, 0
  br i1 %tobool93, label %if.end131, label %if.then94

if.then94:                                        ; preds = %land.lhs.true91
  %76 = load ptr, ptr %fmt, align 8, !tbaa !9
  %tobool95 = icmp ne ptr %76, null
  br i1 %tobool95, label %if.then96, label %if.else121

if.then96:                                        ; preds = %if.then94
  %77 = load i32, ptr %i, align 4, !tbaa !5
  %78 = load i32, ptr %off, align 4, !tbaa !5
  %add = add nsw i32 %77, %78
  %79 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp97 = icmp slt i32 %add, %79
  br i1 %cmp97, label %if.then99, label %if.else117

if.then99:                                        ; preds = %if.then96
  call void @llvm.lifetime.start.p0(i64 8, ptr %x100) #15
  %80 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %81 = load i32, ptr %i, align 4, !tbaa !5
  %82 = load i32, ptr %off, align 4, !tbaa !5
  %inc101 = add nsw i32 %82, 1
  store i32 %inc101, ptr %off, align 4, !tbaa !5
  %add102 = add nsw i32 %81, %82
  %idxprom103 = sext i32 %add102 to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %80, i64 %idxprom103
  %83 = load ptr, ptr %arrayidx104, align 8, !tbaa !9
  store ptr %83, ptr %x100, align 8, !tbaa !9
  %84 = load ptr, ptr %fmt, align 8, !tbaa !9
  %call105 = call ptr @strchr(ptr noundef %84, i32 noundef 37) #14
  %tobool106 = icmp ne ptr %call105, null
  br i1 %tobool106, label %if.then107, label %if.else115

if.then107:                                       ; preds = %if.then99
  %85 = load ptr, ptr %x100, align 8, !tbaa !9
  %86 = load ptr, ptr %fmt, align 8, !tbaa !9
  %87 = load ptr, ptr %var, align 8, !tbaa !20
  %call108 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %85, ptr noundef %86, ptr noundef %87) #15
  %cmp109 = icmp ne i32 %call108, 1
  br i1 %cmp109, label %if.then111, label %if.end114

if.then111:                                       ; preds = %if.then107
  %88 = load ptr, ptr @stderr, align 8, !tbaa !26
  %89 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %arrayidx112 = getelementptr inbounds ptr, ptr %89, i64 0
  %90 = load ptr, ptr %arrayidx112, align 8, !tbaa !9
  %91 = load ptr, ptr %x100, align 8, !tbaa !9
  %92 = load ptr, ptr %a, align 8, !tbaa !9
  %call113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %88, ptr noundef @.str.10.456, ptr noundef %90, ptr noundef %91, ptr noundef %92) #15
  br label %if.end114

if.end114:                                        ; preds = %if.then111, %if.then107
  br label %if.end116

if.else115:                                       ; preds = %if.then99
  %93 = load ptr, ptr %x100, align 8, !tbaa !9
  %94 = load ptr, ptr %var, align 8, !tbaa !20
  store ptr %93, ptr %94, align 8, !tbaa !9
  br label %if.end116

if.end116:                                        ; preds = %if.else115, %if.end114
  call void @llvm.lifetime.end.p0(i64 8, ptr %x100) #15
  br label %if.end120

if.else117:                                       ; preds = %if.then96
  %95 = load ptr, ptr @stderr, align 8, !tbaa !26
  %96 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %arrayidx118 = getelementptr inbounds ptr, ptr %96, i64 0
  %97 = load ptr, ptr %arrayidx118, align 8, !tbaa !9
  %98 = load ptr, ptr %a, align 8, !tbaa !9
  %call119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %95, ptr noundef @.str.11.457, ptr noundef %97, ptr noundef %98) #15
  br label %if.end120

if.end120:                                        ; preds = %if.else117, %if.end116
  br label %if.end128

if.else121:                                       ; preds = %if.then94
  %99 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp122 = icmp eq i32 %99, 43
  br i1 %cmp122, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.else121
  %100 = load ptr, ptr %var, align 8, !tbaa !20
  store i32 1, ptr %100, align 4, !tbaa !5
  br label %if.end127

if.else125:                                       ; preds = %if.else121
  %101 = load ptr, ptr %var, align 8, !tbaa !20
  %102 = load i32, ptr %101, align 4, !tbaa !5
  %tobool126 = icmp ne i32 %102, 0
  %lnot = xor i1 %tobool126, true
  %lnot.ext = zext i1 %lnot to i32
  %103 = load ptr, ptr %var, align 8, !tbaa !20
  store i32 %lnot.ext, ptr %103, align 4, !tbaa !5
  br label %if.end127

if.end127:                                        ; preds = %if.else125, %if.then124
  br label %if.end128

if.end128:                                        ; preds = %if.end127, %if.end120
  %104 = load i32, ptr %count, align 4, !tbaa !5
  %inc129 = add nsw i32 %104, 1
  store i32 %inc129, ptr %count, align 4, !tbaa !5
  %105 = load i32, ptr %l, align 4, !tbaa !5
  %106 = load ptr, ptr %s, align 8, !tbaa !9
  %idx.ext = sext i32 %105 to i64
  %add.ptr130 = getelementptr inbounds i8, ptr %106, i64 %idx.ext
  store ptr %add.ptr130, ptr %s, align 8, !tbaa !9
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end131:                                        ; preds = %land.lhs.true91, %if.then89
  br label %if.end182

if.else132:                                       ; preds = %if.else86
  %107 = load ptr, ptr %s, align 8, !tbaa !9
  %108 = load i8, ptr %107, align 1, !tbaa !14
  %conv133 = sext i8 %108 to i32
  %109 = load ptr, ptr %a, align 8, !tbaa !9
  %110 = load i8, ptr %109, align 1, !tbaa !14
  %conv134 = sext i8 %110 to i32
  %cmp135 = icmp eq i32 %conv133, %conv134
  br i1 %cmp135, label %if.then137, label %if.end181

if.then137:                                       ; preds = %if.else132
  %111 = load ptr, ptr %fmt, align 8, !tbaa !9
  %tobool138 = icmp ne ptr %111, null
  br i1 %tobool138, label %if.then139, label %if.else165

if.then139:                                       ; preds = %if.then137
  %112 = load i32, ptr %i, align 4, !tbaa !5
  %113 = load i32, ptr %off, align 4, !tbaa !5
  %add140 = add nsw i32 %112, %113
  %114 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp141 = icmp slt i32 %add140, %114
  br i1 %cmp141, label %if.then143, label %if.else161

if.then143:                                       ; preds = %if.then139
  call void @llvm.lifetime.start.p0(i64 8, ptr %x144) #15
  %115 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %116 = load i32, ptr %i, align 4, !tbaa !5
  %117 = load i32, ptr %off, align 4, !tbaa !5
  %inc145 = add nsw i32 %117, 1
  store i32 %inc145, ptr %off, align 4, !tbaa !5
  %add146 = add nsw i32 %116, %117
  %idxprom147 = sext i32 %add146 to i64
  %arrayidx148 = getelementptr inbounds ptr, ptr %115, i64 %idxprom147
  %118 = load ptr, ptr %arrayidx148, align 8, !tbaa !9
  store ptr %118, ptr %x144, align 8, !tbaa !9
  %119 = load ptr, ptr %fmt, align 8, !tbaa !9
  %call149 = call ptr @strchr(ptr noundef %119, i32 noundef 37) #14
  %tobool150 = icmp ne ptr %call149, null
  br i1 %tobool150, label %if.then151, label %if.else159

if.then151:                                       ; preds = %if.then143
  %120 = load ptr, ptr %x144, align 8, !tbaa !9
  %121 = load ptr, ptr %fmt, align 8, !tbaa !9
  %122 = load ptr, ptr %var, align 8, !tbaa !20
  %call152 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %120, ptr noundef %121, ptr noundef %122) #15
  %cmp153 = icmp ne i32 %call152, 1
  br i1 %cmp153, label %if.then155, label %if.end158

if.then155:                                       ; preds = %if.then151
  %123 = load ptr, ptr @stderr, align 8, !tbaa !26
  %124 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %arrayidx156 = getelementptr inbounds ptr, ptr %124, i64 0
  %125 = load ptr, ptr %arrayidx156, align 8, !tbaa !9
  %126 = load ptr, ptr %x144, align 8, !tbaa !9
  %127 = load ptr, ptr %a, align 8, !tbaa !9
  %call157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %123, ptr noundef @.str.10.456, ptr noundef %125, ptr noundef %126, ptr noundef %127) #15
  br label %if.end158

if.end158:                                        ; preds = %if.then155, %if.then151
  br label %if.end160

if.else159:                                       ; preds = %if.then143
  %128 = load ptr, ptr %x144, align 8, !tbaa !9
  %129 = load ptr, ptr %var, align 8, !tbaa !20
  store ptr %128, ptr %129, align 8, !tbaa !9
  br label %if.end160

if.end160:                                        ; preds = %if.else159, %if.end158
  call void @llvm.lifetime.end.p0(i64 8, ptr %x144) #15
  br label %if.end164

if.else161:                                       ; preds = %if.then139
  %130 = load ptr, ptr @stderr, align 8, !tbaa !26
  %131 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %arrayidx162 = getelementptr inbounds ptr, ptr %131, i64 0
  %132 = load ptr, ptr %arrayidx162, align 8, !tbaa !9
  %133 = load ptr, ptr %a, align 8, !tbaa !9
  %call163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.11.457, ptr noundef %132, ptr noundef %133) #15
  br label %if.end164

if.end164:                                        ; preds = %if.else161, %if.end160
  br label %if.end178

if.else165:                                       ; preds = %if.then137
  %134 = load ptr, ptr %fmt, align 8, !tbaa !9
  %tobool166 = icmp ne ptr %134, null
  br i1 %tobool166, label %if.then170, label %lor.lhs.false167

lor.lhs.false167:                                 ; preds = %if.else165
  %135 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp168 = icmp eq i32 %135, 43
  br i1 %cmp168, label %if.then170, label %if.else173

if.then170:                                       ; preds = %lor.lhs.false167, %if.else165
  %136 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp171 = icmp eq i32 %136, 43
  %conv172 = zext i1 %cmp171 to i32
  %137 = load ptr, ptr %var, align 8, !tbaa !20
  store i32 %conv172, ptr %137, align 4, !tbaa !5
  br label %if.end177

if.else173:                                       ; preds = %lor.lhs.false167
  %138 = load ptr, ptr %var, align 8, !tbaa !20
  %139 = load i32, ptr %138, align 4, !tbaa !5
  %tobool174 = icmp ne i32 %139, 0
  %lnot175 = xor i1 %tobool174, true
  %lnot.ext176 = zext i1 %lnot175 to i32
  %140 = load ptr, ptr %var, align 8, !tbaa !20
  store i32 %lnot.ext176, ptr %140, align 4, !tbaa !5
  br label %if.end177

if.end177:                                        ; preds = %if.else173, %if.then170
  br label %if.end178

if.end178:                                        ; preds = %if.end177, %if.end164
  %141 = load i32, ptr %count, align 4, !tbaa !5
  %inc179 = add nsw i32 %141, 1
  store i32 %inc179, ptr %count, align 4, !tbaa !5
  %142 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr180 = getelementptr inbounds nuw i8, ptr %142, i32 1
  store ptr %incdec.ptr180, ptr %s, align 8, !tbaa !9
  store i32 7, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end181:                                        ; preds = %if.else132
  br label %if.end182

if.end182:                                        ; preds = %if.end181, %if.end131
  br label %if.end183

if.end183:                                        ; preds = %if.end182, %if.end85
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end183, %if.end178, %if.end128
  call void @llvm.lifetime.end.p0(i64 8, ptr %desc) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %var) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %fmt) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 7, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond9, !llvm.loop !45

while.end:                                        ; preds = %cleanup, %vaarg.end
  %arraydecay187 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay187)
  %143 = load i32, ptr %count, align 4, !tbaa !5
  %tobool188 = icmp ne i32 %143, 0
  br i1 %tobool188, label %if.end190, label %if.then189

if.then189:                                       ; preds = %while.end
  store i32 0, ptr %off, align 4, !tbaa !5
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup191

if.end190:                                        ; preds = %while.end
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup191

cleanup191:                                       ; preds = %if.end190, %if.then189
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15
  %cleanup.dest193 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest193, label %unreachable [
    i32 0, label %cleanup.cont194
    i32 5, label %while.end195
  ]

cleanup.cont194:                                  ; preds = %cleanup191
  br label %while.cond6, !llvm.loop !46

while.end195:                                     ; preds = %cleanup191, %while.cond6
  %144 = load i32, ptr %off, align 4, !tbaa !5
  %cmp196 = icmp ne i32 %144, 0
  br i1 %cmp196, label %if.then198, label %if.else207

if.then198:                                       ; preds = %while.end195
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15
  %145 = load i32, ptr %off, align 4, !tbaa !5
  %146 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %146, %145
  store i32 %sub, ptr %argc.addr, align 4, !tbaa !5
  %147 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %147, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then198
  %148 = load i32, ptr %j, align 4, !tbaa !5
  %149 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp199 = icmp sle i32 %148, %149
  br i1 %cmp199, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %150 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %151 = load i32, ptr %j, align 4, !tbaa !5
  %152 = load i32, ptr %off, align 4, !tbaa !5
  %add201 = add nsw i32 %151, %152
  %idxprom202 = sext i32 %add201 to i64
  %arrayidx203 = getelementptr inbounds ptr, ptr %150, i64 %idxprom202
  %153 = load ptr, ptr %arrayidx203, align 8, !tbaa !9
  %154 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %155 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom204 = sext i32 %155 to i64
  %arrayidx205 = getelementptr inbounds ptr, ptr %154, i64 %idxprom204
  store ptr %153, ptr %arrayidx205, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %156 = load i32, ptr %j, align 4, !tbaa !5
  %inc206 = add nsw i32 %156, 1
  store i32 %inc206, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15
  br label %if.end209

if.else207:                                       ; preds = %while.end195
  %157 = load i32, ptr %i, align 4, !tbaa !5
  %inc208 = add nsw i32 %157, 1
  store i32 %inc208, ptr %i, align 4, !tbaa !5
  br label %if.end209

if.end209:                                        ; preds = %if.else207, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %off) #15
  br label %if.end212

if.else210:                                       ; preds = %lor.lhs.false, %while.body
  %158 = load i32, ptr %i, align 4, !tbaa !5
  %inc211 = add nsw i32 %158, 1
  store i32 %inc211, ptr %i, align 4, !tbaa !5
  br label %if.end212

if.end212:                                        ; preds = %if.else210, %if.end209
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  br label %while.cond, !llvm.loop !48

while.end213:                                     ; preds = %while.cond
  %159 = load i32, ptr @help_only, align 4, !tbaa !5
  %tobool214 = icmp ne i32 %159, 0
  br i1 %tobool214, label %land.lhs.true215, label %if.end219

land.lhs.true215:                                 ; preds = %while.end213
  %160 = load i32, ptr %done_module, align 4, !tbaa !5
  %tobool216 = icmp ne i32 %160, 0
  br i1 %tobool216, label %if.then217, label %if.end219

if.then217:                                       ; preds = %land.lhs.true215
  %161 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %161, ptr noundef @.str.12.458) #15
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %land.lhs.true215, %while.end213
  %162 = load i32, ptr %argc.addr, align 4, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %done_module) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #15
  ret i32 %162

unreachable:                                      ; preds = %cleanup191, %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #11

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #11

; Function Attrs: nounwind uwtable
define dso_local i32 @holmes(i32 noundef %nelm, ptr noundef %elm, i32 noundef %nsamp, ptr noundef %samp_base) #0 {
entry:
  %nelm.addr = alloca i32, align 4
  %elm.addr = alloca ptr, align 8
  %nsamp.addr = alloca i32, align 4
  %samp_base.addr = alloca ptr, align 8
  %flt = alloca [19 x %struct.filter_t], align 16
  %pars = alloca %struct.klatt_frame_t, align 8
  %samp = alloca ptr, align 8
  %le = alloca ptr, align 8
  %i = alloca i32, align 4
  %tstress = alloca i32, align 4
  %ntstress = alloca i32, align 4
  %stress_s = alloca %struct.slope_t, align 4
  %stress_e = alloca %struct.slope_t, align 4
  %top = alloca float, align 4
  %j = alloca i32, align 4
  %ce = alloca ptr, align 8
  %dur = alloca i32, align 4
  %ne = alloca ptr, align 8
  %start = alloca [19 x %struct.slope_t], align 16
  %end = alloca [19 x %struct.slope_t], align 16
  %t37 = alloca i32, align 4
  %j79 = alloca i32, align 4
  %base = alloca float, align 4
  %tp = alloca [19 x float], align 16
  %j132 = alloca i32, align 4
  %j136 = alloca i32, align 4
  %e = alloca ptr, align 8
  %du = alloca i32, align 4
  %s = alloca i32, align 4
  %d = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j321 = alloca i32, align 4
  store i32 %nelm, ptr %nelm.addr, align 4, !tbaa !5
  store ptr %elm, ptr %elm.addr, align 8, !tbaa !9
  store i32 %nsamp, ptr %nsamp.addr, align 4, !tbaa !5
  store ptr %samp_base, ptr %samp_base.addr, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 228, ptr %flt) #15
  call void @llvm.lifetime.start.p0(i64 320, ptr %pars) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %samp) #15
  %0 = load ptr, ptr %samp_base.addr, align 8, !tbaa !21
  store ptr %0, ptr %samp, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %le) #15
  store ptr @Elements, ptr %le, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %tstress) #15
  store i32 0, ptr %tstress, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %ntstress) #15
  store i32 0, ptr %ntstress, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %stress_s) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %stress_e) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %top) #15
  %1 = load i64, ptr @def_pars, align 8, !tbaa !51
  %conv = sitofp i64 %1 to double
  %mul = fmul double 1.100000e+00, %conv
  %conv1 = fptrunc double %mul to float
  store float %conv1, ptr %top, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %pars, ptr align 8 @def_pars, i64 320, i1 false), !tbaa.struct !55
  %2 = load ptr, ptr %le, align 8, !tbaa !49
  %p = getelementptr inbounds nuw %struct.Elm_s, ptr %2, i32 0, i32 8
  %arrayidx = getelementptr inbounds [19 x %struct.interp_t], ptr %p, i64 0, i64 0
  %stdy = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx, i32 0, i32 0
  %3 = load float, ptr %stdy, align 8, !tbaa !56
  %conv2 = fptosi float %3 to i64
  %FNPhz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 16
  store i64 %conv2, ptr %FNPhz, align 8, !tbaa !58
  %B1hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 3
  store i64 60, ptr %B1hz, align 8, !tbaa !59
  %B1phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 25
  store i64 60, ptr %B1phz, align 8, !tbaa !60
  %B2hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 5
  store i64 90, ptr %B2hz, align 8, !tbaa !61
  %B2phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 27
  store i64 90, ptr %B2phz, align 8, !tbaa !62
  %B3hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 7
  store i64 150, ptr %B3hz, align 8, !tbaa !63
  %B3phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 29
  store i64 150, ptr %B3phz, align 8, !tbaa !64
  %4 = load i64, ptr getelementptr inbounds nuw (%struct.klatt_frame_t, ptr @def_pars, i32 0, i32 31), align 8, !tbaa !65
  %B4phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 31
  store i64 %4, ptr %B4phz, align 8, !tbaa !65
  call void @parwave_init(ptr noundef @klatt_global)
  %t = getelementptr inbounds nuw %struct.slope_t, ptr %stress_s, i32 0, i32 1
  store i32 40, ptr %t, align 4, !tbaa !66
  %t3 = getelementptr inbounds nuw %struct.slope_t, ptr %stress_e, i32 0, i32 1
  store i32 40, ptr %t3, align 4, !tbaa !66
  %v = getelementptr inbounds nuw %struct.slope_t, ptr %stress_e, i32 0, i32 0
  store float 0.000000e+00, ptr %v, align 4, !tbaa !68
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp = icmp slt i32 %5, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %le, align 8, !tbaa !49
  %p5 = getelementptr inbounds nuw %struct.Elm_s, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx6 = getelementptr inbounds [19 x %struct.interp_t], ptr %p5, i64 0, i64 %idxprom
  %stdy7 = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx6, i32 0, i32 0
  %8 = load float, ptr %stdy7, align 4, !tbaa !56
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [19 x %struct.filter_t], ptr %flt, i64 0, i64 %idxprom8
  %v10 = getelementptr inbounds nuw %struct.filter_t, ptr %arrayidx9, i32 0, i32 2
  store float %8, ptr %v10, align 4, !tbaa !69
  %10 = load double, ptr @frac, align 8, !tbaa !35
  %conv11 = fptrunc double %10 to float
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [19 x %struct.filter_t], ptr %flt, i64 0, i64 %idxprom12
  %a = getelementptr inbounds nuw %struct.filter_t, ptr %arrayidx13, i32 0, i32 0
  store float %conv11, ptr %a, align 4, !tbaa !71
  %12 = load double, ptr @frac, align 8, !tbaa !35
  %conv14 = fptrunc double %12 to float
  %sub = fsub float 1.000000e+00, %conv14
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [19 x %struct.filter_t], ptr %flt, i64 0, i64 %idxprom15
  %b = getelementptr inbounds nuw %struct.filter_t, ptr %arrayidx16, i32 0, i32 1
  store float %sub, ptr %b, align 4, !tbaa !72
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %14, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !73

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %if.end352, %for.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %16 = load i32, ptr %nelm.addr, align 4, !tbaa !5
  %cmp17 = icmp ult i32 %15, %16
  br i1 %cmp17, label %while.body, label %while.end353

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %ce) #15
  %17 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc19 = add i32 %18, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  %idxprom20 = zext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %17, i64 %idxprom20
  %19 = load i8, ptr %arrayidx21, align 1, !tbaa !14
  %idxprom22 = zext i8 %19 to i64
  %arrayidx23 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom22
  store ptr %arrayidx23, ptr %ce, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr %dur) #15
  %20 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add i32 %21, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  %idxprom25 = zext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %20, i64 %idxprom25
  %22 = load i8, ptr %arrayidx26, align 1, !tbaa !14
  %conv27 = zext i8 %22 to i32
  store i32 %conv27, ptr %dur, align 4, !tbaa !5
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add i32 %23, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  %24 = load i32, ptr %dur, align 4, !tbaa !5
  %cmp29 = icmp ugt i32 %24, 0
  br i1 %cmp29, label %if.then, label %if.end352

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %ne) #15
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %26 = load i32, ptr %nelm.addr, align 4, !tbaa !5
  %cmp31 = icmp ult i32 %25, %26
  br i1 %cmp31, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  %27 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = zext i32 %28 to i64
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %27, i64 %idxprom33
  %29 = load i8, ptr %arrayidx34, align 1, !tbaa !14
  %idxprom35 = zext i8 %29 to i64
  %arrayidx36 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom35
  br label %cond.end

cond.false:                                       ; preds = %if.then
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx36, %cond.true ], [ @Elements, %cond.false ]
  store ptr %cond, ptr %ne, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 152, ptr %start) #15
  call void @llvm.lifetime.start.p0(i64 152, ptr %end) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %t37) #15
  %30 = load ptr, ptr %ce, align 8, !tbaa !49
  %rk = getelementptr inbounds nuw %struct.Elm_s, ptr %30, i32 0, i32 1
  %31 = load i8, ptr %rk, align 8, !tbaa !74
  %conv38 = sext i8 %31 to i32
  %32 = load ptr, ptr %le, align 8, !tbaa !49
  %rk39 = getelementptr inbounds nuw %struct.Elm_s, ptr %32, i32 0, i32 1
  %33 = load i8, ptr %rk39, align 8, !tbaa !74
  %conv40 = sext i8 %33 to i32
  %cmp41 = icmp sgt i32 %conv38, %conv40
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %cond.end
  %34 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool = icmp ne ptr %34, null
  br i1 %tobool, label %if.then44, label %if.end

if.then44:                                        ; preds = %if.then43
  %35 = load ptr, ptr @par_file, align 8, !tbaa !26
  %36 = load ptr, ptr %le, align 8, !tbaa !49
  %name = getelementptr inbounds nuw %struct.Elm_s, ptr %36, i32 0, i32 0
  %37 = load ptr, ptr %name, align 8, !tbaa !76
  %38 = load ptr, ptr %ce, align 8, !tbaa !49
  %name45 = getelementptr inbounds nuw %struct.Elm_s, ptr %38, i32 0, i32 0
  %39 = load ptr, ptr %name45, align 8, !tbaa !76
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef @.str.1.460, ptr noundef %37, ptr noundef %39) #15
  br label %if.end

if.end:                                           ; preds = %if.then44, %if.then43
  %arraydecay = getelementptr inbounds [19 x %struct.slope_t], ptr %start, i64 0, i64 0
  %40 = load ptr, ptr %ce, align 8, !tbaa !49
  %41 = load ptr, ptr %le, align 8, !tbaa !49
  call void @set_trans(ptr noundef %arraydecay, ptr noundef %40, ptr noundef %41, i32 noundef 0, i32 noundef 115)
  br label %if.end53

if.else:                                          ; preds = %cond.end
  %42 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool46 = icmp ne ptr %42, null
  br i1 %tobool46, label %if.then47, label %if.end51

if.then47:                                        ; preds = %if.else
  %43 = load ptr, ptr @par_file, align 8, !tbaa !26
  %44 = load ptr, ptr %le, align 8, !tbaa !49
  %name48 = getelementptr inbounds nuw %struct.Elm_s, ptr %44, i32 0, i32 0
  %45 = load ptr, ptr %name48, align 8, !tbaa !76
  %46 = load ptr, ptr %ce, align 8, !tbaa !49
  %name49 = getelementptr inbounds nuw %struct.Elm_s, ptr %46, i32 0, i32 0
  %47 = load ptr, ptr %name49, align 8, !tbaa !76
  %call50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %43, ptr noundef @.str.2.461, ptr noundef %45, ptr noundef %47) #15
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.else
  %arraydecay52 = getelementptr inbounds [19 x %struct.slope_t], ptr %start, i64 0, i64 0
  %48 = load ptr, ptr %le, align 8, !tbaa !49
  %49 = load ptr, ptr %ce, align 8, !tbaa !49
  call void @set_trans(ptr noundef %arraydecay52, ptr noundef %48, ptr noundef %49, i32 noundef 1, i32 noundef 115)
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end
  %50 = load ptr, ptr %ne, align 8, !tbaa !49
  %rk54 = getelementptr inbounds nuw %struct.Elm_s, ptr %50, i32 0, i32 1
  %51 = load i8, ptr %rk54, align 8, !tbaa !74
  %conv55 = sext i8 %51 to i32
  %52 = load ptr, ptr %ce, align 8, !tbaa !49
  %rk56 = getelementptr inbounds nuw %struct.Elm_s, ptr %52, i32 0, i32 1
  %53 = load i8, ptr %rk56, align 8, !tbaa !74
  %conv57 = sext i8 %53 to i32
  %cmp58 = icmp sgt i32 %conv55, %conv57
  br i1 %cmp58, label %if.then60, label %if.else68

if.then60:                                        ; preds = %if.end53
  %54 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool61 = icmp ne ptr %54, null
  br i1 %tobool61, label %if.then62, label %if.end66

if.then62:                                        ; preds = %if.then60
  %55 = load ptr, ptr @par_file, align 8, !tbaa !26
  %56 = load ptr, ptr %ce, align 8, !tbaa !49
  %name63 = getelementptr inbounds nuw %struct.Elm_s, ptr %56, i32 0, i32 0
  %57 = load ptr, ptr %name63, align 8, !tbaa !76
  %58 = load ptr, ptr %ne, align 8, !tbaa !49
  %name64 = getelementptr inbounds nuw %struct.Elm_s, ptr %58, i32 0, i32 0
  %59 = load ptr, ptr %name64, align 8, !tbaa !76
  %call65 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef @.str.1.460, ptr noundef %57, ptr noundef %59) #15
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.then60
  %arraydecay67 = getelementptr inbounds [19 x %struct.slope_t], ptr %end, i64 0, i64 0
  %60 = load ptr, ptr %ne, align 8, !tbaa !49
  %61 = load ptr, ptr %ce, align 8, !tbaa !49
  call void @set_trans(ptr noundef %arraydecay67, ptr noundef %60, ptr noundef %61, i32 noundef 1, i32 noundef 101)
  br label %if.end76

if.else68:                                        ; preds = %if.end53
  %62 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool69 = icmp ne ptr %62, null
  br i1 %tobool69, label %if.then70, label %if.end74

if.then70:                                        ; preds = %if.else68
  %63 = load ptr, ptr @par_file, align 8, !tbaa !26
  %64 = load ptr, ptr %ce, align 8, !tbaa !49
  %name71 = getelementptr inbounds nuw %struct.Elm_s, ptr %64, i32 0, i32 0
  %65 = load ptr, ptr %name71, align 8, !tbaa !76
  %66 = load ptr, ptr %ne, align 8, !tbaa !49
  %name72 = getelementptr inbounds nuw %struct.Elm_s, ptr %66, i32 0, i32 0
  %67 = load ptr, ptr %name72, align 8, !tbaa !76
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %63, ptr noundef @.str.2.461, ptr noundef %65, ptr noundef %67) #15
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.else68
  %arraydecay75 = getelementptr inbounds [19 x %struct.slope_t], ptr %end, i64 0, i64 0
  %68 = load ptr, ptr %ce, align 8, !tbaa !49
  %69 = load ptr, ptr %ne, align 8, !tbaa !49
  call void @set_trans(ptr noundef %arraydecay75, ptr noundef %68, ptr noundef %69, i32 noundef 0, i32 noundef 101)
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %if.end66
  %70 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool77 = icmp ne ptr %70, null
  br i1 %tobool77, label %if.then78, label %if.end124

if.then78:                                        ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 4, ptr %j79) #15
  %71 = load ptr, ptr @par_file, align 8, !tbaa !26
  %72 = load ptr, ptr %ce, align 8, !tbaa !49
  %name80 = getelementptr inbounds nuw %struct.Elm_s, ptr %72, i32 0, i32 0
  %73 = load ptr, ptr %name80, align 8, !tbaa !76
  %call81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.3.462, ptr noundef %73) #15
  store i32 0, ptr %j79, align 4, !tbaa !5
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc91, %if.then78
  %74 = load i32, ptr %j79, align 4, !tbaa !5
  %cmp83 = icmp slt i32 %74, 19
  br i1 %cmp83, label %for.body85, label %for.end93

for.body85:                                       ; preds = %for.cond82
  %75 = load ptr, ptr @par_file, align 8, !tbaa !26
  %76 = load i32, ptr %j79, align 4, !tbaa !5
  %tobool86 = icmp ne i32 %76, 0
  %77 = zext i1 %tobool86 to i64
  %cond87 = select i1 %tobool86, i32 32, i32 35
  %78 = load i32, ptr %j79, align 4, !tbaa !5
  %idxprom88 = sext i32 %78 to i64
  %arrayidx89 = getelementptr inbounds [19 x ptr], ptr @Ep_name, i64 0, i64 %idxprom88
  %79 = load ptr, ptr %arrayidx89, align 8, !tbaa !9
  %call90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %75, ptr noundef @.str.4.463, i32 noundef %cond87, ptr noundef %79) #15
  br label %for.inc91

for.inc91:                                        ; preds = %for.body85
  %80 = load i32, ptr %j79, align 4, !tbaa !5
  %inc92 = add nsw i32 %80, 1
  store i32 %inc92, ptr %j79, align 4, !tbaa !5
  br label %for.cond82, !llvm.loop !77

for.end93:                                        ; preds = %for.cond82
  %81 = load ptr, ptr @par_file, align 8, !tbaa !26
  %call94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %81, ptr noundef @.str.5.464) #15
  store i32 0, ptr %j79, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc106, %for.end93
  %82 = load i32, ptr %j79, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %82, 19
  br i1 %cmp96, label %for.body98, label %for.end108

for.body98:                                       ; preds = %for.cond95
  %83 = load ptr, ptr @par_file, align 8, !tbaa !26
  %84 = load i32, ptr %j79, align 4, !tbaa !5
  %tobool99 = icmp ne i32 %84, 0
  %85 = zext i1 %tobool99 to i64
  %cond100 = select i1 %tobool99, i32 32, i32 35
  %86 = load i32, ptr %j79, align 4, !tbaa !5
  %idxprom101 = sext i32 %86 to i64
  %arrayidx102 = getelementptr inbounds [19 x %struct.slope_t], ptr %start, i64 0, i64 %idxprom101
  %v103 = getelementptr inbounds nuw %struct.slope_t, ptr %arrayidx102, i32 0, i32 0
  %87 = load float, ptr %v103, align 8, !tbaa !68
  %conv104 = fpext float %87 to double
  %call105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.6.465, i32 noundef %cond100, double noundef %conv104) #15
  br label %for.inc106

for.inc106:                                       ; preds = %for.body98
  %88 = load i32, ptr %j79, align 4, !tbaa !5
  %inc107 = add nsw i32 %88, 1
  store i32 %inc107, ptr %j79, align 4, !tbaa !5
  br label %for.cond95, !llvm.loop !78

for.end108:                                       ; preds = %for.cond95
  %89 = load ptr, ptr @par_file, align 8, !tbaa !26
  %call109 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str.5.464) #15
  store i32 0, ptr %j79, align 4, !tbaa !5
  br label %for.cond110

for.cond110:                                      ; preds = %for.inc120, %for.end108
  %90 = load i32, ptr %j79, align 4, !tbaa !5
  %cmp111 = icmp slt i32 %90, 19
  br i1 %cmp111, label %for.body113, label %for.end122

for.body113:                                      ; preds = %for.cond110
  %91 = load ptr, ptr @par_file, align 8, !tbaa !26
  %92 = load i32, ptr %j79, align 4, !tbaa !5
  %tobool114 = icmp ne i32 %92, 0
  %93 = zext i1 %tobool114 to i64
  %cond115 = select i1 %tobool114, i32 32, i32 35
  %94 = load i32, ptr %j79, align 4, !tbaa !5
  %idxprom116 = sext i32 %94 to i64
  %arrayidx117 = getelementptr inbounds [19 x %struct.slope_t], ptr %start, i64 0, i64 %idxprom116
  %t118 = getelementptr inbounds nuw %struct.slope_t, ptr %arrayidx117, i32 0, i32 1
  %95 = load i32, ptr %t118, align 4, !tbaa !66
  %call119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str.7.466, i32 noundef %cond115, i32 noundef %95) #15
  br label %for.inc120

for.inc120:                                       ; preds = %for.body113
  %96 = load i32, ptr %j79, align 4, !tbaa !5
  %inc121 = add nsw i32 %96, 1
  store i32 %inc121, ptr %j79, align 4, !tbaa !5
  br label %for.cond110, !llvm.loop !79

for.end122:                                       ; preds = %for.cond110
  %97 = load ptr, ptr @par_file, align 8, !tbaa !26
  %call123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.5.464) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %j79) #15
  br label %if.end124

if.end124:                                        ; preds = %for.end122, %if.end76
  store i32 0, ptr %t37, align 4, !tbaa !5
  br label %for.cond125

for.cond125:                                      ; preds = %for.inc315, %if.end124
  %98 = load i32, ptr %t37, align 4, !tbaa !5
  %99 = load i32, ptr %dur, align 4, !tbaa !5
  %cmp126 = icmp ult i32 %98, %99
  br i1 %cmp126, label %for.body128, label %for.end318

for.body128:                                      ; preds = %for.cond125
  call void @llvm.lifetime.start.p0(i64 4, ptr %base) #15
  %100 = load float, ptr %top, align 4, !tbaa !53
  %conv129 = fpext float %100 to double
  %mul130 = fmul double %conv129, 8.000000e-01
  %conv131 = fptrunc double %mul130 to float
  store float %conv131, ptr %base, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 76, ptr %tp) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %j132) #15
  %101 = load i32, ptr %tstress, align 4, !tbaa !5
  %102 = load i32, ptr %ntstress, align 4, !tbaa !5
  %cmp133 = icmp eq i32 %101, %102
  br i1 %cmp133, label %if.then135, label %if.end212

if.then135:                                       ; preds = %for.body128
  call void @llvm.lifetime.start.p0(i64 4, ptr %j136) #15
  %103 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %103, ptr %j136, align 4, !tbaa !5
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %stress_s, ptr align 4 %stress_e, i64 8, i1 false), !tbaa.struct !80
  store i32 0, ptr %tstress, align 4, !tbaa !5
  %104 = load i32, ptr %dur, align 4, !tbaa !5
  store i32 %104, ptr %ntstress, align 4, !tbaa !5
  br label %while.cond137

while.cond137:                                    ; preds = %cleanup.cont, %if.then135
  %105 = load i32, ptr %j136, align 4, !tbaa !5
  %106 = load i32, ptr %nelm.addr, align 4, !tbaa !5
  %cmp138 = icmp ule i32 %105, %106
  br i1 %cmp138, label %while.body140, label %while.end

while.body140:                                    ; preds = %while.cond137
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #15
  %107 = load i32, ptr %j136, align 4, !tbaa !5
  %108 = load i32, ptr %nelm.addr, align 4, !tbaa !5
  %cmp141 = icmp ult i32 %107, %108
  br i1 %cmp141, label %cond.true143, label %cond.false149

cond.true143:                                     ; preds = %while.body140
  %109 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %110 = load i32, ptr %j136, align 4, !tbaa !5
  %inc144 = add i32 %110, 1
  store i32 %inc144, ptr %j136, align 4, !tbaa !5
  %idxprom145 = zext i32 %110 to i64
  %arrayidx146 = getelementptr inbounds nuw i8, ptr %109, i64 %idxprom145
  %111 = load i8, ptr %arrayidx146, align 1, !tbaa !14
  %idxprom147 = zext i8 %111 to i64
  %arrayidx148 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom147
  br label %cond.end150

cond.false149:                                    ; preds = %while.body140
  br label %cond.end150

cond.end150:                                      ; preds = %cond.false149, %cond.true143
  %cond151 = phi ptr [ %arrayidx148, %cond.true143 ], [ @Elements, %cond.false149 ]
  store ptr %cond151, ptr %e, align 8, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 4, ptr %du) #15
  %112 = load i32, ptr %j136, align 4, !tbaa !5
  %113 = load i32, ptr %nelm.addr, align 4, !tbaa !5
  %cmp152 = icmp ult i32 %112, %113
  br i1 %cmp152, label %cond.true154, label %cond.false159

cond.true154:                                     ; preds = %cond.end150
  %114 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %115 = load i32, ptr %j136, align 4, !tbaa !5
  %inc155 = add i32 %115, 1
  store i32 %inc155, ptr %j136, align 4, !tbaa !5
  %idxprom156 = zext i32 %115 to i64
  %arrayidx157 = getelementptr inbounds nuw i8, ptr %114, i64 %idxprom156
  %116 = load i8, ptr %arrayidx157, align 1, !tbaa !14
  %conv158 = zext i8 %116 to i32
  br label %cond.end160

cond.false159:                                    ; preds = %cond.end150
  br label %cond.end160

cond.end160:                                      ; preds = %cond.false159, %cond.true154
  %cond161 = phi i32 [ %conv158, %cond.true154 ], [ 0, %cond.false159 ]
  store i32 %cond161, ptr %du, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #15
  %117 = load i32, ptr %j136, align 4, !tbaa !5
  %118 = load i32, ptr %nelm.addr, align 4, !tbaa !5
  %cmp162 = icmp ult i32 %117, %118
  br i1 %cmp162, label %cond.true164, label %cond.false169

cond.true164:                                     ; preds = %cond.end160
  %119 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %120 = load i32, ptr %j136, align 4, !tbaa !5
  %inc165 = add i32 %120, 1
  store i32 %inc165, ptr %j136, align 4, !tbaa !5
  %idxprom166 = zext i32 %120 to i64
  %arrayidx167 = getelementptr inbounds nuw i8, ptr %119, i64 %idxprom166
  %121 = load i8, ptr %arrayidx167, align 1, !tbaa !14
  %conv168 = zext i8 %121 to i32
  br label %cond.end170

cond.false169:                                    ; preds = %cond.end160
  br label %cond.end170

cond.end170:                                      ; preds = %cond.false169, %cond.true164
  %cond171 = phi i32 [ %conv168, %cond.true164 ], [ 3, %cond.false169 ]
  store i32 %cond171, ptr %s, align 4, !tbaa !5
  %122 = load i32, ptr %s, align 4, !tbaa !5
  %tobool172 = icmp ne i32 %122, 0
  br i1 %tobool172, label %if.then174, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %cond.end170
  %123 = load ptr, ptr %e, align 8, !tbaa !49
  %feat = getelementptr inbounds nuw %struct.Elm_s, ptr %123, i32 0, i32 7
  %124 = load i64, ptr %feat, align 8, !tbaa !81
  %and = and i64 %124, 268435456
  %tobool173 = icmp ne i64 %and, 0
  br i1 %tobool173, label %if.then174, label %if.end208

if.then174:                                       ; preds = %lor.lhs.false, %cond.end170
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #15
  store i32 0, ptr %d, align 4, !tbaa !5
  %125 = load i32, ptr %s, align 4, !tbaa !5
  %tobool175 = icmp ne i32 %125, 0
  br i1 %tobool175, label %if.then176, label %if.else179

if.then176:                                       ; preds = %if.then174
  %126 = load i32, ptr %s, align 4, !tbaa !5
  %conv177 = uitofp i32 %126 to float
  %div = fdiv float %conv177, 3.000000e+00
  %v178 = getelementptr inbounds nuw %struct.slope_t, ptr %stress_e, i32 0, i32 0
  store float %div, ptr %v178, align 4, !tbaa !68
  br label %if.end181

if.else179:                                       ; preds = %if.then174
  %v180 = getelementptr inbounds nuw %struct.slope_t, ptr %stress_e, i32 0, i32 0
  store float 0x3FB99999A0000000, ptr %v180, align 4, !tbaa !68
  br label %if.end181

if.end181:                                        ; preds = %if.else179, %if.then176
  br label %do.body

do.body:                                          ; preds = %land.end, %if.end181
  %127 = load i32, ptr %du, align 4, !tbaa !5
  %128 = load i32, ptr %d, align 4, !tbaa !5
  %add = add i32 %128, %127
  store i32 %add, ptr %d, align 4, !tbaa !5
  %129 = load i32, ptr %j136, align 4, !tbaa !5
  %130 = load i32, ptr %nelm.addr, align 4, !tbaa !5
  %cmp182 = icmp ult i32 %129, %130
  br i1 %cmp182, label %cond.true184, label %cond.false190

cond.true184:                                     ; preds = %do.body
  %131 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %132 = load i32, ptr %j136, align 4, !tbaa !5
  %inc185 = add i32 %132, 1
  store i32 %inc185, ptr %j136, align 4, !tbaa !5
  %idxprom186 = zext i32 %132 to i64
  %arrayidx187 = getelementptr inbounds nuw i8, ptr %131, i64 %idxprom186
  %133 = load i8, ptr %arrayidx187, align 1, !tbaa !14
  %idxprom188 = zext i8 %133 to i64
  %arrayidx189 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom188
  br label %cond.end191

cond.false190:                                    ; preds = %do.body
  br label %cond.end191

cond.end191:                                      ; preds = %cond.false190, %cond.true184
  %cond192 = phi ptr [ %arrayidx189, %cond.true184 ], [ @Elements, %cond.false190 ]
  store ptr %cond192, ptr %e, align 8, !tbaa !49
  %134 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %135 = load i32, ptr %j136, align 4, !tbaa !5
  %inc193 = add i32 %135, 1
  store i32 %inc193, ptr %j136, align 4, !tbaa !5
  %idxprom194 = zext i32 %135 to i64
  %arrayidx195 = getelementptr inbounds nuw i8, ptr %134, i64 %idxprom194
  %136 = load i8, ptr %arrayidx195, align 1, !tbaa !14
  %conv196 = zext i8 %136 to i32
  store i32 %conv196, ptr %du, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %cond.end191
  %137 = load ptr, ptr %e, align 8, !tbaa !49
  %feat197 = getelementptr inbounds nuw %struct.Elm_s, ptr %137, i32 0, i32 7
  %138 = load i64, ptr %feat197, align 8, !tbaa !81
  %and198 = and i64 %138, 268435456
  %tobool199 = icmp ne i64 %and198, 0
  br i1 %tobool199, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %do.cond
  %139 = load ptr, ptr %elm.addr, align 8, !tbaa !9
  %140 = load i32, ptr %j136, align 4, !tbaa !5
  %inc200 = add i32 %140, 1
  store i32 %inc200, ptr %j136, align 4, !tbaa !5
  %idxprom201 = zext i32 %140 to i64
  %arrayidx202 = getelementptr inbounds nuw i8, ptr %139, i64 %idxprom201
  %141 = load i8, ptr %arrayidx202, align 1, !tbaa !14
  %conv203 = zext i8 %141 to i32
  %142 = load i32, ptr %s, align 4, !tbaa !5
  %cmp204 = icmp eq i32 %conv203, %142
  br label %land.end

land.end:                                         ; preds = %land.rhs, %do.cond
  %143 = phi i1 [ false, %do.cond ], [ %cmp204, %land.rhs ]
  br i1 %143, label %do.body, label %do.end, !llvm.loop !82

do.end:                                           ; preds = %land.end
  %144 = load i32, ptr %d, align 4, !tbaa !5
  %div206 = udiv i32 %144, 2
  %145 = load i32, ptr %ntstress, align 4, !tbaa !5
  %add207 = add i32 %145, %div206
  store i32 %add207, ptr %ntstress, align 4, !tbaa !5
  store i32 20, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #15
  br label %cleanup

if.end208:                                        ; preds = %lor.lhs.false
  %146 = load i32, ptr %du, align 4, !tbaa !5
  %147 = load i32, ptr %ntstress, align 4, !tbaa !5
  %add209 = add i32 %147, %146
  store i32 %add209, ptr %ntstress, align 4, !tbaa !5
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end208, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %du) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 20, label %while.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond137, !llvm.loop !83

while.end:                                        ; preds = %cleanup, %while.cond137
  call void @llvm.lifetime.end.p0(i64 4, ptr %j136) #15
  br label %if.end212

if.end212:                                        ; preds = %while.end, %for.body128
  store i32 0, ptr %j132, align 4, !tbaa !5
  br label %for.cond213

for.cond213:                                      ; preds = %for.inc233, %if.end212
  %148 = load i32, ptr %j132, align 4, !tbaa !5
  %cmp214 = icmp slt i32 %148, 19
  br i1 %cmp214, label %for.body216, label %for.end235

for.body216:                                      ; preds = %for.cond213
  %arraydecay217 = getelementptr inbounds [19 x %struct.filter_t], ptr %flt, i64 0, i64 0
  %149 = load i32, ptr %j132, align 4, !tbaa !5
  %idx.ext = sext i32 %149 to i64
  %add.ptr = getelementptr inbounds %struct.filter_t, ptr %arraydecay217, i64 %idx.ext
  %150 = load ptr, ptr %ce, align 8, !tbaa !49
  %name218 = getelementptr inbounds nuw %struct.Elm_s, ptr %150, i32 0, i32 0
  %151 = load ptr, ptr %name218, align 8, !tbaa !76
  %152 = load i32, ptr %j132, align 4, !tbaa !5
  %idxprom219 = sext i32 %152 to i64
  %arrayidx220 = getelementptr inbounds [19 x ptr], ptr @Ep_name, i64 0, i64 %idxprom219
  %153 = load ptr, ptr %arrayidx220, align 8, !tbaa !9
  %154 = load i32, ptr %j132, align 4, !tbaa !5
  %idxprom221 = sext i32 %154 to i64
  %arrayidx222 = getelementptr inbounds [19 x %struct.slope_t], ptr %start, i64 0, i64 %idxprom221
  %155 = load i32, ptr %j132, align 4, !tbaa !5
  %idxprom223 = sext i32 %155 to i64
  %arrayidx224 = getelementptr inbounds [19 x %struct.slope_t], ptr %end, i64 0, i64 %idxprom223
  %156 = load ptr, ptr %ce, align 8, !tbaa !49
  %p225 = getelementptr inbounds nuw %struct.Elm_s, ptr %156, i32 0, i32 8
  %157 = load i32, ptr %j132, align 4, !tbaa !5
  %idxprom226 = sext i32 %157 to i64
  %arrayidx227 = getelementptr inbounds [19 x %struct.interp_t], ptr %p225, i64 0, i64 %idxprom226
  %stdy228 = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx227, i32 0, i32 0
  %158 = load float, ptr %stdy228, align 4, !tbaa !56
  %159 = load i32, ptr %t37, align 4, !tbaa !5
  %160 = load i32, ptr %dur, align 4, !tbaa !5
  %call229 = call float @interpolate(ptr noundef %151, ptr noundef %153, ptr noundef %arrayidx222, ptr noundef %arrayidx224, float noundef %158, i32 noundef %159, i32 noundef %160)
  %call230 = call float @filter(ptr noundef %add.ptr, float noundef %call229)
  %161 = load i32, ptr %j132, align 4, !tbaa !5
  %idxprom231 = sext i32 %161 to i64
  %arrayidx232 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 %idxprom231
  store float %call230, ptr %arrayidx232, align 4, !tbaa !53
  br label %for.inc233

for.inc233:                                       ; preds = %for.body216
  %162 = load i32, ptr %j132, align 4, !tbaa !5
  %inc234 = add nsw i32 %162, 1
  store i32 %inc234, ptr %j132, align 4, !tbaa !5
  br label %for.cond213, !llvm.loop !84

for.end235:                                       ; preds = %for.cond213
  %163 = load float, ptr %base, align 4, !tbaa !53
  %164 = load float, ptr %top, align 4, !tbaa !53
  %165 = load float, ptr %base, align 4, !tbaa !53
  %sub236 = fsub float %164, %165
  %166 = load i32, ptr %tstress, align 4, !tbaa !5
  %167 = load i32, ptr %ntstress, align 4, !tbaa !5
  %call237 = call float @interpolate(ptr noundef @.str.8.467, ptr noundef @.str.9.468, ptr noundef %stress_s, ptr noundef %stress_e, float noundef 0.000000e+00, i32 noundef %166, i32 noundef %167)
  %168 = call float @llvm.fmuladd.f32(float %sub236, float %call237, float %163)
  %conv239 = fptosi float %168 to i64
  %F0hz10 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 0
  store i64 %conv239, ptr %F0hz10, align 8, !tbaa !51
  %arrayidx240 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 15
  %169 = load float, ptr %arrayidx240, align 4, !tbaa !53
  %conv241 = fptosi float %169 to i64
  %AVpdb = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 38
  store i64 %conv241, ptr %AVpdb, align 8, !tbaa !85
  %AVdb = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 1
  store i64 %conv241, ptr %AVdb, align 8, !tbaa !86
  %arrayidx242 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 18
  %170 = load float, ptr %arrayidx242, align 8, !tbaa !53
  %conv243 = fptosi float %170 to i64
  %AF = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 22
  store i64 %conv243, ptr %AF, align 8, !tbaa !87
  %arrayidx244 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 0
  %171 = load float, ptr %arrayidx244, align 16, !tbaa !53
  %conv245 = fptosi float %171 to i64
  %FNZhz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 14
  store i64 %conv245, ptr %FNZhz, align 8, !tbaa !88
  %arrayidx246 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 17
  %172 = load float, ptr %arrayidx246, align 4, !tbaa !53
  %conv247 = fptosi float %172 to i64
  %ASP = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 18
  store i64 %conv247, ptr %ASP, align 8, !tbaa !89
  %arrayidx248 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 16
  %173 = load float, ptr %arrayidx248, align 16, !tbaa !53
  %conv249 = fptosi float %173 to i64
  %Aturb = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 20
  store i64 %conv249, ptr %Aturb, align 8, !tbaa !90
  %arrayidx250 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 4
  %174 = load float, ptr %arrayidx250, align 16, !tbaa !53
  %conv251 = fptosi float %174 to i64
  %B1hz252 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 3
  store i64 %conv251, ptr %B1hz252, align 8, !tbaa !59
  %B1phz253 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 25
  store i64 %conv251, ptr %B1phz253, align 8, !tbaa !60
  %arrayidx254 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 5
  %175 = load float, ptr %arrayidx254, align 4, !tbaa !53
  %conv255 = fptosi float %175 to i64
  %B2hz256 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 5
  store i64 %conv255, ptr %B2hz256, align 8, !tbaa !61
  %B2phz257 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 27
  store i64 %conv255, ptr %B2phz257, align 8, !tbaa !62
  %arrayidx258 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 6
  %176 = load float, ptr %arrayidx258, align 8, !tbaa !53
  %conv259 = fptosi float %176 to i64
  %B3hz260 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 7
  store i64 %conv259, ptr %B3hz260, align 8, !tbaa !63
  %B3phz261 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 29
  store i64 %conv259, ptr %B3phz261, align 8, !tbaa !64
  %arrayidx262 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 1
  %177 = load float, ptr %arrayidx262, align 4, !tbaa !53
  %conv263 = fptosi float %177 to i64
  %F1hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 2
  store i64 %conv263, ptr %F1hz, align 8, !tbaa !91
  %arrayidx264 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 2
  %178 = load float, ptr %arrayidx264, align 8, !tbaa !53
  %conv265 = fptosi float %178 to i64
  %F2hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 4
  store i64 %conv265, ptr %F2hz, align 8, !tbaa !92
  %arrayidx266 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 3
  %179 = load float, ptr %arrayidx266, align 4, !tbaa !53
  %conv267 = fptosi float %179 to i64
  %F3hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 6
  store i64 %conv267, ptr %F3hz, align 8, !tbaa !93
  %arrayidx268 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 14
  %180 = load float, ptr %arrayidx268, align 8, !tbaa !53
  %add269 = fadd float 1.400000e+01, %180
  %conv270 = fptosi float %add269 to i64
  %AB = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 37
  store i64 %conv270, ptr %AB, align 8, !tbaa !94
  %arrayidx271 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 12
  %181 = load float, ptr %arrayidx271, align 16, !tbaa !53
  %add272 = fadd float 1.400000e+01, %181
  %conv273 = fptosi float %add272 to i64
  %A5 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 32
  store i64 %conv273, ptr %A5, align 8, !tbaa !95
  %arrayidx274 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 13
  %182 = load float, ptr %arrayidx274, align 4, !tbaa !53
  %add275 = fadd float 1.400000e+01, %182
  %conv276 = fptosi float %add275 to i64
  %A6 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 34
  store i64 %conv276, ptr %A6, align 8, !tbaa !96
  %arrayidx277 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 8
  %183 = load float, ptr %arrayidx277, align 16, !tbaa !53
  %add278 = fadd float 1.400000e+01, %183
  %conv279 = fptosi float %add278 to i64
  %A1 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 24
  store i64 %conv279, ptr %A1, align 8, !tbaa !97
  %arrayidx280 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 9
  %184 = load float, ptr %arrayidx280, align 4, !tbaa !53
  %add281 = fadd float 1.400000e+01, %184
  %conv282 = fptosi float %add281 to i64
  %A2 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 26
  store i64 %conv282, ptr %A2, align 8, !tbaa !98
  %arrayidx283 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 10
  %185 = load float, ptr %arrayidx283, align 8, !tbaa !53
  %add284 = fadd float 1.400000e+01, %185
  %conv285 = fptosi float %add284 to i64
  %A3 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 28
  store i64 %conv285, ptr %A3, align 8, !tbaa !99
  %arrayidx286 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 11
  %186 = load float, ptr %arrayidx286, align 4, !tbaa !53
  %add287 = fadd float 1.400000e+01, %186
  %conv288 = fptosi float %add287 to i64
  %A4 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 30
  store i64 %conv288, ptr %A4, align 8, !tbaa !100
  %187 = load ptr, ptr %samp, align 8, !tbaa !21
  call void @parwave(ptr noundef @klatt_global, ptr noundef %pars, ptr noundef %187)
  %188 = load i64, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 7), align 8, !tbaa !44
  %189 = load ptr, ptr %samp, align 8, !tbaa !21
  %add.ptr289 = getelementptr inbounds i16, ptr %189, i64 %188
  store ptr %add.ptr289, ptr %samp, align 8, !tbaa !21
  %190 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool290 = icmp ne ptr %190, null
  br i1 %tobool290, label %if.then291, label %if.end304

if.then291:                                       ; preds = %for.end235
  store i32 0, ptr %j132, align 4, !tbaa !5
  br label %for.cond292

for.cond292:                                      ; preds = %for.inc300, %if.then291
  %191 = load i32, ptr %j132, align 4, !tbaa !5
  %cmp293 = icmp slt i32 %191, 19
  br i1 %cmp293, label %for.body295, label %for.end302

for.body295:                                      ; preds = %for.cond292
  %192 = load ptr, ptr @par_file, align 8, !tbaa !26
  %193 = load i32, ptr %j132, align 4, !tbaa !5
  %idxprom296 = sext i32 %193 to i64
  %arrayidx297 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 %idxprom296
  %194 = load float, ptr %arrayidx297, align 4, !tbaa !53
  %conv298 = fpext float %194 to double
  %call299 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %192, ptr noundef @.str.10.469, double noundef %conv298) #15
  br label %for.inc300

for.inc300:                                       ; preds = %for.body295
  %195 = load i32, ptr %j132, align 4, !tbaa !5
  %inc301 = add nsw i32 %195, 1
  store i32 %inc301, ptr %j132, align 4, !tbaa !5
  br label %for.cond292, !llvm.loop !101

for.end302:                                       ; preds = %for.cond292
  %196 = load ptr, ptr @par_file, align 8, !tbaa !26
  %call303 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %196, ptr noundef @.str.5.464) #15
  br label %if.end304

if.end304:                                        ; preds = %for.end302, %for.end235
  %197 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %tobool305 = icmp ne ptr %197, null
  br i1 %tobool305, label %if.then306, label %if.end311

if.then306:                                       ; preds = %if.end304
  %F0hz10307 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %pars, i32 0, i32 0
  %198 = load i64, ptr %F0hz10307, align 8, !tbaa !51
  %conv308 = sitofp i64 %198 to double
  %mul309 = fmul double %conv308, 1.000000e-01
  %arraydecay310 = getelementptr inbounds [19 x float], ptr %tp, i64 0, i64 0
  call void @jsru_save(double noundef %mul309, ptr noundef %arraydecay310)
  br label %if.end311

if.end311:                                        ; preds = %if.then306, %if.end304
  %199 = load float, ptr %top, align 4, !tbaa !53
  %conv312 = fpext float %199 to double
  %sub313 = fsub double %conv312, 5.000000e-01
  %conv314 = fptrunc double %sub313 to float
  store float %conv314, ptr %top, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr %j132) #15
  call void @llvm.lifetime.end.p0(i64 76, ptr %tp) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %base) #15
  br label %for.inc315

for.inc315:                                       ; preds = %if.end311
  %200 = load i32, ptr %t37, align 4, !tbaa !5
  %inc316 = add i32 %200, 1
  store i32 %inc316, ptr %t37, align 4, !tbaa !5
  %201 = load i32, ptr %tstress, align 4, !tbaa !5
  %inc317 = add i32 %201, 1
  store i32 %inc317, ptr %tstress, align 4, !tbaa !5
  br label %for.cond125, !llvm.loop !102

for.end318:                                       ; preds = %for.cond125
  %202 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool319 = icmp ne ptr %202, null
  br i1 %tobool319, label %if.then320, label %if.end351

if.then320:                                       ; preds = %for.end318
  call void @llvm.lifetime.start.p0(i64 4, ptr %j321) #15
  store i32 0, ptr %j321, align 4, !tbaa !5
  br label %for.cond322

for.cond322:                                      ; preds = %for.inc333, %if.then320
  %203 = load i32, ptr %j321, align 4, !tbaa !5
  %cmp323 = icmp slt i32 %203, 19
  br i1 %cmp323, label %for.body325, label %for.end335

for.body325:                                      ; preds = %for.cond322
  %204 = load ptr, ptr @par_file, align 8, !tbaa !26
  %205 = load i32, ptr %j321, align 4, !tbaa !5
  %tobool326 = icmp ne i32 %205, 0
  %206 = zext i1 %tobool326 to i64
  %cond327 = select i1 %tobool326, i32 32, i32 35
  %207 = load i32, ptr %j321, align 4, !tbaa !5
  %idxprom328 = sext i32 %207 to i64
  %arrayidx329 = getelementptr inbounds [19 x %struct.slope_t], ptr %end, i64 0, i64 %idxprom328
  %v330 = getelementptr inbounds nuw %struct.slope_t, ptr %arrayidx329, i32 0, i32 0
  %208 = load float, ptr %v330, align 8, !tbaa !68
  %conv331 = fpext float %208 to double
  %call332 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %204, ptr noundef @.str.6.465, i32 noundef %cond327, double noundef %conv331) #15
  br label %for.inc333

for.inc333:                                       ; preds = %for.body325
  %209 = load i32, ptr %j321, align 4, !tbaa !5
  %inc334 = add nsw i32 %209, 1
  store i32 %inc334, ptr %j321, align 4, !tbaa !5
  br label %for.cond322, !llvm.loop !103

for.end335:                                       ; preds = %for.cond322
  %210 = load ptr, ptr @par_file, align 8, !tbaa !26
  %call336 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %210, ptr noundef @.str.5.464) #15
  store i32 0, ptr %j321, align 4, !tbaa !5
  br label %for.cond337

for.cond337:                                      ; preds = %for.inc347, %for.end335
  %211 = load i32, ptr %j321, align 4, !tbaa !5
  %cmp338 = icmp slt i32 %211, 19
  br i1 %cmp338, label %for.body340, label %for.end349

for.body340:                                      ; preds = %for.cond337
  %212 = load ptr, ptr @par_file, align 8, !tbaa !26
  %213 = load i32, ptr %j321, align 4, !tbaa !5
  %tobool341 = icmp ne i32 %213, 0
  %214 = zext i1 %tobool341 to i64
  %cond342 = select i1 %tobool341, i32 32, i32 35
  %215 = load i32, ptr %j321, align 4, !tbaa !5
  %idxprom343 = sext i32 %215 to i64
  %arrayidx344 = getelementptr inbounds [19 x %struct.slope_t], ptr %end, i64 0, i64 %idxprom343
  %t345 = getelementptr inbounds nuw %struct.slope_t, ptr %arrayidx344, i32 0, i32 1
  %216 = load i32, ptr %t345, align 4, !tbaa !66
  %call346 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %212, ptr noundef @.str.7.466, i32 noundef %cond342, i32 noundef %216) #15
  br label %for.inc347

for.inc347:                                       ; preds = %for.body340
  %217 = load i32, ptr %j321, align 4, !tbaa !5
  %inc348 = add nsw i32 %217, 1
  store i32 %inc348, ptr %j321, align 4, !tbaa !5
  br label %for.cond337, !llvm.loop !104

for.end349:                                       ; preds = %for.cond337
  %218 = load ptr, ptr @par_file, align 8, !tbaa !26
  %call350 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef @.str.5.464) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %j321) #15
  br label %if.end351

if.end351:                                        ; preds = %for.end349, %for.end318
  call void @llvm.lifetime.end.p0(i64 4, ptr %t37) #15
  call void @llvm.lifetime.end.p0(i64 152, ptr %end) #15
  call void @llvm.lifetime.end.p0(i64 152, ptr %start) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %ne) #15
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %while.body
  %219 = load ptr, ptr %ce, align 8, !tbaa !49
  store ptr %219, ptr %le, align 8, !tbaa !49
  call void @llvm.lifetime.end.p0(i64 4, ptr %dur) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %ce) #15
  br label %while.cond, !llvm.loop !105

while.end353:                                     ; preds = %while.cond
  %220 = load ptr, ptr %samp, align 8, !tbaa !21
  %221 = load ptr, ptr %samp_base.addr, align 8, !tbaa !21
  %sub.ptr.lhs.cast = ptrtoint ptr %220 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %221 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 2
  %conv354 = trunc i64 %sub.ptr.div to i32
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %top) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %stress_e) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %stress_s) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %ntstress) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %tstress) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %le) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %samp) #15
  call void @llvm.lifetime.end.p0(i64 320, ptr %pars) #15
  call void @llvm.lifetime.end.p0(i64 228, ptr %flt) #15
  ret i32 %conv354

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind uwtable
define internal void @set_trans(ptr noundef %t, ptr noundef %a, ptr noundef %b, i32 noundef %ext, i32 noundef %e) #0 {
entry:
  %t.addr = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %ext.addr = alloca i32, align 4
  %e.addr = alloca i32, align 4
  %i = alloca i32, align 4
  store ptr %t, ptr %t.addr, align 8, !tbaa !20
  store ptr %a, ptr %a.addr, align 8, !tbaa !49
  store ptr %b, ptr %b.addr, align 8, !tbaa !49
  store i32 %ext, ptr %ext.addr, align 4, !tbaa !5
  store i32 %e, ptr %e.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 19
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %ext.addr, align 4, !tbaa !5
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %2 = load ptr, ptr %a.addr, align 8, !tbaa !49
  %p = getelementptr inbounds nuw %struct.Elm_s, ptr %2, i32 0, i32 8
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [19 x %struct.interp_t], ptr %p, i64 0, i64 %idxprom
  %ed = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx, i32 0, i32 3
  %4 = load i8, ptr %ed, align 1, !tbaa !106
  %conv = sext i8 %4 to i32
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !49
  %p1 = getelementptr inbounds nuw %struct.Elm_s, ptr %5, i32 0, i32 8
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds [19 x %struct.interp_t], ptr %p1, i64 0, i64 %idxprom2
  %id = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx3, i32 0, i32 4
  %7 = load i8, ptr %id, align 2, !tbaa !107
  %conv4 = sext i8 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv4, %cond.false ]
  %8 = load i32, ptr @speed, align 4, !tbaa !5
  %mul = mul nsw i32 %cond, %8
  %9 = load ptr, ptr %t.addr, align 8, !tbaa !20
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %10 to i64
  %arrayidx6 = getelementptr inbounds %struct.slope_t, ptr %9, i64 %idxprom5
  %t7 = getelementptr inbounds nuw %struct.slope_t, ptr %arrayidx6, i32 0, i32 1
  store i32 %mul, ptr %t7, align 4, !tbaa !66
  %11 = load ptr, ptr %t.addr, align 8, !tbaa !20
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %12 to i64
  %arrayidx9 = getelementptr inbounds %struct.slope_t, ptr %11, i64 %idxprom8
  %t10 = getelementptr inbounds nuw %struct.slope_t, ptr %arrayidx9, i32 0, i32 1
  %13 = load i32, ptr %t10, align 4, !tbaa !66
  %tobool11 = icmp ne i32 %13, 0
  br i1 %tobool11, label %if.then, label %if.else

if.then:                                          ; preds = %cond.end
  %14 = load ptr, ptr %a.addr, align 8, !tbaa !49
  %p12 = getelementptr inbounds nuw %struct.Elm_s, ptr %14, i32 0, i32 8
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [19 x %struct.interp_t], ptr %p12, i64 0, i64 %idxprom13
  %fixd = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx14, i32 0, i32 1
  %16 = load float, ptr %fixd, align 4, !tbaa !108
  %17 = load ptr, ptr %a.addr, align 8, !tbaa !49
  %p15 = getelementptr inbounds nuw %struct.Elm_s, ptr %17, i32 0, i32 8
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %18 to i64
  %arrayidx17 = getelementptr inbounds [19 x %struct.interp_t], ptr %p15, i64 0, i64 %idxprom16
  %prop = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx17, i32 0, i32 2
  %19 = load i8, ptr %prop, align 4, !tbaa !109
  %conv18 = sext i8 %19 to i32
  %conv19 = sitofp i32 %conv18 to float
  %20 = load ptr, ptr %b.addr, align 8, !tbaa !49
  %p20 = getelementptr inbounds nuw %struct.Elm_s, ptr %20, i32 0, i32 8
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %21 to i64
  %arrayidx22 = getelementptr inbounds [19 x %struct.interp_t], ptr %p20, i64 0, i64 %idxprom21
  %stdy = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx22, i32 0, i32 0
  %22 = load float, ptr %stdy, align 4, !tbaa !56
  %mul23 = fmul float %conv19, %22
  %23 = call float @llvm.fmuladd.f32(float %mul23, float 0x3F847AE140000000, float %16)
  %24 = load ptr, ptr %t.addr, align 8, !tbaa !20
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %25 to i64
  %arrayidx26 = getelementptr inbounds %struct.slope_t, ptr %24, i64 %idxprom25
  %v = getelementptr inbounds nuw %struct.slope_t, ptr %arrayidx26, i32 0, i32 0
  store float %23, ptr %v, align 4, !tbaa !68
  br label %if.end

if.else:                                          ; preds = %cond.end
  %26 = load ptr, ptr %b.addr, align 8, !tbaa !49
  %p27 = getelementptr inbounds nuw %struct.Elm_s, ptr %26, i32 0, i32 8
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %27 to i64
  %arrayidx29 = getelementptr inbounds [19 x %struct.interp_t], ptr %p27, i64 0, i64 %idxprom28
  %stdy30 = getelementptr inbounds nuw %struct.interp_t, ptr %arrayidx29, i32 0, i32 0
  %28 = load float, ptr %stdy30, align 4, !tbaa !56
  %29 = load ptr, ptr %t.addr, align 8, !tbaa !20
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom31 = sext i32 %30 to i64
  %arrayidx32 = getelementptr inbounds %struct.slope_t, ptr %29, i64 %idxprom31
  %v33 = getelementptr inbounds nuw %struct.slope_t, ptr %arrayidx32, i32 0, i32 0
  store float %28, ptr %v33, align 4, !tbaa !68
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %31, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !110

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @interpolate(ptr noundef %w, ptr noundef %p, ptr noundef %s, ptr noundef %e, float noundef %mid, i32 noundef %t, i32 noundef %d) #0 {
entry:
  %retval = alloca float, align 4
  %w.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %e.addr = alloca ptr, align 8
  %mid.addr = alloca float, align 4
  %t.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %steady = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %f = alloca float, align 4
  %sp = alloca float, align 4
  %ep = alloca float, align 4
  store ptr %w, ptr %w.addr, align 8, !tbaa !9
  store ptr %p, ptr %p.addr, align 8, !tbaa !9
  store ptr %s, ptr %s.addr, align 8, !tbaa !20
  store ptr %e, ptr %e.addr, align 8, !tbaa !20
  store float %mid, ptr %mid.addr, align 4, !tbaa !53
  store i32 %t, ptr %t.addr, align 4, !tbaa !5
  store i32 %d, ptr %d.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %steady) #15
  %0 = load i32, ptr %d.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !20
  %t1 = getelementptr inbounds nuw %struct.slope_t, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %t1, align 4, !tbaa !66
  %3 = load ptr, ptr %e.addr, align 8, !tbaa !20
  %t2 = getelementptr inbounds nuw %struct.slope_t, ptr %3, i32 0, i32 1
  %4 = load i32, ptr %t2, align 4, !tbaa !66
  %add = add nsw i32 %2, %4
  %sub = sub nsw i32 %0, %add
  %conv = sitofp i32 %sub to float
  store float %conv, ptr %steady, align 4, !tbaa !53
  %5 = load float, ptr %steady, align 4, !tbaa !53
  %cmp = fcmp oge float %5, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  %6 = load i32, ptr %t.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %s.addr, align 8, !tbaa !20
  %t4 = getelementptr inbounds nuw %struct.slope_t, ptr %7, i32 0, i32 1
  %8 = load i32, ptr %t4, align 4, !tbaa !66
  %cmp5 = icmp slt i32 %6, %8
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %9 = load ptr, ptr %s.addr, align 8, !tbaa !20
  %v = getelementptr inbounds nuw %struct.slope_t, ptr %9, i32 0, i32 0
  %10 = load float, ptr %v, align 4, !tbaa !68
  %11 = load float, ptr %mid.addr, align 4, !tbaa !53
  %12 = load i32, ptr %t.addr, align 4, !tbaa !5
  %13 = load ptr, ptr %s.addr, align 8, !tbaa !20
  %t8 = getelementptr inbounds nuw %struct.slope_t, ptr %13, i32 0, i32 1
  %14 = load i32, ptr %t8, align 4, !tbaa !66
  %call = call float @linear(float noundef %10, float noundef %11, i32 noundef %12, i32 noundef %14)
  store float %call, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  %15 = load ptr, ptr %s.addr, align 8, !tbaa !20
  %t9 = getelementptr inbounds nuw %struct.slope_t, ptr %15, i32 0, i32 1
  %16 = load i32, ptr %t9, align 4, !tbaa !66
  %17 = load i32, ptr %t.addr, align 4, !tbaa !5
  %sub10 = sub nsw i32 %17, %16
  store i32 %sub10, ptr %t.addr, align 4, !tbaa !5
  %18 = load i32, ptr %t.addr, align 4, !tbaa !5
  %conv11 = sitofp i32 %18 to float
  %19 = load float, ptr %steady, align 4, !tbaa !53
  %cmp12 = fcmp ole float %conv11, %19
  br i1 %cmp12, label %if.then14, label %if.else15

if.then14:                                        ; preds = %if.else
  %20 = load float, ptr %mid.addr, align 4, !tbaa !53
  store float %20, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else15:                                        ; preds = %if.else
  %21 = load float, ptr %mid.addr, align 4, !tbaa !53
  %22 = load ptr, ptr %e.addr, align 8, !tbaa !20
  %v16 = getelementptr inbounds nuw %struct.slope_t, ptr %22, i32 0, i32 0
  %23 = load float, ptr %v16, align 4, !tbaa !68
  %24 = load i32, ptr %t.addr, align 4, !tbaa !5
  %conv17 = sitofp i32 %24 to float
  %25 = load float, ptr %steady, align 4, !tbaa !53
  %sub18 = fsub float %conv17, %25
  %conv19 = fptosi float %sub18 to i32
  %26 = load ptr, ptr %e.addr, align 8, !tbaa !20
  %t20 = getelementptr inbounds nuw %struct.slope_t, ptr %26, i32 0, i32 1
  %27 = load i32, ptr %t20, align 4, !tbaa !66
  %call21 = call float @linear(float noundef %21, float noundef %23, i32 noundef %conv19, i32 noundef %27)
  store float %call21, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else22:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #15
  %28 = load i32, ptr %t.addr, align 4, !tbaa !5
  %conv23 = sitofp i32 %28 to float
  %29 = load i32, ptr %d.addr, align 4, !tbaa !5
  %conv24 = sitofp i32 %29 to float
  %div = fdiv float %conv23, %conv24
  %sub25 = fsub float 1.000000e+00, %div
  store float %sub25, ptr %f, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %sp) #15
  %30 = load ptr, ptr %s.addr, align 8, !tbaa !20
  %v26 = getelementptr inbounds nuw %struct.slope_t, ptr %30, i32 0, i32 0
  %31 = load float, ptr %v26, align 4, !tbaa !68
  %32 = load float, ptr %mid.addr, align 4, !tbaa !53
  %33 = load i32, ptr %t.addr, align 4, !tbaa !5
  %34 = load ptr, ptr %s.addr, align 8, !tbaa !20
  %t27 = getelementptr inbounds nuw %struct.slope_t, ptr %34, i32 0, i32 1
  %35 = load i32, ptr %t27, align 4, !tbaa !66
  %call28 = call float @linear(float noundef %31, float noundef %32, i32 noundef %33, i32 noundef %35)
  store float %call28, ptr %sp, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %ep) #15
  %36 = load ptr, ptr %e.addr, align 8, !tbaa !20
  %v29 = getelementptr inbounds nuw %struct.slope_t, ptr %36, i32 0, i32 0
  %37 = load float, ptr %v29, align 4, !tbaa !68
  %38 = load float, ptr %mid.addr, align 4, !tbaa !53
  %39 = load i32, ptr %d.addr, align 4, !tbaa !5
  %40 = load i32, ptr %t.addr, align 4, !tbaa !5
  %sub30 = sub nsw i32 %39, %40
  %41 = load ptr, ptr %e.addr, align 8, !tbaa !20
  %t31 = getelementptr inbounds nuw %struct.slope_t, ptr %41, i32 0, i32 1
  %42 = load i32, ptr %t31, align 4, !tbaa !66
  %call32 = call float @linear(float noundef %37, float noundef %38, i32 noundef %sub30, i32 noundef %42)
  store float %call32, ptr %ep, align 4, !tbaa !53
  %43 = load float, ptr %f, align 4, !tbaa !53
  %44 = load float, ptr %sp, align 4, !tbaa !53
  %45 = load float, ptr %f, align 4, !tbaa !53
  %sub33 = fsub float 1.000000e+00, %45
  %46 = load float, ptr %ep, align 4, !tbaa !53
  %mul34 = fmul float %sub33, %46
  %47 = call float @llvm.fmuladd.f32(float %43, float %44, float %mul34)
  store float %47, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ep) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %sp) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #15
  br label %cleanup

cleanup:                                          ; preds = %if.else22, %if.else15, %if.then14, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %steady) #15
  %48 = load float, ptr %retval, align 4
  ret float %48
}

; Function Attrs: nounwind uwtable
define internal float @filter(ptr noundef %p, float noundef %v) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %v.addr = alloca float, align 4
  store ptr %p, ptr %p.addr, align 8, !tbaa !20
  store float %v, ptr %v.addr, align 4, !tbaa !53
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %a = getelementptr inbounds nuw %struct.filter_t, ptr %0, i32 0, i32 0
  %1 = load float, ptr %a, align 4, !tbaa !71
  %2 = load float, ptr %v.addr, align 4, !tbaa !53
  %3 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %b = getelementptr inbounds nuw %struct.filter_t, ptr %3, i32 0, i32 1
  %4 = load float, ptr %b, align 4, !tbaa !72
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %v1 = getelementptr inbounds nuw %struct.filter_t, ptr %5, i32 0, i32 2
  %6 = load float, ptr %v1, align 4, !tbaa !69
  %mul2 = fmul float %4, %6
  %7 = call float @llvm.fmuladd.f32(float %1, float %2, float %mul2)
  %8 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %v3 = getelementptr inbounds nuw %struct.filter_t, ptr %8, i32 0, i32 2
  store float %7, ptr %v3, align 4, !tbaa !69
  ret float %7
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: nounwind uwtable
define internal void @jsru_save(double noundef %f0, ptr noundef %tp) #0 {
entry:
  %f0.addr = alloca double, align 8
  %tp.addr = alloca ptr, align 8
  store double %f0, ptr %f0.addr, align 8, !tbaa !35
  store ptr %tp, ptr %tp.addr, align 8, !tbaa !111
  %0 = load double, ptr %f0.addr, align 8, !tbaa !35
  %div = fdiv double %0, 2.500000e+01
  %call = call double @log(double noundef %div) #15, !tbaa !5
  %call1 = call double @log(double noundef 2.000000e+00) #15, !tbaa !5
  %div2 = fdiv double %call, %call1
  %1 = call double @llvm.fmuladd.f64(double 1.600000e+01, double %div2, double -1.000000e+00)
  store double %1, ptr %f0.addr, align 8, !tbaa !35
  %2 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx = getelementptr inbounds float, ptr %2, i64 0
  %3 = load float, ptr %arrayidx, align 4, !tbaa !53
  %call3 = call i32 @jsru_freq(float noundef %3, float noundef 9.500000e+01, float noundef 5.000000e+00)
  %4 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call4 = call i32 @fputc(i32 noundef %call3, ptr noundef %4)
  %5 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx5 = getelementptr inbounds float, ptr %5, i64 7
  %6 = load float, ptr %arrayidx5, align 4, !tbaa !53
  %call6 = call i32 @jsru_amp(float noundef %6)
  %7 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call7 = call i32 @fputc(i32 noundef %call6, ptr noundef %7)
  %8 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx8 = getelementptr inbounds float, ptr %8, i64 1
  %9 = load float, ptr %arrayidx8, align 4, !tbaa !53
  %call9 = call i32 @jsru_freq(float noundef %9, float noundef 1.250000e+02, float noundef 2.500000e+01)
  %10 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call10 = call i32 @fputc(i32 noundef %call9, ptr noundef %10)
  %11 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx11 = getelementptr inbounds float, ptr %11, i64 8
  %12 = load float, ptr %arrayidx11, align 4, !tbaa !53
  %call12 = call i32 @jsru_amp(float noundef %12)
  %13 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call13 = call i32 @fputc(i32 noundef %call12, ptr noundef %13)
  %14 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx14 = getelementptr inbounds float, ptr %14, i64 2
  %15 = load float, ptr %arrayidx14, align 4, !tbaa !53
  %call15 = call i32 @jsru_freq(float noundef %15, float noundef 5.500000e+02, float noundef 5.000000e+01)
  %16 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call16 = call i32 @fputc(i32 noundef %call15, ptr noundef %16)
  %17 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx17 = getelementptr inbounds float, ptr %17, i64 9
  %18 = load float, ptr %arrayidx17, align 4, !tbaa !53
  %call18 = call i32 @jsru_amp(float noundef %18)
  %19 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call19 = call i32 @fputc(i32 noundef %call18, ptr noundef %19)
  %20 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx20 = getelementptr inbounds float, ptr %20, i64 3
  %21 = load float, ptr %arrayidx20, align 4, !tbaa !53
  %call21 = call i32 @jsru_freq(float noundef %21, float noundef 1.350000e+03, float noundef 5.000000e+01)
  %22 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call22 = call i32 @fputc(i32 noundef %call21, ptr noundef %22)
  %23 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx23 = getelementptr inbounds float, ptr %23, i64 10
  %24 = load float, ptr %arrayidx23, align 4, !tbaa !53
  %call24 = call i32 @jsru_amp(float noundef %24)
  %25 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call25 = call i32 @fputc(i32 noundef %call24, ptr noundef %25)
  %26 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx26 = getelementptr inbounds float, ptr %26, i64 11
  %27 = load float, ptr %arrayidx26, align 4, !tbaa !53
  %call27 = call i32 @jsru_amp(float noundef %27)
  %28 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call28 = call i32 @fputc(i32 noundef %call27, ptr noundef %28)
  %29 = load ptr, ptr %tp.addr, align 8, !tbaa !111
  %arrayidx29 = getelementptr inbounds float, ptr %29, i64 15
  %30 = load float, ptr %arrayidx29, align 4, !tbaa !53
  %call30 = call i32 @jsru_amp(float noundef %30)
  %31 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call31 = call i32 @fputc(i32 noundef %call30, ptr noundef %31)
  %32 = load double, ptr %f0.addr, align 8, !tbaa !35
  %conv = fptosi double %32 to i32
  %33 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call32 = call i32 @fputc(i32 noundef %conv, ptr noundef %33)
  %34 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call33 = call i32 @fputc(i32 noundef 32, ptr noundef %34)
  ret void
}

; Function Attrs: nounwind
declare double @log(double noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: nounwind uwtable
define internal i32 @jsru_freq(float noundef %f, float noundef %base, float noundef %inc) #0 {
entry:
  %f.addr = alloca float, align 4
  %base.addr = alloca float, align 4
  %inc.addr = alloca float, align 4
  %i = alloca i32, align 4
  store float %f, ptr %f.addr, align 4, !tbaa !53
  store float %base, ptr %base.addr, align 4, !tbaa !53
  store float %inc, ptr %inc.addr, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  %0 = load float, ptr %f.addr, align 4, !tbaa !53
  %1 = load float, ptr %base.addr, align 4, !tbaa !53
  %sub = fsub float %0, %1
  %2 = load float, ptr %inc.addr, align 4, !tbaa !53
  %div = fdiv float %sub, %2
  store float %div, ptr %f.addr, align 4, !tbaa !53
  %3 = load float, ptr %f.addr, align 4, !tbaa !53
  %conv = fptosi float %3 to i32
  store i32 %conv, ptr %i, align 4, !tbaa !5
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp sge i32 %4, 64
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 63, ptr %i, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  ret i32 %5
}

declare i32 @fputc(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define internal i32 @jsru_amp(float noundef %a) #0 {
entry:
  %a.addr = alloca float, align 4
  %i = alloca i32, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  %0 = load float, ptr %a.addr, align 4, !tbaa !53
  %conv = fptosi float %0 to i32
  store i32 %conv, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp sle i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %2, 64
  br i1 %cmp2, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  store i32 63, ptr %i, align 4, !tbaa !5
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  ret i32 %3
}

; Function Attrs: nounwind uwtable
define internal float @linear(float noundef %a, float noundef %b, i32 noundef %t, i32 noundef %d) #0 {
entry:
  %retval = alloca float, align 4
  %a.addr = alloca float, align 4
  %b.addr = alloca float, align 4
  %t.addr = alloca i32, align 4
  %d.addr = alloca i32, align 4
  %f = alloca float, align 4
  store float %a, ptr %a.addr, align 4, !tbaa !53
  store float %b, ptr %b.addr, align 4, !tbaa !53
  store i32 %t, ptr %t.addr, align 4, !tbaa !5
  store i32 %d, ptr %d.addr, align 4, !tbaa !5
  %0 = load i32, ptr %t.addr, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load float, ptr %a.addr, align 4, !tbaa !53
  store float %1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %2 = load i32, ptr %t.addr, align 4, !tbaa !5
  %3 = load i32, ptr %d.addr, align 4, !tbaa !5
  %cmp1 = icmp sge i32 %2, %3
  br i1 %cmp1, label %if.then2, label %if.else3

if.then2:                                         ; preds = %if.else
  %4 = load float, ptr %b.addr, align 4, !tbaa !53
  store float %4, ptr %retval, align 4
  br label %return

if.else3:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #15
  %5 = load i32, ptr %t.addr, align 4, !tbaa !5
  %conv = sitofp i32 %5 to float
  %6 = load i32, ptr %d.addr, align 4, !tbaa !5
  %conv4 = sitofp i32 %6 to float
  %div = fdiv float %conv, %conv4
  store float %div, ptr %f, align 4, !tbaa !53
  %7 = load float, ptr %a.addr, align 4, !tbaa !53
  %8 = load float, ptr %b.addr, align 4, !tbaa !53
  %9 = load float, ptr %a.addr, align 4, !tbaa !53
  %sub = fsub float %8, %9
  %10 = load float, ptr %f, align 4, !tbaa !53
  %11 = call float @llvm.fmuladd.f32(float %sub, float %10, float %7)
  store float %11, ptr %retval, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #15
  br label %return

return:                                           ; preds = %if.else3, %if.then2, %if.then
  %12 = load float, ptr %retval, align 4
  ret float %12
}

; Function Attrs: nounwind uwtable
define dso_local i32 @init_holmes(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %par_name = alloca ptr, align 8
  %jsru_name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %par_name) #15
  store ptr null, ptr %par_name, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %jsru_name) #15
  store ptr null, ptr %jsru_name, align 8, !tbaa !9
  %0 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef @.str.11.470, i32 noundef %0, ptr noundef %1, ptr noundef @.str.12.471, ptr noundef @.str.8.467, ptr noundef %par_name, ptr noundef @.str.13.472, ptr noundef @.str.14.473, ptr noundef @.str.8.467, ptr noundef %jsru_name, ptr noundef @.str.15.474, ptr noundef @.str.16.475, ptr noundef @.str.17.476, ptr noundef @speed, ptr noundef @.str.18.477, ptr noundef @.str.19.478, ptr noundef @.str.20.479, ptr noundef @frac, ptr noundef @.str.21.480, ptr noundef null)
  store i32 %call, ptr %argc.addr, align 4, !tbaa !5
  %2 = load i32, ptr @help_only, align 4, !tbaa !5
  %tobool = icmp ne i32 %2, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %argc.addr, align 4, !tbaa !5
  store i32 %3, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %par_name, align 8, !tbaa !9
  %tobool1 = icmp ne ptr %4, null
  br i1 %tobool1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.end
  %5 = load ptr, ptr %par_name, align 8, !tbaa !9
  %call3 = call noalias ptr @fopen(ptr noundef %5, ptr noundef @.str.22.481)
  store ptr %call3, ptr @par_file, align 8, !tbaa !26
  %6 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool4 = icmp ne ptr %6, null
  br i1 %tobool4, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.then2
  %7 = load ptr, ptr %par_name, align 8, !tbaa !9
  call void @perror(ptr noundef %7) #16
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then2
  br label %if.end7

if.end7:                                          ; preds = %if.end6, %if.end
  %8 = load ptr, ptr %jsru_name, align 8, !tbaa !9
  %tobool8 = icmp ne ptr %8, null
  br i1 %tobool8, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end7
  %9 = load ptr, ptr %jsru_name, align 8, !tbaa !9
  %call10 = call noalias ptr @fopen(ptr noundef %9, ptr noundef @.str.22.481)
  store ptr %call10, ptr @jsru_file, align 8, !tbaa !26
  %10 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %tobool11 = icmp ne ptr %10, null
  br i1 %tobool11, label %if.end13, label %if.then12

if.then12:                                        ; preds = %if.then9
  %11 = load ptr, ptr %jsru_name, align 8, !tbaa !9
  call void @perror(ptr noundef %11) #16
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.then9
  br label %if.end14

if.end14:                                         ; preds = %if.end13, %if.end7
  %12 = load i32, ptr %argc.addr, align 4, !tbaa !5
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %jsru_name) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %par_name) #15
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @term_holmes() #0 {
entry:
  %0 = load ptr, ptr @par_file, align 8, !tbaa !26
  %tobool = icmp ne ptr %0, null
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr @par_file, align 8, !tbaa !26
  %call = call i32 @fclose(ptr noundef %1)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %2 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %tobool1 = icmp ne ptr %2, null
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr @jsru_file, align 8, !tbaa !26
  %call3 = call i32 @fclose(ptr noundef %3)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

declare i32 @fclose(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @audio_init(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %rate_set = alloca i32, align 4
  %use_audio = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %rate_set) #15
  store i32 0, ptr %rate_set, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %use_audio) #15
  store i32 1, ptr %use_audio, align 4, !tbaa !5
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %1, ptr @prog, align 8, !tbaa !9
  %2 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef @.str.2.488, i32 noundef %2, ptr noundef %3, ptr noundef @.str.3.489, ptr noundef @.str.4.490, ptr noundef %rate_set, ptr noundef @.str.5.491, ptr noundef @.str.6.492, ptr noundef null, ptr noundef %use_audio, ptr noundef @.str.7.493, ptr noundef null)
  store i32 %call, ptr %argc.addr, align 4, !tbaa !5
  %4 = load i32, ptr @help_only, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %argc.addr, align 4, !tbaa !5
  store i32 %5, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = load i32, ptr %use_audio, align 4, !tbaa !5
  %tobool1 = icmp ne i32 %6, 0
  br i1 %tobool1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  %call3 = call i32 @audio_open()
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  %7 = load i32, ptr %rate_set, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %7, 0
  br i1 %tobool5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end4
  %8 = load i32, ptr %rate_set, align 4, !tbaa !5
  %conv = sext i32 %8 to i64
  store i64 %conv, ptr @samp_rate, align 8, !tbaa !12
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %9 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %cmp = icmp sgt i32 %9, 0
  br i1 %cmp, label %if.then9, label %if.end12

if.then9:                                         ; preds = %if.end7
  %10 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %call10 = call i32 (i32, i64, ...) @ioctl(i32 noundef %10, i64 noundef 3221508098, ptr noundef @samp_rate) #15
  %11 = load i64, ptr @samp_rate, align 8, !tbaa !12
  %call11 = call i32 (ptr, ...) @printf(ptr noundef @.str.8.494, i64 noundef %11)
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.end7
  %12 = load i32, ptr %argc.addr, align 4, !tbaa !5
  store i32 %12, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %use_audio) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %rate_set) #15
  %13 = load i32, ptr %retval, align 4
  ret i32 %13
}

; Function Attrs: nounwind uwtable
define internal i32 @audio_open() #0 {
entry:
  %retval = alloca i32, align 4
  %0 = load ptr, ptr @dev_file, align 8, !tbaa !9
  %call = call i32 (ptr, i32, ...) @open(ptr noundef %0, i32 noundef 2049)
  store i32 %call, ptr @dev_fd, align 4, !tbaa !5
  %1 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @dev_file, align 8, !tbaa !9
  call void @perror(ptr noundef %2) #16
  store i32 0, ptr %retval, align 4
  br label %return

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) #5

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local void @audio_term() #0 {
entry:
  %dummy = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %dummy) #15
  %0 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %cmp = icmp sge i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %1, i64 noundef 20481, ptr noundef %dummy) #15
  %2 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %call1 = call i32 @close(i32 noundef %2)
  store i32 -1, ptr @dev_fd, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr @linear_fd.495, align 4, !tbaa !5
  %cmp2 = icmp sge i32 %3, 0
  br i1 %cmp2, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  %4 = load i32, ptr @linear_fd.495, align 4, !tbaa !5
  %5 = load i32, ptr @linear_fd.495, align 4, !tbaa !5
  %call4 = call i64 @lseek(i32 noundef %5, i64 noundef 0, i32 noundef 1) #15
  %call5 = call i32 @ftruncate(i32 noundef %4, i64 noundef %call4) #15
  %6 = load i32, ptr @linear_fd.495, align 4, !tbaa !5
  %call6 = call i32 @close(i32 noundef %6)
  store i32 -1, ptr @linear_fd.495, align 4, !tbaa !5
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %dummy) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @audio_play(i32 noundef %n, ptr noundef %data) #0 {
entry:
  %n.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %converted = alloca ptr, align 8
  %i = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %data, ptr %data.addr, align 8, !tbaa !21
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %converted) #15
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv = sext i32 %1 to i64
  %call = call noalias ptr @malloc(i64 noundef %conv) #17
  store ptr %call, ptr %converted, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  %2 = load ptr, ptr %converted, align 8, !tbaa !9
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %if.then3, label %if.end

if.then3:                                         ; preds = %if.then
  %3 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %3, ptr noundef @.str.9.496) #15
  call void @exit(i32 noundef 3) #18
  unreachable

if.end:                                           ; preds = %if.then
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %data.addr, align 8, !tbaa !21
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %7 to i64
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 %idxprom
  %8 = load i16, ptr %arrayidx, align 2, !tbaa !23
  %conv7 = sext i16 %8 to i32
  %sub = sub nsw i32 %conv7, 32768
  %div = sdiv i32 %sub, 256
  %conv8 = trunc i32 %div to i8
  %9 = load ptr, ptr %converted, align 8, !tbaa !9
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds i8, ptr %9, i64 %idxprom9
  store i8 %conv8, ptr %arrayidx10, align 1, !tbaa !14
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  %12 = load i32, ptr @linear_fd.495, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %12, 0
  br i1 %cmp11, label %if.then13, label %if.end21

if.then13:                                        ; preds = %for.end
  %13 = load i32, ptr @linear_fd.495, align 4, !tbaa !5
  %14 = load ptr, ptr %converted, align 8, !tbaa !9
  %15 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv14 = sext i32 %15 to i64
  %call15 = call i64 @write(i32 noundef %13, ptr noundef %14, i64 noundef %conv14)
  %16 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv16 = sext i32 %16 to i64
  %cmp17 = icmp ne i64 %call15, %conv16
  br i1 %cmp17, label %if.then19, label %if.end20

if.then19:                                        ; preds = %if.then13
  call void @perror(ptr noundef @.str.10.497) #16
  br label %if.end20

if.end20:                                         ; preds = %if.then19, %if.then13
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %for.end
  %17 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %cmp22 = icmp sge i32 %17, 0
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end21
  %18 = load i32, ptr @dev_fd, align 4, !tbaa !5
  %19 = load ptr, ptr %converted, align 8, !tbaa !9
  %20 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv25 = sext i32 %20 to i64
  %call26 = call i64 @write(i32 noundef %18, ptr noundef %19, i64 noundef %conv25)
  %21 = load i32, ptr %n.addr, align 4, !tbaa !5
  %conv27 = sext i32 %21 to i64
  %cmp28 = icmp ne i64 %call26, %conv27
  br i1 %cmp28, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then24
  call void @perror(ptr noundef @.str.10.497) #16
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then24
  br label %if.end32

if.end32:                                         ; preds = %if.end31, %if.end21
  %22 = load ptr, ptr %converted, align 8, !tbaa !9
  call void @free(ptr noundef %22) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %converted) #15
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %entry
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #7

; Function Attrs: nounwind uwtable
define dso_local void @show_parms(ptr noundef %globals, ptr noundef %pars) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %pars.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  store ptr %pars, ptr %pars.addr, align 8, !tbaa !114
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  %0 = load i32, ptr @show_parms.names, align 4, !tbaa !5
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @show_parms.names, align 4, !tbaa !5
  %rem = srem i32 %0, 64
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %1, 40
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [40 x ptr], ptr @par_name, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.41.539, ptr noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc2 = add nsw i32 %4, 1
  store i32 %inc2, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !116

for.end:                                          ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.42.540)
  br label %if.end

if.end:                                           ; preds = %for.end, %entry
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc13, %if.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %5, 40
  br i1 %cmp5, label %for.body6, label %for.end15

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [40 x ptr], ptr @par_name, i64 0, i64 %idxprom7
  %7 = load ptr, ptr %arrayidx8, align 8, !tbaa !9
  %call9 = call i64 @strlen(ptr noundef %7) #14
  %conv = trunc i64 %call9 to i32
  %8 = load ptr, ptr %pars.addr, align 8, !tbaa !114
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds i32, ptr %8, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.43.541, i32 noundef %conv, i32 noundef %10)
  br label %for.inc13

for.inc13:                                        ; preds = %for.body6
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %11, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !117

for.end15:                                        ; preds = %for.cond4
  %call16 = call i32 (ptr, ...) @printf(ptr noundef @.str.42.540)
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @parwave(ptr noundef %globals, ptr noundef %frame, ptr noundef %jwave) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %jwave.addr = alloca ptr, align 8
  %ns = alloca i64, align 8
  %out = alloca float, align 4
  %noise = alloca float, align 4
  %n4 = alloca i32, align 4
  %sourc = alloca float, align 4
  %glotout = alloca float, align 4
  %par_glotout = alloca float, align 4
  %voice = alloca float, align 4
  %frics = alloca float, align 4
  %aspiration = alloca float, align 4
  %nrand = alloca i64, align 8
  %rnzout = alloca float, align 4
  %casc_next_in = alloca float, align 4
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  store ptr %frame, ptr %frame.addr, align 8, !tbaa !20
  store ptr %jwave, ptr %jwave.addr, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 8, ptr %ns) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %out) #15
  store float 0.000000e+00, ptr %out, align 4, !tbaa !53
  %0 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %1 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  call void @frame_init(ptr noundef %0, ptr noundef %1)
  %2 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %f0_flutter = getelementptr inbounds nuw %struct.klatt_global_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %f0_flutter, align 8, !tbaa !41
  %cmp = icmp ne i32 %3, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = load i32, ptr @time_count, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @time_count, align 4, !tbaa !5
  %5 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %6 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  call void @flutter(ptr noundef %5, ptr noundef %6)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  store i64 0, ptr %ns, align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc79, %if.end
  %7 = load i64, ptr %ns, align 8, !tbaa !12
  %8 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %nspfr = getelementptr inbounds nuw %struct.klatt_global_t, ptr %8, i32 0, i32 7
  %9 = load i64, ptr %nspfr, align 8, !tbaa !44
  %cmp1 = icmp slt i64 %7, %9
  br i1 %cmp1, label %for.body, label %for.end81

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %noise) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %n4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %sourc) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %glotout) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %par_glotout) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %voice) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %frics) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %aspiration) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %nrand) #15
  %10 = load i64, ptr @parwave.seed, align 8, !tbaa !12
  %mul = mul i64 %10, 1664525
  %add = add i64 %mul, 1
  store i64 %add, ptr @parwave.seed, align 8, !tbaa !12
  %11 = load i64, ptr @parwave.seed, align 8, !tbaa !12
  %and = and i64 %11, 4294967295
  store i64 %and, ptr @parwave.seed, align 8, !tbaa !12
  %12 = load i64, ptr @parwave.seed, align 8, !tbaa !12
  %shl = shl i64 %12, 32
  %shr = ashr i64 %shl, 50
  store i64 %shr, ptr %nrand, align 8, !tbaa !12
  %13 = load i64, ptr %nrand, align 8, !tbaa !12
  %conv = sitofp i64 %13 to double
  %14 = load float, ptr @nlast, align 4, !tbaa !53
  %conv2 = fpext float %14 to double
  %15 = call double @llvm.fmuladd.f64(double 7.500000e-01, double %conv2, double %conv)
  %conv4 = fptrunc double %15 to float
  store float %conv4, ptr %noise, align 4, !tbaa !53
  %16 = load float, ptr %noise, align 4, !tbaa !53
  store float %16, ptr @nlast, align 4, !tbaa !53
  %17 = load i64, ptr @nper, align 8, !tbaa !12
  %18 = load i64, ptr @nmod, align 8, !tbaa !12
  %cmp5 = icmp sgt i64 %17, %18
  br i1 %cmp5, label %if.then7, label %if.end11

if.then7:                                         ; preds = %for.body
  %19 = load float, ptr %noise, align 4, !tbaa !53
  %conv8 = fpext float %19 to double
  %mul9 = fmul double %conv8, 5.000000e-01
  %conv10 = fptrunc double %mul9 to float
  store float %conv10, ptr %noise, align 4, !tbaa !53
  br label %if.end11

if.end11:                                         ; preds = %if.then7, %for.body
  %20 = load float, ptr @amp_frica, align 4, !tbaa !53
  %21 = load float, ptr %noise, align 4, !tbaa !53
  %mul12 = fmul float %20, %21
  store float %mul12, ptr %frics, align 4, !tbaa !53
  store float %mul12, ptr %sourc, align 4, !tbaa !53
  store i32 0, ptr %n4, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc, %if.end11
  %22 = load i32, ptr %n4, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %22, 4
  br i1 %cmp14, label %for.body16, label %for.end

for.body16:                                       ; preds = %for.cond13
  %23 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %glsource = getelementptr inbounds nuw %struct.klatt_global_t, ptr %23, i32 0, i32 6
  %24 = load i64, ptr %glsource, align 8, !tbaa !40
  %cmp17 = icmp eq i64 %24, 1
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body16
  %25 = load i64, ptr @nper, align 8, !tbaa !12
  %call = call float @impulsive_source(i64 noundef %25)
  store float %call, ptr %voice, align 4, !tbaa !53
  br label %if.end21

if.else:                                          ; preds = %for.body16
  %26 = load i64, ptr @nper, align 8, !tbaa !12
  %call20 = call float @natural_source(i64 noundef %26)
  store float %call20, ptr %voice, align 4, !tbaa !53
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then19
  %27 = load i64, ptr @nper, align 8, !tbaa !12
  %28 = load i64, ptr @T0, align 8, !tbaa !12
  %cmp22 = icmp sge i64 %27, %28
  br i1 %cmp22, label %if.then24, label %if.end25

if.then24:                                        ; preds = %if.end21
  store i64 0, ptr @nper, align 8, !tbaa !12
  %29 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %30 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %31 = load i64, ptr %ns, align 8, !tbaa !12
  call void @pitch_synch_par_reset(ptr noundef %29, ptr noundef %30, i64 noundef %31)
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21
  %32 = load float, ptr %voice, align 4, !tbaa !53
  %call26 = call float @resonator(ptr noundef @rlp, float noundef %32)
  store float %call26, ptr %voice, align 4, !tbaa !53
  %33 = load i64, ptr @nper, align 8, !tbaa !12
  %inc27 = add nsw i64 %33, 1
  store i64 %inc27, ptr @nper, align 8, !tbaa !12
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %34 = load i32, ptr %n4, align 4, !tbaa !5
  %inc28 = add nsw i32 %34, 1
  store i32 %inc28, ptr %n4, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !118

for.end:                                          ; preds = %for.cond13
  %35 = load float, ptr %voice, align 4, !tbaa !53
  %36 = load float, ptr @onemd, align 4, !tbaa !53
  %37 = load float, ptr @vlast, align 4, !tbaa !53
  %38 = load float, ptr @decay, align 4, !tbaa !53
  %mul30 = fmul float %37, %38
  %39 = call float @llvm.fmuladd.f32(float %35, float %36, float %mul30)
  store float %39, ptr %voice, align 4, !tbaa !53
  %40 = load float, ptr %voice, align 4, !tbaa !53
  store float %40, ptr @vlast, align 4, !tbaa !53
  %41 = load i64, ptr @nper, align 8, !tbaa !12
  %42 = load i64, ptr @nopen, align 8, !tbaa !12
  %cmp31 = icmp slt i64 %41, %42
  br i1 %cmp31, label %if.then33, label %if.end36

if.then33:                                        ; preds = %for.end
  %43 = load float, ptr @amp_breth, align 4, !tbaa !53
  %44 = load i64, ptr %nrand, align 8, !tbaa !12
  %conv34 = sitofp i64 %44 to float
  %45 = load float, ptr %voice, align 4, !tbaa !53
  %46 = call float @llvm.fmuladd.f32(float %43, float %conv34, float %45)
  store float %46, ptr %voice, align 4, !tbaa !53
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %for.end
  %47 = load float, ptr @amp_voice, align 4, !tbaa !53
  %48 = load float, ptr %voice, align 4, !tbaa !53
  %mul37 = fmul float %47, %48
  store float %mul37, ptr %glotout, align 4, !tbaa !53
  %49 = load float, ptr @amp_aspir, align 4, !tbaa !53
  %50 = load float, ptr %noise, align 4, !tbaa !53
  %mul38 = fmul float %49, %50
  store float %mul38, ptr %aspiration, align 4, !tbaa !53
  %51 = load float, ptr %aspiration, align 4, !tbaa !53
  %52 = load float, ptr %glotout, align 4, !tbaa !53
  %add39 = fadd float %52, %51
  store float %add39, ptr %glotout, align 4, !tbaa !53
  %53 = load float, ptr %glotout, align 4, !tbaa !53
  store float %53, ptr %par_glotout, align 4, !tbaa !53
  %54 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %synthesis_model = getelementptr inbounds nuw %struct.klatt_global_t, ptr %54, i32 0, i32 0
  %55 = load i32, ptr %synthesis_model, align 8, !tbaa !42
  %cmp40 = icmp ne i32 %55, 2
  br i1 %cmp40, label %if.then42, label %if.else60

if.then42:                                        ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr %rnzout) #15
  %56 = load float, ptr %glotout, align 4, !tbaa !53
  %call43 = call float @antiresonator(ptr noundef @rnz, float noundef %56)
  store float %call43, ptr %rnzout, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %casc_next_in) #15
  %57 = load float, ptr %rnzout, align 4, !tbaa !53
  %call44 = call float @resonator(ptr noundef @rnpc, float noundef %57)
  store float %call44, ptr %casc_next_in, align 4, !tbaa !53
  %58 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %nfcascade = getelementptr inbounds nuw %struct.klatt_global_t, ptr %58, i32 0, i32 5
  %59 = load i64, ptr %nfcascade, align 8, !tbaa !43
  switch i64 %59, label %sw.default [
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
  %60 = load float, ptr %casc_next_in, align 4, !tbaa !53
  %call45 = call float @resonator(ptr noundef @r8c, float noundef %60)
  store float %call45, ptr %casc_next_in, align 4, !tbaa !53
  br label %sw.bb46

sw.bb46:                                          ; preds = %if.then42, %sw.bb
  %61 = load float, ptr %casc_next_in, align 4, !tbaa !53
  %call47 = call float @resonator(ptr noundef @r7c, float noundef %61)
  store float %call47, ptr %casc_next_in, align 4, !tbaa !53
  br label %sw.bb48

sw.bb48:                                          ; preds = %if.then42, %sw.bb46
  %62 = load float, ptr %casc_next_in, align 4, !tbaa !53
  %call49 = call float @resonator(ptr noundef @r6c, float noundef %62)
  store float %call49, ptr %casc_next_in, align 4, !tbaa !53
  br label %sw.bb50

sw.bb50:                                          ; preds = %if.then42, %sw.bb48
  %63 = load float, ptr %casc_next_in, align 4, !tbaa !53
  %call51 = call float @resonator(ptr noundef @r5c, float noundef %63)
  store float %call51, ptr %casc_next_in, align 4, !tbaa !53
  br label %sw.bb52

sw.bb52:                                          ; preds = %if.then42, %sw.bb50
  %64 = load float, ptr %casc_next_in, align 4, !tbaa !53
  %call53 = call float @resonator(ptr noundef @r4c, float noundef %64)
  store float %call53, ptr %casc_next_in, align 4, !tbaa !53
  br label %sw.bb54

sw.bb54:                                          ; preds = %if.then42, %sw.bb52
  %65 = load float, ptr %casc_next_in, align 4, !tbaa !53
  %call55 = call float @resonator(ptr noundef @r3c, float noundef %65)
  store float %call55, ptr %casc_next_in, align 4, !tbaa !53
  br label %sw.bb56

sw.bb56:                                          ; preds = %if.then42, %sw.bb54
  %66 = load float, ptr %casc_next_in, align 4, !tbaa !53
  %call57 = call float @resonator(ptr noundef @r2c, float noundef %66)
  store float %call57, ptr %casc_next_in, align 4, !tbaa !53
  br label %sw.bb58

sw.bb58:                                          ; preds = %if.then42, %sw.bb56
  %67 = load float, ptr %casc_next_in, align 4, !tbaa !53
  %call59 = call float @resonator(ptr noundef @r1c, float noundef %67)
  store float %call59, ptr %out, align 4, !tbaa !53
  br label %sw.epilog

sw.default:                                       ; preds = %if.then42
  store float 0.000000e+00, ptr %out, align 4, !tbaa !53
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb58
  call void @llvm.lifetime.end.p0(i64 4, ptr %casc_next_in) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %rnzout) #15
  br label %if.end65

if.else60:                                        ; preds = %if.end36
  %68 = load float, ptr %par_glotout, align 4, !tbaa !53
  %call61 = call float @antiresonator(ptr noundef @rnz, float noundef %68)
  store float %call61, ptr %par_glotout, align 4, !tbaa !53
  %69 = load float, ptr %par_glotout, align 4, !tbaa !53
  %call62 = call float @resonator(ptr noundef @rnpc, float noundef %69)
  store float %call62, ptr %par_glotout, align 4, !tbaa !53
  %70 = load float, ptr %par_glotout, align 4, !tbaa !53
  %call63 = call float @resonator(ptr noundef @r1p, float noundef %70)
  store float %call63, ptr %out, align 4, !tbaa !53
  %71 = load float, ptr %par_glotout, align 4, !tbaa !53
  %72 = load float, ptr @glotlast, align 4, !tbaa !53
  %sub = fsub float %71, %72
  %73 = load float, ptr %sourc, align 4, !tbaa !53
  %add64 = fadd float %73, %sub
  store float %add64, ptr %sourc, align 4, !tbaa !53
  %74 = load float, ptr %par_glotout, align 4, !tbaa !53
  store float %74, ptr @glotlast, align 4, !tbaa !53
  br label %if.end65

if.end65:                                         ; preds = %if.else60, %sw.epilog
  %75 = load float, ptr %sourc, align 4, !tbaa !53
  %call66 = call float @resonator(ptr noundef @r6p, float noundef %75)
  %76 = load float, ptr %out, align 4, !tbaa !53
  %sub67 = fsub float %call66, %76
  store float %sub67, ptr %out, align 4, !tbaa !53
  %77 = load float, ptr %sourc, align 4, !tbaa !53
  %call68 = call float @resonator(ptr noundef @r5p, float noundef %77)
  %78 = load float, ptr %out, align 4, !tbaa !53
  %sub69 = fsub float %call68, %78
  store float %sub69, ptr %out, align 4, !tbaa !53
  %79 = load float, ptr %sourc, align 4, !tbaa !53
  %call70 = call float @resonator(ptr noundef @r4p, float noundef %79)
  %80 = load float, ptr %out, align 4, !tbaa !53
  %sub71 = fsub float %call70, %80
  store float %sub71, ptr %out, align 4, !tbaa !53
  %81 = load float, ptr %sourc, align 4, !tbaa !53
  %call72 = call float @resonator(ptr noundef @r3p, float noundef %81)
  %82 = load float, ptr %out, align 4, !tbaa !53
  %sub73 = fsub float %call72, %82
  store float %sub73, ptr %out, align 4, !tbaa !53
  %83 = load float, ptr %sourc, align 4, !tbaa !53
  %call74 = call float @resonator(ptr noundef @r2p, float noundef %83)
  %84 = load float, ptr %out, align 4, !tbaa !53
  %sub75 = fsub float %call74, %84
  store float %sub75, ptr %out, align 4, !tbaa !53
  %85 = load float, ptr @amp_bypas, align 4, !tbaa !53
  %86 = load float, ptr %sourc, align 4, !tbaa !53
  %87 = load float, ptr %out, align 4, !tbaa !53
  %neg = fneg float %87
  %88 = call float @llvm.fmuladd.f32(float %85, float %86, float %neg)
  store float %88, ptr %out, align 4, !tbaa !53
  %89 = load float, ptr %out, align 4, !tbaa !53
  %call77 = call float @resonator(ptr noundef @rout, float noundef %89)
  store float %call77, ptr %out, align 4, !tbaa !53
  %90 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %91 = load float, ptr %out, align 4, !tbaa !53
  %call78 = call signext i16 @clip(ptr noundef %90, float noundef %91)
  %92 = load ptr, ptr %jwave.addr, align 8, !tbaa !21
  %incdec.ptr = getelementptr inbounds nuw i16, ptr %92, i32 1
  store ptr %incdec.ptr, ptr %jwave.addr, align 8, !tbaa !21
  store i16 %call78, ptr %92, align 2, !tbaa !23
  call void @llvm.lifetime.end.p0(i64 8, ptr %nrand) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %aspiration) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %frics) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %voice) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %par_glotout) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %glotout) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %sourc) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %n4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %noise) #15
  br label %for.inc79

for.inc79:                                        ; preds = %if.end65
  %93 = load i64, ptr %ns, align 8, !tbaa !12
  %inc80 = add nsw i64 %93, 1
  store i64 %inc80, ptr %ns, align 8, !tbaa !12
  br label %for.cond, !llvm.loop !119

for.end81:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %out) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %ns) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @frame_init(ptr noundef %globals, ptr noundef %frame) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %Gain0 = alloca i64, align 8
  %amp_parF1 = alloca float, align 4
  %amp_parFN = alloca float, align 4
  %amp_parF2 = alloca float, align 4
  %amp_parF3 = alloca float, align 4
  %amp_parF4 = alloca float, align 4
  %amp_parF5 = alloca float, align 4
  %amp_parF6 = alloca float, align 4
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  store ptr %frame, ptr %frame.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %Gain0) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %amp_parF1) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %amp_parFN) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %amp_parF2) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %amp_parF3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %amp_parF4) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %amp_parF5) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %amp_parF6) #15
  %0 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F0hz10 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %F0hz10, align 8, !tbaa !51
  store i64 %1, ptr @F0hz10, align 8, !tbaa !12
  %2 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %AVdb = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %2, i32 0, i32 1
  %3 = load i64, ptr %AVdb, align 8, !tbaa !86
  %sub = sub nsw i64 %3, 7
  store i64 %sub, ptr @AVdb, align 8, !tbaa !12
  %4 = load i64, ptr @AVdb, align 8, !tbaa !12
  %cmp = icmp slt i64 %4, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i64 0, ptr @AVdb, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %6 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %ASP = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %6, i32 0, i32 18
  %7 = load i64, ptr %ASP, align 8, !tbaa !89
  %call = call float @DBtoLIN(ptr noundef %5, i64 noundef %7)
  %conv = fpext float %call to double
  %mul = fmul double %conv, 5.000000e-02
  %conv1 = fptrunc double %mul to float
  store float %conv1, ptr @amp_aspir, align 4, !tbaa !53
  %8 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %9 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %AF = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %9, i32 0, i32 22
  %10 = load i64, ptr %AF, align 8, !tbaa !87
  %call2 = call float @DBtoLIN(ptr noundef %8, i64 noundef %10)
  %conv3 = fpext float %call2 to double
  %mul4 = fmul double %conv3, 2.500000e-01
  %conv5 = fptrunc double %mul4 to float
  store float %conv5, ptr @amp_frica, align 4, !tbaa !53
  %11 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %Kskew = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %11, i32 0, i32 23
  %12 = load i64, ptr %Kskew, align 8, !tbaa !120
  store i64 %12, ptr @Kskew, align 8, !tbaa !12
  %13 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %14 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %AVpdb = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %14, i32 0, i32 38
  %15 = load i64, ptr %AVpdb, align 8, !tbaa !85
  %call6 = call float @DBtoLIN(ptr noundef %13, i64 noundef %15)
  store float %call6, ptr @par_amp_voice, align 4, !tbaa !53
  %16 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %17 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %A1 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %17, i32 0, i32 24
  %18 = load i64, ptr %A1, align 8, !tbaa !97
  %call7 = call float @DBtoLIN(ptr noundef %16, i64 noundef %18)
  %conv8 = fpext float %call7 to double
  %mul9 = fmul double %conv8, 4.000000e-01
  %conv10 = fptrunc double %mul9 to float
  store float %conv10, ptr %amp_parF1, align 4, !tbaa !53
  %19 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %20 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %A2 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %20, i32 0, i32 26
  %21 = load i64, ptr %A2, align 8, !tbaa !98
  %call11 = call float @DBtoLIN(ptr noundef %19, i64 noundef %21)
  %conv12 = fpext float %call11 to double
  %mul13 = fmul double %conv12, 1.500000e-01
  %conv14 = fptrunc double %mul13 to float
  store float %conv14, ptr %amp_parF2, align 4, !tbaa !53
  %22 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %23 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %A3 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %23, i32 0, i32 28
  %24 = load i64, ptr %A3, align 8, !tbaa !99
  %call15 = call float @DBtoLIN(ptr noundef %22, i64 noundef %24)
  %conv16 = fpext float %call15 to double
  %mul17 = fmul double %conv16, 6.000000e-02
  %conv18 = fptrunc double %mul17 to float
  store float %conv18, ptr %amp_parF3, align 4, !tbaa !53
  %25 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %26 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %A4 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %26, i32 0, i32 30
  %27 = load i64, ptr %A4, align 8, !tbaa !100
  %call19 = call float @DBtoLIN(ptr noundef %25, i64 noundef %27)
  %conv20 = fpext float %call19 to double
  %mul21 = fmul double %conv20, 4.000000e-02
  %conv22 = fptrunc double %mul21 to float
  store float %conv22, ptr %amp_parF4, align 4, !tbaa !53
  %28 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %29 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %A5 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %29, i32 0, i32 32
  %30 = load i64, ptr %A5, align 8, !tbaa !95
  %call23 = call float @DBtoLIN(ptr noundef %28, i64 noundef %30)
  %conv24 = fpext float %call23 to double
  %mul25 = fmul double %conv24, 2.200000e-02
  %conv26 = fptrunc double %mul25 to float
  store float %conv26, ptr %amp_parF5, align 4, !tbaa !53
  %31 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %32 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %A6 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %32, i32 0, i32 34
  %33 = load i64, ptr %A6, align 8, !tbaa !96
  %call27 = call float @DBtoLIN(ptr noundef %31, i64 noundef %33)
  %conv28 = fpext float %call27 to double
  %mul29 = fmul double %conv28, 3.000000e-02
  %conv30 = fptrunc double %mul29 to float
  store float %conv30, ptr %amp_parF6, align 4, !tbaa !53
  %34 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %35 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %ANP = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %35, i32 0, i32 36
  %36 = load i64, ptr %ANP, align 8, !tbaa !121
  %call31 = call float @DBtoLIN(ptr noundef %34, i64 noundef %36)
  %conv32 = fpext float %call31 to double
  %mul33 = fmul double %conv32, 6.000000e-01
  %conv34 = fptrunc double %mul33 to float
  store float %conv34, ptr %amp_parFN, align 4, !tbaa !53
  %37 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %38 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %AB = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %38, i32 0, i32 37
  %39 = load i64, ptr %AB, align 8, !tbaa !94
  %call35 = call float @DBtoLIN(ptr noundef %37, i64 noundef %39)
  %conv36 = fpext float %call35 to double
  %mul37 = fmul double %conv36, 5.000000e-02
  %conv38 = fptrunc double %mul37 to float
  store float %conv38, ptr @amp_bypas, align 4, !tbaa !53
  %40 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %nfcascade = getelementptr inbounds nuw %struct.klatt_global_t, ptr %40, i32 0, i32 5
  %41 = load i64, ptr %nfcascade, align 8, !tbaa !43
  %cmp39 = icmp sge i64 %41, 8
  br i1 %cmp39, label %if.then41, label %if.end47

if.then41:                                        ; preds = %if.end
  %42 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %samrate = getelementptr inbounds nuw %struct.klatt_global_t, ptr %42, i32 0, i32 4
  %43 = load i64, ptr %samrate, align 8, !tbaa !37
  %cmp42 = icmp sge i64 %43, 16000
  br i1 %cmp42, label %if.then44, label %if.else

if.then44:                                        ; preds = %if.then41
  call void @setabc(i64 noundef 7500, i64 noundef 600, ptr noundef @r8c)
  br label %if.end46

if.else:                                          ; preds = %if.then41
  %44 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %nfcascade45 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %44, i32 0, i32 5
  store i64 6, ptr %nfcascade45, align 8, !tbaa !43
  br label %if.end46

if.end46:                                         ; preds = %if.else, %if.then44
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.end
  %45 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %nfcascade48 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %45, i32 0, i32 5
  %46 = load i64, ptr %nfcascade48, align 8, !tbaa !43
  %cmp49 = icmp sge i64 %46, 7
  br i1 %cmp49, label %if.then51, label %if.end59

if.then51:                                        ; preds = %if.end47
  %47 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %samrate52 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %47, i32 0, i32 4
  %48 = load i64, ptr %samrate52, align 8, !tbaa !37
  %cmp53 = icmp sge i64 %48, 16000
  br i1 %cmp53, label %if.then55, label %if.else56

if.then55:                                        ; preds = %if.then51
  call void @setabc(i64 noundef 6500, i64 noundef 500, ptr noundef @r7c)
  br label %if.end58

if.else56:                                        ; preds = %if.then51
  %49 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %nfcascade57 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %49, i32 0, i32 5
  store i64 6, ptr %nfcascade57, align 8, !tbaa !43
  br label %if.end58

if.end58:                                         ; preds = %if.else56, %if.then55
  br label %if.end59

if.end59:                                         ; preds = %if.end58, %if.end47
  %50 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %nfcascade60 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %50, i32 0, i32 5
  %51 = load i64, ptr %nfcascade60, align 8, !tbaa !43
  %cmp61 = icmp sge i64 %51, 6
  br i1 %cmp61, label %if.then63, label %if.end64

if.then63:                                        ; preds = %if.end59
  %52 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F6hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %52, i32 0, i32 12
  %53 = load i64, ptr %F6hz, align 8, !tbaa !122
  %54 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B6hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %54, i32 0, i32 13
  %55 = load i64, ptr %B6hz, align 8, !tbaa !123
  call void @setabc(i64 noundef %53, i64 noundef %55, ptr noundef @r6c)
  br label %if.end64

if.end64:                                         ; preds = %if.then63, %if.end59
  %56 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %nfcascade65 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %56, i32 0, i32 5
  %57 = load i64, ptr %nfcascade65, align 8, !tbaa !43
  %cmp66 = icmp sge i64 %57, 5
  br i1 %cmp66, label %if.then68, label %if.end69

if.then68:                                        ; preds = %if.end64
  %58 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F5hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %58, i32 0, i32 10
  %59 = load i64, ptr %F5hz, align 8, !tbaa !124
  %60 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B5hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %60, i32 0, i32 11
  %61 = load i64, ptr %B5hz, align 8, !tbaa !125
  call void @setabc(i64 noundef %59, i64 noundef %61, ptr noundef @r5c)
  br label %if.end69

if.end69:                                         ; preds = %if.then68, %if.end64
  %62 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F4hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %62, i32 0, i32 8
  %63 = load i64, ptr %F4hz, align 8, !tbaa !126
  %64 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B4hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %64, i32 0, i32 9
  %65 = load i64, ptr %B4hz, align 8, !tbaa !127
  call void @setabc(i64 noundef %63, i64 noundef %65, ptr noundef @r4c)
  %66 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F3hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %66, i32 0, i32 6
  %67 = load i64, ptr %F3hz, align 8, !tbaa !93
  %68 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B3hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %68, i32 0, i32 7
  %69 = load i64, ptr %B3hz, align 8, !tbaa !63
  call void @setabc(i64 noundef %67, i64 noundef %69, ptr noundef @r3c)
  %70 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F2hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %70, i32 0, i32 4
  %71 = load i64, ptr %F2hz, align 8, !tbaa !92
  %72 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B2hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %72, i32 0, i32 5
  %73 = load i64, ptr %B2hz, align 8, !tbaa !61
  call void @setabc(i64 noundef %71, i64 noundef %73, ptr noundef @r2c)
  %74 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F1hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %74, i32 0, i32 2
  %75 = load i64, ptr %F1hz, align 8, !tbaa !91
  %76 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B1hz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %76, i32 0, i32 3
  %77 = load i64, ptr %B1hz, align 8, !tbaa !59
  call void @setabc(i64 noundef %75, i64 noundef %77, ptr noundef @r1c)
  %78 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %FNPhz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %78, i32 0, i32 16
  %79 = load i64, ptr %FNPhz, align 8, !tbaa !58
  %80 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %BNPhz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %80, i32 0, i32 17
  %81 = load i64, ptr %BNPhz, align 8, !tbaa !128
  call void @setabc(i64 noundef %79, i64 noundef %81, ptr noundef @rnpc)
  %82 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %FNZhz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %82, i32 0, i32 14
  %83 = load i64, ptr %FNZhz, align 8, !tbaa !88
  %84 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %BNZhz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %84, i32 0, i32 15
  %85 = load i64, ptr %BNZhz, align 8, !tbaa !129
  call void @setzeroabc(i64 noundef %83, i64 noundef %85, ptr noundef @rnz)
  %86 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F1hz70 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %86, i32 0, i32 2
  %87 = load i64, ptr %F1hz70, align 8, !tbaa !91
  %88 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B1phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %88, i32 0, i32 25
  %89 = load i64, ptr %B1phz, align 8, !tbaa !60
  %90 = load float, ptr %amp_parF1, align 4, !tbaa !53
  call void @setabcg(i64 noundef %87, i64 noundef %89, ptr noundef @r1p, float noundef %90)
  %91 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %FNPhz71 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %91, i32 0, i32 16
  %92 = load i64, ptr %FNPhz71, align 8, !tbaa !58
  %93 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %BNPhz72 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %93, i32 0, i32 17
  %94 = load i64, ptr %BNPhz72, align 8, !tbaa !128
  %95 = load float, ptr %amp_parFN, align 4, !tbaa !53
  call void @setabcg(i64 noundef %92, i64 noundef %94, ptr noundef @rnpp, float noundef %95)
  %96 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F2hz73 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %96, i32 0, i32 4
  %97 = load i64, ptr %F2hz73, align 8, !tbaa !92
  %98 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B2phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %98, i32 0, i32 27
  %99 = load i64, ptr %B2phz, align 8, !tbaa !62
  %100 = load float, ptr %amp_parF2, align 4, !tbaa !53
  call void @setabcg(i64 noundef %97, i64 noundef %99, ptr noundef @r2p, float noundef %100)
  %101 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F3hz74 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %101, i32 0, i32 6
  %102 = load i64, ptr %F3hz74, align 8, !tbaa !93
  %103 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B3phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %103, i32 0, i32 29
  %104 = load i64, ptr %B3phz, align 8, !tbaa !64
  %105 = load float, ptr %amp_parF3, align 4, !tbaa !53
  call void @setabcg(i64 noundef %102, i64 noundef %104, ptr noundef @r3p, float noundef %105)
  %106 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F4hz75 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %106, i32 0, i32 8
  %107 = load i64, ptr %F4hz75, align 8, !tbaa !126
  %108 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B4phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %108, i32 0, i32 31
  %109 = load i64, ptr %B4phz, align 8, !tbaa !65
  %110 = load float, ptr %amp_parF4, align 4, !tbaa !53
  call void @setabcg(i64 noundef %107, i64 noundef %109, ptr noundef @r4p, float noundef %110)
  %111 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F5hz76 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %111, i32 0, i32 10
  %112 = load i64, ptr %F5hz76, align 8, !tbaa !124
  %113 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B5phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %113, i32 0, i32 33
  %114 = load i64, ptr %B5phz, align 8, !tbaa !130
  %115 = load float, ptr %amp_parF5, align 4, !tbaa !53
  call void @setabcg(i64 noundef %112, i64 noundef %114, ptr noundef @r5p, float noundef %115)
  %116 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %F6hz77 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %116, i32 0, i32 12
  %117 = load i64, ptr %F6hz77, align 8, !tbaa !122
  %118 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %B6phz = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %118, i32 0, i32 35
  %119 = load i64, ptr %B6phz, align 8, !tbaa !131
  %120 = load float, ptr %amp_parF6, align 4, !tbaa !53
  call void @setabcg(i64 noundef %117, i64 noundef %119, ptr noundef @r6p, float noundef %120)
  %121 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %Gain078 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %121, i32 0, i32 39
  %122 = load i64, ptr %Gain078, align 8, !tbaa !132
  %sub79 = sub nsw i64 %122, 3
  store i64 %sub79, ptr %Gain0, align 8, !tbaa !12
  %123 = load i64, ptr %Gain0, align 8, !tbaa !12
  %cmp80 = icmp sle i64 %123, 0
  br i1 %cmp80, label %if.then82, label %if.end83

if.then82:                                        ; preds = %if.end69
  store i64 57, ptr %Gain0, align 8, !tbaa !12
  br label %if.end83

if.end83:                                         ; preds = %if.then82, %if.end69
  %124 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %samrate84 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %124, i32 0, i32 4
  %125 = load i64, ptr %samrate84, align 8, !tbaa !37
  %126 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %127 = load i64, ptr %Gain0, align 8, !tbaa !12
  %call85 = call float @DBtoLIN(ptr noundef %126, i64 noundef %127)
  call void @setabcg(i64 noundef 0, i64 noundef %125, ptr noundef @rout, float noundef %call85)
  call void @llvm.lifetime.end.p0(i64 4, ptr %amp_parF6) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %amp_parF5) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %amp_parF4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %amp_parF3) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %amp_parF2) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %amp_parFN) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %amp_parF1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %Gain0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @flutter(ptr noundef %globals, ptr noundef %pars) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %pars.addr = alloca ptr, align 8
  %original_f0 = alloca i64, align 8
  %fla = alloca double, align 8
  %flb = alloca double, align 8
  %flc = alloca double, align 8
  %fld = alloca double, align 8
  %fle = alloca double, align 8
  %delta_f0 = alloca double, align 8
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  store ptr %pars, ptr %pars.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %original_f0) #15
  %0 = load ptr, ptr %pars.addr, align 8, !tbaa !20
  %F0hz10 = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %0, i32 0, i32 0
  %1 = load i64, ptr %F0hz10, align 8, !tbaa !51
  %div = sdiv i64 %1, 10
  store i64 %div, ptr %original_f0, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %fla) #15
  %2 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %f0_flutter = getelementptr inbounds nuw %struct.klatt_global_t, ptr %2, i32 0, i32 2
  %3 = load i32, ptr %f0_flutter, align 8, !tbaa !41
  %conv = sitofp i32 %3 to double
  %div1 = fdiv double %conv, 5.000000e+01
  store double %div1, ptr %fla, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %flb) #15
  %4 = load i64, ptr %original_f0, align 8, !tbaa !12
  %conv2 = sitofp i64 %4 to double
  %div3 = fdiv double %conv2, 1.000000e+02
  store double %div3, ptr %flb, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %flc) #15
  %5 = load i32, ptr @time_count, align 4, !tbaa !5
  %conv4 = sitofp i32 %5 to double
  %mul = fmul double 0x4053F2F91CA1765C, %conv4
  %call = call double @sin(double noundef %mul) #15, !tbaa !5
  store double %call, ptr %flc, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %fld) #15
  %6 = load i32, ptr @time_count, align 4, !tbaa !5
  %conv5 = sitofp i32 %6 to double
  %mul6 = fmul double 0x40464E28AD1D5A02, %conv5
  %call7 = call double @sin(double noundef %mul6) #15, !tbaa !5
  store double %call7, ptr %fld, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %fle) #15
  %7 = load i32, ptr @time_count, align 4, !tbaa !5
  %conv8 = sitofp i32 %7 to double
  %mul9 = fmul double 0x403D87EDBD883645, %conv8
  %call10 = call double @sin(double noundef %mul9) #15, !tbaa !5
  store double %call10, ptr %fle, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 8, ptr %delta_f0) #15
  %8 = load double, ptr %fla, align 8, !tbaa !35
  %9 = load double, ptr %flb, align 8, !tbaa !35
  %mul11 = fmul double %8, %9
  %10 = load double, ptr %flc, align 8, !tbaa !35
  %11 = load double, ptr %fld, align 8, !tbaa !35
  %add = fadd double %10, %11
  %12 = load double, ptr %fle, align 8, !tbaa !35
  %add12 = fadd double %add, %12
  %mul13 = fmul double %mul11, %add12
  %mul14 = fmul double %mul13, 1.000000e+01
  store double %mul14, ptr %delta_f0, align 8, !tbaa !35
  %13 = load double, ptr %delta_f0, align 8, !tbaa !35
  %conv15 = fptosi double %13 to i64
  %14 = load i64, ptr @F0hz10, align 8, !tbaa !12
  %add16 = add nsw i64 %14, %conv15
  store i64 %add16, ptr @F0hz10, align 8, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 8, ptr %delta_f0) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %fle) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %fld) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %flc) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %flb) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %fla) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %original_f0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @impulsive_source(i64 noundef %nper) #0 {
entry:
  %nper.addr = alloca i64, align 8
  store i64 %nper, ptr %nper.addr, align 8, !tbaa !12
  %0 = load i64, ptr %nper.addr, align 8, !tbaa !12
  %cmp = icmp slt i64 %0, 3
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %1 = load i64, ptr %nper.addr, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds [3 x float], ptr @impulsive_source.doublet, i64 0, i64 %1
  %2 = load float, ptr %arrayidx, align 4, !tbaa !53
  store float %2, ptr @vwave, align 4, !tbaa !53
  br label %if.end

if.else:                                          ; preds = %entry
  store float 0.000000e+00, ptr @vwave, align 4, !tbaa !53
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load float, ptr @vwave, align 4, !tbaa !53
  %call = call float @resonator(ptr noundef @rgl, float noundef %3)
  ret float %call
}

; Function Attrs: nounwind uwtable
define internal float @natural_source(i64 noundef %nper) #0 {
entry:
  %retval = alloca float, align 4
  %nper.addr = alloca i64, align 8
  %lgtemp = alloca float, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %nper, ptr %nper.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %lgtemp) #15
  %0 = load i64, ptr %nper.addr, align 8, !tbaa !12
  %1 = load i64, ptr @nopen, align 8, !tbaa !12
  %cmp = icmp slt i64 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load float, ptr @natglot_b, align 4, !tbaa !53
  %3 = load float, ptr @natglot_a, align 4, !tbaa !53
  %sub = fsub float %3, %2
  store float %sub, ptr @natglot_a, align 4, !tbaa !53
  %4 = load float, ptr @natglot_a, align 4, !tbaa !53
  %5 = load float, ptr @vwave, align 4, !tbaa !53
  %add = fadd float %5, %4
  store float %add, ptr @vwave, align 4, !tbaa !53
  %6 = load float, ptr @vwave, align 4, !tbaa !53
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 2.800000e-02
  %conv1 = fptrunc double %mul to float
  store float %conv1, ptr %lgtemp, align 4, !tbaa !53
  %7 = load float, ptr %lgtemp, align 4, !tbaa !53
  store float %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  store float 0.000000e+00, ptr @vwave, align 4, !tbaa !53
  store float 0.000000e+00, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %lgtemp) #15
  %8 = load float, ptr %retval, align 4
  ret float %8
}

; Function Attrs: nounwind uwtable
define internal void @pitch_synch_par_reset(ptr noundef %globals, ptr noundef %frame, i64 noundef %ns) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %frame.addr = alloca ptr, align 8
  %ns.addr = alloca i64, align 8
  %temp = alloca i64, align 8
  %temp1 = alloca float, align 4
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  store ptr %frame, ptr %frame.addr, align 8, !tbaa !20
  store i64 %ns, ptr %ns.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp1) #15
  %0 = load i64, ptr @F0hz10, align 8, !tbaa !12
  %cmp = icmp sgt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else62

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %samrate = getelementptr inbounds nuw %struct.klatt_global_t, ptr %1, i32 0, i32 4
  %2 = load i64, ptr %samrate, align 8, !tbaa !37
  %mul = mul nsw i64 40, %2
  %3 = load i64, ptr @F0hz10, align 8, !tbaa !12
  %div = sdiv i64 %mul, %3
  store i64 %div, ptr @T0, align 8, !tbaa !12
  %4 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %5 = load i64, ptr @AVdb, align 8, !tbaa !12
  %call = call float @DBtoLIN(ptr noundef %4, i64 noundef %5)
  store float %call, ptr @amp_voice, align 4, !tbaa !53
  %6 = load i64, ptr @T0, align 8, !tbaa !12
  store i64 %6, ptr @nmod, align 8, !tbaa !12
  %7 = load i64, ptr @AVdb, align 8, !tbaa !12
  %cmp1 = icmp sgt i64 %7, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %8 = load i64, ptr @nmod, align 8, !tbaa !12
  %shr = ashr i64 %8, 1
  store i64 %shr, ptr @nmod, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then
  %9 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %10 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %Aturb = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %10, i32 0, i32 20
  %11 = load i64, ptr %Aturb, align 8, !tbaa !90
  %call3 = call float @DBtoLIN(ptr noundef %9, i64 noundef %11)
  %conv = fpext float %call3 to double
  %mul4 = fmul double %conv, 1.000000e-01
  %conv5 = fptrunc double %mul4 to float
  store float %conv5, ptr @amp_breth, align 4, !tbaa !53
  %12 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %Kopen = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %12, i32 0, i32 19
  %13 = load i64, ptr %Kopen, align 8, !tbaa !133
  %mul6 = mul nsw i64 4, %13
  store i64 %mul6, ptr @nopen, align 8, !tbaa !12
  %14 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %glsource = getelementptr inbounds nuw %struct.klatt_global_t, ptr %14, i32 0, i32 6
  %15 = load i64, ptr %glsource, align 8, !tbaa !40
  %cmp7 = icmp eq i64 %15, 1
  br i1 %cmp7, label %land.lhs.true, label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %16 = load i64, ptr @nopen, align 8, !tbaa !12
  %cmp9 = icmp sgt i64 %16, 263
  br i1 %cmp9, label %if.then11, label %if.end12

if.then11:                                        ; preds = %land.lhs.true
  store i64 263, ptr @nopen, align 8, !tbaa !12
  br label %if.end12

if.end12:                                         ; preds = %if.then11, %land.lhs.true, %if.end
  %17 = load i64, ptr @nopen, align 8, !tbaa !12
  %18 = load i64, ptr @T0, align 8, !tbaa !12
  %sub = sub nsw i64 %18, 1
  %cmp13 = icmp sge i64 %17, %sub
  br i1 %cmp13, label %if.then15, label %if.end20

if.then15:                                        ; preds = %if.end12
  %19 = load i64, ptr @T0, align 8, !tbaa !12
  %sub16 = sub nsw i64 %19, 2
  store i64 %sub16, ptr @nopen, align 8, !tbaa !12
  %20 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %quiet_flag = getelementptr inbounds nuw %struct.klatt_global_t, ptr %20, i32 0, i32 1
  %21 = load i32, ptr %quiet_flag, align 4, !tbaa !39
  %tobool = icmp ne i32 %21, 0
  br i1 %tobool, label %if.end19, label %if.then17

if.then17:                                        ; preds = %if.then15
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str.45.564)
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.then15
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end12
  %22 = load i64, ptr @nopen, align 8, !tbaa !12
  %cmp21 = icmp slt i64 %22, 40
  br i1 %cmp21, label %if.then23, label %if.end30

if.then23:                                        ; preds = %if.end20
  store i64 40, ptr @nopen, align 8, !tbaa !12
  %23 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %quiet_flag24 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %quiet_flag24, align 4, !tbaa !39
  %tobool25 = icmp ne i32 %24, 0
  br i1 %tobool25, label %if.end29, label %if.then26

if.then26:                                        ; preds = %if.then23
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str.46.565)
  %25 = load i64, ptr @nopen, align 8, !tbaa !12
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.47.566, i64 noundef %25)
  br label %if.end29

if.end29:                                         ; preds = %if.then26, %if.then23
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end20
  %26 = load i64, ptr @nopen, align 8, !tbaa !12
  %sub31 = sub nsw i64 %26, 40
  %arrayidx = getelementptr inbounds [224 x i16], ptr @natglot, i64 0, i64 %sub31
  %27 = load i16, ptr %arrayidx, align 2, !tbaa !23
  %conv32 = sitofp i16 %27 to float
  store float %conv32, ptr @natglot_b, align 4, !tbaa !53
  %28 = load float, ptr @natglot_b, align 4, !tbaa !53
  %29 = load i64, ptr @nopen, align 8, !tbaa !12
  %conv33 = sitofp i64 %29 to float
  %mul34 = fmul float %28, %conv33
  %conv35 = fpext float %mul34 to double
  %mul36 = fmul double %conv35, 3.330000e-01
  %conv37 = fptrunc double %mul36 to float
  store float %conv37, ptr @natglot_a, align 4, !tbaa !53
  %30 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %samrate38 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %30, i32 0, i32 4
  %31 = load i64, ptr %samrate38, align 8, !tbaa !37
  %32 = load i64, ptr @nopen, align 8, !tbaa !12
  %div39 = sdiv i64 %31, %32
  store i64 %div39, ptr %temp, align 8, !tbaa !12
  %33 = load i64, ptr %temp, align 8, !tbaa !12
  call void @setabc(i64 noundef 0, i64 noundef %33, ptr noundef @rgl)
  %34 = load i64, ptr @nopen, align 8, !tbaa !12
  %conv40 = sitofp i64 %34 to double
  %mul41 = fmul double %conv40, 8.330000e-03
  %conv42 = fptrunc double %mul41 to float
  store float %conv42, ptr %temp1, align 4, !tbaa !53
  %35 = load float, ptr %temp1, align 4, !tbaa !53
  %36 = load float, ptr %temp1, align 4, !tbaa !53
  %mul43 = fmul float %35, %36
  %37 = load float, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rgl, i32 0, i32 1), align 8, !tbaa !134
  %mul44 = fmul float %37, %mul43
  store float %mul44, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rgl, i32 0, i32 1), align 8, !tbaa !134
  %38 = load i64, ptr @T0, align 8, !tbaa !12
  %39 = load i64, ptr @nopen, align 8, !tbaa !12
  %sub45 = sub nsw i64 %38, %39
  store i64 %sub45, ptr %temp, align 8, !tbaa !12
  %40 = load i64, ptr @Kskew, align 8, !tbaa !12
  %41 = load i64, ptr %temp, align 8, !tbaa !12
  %cmp46 = icmp sgt i64 %40, %41
  br i1 %cmp46, label %if.then48, label %if.end55

if.then48:                                        ; preds = %if.end30
  %42 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %quiet_flag49 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %42, i32 0, i32 1
  %43 = load i32, ptr %quiet_flag49, align 4, !tbaa !39
  %tobool50 = icmp ne i32 %43, 0
  br i1 %tobool50, label %if.end54, label %if.then51

if.then51:                                        ; preds = %if.then48
  %44 = load i64, ptr @Kskew, align 8, !tbaa !12
  %45 = load i64, ptr @T0, align 8, !tbaa !12
  %46 = load i64, ptr @nopen, align 8, !tbaa !12
  %sub52 = sub nsw i64 %45, %46
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.48.567, i64 noundef %44, i64 noundef %sub52)
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.then48
  %47 = load i64, ptr %temp, align 8, !tbaa !12
  store i64 %47, ptr @Kskew, align 8, !tbaa !12
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.end30
  %48 = load i64, ptr @skew, align 8, !tbaa !12
  %cmp56 = icmp sge i64 %48, 0
  br i1 %cmp56, label %if.then58, label %if.else

if.then58:                                        ; preds = %if.end55
  %49 = load i64, ptr @Kskew, align 8, !tbaa !12
  store i64 %49, ptr @skew, align 8, !tbaa !12
  br label %if.end60

if.else:                                          ; preds = %if.end55
  %50 = load i64, ptr @Kskew, align 8, !tbaa !12
  %sub59 = sub nsw i64 0, %50
  store i64 %sub59, ptr @skew, align 8, !tbaa !12
  br label %if.end60

if.end60:                                         ; preds = %if.else, %if.then58
  %51 = load i64, ptr @T0, align 8, !tbaa !12
  %52 = load i64, ptr @skew, align 8, !tbaa !12
  %add = add nsw i64 %51, %52
  store i64 %add, ptr @T0, align 8, !tbaa !12
  %53 = load i64, ptr @skew, align 8, !tbaa !12
  %sub61 = sub nsw i64 0, %53
  store i64 %sub61, ptr @skew, align 8, !tbaa !12
  br label %if.end63

if.else62:                                        ; preds = %entry
  store i64 4, ptr @T0, align 8, !tbaa !12
  store float 0.000000e+00, ptr @amp_voice, align 4, !tbaa !53
  %54 = load i64, ptr @T0, align 8, !tbaa !12
  store i64 %54, ptr @nmod, align 8, !tbaa !12
  store float 0.000000e+00, ptr @amp_breth, align 4, !tbaa !53
  store float 0.000000e+00, ptr @natglot_a, align 4, !tbaa !53
  store float 0.000000e+00, ptr @natglot_b, align 4, !tbaa !53
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.end60
  %55 = load i64, ptr @T0, align 8, !tbaa !12
  %cmp64 = icmp ne i64 %55, 4
  br i1 %cmp64, label %if.then68, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end63
  %56 = load i64, ptr %ns.addr, align 8, !tbaa !12
  %cmp66 = icmp eq i64 %56, 0
  br i1 %cmp66, label %if.then68, label %if.end81

if.then68:                                        ; preds = %lor.lhs.false, %if.end63
  %57 = load ptr, ptr %frame.addr, align 8, !tbaa !20
  %TLTdb = getelementptr inbounds nuw %struct.klatt_frame_t, ptr %57, i32 0, i32 21
  %58 = load i64, ptr %TLTdb, align 8, !tbaa !136
  %conv69 = sitofp i64 %58 to double
  %mul70 = fmul double 3.300000e-02, %conv69
  %conv71 = fptrunc double %mul70 to float
  store float %conv71, ptr @decay, align 4, !tbaa !53
  %59 = load float, ptr @decay, align 4, !tbaa !53
  %conv72 = fpext float %59 to double
  %cmp73 = fcmp ogt double %conv72, 0.000000e+00
  br i1 %cmp73, label %if.then75, label %if.else79

if.then75:                                        ; preds = %if.then68
  %60 = load float, ptr @decay, align 4, !tbaa !53
  %conv76 = fpext float %60 to double
  %sub77 = fsub double 1.000000e+00, %conv76
  %conv78 = fptrunc double %sub77 to float
  store float %conv78, ptr @onemd, align 4, !tbaa !53
  br label %if.end80

if.else79:                                        ; preds = %if.then68
  store float 1.000000e+00, ptr @onemd, align 4, !tbaa !53
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then75
  br label %if.end81

if.end81:                                         ; preds = %if.end80, %lor.lhs.false
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @resonator(ptr noundef %r, float noundef %input) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %input.addr = alloca float, align 4
  %x = alloca float, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !20
  store float %input, ptr %input.addr, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %a = getelementptr inbounds nuw %struct.resonator_t, ptr %0, i32 0, i32 1
  %1 = load float, ptr %a, align 8, !tbaa !134
  %2 = load float, ptr %input.addr, align 4, !tbaa !53
  %3 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %b = getelementptr inbounds nuw %struct.resonator_t, ptr %3, i32 0, i32 2
  %4 = load float, ptr %b, align 4, !tbaa !137
  %5 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p1 = getelementptr inbounds nuw %struct.resonator_t, ptr %5, i32 0, i32 4
  %6 = load float, ptr %p1, align 4, !tbaa !138
  %mul1 = fmul float %4, %6
  %7 = call float @llvm.fmuladd.f32(float %1, float %2, float %mul1)
  %8 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %c = getelementptr inbounds nuw %struct.resonator_t, ptr %8, i32 0, i32 3
  %9 = load float, ptr %c, align 8, !tbaa !139
  %10 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p2 = getelementptr inbounds nuw %struct.resonator_t, ptr %10, i32 0, i32 5
  %11 = load float, ptr %p2, align 8, !tbaa !140
  %12 = call float @llvm.fmuladd.f32(float %9, float %11, float %7)
  store float %12, ptr %x, align 4, !tbaa !53
  %13 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p12 = getelementptr inbounds nuw %struct.resonator_t, ptr %13, i32 0, i32 4
  %14 = load float, ptr %p12, align 4, !tbaa !138
  %15 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p23 = getelementptr inbounds nuw %struct.resonator_t, ptr %15, i32 0, i32 5
  store float %14, ptr %p23, align 8, !tbaa !140
  %16 = load float, ptr %x, align 4, !tbaa !53
  %17 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p14 = getelementptr inbounds nuw %struct.resonator_t, ptr %17, i32 0, i32 4
  store float %16, ptr %p14, align 4, !tbaa !138
  %18 = load float, ptr %x, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15
  ret float %18
}

; Function Attrs: nounwind uwtable
define internal float @antiresonator(ptr noundef %r, float noundef %input) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %input.addr = alloca float, align 4
  %x = alloca float, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !20
  store float %input, ptr %input.addr, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15
  %0 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %a = getelementptr inbounds nuw %struct.resonator_t, ptr %0, i32 0, i32 1
  %1 = load float, ptr %a, align 8, !tbaa !134
  %2 = load float, ptr %input.addr, align 4, !tbaa !53
  %3 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %b = getelementptr inbounds nuw %struct.resonator_t, ptr %3, i32 0, i32 2
  %4 = load float, ptr %b, align 4, !tbaa !137
  %5 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p1 = getelementptr inbounds nuw %struct.resonator_t, ptr %5, i32 0, i32 4
  %6 = load float, ptr %p1, align 4, !tbaa !138
  %mul1 = fmul float %4, %6
  %7 = call float @llvm.fmuladd.f32(float %1, float %2, float %mul1)
  %8 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %c = getelementptr inbounds nuw %struct.resonator_t, ptr %8, i32 0, i32 3
  %9 = load float, ptr %c, align 8, !tbaa !139
  %10 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p2 = getelementptr inbounds nuw %struct.resonator_t, ptr %10, i32 0, i32 5
  %11 = load float, ptr %p2, align 8, !tbaa !140
  %12 = call float @llvm.fmuladd.f32(float %9, float %11, float %7)
  store float %12, ptr %x, align 4, !tbaa !53
  %13 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p12 = getelementptr inbounds nuw %struct.resonator_t, ptr %13, i32 0, i32 4
  %14 = load float, ptr %p12, align 4, !tbaa !138
  %15 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p23 = getelementptr inbounds nuw %struct.resonator_t, ptr %15, i32 0, i32 5
  store float %14, ptr %p23, align 8, !tbaa !140
  %16 = load float, ptr %input.addr, align 4, !tbaa !53
  %17 = load ptr, ptr %r.addr, align 8, !tbaa !20
  %p14 = getelementptr inbounds nuw %struct.resonator_t, ptr %17, i32 0, i32 4
  store float %16, ptr %p14, align 4, !tbaa !138
  %18 = load float, ptr %x, align 4, !tbaa !53
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15
  ret float %18
}

; Function Attrs: nounwind uwtable
define internal signext i16 @clip(ptr noundef %globals, float noundef %input) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %input.addr = alloca float, align 4
  %temp = alloca i64, align 8
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  store float %input, ptr %input.addr, align 4, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp) #15
  %0 = load float, ptr %input.addr, align 4, !tbaa !53
  %conv = fptosi float %0 to i64
  store i64 %conv, ptr %temp, align 8, !tbaa !12
  %1 = load i64, ptr %temp, align 8, !tbaa !12
  %cmp = icmp slt i64 %1, -32767
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %3 = load i64, ptr %temp, align 8, !tbaa !12
  %sub = sub nsw i64 0, %3
  call void @overload_warning(ptr noundef %2, i64 noundef %sub)
  store i64 -32767, ptr %temp, align 8, !tbaa !12
  br label %if.end5

if.else:                                          ; preds = %entry
  %4 = load i64, ptr %temp, align 8, !tbaa !12
  %cmp2 = icmp sgt i64 %4, 32767
  br i1 %cmp2, label %if.then4, label %if.end

if.then4:                                         ; preds = %if.else
  %5 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %6 = load i64, ptr %temp, align 8, !tbaa !12
  call void @overload_warning(ptr noundef %5, i64 noundef %6)
  store i64 32767, ptr %temp, align 8, !tbaa !12
  br label %if.end

if.end:                                           ; preds = %if.then4, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end, %if.then
  %7 = load i64, ptr %temp, align 8, !tbaa !12
  %conv6 = trunc i64 %7 to i16
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp) #15
  ret i16 %conv6
}

; Function Attrs: nounwind uwtable
define internal void @overload_warning(ptr noundef %globals, i64 noundef %arg) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %arg.addr = alloca i64, align 8
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  store i64 %arg, ptr %arg.addr, align 8, !tbaa !12
  %0 = load i32, ptr @warnsw, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %1 = load i32, ptr @warnsw, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr @warnsw, align 4, !tbaa !5
  %2 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %quiet_flag = getelementptr inbounds nuw %struct.klatt_global_t, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %quiet_flag, align 4, !tbaa !39
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then1

if.then1:                                         ; preds = %if.then
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.85.544)
  %4 = load i64, ptr %arg.addr, align 8, !tbaa !12
  %call2 = call float @dBconvert(i64 noundef %4)
  %conv = fpext float %call2 to double
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str.86.545, double noundef %conv)
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end4

if.end4:                                          ; preds = %if.end, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal float @dBconvert(i64 noundef %arg) #0 {
entry:
  %arg.addr = alloca i64, align 8
  store i64 %arg, ptr %arg.addr, align 8, !tbaa !12
  %0 = load i64, ptr %arg.addr, align 8, !tbaa !12
  %conv = sitofp i64 %0 to double
  %div = fdiv double %conv, 3.276700e+04
  %call = call double @log10(double noundef %div) #15, !tbaa !5
  %mul = fmul double 2.000000e+01, %call
  %conv1 = fptrunc double %mul to float
  ret float %conv1
}

; Function Attrs: nounwind
declare double @log10(double noundef) #5

; Function Attrs: nounwind uwtable
define internal float @DBtoLIN(ptr noundef %globals, i64 noundef %dB) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %dB.addr = alloca i64, align 8
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  store i64 %dB, ptr %dB.addr, align 8, !tbaa !12
  %0 = load i64, ptr %dB.addr, align 8, !tbaa !12
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i64 0, ptr %dB.addr, align 8, !tbaa !12
  br label %if.end5

if.else:                                          ; preds = %entry
  %1 = load i64, ptr %dB.addr, align 8, !tbaa !12
  %cmp1 = icmp sge i64 %1, 88
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.else
  %2 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %quiet_flag = getelementptr inbounds nuw %struct.klatt_global_t, ptr %2, i32 0, i32 1
  %3 = load i32, ptr %quiet_flag, align 4, !tbaa !39
  %tobool = icmp ne i32 %3, 0
  br i1 %tobool, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then2
  %4 = load i64, ptr %dB.addr, align 8, !tbaa !12
  %call = call i32 (ptr, ...) @printf(ptr noundef @.str.44.569, i64 noundef %4)
  br label %if.end

if.end:                                           ; preds = %if.then3, %if.then2
  store i64 87, ptr %dB.addr, align 8, !tbaa !12
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.else
  br label %if.end5

if.end5:                                          ; preds = %if.end4, %if.then
  %5 = load i64, ptr %dB.addr, align 8, !tbaa !12
  %arrayidx = getelementptr inbounds [88 x float], ptr @amptable, i64 0, i64 %5
  %6 = load float, ptr %arrayidx, align 4, !tbaa !53
  %conv = fpext float %6 to double
  %mul = fmul double %conv, 1.000000e-03
  %conv6 = fptrunc double %mul to float
  ret float %conv6
}

; Function Attrs: nounwind uwtable
define internal void @setabc(i64 noundef %f, i64 noundef %bw, ptr noundef %rp) #0 {
entry:
  %f.addr = alloca i64, align 8
  %bw.addr = alloca i64, align 8
  %rp.addr = alloca ptr, align 8
  %arg = alloca double, align 8
  %r = alloca float, align 4
  store i64 %f, ptr %f.addr, align 8, !tbaa !12
  store i64 %bw, ptr %bw.addr, align 8, !tbaa !12
  store ptr %rp, ptr %rp.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %arg) #15
  %0 = load float, ptr @minus_pi_t, align 4, !tbaa !53
  %1 = load i64, ptr %bw.addr, align 8, !tbaa !12
  %conv = sitofp i64 %1 to float
  %mul = fmul float %0, %conv
  %conv1 = fpext float %mul to double
  store double %conv1, ptr %arg, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #15
  %2 = load double, ptr %arg, align 8, !tbaa !35
  %call = call double @exp(double noundef %2) #15, !tbaa !5
  %conv2 = fptrunc double %call to float
  store float %conv2, ptr %r, align 4, !tbaa !53
  %3 = load float, ptr %r, align 4, !tbaa !53
  %4 = load float, ptr %r, align 4, !tbaa !53
  %mul3 = fmul float %3, %4
  %fneg = fneg float %mul3
  %5 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %c = getelementptr inbounds nuw %struct.resonator_t, ptr %5, i32 0, i32 3
  store float %fneg, ptr %c, align 8, !tbaa !139
  %6 = load float, ptr @two_pi_t, align 4, !tbaa !53
  %7 = load i64, ptr %f.addr, align 8, !tbaa !12
  %conv4 = sitofp i64 %7 to float
  %mul5 = fmul float %6, %conv4
  %conv6 = fpext float %mul5 to double
  store double %conv6, ptr %arg, align 8, !tbaa !35
  %8 = load float, ptr %r, align 4, !tbaa !53
  %conv7 = fpext float %8 to double
  %9 = load double, ptr %arg, align 8, !tbaa !35
  %call8 = call double @cos(double noundef %9) #15, !tbaa !5
  %mul9 = fmul double %conv7, %call8
  %mul10 = fmul double %mul9, 2.000000e+00
  %conv11 = fptrunc double %mul10 to float
  %10 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %b = getelementptr inbounds nuw %struct.resonator_t, ptr %10, i32 0, i32 2
  store float %conv11, ptr %b, align 4, !tbaa !137
  %11 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %b12 = getelementptr inbounds nuw %struct.resonator_t, ptr %11, i32 0, i32 2
  %12 = load float, ptr %b12, align 4, !tbaa !137
  %conv13 = fpext float %12 to double
  %sub = fsub double 1.000000e+00, %conv13
  %13 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %c14 = getelementptr inbounds nuw %struct.resonator_t, ptr %13, i32 0, i32 3
  %14 = load float, ptr %c14, align 8, !tbaa !139
  %conv15 = fpext float %14 to double
  %sub16 = fsub double %sub, %conv15
  %conv17 = fptrunc double %sub16 to float
  %15 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %a = getelementptr inbounds nuw %struct.resonator_t, ptr %15, i32 0, i32 1
  store float %conv17, ptr %a, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %arg) #15
  ret void
}

; Function Attrs: nounwind
declare double @exp(double noundef) #5

; Function Attrs: nounwind
declare double @cos(double noundef) #5

; Function Attrs: nounwind
declare double @sin(double noundef) #5

; Function Attrs: nounwind uwtable
define internal void @setzeroabc(i64 noundef %f, i64 noundef %bw, ptr noundef %rp) #0 {
entry:
  %f.addr = alloca i64, align 8
  %bw.addr = alloca i64, align 8
  %rp.addr = alloca ptr, align 8
  store i64 %f, ptr %f.addr, align 8, !tbaa !12
  store i64 %bw, ptr %bw.addr, align 8, !tbaa !12
  store ptr %rp, ptr %rp.addr, align 8, !tbaa !20
  %0 = load i64, ptr %f.addr, align 8, !tbaa !12
  %1 = load i64, ptr %bw.addr, align 8, !tbaa !12
  %2 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  call void @setabc(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %a = getelementptr inbounds nuw %struct.resonator_t, ptr %3, i32 0, i32 1
  %4 = load float, ptr %a, align 8, !tbaa !134
  %conv = fpext float %4 to double
  %div = fdiv double 1.000000e+00, %conv
  %conv1 = fptrunc double %div to float
  %5 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %a2 = getelementptr inbounds nuw %struct.resonator_t, ptr %5, i32 0, i32 1
  store float %conv1, ptr %a2, align 8, !tbaa !134
  %6 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %a3 = getelementptr inbounds nuw %struct.resonator_t, ptr %6, i32 0, i32 1
  %7 = load float, ptr %a3, align 8, !tbaa !134
  %fneg = fneg float %7
  %8 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %b = getelementptr inbounds nuw %struct.resonator_t, ptr %8, i32 0, i32 2
  %9 = load float, ptr %b, align 4, !tbaa !137
  %mul = fmul float %9, %fneg
  store float %mul, ptr %b, align 4, !tbaa !137
  %10 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %a4 = getelementptr inbounds nuw %struct.resonator_t, ptr %10, i32 0, i32 1
  %11 = load float, ptr %a4, align 8, !tbaa !134
  %fneg5 = fneg float %11
  %12 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %c = getelementptr inbounds nuw %struct.resonator_t, ptr %12, i32 0, i32 3
  %13 = load float, ptr %c, align 8, !tbaa !139
  %mul6 = fmul float %13, %fneg5
  store float %mul6, ptr %c, align 8, !tbaa !139
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @setabcg(i64 noundef %f, i64 noundef %bw, ptr noundef %rp, float noundef %gain) #0 {
entry:
  %f.addr = alloca i64, align 8
  %bw.addr = alloca i64, align 8
  %rp.addr = alloca ptr, align 8
  %gain.addr = alloca float, align 4
  store i64 %f, ptr %f.addr, align 8, !tbaa !12
  store i64 %bw, ptr %bw.addr, align 8, !tbaa !12
  store ptr %rp, ptr %rp.addr, align 8, !tbaa !20
  store float %gain, ptr %gain.addr, align 4, !tbaa !53
  %0 = load i64, ptr %f.addr, align 8, !tbaa !12
  %1 = load i64, ptr %bw.addr, align 8, !tbaa !12
  %2 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  call void @setabc(i64 noundef %0, i64 noundef %1, ptr noundef %2)
  %3 = load float, ptr %gain.addr, align 4, !tbaa !53
  %4 = load ptr, ptr %rp.addr, align 8, !tbaa !20
  %a = getelementptr inbounds nuw %struct.resonator_t, ptr %4, i32 0, i32 1
  %5 = load float, ptr %a, align 8, !tbaa !134
  %mul = fmul float %5, %3
  store float %mul, ptr %a, align 8, !tbaa !134
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @parwave_init(ptr noundef %globals) #0 {
entry:
  %globals.addr = alloca ptr, align 8
  %FLPhz = alloca i64, align 8
  %BLPhz = alloca i64, align 8
  store ptr %globals, ptr %globals.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %FLPhz) #15
  %0 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %samrate = getelementptr inbounds nuw %struct.klatt_global_t, ptr %0, i32 0, i32 4
  %1 = load i64, ptr %samrate, align 8, !tbaa !37
  %mul = mul nsw i64 950, %1
  %div = sdiv i64 %mul, 10000
  store i64 %div, ptr %FLPhz, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr %BLPhz) #15
  %2 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %samrate1 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %2, i32 0, i32 4
  %3 = load i64, ptr %samrate1, align 8, !tbaa !37
  %mul2 = mul nsw i64 630, %3
  %div3 = sdiv i64 %mul2, 10000
  store i64 %div3, ptr %BLPhz, align 8, !tbaa !12
  %4 = load ptr, ptr %globals.addr, align 8, !tbaa !20
  %samrate4 = getelementptr inbounds nuw %struct.klatt_global_t, ptr %4, i32 0, i32 4
  %5 = load i64, ptr %samrate4, align 8, !tbaa !37
  %conv = sitofp i64 %5 to double
  %div5 = fdiv double 0xC00921FB5A7ED197, %conv
  %conv6 = fptrunc double %div5 to float
  store float %conv6, ptr @minus_pi_t, align 4, !tbaa !53
  %6 = load float, ptr @minus_pi_t, align 4, !tbaa !53
  %conv7 = fpext float %6 to double
  %mul8 = fmul double -2.000000e+00, %conv7
  %conv9 = fptrunc double %mul8 to float
  store float %conv9, ptr @two_pi_t, align 4, !tbaa !53
  %7 = load i64, ptr %FLPhz, align 8, !tbaa !12
  %8 = load i64, ptr %BLPhz, align 8, !tbaa !12
  call void @setabc(i64 noundef %7, i64 noundef %8, ptr noundef @rlp)
  store i64 0, ptr @nper, align 8, !tbaa !12
  store i64 0, ptr @T0, align 8, !tbaa !12
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rnpp, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rnpp, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r1p, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r1p, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r2p, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r2p, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r3p, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r3p, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r4p, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r4p, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r5p, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r5p, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r6p, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r6p, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r1c, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r1c, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r2c, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r2c, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r3c, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r3c, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r4c, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r4c, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r5c, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r5c, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r6c, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r6c, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r7c, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r7c, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r8c, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @r8c, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rnpc, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rnpc, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rnz, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rnz, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rgl, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rgl, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rlp, i32 0, i32 4), align 4, !tbaa !138
  store float 0.000000e+00, ptr getelementptr inbounds nuw (%struct.resonator_t, ptr @rlp, i32 0, i32 5), align 8, !tbaa !140
  store float 0.000000e+00, ptr @vlast, align 4, !tbaa !53
  store float 0.000000e+00, ptr @nlast, align 4, !tbaa !53
  store float 0.000000e+00, ptr @glotlast, align 4, !tbaa !53
  store i32 0, ptr @warnsw, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %BLPhz) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %FLPhz) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @phone_append(ptr noundef %p, i32 noundef %ch) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %ch.addr = alloca i32, align 4
  %s = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !20
  store i32 %ch, ptr %ch.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  %0 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %1, i32 0, i32 1
  %2 = load i32, ptr %items, align 8, !tbaa !31
  %call = call ptr @darray_find.741(ptr noundef %0, i32 noundef %2)
  store ptr %call, ptr %s, align 8, !tbaa !9
  %3 = load i32, ptr %ch.addr, align 4, !tbaa !5
  %conv = trunc i32 %3 to i8
  %4 = load ptr, ptr %s, align 8, !tbaa !9
  store i8 %conv, ptr %4, align 1, !tbaa !14
  %5 = load i32, ptr %ch.addr, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  ret i32 %5
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @darray_find.741(ptr noundef %a, i32 noundef %n) #10 {
entry:
  %retval = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !20
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %alloc = getelementptr inbounds nuw %struct.darray_t, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %alloc, align 4, !tbaa !30
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %items, align 8, !tbaa !31
  %cmp1 = icmp ult i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data = getelementptr inbounds nuw %struct.darray_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %data, align 8, !tbaa !28
  %8 = load i32, ptr %n.addr, align 4, !tbaa !5
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize = getelementptr inbounds nuw %struct.darray_t, ptr %9, i32 0, i32 3
  %10 = load i16, ptr %esize, align 8, !tbaa !32
  %conv = zext i16 %10 to i32
  %mul = mul i32 %8, %conv
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %12 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call = call ptr @Darray_find(ptr noundef %11, i32 noundef %12)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local i32 @phone_to_elm(ptr noundef %phone, i32 noundef %n, ptr noundef %elm) #0 {
entry:
  %phone.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %elm.addr = alloca ptr, align 8
  %stress = alloca i32, align 4
  %s = alloca ptr, align 8
  %t = alloca i32, align 4
  %limit = alloca ptr, align 8
  %e = alloca ptr, align 8
  %n4 = alloca i32, align 4
  %x = alloca i32, align 4
  %p = alloca ptr, align 8
  %ch = alloca i8, align 1
  store ptr %phone, ptr %phone.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %elm, ptr %elm.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %stress) #15
  store i32 0, ptr %stress, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  %0 = load ptr, ptr %phone.addr, align 8, !tbaa !9
  store ptr %0, ptr %s, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #15
  store i32 0, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %limit) #15
  %1 = load ptr, ptr %s, align 8, !tbaa !9
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i8, ptr %1, i64 %idx.ext
  store ptr %add.ptr, ptr %limit, align 8, !tbaa !9
  %3 = load ptr, ptr @phtoelm, align 8, !tbaa !141
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @enter_phonemes()
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  br label %while.cond

while.cond:                                       ; preds = %if.end27, %if.end
  %4 = load ptr, ptr %s, align 8, !tbaa !9
  %5 = load ptr, ptr %limit, align 8, !tbaa !9
  %cmp = icmp ult ptr %4, %5
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %6 = load ptr, ptr %s, align 8, !tbaa !9
  %7 = load i8, ptr %6, align 1, !tbaa !14
  %conv = sext i8 %7 to i32
  %tobool1 = icmp ne i32 %conv, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %8 = phi i1 [ false, %while.cond ], [ %tobool1, %land.rhs ]
  br i1 %8, label %while.body, label %while.end28

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #15
  %call = call ptr @trie_lookup(ptr noundef @phtoelm, ptr noundef %s)
  store ptr %call, ptr %e, align 8, !tbaa !9
  %9 = load ptr, ptr %e, align 8, !tbaa !9
  %tobool2 = icmp ne ptr %9, null
  br i1 %tobool2, label %if.then3, label %if.else

if.then3:                                         ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %n4) #15
  %10 = load ptr, ptr %e, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %e, align 8, !tbaa !9
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %conv5 = sext i8 %11 to i32
  store i32 %conv5, ptr %n4, align 4, !tbaa !5
  br label %while.cond6

while.cond6:                                      ; preds = %if.end15, %if.then3
  %12 = load i32, ptr %n4, align 4, !tbaa !5
  %dec = add nsw i32 %12, -1
  store i32 %dec, ptr %n4, align 4, !tbaa !5
  %cmp7 = icmp sgt i32 %12, 0
  br i1 %cmp7, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond6
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #15
  %13 = load ptr, ptr %e, align 8, !tbaa !9
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %13, i32 1
  store ptr %incdec.ptr10, ptr %e, align 8, !tbaa !9
  %14 = load i8, ptr %13, align 1, !tbaa !14
  %conv11 = sext i8 %14 to i32
  store i32 %conv11, ptr %x, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15
  %15 = load i32, ptr %x, align 4, !tbaa !5
  %idxprom = sext i32 %15 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom
  store ptr %arrayidx, ptr %p, align 8, !tbaa !49
  %16 = load ptr, ptr %elm.addr, align 8, !tbaa !20
  %17 = load i32, ptr %x, align 4, !tbaa !5
  %call12 = call i32 @phone_append(ptr noundef %16, i32 noundef %17)
  %18 = load ptr, ptr %p, align 8, !tbaa !49
  %feat = getelementptr inbounds nuw %struct.Elm_s, ptr %18, i32 0, i32 7
  %19 = load i64, ptr %feat, align 8, !tbaa !81
  %and = and i64 %19, 268435456
  %tobool13 = icmp ne i64 %and, 0
  br i1 %tobool13, label %if.end15, label %if.then14

if.then14:                                        ; preds = %while.body9
  store i32 0, ptr %stress, align 4, !tbaa !5
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %while.body9
  %20 = load ptr, ptr %elm.addr, align 8, !tbaa !20
  %21 = load i32, ptr %stress, align 4, !tbaa !5
  %22 = load ptr, ptr %p, align 8, !tbaa !49
  %du = getelementptr inbounds nuw %struct.Elm_s, ptr %22, i32 0, i32 2
  %23 = load i8, ptr %du, align 1, !tbaa !143
  %conv16 = sext i8 %23 to i32
  %24 = load ptr, ptr %p, align 8, !tbaa !49
  %ud = getelementptr inbounds nuw %struct.Elm_s, ptr %24, i32 0, i32 3
  %25 = load i8, ptr %ud, align 2, !tbaa !144
  %conv17 = sext i8 %25 to i32
  %add = add nsw i32 %conv16, %conv17
  %div = sdiv i32 %add, 2
  %26 = load i32, ptr @speed, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %26
  %call18 = call i32 @phone_append(ptr noundef %20, i32 noundef %mul)
  %27 = load i32, ptr %t, align 4, !tbaa !5
  %add19 = add i32 %27, %call18
  store i32 %add19, ptr %t, align 4, !tbaa !5
  %28 = load ptr, ptr %elm.addr, align 8, !tbaa !20
  %29 = load i32, ptr %stress, align 4, !tbaa !5
  %call20 = call i32 @phone_append(ptr noundef %28, i32 noundef %29)
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #15
  br label %while.cond6, !llvm.loop !145

while.end:                                        ; preds = %while.cond6
  call void @llvm.lifetime.end.p0(i64 4, ptr %n4) #15
  br label %if.end27

if.else:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15
  %30 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr21, ptr %s, align 8, !tbaa !9
  %31 = load i8, ptr %30, align 1, !tbaa !14
  store i8 %31, ptr %ch, align 1, !tbaa !14
  %32 = load i8, ptr %ch, align 1, !tbaa !14
  %conv22 = sext i8 %32 to i32
  switch i32 %conv22, label %sw.default [
    i32 39, label %sw.bb
    i32 44, label %sw.bb23
    i32 43, label %sw.bb24
    i32 45, label %sw.epilog
  ]

sw.bb:                                            ; preds = %if.else
  store i32 3, ptr %stress, align 4, !tbaa !5
  br label %sw.epilog

sw.bb23:                                          ; preds = %if.else
  store i32 2, ptr %stress, align 4, !tbaa !5
  br label %sw.epilog

sw.bb24:                                          ; preds = %if.else
  store i32 1, ptr %stress, align 4, !tbaa !5
  br label %sw.epilog

sw.default:                                       ; preds = %if.else
  %33 = load ptr, ptr @stderr, align 8, !tbaa !26
  %34 = load i8, ptr %ch, align 1, !tbaa !14
  %conv25 = sext i8 %34 to i32
  %35 = load i32, ptr %n.addr, align 4, !tbaa !5
  %36 = load ptr, ptr %phone.addr, align 8, !tbaa !9
  %call26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.1.742, i32 noundef %conv25, i32 noundef %35, ptr noundef %36) #15
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %if.else, %sw.bb24, %sw.bb23, %sw.bb
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15
  br label %if.end27

if.end27:                                         ; preds = %sw.epilog, %while.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #15
  br label %while.cond, !llvm.loop !146

while.end28:                                      ; preds = %land.end
  %37 = load i32, ptr %t, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %limit) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %stress) #15
  ret i32 %37
}

; Function Attrs: nounwind uwtable
define internal void @enter_phonemes() #0 {
entry:
  call void (ptr, ...) @enter(ptr noundef @.str.2.743, ptr noundef @.str.3.744, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.4.745, ptr noundef @.str.5.746, ptr noundef @.str.6.747, ptr noundef @.str.7.748, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.8.749, ptr noundef @.str.9.750, ptr noundef @.str.10.751, ptr noundef @.str.11.752, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.12.753, ptr noundef @.str.13.754, ptr noundef @.str.14.755, ptr noundef @.str.15.756, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.16.757, ptr noundef @.str.17.758, ptr noundef @.str.18.759, ptr noundef @.str.19.760, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.20.761, ptr noundef @.str.21.762, ptr noundef @.str.22.763, ptr noundef @.str.23.764, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.24.765, ptr noundef @.str.25.766, ptr noundef @.str.26.767, ptr noundef @.str.27.768, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.28.769, ptr noundef @.str.29.770, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.30.771, ptr noundef @.str.31.772, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.31.772, ptr noundef @.str.32.773, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.33.774, ptr noundef @.str.34.775, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.9.750, ptr noundef @.str.35.776, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.36.777, ptr noundef @.str.37.778, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.37.778, ptr noundef @.str.38.779, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.39.780, ptr noundef @.str.40.781, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.41.782, ptr noundef @.str.42.783, ptr noundef @.str.43.784, ptr noundef @.str.42.783, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.21.762, ptr noundef @.str.44.785, ptr noundef @.str.43.784, ptr noundef @.str.45.786, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.46.787, ptr noundef @.str.47.788, ptr noundef @.str.43.784, ptr noundef @.str.48.789, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.47.788, ptr noundef @.str.49.790, ptr noundef @.str.43.784, ptr noundef @.str.49.790, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.50.791, ptr noundef @.str.51.792, ptr noundef @.str.52.793, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.53.794, ptr noundef @.str.54.795, ptr noundef @.str.55.796, ptr noundef @.str.43.784, ptr noundef @.str.55.796, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.56.797, ptr noundef @.str.57.798, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.58.799, ptr noundef @.str.59.800, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.60.801, ptr noundef @.str.59.800, ptr noundef @.str.43.784, ptr noundef @.str.59.800, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.59.800, ptr noundef @.str.61.802, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.62.803, ptr noundef @.str.63.804, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.64.805, ptr noundef @.str.65.806, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.66.807, ptr noundef @.str.43.784, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.67.808, ptr noundef @.str.68.809, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.69.810, ptr noundef @.str.69.810, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.70.811, ptr noundef @.str.71.812, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.72.813, ptr noundef @.str.73.814, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.42.783, ptr noundef @.str.74.815, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.75.816, ptr noundef @.str.76.817, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.74.815, ptr noundef @.str.77.818, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.78.819, ptr noundef @.str.79.820, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.80.821, ptr noundef @.str.81.822, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.82.823, ptr noundef @.str.83.824, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.79.820, ptr noundef @.str.84.825, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.76.817, ptr noundef @.str.85.826, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.86.827, ptr noundef @.str.87.828, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.88.829, ptr noundef @.str.89.830, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.90.831, ptr noundef @.str.91.832, ptr noundef @.str.69.810, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.92.833, ptr noundef @.str.93.834, ptr noundef @.str.69.810, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.94.835, ptr noundef @.str.89.830, ptr noundef @.str.69.810, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.95.836, ptr noundef @.str.96.837, ptr noundef @.str.97.838, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.98.839, ptr noundef @.str.99.840, ptr noundef @.str.97.838, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.100.841, ptr noundef @.str.101.842, ptr noundef @.str.102.843, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.103.844, ptr noundef @.str.104.845, ptr noundef @.str.102.843, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.105.846, ptr noundef @.str.106.847, ptr noundef @.str.102.843, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.107.848, ptr noundef @.str.108.849, ptr noundef @.str.102.843, ptr noundef null)
  call void (ptr, ...) @enter(ptr noundef @.str.109.850, ptr noundef @.str.89.830, ptr noundef @.str.97.838, ptr noundef null)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @enter(ptr noundef %p, ...) #0 {
entry:
  %p.addr = alloca ptr, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %s = alloca ptr, align 8
  %buf = alloca [20 x i8], align 16
  %x = alloca ptr, align 8
  %e = alloca ptr, align 8
  store ptr %p, ptr %p.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %ap) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  call void @llvm.lifetime.start.p0(i64 20, ptr %buf) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #15
  %arraydecay = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %add.ptr = getelementptr inbounds i8, ptr %arraydecay, i64 1
  store ptr %add.ptr, ptr %x, align 8, !tbaa !9
  %arraydecay1 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %arraydecay1)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  %gp_offset_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 0
  %gp_offset = load i32, ptr %gp_offset_p, align 16
  %fits_in_gp = icmp ule i32 %gp_offset, 40
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond
  %0 = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 3
  %reg_save_area = load ptr, ptr %0, align 16
  %1 = getelementptr i8, ptr %reg_save_area, i32 %gp_offset
  %2 = add i32 %gp_offset, 8
  store i32 %2, ptr %gp_offset_p, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond
  %overflow_arg_area_p = getelementptr inbounds nuw %struct.__va_list_tag, ptr %arraydecay2, i32 0, i32 2
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i32 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr = phi ptr [ %1, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %3 = load ptr, ptr %vaarg.addr, align 8, !tbaa !9
  store ptr %3, ptr %s, align 8, !tbaa !9
  %tobool = icmp ne ptr %3, null
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %vaarg.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #15
  %4 = load ptr, ptr %s, align 8, !tbaa !9
  %call = call ptr @find_elm(ptr noundef %4)
  store ptr %call, ptr %e, align 8, !tbaa !49
  %5 = load ptr, ptr %e, align 8, !tbaa !49
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %6 = load ptr, ptr %e, align 8, !tbaa !49
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @Elements to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 272
  %conv = trunc i64 %sub.ptr.div to i8
  %7 = load ptr, ptr %x, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %7, i32 1
  store ptr %incdec.ptr, ptr %x, align 8, !tbaa !9
  store i8 %conv, ptr %7, align 1, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %while.body
  %8 = load ptr, ptr @stderr, align 8, !tbaa !26
  %9 = load ptr, ptr %s, align 8, !tbaa !9
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef @.str.110.851, ptr noundef %9) #15
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #15
  br label %while.cond, !llvm.loop !147

while.end:                                        ; preds = %vaarg.end
  %arraydecay5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %ap, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %arraydecay5)
  %10 = load ptr, ptr %x, align 8, !tbaa !9
  %arraydecay6 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %sub.ptr.lhs.cast7 = ptrtoint ptr %10 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %arraydecay6 to i64
  %sub.ptr.sub8 = sub i64 %sub.ptr.lhs.cast7, %sub.ptr.rhs.cast
  %sub = sub nsw i64 %sub.ptr.sub8, 1
  %conv9 = trunc i64 %sub to i8
  %arrayidx = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  store i8 %conv9, ptr %arrayidx, align 16, !tbaa !14
  %arrayidx10 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %11 = load i8, ptr %arrayidx10, align 16, !tbaa !14
  %conv11 = sext i8 %11 to i32
  %add = add nsw i32 %conv11, 1
  %conv12 = sext i32 %add to i64
  %call13 = call noalias ptr @malloc(i64 noundef %conv12) #17
  store ptr %call13, ptr %x, align 8, !tbaa !9
  %12 = load ptr, ptr %x, align 8, !tbaa !9
  %arraydecay14 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %arrayidx15 = getelementptr inbounds [20 x i8], ptr %buf, i64 0, i64 0
  %13 = load i8, ptr %arrayidx15, align 16, !tbaa !14
  %conv16 = sext i8 %13 to i32
  %add17 = add nsw i32 %conv16, 1
  %conv18 = sext i32 %add17 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %12, ptr align 16 %arraydecay14, i64 %conv18, i1 false)
  %14 = load ptr, ptr %p.addr, align 8, !tbaa !9
  %15 = load ptr, ptr %x, align 8, !tbaa !9
  call void @trie_insert(ptr noundef @phtoelm, ptr noundef %14, ptr noundef %15)
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #15
  call void @llvm.lifetime.end.p0(i64 20, ptr %buf) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr %ap) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @find_elm(ptr noundef %s) #0 {
entry:
  %retval = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %e = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #15
  store ptr @Elements, ptr %e, align 8, !tbaa !49
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %e, align 8, !tbaa !49
  %1 = load i32, ptr @num_Elements, align 4, !tbaa !5
  %idx.ext = zext i32 %1 to i64
  %add.ptr = getelementptr inbounds nuw %struct.Elm_s, ptr @Elements, i64 %idx.ext
  %cmp = icmp ult ptr %0, %add.ptr
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !9
  %3 = load ptr, ptr %e, align 8, !tbaa !49
  %name = getelementptr inbounds nuw %struct.Elm_s, ptr %3, i32 0, i32 0
  %4 = load ptr, ptr %name, align 8, !tbaa !76
  %call = call i32 @strcmp(ptr noundef %2, ptr noundef %4) #14
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %5 = load ptr, ptr %e, align 8, !tbaa !49
  store ptr %5, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %while.body
  %6 = load ptr, ptr %e, align 8, !tbaa !49
  %incdec.ptr = getelementptr inbounds nuw %struct.Elm_s, ptr %6, i32 1
  store ptr %incdec.ptr, ptr %e, align 8, !tbaa !49
  br label %while.cond, !llvm.loop !148

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #15
  %7 = load ptr, ptr %retval, align 8
  ret ptr %7
}

; Function Attrs: nounwind uwtable
define dso_local i32 @spell_out(ptr noundef %word, i32 noundef %n, ptr noundef %phone) #0 {
entry:
  %word.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %phone.addr = alloca ptr, align 8
  %nph = alloca i32, align 4
  store ptr %word, ptr %word.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %phone, ptr %phone.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %nph) #15
  store i32 0, ptr %nph, align 4, !tbaa !5
  %0 = load ptr, ptr @stderr, align 8, !tbaa !26
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %2 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.2.856, i32 noundef %1, ptr noundef %2) #15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %3, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %word.addr, align 8, !tbaa !9
  %5 = load i8, ptr %4, align 1, !tbaa !14
  %conv = sext i8 %5 to i32
  %and = and i32 %conv, 127
  %idxprom = sext i32 %and to i64
  %arrayidx = getelementptr inbounds [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom
  %6 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %7 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call1 = call i32 @xlate_string(ptr noundef %6, ptr noundef %7)
  %8 = load i32, ptr %nph, align 4, !tbaa !5
  %add = add i32 %8, %call1
  store i32 %add, ptr %nph, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !149

while.end:                                        ; preds = %while.cond
  %9 = load i32, ptr %nph, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %nph) #15
  ret i32 %9
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_string(ptr noundef %string, ptr noundef %phone) #0 {
entry:
  %string.addr = alloca ptr, align 8
  %phone.addr = alloca ptr, align 8
  %nph = alloca i32, align 4
  %s = alloca ptr, align 8
  %ch = alloca i8, align 1
  %word = alloca ptr, align 8
  %sign = alloca i32, align 4
  %value = alloca i64, align 8
  %word197 = alloca ptr, align 8
  %e = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %string, ptr %string.addr, align 8, !tbaa !9
  store ptr %phone, ptr %phone.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %nph) #15
  store i32 0, ptr %nph, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  %0 = load ptr, ptr %string.addr, align 8, !tbaa !9
  store ptr %0, ptr %s, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = call ptr @__ctype_b_loc() #19
  %1 = load ptr, ptr %call, align 8, !tbaa !21
  %2 = load ptr, ptr %s, align 8, !tbaa !9
  %3 = load i8, ptr %2, align 1, !tbaa !14
  store i8 %3, ptr %ch, align 1, !tbaa !14
  %conv = sext i8 %3 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %4 = load i16, ptr %arrayidx, align 2, !tbaa !23
  %conv1 = zext i16 %4 to i32
  %and = and i32 %conv1, 8192
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %5, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !9
  br label %while.cond, !llvm.loop !150

while.end:                                        ; preds = %while.cond
  br label %while.cond2

while.cond2:                                      ; preds = %while.end302, %while.end
  %6 = load ptr, ptr %s, align 8, !tbaa !9
  %7 = load i8, ptr %6, align 1, !tbaa !14
  store i8 %7, ptr %ch, align 1, !tbaa !14
  %tobool3 = icmp ne i8 %7, 0
  br i1 %tobool3, label %while.body4, label %while.end303

while.body4:                                      ; preds = %while.cond2
  call void @llvm.lifetime.start.p0(i64 8, ptr %word) #15
  %8 = load ptr, ptr %s, align 8, !tbaa !9
  store ptr %8, ptr %word, align 8, !tbaa !9
  %call5 = call ptr @__ctype_b_loc() #19
  %9 = load ptr, ptr %call5, align 8, !tbaa !21
  %10 = load i8, ptr %ch, align 1, !tbaa !14
  %conv6 = sext i8 %10 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %9, i64 %idxprom7
  %11 = load i16, ptr %arrayidx8, align 2, !tbaa !23
  %conv9 = zext i16 %11 to i32
  %and10 = and i32 %conv9, 1024
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then, label %if.else103

if.then:                                          ; preds = %while.body4
  br label %while.cond12

while.cond12:                                     ; preds = %while.body37, %if.then
  %call13 = call ptr @__ctype_b_loc() #19
  %12 = load ptr, ptr %call13, align 8, !tbaa !21
  %13 = load ptr, ptr %s, align 8, !tbaa !9
  %14 = load i8, ptr %13, align 1, !tbaa !14
  store i8 %14, ptr %ch, align 1, !tbaa !14
  %conv14 = sext i8 %14 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i16, ptr %12, i64 %idxprom15
  %15 = load i16, ptr %arrayidx16, align 2, !tbaa !23
  %conv17 = zext i16 %15 to i32
  %and18 = and i32 %conv17, 1024
  %tobool19 = icmp ne i32 %and18, 0
  br i1 %tobool19, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %while.cond12
  %16 = load i8, ptr %ch, align 1, !tbaa !14
  %conv20 = sext i8 %16 to i32
  %cmp = icmp eq i32 %conv20, 39
  br i1 %cmp, label %land.rhs, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %lor.rhs
  %17 = load i8, ptr %ch, align 1, !tbaa !14
  %conv22 = sext i8 %17 to i32
  %cmp23 = icmp eq i32 %conv22, 45
  br i1 %cmp23, label %land.rhs, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %18 = load i8, ptr %ch, align 1, !tbaa !14
  %conv26 = sext i8 %18 to i32
  %cmp27 = icmp eq i32 %conv26, 46
  br i1 %cmp27, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %lor.lhs.false25, %lor.lhs.false, %lor.rhs
  %call29 = call ptr @__ctype_b_loc() #19
  %19 = load ptr, ptr %call29, align 8, !tbaa !21
  %20 = load ptr, ptr %s, align 8, !tbaa !9
  %arrayidx30 = getelementptr inbounds i8, ptr %20, i64 1
  %21 = load i8, ptr %arrayidx30, align 1, !tbaa !14
  %conv31 = sext i8 %21 to i32
  %idxprom32 = sext i32 %conv31 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %19, i64 %idxprom32
  %22 = load i16, ptr %arrayidx33, align 2, !tbaa !23
  %conv34 = zext i16 %22 to i32
  %and35 = and i32 %conv34, 1024
  %tobool36 = icmp ne i32 %and35, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.lhs.false25
  %23 = phi i1 [ false, %lor.lhs.false25 ], [ %tobool36, %land.rhs ]
  br label %lor.end

lor.end:                                          ; preds = %land.end, %while.cond12
  %24 = phi i1 [ true, %while.cond12 ], [ %23, %land.end ]
  br i1 %24, label %while.body37, label %while.end39

while.body37:                                     ; preds = %lor.end
  %25 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %25, i32 1
  store ptr %incdec.ptr38, ptr %s, align 8, !tbaa !9
  br label %while.cond12, !llvm.loop !151

while.end39:                                      ; preds = %lor.end
  %26 = load i8, ptr %ch, align 1, !tbaa !14
  %tobool40 = icmp ne i8 %26, 0
  br i1 %tobool40, label %lor.lhs.false41, label %if.then68

lor.lhs.false41:                                  ; preds = %while.end39
  %call42 = call ptr @__ctype_b_loc() #19
  %27 = load ptr, ptr %call42, align 8, !tbaa !21
  %28 = load i8, ptr %ch, align 1, !tbaa !14
  %conv43 = sext i8 %28 to i32
  %idxprom44 = sext i32 %conv43 to i64
  %arrayidx45 = getelementptr inbounds i16, ptr %27, i64 %idxprom44
  %29 = load i16, ptr %arrayidx45, align 2, !tbaa !23
  %conv46 = zext i16 %29 to i32
  %and47 = and i32 %conv46, 8192
  %tobool48 = icmp ne i32 %and47, 0
  br i1 %tobool48, label %if.then68, label %lor.lhs.false49

lor.lhs.false49:                                  ; preds = %lor.lhs.false41
  %call50 = call ptr @__ctype_b_loc() #19
  %30 = load ptr, ptr %call50, align 8, !tbaa !21
  %31 = load i8, ptr %ch, align 1, !tbaa !14
  %conv51 = sext i8 %31 to i32
  %idxprom52 = sext i32 %conv51 to i64
  %arrayidx53 = getelementptr inbounds i16, ptr %30, i64 %idxprom52
  %32 = load i16, ptr %arrayidx53, align 2, !tbaa !23
  %conv54 = zext i16 %32 to i32
  %and55 = and i32 %conv54, 4
  %tobool56 = icmp ne i32 %and55, 0
  br i1 %tobool56, label %if.then68, label %lor.lhs.false57

lor.lhs.false57:                                  ; preds = %lor.lhs.false49
  %call58 = call ptr @__ctype_b_loc() #19
  %33 = load ptr, ptr %call58, align 8, !tbaa !21
  %34 = load i8, ptr %ch, align 1, !tbaa !14
  %conv59 = sext i8 %34 to i32
  %idxprom60 = sext i32 %conv59 to i64
  %arrayidx61 = getelementptr inbounds i16, ptr %33, i64 %idxprom60
  %35 = load i16, ptr %arrayidx61, align 2, !tbaa !23
  %conv62 = zext i16 %35 to i32
  %and63 = and i32 %conv62, 2048
  %tobool64 = icmp ne i32 %and63, 0
  br i1 %tobool64, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false57
  %36 = load ptr, ptr %word, align 8, !tbaa !9
  %37 = load ptr, ptr %s, align 8, !tbaa !9
  %38 = load ptr, ptr %word, align 8, !tbaa !9
  %sub.ptr.lhs.cast = ptrtoint ptr %37 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %38 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv65 = trunc i64 %sub.ptr.sub to i32
  %call66 = call i32 @suspect_word(ptr noundef %36, i32 noundef %conv65)
  %tobool67 = icmp ne i32 %call66, 0
  br i1 %tobool67, label %if.else, label %if.then68

if.then68:                                        ; preds = %land.lhs.true, %lor.lhs.false49, %lor.lhs.false41, %while.end39
  %39 = load ptr, ptr %word, align 8, !tbaa !9
  %40 = load ptr, ptr %s, align 8, !tbaa !9
  %41 = load ptr, ptr %word, align 8, !tbaa !9
  %sub.ptr.lhs.cast69 = ptrtoint ptr %40 to i64
  %sub.ptr.rhs.cast70 = ptrtoint ptr %41 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %conv72 = trunc i64 %sub.ptr.sub71 to i32
  %42 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call73 = call i32 @xlate_word(ptr noundef %39, i32 noundef %conv72, ptr noundef %42)
  %43 = load i32, ptr %nph, align 4, !tbaa !5
  %add = add i32 %43, %call73
  store i32 %add, ptr %nph, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false57
  br label %while.cond74

while.cond74:                                     ; preds = %while.body94, %if.else
  %44 = load ptr, ptr %s, align 8, !tbaa !9
  %45 = load i8, ptr %44, align 1, !tbaa !14
  store i8 %45, ptr %ch, align 1, !tbaa !14
  %conv75 = sext i8 %45 to i32
  %tobool76 = icmp ne i32 %conv75, 0
  br i1 %tobool76, label %land.lhs.true77, label %land.end93

land.lhs.true77:                                  ; preds = %while.cond74
  %call78 = call ptr @__ctype_b_loc() #19
  %46 = load ptr, ptr %call78, align 8, !tbaa !21
  %47 = load i8, ptr %ch, align 1, !tbaa !14
  %conv79 = sext i8 %47 to i32
  %idxprom80 = sext i32 %conv79 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %46, i64 %idxprom80
  %48 = load i16, ptr %arrayidx81, align 2, !tbaa !23
  %conv82 = zext i16 %48 to i32
  %and83 = and i32 %conv82, 8192
  %tobool84 = icmp ne i32 %and83, 0
  br i1 %tobool84, label %land.end93, label %land.rhs85

land.rhs85:                                       ; preds = %land.lhs.true77
  %call86 = call ptr @__ctype_b_loc() #19
  %49 = load ptr, ptr %call86, align 8, !tbaa !21
  %50 = load i8, ptr %ch, align 1, !tbaa !14
  %conv87 = sext i8 %50 to i32
  %idxprom88 = sext i32 %conv87 to i64
  %arrayidx89 = getelementptr inbounds i16, ptr %49, i64 %idxprom88
  %51 = load i16, ptr %arrayidx89, align 2, !tbaa !23
  %conv90 = zext i16 %51 to i32
  %and91 = and i32 %conv90, 4
  %tobool92 = icmp ne i32 %and91, 0
  %lnot = xor i1 %tobool92, true
  br label %land.end93

land.end93:                                       ; preds = %land.rhs85, %land.lhs.true77, %while.cond74
  %52 = phi i1 [ false, %land.lhs.true77 ], [ false, %while.cond74 ], [ %lnot, %land.rhs85 ]
  br i1 %52, label %while.body94, label %while.end96

while.body94:                                     ; preds = %land.end93
  %53 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr95 = getelementptr inbounds nuw i8, ptr %53, i32 1
  store ptr %incdec.ptr95, ptr %s, align 8, !tbaa !9
  br label %while.cond74, !llvm.loop !152

while.end96:                                      ; preds = %land.end93
  %54 = load ptr, ptr %word, align 8, !tbaa !9
  %55 = load ptr, ptr %s, align 8, !tbaa !9
  %56 = load ptr, ptr %word, align 8, !tbaa !9
  %sub.ptr.lhs.cast97 = ptrtoint ptr %55 to i64
  %sub.ptr.rhs.cast98 = ptrtoint ptr %56 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %conv100 = trunc i64 %sub.ptr.sub99 to i32
  %57 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call101 = call i32 @spell_out(ptr noundef %54, i32 noundef %conv100, ptr noundef %57)
  %58 = load i32, ptr %nph, align 4, !tbaa !5
  %add102 = add i32 %58, %call101
  store i32 %add102, ptr %nph, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %while.end96, %if.then68
  br label %if.end291

if.else103:                                       ; preds = %while.body4
  %call104 = call ptr @__ctype_b_loc() #19
  %59 = load ptr, ptr %call104, align 8, !tbaa !21
  %60 = load i8, ptr %ch, align 1, !tbaa !14
  %conv105 = sext i8 %60 to i32
  %idxprom106 = sext i32 %conv105 to i64
  %arrayidx107 = getelementptr inbounds i16, ptr %59, i64 %idxprom106
  %61 = load i16, ptr %arrayidx107, align 2, !tbaa !23
  %conv108 = zext i16 %61 to i32
  %and109 = and i32 %conv108, 2048
  %tobool110 = icmp ne i32 %and109, 0
  br i1 %tobool110, label %if.then124, label %lor.lhs.false111

lor.lhs.false111:                                 ; preds = %if.else103
  %62 = load i8, ptr %ch, align 1, !tbaa !14
  %conv112 = sext i8 %62 to i32
  %cmp113 = icmp eq i32 %conv112, 45
  br i1 %cmp113, label %land.lhs.true115, label %if.else189

land.lhs.true115:                                 ; preds = %lor.lhs.false111
  %call116 = call ptr @__ctype_b_loc() #19
  %63 = load ptr, ptr %call116, align 8, !tbaa !21
  %64 = load ptr, ptr %s, align 8, !tbaa !9
  %arrayidx117 = getelementptr inbounds i8, ptr %64, i64 1
  %65 = load i8, ptr %arrayidx117, align 1, !tbaa !14
  %conv118 = sext i8 %65 to i32
  %idxprom119 = sext i32 %conv118 to i64
  %arrayidx120 = getelementptr inbounds i16, ptr %63, i64 %idxprom119
  %66 = load i16, ptr %arrayidx120, align 2, !tbaa !23
  %conv121 = zext i16 %66 to i32
  %and122 = and i32 %conv121, 2048
  %tobool123 = icmp ne i32 %and122, 0
  br i1 %tobool123, label %if.then124, label %if.else189

if.then124:                                       ; preds = %land.lhs.true115, %if.else103
  call void @llvm.lifetime.start.p0(i64 4, ptr %sign) #15
  %67 = load i8, ptr %ch, align 1, !tbaa !14
  %conv125 = sext i8 %67 to i32
  %cmp126 = icmp eq i32 %conv125, 45
  %68 = zext i1 %cmp126 to i64
  %cond = select i1 %cmp126, i32 -1, i32 1
  store i32 %cond, ptr %sign, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #15
  store i64 0, ptr %value, align 8, !tbaa !12
  %69 = load i32, ptr %sign, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %69, 0
  br i1 %cmp128, label %if.then130, label %if.end132

if.then130:                                       ; preds = %if.then124
  %70 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr131 = getelementptr inbounds nuw i8, ptr %70, i32 1
  store ptr %incdec.ptr131, ptr %s, align 8, !tbaa !9
  %71 = load i8, ptr %incdec.ptr131, align 1, !tbaa !14
  store i8 %71, ptr %ch, align 1, !tbaa !14
  br label %if.end132

if.end132:                                        ; preds = %if.then130, %if.then124
  br label %while.cond133

while.cond133:                                    ; preds = %while.body141, %if.end132
  %call134 = call ptr @__ctype_b_loc() #19
  %72 = load ptr, ptr %call134, align 8, !tbaa !21
  %73 = load ptr, ptr %s, align 8, !tbaa !9
  %74 = load i8, ptr %73, align 1, !tbaa !14
  store i8 %74, ptr %ch, align 1, !tbaa !14
  %conv135 = sext i8 %74 to i32
  %idxprom136 = sext i32 %conv135 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %72, i64 %idxprom136
  %75 = load i16, ptr %arrayidx137, align 2, !tbaa !23
  %conv138 = zext i16 %75 to i32
  %and139 = and i32 %conv138, 2048
  %tobool140 = icmp ne i32 %and139, 0
  br i1 %tobool140, label %while.body141, label %while.end145

while.body141:                                    ; preds = %while.cond133
  %76 = load i64, ptr %value, align 8, !tbaa !12
  %mul = mul nsw i64 %76, 10
  %77 = load i8, ptr %ch, align 1, !tbaa !14
  %conv142 = sext i8 %77 to i64
  %add143 = add nsw i64 %mul, %conv142
  %sub = sub nsw i64 %add143, 48
  store i64 %sub, ptr %value, align 8, !tbaa !12
  %78 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr144 = getelementptr inbounds nuw i8, ptr %78, i32 1
  store ptr %incdec.ptr144, ptr %s, align 8, !tbaa !9
  br label %while.cond133, !llvm.loop !153

while.end145:                                     ; preds = %while.cond133
  %79 = load i8, ptr %ch, align 1, !tbaa !14
  %conv146 = sext i8 %79 to i32
  %cmp147 = icmp eq i32 %conv146, 46
  br i1 %cmp147, label %land.lhs.true149, label %if.else183

land.lhs.true149:                                 ; preds = %while.end145
  %call150 = call ptr @__ctype_b_loc() #19
  %80 = load ptr, ptr %call150, align 8, !tbaa !21
  %81 = load ptr, ptr %s, align 8, !tbaa !9
  %arrayidx151 = getelementptr inbounds i8, ptr %81, i64 1
  %82 = load i8, ptr %arrayidx151, align 1, !tbaa !14
  %conv152 = sext i8 %82 to i32
  %idxprom153 = sext i32 %conv152 to i64
  %arrayidx154 = getelementptr inbounds i16, ptr %80, i64 %idxprom153
  %83 = load i16, ptr %arrayidx154, align 2, !tbaa !23
  %conv155 = zext i16 %83 to i32
  %and156 = and i32 %conv155, 2048
  %tobool157 = icmp ne i32 %and156, 0
  br i1 %tobool157, label %if.then158, label %if.else183

if.then158:                                       ; preds = %land.lhs.true149
  %84 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr159 = getelementptr inbounds nuw i8, ptr %84, i32 1
  store ptr %incdec.ptr159, ptr %s, align 8, !tbaa !9
  store ptr %incdec.ptr159, ptr %word, align 8, !tbaa !9
  %85 = load i64, ptr %value, align 8, !tbaa !12
  %86 = load i32, ptr %sign, align 4, !tbaa !5
  %conv160 = sext i32 %86 to i64
  %mul161 = mul nsw i64 %85, %conv160
  %87 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call162 = call i32 @xlate_cardinal(i64 noundef %mul161, ptr noundef %87)
  %88 = load i32, ptr %nph, align 4, !tbaa !5
  %add163 = add i32 %88, %call162
  store i32 %add163, ptr %nph, align 4, !tbaa !5
  %89 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call164 = call i32 @xlate_string(ptr noundef @.str.4.857, ptr noundef %89)
  %90 = load i32, ptr %nph, align 4, !tbaa !5
  %add165 = add i32 %90, %call164
  store i32 %add165, ptr %nph, align 4, !tbaa !5
  br label %while.cond166

while.cond166:                                    ; preds = %while.body174, %if.then158
  %call167 = call ptr @__ctype_b_loc() #19
  %91 = load ptr, ptr %call167, align 8, !tbaa !21
  %92 = load ptr, ptr %s, align 8, !tbaa !9
  %93 = load i8, ptr %92, align 1, !tbaa !14
  store i8 %93, ptr %ch, align 1, !tbaa !14
  %conv168 = sext i8 %93 to i32
  %idxprom169 = sext i32 %conv168 to i64
  %arrayidx170 = getelementptr inbounds i16, ptr %91, i64 %idxprom169
  %94 = load i16, ptr %arrayidx170, align 2, !tbaa !23
  %conv171 = zext i16 %94 to i32
  %and172 = and i32 %conv171, 2048
  %tobool173 = icmp ne i32 %and172, 0
  br i1 %tobool173, label %while.body174, label %while.end176

while.body174:                                    ; preds = %while.cond166
  %95 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr175 = getelementptr inbounds nuw i8, ptr %95, i32 1
  store ptr %incdec.ptr175, ptr %s, align 8, !tbaa !9
  br label %while.cond166, !llvm.loop !154

while.end176:                                     ; preds = %while.cond166
  %96 = load ptr, ptr %word, align 8, !tbaa !9
  %97 = load ptr, ptr %s, align 8, !tbaa !9
  %98 = load ptr, ptr %word, align 8, !tbaa !9
  %sub.ptr.lhs.cast177 = ptrtoint ptr %97 to i64
  %sub.ptr.rhs.cast178 = ptrtoint ptr %98 to i64
  %sub.ptr.sub179 = sub i64 %sub.ptr.lhs.cast177, %sub.ptr.rhs.cast178
  %conv180 = trunc i64 %sub.ptr.sub179 to i32
  %99 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call181 = call i32 @spell_out(ptr noundef %96, i32 noundef %conv180, ptr noundef %99)
  %100 = load i32, ptr %nph, align 4, !tbaa !5
  %add182 = add i32 %100, %call181
  store i32 %add182, ptr %nph, align 4, !tbaa !5
  br label %if.end188

if.else183:                                       ; preds = %land.lhs.true149, %while.end145
  %101 = load i64, ptr %value, align 8, !tbaa !12
  %102 = load i32, ptr %sign, align 4, !tbaa !5
  %conv184 = sext i32 %102 to i64
  %mul185 = mul nsw i64 %101, %conv184
  %103 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call186 = call i32 @xlate_cardinal(i64 noundef %mul185, ptr noundef %103)
  %104 = load i32, ptr %nph, align 4, !tbaa !5
  %add187 = add i32 %104, %call186
  store i32 %add187, ptr %nph, align 4, !tbaa !5
  br label %if.end188

if.end188:                                        ; preds = %if.else183, %while.end176
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %sign) #15
  br label %if.end290

if.else189:                                       ; preds = %land.lhs.true115, %lor.lhs.false111
  %105 = load i8, ptr %ch, align 1, !tbaa !14
  %conv190 = sext i8 %105 to i32
  %cmp191 = icmp eq i32 %conv190, 91
  br i1 %cmp191, label %land.lhs.true193, label %if.else215

land.lhs.true193:                                 ; preds = %if.else189
  %106 = load ptr, ptr %s, align 8, !tbaa !9
  %call194 = call ptr @strchr(ptr noundef %106, i32 noundef 93) #14
  %tobool195 = icmp ne ptr %call194, null
  br i1 %tobool195, label %if.then196, label %if.else215

if.then196:                                       ; preds = %land.lhs.true193
  call void @llvm.lifetime.start.p0(i64 8, ptr %word197) #15
  %107 = load ptr, ptr %s, align 8, !tbaa !9
  store ptr %107, ptr %word197, align 8, !tbaa !9
  br label %while.cond198

while.cond198:                                    ; preds = %while.body207, %if.then196
  %108 = load ptr, ptr %s, align 8, !tbaa !9
  %109 = load i8, ptr %108, align 1, !tbaa !14
  %conv199 = sext i8 %109 to i32
  %tobool200 = icmp ne i32 %conv199, 0
  br i1 %tobool200, label %land.rhs201, label %land.end206

land.rhs201:                                      ; preds = %while.cond198
  %110 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr202 = getelementptr inbounds nuw i8, ptr %110, i32 1
  store ptr %incdec.ptr202, ptr %s, align 8, !tbaa !9
  %111 = load i8, ptr %110, align 1, !tbaa !14
  %conv203 = sext i8 %111 to i32
  %cmp204 = icmp ne i32 %conv203, 93
  br label %land.end206

land.end206:                                      ; preds = %land.rhs201, %while.cond198
  %112 = phi i1 [ false, %while.cond198 ], [ %cmp204, %land.rhs201 ]
  br i1 %112, label %while.body207, label %while.end208

while.body207:                                    ; preds = %land.end206
  br label %while.cond198, !llvm.loop !155

while.end208:                                     ; preds = %land.end206
  %113 = load ptr, ptr %word197, align 8, !tbaa !9
  %114 = load ptr, ptr %s, align 8, !tbaa !9
  %115 = load ptr, ptr %word197, align 8, !tbaa !9
  %sub.ptr.lhs.cast209 = ptrtoint ptr %114 to i64
  %sub.ptr.rhs.cast210 = ptrtoint ptr %115 to i64
  %sub.ptr.sub211 = sub i64 %sub.ptr.lhs.cast209, %sub.ptr.rhs.cast210
  %conv212 = trunc i64 %sub.ptr.sub211 to i32
  %116 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call213 = call i32 @xlate_word(ptr noundef %113, i32 noundef %conv212, ptr noundef %116)
  %117 = load i32, ptr %nph, align 4, !tbaa !5
  %add214 = add i32 %117, %call213
  store i32 %add214, ptr %nph, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %word197) #15
  br label %if.end289

if.else215:                                       ; preds = %land.lhs.true193, %if.else189
  %call216 = call ptr @__ctype_b_loc() #19
  %118 = load ptr, ptr %call216, align 8, !tbaa !21
  %119 = load i8, ptr %ch, align 1, !tbaa !14
  %conv217 = sext i8 %119 to i32
  %idxprom218 = sext i32 %conv217 to i64
  %arrayidx219 = getelementptr inbounds i16, ptr %118, i64 %idxprom218
  %120 = load i16, ptr %arrayidx219, align 2, !tbaa !23
  %conv220 = zext i16 %120 to i32
  %and221 = and i32 %conv220, 4
  %tobool222 = icmp ne i32 %and221, 0
  br i1 %tobool222, label %if.then223, label %if.else265

if.then223:                                       ; preds = %if.else215
  %121 = load i8, ptr %ch, align 1, !tbaa !14
  %conv224 = sext i8 %121 to i32
  switch i32 %conv224, label %sw.default [
    i32 33, label %sw.bb
    i32 63, label %sw.bb
    i32 46, label %sw.bb
    i32 34, label %sw.bb245
    i32 58, label %sw.bb245
    i32 45, label %sw.bb245
    i32 59, label %sw.bb245
    i32 44, label %sw.bb245
    i32 40, label %sw.bb245
    i32 41, label %sw.bb245
    i32 91, label %sw.bb248
  ]

sw.bb:                                            ; preds = %if.then223, %if.then223, %if.then223
  %122 = load ptr, ptr %s, align 8, !tbaa !9
  %arrayidx225 = getelementptr inbounds i8, ptr %122, i64 1
  %123 = load i8, ptr %arrayidx225, align 1, !tbaa !14
  %tobool226 = icmp ne i8 %123, 0
  br i1 %tobool226, label %lor.lhs.false227, label %land.lhs.true236

lor.lhs.false227:                                 ; preds = %sw.bb
  %call228 = call ptr @__ctype_b_loc() #19
  %124 = load ptr, ptr %call228, align 8, !tbaa !21
  %125 = load ptr, ptr %s, align 8, !tbaa !9
  %arrayidx229 = getelementptr inbounds i8, ptr %125, i64 1
  %126 = load i8, ptr %arrayidx229, align 1, !tbaa !14
  %conv230 = sext i8 %126 to i32
  %idxprom231 = sext i32 %conv230 to i64
  %arrayidx232 = getelementptr inbounds i16, ptr %124, i64 %idxprom231
  %127 = load i16, ptr %arrayidx232, align 2, !tbaa !23
  %conv233 = zext i16 %127 to i32
  %and234 = and i32 %conv233, 8192
  %tobool235 = icmp ne i32 %and234, 0
  br i1 %tobool235, label %land.lhs.true236, label %if.end242

land.lhs.true236:                                 ; preds = %lor.lhs.false227, %sw.bb
  %128 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %128, i32 0, i32 1
  %129 = load i32, ptr %items, align 8, !tbaa !31
  %tobool237 = icmp ne i32 %129, 0
  br i1 %tobool237, label %if.then238, label %if.end242

if.then238:                                       ; preds = %land.lhs.true236
  %130 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call239 = call ptr @darray_find.858(ptr noundef %130, i32 noundef 0)
  %131 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %items240 = getelementptr inbounds nuw %struct.darray_t, ptr %131, i32 0, i32 1
  %132 = load i32, ptr %items240, align 8, !tbaa !31
  %133 = load i32, ptr @verbose, align 4, !tbaa !5
  call void @say_phones(ptr noundef %call239, i32 noundef %132, i32 noundef %133)
  %134 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %items241 = getelementptr inbounds nuw %struct.darray_t, ptr %134, i32 0, i32 1
  store i32 0, ptr %items241, align 8, !tbaa !31
  br label %if.end242

if.end242:                                        ; preds = %if.then238, %land.lhs.true236, %lor.lhs.false227
  %135 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr243 = getelementptr inbounds nuw i8, ptr %135, i32 1
  store ptr %incdec.ptr243, ptr %s, align 8, !tbaa !9
  %136 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call244 = call i32 @phone_append(ptr noundef %136, i32 noundef 32)
  br label %sw.epilog

sw.bb245:                                         ; preds = %if.then223, %if.then223, %if.then223, %if.then223, %if.then223, %if.then223, %if.then223
  %137 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr246 = getelementptr inbounds nuw i8, ptr %137, i32 1
  store ptr %incdec.ptr246, ptr %s, align 8, !tbaa !9
  %138 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call247 = call i32 @phone_append(ptr noundef %138, i32 noundef 32)
  br label %sw.epilog

sw.bb248:                                         ; preds = %if.then223
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #15
  %139 = load ptr, ptr %s, align 8, !tbaa !9
  %call249 = call ptr @strchr(ptr noundef %139, i32 noundef 93) #14
  store ptr %call249, ptr %e, align 8, !tbaa !9
  %140 = load ptr, ptr %e, align 8, !tbaa !9
  %tobool250 = icmp ne ptr %140, null
  br i1 %tobool250, label %if.then251, label %if.end261

if.then251:                                       ; preds = %sw.bb248
  %141 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr252 = getelementptr inbounds nuw i8, ptr %141, i32 1
  store ptr %incdec.ptr252, ptr %s, align 8, !tbaa !9
  br label %while.cond253

while.cond253:                                    ; preds = %while.body256, %if.then251
  %142 = load ptr, ptr %s, align 8, !tbaa !9
  %143 = load ptr, ptr %e, align 8, !tbaa !9
  %cmp254 = icmp ult ptr %142, %143
  br i1 %cmp254, label %while.body256, label %while.end260

while.body256:                                    ; preds = %while.cond253
  %144 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %145 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr257 = getelementptr inbounds nuw i8, ptr %145, i32 1
  store ptr %incdec.ptr257, ptr %s, align 8, !tbaa !9
  %146 = load i8, ptr %145, align 1, !tbaa !14
  %conv258 = sext i8 %146 to i32
  %call259 = call i32 @phone_append(ptr noundef %144, i32 noundef %conv258)
  br label %while.cond253, !llvm.loop !156

while.end260:                                     ; preds = %while.cond253
  %147 = load ptr, ptr %e, align 8, !tbaa !9
  %add.ptr = getelementptr inbounds i8, ptr %147, i64 1
  store ptr %add.ptr, ptr %s, align 8, !tbaa !9
  store i32 16, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end261:                                        ; preds = %sw.bb248
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end261, %while.end260
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 16, label %sw.epilog
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %sw.default

sw.default:                                       ; preds = %if.then223, %cleanup.cont
  %148 = load ptr, ptr %word, align 8, !tbaa !9
  %149 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call262 = call i32 @spell_out(ptr noundef %148, i32 noundef 1, ptr noundef %149)
  %150 = load i32, ptr %nph, align 4, !tbaa !5
  %add263 = add i32 %150, %call262
  store i32 %add263, ptr %nph, align 4, !tbaa !5
  %151 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr264 = getelementptr inbounds nuw i8, ptr %151, i32 1
  store ptr %incdec.ptr264, ptr %s, align 8, !tbaa !9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %cleanup, %sw.bb245, %if.end242
  br label %if.end288

if.else265:                                       ; preds = %if.else215
  br label %while.cond266

while.cond266:                                    ; preds = %while.body279, %if.else265
  %152 = load ptr, ptr %s, align 8, !tbaa !9
  %153 = load i8, ptr %152, align 1, !tbaa !14
  store i8 %153, ptr %ch, align 1, !tbaa !14
  %conv267 = sext i8 %153 to i32
  %tobool268 = icmp ne i32 %conv267, 0
  br i1 %tobool268, label %land.rhs269, label %land.end278

land.rhs269:                                      ; preds = %while.cond266
  %call270 = call ptr @__ctype_b_loc() #19
  %154 = load ptr, ptr %call270, align 8, !tbaa !21
  %155 = load i8, ptr %ch, align 1, !tbaa !14
  %conv271 = sext i8 %155 to i32
  %idxprom272 = sext i32 %conv271 to i64
  %arrayidx273 = getelementptr inbounds i16, ptr %154, i64 %idxprom272
  %156 = load i16, ptr %arrayidx273, align 2, !tbaa !23
  %conv274 = zext i16 %156 to i32
  %and275 = and i32 %conv274, 8192
  %tobool276 = icmp ne i32 %and275, 0
  %lnot277 = xor i1 %tobool276, true
  br label %land.end278

land.end278:                                      ; preds = %land.rhs269, %while.cond266
  %157 = phi i1 [ false, %while.cond266 ], [ %lnot277, %land.rhs269 ]
  br i1 %157, label %while.body279, label %while.end281

while.body279:                                    ; preds = %land.end278
  %158 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr280 = getelementptr inbounds nuw i8, ptr %158, i32 1
  store ptr %incdec.ptr280, ptr %s, align 8, !tbaa !9
  br label %while.cond266, !llvm.loop !157

while.end281:                                     ; preds = %land.end278
  %159 = load ptr, ptr %word, align 8, !tbaa !9
  %160 = load ptr, ptr %s, align 8, !tbaa !9
  %161 = load ptr, ptr %word, align 8, !tbaa !9
  %sub.ptr.lhs.cast282 = ptrtoint ptr %160 to i64
  %sub.ptr.rhs.cast283 = ptrtoint ptr %161 to i64
  %sub.ptr.sub284 = sub i64 %sub.ptr.lhs.cast282, %sub.ptr.rhs.cast283
  %conv285 = trunc i64 %sub.ptr.sub284 to i32
  %162 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call286 = call i32 @spell_out(ptr noundef %159, i32 noundef %conv285, ptr noundef %162)
  %163 = load i32, ptr %nph, align 4, !tbaa !5
  %add287 = add i32 %163, %call286
  store i32 %add287, ptr %nph, align 4, !tbaa !5
  br label %if.end288

if.end288:                                        ; preds = %while.end281, %sw.epilog
  br label %if.end289

if.end289:                                        ; preds = %if.end288, %while.end208
  br label %if.end290

if.end290:                                        ; preds = %if.end289, %if.end188
  br label %if.end291

if.end291:                                        ; preds = %if.end290, %if.end
  br label %while.cond292

while.cond292:                                    ; preds = %while.body300, %if.end291
  %call293 = call ptr @__ctype_b_loc() #19
  %164 = load ptr, ptr %call293, align 8, !tbaa !21
  %165 = load ptr, ptr %s, align 8, !tbaa !9
  %166 = load i8, ptr %165, align 1, !tbaa !14
  store i8 %166, ptr %ch, align 1, !tbaa !14
  %conv294 = sext i8 %166 to i32
  %idxprom295 = sext i32 %conv294 to i64
  %arrayidx296 = getelementptr inbounds i16, ptr %164, i64 %idxprom295
  %167 = load i16, ptr %arrayidx296, align 2, !tbaa !23
  %conv297 = zext i16 %167 to i32
  %and298 = and i32 %conv297, 8192
  %tobool299 = icmp ne i32 %and298, 0
  br i1 %tobool299, label %while.body300, label %while.end302

while.body300:                                    ; preds = %while.cond292
  %168 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr301 = getelementptr inbounds nuw i8, ptr %168, i32 1
  store ptr %incdec.ptr301, ptr %s, align 8, !tbaa !9
  br label %while.cond292, !llvm.loop !158

while.end302:                                     ; preds = %while.cond292
  call void @llvm.lifetime.end.p0(i64 8, ptr %word) #15
  br label %while.cond2, !llvm.loop !159

while.end303:                                     ; preds = %while.cond2
  %169 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %nph) #15
  ret i32 %169

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #13

; Function Attrs: nounwind uwtable
define dso_local i32 @suspect_word(ptr noundef %s, i32 noundef %n) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %seen_lower = alloca i32, align 4
  %seen_upper = alloca i32, align 4
  %seen_vowel = alloca i32, align 4
  %last = alloca i32, align 4
  %ch = alloca i8, align 1
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %seen_lower) #15
  store i32 0, ptr %seen_lower, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %seen_upper) #15
  store i32 0, ptr %seen_upper, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %seen_vowel) #15
  store i32 0, ptr %seen_vowel, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %last) #15
  store i32 0, ptr %last, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15
  %2 = load ptr, ptr %s.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !9
  %3 = load i8, ptr %2, align 1, !tbaa !14
  store i8 %3, ptr %ch, align 1, !tbaa !14
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %tobool = icmp ne i32 %4, 0
  br i1 %tobool, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body
  %5 = load i32, ptr %last, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %5, 45
  br i1 %cmp1, label %land.lhs.true2, label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %call = call ptr @__ctype_b_loc() #19
  %6 = load ptr, ptr %call, align 8, !tbaa !21
  %7 = load i8, ptr %ch, align 1, !tbaa !14
  %conv = sext i8 %7 to i32
  %idxprom = sext i32 %conv to i64
  %arrayidx = getelementptr inbounds i16, ptr %6, i64 %idxprom
  %8 = load i16, ptr %arrayidx, align 2, !tbaa !23
  %conv3 = zext i16 %8 to i32
  %and = and i32 %conv3, 256
  %tobool4 = icmp ne i32 %and, 0
  br i1 %tobool4, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true2
  store i32 1, ptr %seen_upper, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true2, %land.lhs.true, %for.body
  %call5 = call ptr @__ctype_b_loc() #19
  %9 = load ptr, ptr %call5, align 8, !tbaa !21
  %10 = load i8, ptr %ch, align 1, !tbaa !14
  %conv6 = sext i8 %10 to i32
  %idxprom7 = sext i32 %conv6 to i64
  %arrayidx8 = getelementptr inbounds i16, ptr %9, i64 %idxprom7
  %11 = load i16, ptr %arrayidx8, align 2, !tbaa !23
  %conv9 = zext i16 %11 to i32
  %and10 = and i32 %conv9, 512
  %tobool11 = icmp ne i32 %and10, 0
  br i1 %tobool11, label %if.then12, label %if.end18

if.then12:                                        ; preds = %if.end
  store i32 1, ptr %seen_lower, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #15
  %call13 = call ptr @__ctype_toupper_loc() #19
  %12 = load ptr, ptr %call13, align 8, !tbaa !114
  %13 = load i8, ptr %ch, align 1, !tbaa !14
  %conv14 = sext i8 %13 to i32
  %idxprom15 = sext i32 %conv14 to i64
  %arrayidx16 = getelementptr inbounds i32, ptr %12, i64 %idxprom15
  %14 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  store i32 %14, ptr %__res, align 4, !tbaa !5
  %15 = load i32, ptr %__res, align 4, !tbaa !5
  store i32 %15, ptr %tmp, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #15
  %16 = load i32, ptr %tmp, align 4, !tbaa !5
  %conv17 = trunc i32 %16 to i8
  store i8 %conv17, ptr %ch, align 1, !tbaa !14
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end
  %17 = load i8, ptr %ch, align 1, !tbaa !14
  %conv19 = sext i8 %17 to i32
  %cmp20 = icmp eq i32 %conv19, 65
  br i1 %cmp20, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end18
  %18 = load i8, ptr %ch, align 1, !tbaa !14
  %conv22 = sext i8 %18 to i32
  %cmp23 = icmp eq i32 %conv22, 69
  br i1 %cmp23, label %if.then41, label %lor.lhs.false25

lor.lhs.false25:                                  ; preds = %lor.lhs.false
  %19 = load i8, ptr %ch, align 1, !tbaa !14
  %conv26 = sext i8 %19 to i32
  %cmp27 = icmp eq i32 %conv26, 73
  br i1 %cmp27, label %if.then41, label %lor.lhs.false29

lor.lhs.false29:                                  ; preds = %lor.lhs.false25
  %20 = load i8, ptr %ch, align 1, !tbaa !14
  %conv30 = sext i8 %20 to i32
  %cmp31 = icmp eq i32 %conv30, 79
  br i1 %cmp31, label %if.then41, label %lor.lhs.false33

lor.lhs.false33:                                  ; preds = %lor.lhs.false29
  %21 = load i8, ptr %ch, align 1, !tbaa !14
  %conv34 = sext i8 %21 to i32
  %cmp35 = icmp eq i32 %conv34, 85
  br i1 %cmp35, label %if.then41, label %lor.lhs.false37

lor.lhs.false37:                                  ; preds = %lor.lhs.false33
  %22 = load i8, ptr %ch, align 1, !tbaa !14
  %conv38 = sext i8 %22 to i32
  %cmp39 = icmp eq i32 %conv38, 89
  br i1 %cmp39, label %if.then41, label %if.end42

if.then41:                                        ; preds = %lor.lhs.false37, %lor.lhs.false33, %lor.lhs.false29, %lor.lhs.false25, %lor.lhs.false, %if.end18
  store i32 1, ptr %seen_vowel, align 4, !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %lor.lhs.false37
  %23 = load i8, ptr %ch, align 1, !tbaa !14
  %conv43 = sext i8 %23 to i32
  store i32 %conv43, ptr %last, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15
  br label %for.inc

for.inc:                                          ; preds = %if.end42
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %24, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !160

for.end:                                          ; preds = %for.cond
  %25 = load i32, ptr %seen_vowel, align 4, !tbaa !5
  %tobool44 = icmp ne i32 %25, 0
  br i1 %tobool44, label %lor.lhs.false45, label %lor.end

lor.lhs.false45:                                  ; preds = %for.end
  %26 = load i32, ptr %seen_upper, align 4, !tbaa !5
  %tobool46 = icmp ne i32 %26, 0
  br i1 %tobool46, label %land.lhs.true47, label %lor.rhs

land.lhs.true47:                                  ; preds = %lor.lhs.false45
  %27 = load i32, ptr %seen_lower, align 4, !tbaa !5
  %tobool48 = icmp ne i32 %27, 0
  br i1 %tobool48, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %land.lhs.true47, %lor.lhs.false45
  %28 = load i32, ptr %seen_lower, align 4, !tbaa !5
  %tobool49 = icmp ne i32 %28, 0
  %lnot = xor i1 %tobool49, true
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %land.lhs.true47, %for.end
  %29 = phi i1 [ true, %land.lhs.true47 ], [ true, %for.end ], [ %lnot, %lor.rhs ]
  %lor.ext = zext i1 %29 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr %last) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %seen_vowel) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %seen_upper) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %seen_lower) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal i32 @xlate_word(ptr noundef %word, i32 noundef %n, ptr noundef %phone) #0 {
entry:
  %retval = alloca i32, align 4
  %word.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %phone.addr = alloca ptr, align 8
  %nph = alloca i32, align 4
  %p = alloca ptr, align 8
  %s = alloca ptr, align 8
  %x = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %h = alloca ptr, align 8
  store ptr %word, ptr %word.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %phone, ptr %phone.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %nph) #15
  store i32 0, ptr %nph, align 4, !tbaa !5
  %0 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %1 = load i8, ptr %0, align 1, !tbaa !14
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 91
  br i1 %cmp, label %if.then, label %if.else60

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @dict, align 8, !tbaa !20
  %tobool = icmp ne ptr %2, null
  br i1 %tobool, label %if.then2, label %if.end45

if.then2:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15
  %3 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %4 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call = call ptr @dict_find(ptr noundef %3, i32 noundef %4)
  store ptr %call, ptr %p, align 8, !tbaa !9
  %5 = load ptr, ptr %p, align 8, !tbaa !9
  %tobool3 = icmp ne ptr %5, null
  br i1 %tobool3, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  %6 = load ptr, ptr %p, align 8, !tbaa !9
  store ptr %6, ptr %s, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.end, %if.then4
  %7 = load ptr, ptr %s, align 8, !tbaa !9
  %8 = load i8, ptr %7, align 1, !tbaa !14
  %tobool5 = icmp ne i8 %8, 0
  br i1 %tobool5, label %while.body, label %while.end13

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %x) #15
  %9 = load ptr, ptr @dialect, align 8, !tbaa !17
  %10 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !9
  %11 = load i8, ptr %10, align 1, !tbaa !14
  %conv6 = zext i8 %11 to i32
  %idxprom = zext i32 %conv6 to i64
  %arrayidx = getelementptr inbounds nuw ptr, ptr %9, i64 %idxprom
  %12 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %12, ptr %x, align 8, !tbaa !9
  br label %while.cond7

while.cond7:                                      ; preds = %while.body9, %while.body
  %13 = load ptr, ptr %x, align 8, !tbaa !9
  %14 = load i8, ptr %13, align 1, !tbaa !14
  %tobool8 = icmp ne i8 %14, 0
  br i1 %tobool8, label %while.body9, label %while.end

while.body9:                                      ; preds = %while.cond7
  %15 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %16 = load ptr, ptr %x, align 8, !tbaa !9
  %incdec.ptr10 = getelementptr inbounds nuw i8, ptr %16, i32 1
  store ptr %incdec.ptr10, ptr %x, align 8, !tbaa !9
  %17 = load i8, ptr %16, align 1, !tbaa !14
  %conv11 = sext i8 %17 to i32
  %call12 = call i32 @phone_append(ptr noundef %15, i32 noundef %conv11)
  %18 = load i32, ptr %nph, align 4, !tbaa !5
  %inc = add i32 %18, 1
  store i32 %inc, ptr %nph, align 4, !tbaa !5
  br label %while.cond7, !llvm.loop !161

while.end:                                        ; preds = %while.cond7
  call void @llvm.lifetime.end.p0(i64 8, ptr %x) #15
  br label %while.cond, !llvm.loop !162

while.end13:                                      ; preds = %while.cond
  %19 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call14 = call i32 @phone_append(ptr noundef %19, i32 noundef 32)
  %20 = load ptr, ptr %p, align 8, !tbaa !9
  call void @free(ptr noundef %20) #15
  %21 = load i32, ptr %nph, align 4, !tbaa !5
  %add = add i32 %21, 1
  store i32 %add, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  br label %cleanup42

if.else:                                          ; preds = %if.then2
  call void @llvm.lifetime.start.p0(i64 8, ptr %h) #15
  %22 = load ptr, ptr %word.addr, align 8, !tbaa !9
  store ptr %22, ptr %h, align 8, !tbaa !9
  br label %while.cond15

while.cond15:                                     ; preds = %if.end, %if.else
  %23 = load ptr, ptr %h, align 8, !tbaa !9
  %24 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %25 = load i32, ptr %n.addr, align 4, !tbaa !5
  %idx.ext = sext i32 %25 to i64
  %add.ptr = getelementptr inbounds i8, ptr %24, i64 %idx.ext
  %cmp16 = icmp ult ptr %23, %add.ptr
  br i1 %cmp16, label %while.body18, label %while.end40

while.body18:                                     ; preds = %while.cond15
  %26 = load ptr, ptr %h, align 8, !tbaa !9
  %27 = load i8, ptr %26, align 1, !tbaa !14
  %conv19 = sext i8 %27 to i32
  %cmp20 = icmp eq i32 %conv19, 46
  br i1 %cmp20, label %if.then25, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %while.body18
  %28 = load ptr, ptr %h, align 8, !tbaa !9
  %29 = load i8, ptr %28, align 1, !tbaa !14
  %conv22 = sext i8 %29 to i32
  %cmp23 = icmp eq i32 %conv22, 45
  br i1 %cmp23, label %if.then25, label %if.else38

if.then25:                                        ; preds = %lor.lhs.false, %while.body18
  %30 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %31 = load ptr, ptr %h, align 8, !tbaa !9
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %31, i32 1
  store ptr %incdec.ptr26, ptr %h, align 8, !tbaa !9
  %32 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %sub.ptr.lhs.cast = ptrtoint ptr %31 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %32 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv27 = trunc i64 %sub.ptr.sub to i32
  %33 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call28 = call i32 @xlate_word(ptr noundef %30, i32 noundef %conv27, ptr noundef %33)
  %34 = load i32, ptr %nph, align 4, !tbaa !5
  %add29 = add i32 %34, %call28
  store i32 %add29, ptr %nph, align 4, !tbaa !5
  %35 = load ptr, ptr %h, align 8, !tbaa !9
  %36 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %37 = load i32, ptr %n.addr, align 4, !tbaa !5
  %idx.ext30 = sext i32 %37 to i64
  %add.ptr31 = getelementptr inbounds i8, ptr %36, i64 %idx.ext30
  %38 = load ptr, ptr %h, align 8, !tbaa !9
  %sub.ptr.lhs.cast32 = ptrtoint ptr %add.ptr31 to i64
  %sub.ptr.rhs.cast33 = ptrtoint ptr %38 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %conv35 = trunc i64 %sub.ptr.sub34 to i32
  %39 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call36 = call i32 @xlate_word(ptr noundef %35, i32 noundef %conv35, ptr noundef %39)
  %40 = load i32, ptr %nph, align 4, !tbaa !5
  %add37 = add i32 %40, %call36
  store i32 %add37, ptr %nph, align 4, !tbaa !5
  %41 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %41, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else38:                                        ; preds = %lor.lhs.false
  %42 = load ptr, ptr %h, align 8, !tbaa !9
  %incdec.ptr39 = getelementptr inbounds nuw i8, ptr %42, i32 1
  store ptr %incdec.ptr39, ptr %h, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.else38
  br label %while.cond15, !llvm.loop !163

while.end40:                                      ; preds = %while.cond15
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %while.end40, %if.then25
  call void @llvm.lifetime.end.p0(i64 8, ptr %h) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup42 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end41

if.end41:                                         ; preds = %cleanup.cont
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup42

cleanup42:                                        ; preds = %if.end41, %cleanup, %while.end13
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15
  %cleanup.dest43 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest43, label %cleanup83 [
    i32 0, label %cleanup.cont44
  ]

cleanup.cont44:                                   ; preds = %cleanup42
  br label %if.end45

if.end45:                                         ; preds = %cleanup.cont44, %if.then
  %43 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %44 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call46 = call i32 @suspect_word(ptr noundef %43, i32 noundef %44)
  %tobool47 = icmp ne i32 %call46, 0
  br i1 %tobool47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.end45
  %45 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %46 = load i32, ptr %n.addr, align 4, !tbaa !5
  %47 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call49 = call i32 @spell_out(ptr noundef %45, i32 noundef %46, ptr noundef %47)
  store i32 %call49, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

if.else50:                                        ; preds = %if.end45
  %48 = load ptr, ptr @dict, align 8, !tbaa !20
  %tobool51 = icmp ne ptr %48, null
  br i1 %tobool51, label %if.then54, label %lor.lhs.false52

lor.lhs.false52:                                  ; preds = %if.else50
  %49 = load i32, ptr @verbose, align 4, !tbaa !5
  %tobool53 = icmp ne i32 %49, 0
  br i1 %tobool53, label %if.then54, label %if.end56

if.then54:                                        ; preds = %lor.lhs.false52, %if.else50
  %50 = load ptr, ptr @stderr, align 8, !tbaa !26
  %51 = load ptr, ptr @dict, align 8, !tbaa !20
  %52 = load i32, ptr %n.addr, align 4, !tbaa !5
  %53 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str.15.860, ptr noundef %51, i32 noundef %52, ptr noundef %53) #15
  br label %if.end56

if.end56:                                         ; preds = %if.then54, %lor.lhs.false52
  %54 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %55 = load i32, ptr %n.addr, align 4, !tbaa !5
  %56 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call57 = call i32 @NRL(ptr noundef %54, i32 noundef %55, ptr noundef %56)
  %57 = load i32, ptr %nph, align 4, !tbaa !5
  %add58 = add i32 %57, %call57
  store i32 %add58, ptr %nph, align 4, !tbaa !5
  br label %if.end59

if.end59:                                         ; preds = %if.end56
  br label %if.end80

if.else60:                                        ; preds = %entry
  %58 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %58, i32 1
  store ptr %incdec.ptr61, ptr %word.addr, align 8, !tbaa !9
  %59 = load i32, ptr %n.addr, align 4, !tbaa !5
  %dec = add nsw i32 %59, -1
  store i32 %dec, ptr %n.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %dec, 1
  %idxprom62 = sext i32 %sub to i64
  %arrayidx63 = getelementptr inbounds i8, ptr %incdec.ptr61, i64 %idxprom62
  %60 = load i8, ptr %arrayidx63, align 1, !tbaa !14
  %conv64 = sext i8 %60 to i32
  %cmp65 = icmp eq i32 %conv64, 93
  br i1 %cmp65, label %if.then67, label %if.end69

if.then67:                                        ; preds = %if.else60
  %61 = load i32, ptr %n.addr, align 4, !tbaa !5
  %dec68 = add nsw i32 %61, -1
  store i32 %dec68, ptr %n.addr, align 4, !tbaa !5
  br label %if.end69

if.end69:                                         ; preds = %if.then67, %if.else60
  br label %while.cond70

while.cond70:                                     ; preds = %while.body74, %if.end69
  %62 = load i32, ptr %n.addr, align 4, !tbaa !5
  %dec71 = add nsw i32 %62, -1
  store i32 %dec71, ptr %n.addr, align 4, !tbaa !5
  %cmp72 = icmp sgt i32 %62, 0
  br i1 %cmp72, label %while.body74, label %while.end79

while.body74:                                     ; preds = %while.cond70
  %63 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %64 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %64, i32 1
  store ptr %incdec.ptr75, ptr %word.addr, align 8, !tbaa !9
  %65 = load i8, ptr %64, align 1, !tbaa !14
  %conv76 = sext i8 %65 to i32
  %call77 = call i32 @phone_append(ptr noundef %63, i32 noundef %conv76)
  %66 = load i32, ptr %nph, align 4, !tbaa !5
  %inc78 = add i32 %66, 1
  store i32 %inc78, ptr %nph, align 4, !tbaa !5
  br label %while.cond70, !llvm.loop !164

while.end79:                                      ; preds = %while.cond70
  br label %if.end80

if.end80:                                         ; preds = %while.end79, %if.end59
  %67 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call81 = call i32 @phone_append(ptr noundef %67, i32 noundef 32)
  %68 = load i32, ptr %nph, align 4, !tbaa !5
  %add82 = add i32 %68, 1
  store i32 %add82, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup83

cleanup83:                                        ; preds = %if.end80, %if.then48, %cleanup42
  call void @llvm.lifetime.end.p0(i64 4, ptr %nph) #15
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: inlinehint nounwind uwtable
define internal ptr @darray_find.858(ptr noundef %a, i32 noundef %n) #10 {
entry:
  %retval = alloca ptr, align 8
  %a.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !20
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  %0 = load i32, ptr %n.addr, align 4, !tbaa !5
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %alloc = getelementptr inbounds nuw %struct.darray_t, ptr %1, i32 0, i32 2
  %2 = load i32, ptr %alloc, align 4, !tbaa !30
  %cmp = icmp ult i32 %0, %2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %n.addr, align 4, !tbaa !5
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %4, i32 0, i32 1
  %5 = load i32, ptr %items, align 8, !tbaa !31
  %cmp1 = icmp ult i32 %3, %5
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data = getelementptr inbounds nuw %struct.darray_t, ptr %6, i32 0, i32 0
  %7 = load ptr, ptr %data, align 8, !tbaa !28
  %8 = load i32, ptr %n.addr, align 4, !tbaa !5
  %9 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize = getelementptr inbounds nuw %struct.darray_t, ptr %9, i32 0, i32 3
  %10 = load i16, ptr %esize, align 8, !tbaa !32
  %conv = zext i16 %10 to i32
  %mul = mul i32 %8, %conv
  %idx.ext = zext i32 %mul to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %7, i64 %idx.ext
  store ptr %add.ptr, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %land.lhs.true, %entry
  %11 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %12 = load i32, ptr %n.addr, align 4, !tbaa !5
  %call = call ptr @Darray_find(ptr noundef %11, i32 noundef %12)
  store ptr %call, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %13 = load ptr, ptr %retval, align 8
  ret ptr %13
}

; Function Attrs: nounwind uwtable
define dso_local void @say_phones(ptr noundef %phone, i32 noundef %len, i32 noundef %verbose) #0 {
entry:
  %phone.addr = alloca ptr, align 8
  %len.addr = alloca i32, align 4
  %verbose.addr = alloca i32, align 4
  %elm = alloca %struct.darray_t, align 8
  %frames = alloca i32, align 4
  %max_samples = alloca i32, align 4
  %samp = alloca ptr, align 8
  %nsamp = alloca i32, align 4
  store ptr %phone, ptr %phone.addr, align 8, !tbaa !9
  store i32 %len, ptr %len.addr, align 4, !tbaa !5
  store i32 %verbose, ptr %verbose.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 24, ptr %elm) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %frames) #15
  %0 = load i32, ptr %len.addr, align 4, !tbaa !5
  call void @darray_init(ptr noundef %elm, i32 noundef 1, i32 noundef %0)
  %1 = load ptr, ptr %phone.addr, align 8, !tbaa !9
  %2 = load i32, ptr %len.addr, align 4, !tbaa !5
  %call = call i32 @phone_to_elm(ptr noundef %1, i32 noundef %2, ptr noundef %elm)
  store i32 %call, ptr %frames, align 4, !tbaa !5
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_samples) #15
  %3 = load i32, ptr %frames, align 4, !tbaa !5
  %conv = zext i32 %3 to i64
  %4 = load i64, ptr getelementptr inbounds nuw (%struct.klatt_global_t, ptr @klatt_global, i32 0, i32 7), align 8, !tbaa !44
  %mul = mul nsw i64 %conv, %4
  %conv1 = trunc i64 %mul to i32
  store i32 %conv1, ptr %max_samples, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %samp) #15
  %5 = load i32, ptr %max_samples, align 4, !tbaa !5
  %conv2 = zext i32 %5 to i64
  %mul3 = mul i64 2, %conv2
  %call4 = call noalias ptr @malloc(i64 noundef %mul3) #17
  store ptr %call4, ptr %samp, align 8, !tbaa !21
  %6 = load i32, ptr %verbose.addr, align 4, !tbaa !5
  %tobool5 = icmp ne i32 %6, 0
  br i1 %tobool5, label %if.then6, label %if.end

if.then6:                                         ; preds = %if.then
  %7 = load ptr, ptr @stderr, align 8, !tbaa !26
  %8 = load i32, ptr %len.addr, align 4, !tbaa !5
  %9 = load ptr, ptr %phone.addr, align 8, !tbaa !9
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef @.str.3.859, i32 noundef %8, ptr noundef %9) #15
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %10 = load ptr, ptr %samp, align 8, !tbaa !21
  %tobool8 = icmp ne ptr %10, null
  br i1 %tobool8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %nsamp) #15
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %elm, i32 0, i32 1
  %11 = load i32, ptr %items, align 8, !tbaa !31
  %call10 = call ptr @darray_find.858(ptr noundef %elm, i32 noundef 0)
  %12 = load i32, ptr %max_samples, align 4, !tbaa !5
  %13 = load ptr, ptr %samp, align 8, !tbaa !21
  %call11 = call i32 @holmes(i32 noundef %11, ptr noundef %call10, i32 noundef %12, ptr noundef %13)
  store i32 %call11, ptr %nsamp, align 4, !tbaa !5
  %14 = load ptr, ptr @file_write, align 8, !tbaa !20
  %tobool12 = icmp ne ptr %14, null
  br i1 %tobool12, label %land.lhs.true, label %if.end15

land.lhs.true:                                    ; preds = %if.then9
  %15 = load i32, ptr @once, align 4, !tbaa !5
  %cmp = icmp eq i32 %15, 0
  br i1 %cmp, label %if.then14, label %if.end15

if.then14:                                        ; preds = %land.lhs.true
  %16 = load ptr, ptr @file_write, align 8, !tbaa !20
  %17 = load i32, ptr %nsamp, align 4, !tbaa !5
  %18 = load ptr, ptr %samp, align 8, !tbaa !21
  call void %16(i32 noundef %17, ptr noundef %18)
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %land.lhs.true, %if.then9
  %19 = load ptr, ptr %samp, align 8, !tbaa !21
  call void @free(ptr noundef %19) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %nsamp) #15
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %samp) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_samples) #15
  br label %if.end17

if.end17:                                         ; preds = %if.end16, %entry
  call void @darray_free(ptr noundef %elm)
  call void @llvm.lifetime.end.p0(i64 4, ptr %frames) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr %elm) #15
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @darray_init(ptr noundef %a, i32 noundef %size, i32 noundef %get) #10 {
entry:
  %a.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  %get.addr = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !20
  store i32 %size, ptr %size.addr, align 4, !tbaa !5
  store i32 %get, ptr %get.addr, align 4, !tbaa !5
  %0 = load i32, ptr %size.addr, align 4, !tbaa !5
  %conv = trunc i32 %0 to i16
  %1 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %esize = getelementptr inbounds nuw %struct.darray_t, ptr %1, i32 0, i32 3
  store i16 %conv, ptr %esize, align 8, !tbaa !32
  %2 = load i32, ptr %get.addr, align 4, !tbaa !5
  %conv1 = trunc i32 %2 to i16
  %3 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %get2 = getelementptr inbounds nuw %struct.darray_t, ptr %3, i32 0, i32 4
  store i16 %conv1, ptr %get2, align 2, !tbaa !33
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %alloc = getelementptr inbounds nuw %struct.darray_t, ptr %4, i32 0, i32 2
  store i32 0, ptr %alloc, align 4, !tbaa !30
  %5 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %5, i32 0, i32 1
  store i32 0, ptr %items, align 8, !tbaa !31
  %6 = load ptr, ptr %a.addr, align 8, !tbaa !20
  %data = getelementptr inbounds nuw %struct.darray_t, ptr %6, i32 0, i32 0
  store ptr null, ptr %data, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() #13

; Function Attrs: nounwind uwtable
define dso_local ptr @concat_args(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %buf = alloca ptr, align 8
  %d = alloca ptr, align 8
  %s = alloca ptr, align 8
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15
  store i32 0, ptr %len, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %buf) #15
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %2, i64 %idxprom
  %4 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %call = call i64 @strlen(ptr noundef %4) #14
  %add = add i64 %call, 1
  %5 = load i32, ptr %len, align 4, !tbaa !5
  %conv = sext i32 %5 to i64
  %add1 = add i64 %conv, %add
  %conv2 = trunc i64 %add1 to i32
  store i32 %conv2, ptr %len, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !165

for.end:                                          ; preds = %for.cond
  %7 = load i32, ptr %len, align 4, !tbaa !5
  %conv3 = sext i32 %7 to i64
  %call4 = call noalias ptr @malloc(i64 noundef %conv3) #17
  store ptr %call4, ptr %buf, align 8, !tbaa !9
  %8 = load ptr, ptr %buf, align 8, !tbaa !9
  %tobool = icmp ne ptr %8, null
  br i1 %tobool, label %if.then, label %if.end19

if.then:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #15
  %9 = load ptr, ptr %buf, align 8, !tbaa !9
  store ptr %9, ptr %d, align 8, !tbaa !9
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %if.end, %if.then
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %10, %11
  br i1 %cmp6, label %for.body8, label %for.end18

for.body8:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  %12 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %13, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %13 to i64
  %arrayidx11 = getelementptr inbounds ptr, ptr %12, i64 %idxprom10
  %14 = load ptr, ptr %arrayidx11, align 8, !tbaa !9
  store ptr %14, ptr %s, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body8
  %15 = load ptr, ptr %s, align 8, !tbaa !9
  %16 = load i8, ptr %15, align 1, !tbaa !14
  %tobool12 = icmp ne i8 %16, 0
  br i1 %tobool12, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %17 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !9
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %19 = load ptr, ptr %d, align 8, !tbaa !9
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr13, ptr %d, align 8, !tbaa !9
  store i8 %18, ptr %19, align 1, !tbaa !14
  br label %while.cond, !llvm.loop !166

while.end:                                        ; preds = %while.cond
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %20, %21
  br i1 %cmp14, label %if.then16, label %if.else

if.then16:                                        ; preds = %while.end
  %22 = load ptr, ptr %d, align 8, !tbaa !9
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %22, i32 1
  store ptr %incdec.ptr17, ptr %d, align 8, !tbaa !9
  store i8 32, ptr %22, align 1, !tbaa !14
  br label %if.end

if.else:                                          ; preds = %while.end
  %23 = load ptr, ptr %d, align 8, !tbaa !9
  store i8 0, ptr %23, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  br label %for.cond5, !llvm.loop !167

for.end18:                                        ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #15
  br label %if.end19

if.end19:                                         ; preds = %for.end18, %for.end
  %24 = load ptr, ptr %buf, align 8, !tbaa !9
  call void @llvm.lifetime.end.p0(i64 8, ptr %buf) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15
  ret ptr %24
}

; Function Attrs: nounwind uwtable
define dso_local void @say_string(ptr noundef %s) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %phone = alloca %struct.darray_t, align 8
  store ptr %s, ptr %s.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 24, ptr %phone) #15
  call void @darray_init(ptr noundef %phone, i32 noundef 1, i32 noundef 128)
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !9
  %call = call i32 @xlate_string(ptr noundef %0, ptr noundef %phone)
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %phone, i32 0, i32 1
  %1 = load i32, ptr %items, align 8, !tbaa !31
  %tobool = icmp ne i32 %1, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call ptr @darray_find.858(ptr noundef %phone, i32 noundef 0)
  %items2 = getelementptr inbounds nuw %struct.darray_t, ptr %phone, i32 0, i32 1
  %2 = load i32, ptr %items2, align 8, !tbaa !31
  %3 = load i32, ptr @verbose, align 4, !tbaa !5
  call void @say_phones(ptr noundef %call1, i32 noundef %2, i32 noundef %3)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  call void @darray_free(ptr noundef %phone)
  call void @llvm.lifetime.end.p0(i64 24, ptr %phone) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @darray_fget(ptr noundef %f, ptr noundef %p) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %p.addr = alloca ptr, align 8
  %ch = alloca i32, align 4
  store ptr %f, ptr %f.addr, align 8, !tbaa !26
  store ptr %p, ptr %p.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %ch) #15
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %f.addr, align 8, !tbaa !26
  %call = call i32 @fgetc(ptr noundef %0)
  store i32 %call, ptr %ch, align 4, !tbaa !5
  %cmp = icmp ne i32 %call, -1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %1 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %2 = load i32, ptr %ch, align 4, !tbaa !5
  %call1 = call i32 @phone_append(ptr noundef %1, i32 noundef %2)
  %3 = load i32, ptr %ch, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, 10
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end

if.end:                                           ; preds = %while.body
  br label %while.cond, !llvm.loop !168

while.end:                                        ; preds = %if.then, %while.cond
  %4 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %call3 = call i32 @phone_append(ptr noundef %4, i32 noundef 0)
  %5 = load ptr, ptr %p.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %5, i32 0, i32 1
  %6 = load i32, ptr %items, align 8, !tbaa !31
  %sub = sub i32 %6, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr %ch) #15
  ret i32 %sub
}

declare i32 @fgetc(ptr noundef) #2

; Function Attrs: nounwind uwtable
define dso_local void @say_file(ptr noundef %f) #0 {
entry:
  %f.addr = alloca ptr, align 8
  %loop_wrap = alloca ptr, align 8
  %loop_wrap1 = alloca i64, align 8
  %loop_wrap2 = alloca i64, align 8
  %nlines = alloca i64, align 8
  %line = alloca %struct.darray_t, align 8
  %phone = alloca %struct.darray_t, align 8
  store ptr %f, ptr %f.addr, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap) #15
  store ptr null, ptr %loop_wrap, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap1) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %loop_wrap2) #15
  %call = call noalias ptr @fopen(ptr noundef @.str.5.861, ptr noundef @.str.6.862)
  store ptr %call, ptr %loop_wrap, align 8, !tbaa !26
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !26
  %call1 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef @.str.7.863) #15
  call void @exit(i32 noundef 1) #18
  unreachable

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %loop_wrap, align 8, !tbaa !26
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %1, ptr noundef @.str.8.864, ptr noundef %loop_wrap2)
  %2 = load ptr, ptr %loop_wrap, align 8, !tbaa !26
  %call3 = call i32 @fclose(ptr noundef %2)
  call void @llvm.lifetime.start.p0(i64 8, ptr %nlines) #15
  store i64 0, ptr %nlines, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 24, ptr %line) #15
  call void @llvm.lifetime.start.p0(i64 24, ptr %phone) #15
  call void @darray_init(ptr noundef %line, i32 noundef 1, i32 noundef 128)
  call void @darray_init(ptr noundef %phone, i32 noundef 1, i32 noundef 128)
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end
  %3 = load ptr, ptr %f.addr, align 8, !tbaa !26
  %call4 = call i32 @darray_fget(ptr noundef %3, ptr noundef %line)
  %tobool = icmp ne i32 %call4, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %4 = load i64, ptr %nlines, align 8, !tbaa !12
  %cmp5 = icmp slt i64 %4, 500
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %5 = phi i1 [ false, %while.cond ], [ %cmp5, %land.rhs ]
  br i1 %5, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %6 = load i64, ptr %nlines, align 8, !tbaa !12
  %inc = add nsw i64 %6, 1
  store i64 %inc, ptr %nlines, align 8, !tbaa !12
  %call6 = call ptr @darray_find.858(ptr noundef %line, i32 noundef 0)
  %call7 = call i32 @xlate_string(ptr noundef %call6, ptr noundef %phone)
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %line, i32 0, i32 1
  store i32 0, ptr %items, align 8, !tbaa !31
  br label %while.cond, !llvm.loop !169

while.end:                                        ; preds = %land.end
  %items8 = getelementptr inbounds nuw %struct.darray_t, ptr %phone, i32 0, i32 1
  %7 = load i32, ptr %items8, align 8, !tbaa !31
  %tobool9 = icmp ne i32 %7, 0
  br i1 %tobool9, label %if.then10, label %if.end15

if.then10:                                        ; preds = %while.end
  store i64 0, ptr %loop_wrap1, align 8, !tbaa !12
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.then10
  %8 = load i64, ptr %loop_wrap1, align 8, !tbaa !12
  %9 = load i64, ptr %loop_wrap2, align 8, !tbaa !12
  %cmp11 = icmp slt i64 %8, %9
  br i1 %cmp11, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call12 = call ptr @darray_find.858(ptr noundef %phone, i32 noundef 0)
  %items13 = getelementptr inbounds nuw %struct.darray_t, ptr %phone, i32 0, i32 1
  %10 = load i32, ptr %items13, align 8, !tbaa !31
  %11 = load i32, ptr @verbose, align 4, !tbaa !5
  call void @say_phones(ptr noundef %call12, i32 noundef %10, i32 noundef %11)
  store i32 1, ptr @once, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %12 = load i64, ptr %loop_wrap1, align 8, !tbaa !12
  %inc14 = add nsw i64 %12, 1
  store i64 %inc14, ptr %loop_wrap1, align 8, !tbaa !12
  br label %for.cond, !llvm.loop !170

for.end:                                          ; preds = %for.cond
  br label %if.end15

if.end15:                                         ; preds = %for.end, %while.end
  call void @darray_free(ptr noundef %phone)
  call void @darray_free(ptr noundef %line)
  call void @llvm.lifetime.end.p0(i64 24, ptr %phone) #15
  call void @llvm.lifetime.end.p0(i64 24, ptr %line) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %nlines) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap2) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap1) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %loop_wrap) #15
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr noundef %argv, ptr noundef %env) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %env.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !17
  store ptr %env, ptr %env.addr, align 8, !tbaa !17
  %0 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds ptr, ptr %0, i64 0
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %1, ptr @program, align 8, !tbaa !9
  %2 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %3 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call = call i32 @audio_init(i32 noundef %2, ptr noundef %3)
  store i32 %call, ptr %argc.addr, align 4, !tbaa !5
  %4 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %5 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call1 = call i32 @init_synth(i32 noundef %4, ptr noundef %5)
  store i32 %call1, ptr %argc.addr, align 4, !tbaa !5
  %6 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %7 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call2 = call i32 @init_holmes(i32 noundef %6, ptr noundef %7)
  store i32 %call2, ptr %argc.addr, align 4, !tbaa !5
  %8 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %9 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call3 = call i32 @dict_init(i32 noundef %8, ptr noundef %9)
  store i32 %call3, ptr %argc.addr, align 4, !tbaa !5
  %10 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %11 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call4 = call i32 @file_init(i32 noundef %10, ptr noundef %11)
  store i32 %call4, ptr %argc.addr, align 4, !tbaa !5
  %12 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %13 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call5 = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef @.str.9.865, i32 noundef %12, ptr noundef %13, ptr noundef @.str.10.866, ptr noundef null, ptr noundef @verbose, ptr noundef @.str.11.867, ptr noundef null)
  store i32 %call5, ptr %argc.addr, align 4, !tbaa !5
  %14 = load i32, ptr @help_only, align 4, !tbaa !5
  %tobool = icmp ne i32 %14, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %15 = load ptr, ptr @stderr, align 8, !tbaa !26
  %16 = load ptr, ptr @program, align 8, !tbaa !9
  %call6 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str.12.868, ptr noundef %16) #15
  %17 = load ptr, ptr @stderr, align 8, !tbaa !26
  %18 = load ptr, ptr @program, align 8, !tbaa !9
  %call7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str.13.869, ptr noundef %18) #15
  %19 = load ptr, ptr @stderr, align 8, !tbaa !26
  %20 = load ptr, ptr @Revision, align 8, !tbaa !9
  %call8 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %19, ptr noundef @.str.14.870, ptr noundef %20) #15
  br label %if.end15

if.else:                                          ; preds = %entry
  %21 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %21, 1
  br i1 %cmp, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  %22 = load i32, ptr %argc.addr, align 4, !tbaa !5
  %23 = load ptr, ptr %argv.addr, align 8, !tbaa !17
  %call10 = call ptr @concat_args(i32 noundef %22, ptr noundef %23)
  store ptr %call10, ptr %s, align 8, !tbaa !9
  %24 = load ptr, ptr %s, align 8, !tbaa !9
  %tobool11 = icmp ne ptr %24, null
  br i1 %tobool11, label %if.then12, label %if.end

if.then12:                                        ; preds = %if.then9
  %25 = load ptr, ptr %s, align 8, !tbaa !9
  call void @say_string(ptr noundef %25)
  %26 = load ptr, ptr %s, align 8, !tbaa !9
  call void @free(ptr noundef %26) #15
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then9
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  br label %if.end14

if.else13:                                        ; preds = %if.else
  %27 = load ptr, ptr @stdin, align 8, !tbaa !26
  call void @say_file(ptr noundef %27)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.end
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then
  %28 = load ptr, ptr @file_term, align 8, !tbaa !20
  %tobool16 = icmp ne ptr %28, null
  br i1 %tobool16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end15
  %29 = load ptr, ptr @file_term, align 8, !tbaa !20
  call void %29()
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  call void @audio_term()
  call void @term_holmes()
  %30 = load ptr, ptr @dict, align 8, !tbaa !20
  %tobool19 = icmp ne ptr %30, null
  br i1 %tobool19, label %if.then20, label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @dict_term()
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_cardinal(i64 noundef %value, ptr noundef %phone) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %phone.addr = alloca ptr, align 8
  %nph = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8, !tbaa !12
  store ptr %phone, ptr %phone.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %nph) #15
  store i32 0, ptr %nph, align 4, !tbaa !5
  %0 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call = call i32 @xlate_string(ptr noundef @.str.1.874, ptr noundef %1)
  %2 = load i32, ptr %nph, align 4, !tbaa !5
  %add = add i32 %2, %call
  store i32 %add, ptr %nph, align 4, !tbaa !5
  %3 = load i64, ptr %value.addr, align 8, !tbaa !12
  %sub = sub nsw i64 0, %3
  store i64 %sub, ptr %value.addr, align 8, !tbaa !12
  %4 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp1 = icmp slt i64 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call3 = call i32 @xlate_string(ptr noundef @.str.2.875, ptr noundef %5)
  %6 = load i32, ptr %nph, align 4, !tbaa !5
  %add4 = add i32 %6, %call3
  store i32 %add4, ptr %nph, align 4, !tbaa !5
  %7 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp6 = icmp sge i64 %8, 1000000000
  br i1 %cmp6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.end5
  %9 = load i64, ptr %value.addr, align 8, !tbaa !12
  %div = sdiv i64 %9, 1000000000
  %10 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call8 = call i32 @xlate_cardinal(i64 noundef %div, ptr noundef %10)
  %11 = load i32, ptr %nph, align 4, !tbaa !5
  %add9 = add i32 %11, %call8
  store i32 %add9, ptr %nph, align 4, !tbaa !5
  %12 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call10 = call i32 @xlate_string(ptr noundef @.str.3.876, ptr noundef %12)
  %13 = load i32, ptr %nph, align 4, !tbaa !5
  %add11 = add i32 %13, %call10
  store i32 %add11, ptr %nph, align 4, !tbaa !5
  %14 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem = srem i64 %14, 1000000000
  store i64 %rem, ptr %value.addr, align 8, !tbaa !12
  %15 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp12 = icmp eq i64 %15, 0
  br i1 %cmp12, label %if.then13, label %if.end14

if.then13:                                        ; preds = %if.then7
  %16 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then7
  %17 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp15 = icmp slt i64 %17, 100
  br i1 %cmp15, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end14
  %18 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call17 = call i32 @xlate_string(ptr noundef @.str.4.877, ptr noundef %18)
  %19 = load i32, ptr %nph, align 4, !tbaa !5
  %add18 = add i32 %19, %call17
  store i32 %add18, ptr %nph, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end14
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.end5
  %20 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp21 = icmp sge i64 %20, 1000000
  br i1 %cmp21, label %if.then22, label %if.end37

if.then22:                                        ; preds = %if.end20
  %21 = load i64, ptr %value.addr, align 8, !tbaa !12
  %div23 = sdiv i64 %21, 1000000
  %22 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call24 = call i32 @xlate_cardinal(i64 noundef %div23, ptr noundef %22)
  %23 = load i32, ptr %nph, align 4, !tbaa !5
  %add25 = add i32 %23, %call24
  store i32 %add25, ptr %nph, align 4, !tbaa !5
  %24 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call26 = call i32 @xlate_string(ptr noundef @.str.5.878, ptr noundef %24)
  %25 = load i32, ptr %nph, align 4, !tbaa !5
  %add27 = add i32 %25, %call26
  store i32 %add27, ptr %nph, align 4, !tbaa !5
  %26 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem28 = srem i64 %26, 1000000
  store i64 %rem28, ptr %value.addr, align 8, !tbaa !12
  %27 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp29 = icmp eq i64 %27, 0
  br i1 %cmp29, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.then22
  %28 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %28, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end31:                                         ; preds = %if.then22
  %29 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp32 = icmp slt i64 %29, 100
  br i1 %cmp32, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end31
  %30 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call34 = call i32 @xlate_string(ptr noundef @.str.4.877, ptr noundef %30)
  %31 = load i32, ptr %nph, align 4, !tbaa !5
  %add35 = add i32 %31, %call34
  store i32 %add35, ptr %nph, align 4, !tbaa !5
  br label %if.end36

if.end36:                                         ; preds = %if.then33, %if.end31
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end20
  %32 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp38 = icmp sge i64 %32, 1000
  br i1 %cmp38, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end37
  %33 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp39 = icmp sle i64 %33, 1099
  br i1 %cmp39, label %if.then41, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end37
  %34 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp40 = icmp sge i64 %34, 2000
  br i1 %cmp40, label %if.then41, label %if.end56

if.then41:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %35 = load i64, ptr %value.addr, align 8, !tbaa !12
  %div42 = sdiv i64 %35, 1000
  %36 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call43 = call i32 @xlate_cardinal(i64 noundef %div42, ptr noundef %36)
  %37 = load i32, ptr %nph, align 4, !tbaa !5
  %add44 = add i32 %37, %call43
  store i32 %add44, ptr %nph, align 4, !tbaa !5
  %38 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call45 = call i32 @xlate_string(ptr noundef @.str.6.879, ptr noundef %38)
  %39 = load i32, ptr %nph, align 4, !tbaa !5
  %add46 = add i32 %39, %call45
  store i32 %add46, ptr %nph, align 4, !tbaa !5
  %40 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem47 = srem i64 %40, 1000
  store i64 %rem47, ptr %value.addr, align 8, !tbaa !12
  %41 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp48 = icmp eq i64 %41, 0
  br i1 %cmp48, label %if.then49, label %if.end50

if.then49:                                        ; preds = %if.then41
  %42 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %42, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end50:                                         ; preds = %if.then41
  %43 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp51 = icmp slt i64 %43, 100
  br i1 %cmp51, label %if.then52, label %if.end55

if.then52:                                        ; preds = %if.end50
  %44 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call53 = call i32 @xlate_string(ptr noundef @.str.4.877, ptr noundef %44)
  %45 = load i32, ptr %nph, align 4, !tbaa !5
  %add54 = add i32 %45, %call53
  store i32 %add54, ptr %nph, align 4, !tbaa !5
  br label %if.end55

if.end55:                                         ; preds = %if.then52, %if.end50
  br label %if.end56

if.end56:                                         ; preds = %if.end55, %lor.lhs.false
  %46 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp57 = icmp sge i64 %46, 100
  br i1 %cmp57, label %if.then58, label %if.end68

if.then58:                                        ; preds = %if.end56
  %47 = load i64, ptr %value.addr, align 8, !tbaa !12
  %div59 = sdiv i64 %47, 100
  %arrayidx = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %div59
  %48 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %49 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call60 = call i32 @xlate_string(ptr noundef %48, ptr noundef %49)
  %50 = load i32, ptr %nph, align 4, !tbaa !5
  %add61 = add i32 %50, %call60
  store i32 %add61, ptr %nph, align 4, !tbaa !5
  %51 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call62 = call i32 @xlate_string(ptr noundef @.str.7.880, ptr noundef %51)
  %52 = load i32, ptr %nph, align 4, !tbaa !5
  %add63 = add i32 %52, %call62
  store i32 %add63, ptr %nph, align 4, !tbaa !5
  %53 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem64 = srem i64 %53, 100
  store i64 %rem64, ptr %value.addr, align 8, !tbaa !12
  %54 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp65 = icmp eq i64 %54, 0
  br i1 %cmp65, label %if.then66, label %if.end67

if.then66:                                        ; preds = %if.then58
  %55 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %55, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end67:                                         ; preds = %if.then58
  br label %if.end68

if.end68:                                         ; preds = %if.end67, %if.end56
  %56 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp69 = icmp sge i64 %56, 20
  br i1 %cmp69, label %if.then70, label %if.end80

if.then70:                                        ; preds = %if.end68
  %57 = load i64, ptr %value.addr, align 8, !tbaa !12
  %sub71 = sub nsw i64 %57, 20
  %div72 = sdiv i64 %sub71, 10
  %arrayidx73 = getelementptr inbounds [8 x ptr], ptr @Twenties, i64 0, i64 %div72
  %58 = load ptr, ptr %arrayidx73, align 8, !tbaa !9
  %59 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call74 = call i32 @xlate_string(ptr noundef %58, ptr noundef %59)
  %60 = load i32, ptr %nph, align 4, !tbaa !5
  %add75 = add i32 %60, %call74
  store i32 %add75, ptr %nph, align 4, !tbaa !5
  %61 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem76 = srem i64 %61, 10
  store i64 %rem76, ptr %value.addr, align 8, !tbaa !12
  %62 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp77 = icmp eq i64 %62, 0
  br i1 %cmp77, label %if.then78, label %if.end79

if.then78:                                        ; preds = %if.then70
  %63 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %63, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end79:                                         ; preds = %if.then70
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end68
  %64 = load i64, ptr %value.addr, align 8, !tbaa !12
  %arrayidx81 = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %64
  %65 = load ptr, ptr %arrayidx81, align 8, !tbaa !9
  %66 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call82 = call i32 @xlate_string(ptr noundef %65, ptr noundef %66)
  %67 = load i32, ptr %nph, align 4, !tbaa !5
  %add83 = add i32 %67, %call82
  store i32 %add83, ptr %nph, align 4, !tbaa !5
  %68 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %68, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %if.then78, %if.then66, %if.then49, %if.then30, %if.then13, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %nph) #15
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_ordinal(i64 noundef %value, ptr noundef %phone) #0 {
entry:
  %retval = alloca i32, align 4
  %value.addr = alloca i64, align 8
  %phone.addr = alloca ptr, align 8
  %nph = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %value, ptr %value.addr, align 8, !tbaa !12
  store ptr %phone, ptr %phone.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %nph) #15
  store i32 0, ptr %nph, align 4, !tbaa !5
  %0 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp = icmp slt i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call = call i32 @xlate_string(ptr noundef @.str.1.874, ptr noundef %1)
  %2 = load i32, ptr %nph, align 4, !tbaa !5
  %add = add i32 %2, %call
  store i32 %add, ptr %nph, align 4, !tbaa !5
  %3 = load i64, ptr %value.addr, align 8, !tbaa !12
  %sub = sub nsw i64 0, %3
  store i64 %sub, ptr %value.addr, align 8, !tbaa !12
  %4 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp1 = icmp slt i64 %4, 0
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.then
  %5 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call3 = call i32 @xlate_string(ptr noundef @.str.2.875, ptr noundef %5)
  %6 = load i32, ptr %nph, align 4, !tbaa !5
  %add4 = add i32 %6, %call3
  store i32 %add4, ptr %nph, align 4, !tbaa !5
  %7 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %7, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %if.then
  br label %if.end5

if.end5:                                          ; preds = %if.end, %entry
  %8 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp6 = icmp sge i64 %8, 1000000000
  br i1 %cmp6, label %if.then7, label %if.end22

if.then7:                                         ; preds = %if.end5
  %9 = load i64, ptr %value.addr, align 8, !tbaa !12
  %div = sdiv i64 %9, 1000000000
  %10 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call8 = call i32 @xlate_cardinal(i64 noundef %div, ptr noundef %10)
  %11 = load i32, ptr %nph, align 4, !tbaa !5
  %add9 = add i32 %11, %call8
  store i32 %add9, ptr %nph, align 4, !tbaa !5
  %12 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem = srem i64 %12, 1000000000
  store i64 %rem, ptr %value.addr, align 8, !tbaa !12
  %13 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp10 = icmp eq i64 %13, 0
  br i1 %cmp10, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.then7
  %14 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call12 = call i32 @xlate_string(ptr noundef @.str.8.909, ptr noundef %14)
  %15 = load i32, ptr %nph, align 4, !tbaa !5
  %add13 = add i32 %15, %call12
  store i32 %add13, ptr %nph, align 4, !tbaa !5
  %16 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %16, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end14:                                         ; preds = %if.then7
  %17 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call15 = call i32 @xlate_string(ptr noundef @.str.3.876, ptr noundef %17)
  %18 = load i32, ptr %nph, align 4, !tbaa !5
  %add16 = add i32 %18, %call15
  store i32 %add16, ptr %nph, align 4, !tbaa !5
  %19 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp17 = icmp slt i64 %19, 100
  br i1 %cmp17, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  %20 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call19 = call i32 @xlate_string(ptr noundef @.str.4.877, ptr noundef %20)
  %21 = load i32, ptr %nph, align 4, !tbaa !5
  %add20 = add i32 %21, %call19
  store i32 %add20, ptr %nph, align 4, !tbaa !5
  br label %if.end21

if.end21:                                         ; preds = %if.then18, %if.end14
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end5
  %22 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp23 = icmp sge i64 %22, 1000000
  br i1 %cmp23, label %if.then24, label %if.end41

if.then24:                                        ; preds = %if.end22
  %23 = load i64, ptr %value.addr, align 8, !tbaa !12
  %div25 = sdiv i64 %23, 1000000
  %24 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call26 = call i32 @xlate_cardinal(i64 noundef %div25, ptr noundef %24)
  %25 = load i32, ptr %nph, align 4, !tbaa !5
  %add27 = add i32 %25, %call26
  store i32 %add27, ptr %nph, align 4, !tbaa !5
  %26 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem28 = srem i64 %26, 1000000
  store i64 %rem28, ptr %value.addr, align 8, !tbaa !12
  %27 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp29 = icmp eq i64 %27, 0
  br i1 %cmp29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %if.then24
  %28 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call31 = call i32 @xlate_string(ptr noundef @.str.9.910, ptr noundef %28)
  %29 = load i32, ptr %nph, align 4, !tbaa !5
  %add32 = add i32 %29, %call31
  store i32 %add32, ptr %nph, align 4, !tbaa !5
  %30 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %30, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end33:                                         ; preds = %if.then24
  %31 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call34 = call i32 @xlate_string(ptr noundef @.str.5.878, ptr noundef %31)
  %32 = load i32, ptr %nph, align 4, !tbaa !5
  %add35 = add i32 %32, %call34
  store i32 %add35, ptr %nph, align 4, !tbaa !5
  %33 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp36 = icmp slt i64 %33, 100
  br i1 %cmp36, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end33
  %34 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call38 = call i32 @xlate_string(ptr noundef @.str.4.877, ptr noundef %34)
  %35 = load i32, ptr %nph, align 4, !tbaa !5
  %add39 = add i32 %35, %call38
  store i32 %add39, ptr %nph, align 4, !tbaa !5
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end33
  br label %if.end41

if.end41:                                         ; preds = %if.end40, %if.end22
  %36 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp42 = icmp sge i64 %36, 1000
  br i1 %cmp42, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end41
  %37 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp43 = icmp sle i64 %37, 1099
  br i1 %cmp43, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end41
  %38 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp44 = icmp sge i64 %38, 2000
  br i1 %cmp44, label %if.then45, label %if.end62

if.then45:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %39 = load i64, ptr %value.addr, align 8, !tbaa !12
  %div46 = sdiv i64 %39, 1000
  %40 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call47 = call i32 @xlate_cardinal(i64 noundef %div46, ptr noundef %40)
  %41 = load i32, ptr %nph, align 4, !tbaa !5
  %add48 = add i32 %41, %call47
  store i32 %add48, ptr %nph, align 4, !tbaa !5
  %42 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem49 = srem i64 %42, 1000
  store i64 %rem49, ptr %value.addr, align 8, !tbaa !12
  %43 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp50 = icmp eq i64 %43, 0
  br i1 %cmp50, label %if.then51, label %if.end54

if.then51:                                        ; preds = %if.then45
  %44 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call52 = call i32 @xlate_string(ptr noundef @.str.10.911, ptr noundef %44)
  %45 = load i32, ptr %nph, align 4, !tbaa !5
  %add53 = add i32 %45, %call52
  store i32 %add53, ptr %nph, align 4, !tbaa !5
  %46 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %46, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end54:                                         ; preds = %if.then45
  %47 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call55 = call i32 @xlate_string(ptr noundef @.str.6.879, ptr noundef %47)
  %48 = load i32, ptr %nph, align 4, !tbaa !5
  %add56 = add i32 %48, %call55
  store i32 %add56, ptr %nph, align 4, !tbaa !5
  %49 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp57 = icmp slt i64 %49, 100
  br i1 %cmp57, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end54
  %50 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call59 = call i32 @xlate_string(ptr noundef @.str.4.877, ptr noundef %50)
  %51 = load i32, ptr %nph, align 4, !tbaa !5
  %add60 = add i32 %51, %call59
  store i32 %add60, ptr %nph, align 4, !tbaa !5
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end54
  br label %if.end62

if.end62:                                         ; preds = %if.end61, %lor.lhs.false
  %52 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp63 = icmp sge i64 %52, 100
  br i1 %cmp63, label %if.then64, label %if.end76

if.then64:                                        ; preds = %if.end62
  %53 = load i64, ptr %value.addr, align 8, !tbaa !12
  %div65 = sdiv i64 %53, 100
  %arrayidx = getelementptr inbounds [20 x ptr], ptr @Cardinals, i64 0, i64 %div65
  %54 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  %55 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call66 = call i32 @xlate_string(ptr noundef %54, ptr noundef %55)
  %56 = load i32, ptr %nph, align 4, !tbaa !5
  %add67 = add i32 %56, %call66
  store i32 %add67, ptr %nph, align 4, !tbaa !5
  %57 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem68 = srem i64 %57, 100
  store i64 %rem68, ptr %value.addr, align 8, !tbaa !12
  %58 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp69 = icmp eq i64 %58, 0
  br i1 %cmp69, label %if.then70, label %if.end73

if.then70:                                        ; preds = %if.then64
  %59 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call71 = call i32 @xlate_string(ptr noundef @.str.11.912, ptr noundef %59)
  %60 = load i32, ptr %nph, align 4, !tbaa !5
  %add72 = add i32 %60, %call71
  store i32 %add72, ptr %nph, align 4, !tbaa !5
  %61 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %61, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end73:                                         ; preds = %if.then64
  %62 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call74 = call i32 @xlate_string(ptr noundef @.str.7.880, ptr noundef %62)
  %63 = load i32, ptr %nph, align 4, !tbaa !5
  %add75 = add i32 %63, %call74
  store i32 %add75, ptr %nph, align 4, !tbaa !5
  br label %if.end76

if.end76:                                         ; preds = %if.end73, %if.end62
  %64 = load i64, ptr %value.addr, align 8, !tbaa !12
  %cmp77 = icmp sge i64 %64, 20
  br i1 %cmp77, label %if.then78, label %if.end94

if.then78:                                        ; preds = %if.end76
  %65 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem79 = srem i64 %65, 10
  %cmp80 = icmp eq i64 %rem79, 0
  br i1 %cmp80, label %if.then81, label %if.end87

if.then81:                                        ; preds = %if.then78
  %66 = load i64, ptr %value.addr, align 8, !tbaa !12
  %sub82 = sub nsw i64 %66, 20
  %div83 = sdiv i64 %sub82, 10
  %arrayidx84 = getelementptr inbounds [8 x ptr], ptr @Ord_twenties, i64 0, i64 %div83
  %67 = load ptr, ptr %arrayidx84, align 8, !tbaa !9
  %68 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call85 = call i32 @xlate_string(ptr noundef %67, ptr noundef %68)
  %69 = load i32, ptr %nph, align 4, !tbaa !5
  %add86 = add i32 %69, %call85
  store i32 %add86, ptr %nph, align 4, !tbaa !5
  %70 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %70, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end87:                                         ; preds = %if.then78
  %71 = load i64, ptr %value.addr, align 8, !tbaa !12
  %sub88 = sub nsw i64 %71, 20
  %div89 = sdiv i64 %sub88, 10
  %arrayidx90 = getelementptr inbounds [8 x ptr], ptr @Twenties, i64 0, i64 %div89
  %72 = load ptr, ptr %arrayidx90, align 8, !tbaa !9
  %73 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call91 = call i32 @xlate_string(ptr noundef %72, ptr noundef %73)
  %74 = load i32, ptr %nph, align 4, !tbaa !5
  %add92 = add i32 %74, %call91
  store i32 %add92, ptr %nph, align 4, !tbaa !5
  %75 = load i64, ptr %value.addr, align 8, !tbaa !12
  %rem93 = srem i64 %75, 10
  store i64 %rem93, ptr %value.addr, align 8, !tbaa !12
  br label %if.end94

if.end94:                                         ; preds = %if.end87, %if.end76
  %76 = load i64, ptr %value.addr, align 8, !tbaa !12
  %arrayidx95 = getelementptr inbounds [20 x ptr], ptr @Ordinals, i64 0, i64 %76
  %77 = load ptr, ptr %arrayidx95, align 8, !tbaa !9
  %78 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %call96 = call i32 @xlate_string(ptr noundef %77, ptr noundef %78)
  %79 = load i32, ptr %nph, align 4, !tbaa !5
  %add97 = add i32 %79, %call96
  store i32 %add97, ptr %nph, align 4, !tbaa !5
  %80 = load i32, ptr %nph, align 4, !tbaa !5
  store i32 %80, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %if.then81, %if.then70, %if.then51, %if.then30, %if.then11, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %nph) #15
  %81 = load i32, ptr %retval, align 4
  ret i32 %81
}

; Function Attrs: nounwind uwtable
define dso_local i32 @isvowel(i32 noundef %chr) #0 {
entry:
  %chr.addr = alloca i32, align 4
  store i32 %chr, ptr %chr.addr, align 4, !tbaa !5
  %0 = load i32, ptr %chr.addr, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 65
  br i1 %cmp, label %lor.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %chr.addr, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %1, 69
  br i1 %cmp1, label %lor.end, label %lor.lhs.false2

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %chr.addr, align 4, !tbaa !5
  %cmp3 = icmp eq i32 %2, 73
  br i1 %cmp3, label %lor.end, label %lor.lhs.false4

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %3 = load i32, ptr %chr.addr, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %3, 79
  br i1 %cmp5, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false4
  %4 = load i32, ptr %chr.addr, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %4, 85
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %entry
  %5 = phi i1 [ true, %lor.lhs.false4 ], [ true, %lor.lhs.false2 ], [ true, %lor.lhs.false ], [ true, %entry ], [ %cmp6, %lor.rhs ]
  %lor.ext = zext i1 %5 to i32
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define dso_local i32 @isconsonant(i32 noundef %chr) #0 {
entry:
  %chr.addr = alloca i32, align 4
  store i32 %chr, ptr %chr.addr, align 4, !tbaa !5
  %call = call ptr @__ctype_b_loc() #19
  %0 = load ptr, ptr %call, align 8, !tbaa !21
  %1 = load i32, ptr %chr.addr, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !23
  %conv = zext i16 %2 to i32
  %and = and i32 %conv, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %entry
  %3 = load i32, ptr %chr.addr, align 4, !tbaa !5
  %call1 = call i32 @isvowel(i32 noundef %3)
  %tobool2 = icmp ne i32 %call1, 0
  %lnot = xor i1 %tobool2, true
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %4 = phi i1 [ false, %entry ], [ %lnot, %land.rhs ]
  %land.ext = zext i1 %4 to i32
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NRL(ptr noundef %s, i32 noundef %n, ptr noundef %phone) #0 {
entry:
  %s.addr = alloca ptr, align 8
  %n.addr = alloca i32, align 4
  %phone.addr = alloca ptr, align 8
  %old = alloca i32, align 4
  %word = alloca ptr, align 8
  %d = alloca ptr, align 8
  %ch = alloca i8, align 1
  %__res = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8, !tbaa !9
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  store ptr %phone, ptr %phone.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 4, ptr %old) #15
  %0 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %items = getelementptr inbounds nuw %struct.darray_t, ptr %0, i32 0, i32 1
  %1 = load i32, ptr %items, align 8, !tbaa !31
  store i32 %1, ptr %old, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %word) #15
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %add = add i32 %2, 3
  %conv = zext i32 %add to i64
  %call = call noalias ptr @malloc(i64 noundef %conv) #17
  store ptr %call, ptr %word, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %d) #15
  %3 = load ptr, ptr %word, align 8, !tbaa !9
  store ptr %3, ptr %d, align 8, !tbaa !9
  %4 = load ptr, ptr %d, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %d, align 8, !tbaa !9
  store i8 32, ptr %4, align 1, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %5 = load i32, ptr %n.addr, align 4, !tbaa !5
  %dec = add i32 %5, -1
  store i32 %dec, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp ugt i32 %5, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15
  %6 = load ptr, ptr %s.addr, align 8, !tbaa !9
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %6, i32 1
  store ptr %incdec.ptr2, ptr %s.addr, align 8, !tbaa !9
  %7 = load i8, ptr %6, align 1, !tbaa !14
  store i8 %7, ptr %ch, align 1, !tbaa !14
  %call3 = call ptr @__ctype_b_loc() #19
  %8 = load ptr, ptr %call3, align 8, !tbaa !21
  %9 = load i8, ptr %ch, align 1, !tbaa !14
  %conv4 = sext i8 %9 to i32
  %idxprom = sext i32 %conv4 to i64
  %arrayidx = getelementptr inbounds i16, ptr %8, i64 %idxprom
  %10 = load i16, ptr %arrayidx, align 2, !tbaa !23
  %conv5 = zext i16 %10 to i32
  %and = and i32 %conv5, 512
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__res) #15
  %call6 = call ptr @__ctype_toupper_loc() #19
  %11 = load ptr, ptr %call6, align 8, !tbaa !114
  %12 = load i8, ptr %ch, align 1, !tbaa !14
  %conv7 = sext i8 %12 to i32
  %idxprom8 = sext i32 %conv7 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %11, i64 %idxprom8
  %13 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  store i32 %13, ptr %__res, align 4, !tbaa !5
  %14 = load i32, ptr %__res, align 4, !tbaa !5
  store i32 %14, ptr %tmp, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__res) #15
  %15 = load i32, ptr %tmp, align 4, !tbaa !5
  %conv10 = trunc i32 %15 to i8
  store i8 %conv10, ptr %ch, align 1, !tbaa !14
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %16 = load i8, ptr %ch, align 1, !tbaa !14
  %17 = load ptr, ptr %d, align 8, !tbaa !9
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %17, i32 1
  store ptr %incdec.ptr11, ptr %d, align 8, !tbaa !9
  store i8 %16, ptr %17, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15
  br label %while.cond, !llvm.loop !171

while.end:                                        ; preds = %while.cond
  %18 = load ptr, ptr %d, align 8, !tbaa !9
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr12, ptr %d, align 8, !tbaa !9
  store i8 32, ptr %18, align 1, !tbaa !14
  %19 = load ptr, ptr %d, align 8, !tbaa !9
  store i8 0, ptr %19, align 1, !tbaa !14
  %20 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %21 = load ptr, ptr %word, align 8, !tbaa !9
  call void @guess_word(ptr noundef %20, ptr noundef @phone_cat, ptr noundef %21)
  %22 = load ptr, ptr %word, align 8, !tbaa !9
  call void @free(ptr noundef %22) #15
  %23 = load ptr, ptr %phone.addr, align 8, !tbaa !20
  %items13 = getelementptr inbounds nuw %struct.darray_t, ptr %23, i32 0, i32 1
  %24 = load i32, ptr %items13, align 8, !tbaa !31
  %25 = load i32, ptr %old, align 4, !tbaa !5
  %sub = sub i32 %24, %25
  call void @llvm.lifetime.end.p0(i64 8, ptr %d) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %word) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %old) #15
  ret i32 %sub
}

; Function Attrs: nounwind uwtable
define internal void @phone_cat(ptr noundef %arg, ptr noundef %s) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ch = alloca i8, align 1
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !20
  store ptr %s, ptr %s.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15
  %0 = load ptr, ptr %arg.addr, align 8, !tbaa !20
  store ptr %0, ptr %p, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load ptr, ptr %s.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !9
  %2 = load i8, ptr %1, align 1, !tbaa !14
  store i8 %2, ptr %ch, align 1, !tbaa !14
  %tobool = icmp ne i8 %2, 0
  br i1 %tobool, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load ptr, ptr %p, align 8, !tbaa !20
  %4 = load i8, ptr %ch, align 1, !tbaa !14
  %conv = sext i8 %4 to i32
  %call = call i32 @phone_append(ptr noundef %3, i32 noundef %conv)
  br label %while.cond, !llvm.loop !172

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @guess_word(ptr noundef %arg, ptr noundef %out, ptr noundef %word) #0 {
entry:
  %arg.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %word.addr = alloca ptr, align 8
  %index = alloca i32, align 4
  %type = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !20
  store ptr %out, ptr %out.addr, align 8, !tbaa !20
  store ptr %word, ptr %word.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %type) #15
  store i32 1, ptr %index, align 4, !tbaa !5
  br label %do.body

do.body:                                          ; preds = %do.cond, %entry
  %call = call ptr @__ctype_b_loc() #19
  %0 = load ptr, ptr %call, align 8, !tbaa !21
  %1 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %2 = load i32, ptr %index, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds i8, ptr %1, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !14
  %conv = sext i8 %3 to i32
  %idxprom1 = sext i32 %conv to i64
  %arrayidx2 = getelementptr inbounds i16, ptr %0, i64 %idxprom1
  %4 = load i16, ptr %arrayidx2, align 2, !tbaa !23
  %conv3 = zext i16 %4 to i32
  %and = and i32 %conv3, 256
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %5 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %6 = load i32, ptr %index, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds i8, ptr %5, i64 %idxprom4
  %7 = load i8, ptr %arrayidx5, align 1, !tbaa !14
  %conv6 = sext i8 %7 to i32
  %sub = sub nsw i32 %conv6, 65
  %add = add nsw i32 %sub, 1
  store i32 %add, ptr %type, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %do.body
  store i32 0, ptr %type, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load ptr, ptr %arg.addr, align 8, !tbaa !20
  %9 = load ptr, ptr %out.addr, align 8, !tbaa !20
  %10 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %11 = load i32, ptr %index, align 4, !tbaa !5
  %12 = load i32, ptr %type, align 4, !tbaa !5
  %idxprom7 = sext i32 %12 to i64
  %arrayidx8 = getelementptr inbounds [0 x ptr], ptr @Rules, i64 0, i64 %idxprom7
  %13 = load ptr, ptr %arrayidx8, align 8, !tbaa !17
  %call9 = call i32 @find_rule(ptr noundef %8, ptr noundef %9, ptr noundef %10, i32 noundef %11, ptr noundef %13)
  store i32 %call9, ptr %index, align 4, !tbaa !5
  br label %do.cond

do.cond:                                          ; preds = %if.end
  %14 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %15 = load i32, ptr %index, align 4, !tbaa !5
  %idxprom10 = sext i32 %15 to i64
  %arrayidx11 = getelementptr inbounds i8, ptr %14, i64 %idxprom10
  %16 = load i8, ptr %arrayidx11, align 1, !tbaa !14
  %conv12 = sext i8 %16 to i32
  %cmp = icmp ne i32 %conv12, 0
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !173

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %type) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @find_rule(ptr noundef %arg, ptr noundef %out, ptr noundef %word, i32 noundef %index, ptr noundef %rules) #0 {
entry:
  %retval = alloca i32, align 4
  %arg.addr = alloca ptr, align 8
  %out.addr = alloca ptr, align 8
  %word.addr = alloca ptr, align 8
  %index.addr = alloca i32, align 4
  %rules.addr = alloca ptr, align 8
  %rule = alloca ptr, align 8
  %left = alloca ptr, align 8
  %match = alloca ptr, align 8
  %right = alloca ptr, align 8
  %output = alloca ptr, align 8
  %remainder = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %arg, ptr %arg.addr, align 8, !tbaa !20
  store ptr %out, ptr %out.addr, align 8, !tbaa !20
  store ptr %word, ptr %word.addr, align 8, !tbaa !9
  store i32 %index, ptr %index.addr, align 4, !tbaa !5
  store ptr %rules, ptr %rules.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %rule) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %left) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %match) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %right) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %remainder) #15
  br label %for.cond

for.cond:                                         ; preds = %if.then31, %if.then25, %if.then18, %entry
  %0 = load ptr, ptr %rules.addr, align 8, !tbaa !17
  %incdec.ptr = getelementptr inbounds nuw [4 x ptr], ptr %0, i32 1
  store ptr %incdec.ptr, ptr %rules.addr, align 8, !tbaa !17
  store ptr %0, ptr %rule, align 8, !tbaa !17
  %1 = load ptr, ptr %rule, align 8, !tbaa !17
  %arrayidx = getelementptr inbounds [4 x ptr], ptr %1, i64 0, i64 1
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !9
  store ptr %2, ptr %match, align 8, !tbaa !9
  %3 = load ptr, ptr %match, align 8, !tbaa !9
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %for.cond
  %4 = load ptr, ptr @stderr, align 8, !tbaa !26
  %5 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %6 = load i32, ptr %index.addr, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx1 = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %7 = load i8, ptr %arrayidx1, align 1, !tbaa !14
  %conv = sext i8 %7 to i32
  %8 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %call = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef @.str.1.944, i32 noundef %conv, ptr noundef %8) #15
  %9 = load i32, ptr %index.addr, align 4, !tbaa !5
  %add = add nsw i32 %9, 1
  store i32 %add, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %for.cond
  %10 = load i32, ptr %index.addr, align 4, !tbaa !5
  store i32 %10, ptr %remainder, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %if.end
  %11 = load ptr, ptr %match, align 8, !tbaa !9
  %12 = load i8, ptr %11, align 1, !tbaa !14
  %conv3 = sext i8 %12 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond2
  %13 = load ptr, ptr %match, align 8, !tbaa !9
  %14 = load i8, ptr %13, align 1, !tbaa !14
  %conv6 = sext i8 %14 to i32
  %15 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %16 = load i32, ptr %remainder, align 4, !tbaa !5
  %idxprom7 = sext i32 %16 to i64
  %arrayidx8 = getelementptr inbounds i8, ptr %15, i64 %idxprom7
  %17 = load i8, ptr %arrayidx8, align 1, !tbaa !14
  %conv9 = sext i8 %17 to i32
  %cmp10 = icmp ne i32 %conv6, %conv9
  br i1 %cmp10, label %if.then12, label %if.end13

if.then12:                                        ; preds = %for.body
  br label %for.end

if.end13:                                         ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end13
  %18 = load ptr, ptr %match, align 8, !tbaa !9
  %incdec.ptr14 = getelementptr inbounds nuw i8, ptr %18, i32 1
  store ptr %incdec.ptr14, ptr %match, align 8, !tbaa !9
  %19 = load i32, ptr %remainder, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %remainder, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !174

for.end:                                          ; preds = %if.then12, %for.cond2
  %20 = load ptr, ptr %match, align 8, !tbaa !9
  %21 = load i8, ptr %20, align 1, !tbaa !14
  %conv15 = sext i8 %21 to i32
  %cmp16 = icmp ne i32 %conv15, 0
  br i1 %cmp16, label %if.then18, label %if.end19

if.then18:                                        ; preds = %for.end
  br label %for.cond, !llvm.loop !175

if.end19:                                         ; preds = %for.end
  %22 = load ptr, ptr %rule, align 8, !tbaa !17
  %arrayidx20 = getelementptr inbounds [4 x ptr], ptr %22, i64 0, i64 0
  %23 = load ptr, ptr %arrayidx20, align 8, !tbaa !9
  store ptr %23, ptr %left, align 8, !tbaa !9
  %24 = load ptr, ptr %rule, align 8, !tbaa !17
  %arrayidx21 = getelementptr inbounds [4 x ptr], ptr %24, i64 0, i64 2
  %25 = load ptr, ptr %arrayidx21, align 8, !tbaa !9
  store ptr %25, ptr %right, align 8, !tbaa !9
  %26 = load ptr, ptr %left, align 8, !tbaa !9
  %27 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %28 = load i32, ptr %index.addr, align 4, !tbaa !5
  %sub = sub nsw i32 %28, 1
  %idxprom22 = sext i32 %sub to i64
  %arrayidx23 = getelementptr inbounds i8, ptr %27, i64 %idxprom22
  %call24 = call i32 @leftmatch(ptr noundef %26, ptr noundef %arrayidx23)
  %tobool = icmp ne i32 %call24, 0
  br i1 %tobool, label %if.end26, label %if.then25

if.then25:                                        ; preds = %if.end19
  br label %for.cond, !llvm.loop !175

if.end26:                                         ; preds = %if.end19
  %29 = load ptr, ptr %right, align 8, !tbaa !9
  %30 = load ptr, ptr %word.addr, align 8, !tbaa !9
  %31 = load i32, ptr %remainder, align 4, !tbaa !5
  %idxprom27 = sext i32 %31 to i64
  %arrayidx28 = getelementptr inbounds i8, ptr %30, i64 %idxprom27
  %call29 = call i32 @rightmatch(ptr noundef %29, ptr noundef %arrayidx28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %if.end32, label %if.then31

if.then31:                                        ; preds = %if.end26
  br label %for.cond, !llvm.loop !175

if.end32:                                         ; preds = %if.end26
  %32 = load ptr, ptr %rule, align 8, !tbaa !17
  %arrayidx33 = getelementptr inbounds [4 x ptr], ptr %32, i64 0, i64 3
  %33 = load ptr, ptr %arrayidx33, align 8, !tbaa !9
  store ptr %33, ptr %output, align 8, !tbaa !9
  %34 = load ptr, ptr %out.addr, align 8, !tbaa !20
  %35 = load ptr, ptr %arg.addr, align 8, !tbaa !20
  %36 = load ptr, ptr %output, align 8, !tbaa !9
  call void %34(ptr noundef %35, ptr noundef %36)
  %37 = load i32, ptr %remainder, align 4, !tbaa !5
  store i32 %37, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %remainder) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %right) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %match) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %left) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %rule) #15
  %38 = load i32, ptr %retval, align 4
  ret i32 %38
}

; Function Attrs: nounwind uwtable
define internal i32 @leftmatch(ptr noundef %pattern, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %pat = alloca ptr, align 8
  %text = alloca ptr, align 8
  %count = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pattern, ptr %pattern.addr, align 8, !tbaa !9
  store ptr %context, ptr %context.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pat) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %text) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #15
  %0 = load ptr, ptr %pattern.addr, align 8, !tbaa !9
  %1 = load i8, ptr %0, align 1, !tbaa !14
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pattern.addr, align 8, !tbaa !9
  %call = call i64 @strlen(ptr noundef %2) #14
  %conv2 = trunc i64 %call to i32
  store i32 %conv2, ptr %count, align 4, !tbaa !5
  %3 = load ptr, ptr %pattern.addr, align 8, !tbaa !9
  %4 = load i32, ptr %count, align 4, !tbaa !5
  %sub = sub nsw i32 %4, 1
  %idx.ext = sext i32 %sub to i64
  %add.ptr = getelementptr inbounds i8, ptr %3, i64 %idx.ext
  store ptr %add.ptr, ptr %pat, align 8, !tbaa !9
  %5 = load ptr, ptr %context.addr, align 8, !tbaa !9
  store ptr %5, ptr %text, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i32, ptr %count, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %6, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call5 = call ptr @__ctype_b_loc() #19
  %7 = load ptr, ptr %call5, align 8, !tbaa !21
  %8 = load ptr, ptr %pat, align 8, !tbaa !9
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %conv6 = sext i8 %9 to i32
  %idxprom = sext i32 %conv6 to i64
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %10 = load i16, ptr %arrayidx, align 2, !tbaa !23
  %conv7 = zext i16 %10 to i32
  %and = and i32 %conv7, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then15, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load ptr, ptr %pat, align 8, !tbaa !9
  %12 = load i8, ptr %11, align 1, !tbaa !14
  %conv8 = sext i8 %12 to i32
  %cmp9 = icmp eq i32 %conv8, 39
  br i1 %cmp9, label %if.then15, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false
  %13 = load ptr, ptr %pat, align 8, !tbaa !9
  %14 = load i8, ptr %13, align 1, !tbaa !14
  %conv12 = sext i8 %14 to i32
  %cmp13 = icmp eq i32 %conv12, 32
  br i1 %cmp13, label %if.then15, label %if.end21

if.then15:                                        ; preds = %lor.lhs.false11, %lor.lhs.false, %for.body
  %15 = load ptr, ptr %pat, align 8, !tbaa !9
  %16 = load i8, ptr %15, align 1, !tbaa !14
  %conv16 = sext i8 %16 to i32
  %17 = load ptr, ptr %text, align 8, !tbaa !9
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %conv17 = sext i8 %18 to i32
  %cmp18 = icmp ne i32 %conv16, %conv17
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then15
  %19 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds i8, ptr %19, i32 -1
  store ptr %incdec.ptr, ptr %text, align 8, !tbaa !9
  br label %for.inc

if.end21:                                         ; preds = %lor.lhs.false11
  %20 = load ptr, ptr %pat, align 8, !tbaa !9
  %21 = load i8, ptr %20, align 1, !tbaa !14
  %conv22 = sext i8 %21 to i32
  switch i32 %conv22, label %sw.default [
    i32 35, label %sw.bb
    i32 58, label %sw.bb33
    i32 94, label %sw.bb41
    i32 46, label %sw.bb48
    i32 43, label %sw.bb94
    i32 37, label %sw.bb109
  ]

sw.bb:                                            ; preds = %if.end21
  %22 = load ptr, ptr %text, align 8, !tbaa !9
  %23 = load i8, ptr %22, align 1, !tbaa !14
  %conv23 = sext i8 %23 to i32
  %call24 = call i32 @isvowel(i32 noundef %conv23)
  %tobool25 = icmp ne i32 %call24, 0
  br i1 %tobool25, label %if.end27, label %if.then26

if.then26:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end27:                                         ; preds = %sw.bb
  %24 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr28 = getelementptr inbounds i8, ptr %24, i32 -1
  store ptr %incdec.ptr28, ptr %text, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end27
  %25 = load ptr, ptr %text, align 8, !tbaa !9
  %26 = load i8, ptr %25, align 1, !tbaa !14
  %conv29 = sext i8 %26 to i32
  %call30 = call i32 @isvowel(i32 noundef %conv29)
  %tobool31 = icmp ne i32 %call30, 0
  br i1 %tobool31, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr32 = getelementptr inbounds i8, ptr %27, i32 -1
  store ptr %incdec.ptr32, ptr %text, align 8, !tbaa !9
  br label %while.cond, !llvm.loop !176

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end21
  br label %while.cond34

while.cond34:                                     ; preds = %while.body38, %sw.bb33
  %28 = load ptr, ptr %text, align 8, !tbaa !9
  %29 = load i8, ptr %28, align 1, !tbaa !14
  %conv35 = sext i8 %29 to i32
  %call36 = call i32 @isconsonant(i32 noundef %conv35)
  %tobool37 = icmp ne i32 %call36, 0
  br i1 %tobool37, label %while.body38, label %while.end40

while.body38:                                     ; preds = %while.cond34
  %30 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr39 = getelementptr inbounds i8, ptr %30, i32 -1
  store ptr %incdec.ptr39, ptr %text, align 8, !tbaa !9
  br label %while.cond34, !llvm.loop !177

while.end40:                                      ; preds = %while.cond34
  br label %sw.epilog

sw.bb41:                                          ; preds = %if.end21
  %31 = load ptr, ptr %text, align 8, !tbaa !9
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %conv42 = sext i8 %32 to i32
  %call43 = call i32 @isconsonant(i32 noundef %conv42)
  %tobool44 = icmp ne i32 %call43, 0
  br i1 %tobool44, label %if.end46, label %if.then45

if.then45:                                        ; preds = %sw.bb41
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end46:                                         ; preds = %sw.bb41
  %33 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr47 = getelementptr inbounds i8, ptr %33, i32 -1
  store ptr %incdec.ptr47, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

sw.bb48:                                          ; preds = %if.end21
  %34 = load ptr, ptr %text, align 8, !tbaa !9
  %35 = load i8, ptr %34, align 1, !tbaa !14
  %conv49 = sext i8 %35 to i32
  %cmp50 = icmp ne i32 %conv49, 66
  br i1 %cmp50, label %land.lhs.true, label %if.end92

land.lhs.true:                                    ; preds = %sw.bb48
  %36 = load ptr, ptr %text, align 8, !tbaa !9
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %conv52 = sext i8 %37 to i32
  %cmp53 = icmp ne i32 %conv52, 68
  br i1 %cmp53, label %land.lhs.true55, label %if.end92

land.lhs.true55:                                  ; preds = %land.lhs.true
  %38 = load ptr, ptr %text, align 8, !tbaa !9
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %conv56 = sext i8 %39 to i32
  %cmp57 = icmp ne i32 %conv56, 86
  br i1 %cmp57, label %land.lhs.true59, label %if.end92

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %40 = load ptr, ptr %text, align 8, !tbaa !9
  %41 = load i8, ptr %40, align 1, !tbaa !14
  %conv60 = sext i8 %41 to i32
  %cmp61 = icmp ne i32 %conv60, 71
  br i1 %cmp61, label %land.lhs.true63, label %if.end92

land.lhs.true63:                                  ; preds = %land.lhs.true59
  %42 = load ptr, ptr %text, align 8, !tbaa !9
  %43 = load i8, ptr %42, align 1, !tbaa !14
  %conv64 = sext i8 %43 to i32
  %cmp65 = icmp ne i32 %conv64, 74
  br i1 %cmp65, label %land.lhs.true67, label %if.end92

land.lhs.true67:                                  ; preds = %land.lhs.true63
  %44 = load ptr, ptr %text, align 8, !tbaa !9
  %45 = load i8, ptr %44, align 1, !tbaa !14
  %conv68 = sext i8 %45 to i32
  %cmp69 = icmp ne i32 %conv68, 76
  br i1 %cmp69, label %land.lhs.true71, label %if.end92

land.lhs.true71:                                  ; preds = %land.lhs.true67
  %46 = load ptr, ptr %text, align 8, !tbaa !9
  %47 = load i8, ptr %46, align 1, !tbaa !14
  %conv72 = sext i8 %47 to i32
  %cmp73 = icmp ne i32 %conv72, 77
  br i1 %cmp73, label %land.lhs.true75, label %if.end92

land.lhs.true75:                                  ; preds = %land.lhs.true71
  %48 = load ptr, ptr %text, align 8, !tbaa !9
  %49 = load i8, ptr %48, align 1, !tbaa !14
  %conv76 = sext i8 %49 to i32
  %cmp77 = icmp ne i32 %conv76, 78
  br i1 %cmp77, label %land.lhs.true79, label %if.end92

land.lhs.true79:                                  ; preds = %land.lhs.true75
  %50 = load ptr, ptr %text, align 8, !tbaa !9
  %51 = load i8, ptr %50, align 1, !tbaa !14
  %conv80 = sext i8 %51 to i32
  %cmp81 = icmp ne i32 %conv80, 82
  br i1 %cmp81, label %land.lhs.true83, label %if.end92

land.lhs.true83:                                  ; preds = %land.lhs.true79
  %52 = load ptr, ptr %text, align 8, !tbaa !9
  %53 = load i8, ptr %52, align 1, !tbaa !14
  %conv84 = sext i8 %53 to i32
  %cmp85 = icmp ne i32 %conv84, 87
  br i1 %cmp85, label %land.lhs.true87, label %if.end92

land.lhs.true87:                                  ; preds = %land.lhs.true83
  %54 = load ptr, ptr %text, align 8, !tbaa !9
  %55 = load i8, ptr %54, align 1, !tbaa !14
  %conv88 = sext i8 %55 to i32
  %cmp89 = icmp ne i32 %conv88, 90
  br i1 %cmp89, label %if.then91, label %if.end92

if.then91:                                        ; preds = %land.lhs.true87
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end92:                                         ; preds = %land.lhs.true87, %land.lhs.true83, %land.lhs.true79, %land.lhs.true75, %land.lhs.true71, %land.lhs.true67, %land.lhs.true63, %land.lhs.true59, %land.lhs.true55, %land.lhs.true, %sw.bb48
  %56 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr93 = getelementptr inbounds i8, ptr %56, i32 -1
  store ptr %incdec.ptr93, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

sw.bb94:                                          ; preds = %if.end21
  %57 = load ptr, ptr %text, align 8, !tbaa !9
  %58 = load i8, ptr %57, align 1, !tbaa !14
  %conv95 = sext i8 %58 to i32
  %cmp96 = icmp ne i32 %conv95, 69
  br i1 %cmp96, label %land.lhs.true98, label %if.end107

land.lhs.true98:                                  ; preds = %sw.bb94
  %59 = load ptr, ptr %text, align 8, !tbaa !9
  %60 = load i8, ptr %59, align 1, !tbaa !14
  %conv99 = sext i8 %60 to i32
  %cmp100 = icmp ne i32 %conv99, 73
  br i1 %cmp100, label %land.lhs.true102, label %if.end107

land.lhs.true102:                                 ; preds = %land.lhs.true98
  %61 = load ptr, ptr %text, align 8, !tbaa !9
  %62 = load i8, ptr %61, align 1, !tbaa !14
  %conv103 = sext i8 %62 to i32
  %cmp104 = icmp ne i32 %conv103, 89
  br i1 %cmp104, label %if.then106, label %if.end107

if.then106:                                       ; preds = %land.lhs.true102
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end107:                                        ; preds = %land.lhs.true102, %land.lhs.true98, %sw.bb94
  %63 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr108 = getelementptr inbounds i8, ptr %63, i32 -1
  store ptr %incdec.ptr108, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

sw.bb109:                                         ; preds = %if.end21
  br label %sw.default

sw.default:                                       ; preds = %if.end21, %sw.bb109
  %64 = load ptr, ptr @stderr, align 8, !tbaa !26
  %65 = load ptr, ptr %pat, align 8, !tbaa !9
  %66 = load i8, ptr %65, align 1, !tbaa !14
  %conv110 = sext i8 %66 to i32
  %call111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef @.str.2.946, i32 noundef %conv110) #15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.end107, %if.end92, %if.end46, %while.end40, %while.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.else
  %67 = load ptr, ptr %pat, align 8, !tbaa !9
  %incdec.ptr112 = getelementptr inbounds i8, ptr %67, i32 -1
  store ptr %incdec.ptr112, ptr %pat, align 8, !tbaa !9
  %68 = load i32, ptr %count, align 4, !tbaa !5
  %dec = add nsw i32 %68, -1
  store i32 %dec, ptr %count, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !178

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default, %if.then106, %if.then91, %if.then45, %if.then26, %if.then20, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %text) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %pat) #15
  %69 = load i32, ptr %retval, align 4
  ret i32 %69
}

; Function Attrs: nounwind uwtable
define internal i32 @rightmatch(ptr noundef %pattern, ptr noundef %context) #0 {
entry:
  %retval = alloca i32, align 4
  %pattern.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %pat = alloca ptr, align 8
  %text = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pattern, ptr %pattern.addr, align 8, !tbaa !9
  store ptr %context, ptr %context.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %pat) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr %text) #15
  %0 = load ptr, ptr %pattern.addr, align 8, !tbaa !9
  %1 = load i8, ptr %0, align 1, !tbaa !14
  %conv = sext i8 %1 to i32
  %cmp = icmp eq i32 %conv, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pattern.addr, align 8, !tbaa !9
  store ptr %2, ptr %pat, align 8, !tbaa !9
  %3 = load ptr, ptr %context.addr, align 8, !tbaa !9
  store ptr %3, ptr %text, align 8, !tbaa !9
  %4 = load ptr, ptr %pattern.addr, align 8, !tbaa !9
  store ptr %4, ptr %pat, align 8, !tbaa !9
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %pat, align 8, !tbaa !9
  %6 = load i8, ptr %5, align 1, !tbaa !14
  %conv2 = sext i8 %6 to i32
  %cmp3 = icmp ne i32 %conv2, 0
  br i1 %cmp3, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call ptr @__ctype_b_loc() #19
  %7 = load ptr, ptr %call, align 8, !tbaa !21
  %8 = load ptr, ptr %pat, align 8, !tbaa !9
  %9 = load i8, ptr %8, align 1, !tbaa !14
  %conv5 = sext i8 %9 to i32
  %idxprom = sext i32 %conv5 to i64
  %arrayidx = getelementptr inbounds i16, ptr %7, i64 %idxprom
  %10 = load i16, ptr %arrayidx, align 2, !tbaa !23
  %conv6 = zext i16 %10 to i32
  %and = and i32 %conv6, 1024
  %tobool = icmp ne i32 %and, 0
  br i1 %tobool, label %if.then14, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %11 = load ptr, ptr %pat, align 8, !tbaa !9
  %12 = load i8, ptr %11, align 1, !tbaa !14
  %conv7 = sext i8 %12 to i32
  %cmp8 = icmp eq i32 %conv7, 39
  br i1 %cmp8, label %if.then14, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false
  %13 = load ptr, ptr %pat, align 8, !tbaa !9
  %14 = load i8, ptr %13, align 1, !tbaa !14
  %conv11 = sext i8 %14 to i32
  %cmp12 = icmp eq i32 %conv11, 32
  br i1 %cmp12, label %if.then14, label %if.end20

if.then14:                                        ; preds = %lor.lhs.false10, %lor.lhs.false, %for.body
  %15 = load ptr, ptr %pat, align 8, !tbaa !9
  %16 = load i8, ptr %15, align 1, !tbaa !14
  %conv15 = sext i8 %16 to i32
  %17 = load ptr, ptr %text, align 8, !tbaa !9
  %18 = load i8, ptr %17, align 1, !tbaa !14
  %conv16 = sext i8 %18 to i32
  %cmp17 = icmp ne i32 %conv15, %conv16
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %if.then14
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then14
  %19 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %19, i32 1
  store ptr %incdec.ptr, ptr %text, align 8, !tbaa !9
  br label %for.inc

if.end20:                                         ; preds = %lor.lhs.false10
  %20 = load ptr, ptr %pat, align 8, !tbaa !9
  %21 = load i8, ptr %20, align 1, !tbaa !14
  %conv21 = sext i8 %21 to i32
  switch i32 %conv21, label %sw.default [
    i32 35, label %sw.bb
    i32 58, label %sw.bb32
    i32 94, label %sw.bb40
    i32 46, label %sw.bb47
    i32 43, label %sw.bb93
    i32 37, label %sw.bb108
  ]

sw.bb:                                            ; preds = %if.end20
  %22 = load ptr, ptr %text, align 8, !tbaa !9
  %23 = load i8, ptr %22, align 1, !tbaa !14
  %conv22 = sext i8 %23 to i32
  %call23 = call i32 @isvowel(i32 noundef %conv22)
  %tobool24 = icmp ne i32 %call23, 0
  br i1 %tobool24, label %if.end26, label %if.then25

if.then25:                                        ; preds = %sw.bb
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end26:                                         ; preds = %sw.bb
  %24 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr27 = getelementptr inbounds nuw i8, ptr %24, i32 1
  store ptr %incdec.ptr27, ptr %text, align 8, !tbaa !9
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.end26
  %25 = load ptr, ptr %text, align 8, !tbaa !9
  %26 = load i8, ptr %25, align 1, !tbaa !14
  %conv28 = sext i8 %26 to i32
  %call29 = call i32 @isvowel(i32 noundef %conv28)
  %tobool30 = icmp ne i32 %call29, 0
  br i1 %tobool30, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %27 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr31 = getelementptr inbounds nuw i8, ptr %27, i32 1
  store ptr %incdec.ptr31, ptr %text, align 8, !tbaa !9
  br label %while.cond, !llvm.loop !179

while.end:                                        ; preds = %while.cond
  br label %sw.epilog

sw.bb32:                                          ; preds = %if.end20
  br label %while.cond33

while.cond33:                                     ; preds = %while.body37, %sw.bb32
  %28 = load ptr, ptr %text, align 8, !tbaa !9
  %29 = load i8, ptr %28, align 1, !tbaa !14
  %conv34 = sext i8 %29 to i32
  %call35 = call i32 @isconsonant(i32 noundef %conv34)
  %tobool36 = icmp ne i32 %call35, 0
  br i1 %tobool36, label %while.body37, label %while.end39

while.body37:                                     ; preds = %while.cond33
  %30 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %30, i32 1
  store ptr %incdec.ptr38, ptr %text, align 8, !tbaa !9
  br label %while.cond33, !llvm.loop !180

while.end39:                                      ; preds = %while.cond33
  br label %sw.epilog

sw.bb40:                                          ; preds = %if.end20
  %31 = load ptr, ptr %text, align 8, !tbaa !9
  %32 = load i8, ptr %31, align 1, !tbaa !14
  %conv41 = sext i8 %32 to i32
  %call42 = call i32 @isconsonant(i32 noundef %conv41)
  %tobool43 = icmp ne i32 %call42, 0
  br i1 %tobool43, label %if.end45, label %if.then44

if.then44:                                        ; preds = %sw.bb40
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end45:                                         ; preds = %sw.bb40
  %33 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr46 = getelementptr inbounds nuw i8, ptr %33, i32 1
  store ptr %incdec.ptr46, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

sw.bb47:                                          ; preds = %if.end20
  %34 = load ptr, ptr %text, align 8, !tbaa !9
  %35 = load i8, ptr %34, align 1, !tbaa !14
  %conv48 = sext i8 %35 to i32
  %cmp49 = icmp ne i32 %conv48, 66
  br i1 %cmp49, label %land.lhs.true, label %if.end91

land.lhs.true:                                    ; preds = %sw.bb47
  %36 = load ptr, ptr %text, align 8, !tbaa !9
  %37 = load i8, ptr %36, align 1, !tbaa !14
  %conv51 = sext i8 %37 to i32
  %cmp52 = icmp ne i32 %conv51, 68
  br i1 %cmp52, label %land.lhs.true54, label %if.end91

land.lhs.true54:                                  ; preds = %land.lhs.true
  %38 = load ptr, ptr %text, align 8, !tbaa !9
  %39 = load i8, ptr %38, align 1, !tbaa !14
  %conv55 = sext i8 %39 to i32
  %cmp56 = icmp ne i32 %conv55, 86
  br i1 %cmp56, label %land.lhs.true58, label %if.end91

land.lhs.true58:                                  ; preds = %land.lhs.true54
  %40 = load ptr, ptr %text, align 8, !tbaa !9
  %41 = load i8, ptr %40, align 1, !tbaa !14
  %conv59 = sext i8 %41 to i32
  %cmp60 = icmp ne i32 %conv59, 71
  br i1 %cmp60, label %land.lhs.true62, label %if.end91

land.lhs.true62:                                  ; preds = %land.lhs.true58
  %42 = load ptr, ptr %text, align 8, !tbaa !9
  %43 = load i8, ptr %42, align 1, !tbaa !14
  %conv63 = sext i8 %43 to i32
  %cmp64 = icmp ne i32 %conv63, 74
  br i1 %cmp64, label %land.lhs.true66, label %if.end91

land.lhs.true66:                                  ; preds = %land.lhs.true62
  %44 = load ptr, ptr %text, align 8, !tbaa !9
  %45 = load i8, ptr %44, align 1, !tbaa !14
  %conv67 = sext i8 %45 to i32
  %cmp68 = icmp ne i32 %conv67, 76
  br i1 %cmp68, label %land.lhs.true70, label %if.end91

land.lhs.true70:                                  ; preds = %land.lhs.true66
  %46 = load ptr, ptr %text, align 8, !tbaa !9
  %47 = load i8, ptr %46, align 1, !tbaa !14
  %conv71 = sext i8 %47 to i32
  %cmp72 = icmp ne i32 %conv71, 77
  br i1 %cmp72, label %land.lhs.true74, label %if.end91

land.lhs.true74:                                  ; preds = %land.lhs.true70
  %48 = load ptr, ptr %text, align 8, !tbaa !9
  %49 = load i8, ptr %48, align 1, !tbaa !14
  %conv75 = sext i8 %49 to i32
  %cmp76 = icmp ne i32 %conv75, 78
  br i1 %cmp76, label %land.lhs.true78, label %if.end91

land.lhs.true78:                                  ; preds = %land.lhs.true74
  %50 = load ptr, ptr %text, align 8, !tbaa !9
  %51 = load i8, ptr %50, align 1, !tbaa !14
  %conv79 = sext i8 %51 to i32
  %cmp80 = icmp ne i32 %conv79, 82
  br i1 %cmp80, label %land.lhs.true82, label %if.end91

land.lhs.true82:                                  ; preds = %land.lhs.true78
  %52 = load ptr, ptr %text, align 8, !tbaa !9
  %53 = load i8, ptr %52, align 1, !tbaa !14
  %conv83 = sext i8 %53 to i32
  %cmp84 = icmp ne i32 %conv83, 87
  br i1 %cmp84, label %land.lhs.true86, label %if.end91

land.lhs.true86:                                  ; preds = %land.lhs.true82
  %54 = load ptr, ptr %text, align 8, !tbaa !9
  %55 = load i8, ptr %54, align 1, !tbaa !14
  %conv87 = sext i8 %55 to i32
  %cmp88 = icmp ne i32 %conv87, 90
  br i1 %cmp88, label %if.then90, label %if.end91

if.then90:                                        ; preds = %land.lhs.true86
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end91:                                         ; preds = %land.lhs.true86, %land.lhs.true82, %land.lhs.true78, %land.lhs.true74, %land.lhs.true70, %land.lhs.true66, %land.lhs.true62, %land.lhs.true58, %land.lhs.true54, %land.lhs.true, %sw.bb47
  %56 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr92 = getelementptr inbounds nuw i8, ptr %56, i32 1
  store ptr %incdec.ptr92, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

sw.bb93:                                          ; preds = %if.end20
  %57 = load ptr, ptr %text, align 8, !tbaa !9
  %58 = load i8, ptr %57, align 1, !tbaa !14
  %conv94 = sext i8 %58 to i32
  %cmp95 = icmp ne i32 %conv94, 69
  br i1 %cmp95, label %land.lhs.true97, label %if.end106

land.lhs.true97:                                  ; preds = %sw.bb93
  %59 = load ptr, ptr %text, align 8, !tbaa !9
  %60 = load i8, ptr %59, align 1, !tbaa !14
  %conv98 = sext i8 %60 to i32
  %cmp99 = icmp ne i32 %conv98, 73
  br i1 %cmp99, label %land.lhs.true101, label %if.end106

land.lhs.true101:                                 ; preds = %land.lhs.true97
  %61 = load ptr, ptr %text, align 8, !tbaa !9
  %62 = load i8, ptr %61, align 1, !tbaa !14
  %conv102 = sext i8 %62 to i32
  %cmp103 = icmp ne i32 %conv102, 89
  br i1 %cmp103, label %if.then105, label %if.end106

if.then105:                                       ; preds = %land.lhs.true101
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end106:                                        ; preds = %land.lhs.true101, %land.lhs.true97, %sw.bb93
  %63 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr107 = getelementptr inbounds nuw i8, ptr %63, i32 1
  store ptr %incdec.ptr107, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

sw.bb108:                                         ; preds = %if.end20
  %64 = load ptr, ptr %text, align 8, !tbaa !9
  %65 = load i8, ptr %64, align 1, !tbaa !14
  %conv109 = sext i8 %65 to i32
  %cmp110 = icmp eq i32 %conv109, 69
  br i1 %cmp110, label %if.then112, label %if.else142

if.then112:                                       ; preds = %sw.bb108
  %66 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr113 = getelementptr inbounds nuw i8, ptr %66, i32 1
  store ptr %incdec.ptr113, ptr %text, align 8, !tbaa !9
  %67 = load ptr, ptr %text, align 8, !tbaa !9
  %68 = load i8, ptr %67, align 1, !tbaa !14
  %conv114 = sext i8 %68 to i32
  %cmp115 = icmp eq i32 %conv114, 76
  br i1 %cmp115, label %if.then117, label %if.else126

if.then117:                                       ; preds = %if.then112
  %69 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr118 = getelementptr inbounds nuw i8, ptr %69, i32 1
  store ptr %incdec.ptr118, ptr %text, align 8, !tbaa !9
  %70 = load ptr, ptr %text, align 8, !tbaa !9
  %71 = load i8, ptr %70, align 1, !tbaa !14
  %conv119 = sext i8 %71 to i32
  %cmp120 = icmp eq i32 %conv119, 89
  br i1 %cmp120, label %if.then122, label %if.else124

if.then122:                                       ; preds = %if.then117
  %72 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr123 = getelementptr inbounds nuw i8, ptr %72, i32 1
  store ptr %incdec.ptr123, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

if.else124:                                       ; preds = %if.then117
  %73 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr125 = getelementptr inbounds i8, ptr %73, i32 -1
  store ptr %incdec.ptr125, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

if.else126:                                       ; preds = %if.then112
  %74 = load ptr, ptr %text, align 8, !tbaa !9
  %75 = load i8, ptr %74, align 1, !tbaa !14
  %conv127 = sext i8 %75 to i32
  %cmp128 = icmp eq i32 %conv127, 82
  br i1 %cmp128, label %if.then138, label %lor.lhs.false130

lor.lhs.false130:                                 ; preds = %if.else126
  %76 = load ptr, ptr %text, align 8, !tbaa !9
  %77 = load i8, ptr %76, align 1, !tbaa !14
  %conv131 = sext i8 %77 to i32
  %cmp132 = icmp eq i32 %conv131, 83
  br i1 %cmp132, label %if.then138, label %lor.lhs.false134

lor.lhs.false134:                                 ; preds = %lor.lhs.false130
  %78 = load ptr, ptr %text, align 8, !tbaa !9
  %79 = load i8, ptr %78, align 1, !tbaa !14
  %conv135 = sext i8 %79 to i32
  %cmp136 = icmp eq i32 %conv135, 68
  br i1 %cmp136, label %if.then138, label %if.end140

if.then138:                                       ; preds = %lor.lhs.false134, %lor.lhs.false130, %if.else126
  %80 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr139 = getelementptr inbounds nuw i8, ptr %80, i32 1
  store ptr %incdec.ptr139, ptr %text, align 8, !tbaa !9
  br label %if.end140

if.end140:                                        ; preds = %if.then138, %lor.lhs.false134
  br label %if.end141

if.end141:                                        ; preds = %if.end140
  br label %sw.epilog

if.else142:                                       ; preds = %sw.bb108
  %81 = load ptr, ptr %text, align 8, !tbaa !9
  %82 = load i8, ptr %81, align 1, !tbaa !14
  %conv143 = sext i8 %82 to i32
  %cmp144 = icmp eq i32 %conv143, 73
  br i1 %cmp144, label %if.then146, label %if.else160

if.then146:                                       ; preds = %if.else142
  %83 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr147 = getelementptr inbounds nuw i8, ptr %83, i32 1
  store ptr %incdec.ptr147, ptr %text, align 8, !tbaa !9
  %84 = load ptr, ptr %text, align 8, !tbaa !9
  %85 = load i8, ptr %84, align 1, !tbaa !14
  %conv148 = sext i8 %85 to i32
  %cmp149 = icmp eq i32 %conv148, 78
  br i1 %cmp149, label %if.then151, label %if.end159

if.then151:                                       ; preds = %if.then146
  %86 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr152 = getelementptr inbounds nuw i8, ptr %86, i32 1
  store ptr %incdec.ptr152, ptr %text, align 8, !tbaa !9
  %87 = load ptr, ptr %text, align 8, !tbaa !9
  %88 = load i8, ptr %87, align 1, !tbaa !14
  %conv153 = sext i8 %88 to i32
  %cmp154 = icmp eq i32 %conv153, 71
  br i1 %cmp154, label %if.then156, label %if.end158

if.then156:                                       ; preds = %if.then151
  %89 = load ptr, ptr %text, align 8, !tbaa !9
  %incdec.ptr157 = getelementptr inbounds nuw i8, ptr %89, i32 1
  store ptr %incdec.ptr157, ptr %text, align 8, !tbaa !9
  br label %sw.epilog

if.end158:                                        ; preds = %if.then151
  br label %if.end159

if.end159:                                        ; preds = %if.end158, %if.then146
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else160:                                       ; preds = %if.else142
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.default:                                       ; preds = %if.end20
  %90 = load ptr, ptr @stderr, align 8, !tbaa !26
  %91 = load ptr, ptr %pat, align 8, !tbaa !9
  %92 = load i8, ptr %91, align 1, !tbaa !14
  %conv161 = sext i8 %92 to i32
  %call162 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef @.str.3.945, i32 noundef %conv161) #15
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %if.then156, %if.end141, %if.else124, %if.then122, %if.end106, %if.end91, %if.end45, %while.end39, %while.end
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog, %if.else
  %93 = load ptr, ptr %pat, align 8, !tbaa !9
  %incdec.ptr163 = getelementptr inbounds nuw i8, ptr %93, i32 1
  store ptr %incdec.ptr163, ptr %pat, align 8, !tbaa !9
  br label %for.cond, !llvm.loop !181

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.default, %if.else160, %if.end159, %if.then105, %if.then90, %if.then44, %if.then25, %if.then19, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %text) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %pat) #15
  %94 = load i32, ptr %retval, align 4
  ret i32 %94
}

; Function Attrs: nounwind uwtable
define dso_local void @trie_insert(ptr noundef %r, ptr noundef %s, ptr noundef %value) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %s.addr = alloca ptr, align 8
  %value.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %ch = alloca i8, align 1
  store ptr %r, ptr %r.addr, align 8, !tbaa !182
  store ptr %s, ptr %s.addr, align 8, !tbaa !9
  store ptr %value, ptr %value.addr, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15
  store ptr null, ptr %p, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %0 = load ptr, ptr %s.addr, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %0, i32 1
  store ptr %incdec.ptr, ptr %s.addr, align 8, !tbaa !9
  %1 = load i8, ptr %0, align 1, !tbaa !14
  store i8 %1, ptr %ch, align 1, !tbaa !14
  %tobool = icmp ne i8 %1, 0
  br i1 %tobool, label %while.body, label %while.end11

while.body:                                       ; preds = %while.cond
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %2 = load ptr, ptr %r.addr, align 8, !tbaa !182
  %3 = load ptr, ptr %2, align 8, !tbaa !141
  store ptr %3, ptr %p, align 8, !tbaa !141
  %tobool2 = icmp ne ptr %3, null
  br i1 %tobool2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %4 = load ptr, ptr %p, align 8, !tbaa !141
  %ch4 = getelementptr inbounds nuw %struct.trie_s, ptr %4, i32 0, i32 3
  %5 = load i8, ptr %ch4, align 8, !tbaa !184
  %conv = sext i8 %5 to i32
  %6 = load i8, ptr %ch, align 1, !tbaa !14
  %conv5 = sext i8 %6 to i32
  %cmp = icmp eq i32 %conv, %conv5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body3
  br label %while.end

if.else:                                          ; preds = %while.body3
  %7 = load ptr, ptr %p, align 8, !tbaa !141
  %otherwise = getelementptr inbounds nuw %struct.trie_s, ptr %7, i32 0, i32 0
  store ptr %otherwise, ptr %r.addr, align 8, !tbaa !182
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond1, !llvm.loop !186

while.end:                                        ; preds = %if.then, %while.cond1
  %8 = load ptr, ptr %p, align 8, !tbaa !141
  %tobool7 = icmp ne ptr %8, null
  br i1 %tobool7, label %if.end10, label %if.then8

if.then8:                                         ; preds = %while.end
  %call = call noalias ptr @malloc(i64 noundef 32) #17
  store ptr %call, ptr %p, align 8, !tbaa !141
  %9 = load ptr, ptr %p, align 8, !tbaa !141
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 32, i1 false)
  %10 = load i8, ptr %ch, align 1, !tbaa !14
  %11 = load ptr, ptr %p, align 8, !tbaa !141
  %ch9 = getelementptr inbounds nuw %struct.trie_s, ptr %11, i32 0, i32 3
  store i8 %10, ptr %ch9, align 8, !tbaa !184
  %12 = load ptr, ptr %p, align 8, !tbaa !141
  %13 = load ptr, ptr %r.addr, align 8, !tbaa !182
  store ptr %12, ptr %13, align 8, !tbaa !141
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %while.end
  %14 = load ptr, ptr %p, align 8, !tbaa !141
  %more = getelementptr inbounds nuw %struct.trie_s, ptr %14, i32 0, i32 1
  store ptr %more, ptr %r.addr, align 8, !tbaa !182
  br label %while.cond, !llvm.loop !187

while.end11:                                      ; preds = %while.cond
  %15 = load ptr, ptr %value.addr, align 8, !tbaa !20
  %16 = load ptr, ptr %p, align 8, !tbaa !141
  %value12 = getelementptr inbounds nuw %struct.trie_s, ptr %16, i32 0, i32 2
  store ptr %15, ptr %value12, align 8, !tbaa !188
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @trie_lookup(ptr noundef %r, ptr noundef %sp) #0 {
entry:
  %r.addr = alloca ptr, align 8
  %sp.addr = alloca ptr, align 8
  %s = alloca ptr, align 8
  %value = alloca ptr, align 8
  %ch = alloca i8, align 1
  %l = alloca ptr, align 8
  %p = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %r, ptr %r.addr, align 8, !tbaa !182
  store ptr %sp, ptr %sp.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15
  %0 = load ptr, ptr %sp.addr, align 8, !tbaa !17
  %1 = load ptr, ptr %0, align 8, !tbaa !9
  store ptr %1, ptr %s, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #15
  store ptr null, ptr %value, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 1, ptr %ch) #15
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %entry
  %2 = load ptr, ptr %s, align 8, !tbaa !9
  %3 = load i8, ptr %2, align 1, !tbaa !14
  store i8 %3, ptr %ch, align 1, !tbaa !14
  %tobool = icmp ne i8 %3, 0
  br i1 %tobool, label %while.body, label %while.end15

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %l) #15
  %4 = load ptr, ptr %r.addr, align 8, !tbaa !182
  store ptr %4, ptr %l, align 8, !tbaa !182
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15
  br label %while.cond1

while.cond1:                                      ; preds = %if.end, %while.body
  %5 = load ptr, ptr %l, align 8, !tbaa !182
  %6 = load ptr, ptr %5, align 8, !tbaa !141
  store ptr %6, ptr %p, align 8, !tbaa !141
  %tobool2 = icmp ne ptr %6, null
  br i1 %tobool2, label %while.body3, label %while.end

while.body3:                                      ; preds = %while.cond1
  %7 = load ptr, ptr %p, align 8, !tbaa !141
  %ch4 = getelementptr inbounds nuw %struct.trie_s, ptr %7, i32 0, i32 3
  %8 = load i8, ptr %ch4, align 8, !tbaa !184
  %conv = sext i8 %8 to i32
  %9 = load i8, ptr %ch, align 1, !tbaa !14
  %conv5 = sext i8 %9 to i32
  %cmp = icmp eq i32 %conv, %conv5
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %while.body3
  br label %while.end

if.else:                                          ; preds = %while.body3
  %10 = load ptr, ptr %p, align 8, !tbaa !141
  %otherwise = getelementptr inbounds nuw %struct.trie_s, ptr %10, i32 0, i32 0
  store ptr %otherwise, ptr %l, align 8, !tbaa !182
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %while.cond1, !llvm.loop !189

while.end:                                        ; preds = %if.then, %while.cond1
  %11 = load ptr, ptr %p, align 8, !tbaa !141
  %tobool7 = icmp ne ptr %11, null
  br i1 %tobool7, label %if.then8, label %if.else12

if.then8:                                         ; preds = %while.end
  %12 = load ptr, ptr %p, align 8, !tbaa !141
  %otherwise9 = getelementptr inbounds nuw %struct.trie_s, ptr %12, i32 0, i32 0
  %13 = load ptr, ptr %otherwise9, align 8, !tbaa !190
  %14 = load ptr, ptr %l, align 8, !tbaa !182
  store ptr %13, ptr %14, align 8, !tbaa !141
  %15 = load ptr, ptr %r.addr, align 8, !tbaa !182
  %16 = load ptr, ptr %15, align 8, !tbaa !141
  %17 = load ptr, ptr %p, align 8, !tbaa !141
  %otherwise10 = getelementptr inbounds nuw %struct.trie_s, ptr %17, i32 0, i32 0
  store ptr %16, ptr %otherwise10, align 8, !tbaa !190
  %18 = load ptr, ptr %p, align 8, !tbaa !141
  %19 = load ptr, ptr %r.addr, align 8, !tbaa !182
  store ptr %18, ptr %19, align 8, !tbaa !141
  %20 = load ptr, ptr %p, align 8, !tbaa !141
  %more = getelementptr inbounds nuw %struct.trie_s, ptr %20, i32 0, i32 1
  store ptr %more, ptr %r.addr, align 8, !tbaa !182
  %21 = load ptr, ptr %p, align 8, !tbaa !141
  %value11 = getelementptr inbounds nuw %struct.trie_s, ptr %21, i32 0, i32 2
  %22 = load ptr, ptr %value11, align 8, !tbaa !188
  store ptr %22, ptr %value, align 8, !tbaa !9
  %23 = load ptr, ptr %s, align 8, !tbaa !9
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %23, i32 1
  store ptr %incdec.ptr, ptr %s, align 8, !tbaa !9
  br label %if.end13

if.else12:                                        ; preds = %while.end
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end13:                                         ; preds = %if.then8
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.else12
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %l) #15
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.end15
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !191

while.end15:                                      ; preds = %cleanup, %while.cond
  %24 = load ptr, ptr %s, align 8, !tbaa !9
  %25 = load ptr, ptr %sp.addr, align 8, !tbaa !17
  store ptr %24, ptr %25, align 8, !tbaa !9
  %26 = load ptr, ptr %value, align 8, !tbaa !9
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr %ch) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #15
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15
  ret ptr %26

unreachable:                                      ; preds = %cleanup
  unreachable
}

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
attributes #10 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind }
attributes #16 = { cold }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind willreturn memory(none) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !7, i64 0}
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !18, i64 0}
!18 = !{!"p2 omnipotent char", !19, i64 0}
!19 = !{!"any p2 pointer", !11, i64 0}
!20 = !{!11, !11, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 short", !11, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"short", !7, i64 0}
!25 = distinct !{!25, !16}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 _ZTS8_IO_FILE", !11, i64 0}
!28 = !{!29, !10, i64 0}
!29 = !{!"", !10, i64 0, !6, i64 8, !6, i64 12, !24, i64 16, !24, i64 18}
!30 = !{!29, !6, i64 12}
!31 = !{!29, !6, i64 8}
!32 = !{!29, !24, i64 16}
!33 = !{!29, !24, i64 18}
!34 = distinct !{!34, !16}
!35 = !{!36, !36, i64 0}
!36 = !{!"double", !7, i64 0}
!37 = !{!38, !13, i64 16}
!38 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40}
!39 = !{!38, !6, i64 4}
!40 = !{!38, !13, i64 32}
!41 = !{!38, !6, i64 8}
!42 = !{!38, !6, i64 0}
!43 = !{!38, !13, i64 24}
!44 = !{!38, !13, i64 40}
!45 = distinct !{!45, !16}
!46 = distinct !{!46, !16}
!47 = distinct !{!47, !16}
!48 = distinct !{!48, !16}
!49 = !{!50, !50, i64 0}
!50 = !{!"p1 _ZTS5Elm_s", !11, i64 0}
!51 = !{!52, !13, i64 0}
!52 = !{!"", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312}
!53 = !{!54, !54, i64 0}
!54 = !{!"float", !7, i64 0}
!55 = !{i64 0, i64 8, !12, i64 8, i64 8, !12, i64 16, i64 8, !12, i64 24, i64 8, !12, i64 32, i64 8, !12, i64 40, i64 8, !12, i64 48, i64 8, !12, i64 56, i64 8, !12, i64 64, i64 8, !12, i64 72, i64 8, !12, i64 80, i64 8, !12, i64 88, i64 8, !12, i64 96, i64 8, !12, i64 104, i64 8, !12, i64 112, i64 8, !12, i64 120, i64 8, !12, i64 128, i64 8, !12, i64 136, i64 8, !12, i64 144, i64 8, !12, i64 152, i64 8, !12, i64 160, i64 8, !12, i64 168, i64 8, !12, i64 176, i64 8, !12, i64 184, i64 8, !12, i64 192, i64 8, !12, i64 200, i64 8, !12, i64 208, i64 8, !12, i64 216, i64 8, !12, i64 224, i64 8, !12, i64 232, i64 8, !12, i64 240, i64 8, !12, i64 248, i64 8, !12, i64 256, i64 8, !12, i64 264, i64 8, !12, i64 272, i64 8, !12, i64 280, i64 8, !12, i64 288, i64 8, !12, i64 296, i64 8, !12, i64 304, i64 8, !12, i64 312, i64 8, !12}
!56 = !{!57, !54, i64 0}
!57 = !{!"", !54, i64 0, !54, i64 4, !7, i64 8, !7, i64 9, !7, i64 10}
!58 = !{!52, !13, i64 128}
!59 = !{!52, !13, i64 24}
!60 = !{!52, !13, i64 200}
!61 = !{!52, !13, i64 40}
!62 = !{!52, !13, i64 216}
!63 = !{!52, !13, i64 56}
!64 = !{!52, !13, i64 232}
!65 = !{!52, !13, i64 248}
!66 = !{!67, !6, i64 4}
!67 = !{!"", !54, i64 0, !6, i64 4}
!68 = !{!67, !54, i64 0}
!69 = !{!70, !54, i64 8}
!70 = !{!"", !54, i64 0, !54, i64 4, !54, i64 8}
!71 = !{!70, !54, i64 0}
!72 = !{!70, !54, i64 4}
!73 = distinct !{!73, !16}
!74 = !{!75, !7, i64 8}
!75 = !{!"Elm_s", !10, i64 0, !7, i64 8, !7, i64 9, !7, i64 10, !7, i64 11, !10, i64 16, !10, i64 24, !13, i64 32, !7, i64 40}
!76 = !{!75, !10, i64 0}
!77 = distinct !{!77, !16}
!78 = distinct !{!78, !16}
!79 = distinct !{!79, !16}
!80 = !{i64 0, i64 4, !53, i64 4, i64 4, !5}
!81 = !{!75, !13, i64 32}
!82 = distinct !{!82, !16}
!83 = distinct !{!83, !16}
!84 = distinct !{!84, !16}
!85 = !{!52, !13, i64 304}
!86 = !{!52, !13, i64 8}
!87 = !{!52, !13, i64 176}
!88 = !{!52, !13, i64 112}
!89 = !{!52, !13, i64 144}
!90 = !{!52, !13, i64 160}
!91 = !{!52, !13, i64 16}
!92 = !{!52, !13, i64 32}
!93 = !{!52, !13, i64 48}
!94 = !{!52, !13, i64 296}
!95 = !{!52, !13, i64 256}
!96 = !{!52, !13, i64 272}
!97 = !{!52, !13, i64 192}
!98 = !{!52, !13, i64 208}
!99 = !{!52, !13, i64 224}
!100 = !{!52, !13, i64 240}
!101 = distinct !{!101, !16}
!102 = distinct !{!102, !16}
!103 = distinct !{!103, !16}
!104 = distinct !{!104, !16}
!105 = distinct !{!105, !16}
!106 = !{!57, !7, i64 9}
!107 = !{!57, !7, i64 10}
!108 = !{!57, !54, i64 4}
!109 = !{!57, !7, i64 8}
!110 = distinct !{!110, !16}
!111 = !{!112, !112, i64 0}
!112 = !{!"p1 float", !11, i64 0}
!113 = distinct !{!113, !16}
!114 = !{!115, !115, i64 0}
!115 = !{!"p1 int", !11, i64 0}
!116 = distinct !{!116, !16}
!117 = distinct !{!117, !16}
!118 = distinct !{!118, !16}
!119 = distinct !{!119, !16}
!120 = !{!52, !13, i64 184}
!121 = !{!52, !13, i64 288}
!122 = !{!52, !13, i64 96}
!123 = !{!52, !13, i64 104}
!124 = !{!52, !13, i64 80}
!125 = !{!52, !13, i64 88}
!126 = !{!52, !13, i64 64}
!127 = !{!52, !13, i64 72}
!128 = !{!52, !13, i64 136}
!129 = !{!52, !13, i64 120}
!130 = !{!52, !13, i64 264}
!131 = !{!52, !13, i64 280}
!132 = !{!52, !13, i64 312}
!133 = !{!52, !13, i64 152}
!134 = !{!135, !54, i64 8}
!135 = !{!"", !10, i64 0, !54, i64 8, !54, i64 12, !54, i64 16, !54, i64 20, !54, i64 24}
!136 = !{!52, !13, i64 168}
!137 = !{!135, !54, i64 12}
!138 = !{!135, !54, i64 20}
!139 = !{!135, !54, i64 16}
!140 = !{!135, !54, i64 24}
!141 = !{!142, !142, i64 0}
!142 = !{!"p1 _ZTS6trie_s", !11, i64 0}
!143 = !{!75, !7, i64 9}
!144 = !{!75, !7, i64 10}
!145 = distinct !{!145, !16}
!146 = distinct !{!146, !16}
!147 = distinct !{!147, !16}
!148 = distinct !{!148, !16}
!149 = distinct !{!149, !16}
!150 = distinct !{!150, !16}
!151 = distinct !{!151, !16}
!152 = distinct !{!152, !16}
!153 = distinct !{!153, !16}
!154 = distinct !{!154, !16}
!155 = distinct !{!155, !16}
!156 = distinct !{!156, !16}
!157 = distinct !{!157, !16}
!158 = distinct !{!158, !16}
!159 = distinct !{!159, !16}
!160 = distinct !{!160, !16}
!161 = distinct !{!161, !16}
!162 = distinct !{!162, !16}
!163 = distinct !{!163, !16}
!164 = distinct !{!164, !16}
!165 = distinct !{!165, !16}
!166 = distinct !{!166, !16}
!167 = distinct !{!167, !16}
!168 = distinct !{!168, !16}
!169 = distinct !{!169, !16}
!170 = distinct !{!170, !16}
!171 = distinct !{!171, !16}
!172 = distinct !{!172, !16}
!173 = distinct !{!173, !16}
!174 = distinct !{!174, !16}
!175 = distinct !{!175, !16}
!176 = distinct !{!176, !16}
!177 = distinct !{!177, !16}
!178 = distinct !{!178, !16}
!179 = distinct !{!179, !16}
!180 = distinct !{!180, !16}
!181 = distinct !{!181, !16}
!182 = !{!183, !183, i64 0}
!183 = !{!"p2 _ZTS6trie_s", !19, i64 0}
!184 = !{!185, !7, i64 24}
!185 = !{!"trie_s", !142, i64 0, !142, i64 8, !11, i64 16, !7, i64 24}
!186 = distinct !{!186, !16}
!187 = distinct !{!187, !16}
!188 = !{!185, !11, i64 16}
!189 = distinct !{!189, !16}
!190 = !{!185, !142, i64 0}
!191 = distinct !{!191, !16}
