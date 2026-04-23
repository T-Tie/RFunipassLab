; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.klatt_frame_t = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.klatt_global_t = type { i32, i32, i32, i32, i64, i64, i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.filter_t = type { float, float, float }
%struct.slope_t = type { float, i32 }
%struct.interp_t = type { float, float, i8, i8, i8 }
%struct.Elm_s = type { ptr, i8, i8, i8, i8, ptr, ptr, i64, [19 x %struct.interp_t] }
%struct.darray_t = type { ptr, i32, i32, i16, i16 }

@.str = private unnamed_addr constant [62 x i8] c"$Id: ASCII.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@ASCII_id = dso_local local_unnamed_addr global ptr @.str, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"null\00", align 1
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
@.str.17 = private unnamed_addr constant [10 x i8] c"full stop\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"slash\00", align 1
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
@.str.41 = private unnamed_addr constant [4 x i8] c"eff\00", align 1
@.str.42 = private unnamed_addr constant [4 x i8] c"gee\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"aych\00", align 1
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
@.str.1.75 = private unnamed_addr constant [12 x i8] c"File output\00", align 1
@linear_file = internal global ptr null, align 8
@.str.3.77 = private unnamed_addr constant [27 x i8] c"Raw 16-bit linear pathname\00", align 1
@au_file = internal global ptr null, align 8
@.str.5.79 = private unnamed_addr constant [25 x i8] c"Sun/Next audio file name\00", align 1
@au_fd = internal unnamed_addr global i32 -1, align 4
@au_encoding = internal unnamed_addr global i1 false, align 4
@au_size = internal unnamed_addr global i32 0, align 4
@linear_fd = internal unnamed_addr global i32 -1, align 4
@.str.8.82 = private unnamed_addr constant [30 x i8] c"%s : No memory for ulaw data\0A\00", align 1
@.str.83 = private unnamed_addr constant [63 x i8] c"$Id: darray.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@darray_id = dso_local local_unnamed_addr global ptr @.str.83, align 8
@.str.84 = private unnamed_addr constant [65 x i8] c"$Id: def_pars.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@def_pars_id = dso_local local_unnamed_addr global ptr @.str.84, align 8
@.str.1.85 = private unnamed_addr constant [16 x i8] c"Synth paramters\00", align 1
@.str.2.86 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.3.87 = private unnamed_addr constant [25 x i8] c"Quiet - minimal messages\00", align 1
@.str.5.89 = private unnamed_addr constant [23 x i8] c"Impulse glottal source\00", align 1
@.str.6.90 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.8.92 = private unnamed_addr constant [24 x i8] c"Number cascade formants\00", align 1
@.str.10.94 = private unnamed_addr constant [11 x i8] c"F0 flutter\00", align 1
@.str.13.97 = private unnamed_addr constant [15 x i8] c"mSec per frame\00", align 1
@.str.15.99 = private unnamed_addr constant [8 x i8] c"Tilt dB\00", align 1
@.str.17.101 = private unnamed_addr constant [17 x i8] c"Base F0 in 0.1Hz\00", align 1
@.str.102 = private unnamed_addr constant [65 x i8] c"$Id: elements.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@elements_id = dso_local local_unnamed_addr global ptr @.str.102, align 8
@.str.1.103 = private unnamed_addr constant [4 x i8] c"END\00", align 1
@.str.57.159 = private unnamed_addr constant [3 x i8] c"LL\00", align 1
@.str.60.162 = private unnamed_addr constant [6 x i8] c"<rzd>\00", align 1
@.str.74.176 = private unnamed_addr constant [3 x i8] c"A.\00", align 1
@.str.82 = private unnamed_addr constant [3 x i8] c"V\22\00", align 1
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
@punct_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.2.743, ptr @Anything, ptr @.str.2.743], [4 x ptr] [ptr @Anything, ptr @.str.2.295, ptr @Anything, ptr @.str.8.467], [4 x ptr] [ptr @.str.4.200, ptr @.str.5.296, ptr @Anything, ptr @.str.46.787], [4 x ptr] [ptr @.str.7.201, ptr @.str.5.296, ptr @Anything, ptr @.str.46.787], [4 x ptr] [ptr @.str.8.184, ptr @.str.5.296, ptr @Anything, ptr @.str.46.787], [4 x ptr] [ptr @Anything, ptr @.str.9.203, ptr @Anything, ptr @.str.8.467], [4 x ptr] [ptr @Anything, ptr @.str.10.297, ptr @Anything, ptr @.str.2.743], [4 x ptr] [ptr @Anything, ptr @.str.4.200, ptr @Anything, ptr @.str.2.743], [4 x ptr] [ptr @Anything, ptr @.str.11.298, ptr @Anything, ptr @.str.2.743], [4 x ptr] [ptr @Anything, ptr @.str.12.299, ptr @Anything, ptr @.str.2.743], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@A_rules = internal global [35 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.79.820, ptr @Nothing, ptr @.str.78.819], [4 x ptr] [ptr @Nothing, ptr @.str.15.259, ptr @Nothing, ptr @.str.16.260], [4 x ptr] [ptr @Nothing, ptr @.str.84.825, ptr @.str.76.817, ptr @.str.19.262], [4 x ptr] [ptr @Anything, ptr @.str.84.825, ptr @.str.8.184, ptr @.str.20.220], [4 x ptr] [ptr @.str.21.189, ptr @.str.22.263, ptr @.str.8.184, ptr @.str.23.264], [4 x ptr] [ptr @Anything, ptr @.str.79.820, ptr @.str.24.187, ptr @.str.78.819], [4 x ptr] [ptr @Anything, ptr @.str.85.826, ptr @Anything, ptr @.str.76.817], [4 x ptr] [ptr @.str.26.183, ptr @.str.27.266, ptr @Anything, ptr @.str.28.267], [4 x ptr] [ptr @Anything, ptr @.str.79.820, ptr @.str.29.268, ptr @.str.90.831], [4 x ptr] [ptr @.str.31.195, ptr @.str.32.269, ptr @Anything, ptr @.str.33.270], [4 x ptr] [ptr @Nothing, ptr @.str.34.271, ptr @.str.8.184, ptr @.str.35.209], [4 x ptr] [ptr @Anything, ptr @.str.36.272, ptr @Anything, ptr @.str.37.273], [4 x ptr] [ptr @.str.31.195, ptr @.str.38.274, ptr @.str.71.812, ptr @.str.40.275], [4 x ptr] [ptr @Anything, ptr @.str.79.820, ptr @.str.41.185, ptr @.str.72.813], [4 x ptr] [ptr @.str.26.183, ptr @.str.79.820, ptr @.str.43.277, ptr @.str.90.831], [4 x ptr] [ptr @Anything, ptr @.str.79.820, ptr @.str.44.205, ptr @.str.90.831], [4 x ptr] [ptr @Nothing, ptr @.str.45.278, ptr @Anything, ptr @.str.19.262], [4 x ptr] [ptr @Anything, ptr @.str.45.278, ptr @Anything, ptr @.str.46.279], [4 x ptr] [ptr @.str.26.183, ptr @.str.84.825, ptr @Nothing, ptr @.str.16.260], [4 x ptr] [ptr @Anything, ptr @.str.84.825, ptr @Nothing, ptr @.str.82.823], [4 x ptr] [ptr @Anything, ptr @.str.84.825, ptr @Anything, ptr @.str.16.260], [4 x ptr] [ptr @Anything, ptr @.str.104.845, ptr @Anything, ptr @.str.20.220], [4 x ptr] [ptr @Anything, ptr @.str.91.832, ptr @Anything, ptr @.str.90.831], [4 x ptr] [ptr @Anything, ptr @.str.42.615, ptr @Anything, ptr @.str.90.831], [4 x ptr] [ptr @Anything, ptr @.str.51.283, ptr @Anything, ptr @.str.76.817], [4 x ptr] [ptr @.str.31.195, ptr @.str.34.271, ptr @Nothing, ptr @.str.35.209], [4 x ptr] [ptr @.str.31.195, ptr @.str.52.284, ptr @Nothing, ptr @.str.53.285], [4 x ptr] [ptr @Anything, ptr @.str.54.286, ptr @Anything, ptr @.str.55.287], [4 x ptr] [ptr @Anything, ptr @.str.34.271, ptr @.str.21.189, ptr @.str.56.288], [4 x ptr] [ptr @.str.26.183, ptr @.str.57.289, ptr @Anything, ptr @.str.58.290], [4 x ptr] [ptr @Anything, ptr @.str.57.289, ptr @Anything, ptr @.str.59.291], [4 x ptr] [ptr @Anything, ptr @.str.60.292, ptr @.str.61.208, ptr @.str.62.293], [4 x ptr] [ptr @.str.21.189, ptr @.str.79.820, ptr @.str.63.186, ptr @.str.90.831], [4 x ptr] [ptr @Anything, ptr @.str.79.820, ptr @Anything, ptr @.str.72.813], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@B_rules = internal global [7 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.64.246, ptr @.str.63.186, ptr @.str.65.247], [4 x ptr] [ptr @Anything, ptr @.str.66.248, ptr @Anything, ptr @.str.67.249], [4 x ptr] [ptr @Nothing, ptr @.str.68.250, ptr @Nothing, ptr @.str.69.251], [4 x ptr] [ptr @Nothing, ptr @.str.70.252, ptr @.str.8.184, ptr @.str.71.253], [4 x ptr] [ptr @Anything, ptr @.str.72.254, ptr @Anything, ptr @.str.73.255], [4 x ptr] [ptr @Anything, ptr @.str.17.758, ptr @Anything, ptr @.str.16.757], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@C_rules = internal global [12 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.51.792, ptr @.str.21.189, ptr @.str.12.753], [4 x ptr] [ptr @.str.78.238, ptr @.str.51.792, ptr @Anything, ptr @.str.12.753], [4 x ptr] [ptr @Anything, ptr @.str.51.792, ptr @Anything, ptr @.str.50.791], [4 x ptr] [ptr @.str.80.239, ptr @.str.52.793, ptr @.str.8.184, ptr @.str.82.241], [4 x ptr] [ptr @Anything, ptr @.str.52.793, ptr @.str.79.820, ptr @.str.37.778], [4 x ptr] [ptr @Anything, ptr @.str.52.793, ptr @.str.76.817, ptr @.str.37.778], [4 x ptr] [ptr @Anything, ptr @.str.52.793, ptr @.str.84.242, ptr @.str.37.778], [4 x ptr] [ptr @Anything, ptr @.str.85.207, ptr @.str.61.208, ptr @.str.36.777], [4 x ptr] [ptr @Anything, ptr @.str.87.243, ptr @Anything, ptr @.str.12.753], [4 x ptr] [ptr @Anything, ptr @.str.88.244, ptr @.str.66.807, ptr @.str.90.245], [4 x ptr] [ptr @Anything, ptr @.str.85.207, ptr @Anything, ptr @.str.12.753], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@D_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @.str.31.195, ptr @.str.91.222, ptr @Nothing, ptr @.str.92.223], [4 x ptr] [ptr @.str.93.224, ptr @.str.21.762, ptr @Nothing, ptr @.str.20.761], [4 x ptr] [ptr @.str.96.225, ptr @.str.21.762, ptr @Nothing, ptr @.str.8.749], [4 x ptr] [ptr @Nothing, ptr @.str.98.226, ptr @.str.63.186, ptr @.str.99.227], [4 x ptr] [ptr @Nothing, ptr @.str.100.228, ptr @Nothing, ptr @.str.101.229], [4 x ptr] [ptr @Nothing, ptr @.str.102.230, ptr @Anything, ptr @.str.103.231], [4 x ptr] [ptr @Nothing, ptr @.str.104.232, ptr @Anything, ptr @.str.105.233], [4 x ptr] [ptr @Nothing, ptr @.str.106.234, ptr @Anything, ptr @.str.107.235], [4 x ptr] [ptr @Anything, ptr @.str.108.236, ptr @.str.79.820, ptr @.str.109.237], [4 x ptr] [ptr @Anything, ptr @.str.21.762, ptr @Anything, ptr @.str.20.761], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@E_rules = internal global [53 x [4 x ptr]] [[4 x ptr] [ptr @.str.31.195, ptr @.str.71.812, ptr @Nothing, ptr @.str.8.467], [4 x ptr] [ptr @.str.110.211, ptr @.str.71.812, ptr @Nothing, ptr @.str.8.467], [4 x ptr] [ptr @.str.26.183, ptr @.str.71.812, ptr @Nothing, ptr @.str.80.821], [4 x ptr] [ptr @.str.8.184, ptr @.str.112.212, ptr @Nothing, ptr @.str.20.761], [4 x ptr] [ptr @.str.31.195, ptr @.str.71.812, ptr @.str.113.214, ptr @.str.8.467], [4 x ptr] [ptr @Anything, ptr @.str.114.215, ptr @.str.83.824, ptr @.str.116.217], [4 x ptr] [ptr @Anything, ptr @.str.71.812, ptr @.str.44.205, ptr @.str.80.821], [4 x ptr] [ptr @Anything, ptr @.str.117.218, ptr @.str.8.184, ptr @.str.118.219], [4 x ptr] [ptr @Anything, ptr @.str.117.218, ptr @Anything, ptr @.str.119], [4 x ptr] [ptr @.str.31.195, ptr @.str.83.824, ptr @.str.8.184, ptr @.str.82.823], [4 x ptr] [ptr @Anything, ptr @.str.83.824, ptr @.str.8.184, ptr @.str.20.220], [4 x ptr] [ptr @Anything, ptr @.str.83.824, ptr @Anything, ptr @.str.82.823], [4 x ptr] [ptr @Nothing, ptr @.str.120, ptr @Anything, ptr @.str.121], [4 x ptr] [ptr @.str.31.195, ptr @.str.71.812, ptr @.str.63.804, ptr @.str.8.467], [4 x ptr] [ptr @.str.9.750, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.37.778, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.59.800, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.21.762, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.57.798, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.47.788, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.31.772, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.54.795, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.35.776, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.51.792, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.38.779, ptr @.str.124, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @Anything, ptr @.str.124, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr @.str.71.812, ptr @.str.76.817, ptr @.str.80.821], [4 x ptr] [ptr @.str.134, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.137, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.138, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.139, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.140, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.141, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.142, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.143, ptr @.str.135, ptr @Nothing, ptr @.str.136], [4 x ptr] [ptr @.str.31.195, ptr @.str.71.812, ptr @.str.144, ptr @.str.8.467], [4 x ptr] [ptr @.str.31.195, ptr @.str.145, ptr @Nothing, ptr @.str.146], [4 x ptr] [ptr @.str.31.195, ptr @.str.147, ptr @Anything, ptr @.str.148], [4 x ptr] [ptr @Anything, ptr @.str.149, ptr @Anything, ptr @.str.150], [4 x ptr] [ptr @Anything, ptr @.str.81.822, ptr @Anything, ptr @.str.80.821], [4 x ptr] [ptr @Anything, ptr @.str.152, ptr @Anything, ptr @.str.153], [4 x ptr] [ptr @Nothing, ptr @.str.154, ptr @.str.21.189, ptr @.str.82.823], [4 x ptr] [ptr @Anything, ptr @.str.155, ptr @Anything, ptr @.str.156], [4 x ptr] [ptr @.str.31.195, ptr @.str.45.618, ptr @Nothing, ptr @.str.158], [4 x ptr] [ptr @Anything, ptr @.str.45.618, ptr @.str.159, ptr @.str.70.811], [4 x ptr] [ptr @Anything, ptr @.str.45.618, ptr @Anything, ptr @.str.80.821], [4 x ptr] [ptr @Anything, ptr @.str.161, ptr @Anything, ptr @.str.90.831], [4 x ptr] [ptr @Anything, ptr @.str.162, ptr @Anything, ptr @.str.80.821], [4 x ptr] [ptr @Nothing, ptr @.str.163, ptr @Anything, ptr @.str.92.833], [4 x ptr] [ptr @Anything, ptr @.str.54.627, ptr @Anything, ptr @.str.80.821], [4 x ptr] [ptr @Anything, ptr @.str.166, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr @.str.71.812, ptr @Anything, ptr @.str.70.811], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@F_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.167, ptr @Anything, ptr @.str.150], [4 x ptr] [ptr @Anything, ptr @.str.34.775, ptr @Anything, ptr @.str.33.774], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@G_rules = internal global [11 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.170, ptr @Anything, ptr @.str.171], [4 x ptr] [ptr @Nothing, ptr @.str.25.766, ptr @.str.173, ptr @.str.24.765], [4 x ptr] [ptr @Anything, ptr @.str.175, ptr @.str.9.750, ptr @.str.176], [4 x ptr] [ptr @.str.159, ptr @.str.177, ptr @Anything, ptr @.str.178], [4 x ptr] [ptr @Anything, ptr @.str.179, ptr @Anything, ptr @.str.24.765], [4 x ptr] [ptr @.str.180.210, ptr @.str.25.766, ptr @Anything, ptr @.str.24.765], [4 x ptr] [ptr @Anything, ptr @.str.25.766, ptr @.str.61.208, ptr @.str.53.794], [4 x ptr] [ptr @Anything, ptr @.str.182, ptr @Anything, ptr @.str.183], [4 x ptr] [ptr @.str.8.184, ptr @.str.184, ptr @Anything, ptr @.str.8.467], [4 x ptr] [ptr @Anything, ptr @.str.25.766, ptr @Anything, ptr @.str.24.765], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@H_rules = internal global [7 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.185, ptr @Anything, ptr @.str.186], [4 x ptr] [ptr @Nothing, ptr @.str.187, ptr @Anything, ptr @.str.188], [4 x ptr] [ptr @Nothing, ptr @.str.189, ptr @Anything, ptr @.str.190], [4 x ptr] [ptr @Anything, ptr @.str.191, ptr @Anything, ptr @.str.192], [4 x ptr] [ptr @Anything, ptr @.str.40.781, ptr @.str.8.184, ptr @.str.39.780], [4 x ptr] [ptr @Anything, ptr @.str.40.781, ptr @Anything, ptr @.str.8.467], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@I_rules = internal global [32 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.195, ptr @Nothing, ptr @.str.196], [4 x ptr] [ptr @Nothing, ptr @.str.197, ptr @Nothing, ptr @.str.198], [4 x ptr] [ptr @Nothing, ptr @.str.198, ptr @Anything, ptr @.str.199], [4 x ptr] [ptr @Nothing, ptr @.str.69.810, ptr @Nothing, ptr @.str.92.833], [4 x ptr] [ptr @Anything, ptr @.str.198, ptr @.str.21.762, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.202, ptr @Anything, ptr @.str.203], [4 x ptr] [ptr @.str.204, ptr @.str.205, ptr @Anything, ptr @.str.206], [4 x ptr] [ptr @Anything, ptr @.str.205, ptr @Nothing, ptr @.str.207], [4 x ptr] [ptr @Anything, ptr @.str.208, ptr @Anything, ptr @.str.209], [4 x ptr] [ptr @Anything, ptr @.str.93.834, ptr @.str.9.750, ptr @.str.211], [4 x ptr] [ptr @.str.26.183, ptr @.str.69.810, ptr @.str.66.807, ptr @.str.92.833], [4 x ptr] [ptr @Anything, ptr @.str.69.810, ptr @.str.66.807, ptr @.str.80.821], [4 x ptr] [ptr @Anything, ptr @.str.93.834, ptr @Anything, ptr @.str.80.821], [4 x ptr] [ptr @Anything, ptr @.str.69.810, ptr @.str.41.185, ptr @.str.69.810], [4 x ptr] [ptr @Anything, ptr @.str.212, ptr @.str.8.184, ptr @.str.213], [4 x ptr] [ptr @Anything, ptr @.str.214, ptr @.str.66.807, ptr @.str.215], [4 x ptr] [ptr @Anything, ptr @.str.216, ptr @.str.66.807, ptr @.str.215], [4 x ptr] [ptr @Anything, ptr @.str.69.810, ptr @.str.217, ptr @.str.92.833], [4 x ptr] [ptr @.str.218, ptr @.str.69.810, ptr @.str.219, ptr @.str.69.810], [4 x ptr] [ptr @Anything, ptr @.str.69.810, ptr @.str.220, ptr @.str.92.833], [4 x ptr] [ptr @.str.221, ptr @.str.69.810, ptr @.str.219, ptr @.str.69.810], [4 x ptr] [ptr @Anything, ptr @.str.69.810, ptr @.str.219, ptr @.str.92.833], [4 x ptr] [ptr @Anything, ptr @.str.212, ptr @Anything, ptr @.str.82.823], [4 x ptr] [ptr @Anything, ptr @.str.222, ptr @Anything, ptr @.str.92.833], [4 x ptr] [ptr @Anything, ptr @.str.223, ptr @Anything, ptr @.str.224], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @Nothing, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @.str.21.189, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.225, ptr @.str.66.807, ptr @.str.201], [4 x ptr] [ptr @Anything, ptr @.str.226, ptr @Anything, ptr @.str.227], [4 x ptr] [ptr @.str.21.189, ptr @.str.69.810, ptr @.str.63.186, ptr @.str.92.833], [4 x ptr] [ptr @Anything, ptr @.str.69.810, ptr @Anything, ptr @.str.69.810], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@J_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.54.795, ptr @Anything, ptr @.str.53.794], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@K_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.13.754, ptr @.str.31.772, ptr @.str.8.467], [4 x ptr] [ptr @Anything, ptr @.str.13.754, ptr @Anything, ptr @.str.12.753], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@L_rules = internal global [6 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.229, ptr @.str.230, ptr @.str.231], [4 x ptr] [ptr @.str.57.798, ptr @.str.57.798, ptr @Anything, ptr @.str.8.467], [4 x ptr] [ptr @.str.221, ptr @.str.57.798, ptr @.str.66.807, ptr @.str.35.209], [4 x ptr] [ptr @Anything, ptr @.str.232, ptr @Anything, ptr @.str.233], [4 x ptr] [ptr @Anything, ptr @.str.57.798, ptr @Anything, ptr @.str.56.797], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@M_rules = internal global [4 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.235, ptr @Anything, ptr @.str.236], [4 x ptr] [ptr @.str.8.184, ptr @.str.237, ptr @.str.8.184, ptr @.str.28.769], [4 x ptr] [ptr @Anything, ptr @.str.29.770, ptr @Anything, ptr @.str.28.769], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@N_rules = internal global [10 x [4 x ptr]] [[4 x ptr] [ptr @.str.71.812, ptr @.str.32.773, ptr @.str.61.208, ptr @.str.241], [4 x ptr] [ptr @Anything, ptr @.str.32.773, ptr @.str.59.800, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.32.773, ptr @.str.8.184, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.243, ptr @.str.66.807, ptr @.str.244], [4 x ptr] [ptr @Anything, ptr @.str.32.773, ptr @Anything, ptr @.str.31.772], [4 x ptr] [ptr @Anything, ptr @.str.245, ptr @Anything, ptr @.str.246], [4 x ptr] [ptr @Nothing, ptr @.str.247, ptr @Nothing, ptr @.str.248], [4 x ptr] [ptr @.str.8.184, ptr @.str.32.773, ptr @Nothing, ptr @.str.242], [4 x ptr] [ptr @Anything, ptr @.str.31.772, ptr @Anything, ptr @.str.30.771], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@O_rules = internal global [49 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.250, ptr @Nothing, ptr @.str.251], [4 x ptr] [ptr @Anything, ptr @.str.252, ptr @Anything, ptr @.str.253], [4 x ptr] [ptr @.str.31.195, ptr @.str.108.849, ptr @Nothing, ptr @.str.82.823], [4 x ptr] [ptr @.str.31.195, ptr @.str.255, ptr @Nothing, ptr @.str.256], [4 x ptr] [ptr @Anything, ptr @.str.108.849, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Nothing, ptr @.str.258, ptr @Anything, ptr @.str.259], [4 x ptr] [ptr @Anything, ptr @.str.69.642, ptr @Anything, ptr @.str.98.839], [4 x ptr] [ptr @Nothing, ptr @.str.262, ptr @Anything, ptr @.str.263], [4 x ptr] [ptr @Anything, ptr @.str.97.838, ptr @Anything, ptr @.str.265], [4 x ptr] [ptr @Anything, ptr @.str.76.817, ptr @.str.44.205, ptr @.str.98.839], [4 x ptr] [ptr @Anything, ptr @.str.76.817, ptr @.str.266, ptr @.str.98.839], [4 x ptr] [ptr @Anything, ptr @.str.76.817, ptr @.str.267, ptr @.str.98.839], [4 x ptr] [ptr @Anything, ptr @.str.268, ptr @.str.21.762, ptr @.str.269], [4 x ptr] [ptr @Anything, ptr @.str.270, ptr @Anything, ptr @.str.271], [4 x ptr] [ptr @Anything, ptr @.str.272, ptr @Anything, ptr @.str.273], [4 x ptr] [ptr @Nothing, ptr @.str.96.837, ptr @Anything, ptr @.str.95.836], [4 x ptr] [ptr @.str.40.781, ptr @.str.96.837, ptr @.str.276, ptr @.str.95.836], [4 x ptr] [ptr @Anything, ptr @.str.277, ptr @Anything, ptr @.str.278], [4 x ptr] [ptr @Anything, ptr @.str.279, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Anything, ptr @.str.280, ptr @Anything, ptr @.str.281], [4 x ptr] [ptr @.str.21.189, ptr @.str.96.837, ptr @.str.282, ptr @.str.42.783], [4 x ptr] [ptr @Anything, ptr @.str.284, ptr @Anything, ptr @.str.285], [4 x ptr] [ptr @Anything, ptr @.str.96.837, ptr @Anything, ptr @.str.95.836], [4 x ptr] [ptr @Anything, ptr @.str.72.645, ptr @Anything, ptr @.str.94.835], [4 x ptr] [ptr @Anything, ptr @.str.288, ptr @Anything, ptr @.str.289], [4 x ptr] [ptr @Anything, ptr @.str.89.830, ptr @Anything, ptr @.str.94.835], [4 x ptr] [ptr @Anything, ptr @.str.106.847, ptr @Anything, ptr @.str.257], [4 x ptr] [ptr @Anything, ptr @.str.292, ptr @Anything, ptr @.str.293], [4 x ptr] [ptr @Anything, ptr @.str.294, ptr @Anything, ptr @.str.281], [4 x ptr] [ptr @Anything, ptr @.str.77.818, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @Anything, ptr @.str.76.817, ptr @.str.71.812, ptr @.str.98.839], [4 x ptr] [ptr @Anything, ptr @.str.76.817, ptr @Nothing, ptr @.str.98.839], [4 x ptr] [ptr @Anything, ptr @.str.99.840, ptr @Anything, ptr @.str.98.839], [4 x ptr] [ptr @Nothing, ptr @.str.297, ptr @Anything, ptr @.str.298], [4 x ptr] [ptr @Nothing, ptr @.str.299, ptr @Anything, ptr @.str.300], [4 x ptr] [ptr @Anything, ptr @.str.301, ptr @Anything, ptr @.str.302], [4 x ptr] [ptr @.str.85.207, ptr @.str.76.817, ptr @.str.31.772, ptr @.str.75.816], [4 x ptr] [ptr @Anything, ptr @.str.76.817, ptr @.str.32.773, ptr @.str.76.817], [4 x ptr] [ptr @.str.304, ptr @.str.76.817, ptr @.str.31.772, ptr @.str.42.783], [4 x ptr] [ptr @.str.69.810, ptr @.str.305, ptr @Anything, ptr @.str.306], [4 x ptr] [ptr @.str.31.195, ptr @.str.305, ptr @Nothing, ptr @.str.306], [4 x ptr] [ptr @.str.307, ptr @.str.305, ptr @Anything, ptr @.str.306], [4 x ptr] [ptr @Anything, ptr @.str.76.817, ptr @.str.308, ptr @.str.98.839], [4 x ptr] [ptr @Anything, ptr @.str.250, ptr @.str.21.189, ptr @.str.309], [4 x ptr] [ptr @Anything, ptr @.str.310, ptr @Anything, ptr @.str.311], [4 x ptr] [ptr @Anything, ptr @.str.312, ptr @Nothing, ptr @.str.313], [4 x ptr] [ptr @.str.221, ptr @.str.314, ptr @Anything, ptr @.str.315], [4 x ptr] [ptr @Anything, ptr @.str.76.817, ptr @Anything, ptr @.str.75.816], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@P_rules = internal global [6 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.316, ptr @Anything, ptr @.str.33.774], [4 x ptr] [ptr @Anything, ptr @.str.317, ptr @Anything, ptr @.str.318], [4 x ptr] [ptr @Anything, ptr @.str.319, ptr @Anything, ptr @.str.320], [4 x ptr] [ptr @Anything, ptr @.str.321, ptr @Nothing, ptr @.str.322], [4 x ptr] [ptr @Anything, ptr @.str.5.746, ptr @Anything, ptr @.str.4.745], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Q_rules = internal global [4 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.325, ptr @Anything, ptr @.str.326], [4 x ptr] [ptr @Anything, ptr @.str.327, ptr @Anything, ptr @.str.328], [4 x ptr] [ptr @Anything, ptr @.str.3.744, ptr @Anything, ptr @.str.12.753], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@R_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.330, ptr @.str.63.186, ptr @.str.331], [4 x ptr] [ptr @Anything, ptr @.str.59.800, ptr @Anything, ptr @.str.58.799], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@S_rules = internal global [24 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.38.779, ptr @Anything, ptr @.str.37.778], [4 x ptr] [ptr @.str.8.184, ptr @.str.333, ptr @Anything, ptr @.str.334], [4 x ptr] [ptr @Anything, ptr @.str.335, ptr @Anything, ptr @.str.336], [4 x ptr] [ptr @.str.8.184, ptr @.str.337, ptr @.str.8.184, ptr @.str.338], [4 x ptr] [ptr @Anything, ptr @.str.337, ptr @.str.8.184, ptr @.str.339], [4 x ptr] [ptr @.str.8.184, ptr @.str.159, ptr @.str.8.184, ptr @.str.340], [4 x ptr] [ptr @.str.8.184, ptr @.str.341, ptr @.str.8.184, ptr @.str.342], [4 x ptr] [ptr @.str.8.184, ptr @.str.343, ptr @Nothing, ptr @.str.344], [4 x ptr] [ptr @.str.8.184, ptr @.str.37.778, ptr @.str.8.184, ptr @.str.46.787], [4 x ptr] [ptr @Anything, ptr @.str.345, ptr @Anything, ptr @.str.346], [4 x ptr] [ptr @.str.21.189, ptr @.str.333, ptr @Anything, ptr @.str.347], [4 x ptr] [ptr @Anything, ptr @.str.37.778, ptr @.str.37.778, ptr @.str.8.467], [4 x ptr] [ptr @.str.4.200, ptr @.str.37.778, ptr @Nothing, ptr @.str.46.787], [4 x ptr] [ptr @.str.7.201, ptr @.str.37.778, ptr @Nothing, ptr @.str.46.787], [4 x ptr] [ptr @.str.348, ptr @.str.37.778, ptr @Nothing, ptr @.str.46.787], [4 x ptr] [ptr @.str.349, ptr @.str.37.778, ptr @Nothing, ptr @.str.36.777], [4 x ptr] [ptr @.str.74.815, ptr @.str.37.778, ptr @Nothing, ptr @.str.36.777], [4 x ptr] [ptr @.str.351, ptr @.str.37.778, ptr @Nothing, ptr @.str.46.787], [4 x ptr] [ptr @Nothing, ptr @.str.352, ptr @Anything, ptr @.str.353], [4 x ptr] [ptr @Anything, ptr @.str.37.778, ptr @.str.354, ptr @.str.8.467], [4 x ptr] [ptr @.str.8.184, ptr @.str.355, ptr @Anything, ptr @.str.356], [4 x ptr] [ptr @.str.8.184, ptr @.str.357, ptr @.str.9.203, ptr @.str.358], [4 x ptr] [ptr @Anything, ptr @.str.37.778, ptr @Anything, ptr @.str.36.777], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@T_rules = internal global [27 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.359, ptr @Nothing, ptr @.str.360], [4 x ptr] [ptr @Anything, ptr @.str.361, ptr @Nothing, ptr @.str.362], [4 x ptr] [ptr @Anything, ptr @.str.363, ptr @Nothing, ptr @.str.364], [4 x ptr] [ptr @Nothing, ptr @.str.365, ptr @Nothing, ptr @.str.366], [4 x ptr] [ptr @Nothing, ptr @.str.367, ptr @Anything, ptr @.str.368], [4 x ptr] [ptr @Nothing, ptr @.str.369, ptr @Anything, ptr @.str.370], [4 x ptr] [ptr @Anything, ptr @.str.371, ptr @Anything, ptr @.str.372], [4 x ptr] [ptr @Anything, ptr @.str.373, ptr @Anything, ptr @.str.370], [4 x ptr] [ptr @Nothing, ptr @.str.374, ptr @Nothing, ptr @.str.375], [4 x ptr] [ptr @Nothing, ptr @.str.376, ptr @Nothing, ptr @.str.377], [4 x ptr] [ptr @Anything, ptr @.str.378, ptr @Nothing, ptr @.str.379], [4 x ptr] [ptr @Nothing, ptr @.str.380, ptr @Anything, ptr @.str.381], [4 x ptr] [ptr @Anything, ptr @.str.382, ptr @Anything, ptr @.str.383], [4 x ptr] [ptr @Anything, ptr @.str.384, ptr @Anything, ptr @.str.385], [4 x ptr] [ptr @Anything, ptr @.str.386, ptr @Nothing, ptr @.str.387], [4 x ptr] [ptr @Nothing, ptr @.str.388, ptr @Anything, ptr @.str.389], [4 x ptr] [ptr @Anything, ptr @.str.35.776, ptr @Anything, ptr @.str.9.750], [4 x ptr] [ptr @.str.31.195, ptr @.str.390, ptr @Nothing, ptr @.str.391], [4 x ptr] [ptr @.str.37.778, ptr @.str.392, ptr @.str.393, ptr @.str.50.791], [4 x ptr] [ptr @Anything, ptr @.str.392, ptr @.str.76.817, ptr @.str.37.778], [4 x ptr] [ptr @Anything, ptr @.str.392, ptr @.str.79.820, ptr @.str.37.778], [4 x ptr] [ptr @Anything, ptr @.str.394, ptr @Anything, ptr @.str.347], [4 x ptr] [ptr @Anything, ptr @.str.395, ptr @.str.8.184, ptr @.str.396], [4 x ptr] [ptr @Anything, ptr @.str.397, ptr @.str.79.820, ptr @.str.398], [4 x ptr] [ptr @Nothing, ptr @.str.399, ptr @Anything, ptr @.str.362], [4 x ptr] [ptr @Anything, ptr @.str.9.750, ptr @Anything, ptr @.str.8.749], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@U_rules = internal global [36 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.400, ptr @.str.69.810, ptr @.str.401], [4 x ptr] [ptr @Nothing, ptr @.str.400, ptr @Anything, ptr @.str.402], [4 x ptr] [ptr @Nothing, ptr @.str.403, ptr @Anything, ptr @.str.404], [4 x ptr] [ptr @.str.9.750, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.37.778, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.59.800, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.21.762, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.57.798, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.47.788, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.31.772, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.54.795, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.35.776, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.51.792, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @.str.38.779, ptr @.str.405, ptr @.str.8.184, ptr @.str.406], [4 x ptr] [ptr @Anything, ptr @.str.405, ptr @.str.8.184, ptr @.str.407], [4 x ptr] [ptr @Anything, ptr @.str.405, ptr @Anything, ptr @.str.82.823], [4 x ptr] [ptr @Anything, ptr @.str.74.815, ptr @.str.408, ptr @.str.42.783], [4 x ptr] [ptr @Anything, ptr @.str.74.815, ptr @.str.409, ptr @.str.42.783], [4 x ptr] [ptr @Anything, ptr @.str.410, ptr @Anything, ptr @.str.92.833], [4 x ptr] [ptr @.str.411, ptr @.str.74.815, ptr @.str.8.184, ptr @.str.8.467], [4 x ptr] [ptr @.str.25.766, ptr @.str.74.815, ptr @.str.66.807, ptr @.str.8.467], [4 x ptr] [ptr @.str.25.766, ptr @.str.74.815, ptr @.str.8.184, ptr @.str.62.803], [4 x ptr] [ptr @.str.393, ptr @.str.74.815, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @.str.9.750, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.37.778, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.59.800, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.21.762, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.57.798, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.47.788, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.31.772, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.54.795, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.35.776, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.51.792, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @.str.38.779, ptr @.str.74.815, ptr @Anything, ptr @.str.86.827], [4 x ptr] [ptr @Anything, ptr @.str.74.815, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@V_rules = internal global [3 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.413, ptr @Anything, ptr @.str.414], [4 x ptr] [ptr @Anything, ptr @.str.42.783, ptr @Anything, ptr @.str.10.866], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@W_rules = internal global [13 x [4 x ptr]] [[4 x ptr] [ptr @Nothing, ptr @.str.416, ptr @Anything, ptr @.str.417], [4 x ptr] [ptr @Anything, ptr @.str.24.187, ptr @.str.37.778, ptr @.str.418], [4 x ptr] [ptr @Anything, ptr @.str.24.187, ptr @.str.9.750, ptr @.str.418], [4 x ptr] [ptr @Anything, ptr @.str.419, ptr @Anything, ptr @.str.420], [4 x ptr] [ptr @Anything, ptr @.str.421, ptr @Anything, ptr @.str.422], [4 x ptr] [ptr @Anything, ptr @.str.423, ptr @Anything, ptr @.str.424], [4 x ptr] [ptr @Anything, ptr @.str.425, ptr @Anything, ptr @.str.426], [4 x ptr] [ptr @Anything, ptr @.str.427, ptr @Anything, ptr @.str.428], [4 x ptr] [ptr @Anything, ptr @.str.429, ptr @Anything, ptr @.str.430], [4 x ptr] [ptr @Anything, ptr @.str.431, ptr @.str.21.189, ptr @.str.417], [4 x ptr] [ptr @Anything, ptr @.str.432, ptr @Anything, ptr @.str.58.799], [4 x ptr] [ptr @Anything, ptr @.str.63.804, ptr @Anything, ptr @.str.62.803], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@X_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.65.806, ptr @Anything, ptr @.str.434], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Y_rules = internal global [12 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.435, ptr @Anything, ptr @.str.436], [4 x ptr] [ptr @Nothing, ptr @.str.437, ptr @Anything, ptr @.str.133], [4 x ptr] [ptr @Nothing, ptr @.str.438, ptr @Anything, ptr @.str.439], [4 x ptr] [ptr @Nothing, ptr @.str.68.809, ptr @Anything, ptr @.str.67.808], [4 x ptr] [ptr @.str.221, ptr @.str.68.809, ptr @Nothing, ptr @.str.80.821], [4 x ptr] [ptr @.str.221, ptr @.str.68.809, ptr @.str.69.810, ptr @.str.80.821], [4 x ptr] [ptr @.str.26.183, ptr @.str.68.809, ptr @Nothing, ptr @.str.92.833], [4 x ptr] [ptr @.str.26.183, ptr @.str.68.809, ptr @.str.8.184, ptr @.str.92.833], [4 x ptr] [ptr @.str.26.183, ptr @.str.68.809, ptr @.str.41.185, ptr @.str.69.810], [4 x ptr] [ptr @.str.26.183, ptr @.str.68.809, ptr @.str.63.186, ptr @.str.92.833], [4 x ptr] [ptr @Anything, ptr @.str.68.809, ptr @Anything, ptr @.str.69.810], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Z_rules = internal global [2 x [4 x ptr]] [[4 x ptr] [ptr @Anything, ptr @.str.47.788, ptr @Anything, ptr @.str.46.787], [4 x ptr] [ptr @Anything, ptr null, ptr @Anything, ptr @Silent]], align 16
@Anything = internal global [1 x i8] zeroinitializer, align 1
@.str.2.295 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.4.200 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.5.296 = private unnamed_addr constant [3 x i8] c"'S\00", align 1
@.str.7.201 = private unnamed_addr constant [5 x i8] c"#:.E\00", align 1
@.str.8.184 = private unnamed_addr constant [2 x i8] c"#\00", align 1
@.str.9.203 = private unnamed_addr constant [2 x i8] c"'\00", align 1
@.str.10.297 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.11.298 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.12.299 = private unnamed_addr constant [2 x i8] c"!\00", align 1
@Silent = internal global [1 x i8] zeroinitializer, align 1
@Nothing = internal global [2 x i8] c" \00", align 1
@.str.15.259 = private unnamed_addr constant [4 x i8] c"ARE\00", align 1
@.str.16.260 = private unnamed_addr constant [3 x i8] c"0r\00", align 1
@.str.19.262 = private unnamed_addr constant [3 x i8] c"@r\00", align 1
@.str.20.220 = private unnamed_addr constant [3 x i8] c"er\00", align 1
@.str.21.189 = private unnamed_addr constant [2 x i8] c"^\00", align 1
@.str.22.263 = private unnamed_addr constant [3 x i8] c"AS\00", align 1
@.str.23.264 = private unnamed_addr constant [4 x i8] c"eIs\00", align 1
@.str.24.187 = private unnamed_addr constant [3 x i8] c"WA\00", align 1
@.str.26.183 = private unnamed_addr constant [3 x i8] c" :\00", align 1
@.str.27.266 = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@.str.28.267 = private unnamed_addr constant [4 x i8] c"eni\00", align 1
@.str.29.268 = private unnamed_addr constant [4 x i8] c"^+#\00", align 1
@.str.31.195 = private unnamed_addr constant [3 x i8] c"#:\00", align 1
@.str.32.269 = private unnamed_addr constant [5 x i8] c"ALLY\00", align 1
@.str.33.270 = private unnamed_addr constant [4 x i8] c"@li\00", align 1
@.str.34.271 = private unnamed_addr constant [3 x i8] c"AL\00", align 1
@.str.35.209 = private unnamed_addr constant [3 x i8] c"@l\00", align 1
@.str.36.272 = private unnamed_addr constant [6 x i8] c"AGAIN\00", align 1
@.str.37.273 = private unnamed_addr constant [5 x i8] c"@gen\00", align 1
@.str.38.274 = private unnamed_addr constant [3 x i8] c"AG\00", align 1
@.str.40.275 = private unnamed_addr constant [4 x i8] c"IdZ\00", align 1
@.str.41.185 = private unnamed_addr constant [5 x i8] c"^+:#\00", align 1
@.str.43.277 = private unnamed_addr constant [4 x i8] c"^+ \00", align 1
@.str.44.205 = private unnamed_addr constant [3 x i8] c"^%\00", align 1
@.str.45.278 = private unnamed_addr constant [4 x i8] c"ARR\00", align 1
@.str.46.279 = private unnamed_addr constant [3 x i8] c"&r\00", align 1
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
@.str.78.238 = private unnamed_addr constant [3 x i8] c"^E\00", align 1
@.str.80.239 = private unnamed_addr constant [3 x i8] c" S\00", align 1
@.str.82.241 = private unnamed_addr constant [4 x i8] c"saI\00", align 1
@.str.84.242 = private unnamed_addr constant [3 x i8] c"EN\00", align 1
@.str.85.207 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.87.243 = private unnamed_addr constant [3 x i8] c"CK\00", align 1
@.str.88.244 = private unnamed_addr constant [4 x i8] c"COM\00", align 1
@.str.90.245 = private unnamed_addr constant [4 x i8] c"kVm\00", align 1
@.str.91.222 = private unnamed_addr constant [4 x i8] c"DED\00", align 1
@.str.92.223 = private unnamed_addr constant [4 x i8] c"dId\00", align 1
@.str.93.224 = private unnamed_addr constant [3 x i8] c".E\00", align 1
@.str.96.225 = private unnamed_addr constant [5 x i8] c"#:^E\00", align 1
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
@.str.112.212 = private unnamed_addr constant [3 x i8] c"ED\00", align 1
@.str.113.214 = private unnamed_addr constant [3 x i8] c"D \00", align 1
@.str.114.215 = private unnamed_addr constant [3 x i8] c"EV\00", align 1
@.str.116.217 = private unnamed_addr constant [3 x i8] c"ev\00", align 1
@.str.117.218 = private unnamed_addr constant [4 x i8] c"ERI\00", align 1
@.str.118.219 = private unnamed_addr constant [4 x i8] c"iri\00", align 1
@.str.119 = private unnamed_addr constant [4 x i8] c"erI\00", align 1
@.str.120 = private unnamed_addr constant [5 x i8] c"EVEN\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"iven\00", align 1
@.str.124 = private unnamed_addr constant [3 x i8] c"EW\00", align 1
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
@.str.152 = private unnamed_addr constant [5 x i8] c"EARN\00", align 1
@.str.153 = private unnamed_addr constant [3 x i8] c"3n\00", align 1
@.str.154 = private unnamed_addr constant [4 x i8] c"EAR\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"EAD\00", align 1
@.str.156 = private unnamed_addr constant [3 x i8] c"ed\00", align 1
@.str.158 = private unnamed_addr constant [3 x i8] c"i@\00", align 1
@.str.159 = private unnamed_addr constant [3 x i8] c"SU\00", align 1
@.str.161 = private unnamed_addr constant [5 x i8] c"EIGH\00", align 1
@.str.162 = private unnamed_addr constant [3 x i8] c"EI\00", align 1
@.str.163 = private unnamed_addr constant [4 x i8] c"EYE\00", align 1
@.str.166 = private unnamed_addr constant [3 x i8] c"EU\00", align 1
@.str.167 = private unnamed_addr constant [4 x i8] c"FUL\00", align 1
@.str.170 = private unnamed_addr constant [4 x i8] c"GIV\00", align 1
@.str.171 = private unnamed_addr constant [4 x i8] c"gIv\00", align 1
@.str.173 = private unnamed_addr constant [3 x i8] c"I^\00", align 1
@.str.175 = private unnamed_addr constant [3 x i8] c"GE\00", align 1
@.str.176 = private unnamed_addr constant [3 x i8] c"ge\00", align 1
@.str.177 = private unnamed_addr constant [5 x i8] c"GGES\00", align 1
@.str.178 = private unnamed_addr constant [6 x i8] c"gdZes\00", align 1
@.str.179 = private unnamed_addr constant [3 x i8] c"GG\00", align 1
@.str.180.210 = private unnamed_addr constant [4 x i8] c" B#\00", align 1
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
@.str.195 = private unnamed_addr constant [5 x i8] c"IAIN\00", align 1
@.str.196 = private unnamed_addr constant [4 x i8] c"I@n\00", align 1
@.str.197 = private unnamed_addr constant [4 x i8] c"ING\00", align 1
@.str.198 = private unnamed_addr constant [3 x i8] c"IN\00", align 1
@.str.199 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.201 = private unnamed_addr constant [4 x i8] c"aIn\00", align 1
@.str.202 = private unnamed_addr constant [4 x i8] c"IER\00", align 1
@.str.203 = private unnamed_addr constant [3 x i8] c"i3\00", align 1
@.str.204 = private unnamed_addr constant [4 x i8] c"#:R\00", align 1
@.str.205 = private unnamed_addr constant [4 x i8] c"IED\00", align 1
@.str.206 = private unnamed_addr constant [3 x i8] c"id\00", align 1
@.str.207 = private unnamed_addr constant [4 x i8] c"aId\00", align 1
@.str.208 = private unnamed_addr constant [4 x i8] c"IEN\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"ien\00", align 1
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
@.str.229 = private unnamed_addr constant [3 x i8] c"LO\00", align 1
@.str.230 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@.str.231 = private unnamed_addr constant [4 x i8] c"l@U\00", align 1
@.str.232 = private unnamed_addr constant [5 x i8] c"LEAD\00", align 1
@.str.233 = private unnamed_addr constant [4 x i8] c"lid\00", align 1
@.str.235 = private unnamed_addr constant [4 x i8] c"MOV\00", align 1
@.str.236 = private unnamed_addr constant [4 x i8] c"muv\00", align 1
@.str.237 = private unnamed_addr constant [3 x i8] c"MM\00", align 1
@.str.241 = private unnamed_addr constant [4 x i8] c"ndZ\00", align 1
@.str.242 = private unnamed_addr constant [3 x i8] c"Ng\00", align 1
@.str.243 = private unnamed_addr constant [4 x i8] c"NGL\00", align 1
@.str.244 = private unnamed_addr constant [5 x i8] c"Ng@l\00", align 1
@.str.245 = private unnamed_addr constant [3 x i8] c"NK\00", align 1
@.str.246 = private unnamed_addr constant [3 x i8] c"Nk\00", align 1
@.str.247 = private unnamed_addr constant [4 x i8] c"NOW\00", align 1
@.str.248 = private unnamed_addr constant [4 x i8] c"naU\00", align 1
@.str.250 = private unnamed_addr constant [3 x i8] c"OF\00", align 1
@.str.251 = private unnamed_addr constant [3 x i8] c"@v\00", align 1
@.str.252 = private unnamed_addr constant [7 x i8] c"OROUGH\00", align 1
@.str.253 = private unnamed_addr constant [4 x i8] c"3@U\00", align 1
@.str.255 = private unnamed_addr constant [4 x i8] c"ORS\00", align 1
@.str.256 = private unnamed_addr constant [3 x i8] c"3z\00", align 1
@.str.257 = private unnamed_addr constant [3 x i8] c"Or\00", align 1
@.str.258 = private unnamed_addr constant [4 x i8] c"ONE\00", align 1
@.str.259 = private unnamed_addr constant [4 x i8] c"wVn\00", align 1
@.str.262 = private unnamed_addr constant [5 x i8] c"OVER\00", align 1
@.str.263 = private unnamed_addr constant [5 x i8] c"@Uv3\00", align 1
@.str.265 = private unnamed_addr constant [3 x i8] c"Vv\00", align 1
@.str.266 = private unnamed_addr constant [4 x i8] c"^EN\00", align 1
@.str.267 = private unnamed_addr constant [4 x i8] c"^I#\00", align 1
@.str.268 = private unnamed_addr constant [3 x i8] c"OL\00", align 1
@.str.269 = private unnamed_addr constant [4 x i8] c"@Ul\00", align 1
@.str.270 = private unnamed_addr constant [6 x i8] c"OUGHT\00", align 1
@.str.271 = private unnamed_addr constant [3 x i8] c"Ot\00", align 1
@.str.272 = private unnamed_addr constant [5 x i8] c"OUGH\00", align 1
@.str.273 = private unnamed_addr constant [3 x i8] c"Vf\00", align 1
@.str.276 = private unnamed_addr constant [3 x i8] c"S#\00", align 1
@.str.277 = private unnamed_addr constant [4 x i8] c"OUS\00", align 1
@.str.278 = private unnamed_addr constant [3 x i8] c"@s\00", align 1
@.str.279 = private unnamed_addr constant [4 x i8] c"OUR\00", align 1
@.str.280 = private unnamed_addr constant [5 x i8] c"OULD\00", align 1
@.str.281 = private unnamed_addr constant [3 x i8] c"Ud\00", align 1
@.str.282 = private unnamed_addr constant [3 x i8] c"^L\00", align 1
@.str.284 = private unnamed_addr constant [4 x i8] c"OUP\00", align 1
@.str.285 = private unnamed_addr constant [3 x i8] c"up\00", align 1
@.str.288 = private unnamed_addr constant [5 x i8] c"OING\00", align 1
@.str.289 = private unnamed_addr constant [5 x i8] c"@UIN\00", align 1
@.str.292 = private unnamed_addr constant [4 x i8] c"OOK\00", align 1
@.str.293 = private unnamed_addr constant [3 x i8] c"Uk\00", align 1
@.str.294 = private unnamed_addr constant [4 x i8] c"OOD\00", align 1
@.str.297 = private unnamed_addr constant [5 x i8] c"ONLY\00", align 1
@.str.298 = private unnamed_addr constant [6 x i8] c"@Unli\00", align 1
@.str.299 = private unnamed_addr constant [5 x i8] c"ONCE\00", align 1
@.str.300 = private unnamed_addr constant [5 x i8] c"wVns\00", align 1
@.str.301 = private unnamed_addr constant [5 x i8] c"ON'T\00", align 1
@.str.302 = private unnamed_addr constant [5 x i8] c"@Unt\00", align 1
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
@.str.325 = private unnamed_addr constant [5 x i8] c"QUAR\00", align 1
@.str.326 = private unnamed_addr constant [5 x i8] c"kwOr\00", align 1
@.str.327 = private unnamed_addr constant [3 x i8] c"QU\00", align 1
@.str.328 = private unnamed_addr constant [3 x i8] c"kw\00", align 1
@.str.330 = private unnamed_addr constant [3 x i8] c"RE\00", align 1
@.str.331 = private unnamed_addr constant [3 x i8] c"ri\00", align 1
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
@.str.413 = private unnamed_addr constant [5 x i8] c"VIEW\00", align 1
@.str.414 = private unnamed_addr constant [4 x i8] c"vju\00", align 1
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
@.str.434 = private unnamed_addr constant [3 x i8] c"ks\00", align 1
@.str.435 = private unnamed_addr constant [6 x i8] c"YOUNG\00", align 1
@.str.436 = private unnamed_addr constant [4 x i8] c"jVN\00", align 1
@.str.437 = private unnamed_addr constant [4 x i8] c"YOU\00", align 1
@.str.438 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.439 = private unnamed_addr constant [4 x i8] c"jes\00", align 1
@.str.442 = private unnamed_addr constant [63 x i8] c"$Id: getarg.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@getarg_id = dso_local local_unnamed_addr global ptr @.str.442, align 8
@.str.1.447 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.2.448 = private unnamed_addr constant [5 x i8] c"%s:\0A\00", align 1
@.str.3.449 = private unnamed_addr constant [12 x i8] c" -%s <%s> [\00", align 1
@.str.4.450 = private unnamed_addr constant [6 x i8] c"]\09%s\0A\00", align 1
@.str.5.452 = private unnamed_addr constant [23 x i8] c" -%s <string> [%s]\09%s\0A\00", align 1
@.str.7.455 = private unnamed_addr constant [18 x i8] c" [+|-]%s [%s]\09%s\0A\00", align 1
@.str.8.453 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.9.454 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.10.456 = private unnamed_addr constant [27 x i8] c"%s : %s invalid after -%s\0A\00", align 1
@.str.11.457 = private unnamed_addr constant [28 x i8] c"%s : no argument after -%s\0A\00", align 1
@.str.459 = private unnamed_addr constant [63 x i8] c"$Id: holmes.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@holmes_id = dso_local local_unnamed_addr global ptr @.str.459, align 8
@frac = dso_local global double 1.000000e+00, align 8
@def_pars = dso_local global %struct.klatt_frame_t { i64 1330, i64 60, i64 500, i64 60, i64 1500, i64 90, i64 2800, i64 150, i64 3250, i64 200, i64 3700, i64 200, i64 4990, i64 500, i64 270, i64 100, i64 270, i64 100, i64 0, i64 30, i64 0, i64 10, i64 0, i64 0, i64 0, i64 80, i64 0, i64 200, i64 0, i64 350, i64 0, i64 500, i64 0, i64 600, i64 0, i64 800, i64 0, i64 0, i64 0, i64 62 }, align 8
@par_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.1.460 = private unnamed_addr constant [11 x i8] c"# %s < %s\0A\00", align 1
@.str.2.461 = private unnamed_addr constant [12 x i8] c"# %s >= %s\0A\00", align 1
@.str.3.462 = private unnamed_addr constant [6 x i8] c"# %s\0A\00", align 1
@.str.4.463 = private unnamed_addr constant [6 x i8] c"%c%6s\00", align 1
@Ep_name = dso_local local_unnamed_addr global [19 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102.179, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118], align 16
@.str.6.465 = private unnamed_addr constant [8 x i8] c"%c%6.4g\00", align 1
@.str.7.466 = private unnamed_addr constant [6 x i8] c"%c%6d\00", align 1
@.str.8.467 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.10.469 = private unnamed_addr constant [7 x i8] c" %6.4g\00", align 1
@jsru_file = dso_local local_unnamed_addr global ptr null, align 8
@.str.11.470 = private unnamed_addr constant [7 x i8] c"Holmes\00", align 1
@.str.13.472 = private unnamed_addr constant [24 x i8] c"Parameter file for plot\00", align 1
@.str.15.474 = private unnamed_addr constant [32 x i8] c"Data for alternate synth (JSRU)\00", align 1
@.str.18.477 = private unnamed_addr constant [24 x i8] c"Speed (1.0 is 'normal')\00", align 1
@.str.20.479 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.21.480 = private unnamed_addr constant [28 x i8] c"Parameter filter 'fraction'\00", align 1
@_u2l = dso_local local_unnamed_addr global [256 x i16] [i16 -32256, i16 -31228, i16 -30200, i16 -29172, i16 -28143, i16 -27115, i16 -26087, i16 -25059, i16 -24031, i16 -23002, i16 -21974, i16 -20946, i16 -19918, i16 -18889, i16 -17861, i16 -16833, i16 -16062, i16 -15548, i16 -15033, i16 -14519, i16 -14005, i16 -13491, i16 -12977, i16 -12463, i16 -11949, i16 -11435, i16 -10920, i16 -10406, i16 -9892, i16 -9378, i16 -8864, i16 -8350, i16 -7964, i16 -7707, i16 -7450, i16 -7193, i16 -6936, i16 -6679, i16 -6422, i16 -6165, i16 -5908, i16 -5651, i16 -5394, i16 -5137, i16 -4880, i16 -4623, i16 -4365, i16 -4108, i16 -3916, i16 -3787, i16 -3659, i16 -3530, i16 -3402, i16 -3273, i16 -3144, i16 -3016, i16 -2887, i16 -2759, i16 -2630, i16 -2502, i16 -2373, i16 -2245, i16 -2116, i16 -1988, i16 -1891, i16 -1827, i16 -1763, i16 -1698, i16 -1634, i16 -1570, i16 -1506, i16 -1441, i16 -1377, i16 -1313, i16 -1249, i16 -1184, i16 -1120, i16 -1056, i16 -992, i16 -927, i16 -879, i16 -847, i16 -815, i16 -783, i16 -751, i16 -718, i16 -686, i16 -654, i16 -622, i16 -590, i16 -558, i16 -526, i16 -494, i16 -461, i16 -429, i16 -397, i16 -373, i16 -357, i16 -341, i16 -325, i16 -309, i16 -293, i16 -277, i16 -261, i16 -245, i16 -228, i16 -212, i16 -196, i16 -180, i16 -164, i16 -148, i16 -132, i16 -120, i16 -112, i16 -104, i16 -96, i16 -88, i16 -80, i16 -72, i16 -64, i16 -56, i16 -48, i16 -40, i16 -32, i16 -24, i16 -16, i16 -8, i16 0, i16 32256, i16 31228, i16 30200, i16 29172, i16 28143, i16 27115, i16 26087, i16 25059, i16 24031, i16 23002, i16 21974, i16 20946, i16 19918, i16 18889, i16 17861, i16 16833, i16 16062, i16 15548, i16 15033, i16 14519, i16 14005, i16 13491, i16 12977, i16 12463, i16 11949, i16 11435, i16 10920, i16 10406, i16 9892, i16 9378, i16 8864, i16 8350, i16 7964, i16 7707, i16 7450, i16 7193, i16 6936, i16 6679, i16 6422, i16 6165, i16 5908, i16 5651, i16 5394, i16 5137, i16 4880, i16 4623, i16 4365, i16 4108, i16 3916, i16 3787, i16 3659, i16 3530, i16 3402, i16 3273, i16 3144, i16 3016, i16 2887, i16 2759, i16 2630, i16 2502, i16 2373, i16 2245, i16 2116, i16 1988, i16 1891, i16 1827, i16 1763, i16 1698, i16 1634, i16 1570, i16 1506, i16 1441, i16 1377, i16 1313, i16 1249, i16 1184, i16 1120, i16 1056, i16 992, i16 927, i16 879, i16 847, i16 815, i16 783, i16 751, i16 718, i16 686, i16 654, i16 622, i16 590, i16 558, i16 526, i16 494, i16 461, i16 429, i16 397, i16 373, i16 357, i16 341, i16 325, i16 309, i16 293, i16 277, i16 261, i16 245, i16 228, i16 212, i16 196, i16 180, i16 164, i16 148, i16 132, i16 120, i16 112, i16 104, i16 96, i16 88, i16 80, i16 72, i16 64, i16 56, i16 48, i16 40, i16 32, i16 24, i16 16, i16 8, i16 0], align 16
@_l2u_ = internal global [8192 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\04\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\05\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0A\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0B\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\10\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\11\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\12\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\13\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\14\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\15\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\16\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\17\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\18\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\19\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1A\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1B\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1C\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1D\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1E\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F\1F                                 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22\22################################$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&'''''''''''''''''''''''''''''''''(((((((((((((((((((((((((((((((())))))))))))))))))))))))))))))))********************************++++++++++++++++++++++++++++++++,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,--------------------------------................................/////////////////////////////////0000000000000000111111111111111122222222222222223333333333333333444444444444444455555555555555556666666666666666777777777777777788888888888888889999999999999999::::::::::::::::;;;;;;;;;;;;;;;;<<<<<<<<<<<<<<<<=================>>>>>>>>>>>>>>>>????????????????@@@@@@@@AAAAAAAABBBBBBBBCCCCCCCCDDDDDDDDEEEEEEEEFFFFFFFFGGGGGGGGHHHHHHHHIIIIIIIIJJJJJJJJKKKKKKKKLLLLLLLLMMMMMMMMNNNNNNNNOOOOOOOOPPPPQQQQRRRRSSSSTTTTUUUUVVVVWWWWXXXXYYYYZZZZ[[[[\\\\\\\\]]]]^^^^____``aabbccddeeffgghhhiijjkkllmmnnoopqrstuvwxyz{|}~\FF\FE\FD\FC\FB\FA\F9\F8\F7\F6\F5\F4\F3\F2\F1\F0\EF\EF\EE\EE\ED\ED\EC\EC\EB\EB\EA\EA\E9\E9\E8\E8\E7\E7\E6\E6\E5\E5\E4\E4\E3\E3\E2\E2\E1\E1\E0\E0\DF\DF\DF\DF\DE\DE\DE\DE\DD\DD\DD\DD\DC\DC\DC\DC\DB\DB\DB\DB\DA\DA\DA\DA\D9\D9\D9\D9\D8\D8\D8\D8\D7\D7\D7\D7\D6\D6\D6\D6\D5\D5\D5\D5\D4\D4\D4\D4\D3\D3\D3\D3\D2\D2\D2\D2\D1\D1\D1\D1\D0\D0\D0\D0\CF\CF\CF\CF\CF\CF\CF\CF\CE\CE\CE\CE\CE\CE\CE\CE\CD\CD\CD\CD\CD\CD\CD\CD\CC\CC\CC\CC\CC\CC\CC\CC\CB\CB\CB\CB\CB\CB\CB\CB\CA\CA\CA\CA\CA\CA\CA\CA\C9\C9\C9\C9\C9\C9\C9\C9\C8\C8\C8\C8\C8\C8\C8\C8\C7\C7\C7\C7\C7\C7\C7\C7\C6\C6\C6\C6\C6\C6\C6\C6\C5\C5\C5\C5\C5\C5\C5\C5\C4\C4\C4\C4\C4\C4\C4\C4\C3\C3\C3\C3\C3\C3\C3\C3\C3\C2\C2\C2\C2\C2\C2\C2\C2\C1\C1\C1\C1\C1\C1\C1\C1\C0\C0\C0\C0\C0\C0\C0\C0\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BF\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BE\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BD\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BC\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BB\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\BA\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B9\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B8\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B7\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B6\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B5\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B4\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B3\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B2\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B1\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\B0\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AF\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AE\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AD\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AC\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AB\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\AA\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A9\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A8\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A7\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A6\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A5\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A4\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A3\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A2\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A1\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\A0\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9E\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9D\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9C\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9B\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\9A\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\99\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\98\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\97\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\96\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\95\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\94\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\93\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\92\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\91\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\90\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8F\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8E\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8D\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8C\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8B\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\8A\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\89\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\88\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\87\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\86\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\85\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\84\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\83\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\82\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\81\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80\80", align 16
@_l2u = dso_local local_unnamed_addr global ptr getelementptr inbounds nuw (i8, ptr @_l2u_, i64 4096), align 8
@samp_rate = dso_local global i64 8000, align 8
@.str.486 = private unnamed_addr constant [11 x i8] c"/dev/sbdsp\00", align 1
@dev_file = dso_local local_unnamed_addr global ptr @.str.486, align 8
@.str.1.487 = private unnamed_addr constant [6 x i8] c"hplay\00", align 1
@prog = dso_local local_unnamed_addr global ptr @.str.1.487, align 8
@.str.2.488 = private unnamed_addr constant [12 x i8] c"linux Audio\00", align 1
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
@warnsw = internal unnamed_addr global i1 false, align 4
@F0hz10 = internal unnamed_addr global i64 0, align 8
@AVdb = internal unnamed_addr global i64 0, align 8
@Kskew = internal unnamed_addr global i64 0, align 8
@.str.44.569 = private unnamed_addr constant [30 x i8] c"Try to compute amptable[%ld]\0A\00", align 1
@amptable = internal unnamed_addr constant [88 x float] [float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.300000e+01, float 1.400000e+01, float 1.600000e+01, float 1.800000e+01, float 2.000000e+01, float 2.200000e+01, float 2.500000e+01, float 2.800000e+01, float 3.200000e+01, float 3.500000e+01, float 4.000000e+01, float 4.500000e+01, float 5.100000e+01, float 5.700000e+01, float 6.400000e+01, float 7.100000e+01, float 8.000000e+01, float 9.000000e+01, float 1.010000e+02, float 1.140000e+02, float 1.280000e+02, float 1.420000e+02, float 1.590000e+02, float 1.790000e+02, float 2.020000e+02, float 2.270000e+02, float 2.560000e+02, float 2.840000e+02, float 3.180000e+02, float 3.590000e+02, float 4.050000e+02, float 4.550000e+02, float 5.120000e+02, float 5.680000e+02, float 6.380000e+02, float 7.190000e+02, float 8.110000e+02, float 9.110000e+02, float 1.024000e+03, float 1.137000e+03, float 1.276000e+03, float 1.438000e+03, float 1.622000e+03, float 1.823000e+03, float 2.048000e+03, float 2.273000e+03, float 2.552000e+03, float 2.875000e+03, float 3.244000e+03, float 3.645000e+03, float 4.096000e+03, float 4.547000e+03, float 5.104000e+03, float 5.751000e+03, float 6.488000e+03, float 7.291000e+03, float 8.192000e+03, float 9.093000e+03, float 1.020700e+04, float 1.150200e+04, float 1.297600e+04, float 1.458200e+04, float 1.638400e+04, float 1.835000e+04, float 2.064400e+04, float 2.342900e+04, float 2.621400e+04, float 2.949100e+04, float 3.276700e+04], align 16
@impulsive_source.doublet = internal unnamed_addr constant [3 x float] [float 0.000000e+00, float 1.300000e+07, float -1.300000e+07], align 4
@vwave = internal unnamed_addr global float 0.000000e+00, align 4
@natglot_b = internal unnamed_addr global float 0.000000e+00, align 4
@natglot_a = internal unnamed_addr global float 0.000000e+00, align 4
@.str.47.566 = private unnamed_addr constant [24 x i8] c"truncated, nopen = %ld\0A\00", align 1
@natglot = internal unnamed_addr constant [224 x i16] [i16 1200, i16 1142, i16 1088, i16 1038, i16 991, i16 948, i16 907, i16 869, i16 833, i16 799, i16 768, i16 738, i16 710, i16 683, i16 658, i16 634, i16 612, i16 590, i16 570, i16 551, i16 533, i16 515, i16 499, i16 483, i16 468, i16 454, i16 440, i16 427, i16 415, i16 403, i16 391, i16 380, i16 370, i16 360, i16 350, i16 341, i16 332, i16 323, i16 315, i16 307, i16 300, i16 292, i16 285, i16 278, i16 272, i16 265, i16 259, i16 253, i16 247, i16 242, i16 237, i16 231, i16 226, i16 221, i16 217, i16 212, i16 208, i16 204, i16 199, i16 195, i16 192, i16 188, i16 184, i16 180, i16 177, i16 174, i16 170, i16 167, i16 164, i16 161, i16 158, i16 155, i16 153, i16 150, i16 147, i16 145, i16 142, i16 140, i16 137, i16 135, i16 133, i16 131, i16 128, i16 126, i16 124, i16 122, i16 120, i16 119, i16 117, i16 115, i16 113, i16 111, i16 110, i16 108, i16 106, i16 105, i16 103, i16 102, i16 100, i16 99, i16 97, i16 96, i16 95, i16 93, i16 92, i16 91, i16 90, i16 88, i16 87, i16 86, i16 85, i16 84, i16 83, i16 82, i16 80, i16 79, i16 78, i16 77, i16 76, i16 75, i16 75, i16 74, i16 73, i16 72, i16 71, i16 70, i16 69, i16 68, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 61, i16 60, i16 59, i16 59, i16 58, i16 57, i16 57, i16 56, i16 56, i16 55, i16 55, i16 54, i16 54, i16 53, i16 53, i16 52, i16 52, i16 51, i16 51, i16 50, i16 50, i16 49, i16 49, i16 48, i16 48, i16 47, i16 47, i16 46, i16 46, i16 45, i16 45, i16 44, i16 44, i16 43, i16 43, i16 42, i16 42, i16 41, i16 41, i16 41, i16 41, i16 40, i16 40, i16 39, i16 39, i16 38, i16 38, i16 38, i16 38, i16 37, i16 37, i16 36, i16 36, i16 36, i16 36, i16 35, i16 35, i16 35, i16 35, i16 34, i16 34, i16 33, i16 33, i16 33, i16 33, i16 32, i16 32, i16 32, i16 32, i16 31, i16 31, i16 31, i16 31, i16 30, i16 30, i16 30, i16 30, i16 29, i16 29, i16 29, i16 29, i16 28, i16 28, i16 28, i16 28, i16 27, i16 27], align 16
@.str.48.567 = private unnamed_addr constant [58 x i8] c"Kskew duration=%ld > glottal closed period=%ld, truncate\0A\00", align 1
@skew = internal unnamed_addr global i64 0, align 8
@rlp.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.1 = internal unnamed_addr global float 0.000000e+00, align 4
@rlp.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rlp.3 = internal unnamed_addr global float 0.000000e+00, align 4
@rlp.4 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.1 = internal unnamed_addr global float 0.000000e+00, align 4
@rnz.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rnz.3 = internal unnamed_addr global float 0.000000e+00, align 4
@rnz.4 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.1 = internal unnamed_addr global float 0.000000e+00, align 4
@rnpc.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rnpc.3 = internal unnamed_addr global float 0.000000e+00, align 4
@rnpc.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r8c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r8c.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r8c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r7c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r7c.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r7c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r6c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r6c.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r6c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r5c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r5c.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r5c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r4c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r4c.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r4c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r3c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r3c.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r3c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r2c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r2c.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r2c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r1c.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r1c.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r1c.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r1p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r1p.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r1p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r6p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r6p.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r6p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r5p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r5p.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r5p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r4p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r4p.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r4p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r3p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r3p.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r3p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.0 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.1 = internal unnamed_addr global float 0.000000e+00, align 4
@r2p.2 = internal unnamed_addr global float 0.000000e+00, align 8
@r2p.3 = internal unnamed_addr global float 0.000000e+00, align 4
@r2p.4 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.1 = internal unnamed_addr global float 0.000000e+00, align 4
@rout.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rout.3 = internal unnamed_addr global float 0.000000e+00, align 4
@rout.4 = internal unnamed_addr global float 0.000000e+00, align 8
@.str.85.544 = private unnamed_addr constant [17 x i8] c"\0A* * * WARNING: \00", align 1
@.str.86.545 = private unnamed_addr constant [59 x i8] c" Signal at output of synthesizer (+%3.1f dB) exceeds 0 dB\0A\00", align 1
@.str.87.570 = private unnamed_addr constant [20 x i8] c"parallel nasal pole\00", align 1
@rnpp = internal unnamed_addr global { ptr, float, float, float, float, float, [4 x i8] } { ptr @.str.87.570, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, [4 x i8] zeroinitializer }, align 8
@rgl.0 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.1 = internal unnamed_addr global float 0.000000e+00, align 4
@rgl.2 = internal unnamed_addr global float 0.000000e+00, align 8
@rgl.3 = internal unnamed_addr global float 0.000000e+00, align 4
@rgl.4 = internal unnamed_addr global float 0.000000e+00, align 8
@.str.7.580 = private unnamed_addr constant [3 x i8] c"HH\00", align 1
@.str.8.581 = private unnamed_addr constant [3 x i8] c"JH\00", align 1
@.str.20.593 = private unnamed_addr constant [3 x i8] c"TS\00", align 1
@.str.26.599 = private unnamed_addr constant [3 x i8] c"AX\00", align 1
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
@.str.52.625 = private unnamed_addr constant [4 x i8] c"ER1\00", align 1
@.str.53.626 = private unnamed_addr constant [4 x i8] c"ER2\00", align 1
@.str.54.627 = private unnamed_addr constant [3 x i8] c"EY\00", align 1
@.str.55.628 = private unnamed_addr constant [4 x i8] c"EY1\00", align 1
@.str.56.629 = private unnamed_addr constant [4 x i8] c"EY2\00", align 1
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
@ph_name = dso_local local_unnamed_addr global [85 x ptr] [ptr @.str.2.743, ptr @.str.17.758, ptr @.str.51.792, ptr @.str.21.762, ptr @.str.44.785, ptr @.str.34.775, ptr @.str.25.766, ptr @.str.7.580, ptr @.str.8.581, ptr @.str.13.754, ptr @.str.57.798, ptr @.str.29.770, ptr @.str.31.772, ptr @.str.32.773, ptr @.str.5.746, ptr @.str.59.800, ptr @.str.37.778, ptr @.str.38.779, ptr @.str.9.750, ptr @.str.35.776, ptr @.str.20.593, ptr @.str.42.783, ptr @.str.63.804, ptr @.str.68.809, ptr @.str.47.788, ptr @.str.49.790, ptr @.str.26.599, ptr @.str.73.814, ptr @.str.28.601, ptr @.str.29.602, ptr @.str.30.603, ptr @.str.31.604, ptr @.str.32.605, ptr @.str.33.606, ptr @.str.34.607, ptr @.str.35.608, ptr @.str.36.609, ptr @.str.37.610, ptr @.str.38.611, ptr @.str.85.826, ptr @.str.40.613, ptr @.str.41.614, ptr @.str.42.615, ptr @.str.43.616, ptr @.str.44.617, ptr @.str.45.618, ptr @.str.46.619, ptr @.str.47.620, ptr @.str.48.621, ptr @.str.49.622, ptr @.str.50.623, ptr @.str.83.824, ptr @.str.52.625, ptr @.str.53.626, ptr @.str.54.627, ptr @.str.55.628, ptr @.str.56.629, ptr @.str.101.842, ptr @.str.58.631, ptr @.str.59.632, ptr @.str.60.633, ptr @.str.61.634, ptr @.str.62.635, ptr @.str.63.636, ptr @.str.64.637, ptr @.str.65.638, ptr @.str.66.639, ptr @.str.67.640, ptr @.str.68.641, ptr @.str.69.642, ptr @.str.70.643, ptr @.str.71.644, ptr @.str.72.645, ptr @.str.73.646, ptr @.str.74.647, ptr @.str.75.648, ptr @.str.76.649, ptr @.str.77.650, ptr @.str.78.651, ptr @.str.79.652, ptr @.str.80.653, ptr @.str.81.654, ptr @.str.82.655, ptr @.str.83.656, ptr null], align 16
@.str.99.672 = private unnamed_addr constant [3 x i8] c"ts\00", align 1
@.str.107.680 = private unnamed_addr constant [3 x i8] c"'&\00", align 1
@.str.108.681 = private unnamed_addr constant [3 x i8] c",&\00", align 1
@.str.109.682 = private unnamed_addr constant [3 x i8] c"'V\00", align 1
@.str.110.683 = private unnamed_addr constant [3 x i8] c",V\00", align 1
@.str.112.685 = private unnamed_addr constant [3 x i8] c"'O\00", align 1
@.str.113.686 = private unnamed_addr constant [3 x i8] c",O\00", align 1
@.str.115.688 = private unnamed_addr constant [4 x i8] c"'aU\00", align 1
@.str.116.689 = private unnamed_addr constant [4 x i8] c",aU\00", align 1
@.str.118.691 = private unnamed_addr constant [4 x i8] c"'aI\00", align 1
@.str.119.692 = private unnamed_addr constant [4 x i8] c",aI\00", align 1
@.str.121.694 = private unnamed_addr constant [4 x i8] c"'e@\00", align 1
@.str.122.695 = private unnamed_addr constant [4 x i8] c",e@\00", align 1
@.str.124.697 = private unnamed_addr constant [3 x i8] c"'e\00", align 1
@.str.125.698 = private unnamed_addr constant [3 x i8] c",e\00", align 1
@.str.127.700 = private unnamed_addr constant [3 x i8] c"'3\00", align 1
@.str.128.701 = private unnamed_addr constant [3 x i8] c",3\00", align 1
@.str.130.703 = private unnamed_addr constant [4 x i8] c"'eI\00", align 1
@.str.131.704 = private unnamed_addr constant [4 x i8] c",eI\00", align 1
@.str.133.706 = private unnamed_addr constant [4 x i8] c"'I@\00", align 1
@.str.134.707 = private unnamed_addr constant [4 x i8] c",I@\00", align 1
@.str.136.709 = private unnamed_addr constant [3 x i8] c"'I\00", align 1
@.str.137.710 = private unnamed_addr constant [3 x i8] c",I\00", align 1
@.str.139.712 = private unnamed_addr constant [3 x i8] c"'i\00", align 1
@.str.140.713 = private unnamed_addr constant [3 x i8] c",i\00", align 1
@.str.142.715 = private unnamed_addr constant [3 x i8] c"'0\00", align 1
@.str.143.716 = private unnamed_addr constant [3 x i8] c",0\00", align 1
@.str.145.718 = private unnamed_addr constant [4 x i8] c"'@U\00", align 1
@.str.146.719 = private unnamed_addr constant [4 x i8] c",@U\00", align 1
@.str.148.721 = private unnamed_addr constant [4 x i8] c"'oI\00", align 1
@.str.149.722 = private unnamed_addr constant [4 x i8] c",oI\00", align 1
@.str.151.724 = private unnamed_addr constant [4 x i8] c"'U@\00", align 1
@.str.152.725 = private unnamed_addr constant [4 x i8] c",U@\00", align 1
@.str.154.727 = private unnamed_addr constant [3 x i8] c"'U\00", align 1
@.str.155.728 = private unnamed_addr constant [3 x i8] c",U\00", align 1
@.str.157.730 = private unnamed_addr constant [3 x i8] c"'u\00", align 1
@.str.158.731 = private unnamed_addr constant [3 x i8] c",u\00", align 1
@ph_br = dso_local local_unnamed_addr global [85 x ptr] [ptr @.str.2.743, ptr @.str.16.757, ptr @.str.50.791, ptr @.str.20.761, ptr @.str.21.762, ptr @.str.33.774, ptr @.str.24.765, ptr @.str.39.780, ptr @.str.53.794, ptr @.str.12.753, ptr @.str.56.797, ptr @.str.28.769, ptr @.str.30.771, ptr @.str.31.772, ptr @.str.4.745, ptr @.str.58.799, ptr @.str.36.777, ptr @.str.37.778, ptr @.str.8.749, ptr @.str.9.750, ptr @.str.99.672, ptr @.str.10.866, ptr @.str.62.803, ptr @.str.67.808, ptr @.str.46.787, ptr @.str.47.788, ptr @.str.78.819, ptr @.str.79.820, ptr @.str.79.820, ptr @.str.79.820, ptr @.str.72.813, ptr @.str.107.680, ptr @.str.108.681, ptr @.str.42.783, ptr @.str.109.682, ptr @.str.110.683, ptr @.str.76.817, ptr @.str.112.685, ptr @.str.113.686, ptr @.str.95.836, ptr @.str.115.688, ptr @.str.116.689, ptr @.str.92.833, ptr @.str.118.691, ptr @.str.119.692, ptr @.str.103.844, ptr @.str.121.694, ptr @.str.122.695, ptr @.str.70.811, ptr @.str.124.697, ptr @.str.125.698, ptr @.str.82.823, ptr @.str.127.700, ptr @.str.128.701, ptr @.str.90.831, ptr @.str.130.703, ptr @.str.131.704, ptr @.str.100.841, ptr @.str.133.706, ptr @.str.134.707, ptr @.str.69.810, ptr @.str.136.709, ptr @.str.137.710, ptr @.str.80.821, ptr @.str.139.712, ptr @.str.140.713, ptr @.str.75.816, ptr @.str.142.715, ptr @.str.143.716, ptr @.str.98.839, ptr @.str.145.718, ptr @.str.146.719, ptr @.str.94.835, ptr @.str.148.721, ptr @.str.149.722, ptr @.str.105.846, ptr @.str.151.724, ptr @.str.152.725, ptr @.str.74.815, ptr @.str.154.727, ptr @.str.155.728, ptr @.str.86.827, ptr @.str.157.730, ptr @.str.158.731, ptr null], align 16
@.str.159.734 = private unnamed_addr constant [3 x i8] c"3R\00", align 1
@.str.160.735 = private unnamed_addr constant [4 x i8] c"'3R\00", align 1
@.str.161.736 = private unnamed_addr constant [4 x i8] c",3R\00", align 1
@.str.163.738 = private unnamed_addr constant [4 x i8] c"'oU\00", align 1
@.str.164.739 = private unnamed_addr constant [4 x i8] c",oU\00", align 1
@ph_am = dso_local global [85 x ptr] [ptr @.str.2.743, ptr @.str.16.757, ptr @.str.50.791, ptr @.str.20.761, ptr @.str.21.762, ptr @.str.33.774, ptr @.str.24.765, ptr @.str.39.780, ptr @.str.53.794, ptr @.str.12.753, ptr @.str.56.797, ptr @.str.28.769, ptr @.str.30.771, ptr @.str.31.772, ptr @.str.4.745, ptr @.str.58.799, ptr @.str.36.777, ptr @.str.37.778, ptr @.str.8.749, ptr @.str.9.750, ptr @.str.99.672, ptr @.str.10.866, ptr @.str.62.803, ptr @.str.67.808, ptr @.str.46.787, ptr @.str.47.788, ptr @.str.78.819, ptr @.str.79.820, ptr @.str.79.820, ptr @.str.79.820, ptr @.str.72.813, ptr @.str.107.680, ptr @.str.108.681, ptr @.str.42.783, ptr @.str.109.682, ptr @.str.110.683, ptr @.str.76.817, ptr @.str.112.685, ptr @.str.113.686, ptr @.str.95.836, ptr @.str.115.688, ptr @.str.116.689, ptr @.str.92.833, ptr @.str.118.691, ptr @.str.119.692, ptr @.str.103.844, ptr @.str.121.694, ptr @.str.122.695, ptr @.str.70.811, ptr @.str.124.697, ptr @.str.125.698, ptr @.str.159.734, ptr @.str.160.735, ptr @.str.161.736, ptr @.str.90.831, ptr @.str.130.703, ptr @.str.131.704, ptr @.str.100.841, ptr @.str.133.706, ptr @.str.134.707, ptr @.str.69.810, ptr @.str.136.709, ptr @.str.137.710, ptr @.str.80.821, ptr @.str.139.712, ptr @.str.140.713, ptr @.str.75.816, ptr @.str.142.715, ptr @.str.143.716, ptr @.str.109.850, ptr @.str.163.738, ptr @.str.164.739, ptr @.str.94.835, ptr @.str.148.721, ptr @.str.149.722, ptr @.str.86.827, ptr @.str.157.730, ptr @.str.158.731, ptr @.str.74.815, ptr @.str.154.727, ptr @.str.155.728, ptr @.str.86.827, ptr @.str.157.730, ptr @.str.158.731, ptr null], align 16
@.str.740 = private unnamed_addr constant [64 x i8] c"$Id: phtoelm.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@phtoelm_id = dso_local local_unnamed_addr global ptr @.str.740, align 8
@phtoelm = dso_local local_unnamed_addr global ptr null, align 8
@Elements = dso_local global [69 x { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] }] [{ ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.1.103, i8 31, i8 5, i8 5, i8 0, [4 x i8] zeroinitializer, ptr null, ptr null, i64 0, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.3.744, i8 29, i8 6, i8 6, i8 0, [4 x i8] zeroinitializer, ptr null, ptr null, i64 0, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.050000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.5.746, i8 23, i8 8, i8 8, i8 112, [4 x i8] zeroinitializer, ptr @.str.4.745, ptr @.str.4.745, i64 138412040, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.6.747, i8 29, i8 1, i8 1, i8 112, [4 x i8] zeroinitializer, ptr @.str.4.745, ptr @.str.4.745, i64 138412040, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.375000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.7.748, i8 23, i8 2, i8 2, i8 112, [4 x i8] zeroinitializer, ptr @.str.4.745, ptr @.str.4.745, i64 138412040, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.9.750, i8 23, i8 6, i8 6, i8 116, [4 x i8] zeroinitializer, ptr @.str.8.749, ptr @.str.8.749, i64 138412033, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.10.751, i8 29, i8 1, i8 1, i8 116, [4 x i8] zeroinitializer, ptr @.str.8.749, ptr @.str.8.749, i64 138412033, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.11.752, i8 23, i8 2, i8 2, i8 116, [4 x i8] zeroinitializer, ptr @.str.8.749, ptr @.str.8.749, i64 138412033, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 1, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 1, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 1, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 1, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.13.754, i8 23, i8 8, i8 8, i8 107, [4 x i8] zeroinitializer, ptr @.str.12.753, ptr @.str.12.753, i64 205520896, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.14.755, i8 29, i8 1, i8 1, i8 107, [4 x i8] zeroinitializer, ptr @.str.12.753, ptr @.str.12.753, i64 205520896, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.15.756, i8 23, i8 4, i8 4, i8 107, [4 x i8] zeroinitializer, ptr @.str.12.753, ptr @.str.12.753, i64 205520896, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.925000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.17.758, i8 26, i8 12, i8 12, i8 98, [4 x i8] zeroinitializer, ptr @.str.16.757, ptr @.str.16.757, i64 37748744, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.18.759, i8 29, i8 1, i8 1, i8 98, [4 x i8] zeroinitializer, ptr @.str.16.757, ptr @.str.16.757, i64 37748744, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.19.760, i8 26, i8 0, i8 0, i8 98, [4 x i8] zeroinitializer, ptr @.str.16.757, ptr @.str.16.757, i64 37748744, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.21.762, i8 26, i8 8, i8 8, i8 100, [4 x i8] zeroinitializer, ptr @.str.20.761, ptr @.str.20.761, i64 37748737, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.22.763, i8 29, i8 1, i8 1, i8 100, [4 x i8] zeroinitializer, ptr @.str.20.761, ptr @.str.20.761, i64 37748737, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.23.764, i8 26, i8 1, i8 1, i8 100, [4 x i8] zeroinitializer, ptr @.str.20.761, ptr @.str.20.761, i64 37748737, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.25.766, i8 26, i8 12, i8 12, i8 103, [4 x i8] zeroinitializer, ptr @.str.24.765, ptr @.str.24.765, i64 104857600, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.26.767, i8 29, i8 1, i8 1, i8 103, [4 x i8] zeroinitializer, ptr @.str.24.765, ptr @.str.24.765, i64 104857600, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.27.768, i8 26, i8 2, i8 2, i8 103, [4 x i8] zeroinitializer, ptr @.str.24.765, ptr @.str.24.765, i64 104857600, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.400000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.29.770, i8 15, i8 8, i8 8, i8 109, [4 x i8] zeroinitializer, ptr @.str.28.769, ptr @.str.28.769, i64 65544, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 3.600000e+02, float 3.600000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+03, float 3.500000e+02, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+03, float 0.000000e+00, i8 100, i8 5, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+01, float 2.000000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+02, float 8.700000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.200000e+02, float 0.000000e+00, i8 100, i8 5, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.600000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.300000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.31.772, i8 15, i8 8, i8 8, i8 110, [4 x i8] zeroinitializer, ptr @.str.30.771, ptr @.str.30.771, i64 65537, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 4.500000e+02, float 4.500000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 2.680000e+03, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+01, float 2.000000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.000000e+02, float 1.500000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.600000e+02, float 1.300000e+02, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.000000e+01, float -1.000000e+01, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.32.773, i8 15, i8 8, i8 8, i8 78, [4 x i8] zeroinitializer, ptr @.str.31.772, ptr @.str.31.772, i64 67174400, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 3.600000e+02, float 3.600000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.800000e+02, float 4.800000e+02, i8 0, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.200000e+02, float 1.550000e+03, i8 50, i8 5, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+02, float 8.000000e+01, i8 0, i8 5, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+02, float 5.000000e+01, i8 50, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 3, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.200000e+01, float 2.600000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.600000e+01, float 2.800000e+01, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 2, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.34.775, i8 18, i8 12, i8 12, i8 102, [4 x i8] zeroinitializer, ptr @.str.33.774, ptr @.str.33.774, i64 134219904, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.420000e+03, float 3.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 9.800000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.200000e+01, float 1.600000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.35.776, i8 18, i8 15, i8 15, i8 84, [4 x i8] zeroinitializer, ptr @.str.9.750, ptr @.str.9.750, i64 134217888, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.37.778, i8 18, i8 12, i8 12, i8 115, [4 x i8] zeroinitializer, ptr @.str.36.777, ptr @.str.36.777, i64 134217857, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.000000e+02, float 1.000000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.600000e+01, float 4.800000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.200000e+01, float 1.600000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.38.779, i8 18, i8 12, i8 12, i8 83, [4 x i8] zeroinitializer, ptr @.str.37.778, ptr @.str.37.778, i64 134480000, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.65.806, i8 18, i8 12, i8 12, i8 120, [4 x i8] zeroinitializer, ptr @.str.64.805, ptr @.str.64.805, i64 201326720, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 1.550000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.620000e+03, float 1.580000e+03, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 3, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.925000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.40.781, i8 9, i8 10, i8 10, i8 104, [4 x i8] zeroinitializer, ptr @.str.39.780, ptr @.str.39.780, i64 258, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float -1.400000e+01, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float -1.400000e+01, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float -7.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float -3.500000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 7, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.42.783, i8 20, i8 4, i8 4, i8 118, [4 x i8] zeroinitializer, ptr @.str.10.866, ptr @.str.10.866, i64 33556608, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.420000e+03, float 3.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 9.800000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.43.784, i8 30, i8 0, i8 0, i8 90, [4 x i8] zeroinitializer, ptr @.str.47.788, ptr @.str.47.788, i64 33554560, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.420000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.025000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.44.785, i8 20, i8 4, i8 4, i8 84, [4 x i8] zeroinitializer, ptr @.str.21.762, ptr @.str.21.762, i64 33554592, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.600000e+01, float 1.800000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.45.786, i8 20, i8 4, i8 4, i8 84, [4 x i8] zeroinitializer, ptr @.str.21.762, ptr @.str.21.762, i64 33554592, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.47.788, i8 20, i8 4, i8 4, i8 122, [4 x i8] zeroinitializer, ptr @.str.46.787, ptr @.str.46.787, i64 33554561, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+01, float 2.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.400000e+01, float 2.700000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.48.789, i8 20, i8 4, i8 4, i8 122, [4 x i8] zeroinitializer, ptr @.str.46.787, ptr @.str.46.787, i64 33554561, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.720000e+03, float 9.500000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.49.790, i8 20, i8 4, i8 4, i8 90, [4 x i8] zeroinitializer, ptr @.str.47.788, ptr @.str.47.788, i64 33816704, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.51.792, i8 23, i8 4, i8 4, i8 116, [4 x i8] zeroinitializer, ptr @.str.8.749, ptr @.str.8.749, i64 138412033, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.52.793, i8 18, i8 8, i8 8, i8 83, [4 x i8] zeroinitializer, ptr @.str.37.778, ptr @.str.37.778, i64 134480000, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.54.795, i8 26, i8 4, i8 4, i8 100, [4 x i8] zeroinitializer, ptr @.str.20.761, ptr @.str.20.761, i64 37748737, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 1.100000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.680000e+03, float 2.680000e+03, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 1.500000e+02, i8 0, i8 2, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.55.796, i8 20, i8 3, i8 3, i8 90, [4 x i8] zeroinitializer, ptr @.str.47.788, ptr @.str.47.788, i64 33816704, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+02, float 1.700000e+02, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.190000e+03, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 0.000000e+00, i8 100, i8 3, i8 2, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.57.798, i8 11, i8 8, i8 8, i8 108, [4 x i8] zeroinitializer, ptr @.str.56.797, ptr @.str.56.797, i64 33555457, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.600000e+02, float 2.300000e+02, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 7.100000e+02, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.100000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.57.159, i8 11, i8 8, i8 8, i8 108, [4 x i8] zeroinitializer, ptr @.str.56.797, ptr @.str.56.797, i64 33555457, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.600000e+02, float 2.300000e+02, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.400000e+02, float 4.700000e+02, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 6, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.100000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.61.802, i8 10, i8 10, i8 10, i8 -43, [4 x i8] zeroinitializer, ptr @.str.59.800, ptr @.str.60.162, i64 1048576, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.180000e+03, float 0.000000e+00, i8 100, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 1.600000e+03, i8 0, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.000000e+01, float 3.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.000000e+01, float 2.500000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.59.800, i8 10, i8 11, i8 11, i8 -88, [4 x i8] zeroinitializer, ptr @.str.58.799, ptr @.str.58.799, i64 3, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 0.000000e+00, i8 100, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.180000e+03, float 5.900000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 7.400000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 0.000000e+00, i8 100, i8 0, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.63.804, i8 10, i8 8, i8 8, i8 119, [4 x i8] zeroinitializer, ptr @.str.62.803, ptr @.str.62.803, i64 33558530, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.900000e+02, float 5.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.600000e+02, float 3.500000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 9.800000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.375000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.100000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.68.809, i8 10, i8 7, i8 7, i8 106, [4 x i8] zeroinitializer, ptr @.str.67.808, ptr @.str.67.808, i64 33685506, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.190000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.980000e+03, float 1.460000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.69.810, i8 2, i8 8, i8 6, i8 73, [4 x i8] zeroinitializer, ptr @.str.69.810, ptr @.str.69.810, i64 287309888, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.000000e+02, float 1.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.080000e+03, float 1.070000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.560000e+03, float 1.340000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.71.812, i8 2, i8 8, i8 4, i8 69, [4 x i8] zeroinitializer, ptr @.str.70.811, ptr @.str.71.812, i64 285220928, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.400000e+02, float 3.500000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.070000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.73.814, i8 2, i8 10, i8 5, i8 81, [4 x i8] zeroinitializer, ptr @.str.72.813, ptr @.str.72.813, i64 285229120, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.900000e+02, float 4.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.780000e+03, float 9.500000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.300000e+02, float 6.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.725000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.74.815, i8 2, i8 9, i8 6, i8 -61, [4 x i8] zeroinitializer, ptr @.str.42.783, ptr @.str.42.783, i64 285220868, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.000000e+02, float 3.500000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.360000e+03, float 7.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.375000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.450000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.76.817, i8 2, i8 9, i8 6, i8 -127, [4 x i8] zeroinitializer, ptr @.str.75.816, ptr @.str.74.176, i64 268976132, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.100000e+02, float 2.900000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.725000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.575000e+01, float 7.000000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.77.818, i8 2, i8 6, i8 4, i8 85, [4 x i8] zeroinitializer, ptr @.str.74.815, ptr @.str.74.815, i64 271056900, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.700000e+02, float 1.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+03, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.79.820, i8 2, i8 4, i8 4, i8 -85, [4 x i8] zeroinitializer, ptr @.str.78.819, ptr @.str.78.819, i64 285245456, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 7.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.81.822, i8 2, i8 11, i8 7, i8 105, [4 x i8] zeroinitializer, ptr @.str.80.821, ptr @.str.80.821, i64 285213248, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.320000e+03, float 1.190000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.200000e+03, float 1.580000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.83.824, i8 2, i8 16, i8 16, i8 -50, [4 x i8] zeroinitializer, ptr @.str.82.823, ptr @.str.82, i64 285220880, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.800000e+02, float 2.900000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.420000e+03, float 7.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.84.825, i8 2, i8 15, i8 15, i8 65, [4 x i8] zeroinitializer, ptr @.str.79.820, ptr @.str.79.820, i64 285229060, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.900000e+02, float 4.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.85.826, i8 2, i8 16, i8 10, i8 -115, [4 x i8] zeroinitializer, ptr @.str.76.817, ptr @.str.76.817, i64 268967940, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.200000e+02, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+01, float 7.000000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.87.828, i8 2, i8 14, i8 9, i8 117, [4 x i8] zeroinitializer, ptr @.str.86.827, ptr @.str.86.827, i64 268960260, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+02, float 1.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.800000e+02, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+03, float 1.100000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+01, float 7.000000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.050000e+01, float 3.500000e+00, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.91.832, i8 2, i8 9, i8 6, i8 69, [4 x i8] zeroinitializer, ptr @.str.70.811, ptr @.str.71.812, i64 285220928, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.400000e+02, float 2.900000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+03, float 8.300000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.93.834, i8 2, i8 9, i8 6, i8 97, [4 x i8] zeroinitializer, ptr @.str.6.492, ptr @.str.6.492, i64 285229072, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.900000e+02, float 4.100000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.800000e+02, float 4.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.975000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.89.830, i8 2, i8 9, i8 6, i8 111, [4 x i8] zeroinitializer, ptr @.str.88.829, ptr @.str.88.829, i64 277348356, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.200000e+02, float 3.500000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+01, float 7.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.96.837, i8 2, i8 9, i8 6, i8 97, [4 x i8] zeroinitializer, ptr @.str.6.492, ptr @.str.6.492, i64 285229072, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 7.900000e+02, float 4.100000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.300000e+03, float 5.900000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.725000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.97.838, i8 2, i8 8, i8 6, i8 85, [4 x i8] zeroinitializer, ptr @.str.74.815, ptr @.str.74.815, i64 271056900, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.700000e+02, float 1.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+03, float 4.700000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.99.840, i8 2, i8 9, i8 6, i8 -85, [4 x i8] zeroinitializer, ptr @.str.78.819, ptr @.str.78.819, i64 285245456, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 7.100000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.101.842, i8 2, i8 9, i8 6, i8 73, [4 x i8] zeroinitializer, ptr @.str.69.810, ptr @.str.69.810, i64 287309888, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.100000e+02, float 1.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.200000e+03, float 1.070000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.920000e+03, float 1.460000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.500000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.675000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.102.843, i8 2, i8 8, i8 6, i8 81, [4 x i8] zeroinitializer, ptr @.str.78.819, ptr @.str.78.819, i64 285229120, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.480000e+03, float 7.100000e+02, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.325000e+01, float 1.750000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.625000e+01, float 1.400000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 4, i8 4, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.104.845, i8 2, i8 9, i8 6, i8 69, [4 x i8] zeroinitializer, ptr @.str.70.811, ptr @.str.71.812, i64 285220928, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.400000e+02, float 3.500000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.020000e+03, float 1.070000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.850000e+01, float 1.750000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.150000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.106.847, i8 2, i8 9, i8 6, i8 85, [4 x i8] zeroinitializer, ptr @.str.74.815, ptr @.str.74.815, i64 271056900, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 3.700000e+02, float 1.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.000000e+03, float 4.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.200000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.800000e+01, float 1.400000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 7.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }, { ptr, i8, i8, i8, i8, [4 x i8], ptr, ptr, i64, [19 x { float, float, i8, i8, i8, i8 }], [4 x i8] } { ptr @.str.108.849, i8 2, i8 9, i8 6, i8 -115, [4 x i8] zeroinitializer, ptr @.str.76.817, ptr @.str.76.817, i64 268967940, [19 x { float, float, i8, i8, i8, i8 }] [{ float, float, i8, i8, i8, i8 } { float 2.700000e+02, float 1.350000e+02, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.900000e+02, float 2.300000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 8.200000e+02, float 4.700000e+02, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.500000e+03, float 1.220000e+03, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.000000e+01, float 3.000000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 9.000000e+01, float 4.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.500000e+02, float 7.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float 0.000000e+00, i8 100, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 5.075000e+01, float 2.450000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 4.550000e+01, float 2.100000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 2.275000e+01, float 1.050000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.750000e+01, float 7.000000e+00, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float -3.000000e+01, float -1.500000e+01, i8 50, i8 5, i8 5, i8 0 }, { float, float, i8, i8, i8, i8 } { float 6.200000e+01, float 3.100000e+01, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 1.600000e+01, float 8.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }, { float, float, i8, i8, i8, i8 } { float 0.000000e+00, float 0.000000e+00, i8 50, i8 0, i8 0, i8 0 }], [4 x i8] zeroinitializer }], align 16
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
@program = dso_local local_unnamed_addr global ptr @.str.1.855, align 8
@.str.2.856 = private unnamed_addr constant [17 x i8] c"Spelling '%.*s'\0A\00", align 1
@ASCII = dso_local local_unnamed_addr global [129 x ptr] [ptr @.str.1, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.8.467, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.1.874, ptr @.str.17, ptr @.str.18, ptr @.str.12.889, ptr @.str.13.890, ptr @.str.14.891, ptr @.str.15.892, ptr @.str.16.893, ptr @.str.17.894, ptr @.str.18.895, ptr @.str.19.896, ptr @.str.20.897, ptr @.str.21.898, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.70.811, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.80.821, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.70.811, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.80.821, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr null], align 16
@klatt_global = dso_local global %struct.klatt_global_t zeroinitializer, align 8
@.str.3.859 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@file_write = dso_local local_unnamed_addr global ptr null, align 8
@once = internal unnamed_addr global i1 false, align 4
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
@Revision = dso_local local_unnamed_addr global ptr @.str.73, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@file_term = dso_local local_unnamed_addr global ptr null, align 8
@dict = dso_local local_unnamed_addr global ptr null, align 8
@dialect = dso_local local_unnamed_addr global ptr @ph_am, align 8
@.str.15.860 = private unnamed_addr constant [17 x i8] c"Guess %p '%.*s'\0A\00", align 1
@.str.871 = private unnamed_addr constant [63 x i8] c"$Id: saynum.c,v 1.13 1994/11/08 13:30:50 a904209 Exp a904209 $\00", align 1
@saynum_id = dso_local local_unnamed_addr global ptr @.str.871, align 8
@.str.1.874 = private unnamed_addr constant [6 x i8] c"minus\00", align 1
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
@str.1 = private unnamed_addr constant [52 x i8] c"Warning: minimum glottal open period is 10 samples.\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local void @au_header(i32 noundef %fd, i32 noundef %enc, i32 noundef %rate, i32 noundef %size, ptr noundef readonly captures(address_is_null) %comment) local_unnamed_addr #0 {
entry:
  %byte.i46 = alloca i8, align 1
  %byte.i37 = alloca i8, align 1
  %byte.i28 = alloca i8, align 1
  %byte.i19 = alloca i8, align 1
  %byte.i10 = alloca i8, align 1
  %byte.i = alloca i8, align 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %entry
  %indvars.iv.i = phi i64 [ 24, %entry ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #31
  %shr.i = lshr i64 779316836, %indvars.iv.i
  %conv.i = trunc i64 %shr.i to i8
  store i8 %conv.i, ptr %byte.i, align 1, !tbaa !5
  %call.i = call i64 @write(i32 noundef %fd, ptr noundef nonnull %byte.i, i64 noundef 1) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #31
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -8
  %cmp.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %cmp.not.i, label %wblong.exit, label %for.body.i, !llvm.loop !8

wblong.exit:                                      ; preds = %for.body.i
  %tobool.not = icmp eq ptr %comment, null
  %spec.store.select = select i1 %tobool.not, ptr @.str.8.467, ptr %comment
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #32
  %add = add i64 %call, 24
  br label %for.body.i11

for.body.i11:                                     ; preds = %for.body.i11, %wblong.exit
  %indvars.iv.i12 = phi i64 [ 24, %wblong.exit ], [ %indvars.iv.next.i16, %for.body.i11 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i10) #31
  %shr.i13 = lshr i64 %add, %indvars.iv.i12
  %conv.i14 = trunc i64 %shr.i13 to i8
  store i8 %conv.i14, ptr %byte.i10, align 1, !tbaa !5
  %call.i15 = call i64 @write(i32 noundef %fd, ptr noundef nonnull %byte.i10, i64 noundef 1) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i10) #31
  %indvars.iv.next.i16 = add nsw i64 %indvars.iv.i12, -8
  %cmp.not.i17 = icmp eq i64 %indvars.iv.i12, 0
  br i1 %cmp.not.i17, label %wblong.exit18, label %for.body.i11, !llvm.loop !8

wblong.exit18:                                    ; preds = %for.body.i11
  %conv = zext i32 %size to i64
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.body.i20, %wblong.exit18
  %indvars.iv.i21 = phi i64 [ 24, %wblong.exit18 ], [ %indvars.iv.next.i25, %for.body.i20 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i19) #31
  %shr.i22 = lshr i64 %conv, %indvars.iv.i21
  %conv.i23 = trunc i64 %shr.i22 to i8
  store i8 %conv.i23, ptr %byte.i19, align 1, !tbaa !5
  %call.i24 = call i64 @write(i32 noundef %fd, ptr noundef nonnull %byte.i19, i64 noundef 1) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i19) #31
  %indvars.iv.next.i25 = add nsw i64 %indvars.iv.i21, -8
  %cmp.not.i26 = icmp eq i64 %indvars.iv.i21, 0
  br i1 %cmp.not.i26, label %wblong.exit27, label %for.body.i20, !llvm.loop !8

wblong.exit27:                                    ; preds = %for.body.i20
  %conv1 = zext i32 %enc to i64
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29, %wblong.exit27
  %indvars.iv.i30 = phi i64 [ 24, %wblong.exit27 ], [ %indvars.iv.next.i34, %for.body.i29 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i28) #31
  %shr.i31 = lshr i64 %conv1, %indvars.iv.i30
  %conv.i32 = trunc i64 %shr.i31 to i8
  store i8 %conv.i32, ptr %byte.i28, align 1, !tbaa !5
  %call.i33 = call i64 @write(i32 noundef %fd, ptr noundef nonnull %byte.i28, i64 noundef 1) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i28) #31
  %indvars.iv.next.i34 = add nsw i64 %indvars.iv.i30, -8
  %cmp.not.i35 = icmp eq i64 %indvars.iv.i30, 0
  br i1 %cmp.not.i35, label %wblong.exit36, label %for.body.i29, !llvm.loop !8

wblong.exit36:                                    ; preds = %for.body.i29
  %conv2 = zext i32 %rate to i64
  br label %for.body.i38

for.body.i38:                                     ; preds = %for.body.i38, %wblong.exit36
  %indvars.iv.i39 = phi i64 [ 24, %wblong.exit36 ], [ %indvars.iv.next.i43, %for.body.i38 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i37) #31
  %shr.i40 = lshr i64 %conv2, %indvars.iv.i39
  %conv.i41 = trunc i64 %shr.i40 to i8
  store i8 %conv.i41, ptr %byte.i37, align 1, !tbaa !5
  %call.i42 = call i64 @write(i32 noundef %fd, ptr noundef nonnull %byte.i37, i64 noundef 1) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i37) #31
  %indvars.iv.next.i43 = add nsw i64 %indvars.iv.i39, -8
  %cmp.not.i44 = icmp eq i64 %indvars.iv.i39, 0
  br i1 %cmp.not.i44, label %for.body.i47, label %for.body.i38, !llvm.loop !8

for.body.i47:                                     ; preds = %for.body.i38, %for.body.i47
  %indvars.iv.i48 = phi i64 [ %indvars.iv.next.i52, %for.body.i47 ], [ 24, %for.body.i38 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i46) #31
  %shr.i49 = lshr i64 1, %indvars.iv.i48
  %conv.i50 = trunc nuw nsw i64 %shr.i49 to i8
  store i8 %conv.i50, ptr %byte.i46, align 1, !tbaa !5
  %call.i51 = call i64 @write(i32 noundef %fd, ptr noundef nonnull %byte.i46, i64 noundef 1) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i46) #31
  %indvars.iv.next.i52 = add nsw i64 %indvars.iv.i48, -8
  %cmp.not.i53 = icmp eq i64 %indvars.iv.i48, 0
  br i1 %cmp.not.i53, label %wblong.exit54, label %for.body.i47, !llvm.loop !8

wblong.exit54:                                    ; preds = %for.body.i47
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #32
  %call4 = tail call i64 @write(i32 noundef %fd, ptr noundef nonnull %spec.store.select, i64 noundef %call3) #31
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #3

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @file_init(i32 noundef %argc, ptr noundef captures(none) %argv) local_unnamed_addr #0 {
entry:
  %call = tail call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.1.75, i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str.56.797, ptr noundef nonnull @.str.8.467, ptr noundef nonnull @linear_file, ptr noundef nonnull @.str.3.77, ptr noundef nonnull @.str.88.829, ptr noundef nonnull @.str.8.467, ptr noundef nonnull @au_file, ptr noundef nonnull @.str.5.79, ptr noundef null)
  %0 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %return

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr @au_file, align 8, !tbaa !12
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end17, label %sub_0

sub_0:                                            ; preds = %if.end
  %2 = load i8, ptr %1, align 1
  %.not = icmp eq i8 %2, 45
  br i1 %.not, label %if.then2.tail, label %if.else

if.then2.tail:                                    ; preds = %sub_0
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %4 = load i8, ptr %3, align 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then2.tail
  store i32 1, ptr @au_fd, align 4, !tbaa !10
  br label %if.then11

if.else:                                          ; preds = %sub_0, %if.then2.tail
  %call5 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %1, i32 noundef 577, i32 noundef 438) #31
  store i32 %call5, ptr @au_fd, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end9, label %if.then11

if.end9:                                          ; preds = %if.else
  %6 = load ptr, ptr @au_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %6) #33
  %.pr = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp10 = icmp sgt i32 %.pr, -1
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %if.then4, %if.else, %if.end9
  %7 = phi i32 [ %.pr, %if.end9 ], [ 1, %if.then4 ], [ %call5, %if.else ]
  %8 = load i64, ptr @samp_rate, align 8, !tbaa !15
  %cmp12 = icmp sgt i64 %8, 8000
  %. = select i1 %cmp12, i32 3, i32 1
  store i1 %cmp12, ptr @au_encoding, align 4
  %conv = trunc i64 %8 to i32
  tail call void @au_header(i32 noundef %7, i32 noundef %., i32 noundef %conv, i32 noundef -1, ptr noundef nonnull @.str.8.467)
  store i32 0, ptr @au_size, align 4, !tbaa !10
  br label %if.end17

if.end17:                                         ; preds = %if.end9, %if.then11, %if.end
  %9 = load ptr, ptr @linear_file, align 8, !tbaa !12
  %tobool18.not = icmp eq ptr %9, null
  br i1 %tobool18.not, label %if.end31, label %sub_05

sub_05:                                           ; preds = %if.end17
  %10 = load i8, ptr %9, align 1
  %.not8 = icmp eq i8 %10, 45
  br i1 %.not8, label %if.then19.tail, label %if.else24

if.then19.tail:                                   ; preds = %sub_05
  %11 = getelementptr inbounds nuw i8, ptr %9, i64 1
  %12 = load i8, ptr %11, align 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %if.then23, label %if.else24

if.then23:                                        ; preds = %if.then19.tail
  store i32 1, ptr @linear_fd, align 4, !tbaa !10
  br label %if.end31

if.else24:                                        ; preds = %sub_05, %if.then19.tail
  %call25 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %9, i32 noundef 577, i32 noundef 438) #31
  store i32 %call25, ptr @linear_fd, align 4, !tbaa !10
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.else24
  %14 = load ptr, ptr @linear_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %14) #33
  br label %if.end31

if.end31:                                         ; preds = %if.then23, %if.then28, %if.else24, %if.end17
  %15 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp32 = icmp sgt i32 %15, -1
  %16 = load i32, ptr @linear_fd, align 4
  %cmp34 = icmp sgt i32 %16, -1
  %or.cond = select i1 %cmp32, i1 true, i1 %cmp34
  br i1 %or.cond, label %if.then36, label %return

if.then36:                                        ; preds = %if.end31
  store ptr @aufile_write, ptr @file_write, align 8, !tbaa !17
  store ptr @aufile_term, ptr @file_term, align 8, !tbaa !17
  br label %return

return:                                           ; preds = %if.then36, %if.end31, %entry
  ret i32 %call
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree
declare noundef i32 @open(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal void @aufile_write(i32 noundef %n, ptr noundef readonly captures(none) %data) #5 {
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
  %call = tail call i64 @write(i32 noundef %0, ptr noundef %data, i64 noundef %mul) #31
  %cmp7.not = icmp eq i64 %call, %mul
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then2
  tail call void @perror(ptr noundef nonnull @.str.10.497) #33
  br label %if.end10

if.end10:                                         ; preds = %if.then2, %if.then9, %if.then
  %2 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp11 = icmp sgt i32 %2, -1
  br i1 %cmp11, label %if.then13, label %if.end55

if.then13:                                        ; preds = %if.end10
  %.b = load i1, ptr @au_encoding, align 4
  br i1 %.b, label %if.then16, label %if.then31

if.then16:                                        ; preds = %if.then13
  %3 = shl nuw i32 %n, 1
  %conv21 = zext i32 %3 to i64
  %call22 = tail call i64 @write(i32 noundef %2, ptr noundef %data, i64 noundef %conv21) #31
  %cmp24.not = icmp eq i64 %call22, %conv21
  br i1 %cmp24.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then16
  tail call void @perror(ptr noundef nonnull @.str.10.497) #33
  br label %if.end55

if.else:                                          ; preds = %if.then16
  %4 = load i32, ptr @au_size, align 4, !tbaa !10
  %add = add i32 %4, %3
  store i32 %add, ptr @au_size, align 4, !tbaa !10
  br label %if.end55

if.then31:                                        ; preds = %if.then13
  %conv32 = zext nneg i32 %n to i64
  %call33 = tail call noalias ptr @malloc(i64 noundef %conv32) #34
  %tobool.not = icmp eq ptr %call33, null
  br i1 %tobool.not, label %if.else48, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then31
  %add.ptr = getelementptr inbounds nuw i8, ptr %call33, i64 %conv32
  %5 = load ptr, ptr @_l2u, align 8, !tbaa !12
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %while.body
  %data.addr.022 = phi ptr [ %data, %while.body.lr.ph ], [ %incdec.ptr, %while.body ]
  %p.021 = phi ptr [ %call33, %while.body.lr.ph ], [ %incdec.ptr38, %while.body ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %data.addr.022, i64 2
  %6 = load i16, ptr %data.addr.022, align 2, !tbaa !18
  %7 = ashr i16 %6, 3
  %idxprom = sext i16 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %p.021, i64 1
  store i8 %8, ptr %p.021, align 1, !tbaa !5
  %cmp35 = icmp ult ptr %incdec.ptr38, %add.ptr
  br i1 %cmp35, label %while.body, label %while.end, !llvm.loop !20

while.end:                                        ; preds = %while.body
  %call40 = tail call i64 @write(i32 noundef %2, ptr noundef nonnull %call33, i64 noundef %conv32) #31
  %cmp42.not = icmp eq i64 %call40, %conv32
  br i1 %cmp42.not, label %if.else45, label %if.then44

if.then44:                                        ; preds = %while.end
  %9 = load ptr, ptr @au_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %9) #33
  br label %if.end47

if.else45:                                        ; preds = %while.end
  %10 = load i32, ptr @au_size, align 4, !tbaa !10
  %add46 = add i32 %10, %n
  store i32 %add46, ptr @au_size, align 4, !tbaa !10
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then44
  tail call void @free(ptr noundef nonnull %call33) #31
  br label %if.end55

if.else48:                                        ; preds = %if.then31
  %11 = load ptr, ptr @stderr, align 8, !tbaa !21
  %12 = load ptr, ptr @program, align 8, !tbaa !12
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.8.82, ptr noundef %12) #35
  br label %if.end55

if.end55:                                         ; preds = %if.end47, %if.else48, %if.then26, %if.else, %if.end10, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @aufile_term() #5 {
entry:
  %byte.i = alloca i8, align 1
  %0 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #31
  %cmp1 = icmp sgt i64 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.then
  %1 = load i32, ptr @au_fd, align 4, !tbaa !10
  %call3 = tail call i32 @ftruncate(i32 noundef %1, i64 noundef %call) #31
  %2 = load i32, ptr @au_fd, align 4, !tbaa !10
  %call4 = tail call i64 @lseek(i32 noundef %2, i64 noundef 8, i32 noundef 0) #31
  %cmp5 = icmp eq i64 %call4, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then2
  %3 = load i32, ptr @au_fd, align 4, !tbaa !10
  %4 = load i32, ptr @au_size, align 4, !tbaa !10
  %conv = zext i32 %4 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.then6
  %indvars.iv.i = phi i64 [ 24, %if.then6 ], [ %indvars.iv.next.i, %for.body.i ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte.i) #31
  %shr.i = lshr i64 %conv, %indvars.iv.i
  %conv.i = trunc i64 %shr.i to i8
  store i8 %conv.i, ptr %byte.i, align 1, !tbaa !5
  %call.i = call i64 @write(i32 noundef %3, ptr noundef nonnull %byte.i, i64 noundef 1) #31
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte.i) #31
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -8
  %cmp.not.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %cmp.not.i, label %if.end7, label %for.body.i, !llvm.loop !8

if.end7:                                          ; preds = %for.body.i, %if.then2, %if.then
  %5 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp8.not = icmp eq i32 %5, 1
  br i1 %cmp8.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @close(i32 noundef %5) #31
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  store i32 -1, ptr @au_fd, align 4, !tbaa !10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry
  %6 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %cmp14 = icmp sgt i32 %6, -1
  br i1 %cmp14, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i64 @lseek(i32 noundef %6, i64 noundef 0, i32 noundef 1) #31
  %call18 = tail call i32 @ftruncate(i32 noundef %6, i64 noundef %call17) #31
  %7 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %cmp19.not = icmp eq i32 %7, 1
  br i1 %cmp19.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then16
  %call22 = tail call i32 @close(i32 noundef %7) #31
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then16
  store i32 -1, ptr @linear_fd, align 4, !tbaa !10
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.end13
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #11

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @darray_free(ptr noundef captures(none) initializes((8, 16)) %a) local_unnamed_addr #12 {
entry:
  %0 = load ptr, ptr %a, align 8, !tbaa !23
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  tail call void @free(ptr noundef nonnull %0) #31
  store ptr null, ptr %a, align 8, !tbaa !23
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %alloc = getelementptr inbounds nuw i8, ptr %a, i64 12
  store i32 0, ptr %alloc, align 4, !tbaa !25
  %items = getelementptr inbounds nuw i8, ptr %a, i64 8
  store i32 0, ptr %items, align 8, !tbaa !26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local ptr @Darray_find(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #5 {
entry:
  %alloc = getelementptr inbounds nuw i8, ptr %a, i64 12
  %0 = load i32, ptr %alloc, align 4, !tbaa !25
  %cmp.not = icmp ult i32 %n, %0
  %items = getelementptr inbounds nuw i8, ptr %a, i64 8
  %1 = load i32, ptr %items, align 8, !tbaa !26
  br i1 %cmp.not, label %lor.lhs.false, label %if.then.thread

lor.lhs.false:                                    ; preds = %entry
  %cmp1.not = icmp ult i32 %n, %1
  br i1 %cmp1.not, label %if.end53, label %if.then

if.then:                                          ; preds = %lor.lhs.false
  %esize = getelementptr inbounds nuw i8, ptr %a, i64 16
  %2 = load i16, ptr %esize, align 8, !tbaa !27
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.then4, label %if.else34

if.then.thread:                                   ; preds = %entry
  %esize37 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %3 = load i16, ptr %esize37, align 8, !tbaa !27
  %conv38 = zext i16 %3 to i32
  %mul39 = mul i32 %1, %conv38
  %tobool.not40 = icmp eq i16 %3, 0
  br i1 %tobool.not40, label %if.then4, label %if.then8

if.then4:                                         ; preds = %if.then.thread, %if.then
  tail call void @abort() #36
  unreachable

if.then8:                                         ; preds = %if.then.thread
  %get = getelementptr inbounds nuw i8, ptr %a, i64 18
  %4 = load i16, ptr %get, align 2, !tbaa !28
  %narrow = tail call i16 @llvm.umax.i16(i16 %4, i16 1)
  %spec.select = zext i16 %narrow to i32
  %add13 = add i32 %n, %spec.select
  %mul16 = mul i32 %add13, %conv38
  %conv17 = zext i32 %mul16 to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv17) #34
  %tobool18.not.not = icmp eq ptr %call, null
  br i1 %tobool18.not.not, label %return, label %if.then19

if.then19:                                        ; preds = %if.then8
  %tobool20.not = icmp eq i32 %mul39, 0
  %.pr = load ptr, ptr %a, align 8, !tbaa !23
  br i1 %tobool20.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then19
  %conv22 = zext i32 %mul39 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call, ptr align 1 %.pr, i64 %conv22, i1 false)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %if.then21
  %tobool25.not = icmp eq ptr %.pr, null
  br i1 %tobool25.not, label %if.end28, label %if.then26

if.then26:                                        ; preds = %if.end23
  tail call void @free(ptr noundef nonnull %.pr) #31
  %.pre.pre = load i32, ptr %items, align 8, !tbaa !26
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23
  %.pre = phi i32 [ %.pre.pre, %if.then26 ], [ %1, %if.end23 ]
  store ptr %call, ptr %a, align 8, !tbaa !23
  store i32 %add13, ptr %alloc, align 4, !tbaa !25
  br label %if.end39

if.else34:                                        ; preds = %if.then
  %conv = zext i16 %2 to i32
  %mul = mul i32 %1, %conv
  %add35 = add nuw i32 %n, 1
  %mul38 = mul i32 %add35, %conv
  br label %if.end39

if.end39:                                         ; preds = %if.end28, %if.else34
  %5 = phi i32 [ %.pre, %if.end28 ], [ %1, %if.else34 ]
  %mul4347 = phi i32 [ %mul39, %if.end28 ], [ %mul, %if.else34 ]
  %nsize.0 = phi i32 [ %mul16, %if.end28 ], [ %mul38, %if.else34 ]
  %cmp41.not = icmp ult i32 %n, %5
  br i1 %cmp41.not, label %if.end53, label %if.then43

if.then43:                                        ; preds = %if.end39
  %6 = load ptr, ptr %a, align 8, !tbaa !23
  %idx.ext = zext i32 %mul4347 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %6, i64 %idx.ext
  %sub = sub i32 %nsize.0, %mul4347
  %conv45 = zext i32 %sub to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr, i8 0, i64 %conv45, i1 false)
  %add46 = add i32 %n, 1
  store i32 %add46, ptr %items, align 8, !tbaa !26
  br label %if.end53

if.end53:                                         ; preds = %if.end39, %if.then43, %lor.lhs.false
  %7 = load ptr, ptr %a, align 8, !tbaa !23
  %esize55 = getelementptr inbounds nuw i8, ptr %a, i64 16
  %8 = load i16, ptr %esize55, align 8, !tbaa !27
  %conv56 = zext i16 %8 to i32
  %mul57 = mul i32 %n, %conv56
  %idx.ext58 = zext i32 %mul57 to i64
  %add.ptr59 = getelementptr inbounds nuw i8, ptr %7, i64 %idx.ext58
  br label %return

return:                                           ; preds = %if.then8, %if.end53
  %retval.3 = phi ptr [ %add.ptr59, %if.end53 ], [ null, %if.then8 ]
  ret ptr %retval.3
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @darray_delete(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #5 {
entry:
  %alloc.i = getelementptr inbounds nuw i8, ptr %a, i64 12
  %0 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.i = icmp ult i32 %n, %0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %items.i = getelementptr inbounds nuw i8, ptr %a, i64 8
  %1 = load i32, ptr %items.i, align 8, !tbaa !26
  %cmp1.i = icmp ult i32 %n, %1
  br i1 %cmp1.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %2 = load ptr, ptr %a, align 8, !tbaa !23
  %esize.i = getelementptr inbounds nuw i8, ptr %a, i64 16
  %3 = load i16, ptr %esize.i, align 8, !tbaa !27
  %conv.i = zext i16 %3 to i32
  %mul.i = mul i32 %n, %conv.i
  %idx.ext.i = zext i32 %mul.i to i64
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %2, i64 %idx.ext.i
  br label %darray_find.exit

if.end.i:                                         ; preds = %land.lhs.true.i, %entry
  %call.i = tail call ptr @Darray_find(ptr noundef nonnull %a, i32 noundef %n)
  br label %darray_find.exit

darray_find.exit:                                 ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %add.ptr.i, %if.then.i ], [ %call.i, %if.end.i ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %cleanup, label %if.then

if.then:                                          ; preds = %darray_find.exit
  %items = getelementptr inbounds nuw i8, ptr %a, i64 8
  %4 = load i32, ptr %items, align 8, !tbaa !26
  %tobool1.not = icmp eq i32 %4, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  %dec = add i32 %4, -1
  store i32 %dec, ptr %items, align 8, !tbaa !26
  %cmp13 = icmp ult i32 %n, %dec
  %esize = getelementptr inbounds nuw i8, ptr %a, i64 16
  %.pre = load i16, ptr %esize, align 8, !tbaa !27
  br i1 %cmp13, label %while.body, label %if.then2.while.end_crit_edge

if.then2.while.end_crit_edge:                     ; preds = %if.then2
  %.pre17 = zext i16 %.pre to i64
  br label %while.end

while.body:                                       ; preds = %if.then2, %while.body
  %5 = phi i16 [ %6, %while.body ], [ %.pre, %if.then2 ]
  %p.015 = phi ptr [ %add.ptr10, %while.body ], [ %retval.0.i, %if.then2 ]
  %n.addr.014 = phi i32 [ %inc, %while.body ], [ %n, %if.then2 ]
  %inc = add nuw i32 %n.addr.014, 1
  %idx.ext = zext i16 %5 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.015, i64 %idx.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %p.015, ptr align 1 %add.ptr, i64 %idx.ext, i1 false)
  %6 = load i16, ptr %esize, align 8, !tbaa !27
  %idx.ext9 = zext i16 %6 to i64
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %p.015, i64 %idx.ext9
  %7 = load i32, ptr %items, align 8, !tbaa !26
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !29

while.end:                                        ; preds = %while.body, %if.then2.while.end_crit_edge
  %conv12.pre-phi = phi i64 [ %.pre17, %if.then2.while.end_crit_edge ], [ %idx.ext9, %while.body ]
  %p.0.lcssa = phi ptr [ %retval.0.i, %if.then2.while.end_crit_edge ], [ %add.ptr10, %while.body ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %p.0.lcssa, i8 0, i64 %conv12.pre-phi, i1 false)
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @abort() #36
  unreachable

cleanup:                                          ; preds = %darray_find.exit, %while.end
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %darray_find.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @init_synth(i32 noundef %argc, ptr noundef captures(none) %argv) local_unnamed_addr #0 {
entry:
  %mSec_per_frame = alloca double, align 8
  %impulse = alloca i32, align 4
  %casc = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mSec_per_frame) #31
  store double 1.000000e+01, ptr %mSec_per_frame, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %impulse) #31
  store i32 0, ptr %impulse, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %casc) #31
  store i32 0, ptr %casc, align 4, !tbaa !10
  %0 = load i64, ptr @samp_rate, align 8, !tbaa !15
  store i64 %0, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 16), align 8, !tbaa !32
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 4), align 4, !tbaa !34
  store i64 2, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 32), align 8, !tbaa !35
  store i32 0, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 8), align 8, !tbaa !36
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.1.85, i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str.2.86, ptr noundef null, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @klatt_global, i64 4), ptr noundef nonnull @.str.3.87, ptr noundef nonnull @.str.69.810, ptr noundef null, ptr noundef nonnull %impulse, ptr noundef nonnull @.str.5.89, ptr noundef nonnull @.str.6.90, ptr noundef nonnull @.str.4.490, ptr noundef nonnull %casc, ptr noundef nonnull @.str.8.92, ptr noundef nonnull @.str.34.775, ptr noundef nonnull @.str.4.490, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @klatt_global, i64 8), ptr noundef nonnull @.str.10.94, ptr noundef nonnull @.str.33.774, ptr noundef nonnull @.str.20.479, ptr noundef nonnull %mSec_per_frame, ptr noundef nonnull @.str.13.97, ptr noundef nonnull @.str.8.749, ptr noundef nonnull @.str.4.490, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @def_pars, i64 168), ptr noundef nonnull @.str.15.99, ptr noundef nonnull @.str.64.805, ptr noundef nonnull @.str.4.490, ptr noundef nonnull @def_pars, ptr noundef nonnull @.str.17.101, ptr noundef null)
  %1 = load i32, ptr %casc, align 4, !tbaa !10
  %cmp = icmp sgt i32 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %conv = zext nneg i32 %1 to i64
  store i64 %conv, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 24), align 8, !tbaa !37
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %.sink = phi i32 [ 1, %if.then ], [ 2, %entry ]
  store i32 %.sink, ptr @klatt_global, align 8, !tbaa !38
  %2 = load i32, ptr %impulse, align 4, !tbaa !10
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end2, label %if.then1

if.then1:                                         ; preds = %if.end
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 32), align 8, !tbaa !35
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %if.end
  %3 = load i64, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 16), align 8, !tbaa !32
  %conv3 = sitofp i64 %3 to double
  %4 = load double, ptr %mSec_per_frame, align 8, !tbaa !30
  %mul = fmul double %4, %conv3
  %div = fdiv double %mul, 1.000000e+03
  %conv4 = fptosi double %div to i64
  store i64 %conv4, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 40), align 8, !tbaa !39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %casc) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %impulse) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mSec_per_frame) #31
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @dict_find(ptr noundef readnone captures(none) %s, i32 noundef %n) local_unnamed_addr #15 {
entry:
  ret ptr null
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @dict_init(i32 noundef returned %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #15 {
entry:
  ret i32 %argc
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @dict_term() local_unnamed_addr #15 {
entry:
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @getargs(ptr noundef %module, i32 noundef %argc, ptr noundef captures(none) %argv, ...) local_unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #31
  %cmp118 = icmp sgt i32 %argc, 0
  br i1 %cmp118, label %while.body.lr.ph, label %if.end219

while.body.lr.ph:                                 ; preds = %entry
  %overflow_arg_area_p = getelementptr inbounds nuw i8, ptr %ap, i64 8
  %0 = getelementptr inbounds nuw i8, ptr %ap, i64 16
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %if.end212
  %argc.addr.0121 = phi i32 [ %argc, %while.body.lr.ph ], [ %argc.addr.2, %if.end212 ]
  %i.0120 = phi i32 [ 0, %while.body.lr.ph ], [ %i.2, %if.end212 ]
  %done_module.0119 = phi i32 [ 0, %while.body.lr.ph ], [ %done_module.7, %if.end212 ]
  %idxprom = sext i32 %i.0120 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %2 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else210, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %3 = load i8, ptr %1, align 1, !tbaa !5
  %cmp4 = icmp eq i8 %3, 43
  switch i8 %3, label %if.else210 [
    i8 45, label %if.then
    i8 43, label %if.then
  ]

if.then:                                          ; preds = %land.lhs.true, %land.lhs.true
  %4 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool7.not182 = icmp eq i8 %4, 0
  br i1 %tobool7.not182, label %while.end195, label %while.body8

while.body8:                                      ; preds = %if.then, %while.end
  %done_module.1185 = phi i32 [ %done_module.3.ph, %while.end ], [ %done_module.0119, %if.then ]
  %s.0184 = phi ptr [ %incdec.ptr180, %while.end ], [ %incdec.ptr, %if.then ]
  %off.0183 = phi i32 [ %off.3, %while.end ], [ 1, %if.then ]
  call void @llvm.va_start.p0(ptr nonnull %ap)
  br label %while.cond9.outer

while.cond9.outer:                                ; preds = %while.cond9.outer.backedge, %while.body8
  %done_module.3.ph = phi i32 [ %done_module.1185, %while.body8 ], [ %inc, %while.cond9.outer.backedge ]
  %reg_save_area = load ptr, ptr %0, align 16
  %reg_save_area19 = load ptr, ptr %0, align 16
  %reg_save_area31 = load ptr, ptr %0, align 16
  %reg_save_area43 = load ptr, ptr %0, align 16
  br label %while.cond9

while.cond9:                                      ; preds = %while.cond9.backedge, %while.cond9.outer
  %gp_offset = load i32, ptr %ap, align 16
  %fits_in_gp = icmp ult i32 %gp_offset, 41
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem

vaarg.in_reg:                                     ; preds = %while.cond9
  %5 = zext nneg i32 %gp_offset to i64
  %6 = getelementptr i8, ptr %reg_save_area, i64 %5
  %7 = add nuw nsw i32 %gp_offset, 8
  store i32 %7, ptr %ap, align 16
  br label %vaarg.end

vaarg.in_mem:                                     ; preds = %while.cond9
  %overflow_arg_area = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next = getelementptr i8, ptr %overflow_arg_area, i64 8
  store ptr %overflow_arg_area.next, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %gp_offset28.pr = phi i32 [ %7, %vaarg.in_reg ], [ %gp_offset, %vaarg.in_mem ]
  %vaarg.addr = phi ptr [ %6, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %8 = load ptr, ptr %vaarg.addr, align 8, !tbaa !12
  %tobool11.not = icmp eq ptr %8, null
  br i1 %tobool11.not, label %while.end195.thread, label %while.body12

while.end195.thread:                              ; preds = %vaarg.end
  call void @llvm.va_end.p0(ptr nonnull %ap)
  br label %if.else207

while.body12:                                     ; preds = %vaarg.end
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #32
  %conv13 = trunc i64 %call to i32
  %fits_in_gp17 = icmp ult i32 %gp_offset28.pr, 41
  br i1 %fits_in_gp17, label %vaarg.end24, label %vaarg.end24.thread

vaarg.end24.thread:                               ; preds = %while.body12
  %overflow_arg_area22 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next23 = getelementptr i8, ptr %overflow_arg_area22, i64 8
  store ptr %overflow_arg_area.next23, ptr %overflow_arg_area_p, align 8
  %9 = load ptr, ptr %overflow_arg_area22, align 8, !tbaa !12
  br label %vaarg.end36.thread

vaarg.end24:                                      ; preds = %while.body12
  %10 = zext nneg i32 %gp_offset28.pr to i64
  %11 = getelementptr i8, ptr %reg_save_area19, i64 %10
  %12 = add nuw nsw i32 %gp_offset28.pr, 8
  store i32 %12, ptr %ap, align 16
  %13 = load ptr, ptr %11, align 8, !tbaa !12
  %fits_in_gp29 = icmp ult i32 %gp_offset28.pr, 33
  br i1 %fits_in_gp29, label %vaarg.end36, label %vaarg.end36.thread

vaarg.end36.thread:                               ; preds = %vaarg.end24, %vaarg.end24.thread
  %14 = phi ptr [ %9, %vaarg.end24.thread ], [ %13, %vaarg.end24 ]
  %overflow_arg_area34 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next35 = getelementptr i8, ptr %overflow_arg_area34, i64 8
  store ptr %overflow_arg_area.next35, ptr %overflow_arg_area_p, align 8
  %15 = load ptr, ptr %overflow_arg_area34, align 8, !tbaa !17
  br label %vaarg.in_mem44

vaarg.end36:                                      ; preds = %vaarg.end24
  %16 = zext nneg i32 %12 to i64
  %17 = getelementptr i8, ptr %reg_save_area31, i64 %16
  %18 = add nuw nsw i32 %gp_offset28.pr, 16
  store i32 %18, ptr %ap, align 16
  %19 = load ptr, ptr %17, align 8, !tbaa !17
  %fits_in_gp41 = icmp ult i32 %gp_offset28.pr, 25
  br i1 %fits_in_gp41, label %vaarg.in_reg42, label %vaarg.in_mem44

vaarg.in_reg42:                                   ; preds = %vaarg.end36
  %20 = zext nneg i32 %18 to i64
  %21 = getelementptr i8, ptr %reg_save_area43, i64 %20
  %22 = add nuw nsw i32 %gp_offset28.pr, 24
  store i32 %22, ptr %ap, align 16
  br label %vaarg.end48

vaarg.in_mem44:                                   ; preds = %vaarg.end36.thread, %vaarg.end36
  %23 = phi ptr [ %15, %vaarg.end36.thread ], [ %19, %vaarg.end36 ]
  %24 = phi ptr [ %14, %vaarg.end36.thread ], [ %13, %vaarg.end36 ]
  %overflow_arg_area46 = load ptr, ptr %overflow_arg_area_p, align 8
  %overflow_arg_area.next47 = getelementptr i8, ptr %overflow_arg_area46, i64 8
  store ptr %overflow_arg_area.next47, ptr %overflow_arg_area_p, align 8
  br label %vaarg.end48

vaarg.end48:                                      ; preds = %vaarg.in_mem44, %vaarg.in_reg42
  %25 = phi ptr [ %19, %vaarg.in_reg42 ], [ %23, %vaarg.in_mem44 ]
  %26 = phi ptr [ %13, %vaarg.in_reg42 ], [ %24, %vaarg.in_mem44 ]
  %vaarg.addr49 = phi ptr [ %21, %vaarg.in_reg42 ], [ %overflow_arg_area46, %vaarg.in_mem44 ]
  %27 = load ptr, ptr %vaarg.addr49, align 8, !tbaa !12
  %call50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s.0184, ptr noundef nonnull dereferenceable(6) @.str.1.447) #32
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.else86

if.then52:                                        ; preds = %vaarg.end48
  store i32 1, ptr @help_only, align 4, !tbaa !10
  %inc = add nsw i32 %done_module.3.ph, 1
  %tobool53.not = icmp eq i32 %done_module.3.ph, 0
  br i1 %tobool53.not, label %if.then54, label %if.end

if.then54:                                        ; preds = %if.then52
  %28 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.2.448, ptr noundef %module) #35
  br label %if.end

if.end:                                           ; preds = %if.then54, %if.then52
  %tobool56.not = icmp eq ptr %26, null
  br i1 %tobool56.not, label %if.else81, label %if.then57

if.then57:                                        ; preds = %if.end
  %call58 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 37) #32
  %tobool59.not = icmp eq ptr %call58, null
  %29 = load ptr, ptr @stderr, align 8, !tbaa !21
  br i1 %tobool59.not, label %if.else77, label %if.then60

if.then60:                                        ; preds = %if.then57
  %add.ptr = getelementptr inbounds nuw i8, ptr %call58, i64 1
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.3.449, ptr noundef nonnull %8, ptr noundef nonnull %add.ptr) #35
  %call62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call58) #32
  %add.ptr63 = getelementptr inbounds nuw i8, ptr %call58, i64 %call62
  %add.ptr64 = getelementptr inbounds i8, ptr %add.ptr63, i64 -1
  %30 = load i8, ptr %add.ptr64, align 1, !tbaa !5
  switch i8 %30, label %sw.epilog [
    i8 101, label %sw.bb
    i8 102, label %sw.bb
    i8 103, label %sw.bb
    i8 117, label %sw.bb67
    i8 100, label %sw.bb67
  ]

sw.bb:                                            ; preds = %if.then60, %if.then60, %if.then60
  %31 = load ptr, ptr @stderr, align 8, !tbaa !21
  %32 = load double, ptr %25, align 8, !tbaa !30
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull %26, double noundef %32) #35
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then60, %if.then60
  %33 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %cmp70 = icmp eq i8 %33, 108
  %34 = load ptr, ptr @stderr, align 8, !tbaa !21
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %sw.bb67
  %35 = load i64, ptr %25, align 8, !tbaa !15
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull %26, i64 noundef %35) #35
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb67
  %36 = load i32, ptr %25, align 4, !tbaa !10
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull %26, i32 noundef %36) #35
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then72, %if.else, %sw.bb, %if.then60
  %37 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.4.450, ptr noundef %27) #35
  br label %while.cond9.outer.backedge

if.else77:                                        ; preds = %if.then57
  %38 = load ptr, ptr %25, align 8, !tbaa !12
  %tobool78.not = icmp eq ptr %38, null
  %spec.select = select i1 %tobool78.not, ptr @.str.8.467, ptr %38
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.5.452, ptr noundef nonnull %8, ptr noundef nonnull %spec.select, ptr noundef %27) #35
  br label %while.cond9.outer.backedge

if.else81:                                        ; preds = %if.end
  %39 = load ptr, ptr @stderr, align 8, !tbaa !21
  %40 = load i32, ptr %25, align 4, !tbaa !10
  %tobool82.not = icmp eq i32 %40, 0
  %cond83 = select i1 %tobool82.not, ptr @.str.9.454, ptr @.str.8.453
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.7.455, ptr noundef nonnull %8, ptr noundef nonnull %cond83, ptr noundef %27) #35
  br label %while.cond9.outer.backedge

while.cond9.outer.backedge:                       ; preds = %if.else81, %if.else77, %sw.epilog
  br label %while.cond9.outer

if.else86:                                        ; preds = %vaarg.end48
  %cmp87 = icmp sgt i32 %conv13, 1
  br i1 %cmp87, label %land.lhs.true91, label %if.else132

land.lhs.true91:                                  ; preds = %if.else86
  %call92 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s.0184, ptr noundef nonnull dereferenceable(1) %8) #32
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %while.cond9.backedge

if.then94:                                        ; preds = %land.lhs.true91
  %tobool95.not = icmp eq ptr %26, null
  br i1 %tobool95.not, label %if.else121, label %if.then96

if.then96:                                        ; preds = %if.then94
  %add = add nsw i32 %off.0183, %i.0120
  %cmp97 = icmp slt i32 %add, %argc.addr.0121
  br i1 %cmp97, label %if.then99, label %if.else117

if.then99:                                        ; preds = %if.then96
  %inc101 = add nsw i32 %off.0183, 1
  %idxprom103 = sext i32 %add to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom103
  %41 = load ptr, ptr %arrayidx104, align 8, !tbaa !12
  %call105 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 37) #32
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %if.else115, label %if.then107

if.then107:                                       ; preds = %if.then99
  %call108 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %41, ptr noundef nonnull %26, ptr noundef %25) #31
  %cmp109.not = icmp eq i32 %call108, 1
  br i1 %cmp109.not, label %if.end128, label %if.then111

if.then111:                                       ; preds = %if.then107
  %42 = load ptr, ptr @stderr, align 8, !tbaa !21
  %43 = load ptr, ptr %argv, align 8, !tbaa !12
  %call113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.10.456, ptr noundef %43, ptr noundef %41, ptr noundef nonnull %8) #35
  br label %if.end128

if.else115:                                       ; preds = %if.then99
  store ptr %41, ptr %25, align 8, !tbaa !12
  br label %if.end128

if.else117:                                       ; preds = %if.then96
  %44 = load ptr, ptr @stderr, align 8, !tbaa !21
  %45 = load ptr, ptr %argv, align 8, !tbaa !12
  %call119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.11.457, ptr noundef %45, ptr noundef nonnull %8) #35
  br label %if.end128

if.else121:                                       ; preds = %if.then94
  br i1 %cmp4, label %if.then124, label %if.else125

if.then124:                                       ; preds = %if.else121
  store i32 1, ptr %25, align 4, !tbaa !10
  br label %if.end128

if.else125:                                       ; preds = %if.else121
  %46 = load i32, ptr %25, align 4, !tbaa !10
  %tobool126.not = icmp eq i32 %46, 0
  %lnot.ext = zext i1 %tobool126.not to i32
  store i32 %lnot.ext, ptr %25, align 4, !tbaa !10
  br label %if.end128

if.end128:                                        ; preds = %if.else115, %if.then111, %if.then107, %if.then124, %if.else125, %if.else117
  %off.4 = phi i32 [ %off.0183, %if.else117 ], [ %off.0183, %if.then124 ], [ %off.0183, %if.else125 ], [ %inc101, %if.then107 ], [ %inc101, %if.then111 ], [ %inc101, %if.else115 ]
  %idx.ext = and i64 %call, 2147483647
  br label %while.end

if.else132:                                       ; preds = %if.else86
  %47 = load i8, ptr %s.0184, align 1, !tbaa !5
  %48 = load i8, ptr %8, align 1, !tbaa !5
  %cmp135 = icmp eq i8 %47, %48
  br i1 %cmp135, label %if.then137, label %while.cond9.backedge

while.cond9.backedge:                             ; preds = %if.else132, %land.lhs.true91
  br label %while.cond9

if.then137:                                       ; preds = %if.else132
  %tobool138.not = icmp eq ptr %26, null
  br i1 %tobool138.not, label %if.else165, label %if.then139

if.then139:                                       ; preds = %if.then137
  %add140 = add nsw i32 %off.0183, %i.0120
  %cmp141 = icmp slt i32 %add140, %argc.addr.0121
  br i1 %cmp141, label %if.then143, label %if.else161

if.then143:                                       ; preds = %if.then139
  %inc145 = add nsw i32 %off.0183, 1
  %idxprom147 = sext i32 %add140 to i64
  %arrayidx148 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom147
  %49 = load ptr, ptr %arrayidx148, align 8, !tbaa !12
  %call149 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 37) #32
  %tobool150.not = icmp eq ptr %call149, null
  br i1 %tobool150.not, label %if.else159, label %if.then151

if.then151:                                       ; preds = %if.then143
  %call152 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %49, ptr noundef nonnull %26, ptr noundef %25) #31
  %cmp153.not = icmp eq i32 %call152, 1
  br i1 %cmp153.not, label %while.end, label %if.then155

if.then155:                                       ; preds = %if.then151
  %50 = load ptr, ptr @stderr, align 8, !tbaa !21
  %51 = load ptr, ptr %argv, align 8, !tbaa !12
  %call157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.10.456, ptr noundef %51, ptr noundef %49, ptr noundef nonnull %8) #35
  br label %while.end

if.else159:                                       ; preds = %if.then143
  store ptr %49, ptr %25, align 8, !tbaa !12
  br label %while.end

if.else161:                                       ; preds = %if.then139
  %52 = load ptr, ptr @stderr, align 8, !tbaa !21
  %53 = load ptr, ptr %argv, align 8, !tbaa !12
  %call163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.11.457, ptr noundef %53, ptr noundef nonnull %8) #35
  br label %while.end

if.else165:                                       ; preds = %if.then137
  br i1 %cmp4, label %if.then170, label %if.else173

if.then170:                                       ; preds = %if.else165
  store i32 1, ptr %25, align 4, !tbaa !10
  br label %while.end

if.else173:                                       ; preds = %if.else165
  %54 = load i32, ptr %25, align 4, !tbaa !10
  %tobool174.not = icmp eq i32 %54, 0
  %lnot.ext176 = zext i1 %tobool174.not to i32
  store i32 %lnot.ext176, ptr %25, align 4, !tbaa !10
  br label %while.end

while.end:                                        ; preds = %if.else161, %if.else173, %if.then170, %if.then151, %if.then155, %if.else159, %if.end128
  %.sink = phi i64 [ %idx.ext, %if.end128 ], [ 1, %if.else159 ], [ 1, %if.then155 ], [ 1, %if.then151 ], [ 1, %if.then170 ], [ 1, %if.else173 ], [ 1, %if.else161 ]
  %off.3 = phi i32 [ %off.4, %if.end128 ], [ %inc145, %if.else159 ], [ %inc145, %if.then155 ], [ %inc145, %if.then151 ], [ %off.0183, %if.then170 ], [ %off.0183, %if.else173 ], [ %off.0183, %if.else161 ]
  %incdec.ptr180 = getelementptr inbounds nuw i8, ptr %s.0184, i64 %.sink
  call void @llvm.va_end.p0(ptr nonnull %ap)
  %55 = load i8, ptr %incdec.ptr180, align 1, !tbaa !5
  %tobool7.not = icmp eq i8 %55, 0
  br i1 %tobool7.not, label %while.end195, label %while.body8

while.end195:                                     ; preds = %while.end, %if.then
  %off.0.lcssa = phi i32 [ 1, %if.then ], [ %off.3, %while.end ]
  %done_module.1.lcssa = phi i32 [ %done_module.0119, %if.then ], [ %done_module.3.ph, %while.end ]
  %cmp196.not = icmp eq i32 %off.0.lcssa, 0
  br i1 %cmp196.not, label %if.else207, label %if.then198

if.then198:                                       ; preds = %while.end195
  %sub = sub nsw i32 %argc.addr.0121, %off.0.lcssa
  %cmp199.not116 = icmp sgt i32 %i.0120, %sub
  br i1 %cmp199.not116, label %if.end212, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then198
  %56 = sext i32 %off.0.lcssa to i64
  %57 = add i32 %argc.addr.0121, 1
  %58 = sub i32 %57, %off.0.lcssa
  %invariant.gep = getelementptr ptr, ptr %argv, i64 %56
  %59 = add i32 %off.0.lcssa, %i.0120
  %60 = sub i32 %argc.addr.0121, %59
  %61 = zext i32 %60 to i64
  %62 = add nuw nsw i64 %61, 1
  %min.iters.check = icmp ult i32 %60, 3
  %63 = mul nsw i64 %56, -8
  %diff.check = icmp ult i64 %63, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %for.body.preheader187, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %62, 8589934590
  %64 = add nsw i64 %n.vec, %idxprom
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %idxprom
  %65 = getelementptr ptr, ptr %invariant.gep, i64 %offset.idx
  %wide.load = load <2 x ptr>, ptr %65, align 8, !tbaa !12
  %66 = getelementptr inbounds ptr, ptr %argv, i64 %offset.idx
  store <2 x ptr> %wide.load, ptr %66, align 8, !tbaa !12
  %index.next = add nuw i64 %index, 2
  %67 = icmp eq i64 %index.next, %n.vec
  br i1 %67, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %62, %n.vec
  br i1 %cmp.n, label %if.end212, label %for.body.preheader187

for.body.preheader187:                            ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %idxprom, %for.body.preheader ], [ %64, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader187, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader187 ]
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv
  %68 = load ptr, ptr %gep, align 8, !tbaa !12
  %arrayidx205 = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv
  store ptr %68, ptr %arrayidx205, align 8, !tbaa !12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %58, %lftr.wideiv
  br i1 %exitcond.not, label %if.end212, label %for.body, !llvm.loop !43

if.else207:                                       ; preds = %while.end195.thread, %while.end195
  %done_module.2152 = phi i32 [ %done_module.3.ph, %while.end195.thread ], [ %done_module.1.lcssa, %while.end195 ]
  %inc208 = add nsw i32 %i.0120, 1
  br label %if.end212

if.else210:                                       ; preds = %land.lhs.true, %while.body
  %inc211 = add nsw i32 %i.0120, 1
  br label %if.end212

if.end212:                                        ; preds = %for.body, %middle.block, %if.then198, %if.else207, %if.else210
  %done_module.7 = phi i32 [ %done_module.0119, %if.else210 ], [ %done_module.2152, %if.else207 ], [ %done_module.1.lcssa, %if.then198 ], [ %done_module.1.lcssa, %middle.block ], [ %done_module.1.lcssa, %for.body ]
  %i.2 = phi i32 [ %inc211, %if.else210 ], [ %inc208, %if.else207 ], [ %i.0120, %if.then198 ], [ %i.0120, %middle.block ], [ %i.0120, %for.body ]
  %argc.addr.2 = phi i32 [ %argc.addr.0121, %if.else210 ], [ %argc.addr.0121, %if.else207 ], [ %sub, %if.then198 ], [ %sub, %middle.block ], [ %sub, %for.body ]
  %cmp = icmp slt i32 %i.2, %argc.addr.2
  br i1 %cmp, label %while.body, label %while.end213, !llvm.loop !44

while.end213:                                     ; preds = %if.end212
  %69 = icmp ne i32 %done_module.7, 0
  %70 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool214 = icmp ne i32 %70, 0
  %or.cond2 = select i1 %tobool214, i1 %69, i1 false
  br i1 %or.cond2, label %if.then217, label %if.end219

if.then217:                                       ; preds = %while.end213
  %71 = load ptr, ptr @stderr, align 8, !tbaa !21
  %fputc = call i32 @fputc(i32 10, ptr %71)
  br label %if.end219

if.end219:                                        ; preds = %entry, %if.then217, %while.end213
  %argc.addr.0.lcssa157 = phi i32 [ %argc.addr.2, %if.then217 ], [ %argc.addr.2, %while.end213 ], [ %argc, %entry ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #31
  ret i32 %argc.addr.0.lcssa157
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @__isoc99_sscanf(ptr noundef readonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #16

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @holmes(i32 noundef %nelm, ptr noundef readonly captures(none) %elm, i32 %nsamp, ptr noundef %samp_base) local_unnamed_addr #0 {
entry:
  %flt = alloca [19 x %struct.filter_t], align 16
  %pars = alloca %struct.klatt_frame_t, align 8
  %start = alloca [19 x %struct.slope_t], align 16
  %end = alloca [19 x %struct.slope_t], align 16
  %tp = alloca [19 x float], align 16
  call void @llvm.lifetime.start.p0(i64 228, ptr nonnull %flt) #31
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %pars) #31
  %0 = load i64, ptr @def_pars, align 8, !tbaa !45
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %pars, ptr noundef nonnull align 8 dereferenceable(320) @def_pars, i64 320, i1 false), !tbaa.struct !47
  %1 = load float, ptr getelementptr inbounds nuw (i8, ptr @Elements, i64 40), align 8, !tbaa !48
  %conv2 = fptosi float %1 to i64
  %FNPhz = getelementptr inbounds nuw i8, ptr %pars, i64 128
  store i64 %conv2, ptr %FNPhz, align 8, !tbaa !51
  %B1hz = getelementptr inbounds nuw i8, ptr %pars, i64 24
  store i64 60, ptr %B1hz, align 8, !tbaa !52
  %B1phz = getelementptr inbounds nuw i8, ptr %pars, i64 200
  store i64 60, ptr %B1phz, align 8, !tbaa !53
  %B2hz = getelementptr inbounds nuw i8, ptr %pars, i64 40
  store i64 90, ptr %B2hz, align 8, !tbaa !54
  %B2phz = getelementptr inbounds nuw i8, ptr %pars, i64 216
  store i64 90, ptr %B2phz, align 8, !tbaa !55
  %B3hz = getelementptr inbounds nuw i8, ptr %pars, i64 56
  store i64 150, ptr %B3hz, align 8, !tbaa !56
  %B3phz = getelementptr inbounds nuw i8, ptr %pars, i64 232
  store i64 150, ptr %B3phz, align 8, !tbaa !57
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @def_pars, i64 248), align 8, !tbaa !58
  %B4phz = getelementptr inbounds nuw i8, ptr %pars, i64 248
  store i64 %2, ptr %B4phz, align 8, !tbaa !58
  tail call void @parwave_init(ptr noundef nonnull @klatt_global)
  %3 = load double, ptr @frac, align 8, !tbaa !30
  %conv11 = fptrunc double %3 to float
  %sub = fsub float 1.000000e+00, %conv11
  br label %for.body

while.cond.preheader:                             ; preds = %for.body
  %cmp17315.not = icmp eq i32 %nelm, 0
  br i1 %cmp17315.not, label %while.end353, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %while.cond.preheader
  %conv = sitofp i64 %0 to double
  %mul = fmul double %conv, 1.100000e+00
  %conv1 = fptrunc double %mul to float
  %arrayidx240 = getelementptr inbounds nuw i8, ptr %tp, i64 60
  %AVpdb = getelementptr inbounds nuw i8, ptr %pars, i64 304
  %AVdb = getelementptr inbounds nuw i8, ptr %pars, i64 8
  %arrayidx242 = getelementptr inbounds nuw i8, ptr %tp, i64 72
  %AF = getelementptr inbounds nuw i8, ptr %pars, i64 176
  %FNZhz = getelementptr inbounds nuw i8, ptr %pars, i64 112
  %arrayidx246 = getelementptr inbounds nuw i8, ptr %tp, i64 68
  %ASP = getelementptr inbounds nuw i8, ptr %pars, i64 144
  %arrayidx248 = getelementptr inbounds nuw i8, ptr %tp, i64 64
  %Aturb = getelementptr inbounds nuw i8, ptr %pars, i64 160
  %arrayidx250 = getelementptr inbounds nuw i8, ptr %tp, i64 16
  %arrayidx254 = getelementptr inbounds nuw i8, ptr %tp, i64 20
  %arrayidx258 = getelementptr inbounds nuw i8, ptr %tp, i64 24
  %arrayidx262 = getelementptr inbounds nuw i8, ptr %tp, i64 4
  %F1hz = getelementptr inbounds nuw i8, ptr %pars, i64 16
  %arrayidx264 = getelementptr inbounds nuw i8, ptr %tp, i64 8
  %F2hz = getelementptr inbounds nuw i8, ptr %pars, i64 32
  %arrayidx266 = getelementptr inbounds nuw i8, ptr %tp, i64 12
  %F3hz = getelementptr inbounds nuw i8, ptr %pars, i64 48
  %arrayidx268 = getelementptr inbounds nuw i8, ptr %tp, i64 56
  %AB = getelementptr inbounds nuw i8, ptr %pars, i64 296
  %arrayidx271 = getelementptr inbounds nuw i8, ptr %tp, i64 48
  %A5 = getelementptr inbounds nuw i8, ptr %pars, i64 256
  %arrayidx274 = getelementptr inbounds nuw i8, ptr %tp, i64 52
  %A6 = getelementptr inbounds nuw i8, ptr %pars, i64 272
  %arrayidx277 = getelementptr inbounds nuw i8, ptr %tp, i64 32
  %A1 = getelementptr inbounds nuw i8, ptr %pars, i64 192
  %arrayidx280 = getelementptr inbounds nuw i8, ptr %tp, i64 36
  %A2 = getelementptr inbounds nuw i8, ptr %pars, i64 208
  %arrayidx283 = getelementptr inbounds nuw i8, ptr %tp, i64 40
  %A3 = getelementptr inbounds nuw i8, ptr %pars, i64 224
  %arrayidx286 = getelementptr inbounds nuw i8, ptr %tp, i64 44
  %A4 = getelementptr inbounds nuw i8, ptr %pars, i64 240
  %arrayidx5.i = getelementptr inbounds nuw i8, ptr %tp, i64 28
  br label %while.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %arrayidx6 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr getelementptr inbounds nuw (i8, ptr @Elements, i64 40), i64 0, i64 %indvars.iv
  %4 = load float, ptr %arrayidx6, align 4, !tbaa !48
  %arrayidx9 = getelementptr inbounds nuw [19 x %struct.filter_t], ptr %flt, i64 0, i64 %indvars.iv
  %v10 = getelementptr inbounds nuw i8, ptr %arrayidx9, i64 8
  store float %4, ptr %v10, align 4, !tbaa !59
  store float %conv11, ptr %arrayidx9, align 4, !tbaa !61
  %b = getelementptr inbounds nuw i8, ptr %arrayidx9, i64 4
  store float %sub, ptr %b, align 4, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 19
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body, !llvm.loop !63

while.body:                                       ; preds = %while.body.lr.ph, %if.end352
  %samp.0323 = phi ptr [ %samp_base, %while.body.lr.ph ], [ %samp.1, %if.end352 ]
  %le.0322 = phi ptr [ @Elements, %while.body.lr.ph ], [ %arrayidx23, %if.end352 ]
  %i.0321 = phi i32 [ 0, %while.body.lr.ph ], [ %inc28, %if.end352 ]
  %tstress.0320 = phi i32 [ 0, %while.body.lr.ph ], [ %tstress.1, %if.end352 ]
  %ntstress.0319 = phi i32 [ 0, %while.body.lr.ph ], [ %ntstress.1, %if.end352 ]
  %top.0318 = phi float [ %conv1, %while.body.lr.ph ], [ %top.1, %if.end352 ]
  %stress_e.sroa.0.0317 = phi float [ 0.000000e+00, %while.body.lr.ph ], [ %stress_e.sroa.0.1, %if.end352 ]
  %stress_s.sroa.0.0316 = phi float [ undef, %while.body.lr.ph ], [ %stress_s.sroa.0.1, %if.end352 ]
  %inc19 = add nuw i32 %i.0321, 1
  %idxprom20 = zext i32 %i.0321 to i64
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom20
  %5 = load i8, ptr %arrayidx21, align 1, !tbaa !5
  %idxprom22 = zext i8 %5 to i64
  %arrayidx23 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom22
  %idxprom25 = zext i32 %inc19 to i64
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom25
  %6 = load i8, ptr %arrayidx26, align 1, !tbaa !5
  %conv27 = zext i8 %6 to i32
  %inc28 = add i32 %i.0321, 3
  %cmp29.not = icmp eq i8 %6, 0
  br i1 %cmp29.not, label %if.end352, label %if.then

if.then:                                          ; preds = %while.body
  %cmp31 = icmp ult i32 %inc28, %nelm
  br i1 %cmp31, label %cond.true, label %cond.end

cond.true:                                        ; preds = %if.then
  %idxprom33 = zext i32 %inc28 to i64
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom33
  %7 = load i8, ptr %arrayidx34, align 1, !tbaa !5
  %idxprom35 = zext i8 %7 to i64
  %arrayidx36 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom35
  br label %cond.end

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi ptr [ %arrayidx36, %cond.true ], [ @Elements, %if.then ]
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %start) #31
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %end) #31
  %rk = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 8
  %8 = load i8, ptr %rk, align 8, !tbaa !64
  %rk39 = getelementptr inbounds nuw i8, ptr %le.0322, i64 8
  %9 = load i8, ptr %rk39, align 8, !tbaa !64
  %cmp41 = icmp sgt i8 %8, %9
  %10 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool.not = icmp eq ptr %10, null
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %cond.end
  br i1 %tobool.not, label %if.end, label %if.then44

if.then44:                                        ; preds = %if.then43
  %11 = load ptr, ptr %le.0322, align 8, !tbaa !66
  %12 = load ptr, ptr %arrayidx23, align 16, !tbaa !66
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.1.460, ptr noundef %11, ptr noundef %12) #31
  br label %if.end

if.end:                                           ; preds = %if.then44, %if.then43
  %p.i = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 40
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 50
  %p20.i = getelementptr inbounds nuw i8, ptr %le.0322, i64 40
  %13 = load i32, ptr @speed, align 4, !tbaa !10
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.end
  %indvars.iv.i = phi i64 [ 0, %if.end ], [ %indvars.iv.next.i, %for.inc.i ]
  %14 = mul nuw nsw i64 %indvars.iv.i, 12
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %14
  %cond.in.i = load i8, ptr %gep.i, align 2, !tbaa !5
  %cond.i = sext i8 %cond.in.i to i32
  %mul.i = mul nsw i32 %13, %cond.i
  %arrayidx6.i = getelementptr inbounds nuw %struct.slope_t, ptr %start, i64 %indvars.iv.i
  %t7.i = getelementptr inbounds nuw i8, ptr %arrayidx6.i, i64 4
  store i32 %mul.i, ptr %t7.i, align 4, !tbaa !67
  %tobool11.not.i = icmp eq i32 %mul.i, 0
  br i1 %tobool11.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %arrayidx14.i = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p.i, i64 0, i64 %indvars.iv.i
  %fixd.i = getelementptr inbounds nuw i8, ptr %arrayidx14.i, i64 4
  %15 = load float, ptr %fixd.i, align 4, !tbaa !69
  %prop.i = getelementptr inbounds nuw i8, ptr %arrayidx14.i, i64 8
  %16 = load i8, ptr %prop.i, align 4, !tbaa !70
  %conv19.i = sitofp i8 %16 to float
  %arrayidx22.i = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20.i, i64 0, i64 %indvars.iv.i
  %17 = load float, ptr %arrayidx22.i, align 4, !tbaa !48
  %mul23.i = fmul float %17, %conv19.i
  %18 = tail call float @llvm.fmuladd.f32(float %mul23.i, float 0x3F847AE140000000, float %15)
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %arrayidx29.i = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20.i, i64 0, i64 %indvars.iv.i
  %19 = load float, ptr %arrayidx29.i, align 4, !tbaa !48
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi float [ %19, %if.else.i ], [ %18, %if.then.i ]
  store float %storemerge.i, ptr %arrayidx6.i, align 8, !tbaa !71
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 19
  br i1 %exitcond.not.i, label %if.end53, label %for.body.i, !llvm.loop !72

if.else:                                          ; preds = %cond.end
  br i1 %tobool.not, label %if.end51, label %if.then47

if.then47:                                        ; preds = %if.else
  %20 = load ptr, ptr %le.0322, align 8, !tbaa !66
  %21 = load ptr, ptr %arrayidx23, align 16, !tbaa !66
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.2.461, ptr noundef %20, ptr noundef %21) #31
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.else
  %p.i119 = getelementptr inbounds nuw i8, ptr %le.0322, i64 40
  %invariant.gep.i120 = getelementptr inbounds nuw i8, ptr %le.0322, i64 49
  %p20.i121 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 40
  %22 = load i32, ptr @speed, align 4, !tbaa !10
  br label %for.body.i122

for.body.i122:                                    ; preds = %for.inc.i138, %if.end51
  %indvars.iv.i123 = phi i64 [ 0, %if.end51 ], [ %indvars.iv.next.i140, %for.inc.i138 ]
  %23 = mul nuw nsw i64 %indvars.iv.i123, 12
  %gep.i124 = getelementptr inbounds nuw i8, ptr %invariant.gep.i120, i64 %23
  %cond.in.i125 = load i8, ptr %gep.i124, align 1, !tbaa !5
  %cond.i126 = sext i8 %cond.in.i125 to i32
  %mul.i127 = mul nsw i32 %22, %cond.i126
  %arrayidx6.i128 = getelementptr inbounds nuw %struct.slope_t, ptr %start, i64 %indvars.iv.i123
  %t7.i129 = getelementptr inbounds nuw i8, ptr %arrayidx6.i128, i64 4
  store i32 %mul.i127, ptr %t7.i129, align 4, !tbaa !67
  %tobool11.not.i130 = icmp eq i32 %mul.i127, 0
  br i1 %tobool11.not.i130, label %if.else.i142, label %if.then.i131

if.then.i131:                                     ; preds = %for.body.i122
  %arrayidx14.i132 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p.i119, i64 0, i64 %indvars.iv.i123
  %fixd.i133 = getelementptr inbounds nuw i8, ptr %arrayidx14.i132, i64 4
  %24 = load float, ptr %fixd.i133, align 4, !tbaa !69
  %prop.i134 = getelementptr inbounds nuw i8, ptr %arrayidx14.i132, i64 8
  %25 = load i8, ptr %prop.i134, align 4, !tbaa !70
  %conv19.i135 = sitofp i8 %25 to float
  %arrayidx22.i136 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20.i121, i64 0, i64 %indvars.iv.i123
  %26 = load float, ptr %arrayidx22.i136, align 4, !tbaa !48
  %mul23.i137 = fmul float %26, %conv19.i135
  %27 = tail call float @llvm.fmuladd.f32(float %mul23.i137, float 0x3F847AE140000000, float %24)
  br label %for.inc.i138

if.else.i142:                                     ; preds = %for.body.i122
  %arrayidx29.i143 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20.i121, i64 0, i64 %indvars.iv.i123
  %28 = load float, ptr %arrayidx29.i143, align 4, !tbaa !48
  br label %for.inc.i138

for.inc.i138:                                     ; preds = %if.else.i142, %if.then.i131
  %storemerge.i139 = phi float [ %28, %if.else.i142 ], [ %27, %if.then.i131 ]
  store float %storemerge.i139, ptr %arrayidx6.i128, align 8, !tbaa !71
  %indvars.iv.next.i140 = add nuw nsw i64 %indvars.iv.i123, 1
  %exitcond.not.i141 = icmp eq i64 %indvars.iv.next.i140, 19
  br i1 %exitcond.not.i141, label %if.end53, label %for.body.i122, !llvm.loop !72

if.end53:                                         ; preds = %for.inc.i138, %for.inc.i
  %29 = phi i32 [ %13, %for.inc.i ], [ %22, %for.inc.i138 ]
  %rk54 = getelementptr inbounds nuw i8, ptr %cond, i64 8
  %30 = load i8, ptr %rk54, align 8, !tbaa !64
  %31 = load i8, ptr %rk, align 8, !tbaa !64
  %cmp58 = icmp sgt i8 %30, %31
  %32 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool61.not = icmp eq ptr %32, null
  br i1 %cmp58, label %if.then60, label %if.else68

if.then60:                                        ; preds = %if.end53
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.then60
  %33 = load ptr, ptr %arrayidx23, align 16, !tbaa !66
  %34 = load ptr, ptr %cond, align 8, !tbaa !66
  %call65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.1.460, ptr noundef %33, ptr noundef %34) #31
  %.pre374 = load i32, ptr @speed, align 4, !tbaa !10
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.then60
  %35 = phi i32 [ %.pre374, %if.then62 ], [ %29, %if.then60 ]
  %p.i145 = getelementptr inbounds nuw i8, ptr %cond, i64 40
  %invariant.gep.i146 = getelementptr inbounds nuw i8, ptr %cond, i64 49
  %p20.i147 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 40
  br label %for.body.i148

for.body.i148:                                    ; preds = %for.inc.i164, %if.end66
  %indvars.iv.i149 = phi i64 [ 0, %if.end66 ], [ %indvars.iv.next.i166, %for.inc.i164 ]
  %36 = mul nuw nsw i64 %indvars.iv.i149, 12
  %gep.i150 = getelementptr inbounds nuw i8, ptr %invariant.gep.i146, i64 %36
  %cond.in.i151 = load i8, ptr %gep.i150, align 1, !tbaa !5
  %cond.i152 = sext i8 %cond.in.i151 to i32
  %mul.i153 = mul nsw i32 %35, %cond.i152
  %arrayidx6.i154 = getelementptr inbounds nuw %struct.slope_t, ptr %end, i64 %indvars.iv.i149
  %t7.i155 = getelementptr inbounds nuw i8, ptr %arrayidx6.i154, i64 4
  store i32 %mul.i153, ptr %t7.i155, align 4, !tbaa !67
  %tobool11.not.i156 = icmp eq i32 %mul.i153, 0
  br i1 %tobool11.not.i156, label %if.else.i168, label %if.then.i157

if.then.i157:                                     ; preds = %for.body.i148
  %arrayidx14.i158 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p.i145, i64 0, i64 %indvars.iv.i149
  %fixd.i159 = getelementptr inbounds nuw i8, ptr %arrayidx14.i158, i64 4
  %37 = load float, ptr %fixd.i159, align 4, !tbaa !69
  %prop.i160 = getelementptr inbounds nuw i8, ptr %arrayidx14.i158, i64 8
  %38 = load i8, ptr %prop.i160, align 4, !tbaa !70
  %conv19.i161 = sitofp i8 %38 to float
  %arrayidx22.i162 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20.i147, i64 0, i64 %indvars.iv.i149
  %39 = load float, ptr %arrayidx22.i162, align 4, !tbaa !48
  %mul23.i163 = fmul float %39, %conv19.i161
  %40 = tail call float @llvm.fmuladd.f32(float %mul23.i163, float 0x3F847AE140000000, float %37)
  br label %for.inc.i164

if.else.i168:                                     ; preds = %for.body.i148
  %arrayidx29.i169 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20.i147, i64 0, i64 %indvars.iv.i149
  %41 = load float, ptr %arrayidx29.i169, align 4, !tbaa !48
  br label %for.inc.i164

for.inc.i164:                                     ; preds = %if.else.i168, %if.then.i157
  %storemerge.i165 = phi float [ %41, %if.else.i168 ], [ %40, %if.then.i157 ]
  store float %storemerge.i165, ptr %arrayidx6.i154, align 8, !tbaa !71
  %indvars.iv.next.i166 = add nuw nsw i64 %indvars.iv.i149, 1
  %exitcond.not.i167 = icmp eq i64 %indvars.iv.next.i166, 19
  br i1 %exitcond.not.i167, label %if.end76, label %for.body.i148, !llvm.loop !72

if.else68:                                        ; preds = %if.end53
  br i1 %tobool61.not, label %if.end74, label %if.then70

if.then70:                                        ; preds = %if.else68
  %42 = load ptr, ptr %arrayidx23, align 16, !tbaa !66
  %43 = load ptr, ptr %cond, align 8, !tbaa !66
  %call73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %32, ptr noundef nonnull @.str.2.461, ptr noundef %42, ptr noundef %43) #31
  %.pre = load i32, ptr @speed, align 4, !tbaa !10
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.else68
  %44 = phi i32 [ %.pre, %if.then70 ], [ %29, %if.else68 ]
  %p.i171 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 40
  %invariant.gep.i172 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 50
  %p20.i173 = getelementptr inbounds nuw i8, ptr %cond, i64 40
  br label %for.body.i174

for.body.i174:                                    ; preds = %for.inc.i190, %if.end74
  %indvars.iv.i175 = phi i64 [ 0, %if.end74 ], [ %indvars.iv.next.i192, %for.inc.i190 ]
  %45 = mul nuw nsw i64 %indvars.iv.i175, 12
  %gep.i176 = getelementptr inbounds nuw i8, ptr %invariant.gep.i172, i64 %45
  %cond.in.i177 = load i8, ptr %gep.i176, align 2, !tbaa !5
  %cond.i178 = sext i8 %cond.in.i177 to i32
  %mul.i179 = mul nsw i32 %44, %cond.i178
  %arrayidx6.i180 = getelementptr inbounds nuw %struct.slope_t, ptr %end, i64 %indvars.iv.i175
  %t7.i181 = getelementptr inbounds nuw i8, ptr %arrayidx6.i180, i64 4
  store i32 %mul.i179, ptr %t7.i181, align 4, !tbaa !67
  %tobool11.not.i182 = icmp eq i32 %mul.i179, 0
  br i1 %tobool11.not.i182, label %if.else.i194, label %if.then.i183

if.then.i183:                                     ; preds = %for.body.i174
  %arrayidx14.i184 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p.i171, i64 0, i64 %indvars.iv.i175
  %fixd.i185 = getelementptr inbounds nuw i8, ptr %arrayidx14.i184, i64 4
  %46 = load float, ptr %fixd.i185, align 4, !tbaa !69
  %prop.i186 = getelementptr inbounds nuw i8, ptr %arrayidx14.i184, i64 8
  %47 = load i8, ptr %prop.i186, align 4, !tbaa !70
  %conv19.i187 = sitofp i8 %47 to float
  %arrayidx22.i188 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20.i173, i64 0, i64 %indvars.iv.i175
  %48 = load float, ptr %arrayidx22.i188, align 4, !tbaa !48
  %mul23.i189 = fmul float %48, %conv19.i187
  %49 = tail call float @llvm.fmuladd.f32(float %mul23.i189, float 0x3F847AE140000000, float %46)
  br label %for.inc.i190

if.else.i194:                                     ; preds = %for.body.i174
  %arrayidx29.i195 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20.i173, i64 0, i64 %indvars.iv.i175
  %50 = load float, ptr %arrayidx29.i195, align 4, !tbaa !48
  br label %for.inc.i190

for.inc.i190:                                     ; preds = %if.else.i194, %if.then.i183
  %storemerge.i191 = phi float [ %50, %if.else.i194 ], [ %49, %if.then.i183 ]
  store float %storemerge.i191, ptr %arrayidx6.i180, align 8, !tbaa !71
  %indvars.iv.next.i192 = add nuw nsw i64 %indvars.iv.i175, 1
  %exitcond.not.i193 = icmp eq i64 %indvars.iv.next.i192, 19
  br i1 %exitcond.not.i193, label %if.end76, label %for.body.i174, !llvm.loop !72

if.end76:                                         ; preds = %for.inc.i190, %for.inc.i164
  %51 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool77.not = icmp eq ptr %51, null
  br i1 %tobool77.not, label %if.end124, label %if.then78

if.then78:                                        ; preds = %if.end76
  %52 = load ptr, ptr %arrayidx23, align 16, !tbaa !66
  %call81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %51, ptr noundef nonnull @.str.3.462, ptr noundef %52) #31
  br label %for.body85

for.body85:                                       ; preds = %if.then78, %for.body85
  %indvars.iv345 = phi i64 [ 0, %if.then78 ], [ %indvars.iv.next346, %for.body85 ]
  %53 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool86.not = icmp eq i64 %indvars.iv345, 0
  %cond87 = select i1 %tobool86.not, i32 35, i32 32
  %arrayidx89 = getelementptr inbounds nuw [19 x ptr], ptr @Ep_name, i64 0, i64 %indvars.iv345
  %54 = load ptr, ptr %arrayidx89, align 8, !tbaa !12
  %call90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %53, ptr noundef nonnull @.str.4.463, i32 noundef %cond87, ptr noundef %54) #31
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 1
  %exitcond348.not = icmp eq i64 %indvars.iv.next346, 19
  br i1 %exitcond348.not, label %for.end93, label %for.body85, !llvm.loop !73

for.end93:                                        ; preds = %for.body85
  %55 = load ptr, ptr @par_file, align 8, !tbaa !21
  %fputc = tail call i32 @fputc(i32 10, ptr %55)
  br label %for.body98

for.body98:                                       ; preds = %for.end93, %for.body98
  %indvars.iv349 = phi i64 [ 0, %for.end93 ], [ %indvars.iv.next350, %for.body98 ]
  %56 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool99.not = icmp eq i64 %indvars.iv349, 0
  %cond100 = select i1 %tobool99.not, i32 35, i32 32
  %arrayidx102 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %indvars.iv349
  %57 = load float, ptr %arrayidx102, align 8, !tbaa !71
  %conv104 = fpext float %57 to double
  %call105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef nonnull @.str.6.465, i32 noundef %cond100, double noundef %conv104) #31
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349, 1
  %exitcond352.not = icmp eq i64 %indvars.iv.next350, 19
  br i1 %exitcond352.not, label %for.end108, label %for.body98, !llvm.loop !74

for.end108:                                       ; preds = %for.body98
  %58 = load ptr, ptr @par_file, align 8, !tbaa !21
  %fputc113 = tail call i32 @fputc(i32 10, ptr %58)
  br label %for.body113

for.body113:                                      ; preds = %for.end108, %for.body113
  %indvars.iv353 = phi i64 [ 0, %for.end108 ], [ %indvars.iv.next354, %for.body113 ]
  %59 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool114.not = icmp eq i64 %indvars.iv353, 0
  %cond115 = select i1 %tobool114.not, i32 35, i32 32
  %t118 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %indvars.iv353, i32 1
  %60 = load i32, ptr %t118, align 4, !tbaa !67
  %call119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %59, ptr noundef nonnull @.str.7.466, i32 noundef %cond115, i32 noundef %60) #31
  %indvars.iv.next354 = add nuw nsw i64 %indvars.iv353, 1
  %exitcond356.not = icmp eq i64 %indvars.iv.next354, 19
  br i1 %exitcond356.not, label %for.end122, label %for.body113, !llvm.loop !75

for.end122:                                       ; preds = %for.body113
  %61 = load ptr, ptr @par_file, align 8, !tbaa !21
  %fputc114 = tail call i32 @fputc(i32 10, ptr %61)
  br label %if.end124

if.end124:                                        ; preds = %for.end122, %if.end76
  %p225 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 40
  %conv24.i = uitofp i8 %6 to float
  %cmp138.not300 = icmp ugt i32 %inc28, %nelm
  %broadcast.splatinsert413 = insertelement <4 x i32> poison, i32 %conv27, i64 0
  %broadcast.splat414 = shufflevector <4 x i32> %broadcast.splatinsert413, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %for.body128

for.body128:                                      ; preds = %if.end124, %if.end311
  %samp.2312 = phi ptr [ %samp.0323, %if.end124 ], [ %add.ptr289, %if.end311 ]
  %t37.0311 = phi i32 [ 0, %if.end124 ], [ %inc316, %if.end311 ]
  %tstress.2310 = phi i32 [ %tstress.0320, %if.end124 ], [ %inc317, %if.end311 ]
  %ntstress.2309 = phi i32 [ %ntstress.0319, %if.end124 ], [ %ntstress.3, %if.end311 ]
  %top.2308 = phi float [ %top.0318, %if.end124 ], [ %conv314, %if.end311 ]
  %stress_e.sroa.0.2306 = phi float [ %stress_e.sroa.0.0317, %if.end124 ], [ %stress_e.sroa.0.3, %if.end311 ]
  %stress_s.sroa.0.2305 = phi float [ %stress_s.sroa.0.0316, %if.end124 ], [ %stress_s.sroa.0.3, %if.end311 ]
  %conv129 = fpext float %top.2308 to double
  %mul130 = fmul double %conv129, 8.000000e-01
  %conv131 = fptrunc double %mul130 to float
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tp) #31
  %cmp133 = icmp eq i32 %tstress.2310, %ntstress.2309
  br i1 %cmp133, label %while.cond137.preheader, label %if.end212

while.cond137.preheader:                          ; preds = %for.body128
  br i1 %cmp138.not300, label %if.end212, label %while.body140

while.body140:                                    ; preds = %while.cond137.preheader, %cleanup
  %j136.0302 = phi i32 [ %inc165, %cleanup ], [ %inc28, %while.cond137.preheader ]
  %ntstress.4301 = phi i32 [ %ntstress.6, %cleanup ], [ %conv27, %while.cond137.preheader ]
  %cmp141 = icmp ult i32 %j136.0302, %nelm
  br i1 %cmp141, label %cond.true143, label %cond.end150

cond.true143:                                     ; preds = %while.body140
  %inc144 = add nuw i32 %j136.0302, 1
  %idxprom145 = zext i32 %j136.0302 to i64
  %arrayidx146 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom145
  %62 = load i8, ptr %arrayidx146, align 1, !tbaa !5
  %idxprom147 = zext i8 %62 to i64
  %arrayidx148 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom147
  br label %cond.end150

cond.end150:                                      ; preds = %while.body140, %cond.true143
  %j136.1 = phi i32 [ %inc144, %cond.true143 ], [ %j136.0302, %while.body140 ]
  %cond151 = phi ptr [ %arrayidx148, %cond.true143 ], [ @Elements, %while.body140 ]
  %cmp152 = icmp ult i32 %j136.1, %nelm
  br i1 %cmp152, label %cond.true154, label %cond.end160

cond.true154:                                     ; preds = %cond.end150
  %inc155 = add nuw i32 %j136.1, 1
  %idxprom156 = zext i32 %j136.1 to i64
  %arrayidx157 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom156
  %63 = load i8, ptr %arrayidx157, align 1, !tbaa !5
  %conv158 = zext i8 %63 to i32
  br label %cond.end160

cond.end160:                                      ; preds = %cond.end150, %cond.true154
  %j136.2 = phi i32 [ %inc155, %cond.true154 ], [ %j136.1, %cond.end150 ]
  %cond161 = phi i32 [ %conv158, %cond.true154 ], [ 0, %cond.end150 ]
  %cmp162 = icmp ult i32 %j136.2, %nelm
  br i1 %cmp162, label %cond.end170, label %if.then176

cond.end170:                                      ; preds = %cond.end160
  %inc165 = add nuw i32 %j136.2, 1
  %idxprom166 = zext i32 %j136.2 to i64
  %arrayidx167 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom166
  %64 = load i8, ptr %arrayidx167, align 1, !tbaa !5
  %tobool172.not = icmp eq i8 %64, 0
  br i1 %tobool172.not, label %lor.lhs.false, label %if.then176.split.loop.exit295

lor.lhs.false:                                    ; preds = %cond.end170
  %feat = getelementptr inbounds nuw i8, ptr %cond151, i64 32
  %65 = load i64, ptr %feat, align 8, !tbaa !76
  %and = and i64 %65, 268435456
  %tobool173.not = icmp eq i64 %and, 0
  br i1 %tobool173.not, label %cleanup, label %if.end181

if.then176.split.loop.exit295:                    ; preds = %cond.end170
  %conv168.le = zext i8 %64 to i32
  br label %if.then176

if.then176:                                       ; preds = %cond.end160, %if.then176.split.loop.exit295
  %cond171275 = phi i32 [ %conv168.le, %if.then176.split.loop.exit295 ], [ 3, %cond.end160 ]
  %j136.3273 = phi i32 [ %inc165, %if.then176.split.loop.exit295 ], [ %j136.2, %cond.end160 ]
  %conv177 = uitofp nneg i32 %cond171275 to float
  %div = fdiv float %conv177, 3.000000e+00
  br label %if.end181

if.end181:                                        ; preds = %lor.lhs.false, %if.then176
  %cond171274 = phi i32 [ %cond171275, %if.then176 ], [ 0, %lor.lhs.false ]
  %j136.3272 = phi i32 [ %j136.3273, %if.then176 ], [ %inc165, %lor.lhs.false ]
  %storemerge = phi float [ %div, %if.then176 ], [ 0x3FB99999A0000000, %lor.lhs.false ]
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end181
  %j136.4 = phi i32 [ %j136.3272, %if.end181 ], [ %inc200, %land.rhs ]
  %du.0 = phi i32 [ %cond161, %if.end181 ], [ %conv196, %land.rhs ]
  %d.0 = phi i32 [ 0, %if.end181 ], [ %add, %land.rhs ]
  %add = add i32 %d.0, %du.0
  %cmp182 = icmp ult i32 %j136.4, %nelm
  br i1 %cmp182, label %cond.true184, label %cond.end191

cond.true184:                                     ; preds = %do.body
  %inc185 = add nuw i32 %j136.4, 1
  %idxprom186 = zext i32 %j136.4 to i64
  %arrayidx187 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom186
  %66 = load i8, ptr %arrayidx187, align 1, !tbaa !5
  %idxprom188 = zext i8 %66 to i64
  %arrayidx189 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom188
  br label %cond.end191

cond.end191:                                      ; preds = %do.body, %cond.true184
  %j136.5 = phi i32 [ %inc185, %cond.true184 ], [ %j136.4, %do.body ]
  %cond192 = phi ptr [ %arrayidx189, %cond.true184 ], [ @Elements, %do.body ]
  %feat197 = getelementptr inbounds nuw i8, ptr %cond192, i64 32
  %67 = load i64, ptr %feat197, align 8, !tbaa !76
  %and198 = and i64 %67, 268435456
  %tobool199.not = icmp eq i64 %and198, 0
  br i1 %tobool199.not, label %cleanup.thread, label %land.rhs

land.rhs:                                         ; preds = %cond.end191
  %inc193 = add i32 %j136.5, 1
  %idxprom194 = zext i32 %j136.5 to i64
  %arrayidx195 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom194
  %68 = load i8, ptr %arrayidx195, align 1, !tbaa !5
  %conv196 = zext i8 %68 to i32
  %inc200 = add i32 %j136.5, 2
  %idxprom201 = zext i32 %inc193 to i64
  %arrayidx202 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom201
  %69 = load i8, ptr %arrayidx202, align 1, !tbaa !5
  %conv203 = zext i8 %69 to i32
  %cmp204 = icmp eq i32 %cond171274, %conv203
  br i1 %cmp204, label %do.body, label %cleanup.thread, !llvm.loop !77

cleanup.thread:                                   ; preds = %land.rhs, %cond.end191
  %div206117 = lshr i32 %add, 1
  %ntstress.6280 = add i32 %div206117, %ntstress.4301
  br label %if.end212

cleanup:                                          ; preds = %lor.lhs.false
  %ntstress.6 = add i32 %cond161, %ntstress.4301
  br label %while.body140

if.end212:                                        ; preds = %while.cond137.preheader, %cleanup.thread, %for.body128
  %stress_s.sroa.0.3 = phi float [ %stress_s.sroa.0.2305, %for.body128 ], [ %stress_e.sroa.0.2306, %cleanup.thread ], [ %stress_e.sroa.0.2306, %while.cond137.preheader ]
  %stress_e.sroa.0.3 = phi float [ %stress_e.sroa.0.2306, %for.body128 ], [ %storemerge, %cleanup.thread ], [ %stress_e.sroa.0.2306, %while.cond137.preheader ]
  %ntstress.3 = phi i32 [ %ntstress.2309, %for.body128 ], [ %ntstress.6280, %cleanup.thread ], [ %conv27, %while.cond137.preheader ]
  %tstress.3 = phi i32 [ %tstress.2310, %for.body128 ], [ 0, %cleanup.thread ], [ 0, %while.cond137.preheader ]
  %conv23.i = uitofp nneg i32 %t37.0311 to float
  %div.i = fdiv float %conv23.i, %conv24.i
  %sub25.i = fsub float 1.000000e+00, %div.i
  %cmp.i37.i = icmp eq i32 %t37.0311, 0
  %sub30.i = sub nsw i32 %conv27, %t37.0311
  %conv.i52.i = uitofp nneg i32 %sub30.i to float
  %sub33.i = fsub float 1.000000e+00, %sub25.i
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %cmp.i37.i, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %70 = xor <4 x i1> %broadcast.splat, splat (i1 true)
  %broadcast.splatinsert403 = insertelement <4 x float> poison, float %conv23.i, i64 0
  %broadcast.splat404 = shufflevector <4 x float> %broadcast.splatinsert403, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert405 = insertelement <4 x float> poison, float %sub25.i, i64 0
  %broadcast.splat406 = shufflevector <4 x float> %broadcast.splatinsert405, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert407 = insertelement <4 x i32> poison, i32 %sub30.i, i64 0
  %broadcast.splat408 = shufflevector <4 x i32> %broadcast.splatinsert407, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert409 = insertelement <4 x float> poison, float %conv.i52.i, i64 0
  %broadcast.splat410 = shufflevector <4 x float> %broadcast.splatinsert409, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert411 = insertelement <4 x float> poison, float %sub33.i, i64 0
  %broadcast.splat412 = shufflevector <4 x float> %broadcast.splatinsert411, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert415 = insertelement <4 x i32> poison, i32 %t37.0311, i64 0
  %broadcast.splat416 = shufflevector <4 x i32> %broadcast.splatinsert415, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %if.end212
  %index = phi i64 [ 0, %if.end212 ], [ %index.next, %vector.body ]
  %71 = or disjoint i64 %index, 1
  %72 = or disjoint i64 %index, 2
  %73 = or disjoint i64 %index, 3
  %74 = getelementptr inbounds nuw %struct.filter_t, ptr %flt, i64 %index
  %75 = getelementptr inbounds nuw %struct.filter_t, ptr %flt, i64 %71
  %76 = getelementptr inbounds nuw %struct.filter_t, ptr %flt, i64 %72
  %77 = getelementptr inbounds nuw %struct.filter_t, ptr %flt, i64 %73
  %78 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %index
  %79 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %71
  %80 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %72
  %81 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %73
  %82 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %index
  %83 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %71
  %84 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %72
  %85 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %73
  %86 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p225, i64 0, i64 %index
  %87 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p225, i64 0, i64 %71
  %88 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p225, i64 0, i64 %72
  %89 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p225, i64 0, i64 %73
  %90 = load float, ptr %86, align 8, !tbaa !48
  %91 = load float, ptr %87, align 4, !tbaa !48
  %92 = load float, ptr %88, align 16, !tbaa !48
  %93 = load float, ptr %89, align 4, !tbaa !48
  %94 = insertelement <4 x float> poison, float %90, i64 0
  %95 = insertelement <4 x float> %94, float %91, i64 1
  %96 = insertelement <4 x float> %95, float %92, i64 2
  %97 = insertelement <4 x float> %96, float %93, i64 3
  %98 = getelementptr inbounds nuw i8, ptr %78, i64 4
  %wide.vec = load <8 x i32>, ptr %98, align 4, !tbaa !67
  %strided.vec = shufflevector <8 x i32> %wide.vec, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %99 = getelementptr inbounds nuw i8, ptr %82, i64 4
  %wide.vec417 = load <8 x i32>, ptr %99, align 4, !tbaa !67
  %strided.vec418 = shufflevector <8 x i32> %wide.vec417, <8 x i32> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %100 = add <4 x i32> %strided.vec, %strided.vec418
  %101 = sub <4 x i32> %broadcast.splat414, %100
  %102 = sitofp <4 x i32> %101 to <4 x float>
  %103 = icmp sgt <4 x i32> %101, splat (i32 -1)
  %104 = xor <4 x i1> %103, splat (i1 true)
  %105 = load float, ptr %78, align 16, !tbaa !71
  %106 = load float, ptr %79, align 8, !tbaa !71
  %107 = load float, ptr %80, align 16, !tbaa !71
  %108 = load float, ptr %81, align 8, !tbaa !71
  %109 = insertelement <4 x float> poison, float %105, i64 0
  %110 = insertelement <4 x float> %109, float %106, i64 1
  %111 = insertelement <4 x float> %110, float %107, i64 2
  %112 = insertelement <4 x float> %111, float %108, i64 3
  %113 = select <4 x i1> %103, <4 x i1> splat (i1 true), <4 x i1> %broadcast.splat
  %114 = icmp slt <4 x i32> %broadcast.splat416, %strided.vec
  %115 = uitofp nneg <4 x i32> %strided.vec to <4 x float>
  %116 = fdiv <4 x float> %broadcast.splat404, %115
  %117 = fsub <4 x float> %97, %112
  %118 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %117, <4 x float> %116, <4 x float> %112)
  %.not427 = select <4 x i1> %113, <4 x i1> splat (i1 true), <4 x i1> %114
  %119 = select <4 x i1> %104, <4 x i1> %broadcast.splat, <4 x i1> zeroinitializer
  %predphi = select <4 x i1> %.not427, <4 x float> %118, <4 x float> %97
  %predphi419 = select <4 x i1> %119, <4 x float> %112, <4 x float> %predphi
  %120 = icmp slt <4 x i32> %broadcast.splat408, %strided.vec418
  %121 = load float, ptr %82, align 16, !tbaa !71
  %122 = load float, ptr %83, align 8, !tbaa !71
  %123 = load float, ptr %84, align 16, !tbaa !71
  %124 = load float, ptr %85, align 8, !tbaa !71
  %125 = insertelement <4 x float> poison, float %121, i64 0
  %126 = insertelement <4 x float> %125, float %122, i64 1
  %127 = insertelement <4 x float> %126, float %123, i64 2
  %128 = insertelement <4 x float> %127, float %124, i64 3
  %129 = uitofp nneg <4 x i32> %strided.vec418 to <4 x float>
  %130 = fdiv <4 x float> %broadcast.splat410, %129
  %131 = fsub <4 x float> %97, %128
  %132 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %131, <4 x float> %130, <4 x float> %128)
  %.not428 = select <4 x i1> %103, <4 x i1> splat (i1 true), <4 x i1> %120
  %predphi420 = select <4 x i1> %.not428, <4 x float> %132, <4 x float> %97
  %133 = fmul <4 x float> %broadcast.splat412, %predphi420
  %134 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat406, <4 x float> %predphi419, <4 x float> %133)
  %135 = icmp slt <4 x i32> %broadcast.splat416, %strided.vec
  %136 = xor <4 x i1> %135, splat (i1 true)
  %137 = select <4 x i1> %103, <4 x i1> %136, <4 x i1> zeroinitializer
  %138 = sub nsw <4 x i32> %broadcast.splat416, %strided.vec
  %139 = sitofp <4 x i32> %138 to <4 x float>
  %140 = fcmp ugt <4 x float> %139, %102
  %141 = select <4 x i1> %137, <4 x i1> %140, <4 x i1> zeroinitializer
  %142 = load float, ptr %82, align 16, !tbaa !71
  %143 = load float, ptr %83, align 8, !tbaa !71
  %144 = load float, ptr %84, align 16, !tbaa !71
  %145 = load float, ptr %85, align 8, !tbaa !71
  %146 = insertelement <4 x float> poison, float %142, i64 0
  %147 = insertelement <4 x float> %146, float %143, i64 1
  %148 = insertelement <4 x float> %147, float %144, i64 2
  %149 = insertelement <4 x float> %148, float %145, i64 3
  %150 = fsub <4 x float> %139, %102
  %151 = fptosi <4 x float> %150 to <4 x i32>
  %152 = icmp slt <4 x i32> %151, splat (i32 1)
  %153 = xor <4 x i1> %152, splat (i1 true)
  %154 = select <4 x i1> %141, <4 x i1> %153, <4 x i1> zeroinitializer
  %155 = icmp sgt <4 x i32> %strided.vec418, %151
  %156 = select <4 x i1> %154, <4 x i1> %155, <4 x i1> zeroinitializer
  %157 = uitofp nneg <4 x i32> %151 to <4 x float>
  %158 = uitofp nneg <4 x i32> %strided.vec418 to <4 x float>
  %159 = fdiv <4 x float> %157, %158
  %160 = fsub <4 x float> %149, %97
  %161 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %160, <4 x float> %159, <4 x float> %97)
  %162 = select <4 x i1> %103, <4 x i1> %135, <4 x i1> zeroinitializer
  %163 = load float, ptr %78, align 16, !tbaa !71
  %164 = load float, ptr %79, align 8, !tbaa !71
  %165 = load float, ptr %80, align 16, !tbaa !71
  %166 = load float, ptr %81, align 8, !tbaa !71
  %167 = insertelement <4 x float> poison, float %163, i64 0
  %168 = insertelement <4 x float> %167, float %164, i64 1
  %169 = insertelement <4 x float> %168, float %165, i64 2
  %170 = insertelement <4 x float> %169, float %166, i64 3
  %171 = select <4 x i1> %162, <4 x i1> %70, <4 x i1> zeroinitializer
  %172 = uitofp nneg <4 x i32> %strided.vec to <4 x float>
  %173 = fdiv <4 x float> %broadcast.splat404, %172
  %174 = fsub <4 x float> %97, %170
  %175 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %174, <4 x float> %173, <4 x float> %170)
  %176 = xor <4 x i1> %140, splat (i1 true)
  %177 = select <4 x i1> %137, <4 x i1> %176, <4 x i1> zeroinitializer
  %178 = select <4 x i1> %141, <4 x i1> %152, <4 x i1> zeroinitializer
  %179 = xor <4 x i1> %155, splat (i1 true)
  %180 = select <4 x i1> %154, <4 x i1> %179, <4 x i1> zeroinitializer
  %predphi421 = select <4 x i1> %171, <4 x float> %175, <4 x float> %170
  %181 = select <4 x i1> %178, <4 x i1> splat (i1 true), <4 x i1> %177
  %predphi423 = select <4 x i1> %181, <4 x float> %97, <4 x float> %predphi421
  %predphi424 = select <4 x i1> %180, <4 x float> %149, <4 x float> %predphi423
  %predphi425 = select <4 x i1> %156, <4 x float> %161, <4 x float> %predphi424
  %predphi426 = select <4 x i1> %103, <4 x float> %predphi425, <4 x float> %134
  %182 = load float, ptr %74, align 16, !tbaa !61
  %183 = load float, ptr %75, align 4, !tbaa !61
  %184 = load float, ptr %76, align 8, !tbaa !61
  %185 = load float, ptr %77, align 4, !tbaa !61
  %186 = insertelement <4 x float> poison, float %182, i64 0
  %187 = insertelement <4 x float> %186, float %183, i64 1
  %188 = insertelement <4 x float> %187, float %184, i64 2
  %189 = insertelement <4 x float> %188, float %185, i64 3
  %190 = getelementptr inbounds nuw i8, ptr %74, i64 4
  %191 = getelementptr inbounds nuw i8, ptr %75, i64 4
  %192 = getelementptr inbounds nuw i8, ptr %76, i64 4
  %193 = getelementptr inbounds nuw i8, ptr %77, i64 4
  %194 = load float, ptr %190, align 4, !tbaa !62
  %195 = load float, ptr %191, align 16, !tbaa !62
  %196 = load float, ptr %192, align 4, !tbaa !62
  %197 = load float, ptr %193, align 8, !tbaa !62
  %198 = insertelement <4 x float> poison, float %194, i64 0
  %199 = insertelement <4 x float> %198, float %195, i64 1
  %200 = insertelement <4 x float> %199, float %196, i64 2
  %201 = insertelement <4 x float> %200, float %197, i64 3
  %202 = getelementptr inbounds nuw i8, ptr %74, i64 8
  %203 = getelementptr inbounds nuw i8, ptr %75, i64 8
  %204 = getelementptr inbounds nuw i8, ptr %76, i64 8
  %205 = getelementptr inbounds nuw i8, ptr %77, i64 8
  %206 = load float, ptr %202, align 8, !tbaa !59
  %207 = load float, ptr %203, align 4, !tbaa !59
  %208 = load float, ptr %204, align 16, !tbaa !59
  %209 = load float, ptr %205, align 4, !tbaa !59
  %210 = insertelement <4 x float> poison, float %206, i64 0
  %211 = insertelement <4 x float> %210, float %207, i64 1
  %212 = insertelement <4 x float> %211, float %208, i64 2
  %213 = insertelement <4 x float> %212, float %209, i64 3
  %214 = fmul <4 x float> %201, %213
  %215 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %189, <4 x float> %predphi426, <4 x float> %214)
  %216 = extractelement <4 x float> %215, i64 0
  store float %216, ptr %202, align 8, !tbaa !59
  %217 = extractelement <4 x float> %215, i64 1
  store float %217, ptr %203, align 4, !tbaa !59
  %218 = extractelement <4 x float> %215, i64 2
  store float %218, ptr %204, align 16, !tbaa !59
  %219 = extractelement <4 x float> %215, i64 3
  store float %219, ptr %205, align 4, !tbaa !59
  %220 = getelementptr inbounds nuw [19 x float], ptr %tp, i64 0, i64 %index
  store <4 x float> %215, ptr %220, align 16, !tbaa !78
  %index.next = add nuw i64 %index, 4
  %221 = icmp eq i64 %index.next, 16
  br i1 %221, label %for.body216, label %vector.body, !llvm.loop !79

for.body216:                                      ; preds = %vector.body, %interpolate.exit
  %indvars.iv357 = phi i64 [ %indvars.iv.next358, %interpolate.exit ], [ 16, %vector.body ]
  %add.ptr = getelementptr inbounds nuw %struct.filter_t, ptr %flt, i64 %indvars.iv357
  %arrayidx222 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %indvars.iv357
  %arrayidx224 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %indvars.iv357
  %arrayidx227 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p225, i64 0, i64 %indvars.iv357
  %222 = load float, ptr %arrayidx227, align 4, !tbaa !48
  %t1.i = getelementptr inbounds nuw i8, ptr %arrayidx222, i64 4
  %223 = load i32, ptr %t1.i, align 4, !tbaa !67
  %t2.i = getelementptr inbounds nuw i8, ptr %arrayidx224, i64 4
  %224 = load i32, ptr %t2.i, align 4, !tbaa !67
  %225 = add i32 %223, %224
  %sub.i = sub i32 %conv27, %225
  %conv.i = sitofp i32 %sub.i to float
  %cmp.i = icmp sgt i32 %sub.i, -1
  br i1 %cmp.i, label %if.then.i197, label %if.else22.i

if.then.i197:                                     ; preds = %for.body216
  %cmp5.i = icmp slt i32 %t37.0311, %223
  br i1 %cmp5.i, label %if.then7.i, label %if.else.i198

if.then7.i:                                       ; preds = %if.then.i197
  %226 = load float, ptr %arrayidx222, align 8, !tbaa !71
  br i1 %cmp.i37.i, label %interpolate.exit, label %if.else3.i.i

if.else3.i.i:                                     ; preds = %if.then7.i
  %conv4.i.i = uitofp nneg i32 %223 to float
  %div.i.i = fdiv float %conv23.i, %conv4.i.i
  %sub.i.i = fsub float %222, %226
  %227 = tail call float @llvm.fmuladd.f32(float %sub.i.i, float %div.i.i, float %226)
  br label %interpolate.exit

if.else.i198:                                     ; preds = %if.then.i197
  %sub10.i = sub nsw i32 %t37.0311, %223
  %conv11.i = sitofp i32 %sub10.i to float
  %cmp12.i = fcmp ugt float %conv11.i, %conv.i
  br i1 %cmp12.i, label %if.else15.i, label %interpolate.exit

if.else15.i:                                      ; preds = %if.else.i198
  %228 = load float, ptr %arrayidx224, align 8, !tbaa !71
  %sub18.i = fsub float %conv11.i, %conv.i
  %conv19.i199 = fptosi float %sub18.i to i32
  %cmp.i27.i = icmp slt i32 %conv19.i199, 1
  br i1 %cmp.i27.i, label %interpolate.exit, label %if.else.i28.i

if.else.i28.i:                                    ; preds = %if.else15.i
  %cmp1.not.i29.i = icmp sgt i32 %224, %conv19.i199
  br i1 %cmp1.not.i29.i, label %if.else3.i31.i, label %interpolate.exit

if.else3.i31.i:                                   ; preds = %if.else.i28.i
  %conv.i32.i = uitofp nneg i32 %conv19.i199 to float
  %conv4.i33.i = uitofp nneg i32 %224 to float
  %div.i34.i = fdiv float %conv.i32.i, %conv4.i33.i
  %sub.i35.i = fsub float %228, %222
  %229 = tail call float @llvm.fmuladd.f32(float %sub.i35.i, float %div.i34.i, float %222)
  br label %interpolate.exit

if.else22.i:                                      ; preds = %for.body216
  %230 = load float, ptr %arrayidx222, align 8, !tbaa !71
  br i1 %cmp.i37.i, label %linear.exit46.i, label %if.else.i38.i

if.else.i38.i:                                    ; preds = %if.else22.i
  %cmp1.not.i39.i = icmp slt i32 %t37.0311, %223
  br i1 %cmp1.not.i39.i, label %if.else3.i41.i, label %linear.exit46.i

if.else3.i41.i:                                   ; preds = %if.else.i38.i
  %conv4.i43.i = uitofp nneg i32 %223 to float
  %div.i44.i = fdiv float %conv23.i, %conv4.i43.i
  %sub.i45.i = fsub float %222, %230
  %231 = tail call float @llvm.fmuladd.f32(float %sub.i45.i, float %div.i44.i, float %230)
  br label %linear.exit46.i

linear.exit46.i:                                  ; preds = %if.else3.i41.i, %if.else.i38.i, %if.else22.i
  %retval.0.i40.i = phi float [ %231, %if.else3.i41.i ], [ %230, %if.else22.i ], [ %222, %if.else.i38.i ]
  %cmp1.not.i49.i = icmp slt i32 %sub30.i, %224
  br i1 %cmp1.not.i49.i, label %if.else3.i51.i, label %linear.exit56.i

if.else3.i51.i:                                   ; preds = %linear.exit46.i
  %232 = load float, ptr %arrayidx224, align 8, !tbaa !71
  %conv4.i53.i = uitofp nneg i32 %224 to float
  %div.i54.i = fdiv float %conv.i52.i, %conv4.i53.i
  %sub.i55.i = fsub float %222, %232
  %233 = tail call float @llvm.fmuladd.f32(float %sub.i55.i, float %div.i54.i, float %232)
  br label %linear.exit56.i

linear.exit56.i:                                  ; preds = %if.else3.i51.i, %linear.exit46.i
  %retval.0.i50.i = phi float [ %233, %if.else3.i51.i ], [ %222, %linear.exit46.i ]
  %mul34.i = fmul float %sub33.i, %retval.0.i50.i
  %234 = tail call float @llvm.fmuladd.f32(float %sub25.i, float %retval.0.i40.i, float %mul34.i)
  br label %interpolate.exit

interpolate.exit:                                 ; preds = %if.then7.i, %if.else3.i.i, %if.else.i198, %if.else15.i, %if.else.i28.i, %if.else3.i31.i, %linear.exit56.i
  %retval.0.i = phi float [ %234, %linear.exit56.i ], [ %222, %if.else.i198 ], [ %227, %if.else3.i.i ], [ %226, %if.then7.i ], [ %229, %if.else3.i31.i ], [ %222, %if.else15.i ], [ %228, %if.else.i28.i ]
  %235 = load float, ptr %add.ptr, align 4, !tbaa !61
  %b.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 4
  %236 = load float, ptr %b.i, align 4, !tbaa !62
  %v1.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 8
  %237 = load float, ptr %v1.i, align 4, !tbaa !59
  %mul2.i = fmul float %236, %237
  %238 = tail call float @llvm.fmuladd.f32(float %235, float %retval.0.i, float %mul2.i)
  store float %238, ptr %v1.i, align 4, !tbaa !59
  %arrayidx232 = getelementptr inbounds nuw [19 x float], ptr %tp, i64 0, i64 %indvars.iv357
  store float %238, ptr %arrayidx232, align 4, !tbaa !78
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1
  %exitcond360.not = icmp eq i64 %indvars.iv.next358, 19
  br i1 %exitcond360.not, label %for.end235, label %for.body216, !llvm.loop !80

for.end235:                                       ; preds = %interpolate.exit
  %sub236 = fsub float %top.2308, %conv131
  %sub.i202 = add i32 %ntstress.3, -80
  %conv.i203 = sitofp i32 %sub.i202 to float
  %cmp.i204 = icmp sgt i32 %sub.i202, -1
  br i1 %cmp.i204, label %if.then.i234, label %if.else22.i205

if.then.i234:                                     ; preds = %for.end235
  %cmp5.i235 = icmp slt i32 %tstress.3, 40
  br i1 %cmp5.i235, label %if.then7.i251, label %if.else.i236

if.then7.i251:                                    ; preds = %if.then.i234
  %cmp.i.i252 = icmp slt i32 %tstress.3, 1
  br i1 %cmp.i.i252, label %interpolate.exit258, label %if.else3.i.i253

if.else3.i.i253:                                  ; preds = %if.then7.i251
  %conv.i.i254 = uitofp nneg i32 %tstress.3 to float
  %div.i.i256 = fdiv float %conv.i.i254, 4.000000e+01
  %sub.i.i257 = fsub float 0.000000e+00, %stress_s.sroa.0.3
  %239 = tail call float @llvm.fmuladd.f32(float %sub.i.i257, float %div.i.i256, float %stress_s.sroa.0.3)
  br label %interpolate.exit258

if.else.i236:                                     ; preds = %if.then.i234
  %sub10.i237 = add nsw i32 %tstress.3, -40
  %conv11.i238 = uitofp nneg i32 %sub10.i237 to float
  %cmp12.i239 = fcmp ugt float %conv11.i238, %conv.i203
  br i1 %cmp12.i239, label %if.else15.i240, label %interpolate.exit258

if.else15.i240:                                   ; preds = %if.else.i236
  %sub18.i241 = fsub float %conv11.i238, %conv.i203
  %conv19.i242 = fptosi float %sub18.i241 to i32
  %cmp.i27.i243 = icmp slt i32 %conv19.i242, 1
  br i1 %cmp.i27.i243, label %interpolate.exit258, label %if.else.i28.i244

if.else.i28.i244:                                 ; preds = %if.else15.i240
  %cmp1.not.i29.i245 = icmp samesign ult i32 %conv19.i242, 40
  br i1 %cmp1.not.i29.i245, label %if.else3.i31.i246, label %interpolate.exit258

if.else3.i31.i246:                                ; preds = %if.else.i28.i244
  %conv.i32.i247 = uitofp nneg i32 %conv19.i242 to float
  %div.i34.i249 = fdiv float %conv.i32.i247, 4.000000e+01
  %240 = tail call float @llvm.fmuladd.f32(float %stress_e.sroa.0.3, float %div.i34.i249, float 0.000000e+00)
  br label %interpolate.exit258

if.else22.i205:                                   ; preds = %for.end235
  %conv23.i206 = sitofp i32 %tstress.3 to float
  %conv24.i207 = sitofp i32 %ntstress.3 to float
  %div.i208 = fdiv float %conv23.i206, %conv24.i207
  %sub25.i209 = fsub float 1.000000e+00, %div.i208
  %cmp.i37.i210 = icmp slt i32 %tstress.3, 1
  br i1 %cmp.i37.i210, label %linear.exit46.i213, label %if.else.i38.i211

if.else.i38.i211:                                 ; preds = %if.else22.i205
  %cmp1.not.i39.i212 = icmp samesign ult i32 %tstress.3, 40
  br i1 %cmp1.not.i39.i212, label %if.else3.i41.i229, label %linear.exit46.i213

if.else3.i41.i229:                                ; preds = %if.else.i38.i211
  %conv.i42.i230 = uitofp nneg i32 %tstress.3 to float
  %div.i44.i232 = fdiv float %conv.i42.i230, 4.000000e+01
  %sub.i45.i233 = fsub float 0.000000e+00, %stress_s.sroa.0.3
  %241 = tail call float @llvm.fmuladd.f32(float %sub.i45.i233, float %div.i44.i232, float %stress_s.sroa.0.3)
  br label %linear.exit46.i213

linear.exit46.i213:                               ; preds = %if.else3.i41.i229, %if.else.i38.i211, %if.else22.i205
  %retval.0.i40.i214 = phi float [ %241, %if.else3.i41.i229 ], [ %stress_s.sroa.0.3, %if.else22.i205 ], [ 0.000000e+00, %if.else.i38.i211 ]
  %sub30.i215 = sub nsw i32 %ntstress.3, %tstress.3
  %cmp.i47.i216 = icmp slt i32 %sub30.i215, 1
  br i1 %cmp.i47.i216, label %linear.exit56.i219, label %if.else.i48.i217

if.else.i48.i217:                                 ; preds = %linear.exit46.i213
  %cmp1.not.i49.i218 = icmp samesign ult i32 %sub30.i215, 40
  br i1 %cmp1.not.i49.i218, label %if.else3.i51.i224, label %linear.exit56.i219

if.else3.i51.i224:                                ; preds = %if.else.i48.i217
  %conv.i52.i225 = uitofp nneg i32 %sub30.i215 to float
  %div.i54.i227 = fdiv float %conv.i52.i225, 4.000000e+01
  %sub.i55.i228 = fsub float 0.000000e+00, %stress_e.sroa.0.3
  %242 = tail call float @llvm.fmuladd.f32(float %sub.i55.i228, float %div.i54.i227, float %stress_e.sroa.0.3)
  br label %linear.exit56.i219

linear.exit56.i219:                               ; preds = %if.else3.i51.i224, %if.else.i48.i217, %linear.exit46.i213
  %retval.0.i50.i220 = phi float [ %242, %if.else3.i51.i224 ], [ %stress_e.sroa.0.3, %linear.exit46.i213 ], [ 0.000000e+00, %if.else.i48.i217 ]
  %sub33.i221 = fsub float 1.000000e+00, %sub25.i209
  %mul34.i222 = fmul float %sub33.i221, %retval.0.i50.i220
  %243 = tail call float @llvm.fmuladd.f32(float %sub25.i209, float %retval.0.i40.i214, float %mul34.i222)
  br label %interpolate.exit258

interpolate.exit258:                              ; preds = %if.then7.i251, %if.else3.i.i253, %if.else.i236, %if.else15.i240, %if.else.i28.i244, %if.else3.i31.i246, %linear.exit56.i219
  %retval.0.i223 = phi float [ %243, %linear.exit56.i219 ], [ 0.000000e+00, %if.else.i236 ], [ %239, %if.else3.i.i253 ], [ %stress_s.sroa.0.3, %if.then7.i251 ], [ %240, %if.else3.i31.i246 ], [ 0.000000e+00, %if.else15.i240 ], [ %stress_e.sroa.0.3, %if.else.i28.i244 ]
  %244 = tail call float @llvm.fmuladd.f32(float %sub236, float %retval.0.i223, float %conv131)
  %conv239 = fptosi float %244 to i64
  store i64 %conv239, ptr %pars, align 8, !tbaa !45
  %245 = load float, ptr %arrayidx240, align 4, !tbaa !78
  %conv241 = fptosi float %245 to i64
  store i64 %conv241, ptr %AVpdb, align 8, !tbaa !81
  store i64 %conv241, ptr %AVdb, align 8, !tbaa !82
  %246 = load float, ptr %arrayidx242, align 8, !tbaa !78
  %conv243 = fptosi float %246 to i64
  store i64 %conv243, ptr %AF, align 8, !tbaa !83
  %247 = load float, ptr %tp, align 16, !tbaa !78
  %conv245 = fptosi float %247 to i64
  store i64 %conv245, ptr %FNZhz, align 8, !tbaa !84
  %248 = load float, ptr %arrayidx246, align 4, !tbaa !78
  %conv247 = fptosi float %248 to i64
  store i64 %conv247, ptr %ASP, align 8, !tbaa !85
  %249 = load float, ptr %arrayidx248, align 16, !tbaa !78
  %conv249 = fptosi float %249 to i64
  store i64 %conv249, ptr %Aturb, align 8, !tbaa !86
  %250 = load float, ptr %arrayidx250, align 16, !tbaa !78
  %conv251 = fptosi float %250 to i64
  store i64 %conv251, ptr %B1hz, align 8, !tbaa !52
  store i64 %conv251, ptr %B1phz, align 8, !tbaa !53
  %251 = load float, ptr %arrayidx254, align 4, !tbaa !78
  %conv255 = fptosi float %251 to i64
  store i64 %conv255, ptr %B2hz, align 8, !tbaa !54
  store i64 %conv255, ptr %B2phz, align 8, !tbaa !55
  %252 = load float, ptr %arrayidx258, align 8, !tbaa !78
  %conv259 = fptosi float %252 to i64
  store i64 %conv259, ptr %B3hz, align 8, !tbaa !56
  store i64 %conv259, ptr %B3phz, align 8, !tbaa !57
  %253 = load float, ptr %arrayidx262, align 4, !tbaa !78
  %conv263 = fptosi float %253 to i64
  store i64 %conv263, ptr %F1hz, align 8, !tbaa !87
  %254 = load float, ptr %arrayidx264, align 8, !tbaa !78
  %conv265 = fptosi float %254 to i64
  store i64 %conv265, ptr %F2hz, align 8, !tbaa !88
  %255 = load float, ptr %arrayidx266, align 4, !tbaa !78
  %conv267 = fptosi float %255 to i64
  store i64 %conv267, ptr %F3hz, align 8, !tbaa !89
  %256 = load float, ptr %arrayidx268, align 8, !tbaa !78
  %add269 = fadd float %256, 1.400000e+01
  %conv270 = fptosi float %add269 to i64
  store i64 %conv270, ptr %AB, align 8, !tbaa !90
  %257 = load float, ptr %arrayidx271, align 16, !tbaa !78
  %add272 = fadd float %257, 1.400000e+01
  %conv273 = fptosi float %add272 to i64
  store i64 %conv273, ptr %A5, align 8, !tbaa !91
  %258 = load float, ptr %arrayidx274, align 4, !tbaa !78
  %add275 = fadd float %258, 1.400000e+01
  %conv276 = fptosi float %add275 to i64
  store i64 %conv276, ptr %A6, align 8, !tbaa !92
  %259 = load float, ptr %arrayidx277, align 16, !tbaa !78
  %add278 = fadd float %259, 1.400000e+01
  %conv279 = fptosi float %add278 to i64
  store i64 %conv279, ptr %A1, align 8, !tbaa !93
  %260 = load float, ptr %arrayidx280, align 4, !tbaa !78
  %add281 = fadd float %260, 1.400000e+01
  %conv282 = fptosi float %add281 to i64
  store i64 %conv282, ptr %A2, align 8, !tbaa !94
  %261 = load float, ptr %arrayidx283, align 8, !tbaa !78
  %add284 = fadd float %261, 1.400000e+01
  %conv285 = fptosi float %add284 to i64
  store i64 %conv285, ptr %A3, align 8, !tbaa !95
  %262 = load float, ptr %arrayidx286, align 4, !tbaa !78
  %add287 = fadd float %262, 1.400000e+01
  %conv288 = fptosi float %add287 to i64
  store i64 %conv288, ptr %A4, align 8, !tbaa !96
  call void @parwave(ptr noundef nonnull @klatt_global, ptr noundef nonnull %pars, ptr noundef %samp.2312)
  %263 = load i64, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 40), align 8, !tbaa !39
  %add.ptr289 = getelementptr inbounds i16, ptr %samp.2312, i64 %263
  %264 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool290.not = icmp eq ptr %264, null
  br i1 %tobool290.not, label %if.end304, label %for.body295

for.body295:                                      ; preds = %interpolate.exit258, %for.body295
  %indvars.iv361 = phi i64 [ %indvars.iv.next362, %for.body295 ], [ 0, %interpolate.exit258 ]
  %265 = load ptr, ptr @par_file, align 8, !tbaa !21
  %arrayidx297 = getelementptr inbounds nuw [19 x float], ptr %tp, i64 0, i64 %indvars.iv361
  %266 = load float, ptr %arrayidx297, align 4, !tbaa !78
  %conv298 = fpext float %266 to double
  %call299 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %265, ptr noundef nonnull @.str.10.469, double noundef %conv298) #31
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1
  %exitcond364.not = icmp eq i64 %indvars.iv.next362, 19
  br i1 %exitcond364.not, label %for.end302, label %for.body295, !llvm.loop !97

for.end302:                                       ; preds = %for.body295
  %267 = load ptr, ptr @par_file, align 8, !tbaa !21
  %fputc118 = tail call i32 @fputc(i32 10, ptr %267)
  br label %if.end304

if.end304:                                        ; preds = %for.end302, %interpolate.exit258
  %268 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %tobool305.not = icmp eq ptr %268, null
  br i1 %tobool305.not, label %if.end311, label %if.then306

if.then306:                                       ; preds = %if.end304
  %269 = load i64, ptr %pars, align 8, !tbaa !45
  %conv308 = sitofp i64 %269 to double
  %mul309 = fmul double %conv308, 1.000000e-01
  %div.i259 = fdiv double %mul309, 2.500000e+01
  %call.i = tail call double @log(double noundef %div.i259) #31, !tbaa !10
  %div2.i = fdiv double %call.i, 0x3FE62E42FEFA39EF
  %270 = tail call double @llvm.fmuladd.f64(double %div2.i, double 1.600000e+01, double -1.000000e+00)
  %271 = load float, ptr %tp, align 16, !tbaa !78
  %sub.i.i260 = fadd float %271, -9.500000e+01
  %div.i.i261 = fdiv float %sub.i.i260, 5.000000e+00
  %conv.i.i262 = fptosi float %div.i.i261 to i32
  %spec.store.select.i.i = tail call range(i32 -2147483648, 64) i32 @llvm.smin.i32(i32 %conv.i.i262, i32 63)
  %call4.i = tail call i32 @fputc(i32 noundef %spec.store.select.i.i, ptr noundef nonnull %268)
  %272 = load float, ptr %arrayidx5.i, align 4, !tbaa !78
  %conv.i11.i = fptosi float %272 to i32
  %spec.store.select.i12.i = tail call i32 @llvm.smax.i32(i32 %conv.i11.i, i32 1)
  %spec.store.select1.i.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i12.i, i32 63)
  %273 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call7.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i.i, ptr noundef %273)
  %274 = load float, ptr %arrayidx262, align 4, !tbaa !78
  %sub.i13.i = fadd float %274, -1.250000e+02
  %div.i14.i = fdiv float %sub.i13.i, 2.500000e+01
  %conv.i15.i = fptosi float %div.i14.i to i32
  %spec.store.select.i16.i = tail call range(i32 -2147483648, 64) i32 @llvm.smin.i32(i32 %conv.i15.i, i32 63)
  %275 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call10.i = tail call i32 @fputc(i32 noundef %spec.store.select.i16.i, ptr noundef %275)
  %276 = load float, ptr %arrayidx277, align 16, !tbaa !78
  %conv.i17.i = fptosi float %276 to i32
  %spec.store.select.i18.i = tail call i32 @llvm.smax.i32(i32 %conv.i17.i, i32 1)
  %spec.store.select1.i19.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i18.i, i32 63)
  %277 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call13.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i19.i, ptr noundef %277)
  %278 = load float, ptr %arrayidx264, align 8, !tbaa !78
  %sub.i20.i = fadd float %278, -5.500000e+02
  %div.i21.i = fdiv float %sub.i20.i, 5.000000e+01
  %conv.i22.i = fptosi float %div.i21.i to i32
  %spec.store.select.i23.i = tail call range(i32 -2147483648, 64) i32 @llvm.smin.i32(i32 %conv.i22.i, i32 63)
  %279 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call16.i = tail call i32 @fputc(i32 noundef %spec.store.select.i23.i, ptr noundef %279)
  %280 = load float, ptr %arrayidx280, align 4, !tbaa !78
  %conv.i24.i = fptosi float %280 to i32
  %spec.store.select.i25.i = tail call i32 @llvm.smax.i32(i32 %conv.i24.i, i32 1)
  %spec.store.select1.i26.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i25.i, i32 63)
  %281 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call19.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i26.i, ptr noundef %281)
  %282 = load float, ptr %arrayidx266, align 4, !tbaa !78
  %sub.i27.i = fadd float %282, -1.350000e+03
  %div.i28.i = fdiv float %sub.i27.i, 5.000000e+01
  %conv.i29.i = fptosi float %div.i28.i to i32
  %spec.store.select.i30.i = tail call range(i32 -2147483648, 64) i32 @llvm.smin.i32(i32 %conv.i29.i, i32 63)
  %283 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call22.i = tail call i32 @fputc(i32 noundef %spec.store.select.i30.i, ptr noundef %283)
  %284 = load float, ptr %arrayidx283, align 8, !tbaa !78
  %conv.i31.i = fptosi float %284 to i32
  %spec.store.select.i32.i = tail call i32 @llvm.smax.i32(i32 %conv.i31.i, i32 1)
  %spec.store.select1.i33.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i32.i, i32 63)
  %285 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call25.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i33.i, ptr noundef %285)
  %286 = load float, ptr %arrayidx286, align 4, !tbaa !78
  %conv.i34.i = fptosi float %286 to i32
  %spec.store.select.i35.i = tail call i32 @llvm.smax.i32(i32 %conv.i34.i, i32 1)
  %spec.store.select1.i36.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i35.i, i32 63)
  %287 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call28.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i36.i, ptr noundef %287)
  %288 = load float, ptr %arrayidx240, align 4, !tbaa !78
  %conv.i37.i = fptosi float %288 to i32
  %spec.store.select.i38.i = tail call i32 @llvm.smax.i32(i32 %conv.i37.i, i32 1)
  %spec.store.select1.i39.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i38.i, i32 63)
  %289 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call31.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i39.i, ptr noundef %289)
  %conv.i265 = fptosi double %270 to i32
  %290 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call32.i = tail call i32 @fputc(i32 noundef %conv.i265, ptr noundef %290)
  %291 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call33.i = tail call i32 @fputc(i32 noundef 32, ptr noundef %291)
  br label %if.end311

if.end311:                                        ; preds = %if.then306, %if.end304
  %conv314 = fadd float %top.2308, -5.000000e-01
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tp) #31
  %inc316 = add nuw nsw i32 %t37.0311, 1
  %inc317 = add i32 %tstress.3, 1
  %exitcond365.not = icmp eq i32 %inc316, %conv27
  br i1 %exitcond365.not, label %for.end318, label %for.body128, !llvm.loop !98

for.end318:                                       ; preds = %if.end311
  %292 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool319.not = icmp eq ptr %292, null
  br i1 %tobool319.not, label %if.end351, label %for.body325

for.body325:                                      ; preds = %for.end318, %for.body325
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %for.body325 ], [ 0, %for.end318 ]
  %293 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool326.not = icmp eq i64 %indvars.iv366, 0
  %cond327 = select i1 %tobool326.not, i32 35, i32 32
  %arrayidx329 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %indvars.iv366
  %294 = load float, ptr %arrayidx329, align 8, !tbaa !71
  %conv331 = fpext float %294 to double
  %call332 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %293, ptr noundef nonnull @.str.6.465, i32 noundef %cond327, double noundef %conv331) #31
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1
  %exitcond369.not = icmp eq i64 %indvars.iv.next367, 19
  br i1 %exitcond369.not, label %for.end335, label %for.body325, !llvm.loop !99

for.end335:                                       ; preds = %for.body325
  %295 = load ptr, ptr @par_file, align 8, !tbaa !21
  %fputc115 = tail call i32 @fputc(i32 10, ptr %295)
  br label %for.body340

for.body340:                                      ; preds = %for.end335, %for.body340
  %indvars.iv370 = phi i64 [ 0, %for.end335 ], [ %indvars.iv.next371, %for.body340 ]
  %296 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool341.not = icmp eq i64 %indvars.iv370, 0
  %cond342 = select i1 %tobool341.not, i32 35, i32 32
  %t345 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %indvars.iv370, i32 1
  %297 = load i32, ptr %t345, align 4, !tbaa !67
  %call346 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %296, ptr noundef nonnull @.str.7.466, i32 noundef %cond342, i32 noundef %297) #31
  %indvars.iv.next371 = add nuw nsw i64 %indvars.iv370, 1
  %exitcond373.not = icmp eq i64 %indvars.iv.next371, 19
  br i1 %exitcond373.not, label %for.end349, label %for.body340, !llvm.loop !100

for.end349:                                       ; preds = %for.body340
  %298 = load ptr, ptr @par_file, align 8, !tbaa !21
  %fputc116 = tail call i32 @fputc(i32 10, ptr %298)
  br label %if.end351

if.end351:                                        ; preds = %for.end349, %for.end318
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %end) #31
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %start) #31
  br label %if.end352

if.end352:                                        ; preds = %if.end351, %while.body
  %stress_s.sroa.0.1 = phi float [ %stress_s.sroa.0.0316, %while.body ], [ %stress_s.sroa.0.3, %if.end351 ]
  %stress_e.sroa.0.1 = phi float [ %stress_e.sroa.0.0317, %while.body ], [ %stress_e.sroa.0.3, %if.end351 ]
  %top.1 = phi float [ %top.0318, %while.body ], [ %conv314, %if.end351 ]
  %ntstress.1 = phi i32 [ %ntstress.0319, %while.body ], [ %ntstress.3, %if.end351 ]
  %tstress.1 = phi i32 [ %tstress.0320, %while.body ], [ %inc317, %if.end351 ]
  %samp.1 = phi ptr [ %samp.0323, %while.body ], [ %add.ptr289, %if.end351 ]
  %cmp17 = icmp ult i32 %inc28, %nelm
  br i1 %cmp17, label %while.body, label %while.end353, !llvm.loop !101

while.end353:                                     ; preds = %if.end352, %while.cond.preheader
  %samp.0.lcssa = phi ptr [ %samp_base, %while.cond.preheader ], [ %samp.1, %if.end352 ]
  %sub.ptr.lhs.cast = ptrtoint ptr %samp.0.lcssa to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %samp_base to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 1
  %conv354 = trunc i64 %sub.ptr.div to i32
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %pars) #31
  call void @llvm.lifetime.end.p0(i64 228, ptr nonnull %flt) #31
  ret i32 %conv354
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @init_holmes(i32 noundef %argc, ptr noundef captures(none) %argv) local_unnamed_addr #0 {
entry:
  %par_name = alloca ptr, align 8
  %jsru_name = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %par_name) #31
  store ptr null, ptr %par_name, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %jsru_name) #31
  store ptr null, ptr %jsru_name, align 8, !tbaa !12
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.11.470, i32 noundef %argc, ptr noundef %argv, ptr noundef nonnull @.str.4.745, ptr noundef nonnull @.str.8.467, ptr noundef nonnull %par_name, ptr noundef nonnull @.str.13.472, ptr noundef nonnull @.str.67.808, ptr noundef nonnull @.str.8.467, ptr noundef nonnull %jsru_name, ptr noundef nonnull @.str.15.474, ptr noundef nonnull @.str.37.778, ptr noundef nonnull @.str.4.490, ptr noundef nonnull @speed, ptr noundef nonnull @.str.18.477, ptr noundef nonnull @.str.13.754, ptr noundef nonnull @.str.20.479, ptr noundef nonnull @frac, ptr noundef nonnull @.str.21.480, ptr noundef null)
  %0 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %par_name, align 8, !tbaa !12
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end7, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.62.803)
  store ptr %call3, ptr @par_file, align 8, !tbaa !21
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.then2
  %2 = load ptr, ptr %par_name, align 8, !tbaa !12
  call void @perror(ptr noundef %2) #33
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.then5, %if.end
  %3 = load ptr, ptr %jsru_name, align 8, !tbaa !12
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %cleanup, label %if.then9

if.then9:                                         ; preds = %if.end7
  %call10 = call noalias ptr @fopen(ptr noundef nonnull %3, ptr noundef nonnull @.str.62.803)
  store ptr %call10, ptr @jsru_file, align 8, !tbaa !21
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.then12, label %cleanup

if.then12:                                        ; preds = %if.then9
  %4 = load ptr, ptr %jsru_name, align 8, !tbaa !12
  call void @perror(ptr noundef %4) #33
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then12, %if.then9, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %jsru_name) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %par_name) #31
  ret i32 %call
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local void @term_holmes() local_unnamed_addr #0 {
entry:
  %0 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @fclose(ptr noundef nonnull %0)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %1 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %call3 = tail call i32 @fclose(ptr noundef nonnull %1)
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local i32 @audio_init(i32 noundef %argc, ptr noundef captures(none) %argv) local_unnamed_addr #5 {
entry:
  %rate_set = alloca i32, align 4
  %use_audio = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_set) #31
  store i32 0, ptr %rate_set, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %use_audio) #31
  store i32 1, ptr %use_audio, align 4, !tbaa !10
  %0 = load ptr, ptr %argv, align 8, !tbaa !12
  store ptr %0, ptr @prog, align 8, !tbaa !12
  %call = call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.2.488, i32 noundef %argc, ptr noundef nonnull %argv, ptr noundef nonnull @.str.58.799, ptr noundef nonnull @.str.4.490, ptr noundef nonnull %rate_set, ptr noundef nonnull @.str.5.491, ptr noundef nonnull @.str.6.492, ptr noundef null, ptr noundef nonnull %use_audio, ptr noundef nonnull @.str.7.493, ptr noundef null)
  %1 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %cleanup

if.end:                                           ; preds = %entry
  %2 = load i32, ptr %use_audio, align 4, !tbaa !10
  %tobool1.not = icmp eq i32 %2, 0
  br i1 %tobool1.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr @dev_file, align 8, !tbaa !12
  %call.i = call i32 (ptr, i32, ...) @open(ptr noundef %3, i32 noundef 2049) #31
  store i32 %call.i, ptr @dev_fd, align 4, !tbaa !10
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end4

if.then.i:                                        ; preds = %if.then2
  %4 = load ptr, ptr @dev_file, align 8, !tbaa !12
  call void @perror(ptr noundef %4) #33
  br label %if.end4

if.end4:                                          ; preds = %if.then.i, %if.then2, %if.end
  %5 = load i32, ptr %rate_set, align 4, !tbaa !10
  %tobool5.not = icmp eq i32 %5, 0
  br i1 %tobool5.not, label %if.end7, label %if.then6

if.then6:                                         ; preds = %if.end4
  %conv = sext i32 %5 to i64
  store i64 %conv, ptr @samp_rate, align 8, !tbaa !15
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4
  %6 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %if.then9, label %cleanup

if.then9:                                         ; preds = %if.end7
  %call10 = call i32 (i32, i64, ...) @ioctl(i32 noundef %6, i64 noundef 3221508098, ptr noundef nonnull @samp_rate) #31
  %7 = load i64, ptr @samp_rate, align 8, !tbaa !15
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.494, i64 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %use_audio) #31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_set) #31
  ret i32 %call
}

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @audio_term() local_unnamed_addr #5 {
entry:
  %dummy = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #31
  %0 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef 20481, ptr noundef nonnull %dummy) #31
  %1 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %call1 = call i32 @close(i32 noundef %1) #31
  store i32 -1, ptr @dev_fd, align 4, !tbaa !10
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @audio_play(i32 noundef %n, ptr noundef readonly captures(none) %data) local_unnamed_addr #5 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %conv = zext nneg i32 %n to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #34
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then3, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %min.iters.check = icmp ult i32 %n, 8
  br i1 %min.iters.check, label %for.body.preheader20, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %conv, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %0 = getelementptr inbounds nuw i16, ptr %data, i64 %index
  %wide.load = load <8 x i16>, ptr %0, align 2, !tbaa !18
  %1 = sub <8 x i16> splat (i16 -32768), %wide.load
  %2 = lshr <8 x i16> %1, splat (i16 8)
  %3 = trunc nuw <8 x i16> %2 to <8 x i8>
  %4 = sub <8 x i8> zeroinitializer, %3
  %5 = getelementptr inbounds nuw i8, ptr %call, i64 %index
  store <8 x i8> %4, ptr %5, align 1, !tbaa !5
  %index.next = add nuw i64 %index, 8
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !102

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %conv
  br i1 %cmp.n, label %if.end21, label %for.body.preheader20

for.body.preheader20:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

if.then3:                                         ; preds = %if.then
  %7 = load ptr, ptr @stderr, align 8, !tbaa !21
  %8 = tail call i64 @fwrite(ptr nonnull @.str.9.496, i64 41, i64 1, ptr %7) #33
  tail call void @exit(i32 noundef 3) #37
  unreachable

for.body:                                         ; preds = %for.body.preheader20, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader20 ]
  %arrayidx = getelementptr inbounds nuw i16, ptr %data, i64 %indvars.iv
  %9 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %sub.nonneg = sub i16 -32768, %9
  %div1516 = lshr i16 %sub.nonneg, 8
  %10 = trunc nuw i16 %div1516 to i8
  %conv8 = sub i8 0, %10
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %call, i64 %indvars.iv
  store i8 %conv8, ptr %arrayidx10, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %conv
  br i1 %exitcond.not, label %if.end21, label %for.body, !llvm.loop !103

if.end21:                                         ; preds = %for.body, %middle.block
  %11 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %cmp22 = icmp sgt i32 %11, -1
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end21
  %call26 = tail call i64 @write(i32 noundef %11, ptr noundef nonnull %call, i64 noundef %conv) #31
  %cmp28.not = icmp eq i64 %call26, %conv
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.then24
  tail call void @perror(ptr noundef nonnull @.str.10.497) #33
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.then30, %if.end21
  tail call void @free(ptr noundef nonnull %call) #31
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %entry
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind uwtable
define dso_local void @show_parms(ptr noundef readnone captures(none) %globals, ptr noundef readonly captures(none) %pars) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @show_parms.names, align 4, !tbaa !10
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @show_parms.names, align 4, !tbaa !10
  %1 = and i32 %0, 63
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %for.body, label %for.body6.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [40 x ptr], ptr @par_name, i64 0, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41.539, ptr noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 40
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !104

for.end:                                          ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10)
  br label %for.body6.preheader

for.body6.preheader:                              ; preds = %for.end, %entry
  br label %for.body6

for.body6:                                        ; preds = %for.body6.preheader, %for.body6
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body6 ], [ 0, %for.body6.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [40 x ptr], ptr @par_name, i64 0, i64 %indvars.iv11
  %3 = load ptr, ptr %arrayidx8, align 8, !tbaa !12
  %call9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #32
  %conv = trunc i64 %call9 to i32
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %pars, i64 %indvars.iv11
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !10
  %call12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43.541, i32 noundef %conv, i32 noundef %4)
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %exitcond14.not = icmp eq i64 %indvars.iv.next12, 40
  br i1 %exitcond14.not, label %for.end15, label %for.body6, !llvm.loop !105

for.end15:                                        ; preds = %for.body6
  %putchar7 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @parwave(ptr noundef captures(none) %globals, ptr noundef readonly captures(none) %frame, ptr noundef writeonly captures(none) %jwave) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %frame, align 8, !tbaa !45
  store i64 %0, ptr @F0hz10, align 8, !tbaa !15
  %AVdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 8
  %1 = load i64, ptr %AVdb.i, align 8, !tbaa !82
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 7)
  %spec.store.select.i = add nsw i64 %2, -7
  store i64 %spec.store.select.i, ptr @AVdb, align 8
  %ASP.i = getelementptr inbounds nuw i8, ptr %frame, i64 144
  %3 = load i64, ptr %ASP.i, align 8, !tbaa !85
  %cmp.i.i = icmp slt i64 %3, 0
  br i1 %cmp.i.i, label %DBtoLIN.exit.i, label %if.else.i.i

if.else.i.i:                                      ; preds = %entry
  %cmp1.i.i = icmp samesign ugt i64 %3, 87
  br i1 %cmp1.i.i, label %if.then2.i.i, label %DBtoLIN.exit.i

if.then2.i.i:                                     ; preds = %if.else.i.i
  %quiet_flag.i.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %4 = load i32, ptr %quiet_flag.i.i, align 4, !tbaa !34
  %tobool.not.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i, label %if.then3.i.i, label %DBtoLIN.exit.i

if.then3.i.i:                                     ; preds = %if.then2.i.i
  %call.i.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %3)
  br label %DBtoLIN.exit.i

DBtoLIN.exit.i:                                   ; preds = %if.then3.i.i, %if.then2.i.i, %if.else.i.i, %entry
  %dB.addr.0.i.i = phi i64 [ %3, %if.else.i.i ], [ 0, %entry ], [ 87, %if.then3.i.i ], [ 87, %if.then2.i.i ]
  %arrayidx.i.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i.i
  %5 = load float, ptr %arrayidx.i.i, align 4, !tbaa !78
  %conv.i.i = fpext float %5 to double
  %mul.i.i = fmul double %conv.i.i, 1.000000e-03
  %conv6.i.i = fptrunc double %mul.i.i to float
  %conv.i = fpext float %conv6.i.i to double
  %mul.i = fmul double %conv.i, 5.000000e-02
  %conv1.i = fptrunc double %mul.i to float
  store float %conv1.i, ptr @amp_aspir, align 4, !tbaa !78
  %AF.i = getelementptr inbounds nuw i8, ptr %frame, i64 176
  %6 = load i64, ptr %AF.i, align 8, !tbaa !83
  %cmp.i67.i = icmp slt i64 %6, 0
  br i1 %cmp.i67.i, label %DBtoLIN.exit80.i, label %if.else.i68.i

if.else.i68.i:                                    ; preds = %DBtoLIN.exit.i
  %cmp1.i69.i = icmp samesign ugt i64 %6, 87
  br i1 %cmp1.i69.i, label %if.then2.i75.i, label %DBtoLIN.exit80.i

if.then2.i75.i:                                   ; preds = %if.else.i68.i
  %quiet_flag.i76.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %7 = load i32, ptr %quiet_flag.i76.i, align 4, !tbaa !34
  %tobool.not.i77.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i77.i, label %if.then3.i78.i, label %DBtoLIN.exit80.i

if.then3.i78.i:                                   ; preds = %if.then2.i75.i
  %call.i79.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %6)
  br label %DBtoLIN.exit80.i

DBtoLIN.exit80.i:                                 ; preds = %if.then3.i78.i, %if.then2.i75.i, %if.else.i68.i, %DBtoLIN.exit.i
  %dB.addr.0.i70.i = phi i64 [ %6, %if.else.i68.i ], [ 0, %DBtoLIN.exit.i ], [ 87, %if.then3.i78.i ], [ 87, %if.then2.i75.i ]
  %arrayidx.i71.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i70.i
  %8 = load float, ptr %arrayidx.i71.i, align 4, !tbaa !78
  %conv.i72.i = fpext float %8 to double
  %mul.i73.i = fmul double %conv.i72.i, 1.000000e-03
  %conv6.i74.i = fptrunc double %mul.i73.i to float
  %conv5.i = fmul float %conv6.i74.i, 2.500000e-01
  store float %conv5.i, ptr @amp_frica, align 4, !tbaa !78
  %Kskew.i = getelementptr inbounds nuw i8, ptr %frame, i64 184
  %9 = load i64, ptr %Kskew.i, align 8, !tbaa !106
  store i64 %9, ptr @Kskew, align 8, !tbaa !15
  %AVpdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 304
  %10 = load i64, ptr %AVpdb.i, align 8, !tbaa !81
  %or.cond.i = icmp sgt i64 %10, 87
  br i1 %or.cond.i, label %if.then2.i89.i, label %DBtoLIN.exit94.i

if.then2.i89.i:                                   ; preds = %DBtoLIN.exit80.i
  %quiet_flag.i90.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %11 = load i32, ptr %quiet_flag.i90.i, align 4, !tbaa !34
  %tobool.not.i91.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i91.i, label %if.then3.i92.i, label %DBtoLIN.exit94.i

if.then3.i92.i:                                   ; preds = %if.then2.i89.i
  %call.i93.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %10)
  br label %DBtoLIN.exit94.i

DBtoLIN.exit94.i:                                 ; preds = %if.then3.i92.i, %if.then2.i89.i, %DBtoLIN.exit80.i
  %A1.i = getelementptr inbounds nuw i8, ptr %frame, i64 192
  %12 = load i64, ptr %A1.i, align 8, !tbaa !93
  %cmp.i95.i = icmp slt i64 %12, 0
  br i1 %cmp.i95.i, label %DBtoLIN.exit108.i, label %if.else.i96.i

if.else.i96.i:                                    ; preds = %DBtoLIN.exit94.i
  %cmp1.i97.i = icmp samesign ugt i64 %12, 87
  br i1 %cmp1.i97.i, label %if.then2.i103.i, label %DBtoLIN.exit108.i

if.then2.i103.i:                                  ; preds = %if.else.i96.i
  %quiet_flag.i104.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %13 = load i32, ptr %quiet_flag.i104.i, align 4, !tbaa !34
  %tobool.not.i105.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i105.i, label %if.then3.i106.i, label %DBtoLIN.exit108.i

if.then3.i106.i:                                  ; preds = %if.then2.i103.i
  %call.i107.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %12)
  br label %DBtoLIN.exit108.i

DBtoLIN.exit108.i:                                ; preds = %if.then3.i106.i, %if.then2.i103.i, %if.else.i96.i, %DBtoLIN.exit94.i
  %dB.addr.0.i98.i = phi i64 [ %12, %if.else.i96.i ], [ 0, %DBtoLIN.exit94.i ], [ 87, %if.then3.i106.i ], [ 87, %if.then2.i103.i ]
  %arrayidx.i99.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i98.i
  %14 = load float, ptr %arrayidx.i99.i, align 4, !tbaa !78
  %conv.i100.i = fpext float %14 to double
  %mul.i101.i = fmul double %conv.i100.i, 1.000000e-03
  %conv6.i102.i = fptrunc double %mul.i101.i to float
  %A2.i = getelementptr inbounds nuw i8, ptr %frame, i64 208
  %15 = load i64, ptr %A2.i, align 8, !tbaa !94
  %cmp.i109.i = icmp slt i64 %15, 0
  br i1 %cmp.i109.i, label %DBtoLIN.exit122.i, label %if.else.i110.i

if.else.i110.i:                                   ; preds = %DBtoLIN.exit108.i
  %cmp1.i111.i = icmp samesign ugt i64 %15, 87
  br i1 %cmp1.i111.i, label %if.then2.i117.i, label %DBtoLIN.exit122.i

if.then2.i117.i:                                  ; preds = %if.else.i110.i
  %quiet_flag.i118.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %16 = load i32, ptr %quiet_flag.i118.i, align 4, !tbaa !34
  %tobool.not.i119.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i119.i, label %if.then3.i120.i, label %DBtoLIN.exit122.i

if.then3.i120.i:                                  ; preds = %if.then2.i117.i
  %call.i121.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %15)
  br label %DBtoLIN.exit122.i

DBtoLIN.exit122.i:                                ; preds = %if.then3.i120.i, %if.then2.i117.i, %if.else.i110.i, %DBtoLIN.exit108.i
  %dB.addr.0.i112.i = phi i64 [ %15, %if.else.i110.i ], [ 0, %DBtoLIN.exit108.i ], [ 87, %if.then3.i120.i ], [ 87, %if.then2.i117.i ]
  %arrayidx.i113.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i112.i
  %17 = load float, ptr %arrayidx.i113.i, align 4, !tbaa !78
  %conv.i114.i = fpext float %17 to double
  %mul.i115.i = fmul double %conv.i114.i, 1.000000e-03
  %conv6.i116.i = fptrunc double %mul.i115.i to float
  %A3.i = getelementptr inbounds nuw i8, ptr %frame, i64 224
  %18 = load i64, ptr %A3.i, align 8, !tbaa !95
  %cmp.i123.i = icmp slt i64 %18, 0
  br i1 %cmp.i123.i, label %DBtoLIN.exit136.i, label %if.else.i124.i

if.else.i124.i:                                   ; preds = %DBtoLIN.exit122.i
  %cmp1.i125.i = icmp samesign ugt i64 %18, 87
  br i1 %cmp1.i125.i, label %if.then2.i131.i, label %DBtoLIN.exit136.i

if.then2.i131.i:                                  ; preds = %if.else.i124.i
  %quiet_flag.i132.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %19 = load i32, ptr %quiet_flag.i132.i, align 4, !tbaa !34
  %tobool.not.i133.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i133.i, label %if.then3.i134.i, label %DBtoLIN.exit136.i

if.then3.i134.i:                                  ; preds = %if.then2.i131.i
  %call.i135.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %18)
  br label %DBtoLIN.exit136.i

DBtoLIN.exit136.i:                                ; preds = %if.then3.i134.i, %if.then2.i131.i, %if.else.i124.i, %DBtoLIN.exit122.i
  %dB.addr.0.i126.i = phi i64 [ %18, %if.else.i124.i ], [ 0, %DBtoLIN.exit122.i ], [ 87, %if.then3.i134.i ], [ 87, %if.then2.i131.i ]
  %arrayidx.i127.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i126.i
  %20 = load float, ptr %arrayidx.i127.i, align 4, !tbaa !78
  %conv.i128.i = fpext float %20 to double
  %mul.i129.i = fmul double %conv.i128.i, 1.000000e-03
  %conv6.i130.i = fptrunc double %mul.i129.i to float
  %A4.i = getelementptr inbounds nuw i8, ptr %frame, i64 240
  %21 = load i64, ptr %A4.i, align 8, !tbaa !96
  %cmp.i137.i = icmp slt i64 %21, 0
  br i1 %cmp.i137.i, label %DBtoLIN.exit150.i, label %if.else.i138.i

if.else.i138.i:                                   ; preds = %DBtoLIN.exit136.i
  %cmp1.i139.i = icmp samesign ugt i64 %21, 87
  br i1 %cmp1.i139.i, label %if.then2.i145.i, label %DBtoLIN.exit150.i

if.then2.i145.i:                                  ; preds = %if.else.i138.i
  %quiet_flag.i146.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %22 = load i32, ptr %quiet_flag.i146.i, align 4, !tbaa !34
  %tobool.not.i147.i = icmp eq i32 %22, 0
  br i1 %tobool.not.i147.i, label %if.then3.i148.i, label %DBtoLIN.exit150.i

if.then3.i148.i:                                  ; preds = %if.then2.i145.i
  %call.i149.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %21)
  br label %DBtoLIN.exit150.i

DBtoLIN.exit150.i:                                ; preds = %if.then3.i148.i, %if.then2.i145.i, %if.else.i138.i, %DBtoLIN.exit136.i
  %dB.addr.0.i140.i = phi i64 [ %21, %if.else.i138.i ], [ 0, %DBtoLIN.exit136.i ], [ 87, %if.then3.i148.i ], [ 87, %if.then2.i145.i ]
  %arrayidx.i141.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i140.i
  %23 = load float, ptr %arrayidx.i141.i, align 4, !tbaa !78
  %conv.i142.i = fpext float %23 to double
  %mul.i143.i = fmul double %conv.i142.i, 1.000000e-03
  %conv6.i144.i = fptrunc double %mul.i143.i to float
  %A5.i = getelementptr inbounds nuw i8, ptr %frame, i64 256
  %24 = load i64, ptr %A5.i, align 8, !tbaa !91
  %cmp.i151.i = icmp slt i64 %24, 0
  br i1 %cmp.i151.i, label %DBtoLIN.exit164.i, label %if.else.i152.i

if.else.i152.i:                                   ; preds = %DBtoLIN.exit150.i
  %cmp1.i153.i = icmp samesign ugt i64 %24, 87
  br i1 %cmp1.i153.i, label %if.then2.i159.i, label %DBtoLIN.exit164.i

if.then2.i159.i:                                  ; preds = %if.else.i152.i
  %quiet_flag.i160.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %25 = load i32, ptr %quiet_flag.i160.i, align 4, !tbaa !34
  %tobool.not.i161.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i161.i, label %if.then3.i162.i, label %DBtoLIN.exit164.i

if.then3.i162.i:                                  ; preds = %if.then2.i159.i
  %call.i163.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %24)
  br label %DBtoLIN.exit164.i

DBtoLIN.exit164.i:                                ; preds = %if.then3.i162.i, %if.then2.i159.i, %if.else.i152.i, %DBtoLIN.exit150.i
  %dB.addr.0.i154.i = phi i64 [ %24, %if.else.i152.i ], [ 0, %DBtoLIN.exit150.i ], [ 87, %if.then3.i162.i ], [ 87, %if.then2.i159.i ]
  %arrayidx.i155.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i154.i
  %26 = load float, ptr %arrayidx.i155.i, align 4, !tbaa !78
  %conv.i156.i = fpext float %26 to double
  %mul.i157.i = fmul double %conv.i156.i, 1.000000e-03
  %conv6.i158.i = fptrunc double %mul.i157.i to float
  %A6.i = getelementptr inbounds nuw i8, ptr %frame, i64 272
  %27 = load i64, ptr %A6.i, align 8, !tbaa !92
  %cmp.i165.i = icmp slt i64 %27, 0
  br i1 %cmp.i165.i, label %DBtoLIN.exit178.i, label %if.else.i166.i

if.else.i166.i:                                   ; preds = %DBtoLIN.exit164.i
  %cmp1.i167.i = icmp samesign ugt i64 %27, 87
  br i1 %cmp1.i167.i, label %if.then2.i173.i, label %DBtoLIN.exit178.i

if.then2.i173.i:                                  ; preds = %if.else.i166.i
  %quiet_flag.i174.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %28 = load i32, ptr %quiet_flag.i174.i, align 4, !tbaa !34
  %tobool.not.i175.i = icmp eq i32 %28, 0
  br i1 %tobool.not.i175.i, label %if.then3.i176.i, label %DBtoLIN.exit178.i

if.then3.i176.i:                                  ; preds = %if.then2.i173.i
  %call.i177.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %27)
  br label %DBtoLIN.exit178.i

DBtoLIN.exit178.i:                                ; preds = %if.then3.i176.i, %if.then2.i173.i, %if.else.i166.i, %DBtoLIN.exit164.i
  %dB.addr.0.i168.i = phi i64 [ %27, %if.else.i166.i ], [ 0, %DBtoLIN.exit164.i ], [ 87, %if.then3.i176.i ], [ 87, %if.then2.i173.i ]
  %arrayidx.i169.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i168.i
  %29 = load float, ptr %arrayidx.i169.i, align 4, !tbaa !78
  %conv.i170.i = fpext float %29 to double
  %mul.i171.i = fmul double %conv.i170.i, 1.000000e-03
  %conv6.i172.i = fptrunc double %mul.i171.i to float
  %ANP.i = getelementptr inbounds nuw i8, ptr %frame, i64 288
  %30 = load i64, ptr %ANP.i, align 8, !tbaa !107
  %cmp.i179.i = icmp slt i64 %30, 0
  br i1 %cmp.i179.i, label %DBtoLIN.exit192.i, label %if.else.i180.i

if.else.i180.i:                                   ; preds = %DBtoLIN.exit178.i
  %cmp1.i181.i = icmp samesign ugt i64 %30, 87
  br i1 %cmp1.i181.i, label %if.then2.i187.i, label %DBtoLIN.exit192.i

if.then2.i187.i:                                  ; preds = %if.else.i180.i
  %quiet_flag.i188.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %31 = load i32, ptr %quiet_flag.i188.i, align 4, !tbaa !34
  %tobool.not.i189.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i189.i, label %if.then3.i190.i, label %DBtoLIN.exit192.i

if.then3.i190.i:                                  ; preds = %if.then2.i187.i
  %call.i191.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %30)
  br label %DBtoLIN.exit192.i

DBtoLIN.exit192.i:                                ; preds = %if.then3.i190.i, %if.then2.i187.i, %if.else.i180.i, %DBtoLIN.exit178.i
  %dB.addr.0.i182.i = phi i64 [ %30, %if.else.i180.i ], [ 0, %DBtoLIN.exit178.i ], [ 87, %if.then3.i190.i ], [ 87, %if.then2.i187.i ]
  %arrayidx.i183.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i182.i
  %32 = load float, ptr %arrayidx.i183.i, align 4, !tbaa !78
  %conv.i184.i = fpext float %32 to double
  %mul.i185.i = fmul double %conv.i184.i, 1.000000e-03
  %conv6.i186.i = fptrunc double %mul.i185.i to float
  %AB.i = getelementptr inbounds nuw i8, ptr %frame, i64 296
  %33 = load i64, ptr %AB.i, align 8, !tbaa !90
  %cmp.i193.i = icmp slt i64 %33, 0
  br i1 %cmp.i193.i, label %DBtoLIN.exit206.i, label %if.else.i194.i

if.else.i194.i:                                   ; preds = %DBtoLIN.exit192.i
  %cmp1.i195.i = icmp samesign ugt i64 %33, 87
  br i1 %cmp1.i195.i, label %if.then2.i201.i, label %DBtoLIN.exit206.i

if.then2.i201.i:                                  ; preds = %if.else.i194.i
  %quiet_flag.i202.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %34 = load i32, ptr %quiet_flag.i202.i, align 4, !tbaa !34
  %tobool.not.i203.i = icmp eq i32 %34, 0
  br i1 %tobool.not.i203.i, label %if.then3.i204.i, label %DBtoLIN.exit206.i

if.then3.i204.i:                                  ; preds = %if.then2.i201.i
  %call.i205.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %33)
  br label %DBtoLIN.exit206.i

DBtoLIN.exit206.i:                                ; preds = %if.then3.i204.i, %if.then2.i201.i, %if.else.i194.i, %DBtoLIN.exit192.i
  %dB.addr.0.i196.i = phi i64 [ %33, %if.else.i194.i ], [ 0, %DBtoLIN.exit192.i ], [ 87, %if.then3.i204.i ], [ 87, %if.then2.i201.i ]
  %arrayidx.i197.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i196.i
  %35 = load float, ptr %arrayidx.i197.i, align 4, !tbaa !78
  %conv.i198.i = fpext float %35 to double
  %mul.i199.i = fmul double %conv.i198.i, 1.000000e-03
  %conv6.i200.i = fptrunc double %mul.i199.i to float
  %conv36.i = fpext float %conv6.i200.i to double
  %mul37.i = fmul double %conv36.i, 5.000000e-02
  %conv38.i = fptrunc double %mul37.i to float
  store float %conv38.i, ptr @amp_bypas, align 4, !tbaa !78
  %nfcascade.i = getelementptr inbounds nuw i8, ptr %globals, i64 24
  %36 = load i64, ptr %nfcascade.i, align 8, !tbaa !37
  %cmp39.i = icmp sgt i64 %36, 7
  br i1 %cmp39.i, label %if.then41.i, label %if.end47.i

if.then41.i:                                      ; preds = %DBtoLIN.exit206.i
  %samrate.i = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %37 = load i64, ptr %samrate.i, align 8, !tbaa !32
  %cmp42.i = icmp sgt i64 %37, 15999
  br i1 %cmp42.i, label %if.then51.i.thread, label %if.end47.thread.i

if.then51.i.thread:                               ; preds = %if.then41.i
  %38 = load float, ptr @minus_pi_t, align 4, !tbaa !78
  %mul.i207.i = fmul float %38, 6.000000e+02
  %conv1.i.i = fpext float %mul.i207.i to double
  %call.i208.i = tail call double @exp(double noundef %conv1.i.i) #31, !tbaa !10
  %conv2.i.i = fptrunc double %call.i208.i to float
  %39 = fneg float %conv2.i.i
  %fneg.i.i = fmul float %conv2.i.i, %39
  store float %fneg.i.i, ptr @r8c.2, align 8, !tbaa !108
  %40 = load float, ptr @two_pi_t, align 4, !tbaa !78
  %mul5.i.i = fmul float %40, 7.500000e+03
  %conv6.i209.i = fpext float %mul5.i.i to double
  %conv7.i.i = fpext float %conv2.i.i to double
  %call8.i.i = tail call double @cos(double noundef %conv6.i209.i) #31, !tbaa !10
  %mul9.i.i = fmul double %call8.i.i, %conv7.i.i
  %mul10.i.i = fmul double %mul9.i.i, 2.000000e+00
  %conv11.i.i = fptrunc double %mul10.i.i to float
  store float %conv11.i.i, ptr @r8c.1, align 4, !tbaa !110
  %conv13.i.i = fpext float %conv11.i.i to double
  %sub.i.i = fsub double 1.000000e+00, %conv13.i.i
  %conv15.i.i = fpext float %fneg.i.i to double
  %sub16.i.i = fsub double %sub.i.i, %conv15.i.i
  %conv17.i.i = fptrunc double %sub16.i.i to float
  store float %conv17.i.i, ptr @r8c.0, align 8, !tbaa !111
  br label %if.end59.thread.i

if.end47.thread.i:                                ; preds = %if.then41.i
  store i64 6, ptr %nfcascade.i, align 8, !tbaa !37
  br label %if.end64.thread.i

if.end47.i:                                       ; preds = %DBtoLIN.exit206.i
  %cmp49.i = icmp eq i64 %36, 7
  br i1 %cmp49.i, label %if.then51.i, label %if.end59.i

if.then51.i:                                      ; preds = %if.end47.i
  %samrate52.i.phi.trans.insert = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %.pre = load i64, ptr %samrate52.i.phi.trans.insert, align 8, !tbaa !32
  %41 = icmp sgt i64 %.pre, 15999
  br i1 %41, label %if.end59.thread.i, label %if.else56.i

if.end59.thread.i:                                ; preds = %if.then51.i.thread, %if.then51.i
  %42 = load float, ptr @minus_pi_t, align 4, !tbaa !78
  %mul.i210.i = fmul float %42, 5.000000e+02
  %conv1.i211.i = fpext float %mul.i210.i to double
  %call.i212.i = tail call double @exp(double noundef %conv1.i211.i) #31, !tbaa !10
  %conv2.i213.i = fptrunc double %call.i212.i to float
  %43 = fneg float %conv2.i213.i
  %fneg.i214.i = fmul float %conv2.i213.i, %43
  store float %fneg.i214.i, ptr @r7c.2, align 8, !tbaa !108
  %44 = load float, ptr @two_pi_t, align 4, !tbaa !78
  %mul5.i215.i = fmul float %44, 6.500000e+03
  %conv6.i216.i = fpext float %mul5.i215.i to double
  %conv7.i217.i = fpext float %conv2.i213.i to double
  %call8.i218.i = tail call double @cos(double noundef %conv6.i216.i) #31, !tbaa !10
  %mul9.i219.i = fmul double %call8.i218.i, %conv7.i217.i
  %mul10.i220.i = fmul double %mul9.i219.i, 2.000000e+00
  %conv11.i221.i = fptrunc double %mul10.i220.i to float
  store float %conv11.i221.i, ptr @r7c.1, align 4, !tbaa !110
  %conv13.i222.i = fpext float %conv11.i221.i to double
  %sub.i223.i = fsub double 1.000000e+00, %conv13.i222.i
  %conv15.i224.i = fpext float %fneg.i214.i to double
  %sub16.i225.i = fsub double %sub.i223.i, %conv15.i224.i
  %conv17.i226.i = fptrunc double %sub16.i225.i to float
  store float %conv17.i226.i, ptr @r7c.0, align 8, !tbaa !111
  br label %if.end64.thread.i

if.else56.i:                                      ; preds = %if.then51.i
  store i64 6, ptr %nfcascade.i, align 8, !tbaa !37
  br label %if.end64.thread.i

if.end59.i:                                       ; preds = %if.end47.i
  %cmp61.i = icmp sgt i64 %36, 5
  br i1 %cmp61.i, label %if.end64.thread.i, label %if.end64.i

if.end64.thread.i:                                ; preds = %if.end59.i, %if.else56.i, %if.end59.thread.i, %if.end47.thread.i
  %F6hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 96
  %45 = load i64, ptr %F6hz.i, align 8, !tbaa !112
  %B6hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 104
  %46 = load i64, ptr %B6hz.i, align 8, !tbaa !113
  %47 = load float, ptr @minus_pi_t, align 4, !tbaa !78
  %conv.i227.i = sitofp i64 %46 to float
  %mul.i228.i = fmul float %47, %conv.i227.i
  %conv1.i229.i = fpext float %mul.i228.i to double
  %call.i230.i = tail call double @exp(double noundef %conv1.i229.i) #31, !tbaa !10
  %conv2.i231.i = fptrunc double %call.i230.i to float
  %48 = fneg float %conv2.i231.i
  %fneg.i232.i = fmul float %conv2.i231.i, %48
  store float %fneg.i232.i, ptr @r6c.2, align 8, !tbaa !108
  %49 = load float, ptr @two_pi_t, align 4, !tbaa !78
  %conv4.i.i = sitofp i64 %45 to float
  %mul5.i233.i = fmul float %49, %conv4.i.i
  %conv6.i234.i = fpext float %mul5.i233.i to double
  %conv7.i235.i = fpext float %conv2.i231.i to double
  %call8.i236.i = tail call double @cos(double noundef %conv6.i234.i) #31, !tbaa !10
  %mul9.i237.i = fmul double %call8.i236.i, %conv7.i235.i
  %mul10.i238.i = fmul double %mul9.i237.i, 2.000000e+00
  %conv11.i239.i = fptrunc double %mul10.i238.i to float
  store float %conv11.i239.i, ptr @r6c.1, align 4, !tbaa !110
  %conv13.i240.i = fpext float %conv11.i239.i to double
  %sub.i241.i = fsub double 1.000000e+00, %conv13.i240.i
  %conv15.i242.i = fpext float %fneg.i232.i to double
  %sub16.i243.i = fsub double %sub.i241.i, %conv15.i242.i
  %conv17.i244.i = fptrunc double %sub16.i243.i to float
  store float %conv17.i244.i, ptr @r6c.0, align 8, !tbaa !111
  br label %if.then68.i

if.end64.i:                                       ; preds = %if.end59.i
  %cmp66.i = icmp eq i64 %36, 5
  %.pre540.i = load float, ptr @minus_pi_t, align 4, !tbaa !78
  %.pre.i = load float, ptr @two_pi_t, align 4, !tbaa !78
  br i1 %cmp66.i, label %if.then68.i, label %if.end69.i

if.then68.i:                                      ; preds = %if.end64.i, %if.end64.thread.i
  %50 = phi float [ %49, %if.end64.thread.i ], [ %.pre.i, %if.end64.i ]
  %51 = phi float [ %47, %if.end64.thread.i ], [ %.pre540.i, %if.end64.i ]
  %F5hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 80
  %52 = load i64, ptr %F5hz.i, align 8, !tbaa !114
  %B5hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 88
  %53 = load i64, ptr %B5hz.i, align 8, !tbaa !115
  %conv.i245.i = sitofp i64 %53 to float
  %mul.i246.i = fmul float %51, %conv.i245.i
  %conv1.i247.i = fpext float %mul.i246.i to double
  %call.i248.i = tail call double @exp(double noundef %conv1.i247.i) #31, !tbaa !10
  %conv2.i249.i = fptrunc double %call.i248.i to float
  %54 = fneg float %conv2.i249.i
  %fneg.i250.i = fmul float %conv2.i249.i, %54
  store float %fneg.i250.i, ptr @r5c.2, align 8, !tbaa !108
  %conv4.i251.i = sitofp i64 %52 to float
  %mul5.i252.i = fmul float %50, %conv4.i251.i
  %conv6.i253.i = fpext float %mul5.i252.i to double
  %conv7.i254.i = fpext float %conv2.i249.i to double
  %call8.i255.i = tail call double @cos(double noundef %conv6.i253.i) #31, !tbaa !10
  %mul9.i256.i = fmul double %call8.i255.i, %conv7.i254.i
  %mul10.i257.i = fmul double %mul9.i256.i, 2.000000e+00
  %conv11.i258.i = fptrunc double %mul10.i257.i to float
  store float %conv11.i258.i, ptr @r5c.1, align 4, !tbaa !110
  %conv13.i259.i = fpext float %conv11.i258.i to double
  %sub.i260.i = fsub double 1.000000e+00, %conv13.i259.i
  %conv15.i261.i = fpext float %fneg.i250.i to double
  %sub16.i262.i = fsub double %sub.i260.i, %conv15.i261.i
  %conv17.i263.i = fptrunc double %sub16.i262.i to float
  store float %conv17.i263.i, ptr @r5c.0, align 8, !tbaa !111
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then68.i, %if.end64.i
  %55 = phi float [ %50, %if.then68.i ], [ %.pre.i, %if.end64.i ]
  %56 = phi float [ %51, %if.then68.i ], [ %.pre540.i, %if.end64.i ]
  %conv32.i = fpext float %conv6.i186.i to double
  %mul33.i = fmul double %conv32.i, 6.000000e-01
  %conv34.i = fptrunc double %mul33.i to float
  %conv28.i = fpext float %conv6.i172.i to double
  %mul29.i = fmul double %conv28.i, 3.000000e-02
  %conv30.i = fptrunc double %mul29.i to float
  %conv24.i = fpext float %conv6.i158.i to double
  %mul25.i = fmul double %conv24.i, 2.200000e-02
  %conv26.i = fptrunc double %mul25.i to float
  %conv20.i = fpext float %conv6.i144.i to double
  %mul21.i = fmul double %conv20.i, 4.000000e-02
  %conv22.i = fptrunc double %mul21.i to float
  %conv16.i = fpext float %conv6.i130.i to double
  %mul17.i = fmul double %conv16.i, 6.000000e-02
  %conv18.i = fptrunc double %mul17.i to float
  %conv12.i = fpext float %conv6.i116.i to double
  %mul13.i = fmul double %conv12.i, 1.500000e-01
  %conv14.i = fptrunc double %mul13.i to float
  %conv8.i = fpext float %conv6.i102.i to double
  %mul9.i = fmul double %conv8.i, 4.000000e-01
  %conv10.i = fptrunc double %mul9.i to float
  %F4hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 64
  %57 = load i64, ptr %F4hz.i, align 8, !tbaa !116
  %B4hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 72
  %58 = load i64, ptr %B4hz.i, align 8, !tbaa !117
  %conv.i264.i = sitofp i64 %58 to float
  %mul.i265.i = fmul float %56, %conv.i264.i
  %conv1.i266.i = fpext float %mul.i265.i to double
  %call.i267.i = tail call double @exp(double noundef %conv1.i266.i) #31, !tbaa !10
  %conv2.i268.i = fptrunc double %call.i267.i to float
  %59 = fneg float %conv2.i268.i
  %fneg.i269.i = fmul float %conv2.i268.i, %59
  store float %fneg.i269.i, ptr @r4c.2, align 8, !tbaa !108
  %conv4.i270.i = sitofp i64 %57 to float
  %mul5.i271.i = fmul float %55, %conv4.i270.i
  %conv6.i272.i = fpext float %mul5.i271.i to double
  %conv7.i273.i = fpext float %conv2.i268.i to double
  %call8.i274.i = tail call double @cos(double noundef %conv6.i272.i) #31, !tbaa !10
  %mul9.i275.i = fmul double %call8.i274.i, %conv7.i273.i
  %mul10.i276.i = fmul double %mul9.i275.i, 2.000000e+00
  %conv11.i277.i = fptrunc double %mul10.i276.i to float
  store float %conv11.i277.i, ptr @r4c.1, align 4, !tbaa !110
  %conv13.i278.i = fpext float %conv11.i277.i to double
  %sub.i279.i = fsub double 1.000000e+00, %conv13.i278.i
  %conv15.i280.i = fpext float %fneg.i269.i to double
  %sub16.i281.i = fsub double %sub.i279.i, %conv15.i280.i
  %conv17.i282.i = fptrunc double %sub16.i281.i to float
  store float %conv17.i282.i, ptr @r4c.0, align 8, !tbaa !111
  %F3hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 48
  %60 = load i64, ptr %F3hz.i, align 8, !tbaa !89
  %B3hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 56
  %61 = load i64, ptr %B3hz.i, align 8, !tbaa !56
  %conv.i283.i = sitofp i64 %61 to float
  %mul.i284.i = fmul float %56, %conv.i283.i
  %conv1.i285.i = fpext float %mul.i284.i to double
  %call.i286.i = tail call double @exp(double noundef %conv1.i285.i) #31, !tbaa !10
  %conv2.i287.i = fptrunc double %call.i286.i to float
  %62 = fneg float %conv2.i287.i
  %fneg.i288.i = fmul float %conv2.i287.i, %62
  store float %fneg.i288.i, ptr @r3c.2, align 8, !tbaa !108
  %conv4.i289.i = sitofp i64 %60 to float
  %mul5.i290.i = fmul float %55, %conv4.i289.i
  %conv6.i291.i = fpext float %mul5.i290.i to double
  %conv7.i292.i = fpext float %conv2.i287.i to double
  %call8.i293.i = tail call double @cos(double noundef %conv6.i291.i) #31, !tbaa !10
  %mul9.i294.i = fmul double %call8.i293.i, %conv7.i292.i
  %mul10.i295.i = fmul double %mul9.i294.i, 2.000000e+00
  %conv11.i296.i = fptrunc double %mul10.i295.i to float
  store float %conv11.i296.i, ptr @r3c.1, align 4, !tbaa !110
  %conv13.i297.i = fpext float %conv11.i296.i to double
  %sub.i298.i = fsub double 1.000000e+00, %conv13.i297.i
  %conv15.i299.i = fpext float %fneg.i288.i to double
  %sub16.i300.i = fsub double %sub.i298.i, %conv15.i299.i
  %conv17.i301.i = fptrunc double %sub16.i300.i to float
  store float %conv17.i301.i, ptr @r3c.0, align 8, !tbaa !111
  %F2hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 32
  %63 = load i64, ptr %F2hz.i, align 8, !tbaa !88
  %B2hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 40
  %64 = load i64, ptr %B2hz.i, align 8, !tbaa !54
  %conv.i302.i = sitofp i64 %64 to float
  %mul.i303.i = fmul float %56, %conv.i302.i
  %conv1.i304.i = fpext float %mul.i303.i to double
  %call.i305.i = tail call double @exp(double noundef %conv1.i304.i) #31, !tbaa !10
  %conv2.i306.i = fptrunc double %call.i305.i to float
  %65 = fneg float %conv2.i306.i
  %fneg.i307.i = fmul float %conv2.i306.i, %65
  store float %fneg.i307.i, ptr @r2c.2, align 8, !tbaa !108
  %conv4.i308.i = sitofp i64 %63 to float
  %mul5.i309.i = fmul float %55, %conv4.i308.i
  %conv6.i310.i = fpext float %mul5.i309.i to double
  %conv7.i311.i = fpext float %conv2.i306.i to double
  %call8.i312.i = tail call double @cos(double noundef %conv6.i310.i) #31, !tbaa !10
  %mul9.i313.i = fmul double %call8.i312.i, %conv7.i311.i
  %mul10.i314.i = fmul double %mul9.i313.i, 2.000000e+00
  %conv11.i315.i = fptrunc double %mul10.i314.i to float
  store float %conv11.i315.i, ptr @r2c.1, align 4, !tbaa !110
  %conv13.i316.i = fpext float %conv11.i315.i to double
  %sub.i317.i = fsub double 1.000000e+00, %conv13.i316.i
  %conv15.i318.i = fpext float %fneg.i307.i to double
  %sub16.i319.i = fsub double %sub.i317.i, %conv15.i318.i
  %conv17.i320.i = fptrunc double %sub16.i319.i to float
  store float %conv17.i320.i, ptr @r2c.0, align 8, !tbaa !111
  %F1hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 16
  %66 = load i64, ptr %F1hz.i, align 8, !tbaa !87
  %B1hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 24
  %67 = load i64, ptr %B1hz.i, align 8, !tbaa !52
  %conv.i321.i = sitofp i64 %67 to float
  %mul.i322.i = fmul float %56, %conv.i321.i
  %conv1.i323.i = fpext float %mul.i322.i to double
  %call.i324.i = tail call double @exp(double noundef %conv1.i323.i) #31, !tbaa !10
  %conv2.i325.i = fptrunc double %call.i324.i to float
  %68 = fneg float %conv2.i325.i
  %fneg.i326.i = fmul float %conv2.i325.i, %68
  store float %fneg.i326.i, ptr @r1c.2, align 8, !tbaa !108
  %conv4.i327.i = sitofp i64 %66 to float
  %mul5.i328.i = fmul float %55, %conv4.i327.i
  %conv6.i329.i = fpext float %mul5.i328.i to double
  %conv7.i330.i = fpext float %conv2.i325.i to double
  %call8.i331.i = tail call double @cos(double noundef %conv6.i329.i) #31, !tbaa !10
  %mul9.i332.i = fmul double %call8.i331.i, %conv7.i330.i
  %mul10.i333.i = fmul double %mul9.i332.i, 2.000000e+00
  %conv11.i334.i = fptrunc double %mul10.i333.i to float
  store float %conv11.i334.i, ptr @r1c.1, align 4, !tbaa !110
  %conv13.i335.i = fpext float %conv11.i334.i to double
  %sub.i336.i = fsub double 1.000000e+00, %conv13.i335.i
  %conv15.i337.i = fpext float %fneg.i326.i to double
  %sub16.i338.i = fsub double %sub.i336.i, %conv15.i337.i
  %conv17.i339.i = fptrunc double %sub16.i338.i to float
  store float %conv17.i339.i, ptr @r1c.0, align 8, !tbaa !111
  %FNPhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 128
  %69 = load i64, ptr %FNPhz.i, align 8, !tbaa !51
  %BNPhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 136
  %70 = load i64, ptr %BNPhz.i, align 8, !tbaa !118
  %conv.i340.i = sitofp i64 %70 to float
  %mul.i341.i = fmul float %56, %conv.i340.i
  %conv1.i342.i = fpext float %mul.i341.i to double
  %call.i343.i = tail call double @exp(double noundef %conv1.i342.i) #31, !tbaa !10
  %conv2.i344.i = fptrunc double %call.i343.i to float
  %71 = fneg float %conv2.i344.i
  %fneg.i345.i = fmul float %conv2.i344.i, %71
  store float %fneg.i345.i, ptr @rnpc.2, align 8, !tbaa !108
  %conv4.i346.i = sitofp i64 %69 to float
  %mul5.i347.i = fmul float %55, %conv4.i346.i
  %conv6.i348.i = fpext float %mul5.i347.i to double
  %conv7.i349.i = fpext float %conv2.i344.i to double
  %call8.i350.i = tail call double @cos(double noundef %conv6.i348.i) #31, !tbaa !10
  %mul9.i351.i = fmul double %call8.i350.i, %conv7.i349.i
  %mul10.i352.i = fmul double %mul9.i351.i, 2.000000e+00
  %conv11.i353.i = fptrunc double %mul10.i352.i to float
  store float %conv11.i353.i, ptr @rnpc.1, align 4, !tbaa !110
  %conv13.i354.i = fpext float %conv11.i353.i to double
  %sub.i355.i = fsub double 1.000000e+00, %conv13.i354.i
  %conv15.i356.i = fpext float %fneg.i345.i to double
  %sub16.i357.i = fsub double %sub.i355.i, %conv15.i356.i
  %conv17.i358.i = fptrunc double %sub16.i357.i to float
  store float %conv17.i358.i, ptr @rnpc.0, align 8, !tbaa !111
  %FNZhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 112
  %72 = load i64, ptr %FNZhz.i, align 8, !tbaa !84
  %BNZhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 120
  %73 = load i64, ptr %BNZhz.i, align 8, !tbaa !119
  %conv.i.i.i = sitofp i64 %73 to float
  %mul.i.i.i = fmul float %56, %conv.i.i.i
  %conv1.i.i.i = fpext float %mul.i.i.i to double
  %call.i.i.i = tail call double @exp(double noundef %conv1.i.i.i) #31, !tbaa !10
  %conv2.i.i.i = fptrunc double %call.i.i.i to float
  %74 = fneg float %conv2.i.i.i
  %fneg.i.i.i = fmul float %conv2.i.i.i, %74
  %conv4.i.i.i = sitofp i64 %72 to float
  %mul5.i.i.i = fmul float %55, %conv4.i.i.i
  %conv6.i.i.i = fpext float %mul5.i.i.i to double
  %conv7.i.i.i = fpext float %conv2.i.i.i to double
  %call8.i.i.i = tail call double @cos(double noundef %conv6.i.i.i) #31, !tbaa !10
  %mul9.i.i.i = fmul double %call8.i.i.i, %conv7.i.i.i
  %mul10.i.i.i = fmul double %mul9.i.i.i, 2.000000e+00
  %conv11.i.i.i = fptrunc double %mul10.i.i.i to float
  %conv13.i.i.i = fpext float %conv11.i.i.i to double
  %sub.i.i.i = fsub double 1.000000e+00, %conv13.i.i.i
  %conv15.i.i.i = fpext float %fneg.i.i.i to double
  %sub16.i.i.i = fsub double %sub.i.i.i, %conv15.i.i.i
  %conv17.i.i.i = fptrunc double %sub16.i.i.i to float
  %conv1.i359.i = fdiv float 1.000000e+00, %conv17.i.i.i
  store float %conv1.i359.i, ptr @rnz.0, align 8, !tbaa !111
  %fneg.i360.i = fneg float %conv1.i359.i
  %mul.i361.i = fmul float %conv11.i.i.i, %fneg.i360.i
  store float %mul.i361.i, ptr @rnz.1, align 4, !tbaa !110
  %mul6.i.i = fmul float %fneg.i.i.i, %fneg.i360.i
  store float %mul6.i.i, ptr @rnz.2, align 8, !tbaa !108
  %B1phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 200
  %75 = load i64, ptr %B1phz.i, align 8, !tbaa !53
  %conv.i.i362.i = sitofp i64 %75 to float
  %mul.i.i363.i = fmul float %56, %conv.i.i362.i
  %conv1.i.i364.i = fpext float %mul.i.i363.i to double
  %call.i.i365.i = tail call double @exp(double noundef %conv1.i.i364.i) #31, !tbaa !10
  %conv2.i.i366.i = fptrunc double %call.i.i365.i to float
  %76 = fneg float %conv2.i.i366.i
  %fneg.i.i367.i = fmul float %conv2.i.i366.i, %76
  store float %fneg.i.i367.i, ptr @r1p.2, align 8, !tbaa !108
  %conv7.i.i371.i = fpext float %conv2.i.i366.i to double
  %call8.i.i372.i = tail call double @cos(double noundef %conv6.i329.i) #31, !tbaa !10
  %mul9.i.i373.i = fmul double %call8.i.i372.i, %conv7.i.i371.i
  %mul10.i.i374.i = fmul double %mul9.i.i373.i, 2.000000e+00
  %conv11.i.i375.i = fptrunc double %mul10.i.i374.i to float
  store float %conv11.i.i375.i, ptr @r1p.1, align 4, !tbaa !110
  %conv13.i.i376.i = fpext float %conv11.i.i375.i to double
  %sub.i.i377.i = fsub double 1.000000e+00, %conv13.i.i376.i
  %conv15.i.i378.i = fpext float %fneg.i.i367.i to double
  %sub16.i.i379.i = fsub double %sub.i.i377.i, %conv15.i.i378.i
  %conv17.i.i380.i = fptrunc double %sub16.i.i379.i to float
  %mul.i381.i = fmul float %conv10.i, %conv17.i.i380.i
  store float %mul.i381.i, ptr @r1p.0, align 8, !tbaa !111
  %call.i.i385.i = tail call double @exp(double noundef %conv1.i342.i) #31, !tbaa !10
  %conv2.i.i386.i = fptrunc double %call.i.i385.i to float
  %77 = fneg float %conv2.i.i386.i
  %fneg.i.i387.i = fmul float %conv2.i.i386.i, %77
  store float %fneg.i.i387.i, ptr getelementptr inbounds nuw (i8, ptr @rnpp, i64 16), align 8, !tbaa !108
  %conv7.i.i391.i = fpext float %conv2.i.i386.i to double
  %call8.i.i392.i = tail call double @cos(double noundef %conv6.i348.i) #31, !tbaa !10
  %mul9.i.i393.i = fmul double %call8.i.i392.i, %conv7.i.i391.i
  %mul10.i.i394.i = fmul double %mul9.i.i393.i, 2.000000e+00
  %conv11.i.i395.i = fptrunc double %mul10.i.i394.i to float
  store float %conv11.i.i395.i, ptr getelementptr inbounds nuw (i8, ptr @rnpp, i64 12), align 4, !tbaa !110
  %conv13.i.i396.i = fpext float %conv11.i.i395.i to double
  %sub.i.i397.i = fsub double 1.000000e+00, %conv13.i.i396.i
  %conv15.i.i398.i = fpext float %fneg.i.i387.i to double
  %sub16.i.i399.i = fsub double %sub.i.i397.i, %conv15.i.i398.i
  %conv17.i.i400.i = fptrunc double %sub16.i.i399.i to float
  %mul.i401.i = fmul float %conv34.i, %conv17.i.i400.i
  store float %mul.i401.i, ptr getelementptr inbounds nuw (i8, ptr @rnpp, i64 8), align 8, !tbaa !111
  %B2phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 216
  %78 = load i64, ptr %B2phz.i, align 8, !tbaa !55
  %conv.i.i402.i = sitofp i64 %78 to float
  %mul.i.i403.i = fmul float %56, %conv.i.i402.i
  %conv1.i.i404.i = fpext float %mul.i.i403.i to double
  %call.i.i405.i = tail call double @exp(double noundef %conv1.i.i404.i) #31, !tbaa !10
  %conv2.i.i406.i = fptrunc double %call.i.i405.i to float
  %79 = fneg float %conv2.i.i406.i
  %fneg.i.i407.i = fmul float %conv2.i.i406.i, %79
  store float %fneg.i.i407.i, ptr @r2p.2, align 8, !tbaa !108
  %conv7.i.i411.i = fpext float %conv2.i.i406.i to double
  %call8.i.i412.i = tail call double @cos(double noundef %conv6.i310.i) #31, !tbaa !10
  %mul9.i.i413.i = fmul double %call8.i.i412.i, %conv7.i.i411.i
  %mul10.i.i414.i = fmul double %mul9.i.i413.i, 2.000000e+00
  %conv11.i.i415.i = fptrunc double %mul10.i.i414.i to float
  store float %conv11.i.i415.i, ptr @r2p.1, align 4, !tbaa !110
  %conv13.i.i416.i = fpext float %conv11.i.i415.i to double
  %sub.i.i417.i = fsub double 1.000000e+00, %conv13.i.i416.i
  %conv15.i.i418.i = fpext float %fneg.i.i407.i to double
  %sub16.i.i419.i = fsub double %sub.i.i417.i, %conv15.i.i418.i
  %conv17.i.i420.i = fptrunc double %sub16.i.i419.i to float
  %mul.i421.i = fmul float %conv14.i, %conv17.i.i420.i
  store float %mul.i421.i, ptr @r2p.0, align 8, !tbaa !111
  %B3phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 232
  %80 = load i64, ptr %B3phz.i, align 8, !tbaa !57
  %conv.i.i422.i = sitofp i64 %80 to float
  %mul.i.i423.i = fmul float %56, %conv.i.i422.i
  %conv1.i.i424.i = fpext float %mul.i.i423.i to double
  %call.i.i425.i = tail call double @exp(double noundef %conv1.i.i424.i) #31, !tbaa !10
  %conv2.i.i426.i = fptrunc double %call.i.i425.i to float
  %81 = fneg float %conv2.i.i426.i
  %fneg.i.i427.i = fmul float %conv2.i.i426.i, %81
  store float %fneg.i.i427.i, ptr @r3p.2, align 8, !tbaa !108
  %conv7.i.i431.i = fpext float %conv2.i.i426.i to double
  %call8.i.i432.i = tail call double @cos(double noundef %conv6.i291.i) #31, !tbaa !10
  %mul9.i.i433.i = fmul double %call8.i.i432.i, %conv7.i.i431.i
  %mul10.i.i434.i = fmul double %mul9.i.i433.i, 2.000000e+00
  %conv11.i.i435.i = fptrunc double %mul10.i.i434.i to float
  store float %conv11.i.i435.i, ptr @r3p.1, align 4, !tbaa !110
  %conv13.i.i436.i = fpext float %conv11.i.i435.i to double
  %sub.i.i437.i = fsub double 1.000000e+00, %conv13.i.i436.i
  %conv15.i.i438.i = fpext float %fneg.i.i427.i to double
  %sub16.i.i439.i = fsub double %sub.i.i437.i, %conv15.i.i438.i
  %conv17.i.i440.i = fptrunc double %sub16.i.i439.i to float
  %mul.i441.i = fmul float %conv18.i, %conv17.i.i440.i
  store float %mul.i441.i, ptr @r3p.0, align 8, !tbaa !111
  %B4phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 248
  %82 = load i64, ptr %B4phz.i, align 8, !tbaa !58
  %conv.i.i442.i = sitofp i64 %82 to float
  %mul.i.i443.i = fmul float %56, %conv.i.i442.i
  %conv1.i.i444.i = fpext float %mul.i.i443.i to double
  %call.i.i445.i = tail call double @exp(double noundef %conv1.i.i444.i) #31, !tbaa !10
  %conv2.i.i446.i = fptrunc double %call.i.i445.i to float
  %83 = fneg float %conv2.i.i446.i
  %fneg.i.i447.i = fmul float %conv2.i.i446.i, %83
  store float %fneg.i.i447.i, ptr @r4p.2, align 8, !tbaa !108
  %conv7.i.i451.i = fpext float %conv2.i.i446.i to double
  %call8.i.i452.i = tail call double @cos(double noundef %conv6.i272.i) #31, !tbaa !10
  %mul9.i.i453.i = fmul double %call8.i.i452.i, %conv7.i.i451.i
  %mul10.i.i454.i = fmul double %mul9.i.i453.i, 2.000000e+00
  %conv11.i.i455.i = fptrunc double %mul10.i.i454.i to float
  store float %conv11.i.i455.i, ptr @r4p.1, align 4, !tbaa !110
  %conv13.i.i456.i = fpext float %conv11.i.i455.i to double
  %sub.i.i457.i = fsub double 1.000000e+00, %conv13.i.i456.i
  %conv15.i.i458.i = fpext float %fneg.i.i447.i to double
  %sub16.i.i459.i = fsub double %sub.i.i457.i, %conv15.i.i458.i
  %conv17.i.i460.i = fptrunc double %sub16.i.i459.i to float
  %mul.i461.i = fmul float %conv22.i, %conv17.i.i460.i
  store float %mul.i461.i, ptr @r4p.0, align 8, !tbaa !111
  %F5hz76.i = getelementptr inbounds nuw i8, ptr %frame, i64 80
  %84 = load i64, ptr %F5hz76.i, align 8, !tbaa !114
  %B5phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 264
  %85 = load i64, ptr %B5phz.i, align 8, !tbaa !120
  %conv.i.i462.i = sitofp i64 %85 to float
  %mul.i.i463.i = fmul float %56, %conv.i.i462.i
  %conv1.i.i464.i = fpext float %mul.i.i463.i to double
  %call.i.i465.i = tail call double @exp(double noundef %conv1.i.i464.i) #31, !tbaa !10
  %conv2.i.i466.i = fptrunc double %call.i.i465.i to float
  %86 = fneg float %conv2.i.i466.i
  %fneg.i.i467.i = fmul float %conv2.i.i466.i, %86
  store float %fneg.i.i467.i, ptr @r5p.2, align 8, !tbaa !108
  %conv4.i.i468.i = sitofp i64 %84 to float
  %mul5.i.i469.i = fmul float %55, %conv4.i.i468.i
  %conv6.i.i470.i = fpext float %mul5.i.i469.i to double
  %conv7.i.i471.i = fpext float %conv2.i.i466.i to double
  %call8.i.i472.i = tail call double @cos(double noundef %conv6.i.i470.i) #31, !tbaa !10
  %mul9.i.i473.i = fmul double %call8.i.i472.i, %conv7.i.i471.i
  %mul10.i.i474.i = fmul double %mul9.i.i473.i, 2.000000e+00
  %conv11.i.i475.i = fptrunc double %mul10.i.i474.i to float
  store float %conv11.i.i475.i, ptr @r5p.1, align 4, !tbaa !110
  %conv13.i.i476.i = fpext float %conv11.i.i475.i to double
  %sub.i.i477.i = fsub double 1.000000e+00, %conv13.i.i476.i
  %conv15.i.i478.i = fpext float %fneg.i.i467.i to double
  %sub16.i.i479.i = fsub double %sub.i.i477.i, %conv15.i.i478.i
  %conv17.i.i480.i = fptrunc double %sub16.i.i479.i to float
  %mul.i481.i = fmul float %conv26.i, %conv17.i.i480.i
  store float %mul.i481.i, ptr @r5p.0, align 8, !tbaa !111
  %F6hz77.i = getelementptr inbounds nuw i8, ptr %frame, i64 96
  %87 = load i64, ptr %F6hz77.i, align 8, !tbaa !112
  %B6phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 280
  %88 = load i64, ptr %B6phz.i, align 8, !tbaa !121
  %conv.i.i482.i = sitofp i64 %88 to float
  %mul.i.i483.i = fmul float %56, %conv.i.i482.i
  %conv1.i.i484.i = fpext float %mul.i.i483.i to double
  %call.i.i485.i = tail call double @exp(double noundef %conv1.i.i484.i) #31, !tbaa !10
  %conv2.i.i486.i = fptrunc double %call.i.i485.i to float
  %89 = fneg float %conv2.i.i486.i
  %fneg.i.i487.i = fmul float %conv2.i.i486.i, %89
  store float %fneg.i.i487.i, ptr @r6p.2, align 8, !tbaa !108
  %conv4.i.i488.i = sitofp i64 %87 to float
  %mul5.i.i489.i = fmul float %55, %conv4.i.i488.i
  %conv6.i.i490.i = fpext float %mul5.i.i489.i to double
  %conv7.i.i491.i = fpext float %conv2.i.i486.i to double
  %call8.i.i492.i = tail call double @cos(double noundef %conv6.i.i490.i) #31, !tbaa !10
  %mul9.i.i493.i = fmul double %call8.i.i492.i, %conv7.i.i491.i
  %mul10.i.i494.i = fmul double %mul9.i.i493.i, 2.000000e+00
  %conv11.i.i495.i = fptrunc double %mul10.i.i494.i to float
  store float %conv11.i.i495.i, ptr @r6p.1, align 4, !tbaa !110
  %conv13.i.i496.i = fpext float %conv11.i.i495.i to double
  %sub.i.i497.i = fsub double 1.000000e+00, %conv13.i.i496.i
  %conv15.i.i498.i = fpext float %fneg.i.i487.i to double
  %sub16.i.i499.i = fsub double %sub.i.i497.i, %conv15.i.i498.i
  %conv17.i.i500.i = fptrunc double %sub16.i.i499.i to float
  %mul.i501.i = fmul float %conv30.i, %conv17.i.i500.i
  store float %mul.i501.i, ptr @r6p.0, align 8, !tbaa !111
  %Gain078.i = getelementptr inbounds nuw i8, ptr %frame, i64 312
  %90 = load i64, ptr %Gain078.i, align 8, !tbaa !122
  %sub79.i = add nsw i64 %90, -3
  %cmp80.i = icmp slt i64 %90, 4
  %spec.store.select1.i = select i1 %cmp80.i, i64 57, i64 %sub79.i
  %samrate84.i = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %91 = load i64, ptr %samrate84.i, align 8, !tbaa !32
  %cmp.i502.i = icmp slt i64 %spec.store.select1.i, 0
  br i1 %cmp.i502.i, label %frame_init.exit, label %if.else.i503.i

if.else.i503.i:                                   ; preds = %if.end69.i
  %cmp1.i504.i = icmp samesign ugt i64 %spec.store.select1.i, 87
  br i1 %cmp1.i504.i, label %if.then2.i510.i, label %frame_init.exit

if.then2.i510.i:                                  ; preds = %if.else.i503.i
  %quiet_flag.i511.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %92 = load i32, ptr %quiet_flag.i511.i, align 4, !tbaa !34
  %tobool.not.i512.i = icmp eq i32 %92, 0
  br i1 %tobool.not.i512.i, label %if.then3.i513.i, label %frame_init.exit

if.then3.i513.i:                                  ; preds = %if.then2.i510.i
  %call.i514.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %spec.store.select1.i)
  br label %frame_init.exit

frame_init.exit:                                  ; preds = %if.end69.i, %if.else.i503.i, %if.then2.i510.i, %if.then3.i513.i
  %dB.addr.0.i505.i = phi i64 [ %spec.store.select1.i, %if.else.i503.i ], [ 0, %if.end69.i ], [ 87, %if.then3.i513.i ], [ 87, %if.then2.i510.i ]
  %arrayidx.i506.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i505.i
  %93 = load float, ptr %arrayidx.i506.i, align 4, !tbaa !78
  %conv.i507.i = fpext float %93 to double
  %mul.i508.i = fmul double %conv.i507.i, 1.000000e-03
  %conv6.i509.i = fptrunc double %mul.i508.i to float
  %94 = load float, ptr @minus_pi_t, align 4, !tbaa !78
  %conv.i.i516.i = sitofp i64 %91 to float
  %mul.i.i517.i = fmul float %94, %conv.i.i516.i
  %conv1.i.i518.i = fpext float %mul.i.i517.i to double
  %call.i.i519.i = tail call double @exp(double noundef %conv1.i.i518.i) #31, !tbaa !10
  %conv2.i.i520.i = fptrunc double %call.i.i519.i to float
  %95 = fneg float %conv2.i.i520.i
  %fneg.i.i521.i = fmul float %conv2.i.i520.i, %95
  store float %fneg.i.i521.i, ptr @rout.2, align 8, !tbaa !108
  %96 = load float, ptr @two_pi_t, align 4, !tbaa !78
  %mul5.i.i522.i = fmul float %96, 0.000000e+00
  %conv6.i.i523.i = fpext float %mul5.i.i522.i to double
  %conv7.i.i524.i = fpext float %conv2.i.i520.i to double
  %call8.i.i525.i = tail call double @cos(double noundef %conv6.i.i523.i) #31, !tbaa !10
  %mul9.i.i526.i = fmul double %call8.i.i525.i, %conv7.i.i524.i
  %mul10.i.i527.i = fmul double %mul9.i.i526.i, 2.000000e+00
  %conv11.i.i528.i = fptrunc double %mul10.i.i527.i to float
  store float %conv11.i.i528.i, ptr @rout.1, align 4, !tbaa !110
  %conv13.i.i529.i = fpext float %conv11.i.i528.i to double
  %sub.i.i530.i = fsub double 1.000000e+00, %conv13.i.i529.i
  %conv15.i.i531.i = fpext float %fneg.i.i521.i to double
  %sub16.i.i532.i = fsub double %sub.i.i530.i, %conv15.i.i531.i
  %conv17.i.i533.i = fptrunc double %sub16.i.i532.i to float
  %mul.i534.i = fmul float %conv6.i509.i, %conv17.i.i533.i
  store float %mul.i534.i, ptr @rout.0, align 8, !tbaa !111
  %f0_flutter = getelementptr inbounds nuw i8, ptr %globals, i64 8
  %97 = load i32, ptr %f0_flutter, align 8, !tbaa !36
  %cmp.not = icmp eq i32 %97, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %frame_init.exit
  %98 = load i32, ptr @time_count, align 4, !tbaa !10
  %inc = add nsw i32 %98, 1
  store i32 %inc, ptr @time_count, align 4, !tbaa !10
  %frame.val = load i64, ptr %frame, align 8, !tbaa !45
  %div.i = sdiv i64 %frame.val, 10
  %conv.i48 = sitofp i32 %97 to double
  %conv2.i = sitofp i64 %div.i to double
  %99 = insertelement <2 x double> poison, double %conv.i48, i64 0
  %100 = insertelement <2 x double> %99, double %conv2.i, i64 1
  %101 = fdiv <2 x double> %100, <double 5.000000e+01, double 1.000000e+02>
  %conv4.i = sitofp i32 %inc to double
  %mul.i49 = fmul double %conv4.i, 0x4053F2F91CA1765C
  %call.i = tail call double @sin(double noundef %mul.i49) #31, !tbaa !10
  %102 = load i32, ptr @time_count, align 4, !tbaa !10
  %conv5.i50 = sitofp i32 %102 to double
  %mul6.i = fmul double %conv5.i50, 0x40464E28AD1D5A02
  %call7.i = tail call double @sin(double noundef %mul6.i) #31, !tbaa !10
  %103 = load i32, ptr @time_count, align 4, !tbaa !10
  %conv8.i51 = sitofp i32 %103 to double
  %mul9.i52 = fmul double %conv8.i51, 0x403D87EDBD883645
  %call10.i = tail call double @sin(double noundef %mul9.i52) #31, !tbaa !10
  %shift = shufflevector <2 x double> %101, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %104 = fmul <2 x double> %101, %shift
  %mul11.i = extractelement <2 x double> %104, i64 0
  %add.i = fadd double %call.i, %call7.i
  %add12.i = fadd double %add.i, %call10.i
  %mul13.i53 = fmul double %mul11.i, %add12.i
  %mul14.i = fmul double %mul13.i53, 1.000000e+01
  %conv15.i = fptosi double %mul14.i to i64
  %105 = load i64, ptr @F0hz10, align 8, !tbaa !15
  %add16.i = add nsw i64 %105, %conv15.i
  store i64 %add16.i, ptr @F0hz10, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %frame_init.exit
  %nspfr = getelementptr inbounds nuw i8, ptr %globals, i64 40
  %106 = load i64, ptr %nspfr, align 8, !tbaa !39
  %cmp1133 = icmp sgt i64 %106, 0
  br i1 %cmp1133, label %for.body.lr.ph, label %for.end81

for.body.lr.ph:                                   ; preds = %if.end
  %glsource = getelementptr inbounds nuw i8, ptr %globals, i64 32
  %quiet_flag.i.i102 = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %Aturb.i = getelementptr inbounds nuw i8, ptr %frame, i64 160
  %Kopen.i = getelementptr inbounds nuw i8, ptr %frame, i64 152
  %TLTdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 168
  %.pre137 = load i64, ptr @nper, align 8, !tbaa !15
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %clip.exit
  %107 = phi i64 [ %.pre137, %for.body.lr.ph ], [ %304, %clip.exit ]
  %jwave.addr.0135 = phi ptr [ %jwave, %for.body.lr.ph ], [ %incdec.ptr, %clip.exit ]
  %ns.0134 = phi i64 [ 0, %for.body.lr.ph ], [ %inc80, %clip.exit ]
  %108 = load i64, ptr @parwave.seed, align 8, !tbaa !15
  %mul = mul nuw nsw i64 %108, 1664525
  %add = add nuw nsw i64 %mul, 1
  %and = and i64 %add, 4294967295
  store i64 %and, ptr @parwave.seed, align 8, !tbaa !15
  %shl = shl nuw i64 %and, 32
  %shr = ashr i64 %shl, 50
  %conv = sitofp i64 %shr to double
  %109 = load float, ptr @nlast, align 4, !tbaa !78
  %conv2 = fpext float %109 to double
  %110 = tail call double @llvm.fmuladd.f64(double %conv2, double 7.500000e-01, double %conv)
  %conv4 = fptrunc double %110 to float
  store float %conv4, ptr @nlast, align 4, !tbaa !78
  %111 = load i64, ptr @nmod, align 8, !tbaa !15
  %112 = load float, ptr @amp_frica, align 4, !tbaa !78
  %cmp66.i61 = icmp eq i64 %ns.0134, 0
  br label %for.body16

for.body16:                                       ; preds = %for.body, %if.end25
  %113 = phi i64 [ %107, %for.body ], [ %inc27, %if.end25 ]
  %n4.0132 = phi i32 [ 0, %for.body ], [ %inc28, %if.end25 ]
  %114 = load i64, ptr %glsource, align 8, !tbaa !35
  %cmp17 = icmp eq i64 %114, 1
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body16
  %cmp.i = icmp slt i64 %113, 3
  br i1 %cmp.i, label %if.then.i, label %impulsive_source.exit

if.then.i:                                        ; preds = %if.then19
  %arrayidx.i = getelementptr inbounds [3 x float], ptr @impulsive_source.doublet, i64 0, i64 %113
  %115 = load float, ptr %arrayidx.i, align 4, !tbaa !78
  br label %impulsive_source.exit

impulsive_source.exit:                            ; preds = %if.then19, %if.then.i
  %storemerge.i = phi float [ %115, %if.then.i ], [ 0.000000e+00, %if.then19 ]
  store float %storemerge.i, ptr @vwave, align 4, !tbaa !78
  %116 = load float, ptr @rgl.0, align 8, !tbaa !111
  %117 = load float, ptr @rgl.1, align 4, !tbaa !110
  %118 = load float, ptr @rgl.3, align 4, !tbaa !123
  %mul1.i.i = fmul float %117, %118
  %119 = tail call float @llvm.fmuladd.f32(float %116, float %storemerge.i, float %mul1.i.i)
  %120 = load float, ptr @rgl.2, align 8, !tbaa !108
  %121 = load float, ptr @rgl.4, align 8, !tbaa !124
  %122 = tail call float @llvm.fmuladd.f32(float %120, float %121, float %119)
  store float %118, ptr @rgl.4, align 8, !tbaa !124
  store float %122, ptr @rgl.3, align 4, !tbaa !123
  br label %if.end21

if.else:                                          ; preds = %for.body16
  %123 = load i64, ptr @nopen, align 8, !tbaa !15
  %cmp.i54 = icmp slt i64 %113, %123
  br i1 %cmp.i54, label %if.then.i55, label %natural_source.exit

if.then.i55:                                      ; preds = %if.else
  %124 = load float, ptr @natglot_b, align 4, !tbaa !78
  %125 = load float, ptr @natglot_a, align 4, !tbaa !78
  %sub.i = fsub float %125, %124
  store float %sub.i, ptr @natglot_a, align 4, !tbaa !78
  %126 = load float, ptr @vwave, align 4, !tbaa !78
  %add.i56 = fadd float %sub.i, %126
  %conv.i57 = fpext float %add.i56 to double
  %mul.i58 = fmul double %conv.i57, 2.800000e-02
  %conv1.i59 = fptrunc double %mul.i58 to float
  br label %natural_source.exit

natural_source.exit:                              ; preds = %if.else, %if.then.i55
  %.sink.i = phi float [ %add.i56, %if.then.i55 ], [ 0.000000e+00, %if.else ]
  %retval.0.i = phi float [ %conv1.i59, %if.then.i55 ], [ 0.000000e+00, %if.else ]
  store float %.sink.i, ptr @vwave, align 4, !tbaa !78
  br label %if.end21

if.end21:                                         ; preds = %natural_source.exit, %impulsive_source.exit
  %voice.2 = phi float [ %122, %impulsive_source.exit ], [ %retval.0.i, %natural_source.exit ]
  %127 = load i64, ptr @T0, align 8, !tbaa !15
  %cmp22.not = icmp slt i64 %113, %127
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  store i64 0, ptr @nper, align 8, !tbaa !15
  %128 = load i64, ptr @F0hz10, align 8, !tbaa !15
  %cmp.i60 = icmp sgt i64 %128, 0
  br i1 %cmp.i60, label %if.then.i63, label %if.else62.i

if.then.i63:                                      ; preds = %if.then24
  %129 = load i64, ptr %samrate84.i, align 8, !tbaa !32
  %mul.i65 = mul nsw i64 %129, 40
  %div.i66 = sdiv i64 %mul.i65, %128
  store i64 %div.i66, ptr @T0, align 8, !tbaa !15
  %130 = load i64, ptr @AVdb, align 8, !tbaa !15
  %cmp.i.i67 = icmp slt i64 %130, 0
  br i1 %cmp.i.i67, label %DBtoLIN.exit.thread47.i, label %if.else.i.i68

DBtoLIN.exit.thread47.i:                          ; preds = %if.then.i63
  store float 0.000000e+00, ptr @amp_voice, align 4, !tbaa !78
  br label %if.end.i

if.else.i.i68:                                    ; preds = %if.then.i63
  %cmp1.i.i69 = icmp samesign ugt i64 %130, 87
  br i1 %cmp1.i.i69, label %if.then2.i.i101, label %DBtoLIN.exit.i70

if.then2.i.i101:                                  ; preds = %if.else.i.i68
  %131 = load i32, ptr %quiet_flag.i.i102, align 4, !tbaa !34
  %tobool.not.i.i103 = icmp eq i32 %131, 0
  br i1 %tobool.not.i.i103, label %if.then3.i.i104, label %DBtoLIN.exit.thread.i

DBtoLIN.exit.thread.i:                            ; preds = %if.then2.i.i101
  store float 0x4040622D00000000, ptr @amp_voice, align 4, !tbaa !78
  br label %if.then2.i

if.then3.i.i104:                                  ; preds = %if.then2.i.i101
  %call.i.i105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %130)
  %.pre.i106 = load i64, ptr @T0, align 8, !tbaa !15
  %.pre35.i = load i64, ptr @AVdb, align 8, !tbaa !15
  br label %DBtoLIN.exit.i70

DBtoLIN.exit.i70:                                 ; preds = %if.then3.i.i104, %if.else.i.i68
  %132 = phi i64 [ %130, %if.else.i.i68 ], [ %.pre35.i, %if.then3.i.i104 ]
  %133 = phi i64 [ %div.i66, %if.else.i.i68 ], [ %.pre.i106, %if.then3.i.i104 ]
  %dB.addr.0.i.i71 = phi i64 [ %130, %if.else.i.i68 ], [ 87, %if.then3.i.i104 ]
  %arrayidx.i.i72 = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i.i71
  %134 = load float, ptr %arrayidx.i.i72, align 4, !tbaa !78
  %conv.i.i73 = fpext float %134 to double
  %mul.i.i74 = fmul double %conv.i.i73, 1.000000e-03
  %conv6.i.i75 = fptrunc double %mul.i.i74 to float
  store float %conv6.i.i75, ptr @amp_voice, align 4, !tbaa !78
  %cmp1.i = icmp sgt i64 %132, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %DBtoLIN.exit.i70, %DBtoLIN.exit.thread.i
  %135 = phi i64 [ %div.i66, %DBtoLIN.exit.thread.i ], [ %133, %DBtoLIN.exit.i70 ]
  %shr.i = ashr i64 %135, 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %DBtoLIN.exit.i70, %DBtoLIN.exit.thread47.i
  %136 = phi i64 [ %135, %if.then2.i ], [ %133, %DBtoLIN.exit.i70 ], [ %div.i66, %DBtoLIN.exit.thread47.i ]
  %storemerge40.i = phi i64 [ %shr.i, %if.then2.i ], [ %133, %DBtoLIN.exit.i70 ], [ %div.i66, %DBtoLIN.exit.thread47.i ]
  store i64 %storemerge40.i, ptr @nmod, align 8, !tbaa !15
  %137 = load i64, ptr %Aturb.i, align 8, !tbaa !86
  %cmp.i16.i = icmp slt i64 %137, 0
  br i1 %cmp.i16.i, label %DBtoLIN.exit29.i, label %if.else.i17.i

if.else.i17.i:                                    ; preds = %if.end.i
  %cmp1.i18.i = icmp samesign ugt i64 %137, 87
  br i1 %cmp1.i18.i, label %if.then2.i24.i, label %DBtoLIN.exit29.i

if.then2.i24.i:                                   ; preds = %if.else.i17.i
  %138 = load i32, ptr %quiet_flag.i.i102, align 4, !tbaa !34
  %tobool.not.i26.i = icmp eq i32 %138, 0
  br i1 %tobool.not.i26.i, label %if.then3.i27.i, label %DBtoLIN.exit29.i

if.then3.i27.i:                                   ; preds = %if.then2.i24.i
  %call.i28.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %137)
  %.pre36.i = load i64, ptr @T0, align 8, !tbaa !15
  br label %DBtoLIN.exit29.i

DBtoLIN.exit29.i:                                 ; preds = %if.then3.i27.i, %if.then2.i24.i, %if.else.i17.i, %if.end.i
  %139 = phi i64 [ %136, %if.else.i17.i ], [ %136, %if.end.i ], [ %.pre36.i, %if.then3.i27.i ], [ %136, %if.then2.i24.i ]
  %dB.addr.0.i19.i = phi i64 [ %137, %if.else.i17.i ], [ 0, %if.end.i ], [ 87, %if.then3.i27.i ], [ 87, %if.then2.i24.i ]
  %arrayidx.i20.i = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0.i19.i
  %140 = load float, ptr %arrayidx.i20.i, align 4, !tbaa !78
  %conv.i21.i = fpext float %140 to double
  %mul.i22.i = fmul double %conv.i21.i, 1.000000e-03
  %conv6.i23.i = fptrunc double %mul.i22.i to float
  %conv.i76 = fpext float %conv6.i23.i to double
  %mul4.i = fmul double %conv.i76, 1.000000e-01
  %conv5.i77 = fptrunc double %mul4.i to float
  store float %conv5.i77, ptr @amp_breth, align 4, !tbaa !78
  %141 = load i64, ptr %Kopen.i, align 8, !tbaa !125
  %mul6.i78 = shl nsw i64 %141, 2
  %142 = load i64, ptr %glsource, align 8, !tbaa !35
  %cmp7.i = icmp eq i64 %142, 1
  %cmp9.i = icmp sgt i64 %141, 65
  %or.cond.i79 = select i1 %cmp7.i, i1 %cmp9.i, i1 false
  %spec.store.select.i80 = select i1 %or.cond.i79, i64 263, i64 %mul6.i78
  store i64 %spec.store.select.i80, ptr @nopen, align 8
  %sub.i81 = add nsw i64 %139, -1
  %cmp13.not.i = icmp slt i64 %spec.store.select.i80, %sub.i81
  br i1 %cmp13.not.i, label %if.end20.i, label %if.then15.i

if.then15.i:                                      ; preds = %DBtoLIN.exit29.i
  %sub16.i = add nsw i64 %139, -2
  store i64 %sub16.i, ptr @nopen, align 8, !tbaa !15
  %143 = load i32, ptr %quiet_flag.i.i102, align 4, !tbaa !34
  %tobool.not.i = icmp eq i32 %143, 0
  br i1 %tobool.not.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.then15.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pr.i = load i64, ptr @nopen, align 8, !tbaa !15
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.then15.i, %DBtoLIN.exit29.i
  %144 = phi i64 [ %sub16.i, %if.then15.i ], [ %.pr.i, %if.then17.i ], [ %spec.store.select.i80, %DBtoLIN.exit29.i ]
  %cmp21.i = icmp slt i64 %144, 40
  br i1 %cmp21.i, label %if.then23.i, label %if.end30.i

if.then23.i:                                      ; preds = %if.end20.i
  store i64 40, ptr @nopen, align 8, !tbaa !15
  %145 = load i32, ptr %quiet_flag.i.i102, align 4, !tbaa !34
  %tobool25.not.i = icmp eq i32 %145, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end30.i

if.then26.i:                                      ; preds = %if.then23.i
  %puts15.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %146 = load i64, ptr @nopen, align 8, !tbaa !15
  %call28.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47.566, i64 noundef %146)
  %.pre37.i = load i64, ptr @nopen, align 8, !tbaa !15
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.then23.i, %if.end20.i
  %147 = phi i64 [ 40, %if.then23.i ], [ %.pre37.i, %if.then26.i ], [ %144, %if.end20.i ]
  %sub31.i = add nsw i64 %147, -40
  %arrayidx.i82 = getelementptr inbounds [224 x i16], ptr @natglot, i64 0, i64 %sub31.i
  %148 = load i16, ptr %arrayidx.i82, align 2, !tbaa !18
  %conv32.i83 = sitofp i16 %148 to float
  store float %conv32.i83, ptr @natglot_b, align 4, !tbaa !78
  %conv33.i = sitofp i64 %147 to float
  %mul34.i = fmul float %conv33.i, %conv32.i83
  %conv35.i = fpext float %mul34.i to double
  %mul36.i = fmul double %conv35.i, 3.330000e-01
  %conv37.i = fptrunc double %mul36.i to float
  store float %conv37.i, ptr @natglot_a, align 4, !tbaa !78
  %149 = load i64, ptr %samrate84.i, align 8, !tbaa !32
  %div39.i = sdiv i64 %149, %147
  %150 = load float, ptr @minus_pi_t, align 4, !tbaa !78
  %conv.i30.i = sitofp i64 %div39.i to float
  %mul.i31.i = fmul float %150, %conv.i30.i
  %conv1.i.i84 = fpext float %mul.i31.i to double
  %call.i32.i = tail call double @exp(double noundef %conv1.i.i84) #31, !tbaa !10
  %conv2.i.i85 = fptrunc double %call.i32.i to float
  %151 = fneg float %conv2.i.i85
  %fneg.i.i86 = fmul float %conv2.i.i85, %151
  store float %fneg.i.i86, ptr @rgl.2, align 8, !tbaa !108
  %152 = load float, ptr @two_pi_t, align 4, !tbaa !78
  %mul5.i.i87 = fmul float %152, 0.000000e+00
  %conv6.i33.i = fpext float %mul5.i.i87 to double
  %conv7.i.i88 = fpext float %conv2.i.i85 to double
  %call8.i.i89 = tail call double @cos(double noundef %conv6.i33.i) #31, !tbaa !10
  %mul9.i.i90 = fmul double %call8.i.i89, %conv7.i.i88
  %mul10.i.i91 = fmul double %mul9.i.i90, 2.000000e+00
  %conv11.i.i92 = fptrunc double %mul10.i.i91 to float
  store float %conv11.i.i92, ptr @rgl.1, align 4, !tbaa !110
  %conv13.i.i93 = fpext float %conv11.i.i92 to double
  %sub.i.i94 = fsub double 1.000000e+00, %conv13.i.i93
  %conv15.i.i95 = fpext float %fneg.i.i86 to double
  %sub16.i.i96 = fsub double %sub.i.i94, %conv15.i.i95
  %conv17.i.i97 = fptrunc double %sub16.i.i96 to float
  %conv40.i = sitofp i64 %147 to double
  %mul41.i = fmul double %conv40.i, 8.330000e-03
  %conv42.i = fptrunc double %mul41.i to float
  %mul43.i = fmul float %conv42.i, %conv42.i
  %mul44.i = fmul float %mul43.i, %conv17.i.i97
  store float %mul44.i, ptr @rgl.0, align 8, !tbaa !111
  %153 = load i64, ptr @T0, align 8, !tbaa !15
  %sub45.i = sub nsw i64 %153, %147
  %154 = load i64, ptr @Kskew, align 8, !tbaa !15
  %cmp46.i = icmp sgt i64 %154, %sub45.i
  br i1 %cmp46.i, label %if.then48.i, label %if.end55.i

if.then48.i:                                      ; preds = %if.end30.i
  %155 = load i32, ptr %quiet_flag.i.i102, align 4, !tbaa !34
  %tobool50.not.i = icmp eq i32 %155, 0
  br i1 %tobool50.not.i, label %if.then51.i100, label %if.end54.i

if.then51.i100:                                   ; preds = %if.then48.i
  %call53.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48.567, i64 noundef %154, i64 noundef %sub45.i)
  %.pre38.pre.i = load i64, ptr @T0, align 8, !tbaa !15
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i100, %if.then48.i
  %.pre38.i = phi i64 [ %.pre38.pre.i, %if.then51.i100 ], [ %153, %if.then48.i ]
  store i64 %sub45.i, ptr @Kskew, align 8, !tbaa !15
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end54.i, %if.end30.i
  %156 = phi i64 [ %.pre38.i, %if.end54.i ], [ %153, %if.end30.i ]
  %157 = phi i64 [ %sub45.i, %if.end54.i ], [ %154, %if.end30.i ]
  %158 = load i64, ptr @skew, align 8, !tbaa !15
  %sub59.i = sub nsw i64 0, %157
  %cmp5634.i = icmp slt i64 %158, 0
  %storemerge.i98 = select i1 %cmp5634.i, i64 %sub59.i, i64 %157
  %add.i99 = add nsw i64 %storemerge.i98, %156
  store i64 %add.i99, ptr @T0, align 8, !tbaa !15
  %sub61.i = sub nsw i64 0, %storemerge.i98
  store i64 %sub61.i, ptr @skew, align 8, !tbaa !15
  %159 = icmp ne i64 %add.i99, 4
  br label %if.end63.i

if.else62.i:                                      ; preds = %if.then24
  store i64 4, ptr @T0, align 8, !tbaa !15
  store float 0.000000e+00, ptr @amp_voice, align 4, !tbaa !78
  store i64 4, ptr @nmod, align 8, !tbaa !15
  store float 0.000000e+00, ptr @amp_breth, align 4, !tbaa !78
  store float 0.000000e+00, ptr @natglot_a, align 4, !tbaa !78
  store float 0.000000e+00, ptr @natglot_b, align 4, !tbaa !78
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else62.i, %if.end55.i
  %cmp64.i = phi i1 [ false, %if.else62.i ], [ %159, %if.end55.i ]
  %or.cond1.i = or i1 %cmp66.i61, %cmp64.i
  br i1 %or.cond1.i, label %if.then68.i62, label %if.end25

if.then68.i62:                                    ; preds = %if.end63.i
  %160 = load i64, ptr %TLTdb.i, align 8, !tbaa !126
  %conv69.i = sitofp i64 %160 to double
  %mul70.i = fmul double %conv69.i, 3.300000e-02
  %conv71.i = fptrunc double %mul70.i to float
  store float %conv71.i, ptr @decay, align 4, !tbaa !78
  %cmp73.i = fcmp ogt float %conv71.i, 0.000000e+00
  %conv78.i = fsub float 1.000000e+00, %conv71.i
  %conv78.sink.i = select i1 %cmp73.i, float %conv78.i, float 1.000000e+00
  store float %conv78.sink.i, ptr @onemd, align 4, !tbaa !78
  br label %if.end25

if.end25:                                         ; preds = %if.then68.i62, %if.end63.i, %if.end21
  %161 = load float, ptr @rlp.0, align 8, !tbaa !111
  %162 = load float, ptr @rlp.1, align 4, !tbaa !110
  %163 = load float, ptr @rlp.3, align 4, !tbaa !123
  %mul1.i = fmul float %162, %163
  %164 = tail call float @llvm.fmuladd.f32(float %161, float %voice.2, float %mul1.i)
  %165 = load float, ptr @rlp.2, align 8, !tbaa !108
  %166 = load float, ptr @rlp.4, align 8, !tbaa !124
  %167 = tail call float @llvm.fmuladd.f32(float %165, float %166, float %164)
  store float %163, ptr @rlp.4, align 8, !tbaa !124
  store float %167, ptr @rlp.3, align 4, !tbaa !123
  %168 = load i64, ptr @nper, align 8, !tbaa !15
  %inc27 = add nsw i64 %168, 1
  store i64 %inc27, ptr @nper, align 8, !tbaa !15
  %inc28 = add nuw nsw i32 %n4.0132, 1
  %exitcond.not = icmp eq i32 %inc28, 4
  br i1 %exitcond.not, label %for.end, label %for.body16, !llvm.loop !127

for.end:                                          ; preds = %if.end25
  %cmp5 = icmp sgt i64 %107, %111
  %conv10 = fmul float %conv4, 5.000000e-01
  %noise.0 = select i1 %cmp5, float %conv10, float %conv4
  %mul12 = fmul float %112, %noise.0
  %169 = load float, ptr @onemd, align 4, !tbaa !78
  %170 = load float, ptr @vlast, align 4, !tbaa !78
  %171 = load float, ptr @decay, align 4, !tbaa !78
  %mul30 = fmul float %170, %171
  %172 = tail call float @llvm.fmuladd.f32(float %167, float %169, float %mul30)
  store float %172, ptr @vlast, align 4, !tbaa !78
  %173 = load i64, ptr @nopen, align 8, !tbaa !15
  %cmp31 = icmp slt i64 %inc27, %173
  %174 = load float, ptr @amp_breth, align 4
  %conv34 = sitofp i64 %shr to float
  %175 = tail call float @llvm.fmuladd.f32(float %174, float %conv34, float %172)
  %voice.3 = select i1 %cmp31, float %175, float %172
  %176 = load float, ptr @amp_voice, align 4, !tbaa !78
  %mul37 = fmul float %176, %voice.3
  %177 = load float, ptr @amp_aspir, align 4, !tbaa !78
  %mul38 = fmul float %noise.0, %177
  %add39 = fadd float %mul37, %mul38
  %178 = load i32, ptr %globals, align 8, !tbaa !38
  %cmp40.not = icmp eq i32 %178, 2
  %179 = load float, ptr @rnz.0, align 8, !tbaa !111
  %180 = load float, ptr @rnz.1, align 4, !tbaa !110
  %181 = load float, ptr @rnz.3, align 4, !tbaa !123
  %mul1.i117 = fmul float %180, %181
  %182 = tail call float @llvm.fmuladd.f32(float %179, float %add39, float %mul1.i117)
  %183 = load float, ptr @rnz.2, align 8, !tbaa !108
  %184 = load float, ptr @rnz.4, align 8, !tbaa !124
  %185 = tail call float @llvm.fmuladd.f32(float %183, float %184, float %182)
  store float %181, ptr @rnz.4, align 8, !tbaa !124
  store float %add39, ptr @rnz.3, align 4, !tbaa !123
  %186 = load float, ptr @rnpc.0, align 8, !tbaa !111
  %187 = load float, ptr @rnpc.1, align 4, !tbaa !110
  %188 = load float, ptr @rnpc.3, align 4, !tbaa !123
  %mul1.i118 = fmul float %187, %188
  %189 = tail call float @llvm.fmuladd.f32(float %186, float %185, float %mul1.i118)
  %190 = load float, ptr @rnpc.2, align 8, !tbaa !108
  %191 = load float, ptr @rnpc.4, align 8, !tbaa !124
  %192 = tail call float @llvm.fmuladd.f32(float %190, float %191, float %189)
  store float %188, ptr @rnpc.4, align 8, !tbaa !124
  store float %192, ptr @rnpc.3, align 4, !tbaa !123
  br i1 %cmp40.not, label %if.else60, label %if.then42

if.then42:                                        ; preds = %for.end
  %193 = load i64, ptr %nfcascade.i, align 8, !tbaa !37
  switch i64 %193, label %if.end65 [
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
  %194 = load float, ptr @r8c.0, align 8, !tbaa !111
  %195 = load float, ptr @r8c.1, align 4, !tbaa !110
  %196 = load float, ptr @r8c.3, align 4, !tbaa !123
  %mul1.i109 = fmul float %195, %196
  %197 = tail call float @llvm.fmuladd.f32(float %194, float %192, float %mul1.i109)
  %198 = load float, ptr @r8c.2, align 8, !tbaa !108
  %199 = load float, ptr @r8c.4, align 8, !tbaa !124
  %200 = tail call float @llvm.fmuladd.f32(float %198, float %199, float %197)
  store float %196, ptr @r8c.4, align 8, !tbaa !124
  store float %200, ptr @r8c.3, align 4, !tbaa !123
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb, %if.then42
  %casc_next_in.0 = phi float [ %200, %sw.bb ], [ %192, %if.then42 ]
  %201 = load float, ptr @r7c.0, align 8, !tbaa !111
  %202 = load float, ptr @r7c.1, align 4, !tbaa !110
  %203 = load float, ptr @r7c.3, align 4, !tbaa !123
  %mul1.i110 = fmul float %202, %203
  %204 = tail call float @llvm.fmuladd.f32(float %201, float %casc_next_in.0, float %mul1.i110)
  %205 = load float, ptr @r7c.2, align 8, !tbaa !108
  %206 = load float, ptr @r7c.4, align 8, !tbaa !124
  %207 = tail call float @llvm.fmuladd.f32(float %205, float %206, float %204)
  store float %203, ptr @r7c.4, align 8, !tbaa !124
  store float %207, ptr @r7c.3, align 4, !tbaa !123
  br label %sw.bb48

sw.bb48:                                          ; preds = %sw.bb46, %if.then42
  %casc_next_in.1 = phi float [ %207, %sw.bb46 ], [ %192, %if.then42 ]
  %208 = load float, ptr @r6c.0, align 8, !tbaa !111
  %209 = load float, ptr @r6c.1, align 4, !tbaa !110
  %210 = load float, ptr @r6c.3, align 4, !tbaa !123
  %mul1.i111 = fmul float %209, %210
  %211 = tail call float @llvm.fmuladd.f32(float %208, float %casc_next_in.1, float %mul1.i111)
  %212 = load float, ptr @r6c.2, align 8, !tbaa !108
  %213 = load float, ptr @r6c.4, align 8, !tbaa !124
  %214 = tail call float @llvm.fmuladd.f32(float %212, float %213, float %211)
  store float %210, ptr @r6c.4, align 8, !tbaa !124
  store float %214, ptr @r6c.3, align 4, !tbaa !123
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb48, %if.then42
  %casc_next_in.2 = phi float [ %214, %sw.bb48 ], [ %192, %if.then42 ]
  %215 = load float, ptr @r5c.0, align 8, !tbaa !111
  %216 = load float, ptr @r5c.1, align 4, !tbaa !110
  %217 = load float, ptr @r5c.3, align 4, !tbaa !123
  %mul1.i112 = fmul float %216, %217
  %218 = tail call float @llvm.fmuladd.f32(float %215, float %casc_next_in.2, float %mul1.i112)
  %219 = load float, ptr @r5c.2, align 8, !tbaa !108
  %220 = load float, ptr @r5c.4, align 8, !tbaa !124
  %221 = tail call float @llvm.fmuladd.f32(float %219, float %220, float %218)
  store float %217, ptr @r5c.4, align 8, !tbaa !124
  store float %221, ptr @r5c.3, align 4, !tbaa !123
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb50, %if.then42
  %casc_next_in.3 = phi float [ %221, %sw.bb50 ], [ %192, %if.then42 ]
  %222 = load float, ptr @r4c.0, align 8, !tbaa !111
  %223 = load float, ptr @r4c.1, align 4, !tbaa !110
  %224 = load float, ptr @r4c.3, align 4, !tbaa !123
  %mul1.i113 = fmul float %223, %224
  %225 = tail call float @llvm.fmuladd.f32(float %222, float %casc_next_in.3, float %mul1.i113)
  %226 = load float, ptr @r4c.2, align 8, !tbaa !108
  %227 = load float, ptr @r4c.4, align 8, !tbaa !124
  %228 = tail call float @llvm.fmuladd.f32(float %226, float %227, float %225)
  store float %224, ptr @r4c.4, align 8, !tbaa !124
  store float %228, ptr @r4c.3, align 4, !tbaa !123
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb52, %if.then42
  %casc_next_in.4 = phi float [ %228, %sw.bb52 ], [ %192, %if.then42 ]
  %229 = load float, ptr @r3c.0, align 8, !tbaa !111
  %230 = load float, ptr @r3c.1, align 4, !tbaa !110
  %231 = load float, ptr @r3c.3, align 4, !tbaa !123
  %mul1.i114 = fmul float %230, %231
  %232 = tail call float @llvm.fmuladd.f32(float %229, float %casc_next_in.4, float %mul1.i114)
  %233 = load float, ptr @r3c.2, align 8, !tbaa !108
  %234 = load float, ptr @r3c.4, align 8, !tbaa !124
  %235 = tail call float @llvm.fmuladd.f32(float %233, float %234, float %232)
  store float %231, ptr @r3c.4, align 8, !tbaa !124
  store float %235, ptr @r3c.3, align 4, !tbaa !123
  br label %sw.bb56

sw.bb56:                                          ; preds = %sw.bb54, %if.then42
  %casc_next_in.5 = phi float [ %235, %sw.bb54 ], [ %192, %if.then42 ]
  %236 = load float, ptr @r2c.0, align 8, !tbaa !111
  %237 = load float, ptr @r2c.1, align 4, !tbaa !110
  %238 = load float, ptr @r2c.3, align 4, !tbaa !123
  %mul1.i115 = fmul float %237, %238
  %239 = tail call float @llvm.fmuladd.f32(float %236, float %casc_next_in.5, float %mul1.i115)
  %240 = load float, ptr @r2c.2, align 8, !tbaa !108
  %241 = load float, ptr @r2c.4, align 8, !tbaa !124
  %242 = tail call float @llvm.fmuladd.f32(float %240, float %241, float %239)
  store float %238, ptr @r2c.4, align 8, !tbaa !124
  store float %242, ptr @r2c.3, align 4, !tbaa !123
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb56, %if.then42
  %casc_next_in.6 = phi float [ %242, %sw.bb56 ], [ %192, %if.then42 ]
  %243 = load float, ptr @r1c.0, align 8, !tbaa !111
  %244 = load float, ptr @r1c.1, align 4, !tbaa !110
  %245 = load float, ptr @r1c.3, align 4, !tbaa !123
  %mul1.i116 = fmul float %244, %245
  %246 = tail call float @llvm.fmuladd.f32(float %243, float %casc_next_in.6, float %mul1.i116)
  %247 = load float, ptr @r1c.2, align 8, !tbaa !108
  %248 = load float, ptr @r1c.4, align 8, !tbaa !124
  %249 = tail call float @llvm.fmuladd.f32(float %247, float %248, float %246)
  store float %245, ptr @r1c.4, align 8, !tbaa !124
  store float %249, ptr @r1c.3, align 4, !tbaa !123
  br label %if.end65

if.else60:                                        ; preds = %for.end
  %250 = load float, ptr @r1p.0, align 8, !tbaa !111
  %251 = load float, ptr @r1p.1, align 4, !tbaa !110
  %252 = load float, ptr @r1p.3, align 4, !tbaa !123
  %mul1.i119 = fmul float %251, %252
  %253 = tail call float @llvm.fmuladd.f32(float %250, float %192, float %mul1.i119)
  %254 = load float, ptr @r1p.2, align 8, !tbaa !108
  %255 = load float, ptr @r1p.4, align 8, !tbaa !124
  %256 = tail call float @llvm.fmuladd.f32(float %254, float %255, float %253)
  store float %252, ptr @r1p.4, align 8, !tbaa !124
  store float %256, ptr @r1p.3, align 4, !tbaa !123
  %257 = load float, ptr @glotlast, align 4, !tbaa !78
  %sub = fsub float %192, %257
  %add64 = fadd float %mul12, %sub
  store float %192, ptr @glotlast, align 4, !tbaa !78
  br label %if.end65

if.end65:                                         ; preds = %sw.bb58, %if.then42, %if.else60
  %sourc.0 = phi float [ %add64, %if.else60 ], [ %mul12, %if.then42 ], [ %mul12, %sw.bb58 ]
  %out.1 = phi float [ %256, %if.else60 ], [ 0.000000e+00, %if.then42 ], [ %249, %sw.bb58 ]
  %258 = load float, ptr @r6p.0, align 8, !tbaa !111
  %259 = load float, ptr @r6p.1, align 4, !tbaa !110
  %260 = load float, ptr @r6p.3, align 4, !tbaa !123
  %mul1.i120 = fmul float %259, %260
  %261 = tail call float @llvm.fmuladd.f32(float %258, float %sourc.0, float %mul1.i120)
  %262 = load float, ptr @r6p.2, align 8, !tbaa !108
  %263 = load float, ptr @r6p.4, align 8, !tbaa !124
  %264 = tail call float @llvm.fmuladd.f32(float %262, float %263, float %261)
  store float %260, ptr @r6p.4, align 8, !tbaa !124
  store float %264, ptr @r6p.3, align 4, !tbaa !123
  %sub67 = fsub float %264, %out.1
  %265 = load float, ptr @r5p.0, align 8, !tbaa !111
  %266 = load float, ptr @r5p.1, align 4, !tbaa !110
  %267 = load float, ptr @r5p.3, align 4, !tbaa !123
  %mul1.i121 = fmul float %266, %267
  %268 = tail call float @llvm.fmuladd.f32(float %265, float %sourc.0, float %mul1.i121)
  %269 = load float, ptr @r5p.2, align 8, !tbaa !108
  %270 = load float, ptr @r5p.4, align 8, !tbaa !124
  %271 = tail call float @llvm.fmuladd.f32(float %269, float %270, float %268)
  store float %267, ptr @r5p.4, align 8, !tbaa !124
  store float %271, ptr @r5p.3, align 4, !tbaa !123
  %sub69 = fsub float %271, %sub67
  %272 = load float, ptr @r4p.0, align 8, !tbaa !111
  %273 = load float, ptr @r4p.1, align 4, !tbaa !110
  %274 = load float, ptr @r4p.3, align 4, !tbaa !123
  %mul1.i122 = fmul float %273, %274
  %275 = tail call float @llvm.fmuladd.f32(float %272, float %sourc.0, float %mul1.i122)
  %276 = load float, ptr @r4p.2, align 8, !tbaa !108
  %277 = load float, ptr @r4p.4, align 8, !tbaa !124
  %278 = tail call float @llvm.fmuladd.f32(float %276, float %277, float %275)
  store float %274, ptr @r4p.4, align 8, !tbaa !124
  store float %278, ptr @r4p.3, align 4, !tbaa !123
  %sub71 = fsub float %278, %sub69
  %279 = load float, ptr @r3p.0, align 8, !tbaa !111
  %280 = load float, ptr @r3p.1, align 4, !tbaa !110
  %281 = load float, ptr @r3p.3, align 4, !tbaa !123
  %mul1.i123 = fmul float %280, %281
  %282 = tail call float @llvm.fmuladd.f32(float %279, float %sourc.0, float %mul1.i123)
  %283 = load float, ptr @r3p.2, align 8, !tbaa !108
  %284 = load float, ptr @r3p.4, align 8, !tbaa !124
  %285 = tail call float @llvm.fmuladd.f32(float %283, float %284, float %282)
  store float %281, ptr @r3p.4, align 8, !tbaa !124
  store float %285, ptr @r3p.3, align 4, !tbaa !123
  %sub73 = fsub float %285, %sub71
  %286 = load float, ptr @r2p.0, align 8, !tbaa !111
  %287 = load float, ptr @r2p.1, align 4, !tbaa !110
  %288 = load float, ptr @r2p.3, align 4, !tbaa !123
  %mul1.i124 = fmul float %287, %288
  %289 = tail call float @llvm.fmuladd.f32(float %286, float %sourc.0, float %mul1.i124)
  %290 = load float, ptr @r2p.2, align 8, !tbaa !108
  %291 = load float, ptr @r2p.4, align 8, !tbaa !124
  %292 = tail call float @llvm.fmuladd.f32(float %290, float %291, float %289)
  store float %288, ptr @r2p.4, align 8, !tbaa !124
  store float %292, ptr @r2p.3, align 4, !tbaa !123
  %sub75 = fsub float %292, %sub73
  %293 = load float, ptr @amp_bypas, align 4, !tbaa !78
  %neg = fneg float %sub75
  %294 = tail call float @llvm.fmuladd.f32(float %293, float %sourc.0, float %neg)
  %295 = load float, ptr @rout.0, align 8, !tbaa !111
  %296 = load float, ptr @rout.1, align 4, !tbaa !110
  %297 = load float, ptr @rout.3, align 4, !tbaa !123
  %mul1.i125 = fmul float %296, %297
  %298 = tail call float @llvm.fmuladd.f32(float %295, float %294, float %mul1.i125)
  %299 = load float, ptr @rout.2, align 8, !tbaa !108
  %300 = load float, ptr @rout.4, align 8, !tbaa !124
  %301 = tail call float @llvm.fmuladd.f32(float %299, float %300, float %298)
  store float %297, ptr @rout.4, align 8, !tbaa !124
  store float %301, ptr @rout.3, align 4, !tbaa !123
  %conv.i126 = fptosi float %301 to i64
  %cmp.i127 = icmp slt i64 %conv.i126, -32767
  br i1 %cmp.i127, label %if.then.i128, label %if.else.i

if.then.i128:                                     ; preds = %if.end65
  %.b.i.i = load i1, ptr @warnsw, align 4
  br i1 %.b.i.i, label %clip.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i128
  %sub.i129 = sub nsw i64 0, %conv.i126
  store i1 true, ptr @warnsw, align 4
  %302 = load i32, ptr %quiet_flag.i.i102, align 4, !tbaa !34
  %tobool.not.i.i131 = icmp eq i32 %302, 0
  br i1 %tobool.not.i.i131, label %if.end5.sink.split.i, label %clip.exit

if.else.i:                                        ; preds = %if.end65
  %cmp2.i = icmp sgt i64 %conv.i126, 32767
  br i1 %cmp2.i, label %if.then4.i, label %clip.exit

if.then4.i:                                       ; preds = %if.else.i
  %.b.i6.i = load i1, ptr @warnsw, align 4
  br i1 %.b.i6.i, label %clip.exit, label %if.then.i7.i

if.then.i7.i:                                     ; preds = %if.then4.i
  store i1 true, ptr @warnsw, align 4
  %303 = load i32, ptr %quiet_flag.i.i102, align 4, !tbaa !34
  %tobool.not.i9.i = icmp eq i32 %303, 0
  br i1 %tobool.not.i9.i, label %if.end5.sink.split.i, label %clip.exit

if.end5.sink.split.i:                             ; preds = %if.then.i7.i, %if.then.i.i
  %conv.sink.i = phi i64 [ %sub.i129, %if.then.i.i ], [ %conv.i126, %if.then.i7.i ]
  %temp.0.ph.i = phi i64 [ -32767, %if.then.i.i ], [ 32767, %if.then.i7.i ]
  %call.i11.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85.544)
  %conv.i.i12.i = uitofp nneg i64 %conv.sink.i to double
  %div.i.i13.i = fdiv double %conv.i.i12.i, 3.276700e+04
  %call.i.i14.i = tail call double @log10(double noundef %div.i.i13.i) #31, !tbaa !10
  %mul.i.i15.i = fmul double %call.i.i14.i, 2.000000e+01
  %conv1.i.i16.i = fptrunc double %mul.i.i15.i to float
  %conv.i17.i = fpext float %conv1.i.i16.i to double
  %call3.i18.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86.545, double noundef %conv.i17.i)
  %.pre136 = load i64, ptr @nper, align 8, !tbaa !15
  br label %clip.exit

clip.exit:                                        ; preds = %if.then.i128, %if.then.i.i, %if.else.i, %if.then4.i, %if.then.i7.i, %if.end5.sink.split.i
  %304 = phi i64 [ %inc27, %if.else.i ], [ %inc27, %if.then.i128 ], [ %inc27, %if.then.i.i ], [ %inc27, %if.then4.i ], [ %inc27, %if.then.i7.i ], [ %.pre136, %if.end5.sink.split.i ]
  %temp.0.i = phi i64 [ %conv.i126, %if.else.i ], [ -32767, %if.then.i128 ], [ -32767, %if.then.i.i ], [ 32767, %if.then4.i ], [ 32767, %if.then.i7.i ], [ %temp.0.ph.i, %if.end5.sink.split.i ]
  %conv6.i = trunc nsw i64 %temp.0.i to i16
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %jwave.addr.0135, i64 2
  store i16 %conv6.i, ptr %jwave.addr.0135, align 2, !tbaa !18
  %inc80 = add nuw nsw i64 %ns.0134, 1
  %305 = load i64, ptr %nspfr, align 8, !tbaa !39
  %cmp1 = icmp slt i64 %inc80, %305
  br i1 %cmp1, label %for.body, label %for.end81, !llvm.loop !128

for.end81:                                        ; preds = %clip.exit, %if.end
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @parwave_init(ptr noundef readonly captures(none) %globals) local_unnamed_addr #20 {
entry:
  %samrate = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %0 = load i64, ptr %samrate, align 8, !tbaa !32
  %mul = mul nsw i64 %0, 950
  %div = sdiv i64 %mul, 10000
  %mul2 = mul nsw i64 %0, 630
  %div3 = sdiv i64 %mul2, 10000
  %conv = sitofp i64 %0 to double
  %div5 = fdiv double 0xC00921FB5A7ED197, %conv
  %conv6 = fptrunc double %div5 to float
  store float %conv6, ptr @minus_pi_t, align 4, !tbaa !78
  %conv9 = fmul float %conv6, -2.000000e+00
  store float %conv9, ptr @two_pi_t, align 4, !tbaa !78
  %conv.i = sitofp i64 %div3 to float
  %mul.i = fmul float %conv6, %conv.i
  %conv1.i = fpext float %mul.i to double
  %call.i = tail call double @exp(double noundef %conv1.i) #31, !tbaa !10
  %conv2.i = fptrunc double %call.i to float
  %1 = fneg float %conv2.i
  %fneg.i = fmul float %conv2.i, %1
  store float %fneg.i, ptr @rlp.2, align 8, !tbaa !108
  %conv4.i = sitofp i64 %div to float
  %mul5.i = fmul float %conv9, %conv4.i
  %conv6.i = fpext float %mul5.i to double
  %conv7.i = fpext float %conv2.i to double
  %call8.i = tail call double @cos(double noundef %conv6.i) #31, !tbaa !10
  %mul9.i = fmul double %call8.i, %conv7.i
  %mul10.i = fmul double %mul9.i, 2.000000e+00
  %conv11.i = fptrunc double %mul10.i to float
  store float %conv11.i, ptr @rlp.1, align 4, !tbaa !110
  %conv13.i = fpext float %conv11.i to double
  %sub.i = fsub double 1.000000e+00, %conv13.i
  %conv15.i = fpext float %fneg.i to double
  %sub16.i = fsub double %sub.i, %conv15.i
  %conv17.i = fptrunc double %sub16.i to float
  store float %conv17.i, ptr @rlp.0, align 8, !tbaa !111
  store i64 0, ptr @nper, align 8, !tbaa !15
  store i64 0, ptr @T0, align 8, !tbaa !15
  store float 0.000000e+00, ptr @r1p.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r1p.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r2p.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r2p.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r3p.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r3p.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r4p.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r4p.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r5p.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r5p.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r6p.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r6p.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r1c.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r1c.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r2c.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r2c.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r3c.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r3c.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r4c.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r4c.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r5c.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r5c.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r6c.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r6c.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r7c.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r7c.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @r8c.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @r8c.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @rnpc.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @rnpc.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @rnz.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @rnz.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @rgl.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @rgl.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @rlp.3, align 4, !tbaa !123
  store float 0.000000e+00, ptr @rlp.4, align 8, !tbaa !124
  store float 0.000000e+00, ptr @vlast, align 4, !tbaa !78
  store float 0.000000e+00, ptr @nlast, align 4, !tbaa !78
  store float 0.000000e+00, ptr @glotlast, align 4, !tbaa !78
  store i1 false, ptr @warnsw, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @phone_append(ptr noundef captures(none) %p, i32 noundef returned %ch) local_unnamed_addr #5 {
entry:
  %items = getelementptr inbounds nuw i8, ptr %p, i64 8
  %0 = load i32, ptr %items, align 8, !tbaa !26
  %call.i = tail call ptr @Darray_find(ptr noundef nonnull %p, i32 noundef %0)
  %conv = trunc i32 %ch to i8
  store i8 %conv, ptr %call.i, align 1, !tbaa !5
  ret i32 %ch
}

; Function Attrs: nounwind uwtable
define dso_local i32 @phone_to_elm(ptr noundef %phone, i32 noundef %n, ptr noundef captures(none) %elm) local_unnamed_addr #5 {
entry:
  %idx.ext = sext i32 %n to i64
  %add.ptr = getelementptr inbounds i8, ptr %phone, i64 %idx.ext
  %0 = load ptr, ptr @phtoelm, align 8, !tbaa !129
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.2.743, ptr noundef nonnull @.str.3.744, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.4.745, ptr noundef nonnull @.str.5.746, ptr noundef nonnull @.str.6.747, ptr noundef nonnull @.str.7.748, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.8.749, ptr noundef nonnull @.str.9.750, ptr noundef nonnull @.str.10.751, ptr noundef nonnull @.str.11.752, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.12.753, ptr noundef nonnull @.str.13.754, ptr noundef nonnull @.str.14.755, ptr noundef nonnull @.str.15.756, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.16.757, ptr noundef nonnull @.str.17.758, ptr noundef nonnull @.str.18.759, ptr noundef nonnull @.str.19.760, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.20.761, ptr noundef nonnull @.str.21.762, ptr noundef nonnull @.str.22.763, ptr noundef nonnull @.str.23.764, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.24.765, ptr noundef nonnull @.str.25.766, ptr noundef nonnull @.str.26.767, ptr noundef nonnull @.str.27.768, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.28.769, ptr noundef nonnull @.str.29.770, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.30.771, ptr noundef nonnull @.str.31.772, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.31.772, ptr noundef nonnull @.str.32.773, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.33.774, ptr noundef nonnull @.str.34.775, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.9.750, ptr noundef nonnull @.str.35.776, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.36.777, ptr noundef nonnull @.str.37.778, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.37.778, ptr noundef nonnull @.str.38.779, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.39.780, ptr noundef nonnull @.str.40.781, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.10.866, ptr noundef nonnull @.str.42.783, ptr noundef nonnull @.str.43.784, ptr noundef nonnull @.str.42.783, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.21.762, ptr noundef nonnull @.str.44.785, ptr noundef nonnull @.str.43.784, ptr noundef nonnull @.str.45.786, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.46.787, ptr noundef nonnull @.str.47.788, ptr noundef nonnull @.str.43.784, ptr noundef nonnull @.str.48.789, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.47.788, ptr noundef nonnull @.str.49.790, ptr noundef nonnull @.str.43.784, ptr noundef nonnull @.str.49.790, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.50.791, ptr noundef nonnull @.str.51.792, ptr noundef nonnull @.str.52.793, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.53.794, ptr noundef nonnull @.str.54.795, ptr noundef nonnull @.str.55.796, ptr noundef nonnull @.str.43.784, ptr noundef nonnull @.str.55.796, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.56.797, ptr noundef nonnull @.str.57.798, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.58.799, ptr noundef nonnull @.str.59.800, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.60.801, ptr noundef nonnull @.str.59.800, ptr noundef nonnull @.str.43.784, ptr noundef nonnull @.str.59.800, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.59.800, ptr noundef nonnull @.str.61.802, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.62.803, ptr noundef nonnull @.str.63.804, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.64.805, ptr noundef nonnull @.str.65.806, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.66.807, ptr noundef nonnull @.str.43.784, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.67.808, ptr noundef nonnull @.str.68.809, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.69.810, ptr noundef nonnull @.str.69.810, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.70.811, ptr noundef nonnull @.str.71.812, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.72.813, ptr noundef nonnull @.str.73.814, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.42.783, ptr noundef nonnull @.str.74.815, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.75.816, ptr noundef nonnull @.str.76.817, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.74.815, ptr noundef nonnull @.str.77.818, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.78.819, ptr noundef nonnull @.str.79.820, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.80.821, ptr noundef nonnull @.str.81.822, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.82.823, ptr noundef nonnull @.str.83.824, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.79.820, ptr noundef nonnull @.str.84.825, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.76.817, ptr noundef nonnull @.str.85.826, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.86.827, ptr noundef nonnull @.str.87.828, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.88.829, ptr noundef nonnull @.str.89.830, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.90.831, ptr noundef nonnull @.str.91.832, ptr noundef nonnull @.str.69.810, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.92.833, ptr noundef nonnull @.str.93.834, ptr noundef nonnull @.str.69.810, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.94.835, ptr noundef nonnull @.str.89.830, ptr noundef nonnull @.str.69.810, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.95.836, ptr noundef nonnull @.str.96.837, ptr noundef nonnull @.str.97.838, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.98.839, ptr noundef nonnull @.str.99.840, ptr noundef nonnull @.str.97.838, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.100.841, ptr noundef nonnull @.str.101.842, ptr noundef nonnull @.str.102.843, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.103.844, ptr noundef nonnull @.str.104.845, ptr noundef nonnull @.str.102.843, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.105.846, ptr noundef nonnull @.str.106.847, ptr noundef nonnull @.str.102.843, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.107.848, ptr noundef nonnull @.str.108.849, ptr noundef nonnull @.str.102.843, ptr noundef null)
  tail call void (ptr, ...) @enter(ptr noundef nonnull @.str.109.850, ptr noundef nonnull @.str.89.830, ptr noundef nonnull @.str.97.838, ptr noundef null)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %cmp184 = icmp sgt i32 %n, 0
  br i1 %cmp184, label %land.rhs.lr.ph, label %while.end28

land.rhs.lr.ph:                                   ; preds = %if.end
  %items.i = getelementptr inbounds nuw i8, ptr %elm, i64 8
  %alloc.i = getelementptr inbounds nuw i8, ptr %elm, i64 12
  %esize37.i = getelementptr inbounds nuw i8, ptr %elm, i64 16
  %get.i = getelementptr inbounds nuw i8, ptr %elm, i64 18
  br label %land.rhs

land.rhs:                                         ; preds = %land.rhs.lr.ph, %if.end27
  %stress.0187 = phi i8 [ 0, %land.rhs.lr.ph ], [ %stress.3, %if.end27 ]
  %t.0186 = phi i32 [ 0, %land.rhs.lr.ph ], [ %t.2, %if.end27 ]
  %s.0185 = phi ptr [ %phone, %land.rhs.lr.ph ], [ %s.1, %if.end27 ]
  %1 = load i8, ptr %s.0185, align 1, !tbaa !5
  %tobool1.not = icmp eq i8 %1, 0
  br i1 %tobool1.not, label %while.end28, label %while.cond1.preheader.i

while.cond1.preheader.i:                          ; preds = %land.rhs, %cleanup.i
  %2 = phi i8 [ %8, %cleanup.i ], [ %1, %land.rhs ]
  %r.addr.030.i = phi ptr [ %more.i, %cleanup.i ], [ @phtoelm, %land.rhs ]
  %s.029.i = phi ptr [ %incdec.ptr.i, %cleanup.i ], [ %s.0185, %land.rhs ]
  %value.028.i = phi ptr [ %7, %cleanup.i ], [ null, %land.rhs ]
  br label %while.cond1.i

while.cond1.i:                                    ; preds = %while.body3.i, %while.cond1.preheader.i
  %l.0.i = phi ptr [ %3, %while.body3.i ], [ %r.addr.030.i, %while.cond1.preheader.i ]
  %3 = load ptr, ptr %l.0.i, align 8, !tbaa !129
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %trie_lookup.exit, label %while.body3.i

while.body3.i:                                    ; preds = %while.cond1.i
  %ch4.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %4 = load i8, ptr %ch4.i, align 8, !tbaa !131
  %cmp.i = icmp eq i8 %4, %2
  br i1 %cmp.i, label %cleanup.i, label %while.cond1.i, !llvm.loop !133

cleanup.i:                                        ; preds = %while.body3.i
  %5 = load ptr, ptr %3, align 8, !tbaa !134
  store ptr %5, ptr %l.0.i, align 8, !tbaa !129
  %6 = load ptr, ptr %r.addr.030.i, align 8, !tbaa !129
  store ptr %6, ptr %3, align 8, !tbaa !134
  store ptr %3, ptr %r.addr.030.i, align 8, !tbaa !129
  %more.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %value11.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = load ptr, ptr %value11.i, align 8, !tbaa !135
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %s.029.i, i64 1
  %8 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !5
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %trie_lookup.exit, label %while.cond1.preheader.i

trie_lookup.exit:                                 ; preds = %cleanup.i, %while.cond1.i
  %9 = phi i8 [ %2, %while.cond1.i ], [ 0, %cleanup.i ]
  %value.026.i = phi ptr [ %value.028.i, %while.cond1.i ], [ %7, %cleanup.i ]
  %s.024.i = phi ptr [ %s.029.i, %while.cond1.i ], [ %incdec.ptr.i, %cleanup.i ]
  %tobool2.not = icmp eq ptr %value.026.i, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %trie_lookup.exit
  %10 = load i8, ptr %value.026.i, align 1, !tbaa !5
  %cmp7178 = icmp sgt i8 %10, 0
  br i1 %cmp7178, label %while.body9.preheader, label %if.end27

while.body9.preheader:                            ; preds = %if.then3
  %conv5 = zext nneg i8 %10 to i32
  br label %while.body9

while.body9:                                      ; preds = %while.body9.preheader, %if.end53.i116
  %dec182.in = phi i32 [ %dec182, %if.end53.i116 ], [ %conv5, %while.body9.preheader ]
  %e.0181.pn = phi ptr [ %e.0181, %if.end53.i116 ], [ %value.026.i, %while.body9.preheader ]
  %stress.1180 = phi i8 [ %spec.select, %if.end53.i116 ], [ %stress.0187, %while.body9.preheader ]
  %t.1179 = phi i32 [ %add19, %if.end53.i116 ], [ %t.0186, %while.body9.preheader ]
  %e.0181 = getelementptr inbounds nuw i8, ptr %e.0181.pn, i64 1
  %dec182 = add nsw i32 %dec182.in, -1
  %11 = load i8, ptr %e.0181, align 1, !tbaa !5
  %idxprom = sext i8 %11 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom
  %12 = load i32, ptr %items.i, align 8, !tbaa !26
  %13 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.not.i = icmp ult i32 %12, %13
  %14 = load i16, ptr %esize37.i, align 8, !tbaa !27
  br i1 %cmp.not.i, label %if.then.i, label %if.then.thread.i

if.then.i:                                        ; preds = %while.body9
  %tobool.not.i19 = icmp eq i16 %14, 0
  br i1 %tobool.not.i19, label %if.then4.i, label %if.end39.i.thread

if.then.thread.i:                                 ; preds = %while.body9
  %conv38.i = zext i16 %14 to i32
  %mul39.i = mul i32 %12, %conv38.i
  %tobool.not40.i = icmp eq i16 %14, 0
  br i1 %tobool.not40.i, label %if.then4.i, label %if.then8.i

if.then4.i:                                       ; preds = %if.then.thread.i, %if.then.i
  tail call void @abort() #36
  unreachable

if.then8.i:                                       ; preds = %if.then.thread.i
  %15 = load i16, ptr %get.i, align 2, !tbaa !28
  %narrow.i = tail call i16 @llvm.umax.i16(i16 %15, i16 1)
  %spec.select.i = zext i16 %narrow.i to i32
  %add13.i = add i32 %12, %spec.select.i
  %mul16.i = mul i32 %add13.i, %conv38.i
  %conv17.i = zext i32 %mul16.i to i64
  %call.i = tail call noalias ptr @malloc(i64 noundef %conv17.i) #34
  %tobool18.not.not.i = icmp ne ptr %call.i, null
  tail call void @llvm.assume(i1 %tobool18.not.not.i)
  %tobool20.not.i = icmp eq i32 %mul39.i, 0
  %.pr.i = load ptr, ptr %elm, align 8, !tbaa !23
  br i1 %tobool20.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.then8.i
  %conv22.i = zext i32 %mul39.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i, ptr align 1 %.pr.i, i64 %conv22.i, i1 false)
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.then8.i
  %tobool25.not.i = icmp eq ptr %.pr.i, null
  br i1 %tobool25.not.i, label %if.end39.i.thread142, label %if.end39.i

if.end39.i.thread142:                             ; preds = %if.end23.i
  store ptr %call.i, ptr %elm, align 8, !tbaa !23
  store i32 %add13.i, ptr %alloc.i, align 4, !tbaa !25
  br label %if.then43.i

if.end39.i.thread:                                ; preds = %if.then.i
  %conv.i20 = zext i16 %14 to i32
  %mul.i = mul i32 %12, %conv.i20
  %add35.i = add nuw i32 %12, 1
  %mul38.i = mul i32 %add35.i, %conv.i20
  %.pre = load ptr, ptr %elm, align 8, !tbaa !23
  br label %if.then43.i

if.end39.i:                                       ; preds = %if.end23.i
  tail call void @free(ptr noundef nonnull %.pr.i) #31
  %.pre.pre.i = load i32, ptr %items.i, align 8, !tbaa !26
  store ptr %call.i, ptr %elm, align 8, !tbaa !23
  store i32 %add13.i, ptr %alloc.i, align 4, !tbaa !25
  %cmp41.not.i = icmp ult i32 %12, %.pre.pre.i
  br i1 %cmp41.not.i, label %if.end53.i, label %if.then43.i

if.then43.i:                                      ; preds = %if.end39.i.thread142, %if.end39.i.thread, %if.end39.i
  %16 = phi ptr [ %.pre, %if.end39.i.thread ], [ %call.i, %if.end39.i ], [ %call.i, %if.end39.i.thread142 ]
  %nsize.0.i141 = phi i32 [ %mul38.i, %if.end39.i.thread ], [ %mul16.i, %if.end39.i ], [ %mul16.i, %if.end39.i.thread142 ]
  %mul4347.i140 = phi i32 [ %mul.i, %if.end39.i.thread ], [ %mul39.i, %if.end39.i ], [ %mul39.i, %if.end39.i.thread142 ]
  %idx.ext.i = zext i32 %mul4347.i140 to i64
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %16, i64 %idx.ext.i
  %sub.i = sub i32 %nsize.0.i141, %mul4347.i140
  %conv45.i = zext i32 %sub.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.i, i8 0, i64 %conv45.i, i1 false)
  %add46.i = add i32 %12, 1
  store i32 %add46.i, ptr %items.i, align 8, !tbaa !26
  %.pre198 = load ptr, ptr %elm, align 8, !tbaa !23
  br label %if.end53.i

if.end53.i:                                       ; preds = %if.then43.i, %if.end39.i
  %17 = phi ptr [ %.pre198, %if.then43.i ], [ %call.i, %if.end39.i ]
  %18 = load i16, ptr %esize37.i, align 8, !tbaa !27
  %conv56.i = zext i16 %18 to i32
  %mul57.i = mul i32 %12, %conv56.i
  %idx.ext58.i = zext i32 %mul57.i to i64
  %add.ptr59.i = getelementptr inbounds nuw i8, ptr %17, i64 %idx.ext58.i
  store i8 %11, ptr %add.ptr59.i, align 1, !tbaa !5
  %feat = getelementptr inbounds nuw i8, ptr %arrayidx, i64 32
  %19 = load i64, ptr %feat, align 16, !tbaa !76
  %and = and i64 %19, 268435456
  %tobool13.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool13.not, i8 0, i8 %stress.1180
  %du = getelementptr inbounds nuw i8, ptr %arrayidx, i64 9
  %20 = load i8, ptr %du, align 1, !tbaa !136
  %conv16 = sext i8 %20 to i16
  %ud = getelementptr inbounds nuw i8, ptr %arrayidx, i64 10
  %21 = load i8, ptr %ud, align 2, !tbaa !137
  %conv17 = sext i8 %21 to i16
  %add = add nsw i16 %conv17, %conv16
  %div161 = sdiv i16 %add, 2
  %div.sext = sext i16 %div161 to i32
  %22 = load i32, ptr @speed, align 4, !tbaa !10
  %mul = mul nsw i32 %22, %div.sext
  %23 = load i32, ptr %items.i, align 8, !tbaa !26
  %24 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.not.i22 = icmp ult i32 %23, %24
  %25 = load i16, ptr %esize37.i, align 8, !tbaa !27
  br i1 %cmp.not.i22, label %if.then.i69, label %if.then.thread.i24

if.then.i69:                                      ; preds = %if.end53.i
  %tobool.not.i71 = icmp eq i16 %25, 0
  br i1 %tobool.not.i71, label %if.then4.i66, label %if.end39.i49.thread

if.then.thread.i24:                               ; preds = %if.end53.i
  %conv38.i26 = zext i16 %25 to i32
  %mul39.i27 = mul i32 %23, %conv38.i26
  %tobool.not40.i28 = icmp eq i16 %25, 0
  br i1 %tobool.not40.i28, label %if.then4.i66, label %if.then8.i29

if.then4.i66:                                     ; preds = %if.then.thread.i24, %if.then.i69
  tail call void @abort() #36
  unreachable

if.then8.i29:                                     ; preds = %if.then.thread.i24
  %26 = load i16, ptr %get.i, align 2, !tbaa !28
  %narrow.i31 = tail call i16 @llvm.umax.i16(i16 %26, i16 1)
  %spec.select.i32 = zext i16 %narrow.i31 to i32
  %add13.i33 = add i32 %23, %spec.select.i32
  %mul16.i34 = mul i32 %add13.i33, %conv38.i26
  %conv17.i35 = zext i32 %mul16.i34 to i64
  %call.i36 = tail call noalias ptr @malloc(i64 noundef %conv17.i35) #34
  %tobool18.not.not.i37 = icmp ne ptr %call.i36, null
  tail call void @llvm.assume(i1 %tobool18.not.not.i37)
  %tobool20.not.i39 = icmp eq i32 %mul39.i27, 0
  %.pr.i40 = load ptr, ptr %elm, align 8, !tbaa !23
  br i1 %tobool20.not.i39, label %if.end23.i43, label %if.then21.i41

if.then21.i41:                                    ; preds = %if.then8.i29
  %conv22.i42 = zext i32 %mul39.i27 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i36, ptr align 1 %.pr.i40, i64 %conv22.i42, i1 false)
  br label %if.end23.i43

if.end23.i43:                                     ; preds = %if.then21.i41, %if.then8.i29
  %tobool25.not.i44 = icmp eq ptr %.pr.i40, null
  br i1 %tobool25.not.i44, label %if.end39.i49.thread150, label %if.end39.i49

if.end39.i49.thread150:                           ; preds = %if.end23.i43
  store ptr %call.i36, ptr %elm, align 8, !tbaa !23
  store i32 %add13.i33, ptr %alloc.i, align 4, !tbaa !25
  br label %if.then43.i53

if.end39.i49.thread:                              ; preds = %if.then.i69
  %conv.i73 = zext i16 %25 to i32
  %mul.i74 = mul i32 %23, %conv.i73
  %add35.i75 = add nuw i32 %23, 1
  %mul38.i76 = mul i32 %add35.i75, %conv.i73
  %.pre199 = load ptr, ptr %elm, align 8, !tbaa !23
  br label %if.then43.i53

if.end39.i49:                                     ; preds = %if.end23.i43
  tail call void @free(ptr noundef nonnull %.pr.i40) #31
  %.pre.pre.i46 = load i32, ptr %items.i, align 8, !tbaa !26
  store ptr %call.i36, ptr %elm, align 8, !tbaa !23
  store i32 %add13.i33, ptr %alloc.i, align 4, !tbaa !25
  %cmp41.not.i52 = icmp ult i32 %23, %.pre.pre.i46
  br i1 %cmp41.not.i52, label %if.end53.i59, label %if.then43.i53

if.then43.i53:                                    ; preds = %if.end39.i49.thread150, %if.end39.i49.thread, %if.end39.i49
  %27 = phi ptr [ %.pre199, %if.end39.i49.thread ], [ %call.i36, %if.end39.i49 ], [ %call.i36, %if.end39.i49.thread150 ]
  %nsize.0.i51149 = phi i32 [ %mul38.i76, %if.end39.i49.thread ], [ %mul16.i34, %if.end39.i49 ], [ %mul16.i34, %if.end39.i49.thread150 ]
  %mul4347.i50148 = phi i32 [ %mul.i74, %if.end39.i49.thread ], [ %mul39.i27, %if.end39.i49 ], [ %mul39.i27, %if.end39.i49.thread150 ]
  %idx.ext.i54 = zext i32 %mul4347.i50148 to i64
  %add.ptr.i55 = getelementptr inbounds nuw i8, ptr %27, i64 %idx.ext.i54
  %sub.i56 = sub i32 %nsize.0.i51149, %mul4347.i50148
  %conv45.i57 = zext i32 %sub.i56 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.i55, i8 0, i64 %conv45.i57, i1 false)
  %add46.i58 = add i32 %23, 1
  store i32 %add46.i58, ptr %items.i, align 8, !tbaa !26
  %.pre200 = load ptr, ptr %elm, align 8, !tbaa !23
  br label %if.end53.i59

if.end53.i59:                                     ; preds = %if.then43.i53, %if.end39.i49
  %28 = phi ptr [ %.pre200, %if.then43.i53 ], [ %call.i36, %if.end39.i49 ]
  %29 = load i16, ptr %esize37.i, align 8, !tbaa !27
  %conv56.i61 = zext i16 %29 to i32
  %mul57.i62 = mul i32 %23, %conv56.i61
  %idx.ext58.i63 = zext i32 %mul57.i62 to i64
  %add.ptr59.i64 = getelementptr inbounds nuw i8, ptr %28, i64 %idx.ext58.i63
  %conv.i = trunc i32 %mul to i8
  store i8 %conv.i, ptr %add.ptr59.i64, align 1, !tbaa !5
  %add19 = add i32 %mul, %t.1179
  %30 = load i32, ptr %items.i, align 8, !tbaa !26
  %31 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.not.i79 = icmp ult i32 %30, %31
  %32 = load i16, ptr %esize37.i, align 8, !tbaa !27
  br i1 %cmp.not.i79, label %if.then.i126, label %if.then.thread.i81

if.then.i126:                                     ; preds = %if.end53.i59
  %tobool.not.i128 = icmp eq i16 %32, 0
  br i1 %tobool.not.i128, label %if.then4.i123, label %if.end39.i106.thread

if.then.thread.i81:                               ; preds = %if.end53.i59
  %conv38.i83 = zext i16 %32 to i32
  %mul39.i84 = mul i32 %30, %conv38.i83
  %tobool.not40.i85 = icmp eq i16 %32, 0
  br i1 %tobool.not40.i85, label %if.then4.i123, label %if.then8.i86

if.then4.i123:                                    ; preds = %if.then.thread.i81, %if.then.i126
  tail call void @abort() #36
  unreachable

if.then8.i86:                                     ; preds = %if.then.thread.i81
  %33 = load i16, ptr %get.i, align 2, !tbaa !28
  %narrow.i88 = tail call i16 @llvm.umax.i16(i16 %33, i16 1)
  %spec.select.i89 = zext i16 %narrow.i88 to i32
  %add13.i90 = add i32 %30, %spec.select.i89
  %mul16.i91 = mul i32 %add13.i90, %conv38.i83
  %conv17.i92 = zext i32 %mul16.i91 to i64
  %call.i93 = tail call noalias ptr @malloc(i64 noundef %conv17.i92) #34
  %tobool18.not.not.i94 = icmp ne ptr %call.i93, null
  tail call void @llvm.assume(i1 %tobool18.not.not.i94)
  %tobool20.not.i96 = icmp eq i32 %mul39.i84, 0
  %.pr.i97 = load ptr, ptr %elm, align 8, !tbaa !23
  br i1 %tobool20.not.i96, label %if.end23.i100, label %if.then21.i98

if.then21.i98:                                    ; preds = %if.then8.i86
  %conv22.i99 = zext i32 %mul39.i84 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i93, ptr align 1 %.pr.i97, i64 %conv22.i99, i1 false)
  br label %if.end23.i100

if.end23.i100:                                    ; preds = %if.then21.i98, %if.then8.i86
  %tobool25.not.i101 = icmp eq ptr %.pr.i97, null
  br i1 %tobool25.not.i101, label %if.end39.i106.thread158, label %if.end39.i106

if.end39.i106.thread158:                          ; preds = %if.end23.i100
  store ptr %call.i93, ptr %elm, align 8, !tbaa !23
  store i32 %add13.i90, ptr %alloc.i, align 4, !tbaa !25
  br label %if.then43.i110

if.end39.i106.thread:                             ; preds = %if.then.i126
  %conv.i130 = zext i16 %32 to i32
  %mul.i131 = mul i32 %30, %conv.i130
  %add35.i132 = add nuw i32 %30, 1
  %mul38.i133 = mul i32 %add35.i132, %conv.i130
  %.pre201 = load ptr, ptr %elm, align 8, !tbaa !23
  br label %if.then43.i110

if.end39.i106:                                    ; preds = %if.end23.i100
  tail call void @free(ptr noundef nonnull %.pr.i97) #31
  %.pre.pre.i103 = load i32, ptr %items.i, align 8, !tbaa !26
  store ptr %call.i93, ptr %elm, align 8, !tbaa !23
  store i32 %add13.i90, ptr %alloc.i, align 4, !tbaa !25
  %cmp41.not.i109 = icmp ult i32 %30, %.pre.pre.i103
  br i1 %cmp41.not.i109, label %if.end53.i116, label %if.then43.i110

if.then43.i110:                                   ; preds = %if.end39.i106.thread158, %if.end39.i106.thread, %if.end39.i106
  %34 = phi ptr [ %.pre201, %if.end39.i106.thread ], [ %call.i93, %if.end39.i106 ], [ %call.i93, %if.end39.i106.thread158 ]
  %nsize.0.i108157 = phi i32 [ %mul38.i133, %if.end39.i106.thread ], [ %mul16.i91, %if.end39.i106 ], [ %mul16.i91, %if.end39.i106.thread158 ]
  %mul4347.i107156 = phi i32 [ %mul.i131, %if.end39.i106.thread ], [ %mul39.i84, %if.end39.i106 ], [ %mul39.i84, %if.end39.i106.thread158 ]
  %idx.ext.i111 = zext i32 %mul4347.i107156 to i64
  %add.ptr.i112 = getelementptr inbounds nuw i8, ptr %34, i64 %idx.ext.i111
  %sub.i113 = sub i32 %nsize.0.i108157, %mul4347.i107156
  %conv45.i114 = zext i32 %sub.i113 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.i112, i8 0, i64 %conv45.i114, i1 false)
  %add46.i115 = add i32 %30, 1
  store i32 %add46.i115, ptr %items.i, align 8, !tbaa !26
  %.pre202 = load ptr, ptr %elm, align 8, !tbaa !23
  br label %if.end53.i116

if.end53.i116:                                    ; preds = %if.then43.i110, %if.end39.i106
  %35 = phi ptr [ %.pre202, %if.then43.i110 ], [ %call.i93, %if.end39.i106 ]
  %36 = load i16, ptr %esize37.i, align 8, !tbaa !27
  %conv56.i118 = zext i16 %36 to i32
  %mul57.i119 = mul i32 %30, %conv56.i118
  %idx.ext58.i120 = zext i32 %mul57.i119 to i64
  %add.ptr59.i121 = getelementptr inbounds nuw i8, ptr %35, i64 %idx.ext58.i120
  store i8 %spec.select, ptr %add.ptr59.i121, align 1, !tbaa !5
  %cmp7 = icmp samesign ugt i32 %dec182.in, 1
  br i1 %cmp7, label %while.body9, label %if.end27, !llvm.loop !138

if.else:                                          ; preds = %trie_lookup.exit
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %s.024.i, i64 1
  switch i8 %9, label %sw.default [
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
  %conv22 = sext i8 %9 to i32
  %37 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.1.742, i32 noundef %conv22, i32 noundef %n, ptr noundef %phone) #35
  br label %if.end27

if.end27:                                         ; preds = %if.end53.i116, %if.then3, %if.else, %sw.bb, %sw.bb23, %sw.bb24, %sw.default
  %s.1 = phi ptr [ %incdec.ptr21, %sw.default ], [ %incdec.ptr21, %sw.bb ], [ %incdec.ptr21, %sw.bb23 ], [ %incdec.ptr21, %sw.bb24 ], [ %incdec.ptr21, %if.else ], [ %s.024.i, %if.then3 ], [ %s.024.i, %if.end53.i116 ]
  %t.2 = phi i32 [ %t.0186, %sw.default ], [ %t.0186, %sw.bb ], [ %t.0186, %sw.bb23 ], [ %t.0186, %sw.bb24 ], [ %t.0186, %if.else ], [ %t.0186, %if.then3 ], [ %add19, %if.end53.i116 ]
  %stress.3 = phi i8 [ %stress.0187, %sw.default ], [ 3, %sw.bb ], [ 2, %sw.bb23 ], [ 1, %sw.bb24 ], [ %stress.0187, %if.else ], [ %stress.0187, %if.then3 ], [ %spec.select, %if.end53.i116 ]
  %cmp = icmp ult ptr %s.1, %add.ptr
  br i1 %cmp, label %land.rhs, label %while.end28, !llvm.loop !139

while.end28:                                      ; preds = %land.rhs, %if.end27, %if.end
  %t.0.lcssa = phi i32 [ 0, %if.end ], [ %t.2, %if.end27 ], [ %t.0186, %land.rhs ]
  ret i32 %t.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define internal void @enter(ptr noundef readonly captures(none) %p, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #31
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #31
  %add.ptr = getelementptr inbounds nuw i8, ptr %buf, i64 1
  call void @llvm.va_start.p0(ptr nonnull %ap)
  %overflow_arg_area_p = getelementptr inbounds nuw i8, ptr %ap, i64 8
  %0 = getelementptr inbounds nuw i8, ptr %ap, i64 16
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then, %entry
  %x.0.ph = phi ptr [ %incdec.ptr, %if.then ], [ %add.ptr, %entry ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.else
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
  %4 = load ptr, ptr %vaarg.addr, align 8, !tbaa !12
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %while.end, label %while.body

while.body:                                       ; preds = %vaarg.end
  %5 = load i32, ptr @num_Elements, align 4, !tbaa !10
  %idx.ext.i = zext i32 %5 to i64
  %add.ptr.idx.i = mul nuw nsw i64 %idx.ext.i, 272
  %add.ptr.i = getelementptr inbounds nuw i8, ptr @Elements, i64 %add.ptr.idx.i
  %cmp4.not.i = icmp eq i32 %5, 0
  br i1 %cmp4.not.i, label %if.else, label %while.body.i

while.body.i:                                     ; preds = %while.body, %if.end.i
  %e.05.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ @Elements, %while.body ]
  %6 = load ptr, ptr %e.05.i, align 8, !tbaa !66
  %call.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #32
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %e.05.i, i64 272
  %cmp.i = icmp ult ptr %incdec.ptr.i, %add.ptr.i
  br i1 %cmp.i, label %while.body.i, label %if.else, !llvm.loop !140

if.then:                                          ; preds = %while.body.i
  %sub.ptr.lhs.cast = ptrtoint ptr %e.05.i to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @Elements to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 272
  %conv = trunc i64 %sub.ptr.div to i8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %x.0.ph, i64 1
  store i8 %conv, ptr %x.0.ph, align 1, !tbaa !5
  br label %while.cond.outer, !llvm.loop !141

if.else:                                          ; preds = %if.end.i, %while.body
  %7 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.110.851, ptr noundef nonnull %4) #35
  br label %while.cond, !llvm.loop !141

while.end:                                        ; preds = %vaarg.end
  call void @llvm.va_end.p0(ptr nonnull %ap)
  %sub.ptr.lhs.cast7 = ptrtoint ptr %x.0.ph to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i64
  %8 = xor i64 %sub.ptr.rhs.cast, -1
  %sub = add i64 %sub.ptr.lhs.cast7, %8
  %conv9 = trunc i64 %sub to i8
  store i8 %conv9, ptr %buf, align 16, !tbaa !5
  %sext = shl i64 %sub, 56
  %conv11 = ashr exact i64 %sext, 56
  %add = add nsw i64 %conv11, 1
  %call13 = call noalias ptr @malloc(i64 noundef %add) #34
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call13, ptr nonnull align 16 %buf, i64 %add, i1 false)
  %9 = load i8, ptr %p, align 1, !tbaa !5
  %tobool.not13.i = icmp ne i8 %9, 0
  call void @llvm.assume(i1 %tobool.not13.i)
  br label %while.cond1.preheader.i

while.cond1.preheader.i:                          ; preds = %if.end10.i, %while.end
  %10 = phi i8 [ %13, %if.end10.i ], [ %9, %while.end ]
  %incdec.ptr15.pn.i = phi ptr [ %incdec.ptr15.i, %if.end10.i ], [ %p, %while.end ]
  %r.addr.014.i = phi ptr [ %more.i, %if.end10.i ], [ @phtoelm, %while.end ]
  %incdec.ptr15.i = getelementptr inbounds nuw i8, ptr %incdec.ptr15.pn.i, i64 1
  br label %while.cond1.i

while.cond1.i:                                    ; preds = %while.body3.i, %while.cond1.preheader.i
  %r.addr.1.i = phi ptr [ %11, %while.body3.i ], [ %r.addr.014.i, %while.cond1.preheader.i ]
  %11 = load ptr, ptr %r.addr.1.i, align 8, !tbaa !129
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %if.then8.i, label %while.body3.i

while.body3.i:                                    ; preds = %while.cond1.i
  %ch4.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  %12 = load i8, ptr %ch4.i, align 8, !tbaa !131
  %cmp.i7 = icmp eq i8 %12, %10
  br i1 %cmp.i7, label %if.end10.i, label %while.cond1.i, !llvm.loop !142

if.then8.i:                                       ; preds = %while.cond1.i
  %calloc.i = call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %ch9.i = getelementptr inbounds nuw i8, ptr %calloc.i, i64 24
  store i8 %10, ptr %ch9.i, align 8, !tbaa !131
  store ptr %calloc.i, ptr %r.addr.1.i, align 8, !tbaa !129
  br label %if.end10.i

if.end10.i:                                       ; preds = %while.body3.i, %if.then8.i
  %p.1.i = phi ptr [ %calloc.i, %if.then8.i ], [ %11, %while.body3.i ]
  %more.i = getelementptr inbounds nuw i8, ptr %p.1.i, i64 8
  %13 = load i8, ptr %incdec.ptr15.i, align 1, !tbaa !5
  %tobool.not.i8 = icmp eq i8 %13, 0
  br i1 %tobool.not.i8, label %trie_insert.exit, label %while.cond1.preheader.i, !llvm.loop !143

trie_insert.exit:                                 ; preds = %if.end10.i
  %value12.i = getelementptr inbounds nuw i8, ptr %p.1.i, i64 16
  store ptr %call13, ptr %value12.i, align 8, !tbaa !135
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #31
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @spell_out(ptr noundef %word, i32 noundef %n, ptr noundef captures(none) %phone) local_unnamed_addr #21 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.856, i32 noundef %n, ptr noundef %word) #35
  %cmp4 = icmp sgt i32 %n, 0
  br i1 %cmp4, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %while.body
  %nph.07 = phi i32 [ %add, %while.body ], [ 0, %entry ]
  %word.addr.06 = phi ptr [ %incdec.ptr, %while.body ], [ %word, %entry ]
  %n.addr.05 = phi i32 [ %dec, %while.body ], [ %n, %entry ]
  %dec = add nsw i32 %n.addr.05, -1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %word.addr.06, i64 1
  %1 = load i8, ptr %word.addr.06, align 1, !tbaa !5
  %2 = and i8 %1, 127
  %idxprom = zext nneg i8 %2 to i64
  %arrayidx = getelementptr inbounds nuw [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %call1 = tail call i32 @xlate_string(ptr noundef %3, ptr noundef %phone)
  %add = add i32 %call1, %nph.07
  %cmp = icmp samesign ugt i32 %n.addr.05, 1
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !144

while.end:                                        ; preds = %while.body, %entry
  %nph.0.lcssa = phi i32 [ 0, %entry ], [ %add, %while.body ]
  ret i32 %nph.0.lcssa
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_string(ptr noundef %string, ptr noundef captures(none) %phone) local_unnamed_addr #5 {
entry:
  %call = tail call ptr @__ctype_b_loc() #38
  %0 = load ptr, ptr %call, align 8, !tbaa !145
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %s.0 = phi ptr [ %string, %entry ], [ %incdec.ptr, %while.cond ]
  %1 = load i8, ptr %s.0, align 1, !tbaa !5
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %3 = and i16 %2, 8192
  %tobool.not = icmp eq i16 %3, 0
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.0, i64 1
  br i1 %tobool.not, label %while.cond2.preheader, label %while.cond, !llvm.loop !147

while.cond2.preheader:                            ; preds = %while.cond
  %tobool3.not213 = icmp eq i8 %1, 0
  br i1 %tobool3.not213, label %while.end303, label %while.body4.lr.ph

while.body4.lr.ph:                                ; preds = %while.cond2.preheader
  %items.i122 = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %alloc.i = getelementptr inbounds nuw i8, ptr %phone, i64 12
  %esize37.i.i = getelementptr inbounds nuw i8, ptr %phone, i64 16
  %get.i.i = getelementptr inbounds nuw i8, ptr %phone, i64 18
  br label %while.body4

while.cond2.loopexit:                             ; preds = %while.cond292
  %tobool3.not = icmp eq i8 %82, 0
  br i1 %tobool3.not, label %while.end303, label %while.body4, !llvm.loop !148

while.body4:                                      ; preds = %while.body4.lr.ph, %while.cond2.loopexit
  %4 = phi i16 [ %2, %while.body4.lr.ph ], [ %83, %while.cond2.loopexit ]
  %5 = phi ptr [ %0, %while.body4.lr.ph ], [ %81, %while.cond2.loopexit ]
  %6 = phi i8 [ %1, %while.body4.lr.ph ], [ %82, %while.cond2.loopexit ]
  %nph.0215 = phi i32 [ 0, %while.body4.lr.ph ], [ %nph.1, %while.cond2.loopexit ]
  %s.1214 = phi ptr [ %s.0, %while.body4.lr.ph ], [ %s.15, %while.cond2.loopexit ]
  %s.1214231 = ptrtoint ptr %s.1214 to i64
  %conv9 = zext i16 %4 to i32
  %and10 = and i32 %conv9, 1024
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else103, label %while.cond12

while.cond12:                                     ; preds = %while.body4, %while.body37
  %7 = phi i16 [ %.pre232, %while.body37 ], [ %4, %while.body4 ]
  %8 = phi i8 [ %.pre, %while.body37 ], [ %6, %while.body4 ]
  %s.2 = phi ptr [ %incdec.ptr38, %while.body37 ], [ %s.1214, %while.body4 ]
  %9 = and i16 %7, 1024
  %tobool19.not = icmp eq i16 %9, 0
  br i1 %tobool19.not, label %lor.rhs, label %while.cond12.while.body37_crit_edge

while.cond12.while.body37_crit_edge:              ; preds = %while.cond12
  %incdec.ptr38.phi.trans.insert = getelementptr inbounds nuw i8, ptr %s.2, i64 1
  %.pre.pre = load i8, ptr %incdec.ptr38.phi.trans.insert, align 1, !tbaa !5
  %idxprom15.phi.trans.insert.phi.trans.insert = sext i8 %.pre.pre to i64
  %arrayidx16.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16, ptr %5, i64 %idxprom15.phi.trans.insert.phi.trans.insert
  %.pre232.pre = load i16, ptr %arrayidx16.phi.trans.insert.phi.trans.insert, align 2, !tbaa !18
  br label %while.body37

lor.rhs:                                          ; preds = %while.cond12
  switch i8 %8, label %lor.lhs.false41 [
    i8 46, label %land.rhs
    i8 45, label %land.rhs
    i8 39, label %land.rhs
    i8 0, label %if.then68
  ]

land.rhs:                                         ; preds = %lor.rhs, %lor.rhs, %lor.rhs
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %s.2, i64 1
  %10 = load i8, ptr %arrayidx30, align 1, !tbaa !5
  %idxprom32 = sext i8 %10 to i64
  %arrayidx33 = getelementptr inbounds i16, ptr %5, i64 %idxprom32
  %11 = load i16, ptr %arrayidx33, align 2, !tbaa !18
  %12 = and i16 %11, 1024
  %tobool36.not = icmp eq i16 %12, 0
  br i1 %tobool36.not, label %lor.lhs.false41, label %while.body37

while.body37:                                     ; preds = %while.cond12.while.body37_crit_edge, %land.rhs
  %.pre232 = phi i16 [ %.pre232.pre, %while.cond12.while.body37_crit_edge ], [ %11, %land.rhs ]
  %.pre = phi i8 [ %.pre.pre, %while.cond12.while.body37_crit_edge ], [ %10, %land.rhs ]
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %s.2, i64 1
  br label %while.cond12, !llvm.loop !149

lor.lhs.false41:                                  ; preds = %land.rhs, %lor.rhs
  %conv46 = zext i16 %7 to i32
  %13 = and i32 %conv46, 8196
  %or.cond = icmp eq i32 %13, 0
  br i1 %or.cond, label %lor.lhs.false57, label %if.then68

lor.lhs.false57:                                  ; preds = %lor.lhs.false41
  %and63 = and i32 %conv46, 2048
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else, label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false57
  %sub.ptr.lhs.cast = ptrtoint ptr %s.2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %s.1214231
  %conv65 = trunc i64 %sub.ptr.sub to i32
  %cmp19.i = icmp sgt i32 %conv65, 0
  br i1 %cmp19.i, label %for.body.i.outer, label %if.else

for.body.i.outer:                                 ; preds = %land.lhs.true, %if.end42.i.thread
  %s.addr.025.i.ph = phi ptr [ %incdec.ptr.i, %if.end42.i.thread ], [ %s.1214, %land.lhs.true ]
  %i.024.i.ph = phi i32 [ %inc.i153, %if.end42.i.thread ], [ 0, %land.lhs.true ]
  %last.023.i.ph = phi i32 [ %conv19.i, %if.end42.i.thread ], [ 0, %land.lhs.true ]
  %14 = phi i1 [ false, %if.end42.i.thread ], [ true, %land.lhs.true ]
  %seen_upper.021.i.ph = phi i32 [ %seen_upper.1.i, %if.end42.i.thread ], [ 0, %land.lhs.true ]
  %seen_lower.020.i.ph = phi i32 [ %seen_lower.1.i, %if.end42.i.thread ], [ 0, %land.lhs.true ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.outer, %if.end42.i
  %s.addr.025.i = phi ptr [ %incdec.ptr.i, %if.end42.i ], [ %s.addr.025.i.ph, %for.body.i.outer ]
  %i.024.i = phi i32 [ %inc.i, %if.end42.i ], [ %i.024.i.ph, %for.body.i.outer ]
  %last.023.i = phi i32 [ %conv19.i, %if.end42.i ], [ %last.023.i.ph, %for.body.i.outer ]
  %seen_upper.021.i = phi i32 [ %seen_upper.1.i, %if.end42.i ], [ %seen_upper.021.i.ph, %for.body.i.outer ]
  %seen_lower.020.i = phi i32 [ %seen_lower.1.i, %if.end42.i ], [ %seen_lower.020.i.ph, %for.body.i.outer ]
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %s.addr.025.i, i64 1
  %15 = load i8, ptr %s.addr.025.i, align 1, !tbaa !5
  %tobool.i = icmp ne i32 %i.024.i, 0
  %cmp1.i = icmp ne i32 %last.023.i, 45
  %or.cond.i = and i1 %tobool.i, %cmp1.i
  %idxprom.i = sext i8 %15 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %5, i64 %idxprom.i
  %16 = load i16, ptr %arrayidx.i, align 2, !tbaa !18
  %17 = and i16 %16, 256
  %tobool4.not.i = icmp eq i16 %17, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 %seen_upper.021.i, i32 1
  %seen_upper.1.i = select i1 %or.cond.i, i32 %spec.select.i, i32 %seen_upper.021.i
  %18 = and i16 %16, 512
  %tobool11.not.i = icmp eq i16 %18, 0
  br i1 %tobool11.not.i, label %if.end18.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body.i
  %call13.i = tail call ptr @__ctype_toupper_loc() #38
  %19 = load ptr, ptr %call13.i, align 8, !tbaa !150
  %arrayidx16.i = getelementptr inbounds i32, ptr %19, i64 %idxprom.i
  %20 = load i32, ptr %arrayidx16.i, align 4, !tbaa !10
  %conv17.i = trunc i32 %20 to i8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %for.body.i
  %seen_lower.1.i = phi i32 [ 1, %if.then12.i ], [ %seen_lower.020.i, %for.body.i ]
  %ch.0.i = phi i8 [ %conv17.i, %if.then12.i ], [ %15, %for.body.i ]
  %conv19.i = sext i8 %ch.0.i to i32
  %21 = add i8 %ch.0.i, -65
  %22 = tail call i8 @llvm.fshl.i8(i8 %21, i8 %21, i8 7)
  switch i8 %22, label %if.end42.i [
    i8 12, label %if.end42.i.thread
    i8 10, label %if.end42.i.thread
    i8 7, label %if.end42.i.thread
    i8 4, label %if.end42.i.thread
    i8 2, label %if.end42.i.thread
    i8 0, label %if.end42.i.thread
  ]

if.end42.i:                                       ; preds = %if.end18.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv65
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i, !llvm.loop !152

if.end42.i.thread:                                ; preds = %if.end18.i, %if.end18.i, %if.end18.i, %if.end18.i, %if.end18.i, %if.end18.i
  %inc.i153 = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i154 = icmp eq i32 %inc.i153, %conv65
  br i1 %exitcond.not.i154, label %suspect_word.exit, label %for.body.i.outer, !llvm.loop !152

for.end.i:                                        ; preds = %if.end42.i
  br i1 %14, label %if.else, label %suspect_word.exit

suspect_word.exit:                                ; preds = %if.end42.i.thread, %for.end.i
  %.not.i = icmp ne i32 %seen_lower.1.i, 0
  %23 = icmp eq i32 %seen_upper.1.i, 0
  %narrow.i.not = select i1 %23, i1 %.not.i, i1 false
  br i1 %narrow.i.not, label %if.then68, label %if.else

if.then68:                                        ; preds = %lor.rhs, %suspect_word.exit, %lor.lhs.false41
  %sub.ptr.lhs.cast69 = ptrtoint ptr %s.2 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %s.1214231
  %conv72 = trunc i64 %sub.ptr.sub71 to i32
  %call73 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %s.1214, i32 noundef %conv72, ptr noundef %phone)
  %add = add i32 %call73, %nph.0215
  br label %if.end291

if.else:                                          ; preds = %land.lhs.true, %for.end.i, %suspect_word.exit, %lor.lhs.false57
  %24 = load i8, ptr %s.2, align 1, !tbaa !5
  %tobool76.not176 = icmp eq i8 %24, 0
  br i1 %tobool76.not176, label %while.end96, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %if.else, %while.body94
  %25 = phi i8 [ %28, %while.body94 ], [ %24, %if.else ]
  %s.3177 = phi ptr [ %incdec.ptr95, %while.body94 ], [ %s.2, %if.else ]
  %idxprom80 = sext i8 %25 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %5, i64 %idxprom80
  %26 = load i16, ptr %arrayidx81, align 2, !tbaa !18
  %27 = and i16 %26, 8196
  %or.cond101 = icmp eq i16 %27, 0
  br i1 %or.cond101, label %while.body94, label %while.end96

while.body94:                                     ; preds = %land.lhs.true77
  %incdec.ptr95 = getelementptr inbounds nuw i8, ptr %s.3177, i64 1
  %28 = load i8, ptr %incdec.ptr95, align 1, !tbaa !5
  %tobool76.not = icmp eq i8 %28, 0
  br i1 %tobool76.not, label %while.end96, label %land.lhs.true77, !llvm.loop !153

while.end96:                                      ; preds = %while.body94, %land.lhs.true77, %if.else
  %s.3.lcssa = phi ptr [ %s.2, %if.else ], [ %s.3177, %land.lhs.true77 ], [ %incdec.ptr95, %while.body94 ]
  %sub.ptr.lhs.cast97 = ptrtoint ptr %s.3.lcssa to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %s.1214231
  %conv100 = trunc i64 %sub.ptr.sub99 to i32
  %29 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.2.856, i32 noundef %conv100, ptr noundef nonnull %s.1214) #35
  %cmp.i179 = icmp sgt i32 %conv100, 0
  br i1 %cmp.i179, label %while.body.i, label %spell_out.exit

while.body.i:                                     ; preds = %while.end96, %while.body.i
  %nph.0.i182 = phi i32 [ %add.i, %while.body.i ], [ 0, %while.end96 ]
  %word.addr.0.i181 = phi ptr [ %incdec.ptr.i102, %while.body.i ], [ %s.1214, %while.end96 ]
  %n.addr.0.i180 = phi i32 [ %dec.i, %while.body.i ], [ %conv100, %while.end96 ]
  %dec.i = add nsw i32 %n.addr.0.i180, -1
  %incdec.ptr.i102 = getelementptr inbounds nuw i8, ptr %word.addr.0.i181, i64 1
  %30 = load i8, ptr %word.addr.0.i181, align 1, !tbaa !5
  %31 = and i8 %30, 127
  %idxprom.i103 = zext nneg i8 %31 to i64
  %arrayidx.i104 = getelementptr inbounds nuw [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom.i103
  %32 = load ptr, ptr %arrayidx.i104, align 8, !tbaa !12
  %call1.i = tail call i32 @xlate_string(ptr noundef %32, ptr noundef %phone)
  %add.i = add i32 %call1.i, %nph.0.i182
  %cmp.i = icmp samesign ugt i32 %n.addr.0.i180, 1
  br i1 %cmp.i, label %while.body.i, label %spell_out.exit, !llvm.loop !144

spell_out.exit:                                   ; preds = %while.body.i, %while.end96
  %nph.0.i.lcssa = phi i32 [ 0, %while.end96 ], [ %add.i, %while.body.i ]
  %add102 = add i32 %nph.0.i.lcssa, %nph.0215
  br label %if.end291

if.else103:                                       ; preds = %while.body4
  %and109 = and i32 %conv9, 2048
  %tobool110.not = icmp eq i32 %and109, 0
  br i1 %tobool110.not, label %lor.lhs.false111, label %if.then124

lor.lhs.false111:                                 ; preds = %if.else103
  switch i8 %6, label %if.else215 [
    i8 45, label %land.lhs.true115
    i8 91, label %land.lhs.true193
  ]

land.lhs.true115:                                 ; preds = %lor.lhs.false111
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %s.1214, i64 1
  %33 = load i8, ptr %arrayidx117, align 1, !tbaa !5
  %idxprom119 = sext i8 %33 to i64
  %arrayidx120 = getelementptr inbounds i16, ptr %5, i64 %idxprom119
  %34 = load i16, ptr %arrayidx120, align 2, !tbaa !18
  %35 = and i16 %34, 2048
  %tobool123.not = icmp eq i16 %35, 0
  br i1 %tobool123.not, label %if.else215, label %if.then124

if.then124:                                       ; preds = %land.lhs.true115, %if.else103
  %cmp126 = icmp eq i8 %6, 45
  %cond = select i1 %cmp126, i32 -1, i32 1
  %spec.select.idx = zext i1 %cmp126 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %s.1214, i64 %spec.select.idx
  %36 = load i8, ptr %spec.select, align 1, !tbaa !5
  %idxprom136184 = sext i8 %36 to i64
  %arrayidx137185 = getelementptr inbounds i16, ptr %5, i64 %idxprom136184
  %37 = load i16, ptr %arrayidx137185, align 2, !tbaa !18
  %38 = and i16 %37, 2048
  %tobool140.not186 = icmp eq i16 %38, 0
  br i1 %tobool140.not186, label %while.end145, label %while.body141

while.body141:                                    ; preds = %if.then124, %while.body141
  %idxprom136189 = phi i64 [ %idxprom136, %while.body141 ], [ %idxprom136184, %if.then124 ]
  %s.6188 = phi ptr [ %incdec.ptr144, %while.body141 ], [ %spec.select, %if.then124 ]
  %value.0187 = phi i64 [ %sub, %while.body141 ], [ 0, %if.then124 ]
  %mul = mul nsw i64 %value.0187, 10
  %add143 = add i64 %mul, -48
  %sub = add i64 %add143, %idxprom136189
  %incdec.ptr144 = getelementptr inbounds nuw i8, ptr %s.6188, i64 1
  %39 = load i8, ptr %incdec.ptr144, align 1, !tbaa !5
  %idxprom136 = sext i8 %39 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %5, i64 %idxprom136
  %40 = load i16, ptr %arrayidx137, align 2, !tbaa !18
  %41 = and i16 %40, 2048
  %tobool140.not = icmp eq i16 %41, 0
  br i1 %tobool140.not, label %while.end145, label %while.body141, !llvm.loop !154

while.end145:                                     ; preds = %while.body141, %if.then124
  %value.0.lcssa = phi i64 [ 0, %if.then124 ], [ %sub, %while.body141 ]
  %s.6.lcssa = phi ptr [ %spec.select, %if.then124 ], [ %incdec.ptr144, %while.body141 ]
  %.lcssa174 = phi i8 [ %36, %if.then124 ], [ %39, %while.body141 ]
  %cmp147 = icmp eq i8 %.lcssa174, 46
  br i1 %cmp147, label %land.lhs.true149, label %if.else183

land.lhs.true149:                                 ; preds = %while.end145
  %arrayidx151 = getelementptr inbounds nuw i8, ptr %s.6.lcssa, i64 1
  %42 = load i8, ptr %arrayidx151, align 1, !tbaa !5
  %idxprom153 = sext i8 %42 to i64
  %arrayidx154 = getelementptr inbounds i16, ptr %5, i64 %idxprom153
  %43 = load i16, ptr %arrayidx154, align 2, !tbaa !18
  %44 = and i16 %43, 2048
  %tobool157.not = icmp eq i16 %44, 0
  br i1 %tobool157.not, label %if.else183, label %if.then158

if.then158:                                       ; preds = %land.lhs.true149
  %conv160 = sext i32 %cond to i64
  %mul161 = mul nsw i64 %value.0.lcssa, %conv160
  %call162 = tail call i32 @xlate_cardinal(i64 noundef %mul161, ptr noundef %phone)
  %call164 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.857, ptr noundef %phone)
  %45 = load ptr, ptr %call, align 8, !tbaa !145
  br label %while.cond166

while.cond166:                                    ; preds = %while.cond166, %if.then158
  %s.7 = phi ptr [ %arrayidx151, %if.then158 ], [ %incdec.ptr175, %while.cond166 ]
  %46 = load i8, ptr %s.7, align 1, !tbaa !5
  %idxprom169 = sext i8 %46 to i64
  %arrayidx170 = getelementptr inbounds i16, ptr %45, i64 %idxprom169
  %47 = load i16, ptr %arrayidx170, align 2, !tbaa !18
  %48 = and i16 %47, 2048
  %tobool173.not = icmp eq i16 %48, 0
  %incdec.ptr175 = getelementptr inbounds nuw i8, ptr %s.7, i64 1
  br i1 %tobool173.not, label %while.end176, label %while.cond166, !llvm.loop !155

while.end176:                                     ; preds = %while.cond166
  %add163 = add i32 %call162, %nph.0215
  %add165 = add i32 %add163, %call164
  %sub.ptr.lhs.cast177 = ptrtoint ptr %s.7 to i64
  %sub.ptr.rhs.cast178 = ptrtoint ptr %arrayidx151 to i64
  %sub.ptr.sub179 = sub i64 %sub.ptr.lhs.cast177, %sub.ptr.rhs.cast178
  %conv180 = trunc i64 %sub.ptr.sub179 to i32
  %49 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call.i105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef nonnull @.str.2.856, i32 noundef %conv180, ptr noundef nonnull %arrayidx151) #35
  %cmp.i110193 = icmp sgt i32 %conv180, 0
  br i1 %cmp.i110193, label %while.body.i111, label %spell_out.exit118

while.body.i111:                                  ; preds = %while.end176, %while.body.i111
  %nph.0.i109196 = phi i32 [ %add.i117, %while.body.i111 ], [ 0, %while.end176 ]
  %word.addr.0.i108195 = phi ptr [ %incdec.ptr.i113, %while.body.i111 ], [ %arrayidx151, %while.end176 ]
  %n.addr.0.i107194 = phi i32 [ %dec.i112, %while.body.i111 ], [ %conv180, %while.end176 ]
  %dec.i112 = add nsw i32 %n.addr.0.i107194, -1
  %incdec.ptr.i113 = getelementptr inbounds nuw i8, ptr %word.addr.0.i108195, i64 1
  %50 = load i8, ptr %word.addr.0.i108195, align 1, !tbaa !5
  %51 = and i8 %50, 127
  %idxprom.i114 = zext nneg i8 %51 to i64
  %arrayidx.i115 = getelementptr inbounds nuw [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom.i114
  %52 = load ptr, ptr %arrayidx.i115, align 8, !tbaa !12
  %call1.i116 = tail call i32 @xlate_string(ptr noundef %52, ptr noundef %phone)
  %add.i117 = add i32 %call1.i116, %nph.0.i109196
  %cmp.i110 = icmp samesign ugt i32 %n.addr.0.i107194, 1
  br i1 %cmp.i110, label %while.body.i111, label %spell_out.exit118, !llvm.loop !144

spell_out.exit118:                                ; preds = %while.body.i111, %while.end176
  %nph.0.i109.lcssa = phi i32 [ 0, %while.end176 ], [ %add.i117, %while.body.i111 ]
  %add182 = add i32 %add165, %nph.0.i109.lcssa
  br label %if.end291

if.else183:                                       ; preds = %land.lhs.true149, %while.end145
  %conv184 = sext i32 %cond to i64
  %mul185 = mul nsw i64 %value.0.lcssa, %conv184
  %call186 = tail call i32 @xlate_cardinal(i64 noundef %mul185, ptr noundef %phone)
  %add187 = add i32 %call186, %nph.0215
  br label %if.end291

land.lhs.true193:                                 ; preds = %lor.lhs.false111
  %call194 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %s.1214, i32 noundef 93) #32
  %tobool195.not = icmp eq ptr %call194, null
  br i1 %tobool195.not, label %if.else215, label %while.cond198

while.cond198:                                    ; preds = %land.lhs.true193, %land.rhs201
  %s.9 = phi ptr [ %incdec.ptr202, %land.rhs201 ], [ %s.1214, %land.lhs.true193 ]
  %53 = load i8, ptr %s.9, align 1, !tbaa !5
  %tobool200.not = icmp eq i8 %53, 0
  br i1 %tobool200.not, label %while.end208, label %land.rhs201

land.rhs201:                                      ; preds = %while.cond198
  %incdec.ptr202 = getelementptr inbounds nuw i8, ptr %s.9, i64 1
  %cmp204.not = icmp eq i8 %53, 93
  br i1 %cmp204.not, label %while.end208, label %while.cond198, !llvm.loop !156

while.end208:                                     ; preds = %while.cond198, %land.rhs201
  %s.10 = phi ptr [ %incdec.ptr202, %land.rhs201 ], [ %s.9, %while.cond198 ]
  %sub.ptr.lhs.cast209 = ptrtoint ptr %s.10 to i64
  %sub.ptr.sub211 = sub i64 %sub.ptr.lhs.cast209, %s.1214231
  %conv212 = trunc i64 %sub.ptr.sub211 to i32
  %call213 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %s.1214, i32 noundef %conv212, ptr noundef %phone)
  %add214 = add i32 %call213, %nph.0215
  br label %if.end291

if.else215:                                       ; preds = %land.lhs.true115, %lor.lhs.false111, %land.lhs.true193
  %54 = and i16 %4, 4
  %tobool222.not = icmp eq i16 %54, 0
  br i1 %tobool222.not, label %land.rhs269, label %if.then223

if.then223:                                       ; preds = %if.else215
  switch i8 %6, label %sw.default [
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
  %arrayidx225 = getelementptr inbounds nuw i8, ptr %s.1214, i64 1
  %55 = load i8, ptr %arrayidx225, align 1, !tbaa !5
  %tobool226.not = icmp eq i8 %55, 0
  br i1 %tobool226.not, label %land.lhs.true236, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %sw.bb
  %idxprom231 = sext i8 %55 to i64
  %arrayidx232 = getelementptr inbounds i16, ptr %5, i64 %idxprom231
  %56 = load i16, ptr %arrayidx232, align 2, !tbaa !18
  %57 = and i16 %56, 8192
  %tobool235.not = icmp eq i16 %57, 0
  br i1 %tobool235.not, label %lor.lhs.false227.if.end242_crit_edge, label %land.lhs.true236

lor.lhs.false227.if.end242_crit_edge:             ; preds = %lor.lhs.false227
  %.pre236 = load i32, ptr %items.i122, align 8, !tbaa !26
  br label %if.end242

land.lhs.true236:                                 ; preds = %lor.lhs.false227, %sw.bb
  %58 = load i32, ptr %items.i122, align 8, !tbaa !26
  %tobool237.not = icmp eq i32 %58, 0
  br i1 %tobool237.not, label %if.end242, label %if.then238

if.then238:                                       ; preds = %land.lhs.true236
  %59 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.not.i = icmp eq i32 %59, 0
  br i1 %cmp.not.i, label %if.then.thread.i.i, label %if.then238.return.sink.split.i_crit_edge

if.then238.return.sink.split.i_crit_edge:         ; preds = %if.then238
  %.pre235 = load ptr, ptr %phone, align 8, !tbaa !23
  br label %darray_find.858.exit

if.then.thread.i.i:                               ; preds = %if.then238
  %60 = load i16, ptr %esize37.i.i, align 8, !tbaa !27
  %conv38.i.i = zext i16 %60 to i32
  %mul39.i.i = mul i32 %58, %conv38.i.i
  %tobool.not40.i.i = icmp eq i16 %60, 0
  br i1 %tobool.not40.i.i, label %if.then4.i.i, label %if.then8.i.i

if.then4.i.i:                                     ; preds = %if.then.thread.i.i
  tail call void @abort() #36
  unreachable

if.then8.i.i:                                     ; preds = %if.then.thread.i.i
  %61 = load i16, ptr %get.i.i, align 2, !tbaa !28
  %narrow.i.i = tail call i16 @llvm.umax.i16(i16 %61, i16 1)
  %spec.select.i.i = zext i16 %narrow.i.i to i32
  %mul16.i.i = mul nuw i32 %spec.select.i.i, %conv38.i.i
  %conv17.i.i = zext i32 %mul16.i.i to i64
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %conv17.i.i) #34
  %tobool18.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.not.i.i, label %darray_find.858.exit, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.then8.i.i
  %tobool20.not.i.i = icmp eq i32 %mul39.i.i, 0
  %.pr.i.i = load ptr, ptr %phone, align 8, !tbaa !23
  br i1 %tobool20.not.i.i, label %if.end23.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  %conv22.i.i = zext i32 %mul39.i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i.i, ptr align 1 %.pr.i.i, i64 %conv22.i.i, i1 false)
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then21.i.i, %if.then19.i.i
  %tobool25.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool25.not.i.i, label %if.end39.i.i.thread, label %if.end39.i.i

if.end39.i.i.thread:                              ; preds = %if.end23.i.i
  store ptr %call.i.i, ptr %phone, align 8, !tbaa !23
  store i32 %spec.select.i.i, ptr %alloc.i, align 4, !tbaa !25
  br label %darray_find.858.exit

if.end39.i.i:                                     ; preds = %if.end23.i.i
  tail call void @free(ptr noundef nonnull %.pr.i.i) #31
  %.pre.pre.i.i = load i32, ptr %items.i122, align 8, !tbaa !26
  store ptr %call.i.i, ptr %phone, align 8, !tbaa !23
  store i32 %spec.select.i.i, ptr %alloc.i, align 4, !tbaa !25
  %62 = icmp eq i32 %.pre.pre.i.i, 0
  br i1 %62, label %if.then43.i.i, label %darray_find.858.exit

if.then43.i.i:                                    ; preds = %if.end39.i.i
  %idx.ext.i.i = zext i32 %mul39.i.i to i64
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %call.i.i, i64 %idx.ext.i.i
  %sub.i.i = sub i32 %mul16.i.i, %mul39.i.i
  %conv45.i.i = zext i32 %sub.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %add.ptr.i.i, i8 0, i64 %conv45.i.i, i1 false)
  store i32 1, ptr %items.i122, align 8, !tbaa !26
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.end39.i.i, %if.then43.i.i, %if.end39.i.i.thread, %if.then238.return.sink.split.i_crit_edge, %if.then8.i.i
  %63 = phi i32 [ %58, %if.then8.i.i ], [ %58, %if.then238.return.sink.split.i_crit_edge ], [ %58, %if.end39.i.i.thread ], [ 1, %if.then43.i.i ], [ %.pre.pre.i.i, %if.end39.i.i ]
  %retval.0.i = phi ptr [ null, %if.then8.i.i ], [ %.pre235, %if.then238.return.sink.split.i_crit_edge ], [ %call.i.i, %if.end39.i.i.thread ], [ %call.i.i, %if.then43.i.i ], [ %call.i.i, %if.end39.i.i ]
  %64 = load i32, ptr @verbose, align 4, !tbaa !10
  tail call void @say_phones(ptr noundef %retval.0.i, i32 noundef %63, i32 noundef %64)
  store i32 0, ptr %items.i122, align 8, !tbaa !26
  br label %if.end242

if.end242:                                        ; preds = %lor.lhs.false227.if.end242_crit_edge, %darray_find.858.exit, %land.lhs.true236
  %65 = phi i32 [ %.pre236, %lor.lhs.false227.if.end242_crit_edge ], [ 0, %darray_find.858.exit ], [ 0, %land.lhs.true236 ]
  %call.i.i119 = tail call ptr @Darray_find(ptr noundef nonnull %phone, i32 noundef %65)
  store i8 32, ptr %call.i.i119, align 1, !tbaa !5
  br label %if.end291

sw.bb245:                                         ; preds = %if.then223, %if.then223, %if.then223, %if.then223, %if.then223, %if.then223, %if.then223
  %incdec.ptr246 = getelementptr inbounds nuw i8, ptr %s.1214, i64 1
  %66 = load i32, ptr %items.i122, align 8, !tbaa !26
  %call.i.i121 = tail call ptr @Darray_find(ptr noundef nonnull %phone, i32 noundef %66)
  store i8 32, ptr %call.i.i121, align 1, !tbaa !5
  br label %if.end291

sw.bb248:                                         ; preds = %if.then223
  %call249 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %s.1214, i32 noundef 93) #32
  %tobool250.not = icmp eq ptr %call249, null
  br i1 %tobool250.not, label %sw.default, label %while.cond253.preheader

while.cond253.preheader:                          ; preds = %sw.bb248
  %s.12198 = getelementptr inbounds nuw i8, ptr %s.1214, i64 1
  %cmp254199 = icmp ult ptr %s.12198, %call249
  br i1 %cmp254199, label %while.body256, label %cleanup

while.body256:                                    ; preds = %while.cond253.preheader, %while.body256
  %s.12200 = phi ptr [ %s.12, %while.body256 ], [ %s.12198, %while.cond253.preheader ]
  %67 = load i8, ptr %s.12200, align 1, !tbaa !5
  %68 = load i32, ptr %items.i122, align 8, !tbaa !26
  %call.i.i123 = tail call ptr @Darray_find(ptr noundef nonnull %phone, i32 noundef %68)
  store i8 %67, ptr %call.i.i123, align 1, !tbaa !5
  %s.12 = getelementptr inbounds nuw i8, ptr %s.12200, i64 1
  %exitcond.not = icmp eq ptr %s.12, %call249
  br i1 %exitcond.not, label %cleanup, label %while.body256, !llvm.loop !157

cleanup:                                          ; preds = %while.body256, %while.cond253.preheader
  %add.ptr = getelementptr inbounds nuw i8, ptr %call249, i64 1
  br label %if.end291

sw.default:                                       ; preds = %sw.bb248, %if.then223
  %69 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call.i124 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %69, ptr noundef nonnull @.str.2.856, i32 noundef 1, ptr noundef nonnull %s.1214) #35
  %70 = load i8, ptr %s.1214, align 1, !tbaa !5
  %71 = and i8 %70, 127
  %idxprom.i133 = zext nneg i8 %71 to i64
  %arrayidx.i134 = getelementptr inbounds nuw [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom.i133
  %72 = load ptr, ptr %arrayidx.i134, align 8, !tbaa !12
  %call1.i135 = tail call i32 @xlate_string(ptr noundef %72, ptr noundef %phone)
  %add263 = add i32 %call1.i135, %nph.0215
  %incdec.ptr264 = getelementptr inbounds nuw i8, ptr %s.1214, i64 1
  br label %if.end291

land.rhs269:                                      ; preds = %if.else215, %while.body279
  %73 = phi i8 [ %76, %while.body279 ], [ %6, %if.else215 ]
  %s.14205 = phi ptr [ %incdec.ptr280, %while.body279 ], [ %s.1214, %if.else215 ]
  %idxprom272 = sext i8 %73 to i64
  %arrayidx273 = getelementptr inbounds i16, ptr %5, i64 %idxprom272
  %74 = load i16, ptr %arrayidx273, align 2, !tbaa !18
  %75 = and i16 %74, 8192
  %tobool276.not = icmp eq i16 %75, 0
  br i1 %tobool276.not, label %while.body279, label %while.end281

while.body279:                                    ; preds = %land.rhs269
  %incdec.ptr280 = getelementptr inbounds nuw i8, ptr %s.14205, i64 1
  %76 = load i8, ptr %incdec.ptr280, align 1, !tbaa !5
  %tobool268.not = icmp eq i8 %76, 0
  br i1 %tobool268.not, label %while.end281, label %land.rhs269, !llvm.loop !158

while.end281:                                     ; preds = %land.rhs269, %while.body279
  %s.14.lcssa.ph = phi ptr [ %s.14205, %land.rhs269 ], [ %incdec.ptr280, %while.body279 ]
  %sub.ptr.lhs.cast282 = ptrtoint ptr %s.14.lcssa.ph to i64
  %sub.ptr.sub284 = sub i64 %sub.ptr.lhs.cast282, %s.1214231
  %conv285 = trunc i64 %sub.ptr.sub284 to i32
  %77 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call.i138 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef nonnull @.str.2.856, i32 noundef %conv285, ptr noundef nonnull %s.1214) #35
  %cmp.i143208 = icmp sgt i32 %conv285, 0
  br i1 %cmp.i143208, label %while.body.i144, label %spell_out.exit151

while.body.i144:                                  ; preds = %while.end281, %while.body.i144
  %nph.0.i142211 = phi i32 [ %add.i150, %while.body.i144 ], [ 0, %while.end281 ]
  %word.addr.0.i141210 = phi ptr [ %incdec.ptr.i146, %while.body.i144 ], [ %s.1214, %while.end281 ]
  %n.addr.0.i140209 = phi i32 [ %dec.i145, %while.body.i144 ], [ %conv285, %while.end281 ]
  %dec.i145 = add nsw i32 %n.addr.0.i140209, -1
  %incdec.ptr.i146 = getelementptr inbounds nuw i8, ptr %word.addr.0.i141210, i64 1
  %78 = load i8, ptr %word.addr.0.i141210, align 1, !tbaa !5
  %79 = and i8 %78, 127
  %idxprom.i147 = zext nneg i8 %79 to i64
  %arrayidx.i148 = getelementptr inbounds nuw [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom.i147
  %80 = load ptr, ptr %arrayidx.i148, align 8, !tbaa !12
  %call1.i149 = tail call i32 @xlate_string(ptr noundef %80, ptr noundef %phone)
  %add.i150 = add i32 %call1.i149, %nph.0.i142211
  %cmp.i143 = icmp samesign ugt i32 %n.addr.0.i140209, 1
  br i1 %cmp.i143, label %while.body.i144, label %spell_out.exit151, !llvm.loop !144

spell_out.exit151:                                ; preds = %while.body.i144, %while.end281
  %nph.0.i142.lcssa = phi i32 [ 0, %while.end281 ], [ %add.i150, %while.body.i144 ]
  %add287 = add i32 %nph.0.i142.lcssa, %nph.0215
  br label %if.end291

if.end291:                                        ; preds = %cleanup, %spell_out.exit118, %if.else183, %spell_out.exit151, %sw.default, %sw.bb245, %if.end242, %while.end208, %if.then68, %spell_out.exit
  %s.4 = phi ptr [ %s.2, %if.then68 ], [ %s.3.lcssa, %spell_out.exit ], [ %s.10, %while.end208 ], [ %incdec.ptr264, %sw.default ], [ %arrayidx225, %if.end242 ], [ %incdec.ptr246, %sw.bb245 ], [ %add.ptr, %cleanup ], [ %s.14.lcssa.ph, %spell_out.exit151 ], [ %s.7, %spell_out.exit118 ], [ %s.6.lcssa, %if.else183 ]
  %nph.1 = phi i32 [ %add, %if.then68 ], [ %add102, %spell_out.exit ], [ %add214, %while.end208 ], [ %add263, %sw.default ], [ %nph.0215, %if.end242 ], [ %nph.0215, %sw.bb245 ], [ %nph.0215, %cleanup ], [ %add287, %spell_out.exit151 ], [ %add182, %spell_out.exit118 ], [ %add187, %if.else183 ]
  %81 = load ptr, ptr %call, align 8, !tbaa !145
  br label %while.cond292

while.cond292:                                    ; preds = %while.cond292, %if.end291
  %s.15 = phi ptr [ %s.4, %if.end291 ], [ %incdec.ptr301, %while.cond292 ]
  %82 = load i8, ptr %s.15, align 1, !tbaa !5
  %idxprom295 = sext i8 %82 to i64
  %arrayidx296 = getelementptr inbounds i16, ptr %81, i64 %idxprom295
  %83 = load i16, ptr %arrayidx296, align 2, !tbaa !18
  %84 = and i16 %83, 8192
  %tobool299.not = icmp eq i16 %84, 0
  %incdec.ptr301 = getelementptr inbounds nuw i8, ptr %s.15, i64 1
  br i1 %tobool299.not, label %while.cond2.loopexit, label %while.cond292, !llvm.loop !159

while.end303:                                     ; preds = %while.cond2.loopexit, %while.cond2.preheader
  %nph.0.lcssa = phi i32 [ 0, %while.cond2.preheader ], [ %nph.1, %while.cond2.loopexit ]
  ret i32 %nph.0.lcssa
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #22

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @suspect_word(ptr noundef readonly captures(none) %s, i32 noundef %n) local_unnamed_addr #23 {
entry:
  %cmp19 = icmp sgt i32 %n, 0
  br i1 %cmp19, label %for.body.lr.ph, label %lor.end

for.body.lr.ph:                                   ; preds = %entry
  %call5 = tail call ptr @__ctype_b_loc() #38
  %0 = load ptr, ptr %call5, align 8, !tbaa !145
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %if.end18
  %s.addr.025 = phi ptr [ %s, %for.body.lr.ph ], [ %incdec.ptr, %if.end18 ]
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end18 ]
  %last.023 = phi i32 [ 0, %for.body.lr.ph ], [ %conv19, %if.end18 ]
  %seen_vowel.022 = phi i32 [ 0, %for.body.lr.ph ], [ %seen_vowel.1, %if.end18 ]
  %seen_upper.021 = phi i32 [ 0, %for.body.lr.ph ], [ %seen_upper.1, %if.end18 ]
  %seen_lower.020 = phi i32 [ 0, %for.body.lr.ph ], [ %seen_lower.1, %if.end18 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.addr.025, i64 1
  %1 = load i8, ptr %s.addr.025, align 1, !tbaa !5
  %tobool = icmp ne i32 %i.024, 0
  %cmp1 = icmp ne i32 %last.023, 45
  %or.cond = and i1 %cmp1, %tobool
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %3 = and i16 %2, 256
  %tobool4.not = icmp eq i16 %3, 0
  %spec.select = select i1 %tobool4.not, i32 %seen_upper.021, i32 1
  %seen_upper.1 = select i1 %or.cond, i32 %spec.select, i32 %seen_upper.021
  %4 = and i16 %2, 512
  %tobool11.not = icmp eq i16 %4, 0
  br i1 %tobool11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %for.body
  %call13 = tail call ptr @__ctype_toupper_loc() #38
  %5 = load ptr, ptr %call13, align 8, !tbaa !150
  %arrayidx16 = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %6 = load i32, ptr %arrayidx16, align 4, !tbaa !10
  %conv17 = trunc i32 %6 to i8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %for.body
  %seen_lower.1 = phi i32 [ 1, %if.then12 ], [ %seen_lower.020, %for.body ]
  %ch.0 = phi i8 [ %conv17, %if.then12 ], [ %1, %for.body ]
  %conv19 = sext i8 %ch.0 to i32
  %7 = add i8 %ch.0, -65
  %8 = tail call i8 @llvm.fshl.i8(i8 %7, i8 %7, i8 7)
  %9 = icmp ult i8 %8, 13
  %switch.maskindex = zext nneg i8 %8 to i16
  %switch.shifted = lshr i16 5269, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %10 = select i1 %9, i1 %switch.lobit, i1 false
  %seen_vowel.1 = select i1 %10, i32 1, i32 %seen_vowel.022
  %inc = add nuw nsw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %n
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !152

for.end:                                          ; preds = %if.end18
  %11 = icmp eq i32 %seen_vowel.1, 0
  br i1 %11, label %lor.end, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %for.end
  %.not = icmp eq i32 %seen_lower.1, 0
  %12 = icmp ne i32 %seen_upper.1, 0
  %narrow = select i1 %12, i1 true, i1 %.not
  %spec.select31 = zext i1 %narrow to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false45, %entry, %for.end
  %lor.ext = phi i32 [ 1, %for.end ], [ 1, %entry ], [ %spec.select31, %lor.lhs.false45 ]
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @xlate_word(ptr noundef %word, i32 noundef %n, ptr noundef captures(none) %phone) unnamed_addr #5 {
entry:
  %0 = load i8, ptr %word, align 1, !tbaa !5
  %cmp.not92 = icmp eq i8 %0, 91
  br i1 %cmp.not92, label %if.else60, label %if.then

if.then:                                          ; preds = %entry, %cleanup42.thread
  %n.tr95 = phi i32 [ %conv35, %cleanup42.thread ], [ %n, %entry ]
  %word.tr94 = phi ptr [ %incdec.ptr26, %cleanup42.thread ], [ %word, %entry ]
  %accumulator.tr93 = phi i32 [ %add37, %cleanup42.thread ], [ 0, %entry ]
  %1 = load ptr, ptr @dict, align 8, !tbaa !17
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end45, label %while.cond15.preheader

while.cond15.preheader:                           ; preds = %if.then
  %idx.ext = sext i32 %n.tr95 to i64
  %add.ptr = getelementptr inbounds i8, ptr %word.tr94, i64 %idx.ext
  %cmp16.not85 = icmp sgt i32 %n.tr95, 0
  br i1 %cmp16.not85, label %while.body18, label %if.then48.thread

while.body18:                                     ; preds = %while.cond15.preheader, %if.else38
  %h.086 = phi ptr [ %incdec.ptr26, %if.else38 ], [ %word.tr94, %while.cond15.preheader ]
  %2 = load i8, ptr %h.086, align 1, !tbaa !5
  %.off = add i8 %2, -45
  %switch = icmp ult i8 %.off, 2
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %h.086, i64 1
  br i1 %switch, label %cleanup42.thread, label %if.else38

cleanup42.thread:                                 ; preds = %while.body18
  %sub.ptr.lhs.cast = ptrtoint ptr %h.086 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %word.tr94 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv27 = trunc i64 %sub.ptr.sub to i32
  %call28 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %word.tr94, i32 noundef %conv27, ptr noundef %phone)
  %sub.ptr.lhs.cast32 = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast33 = ptrtoint ptr %incdec.ptr26 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %conv35 = trunc i64 %sub.ptr.sub34 to i32
  %add37 = add i32 %call28, %accumulator.tr93
  %3 = load i8, ptr %incdec.ptr26, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %3, 91
  br i1 %cmp.not, label %if.else60, label %if.then

if.else38:                                        ; preds = %while.body18
  %cmp16.not = icmp ult ptr %incdec.ptr26, %add.ptr
  br i1 %cmp16.not, label %while.body18, label %if.end45, !llvm.loop !160

if.end45:                                         ; preds = %if.then, %if.else38
  %cmp19.i = icmp sgt i32 %n.tr95, 0
  br i1 %cmp19.i, label %for.body.lr.ph.i, label %if.then48.thread

for.body.lr.ph.i:                                 ; preds = %if.end45
  %call5.i = tail call ptr @__ctype_b_loc() #38
  %4 = load ptr, ptr %call5.i, align 8, !tbaa !145
  br label %for.body.i.outer

for.body.i.outer:                                 ; preds = %if.end42.i.thread, %for.body.lr.ph.i
  %s.addr.025.i.ph = phi ptr [ %incdec.ptr.i, %if.end42.i.thread ], [ %word.tr94, %for.body.lr.ph.i ]
  %i.024.i.ph = phi i32 [ %inc.i57, %if.end42.i.thread ], [ 0, %for.body.lr.ph.i ]
  %last.023.i.ph = phi i32 [ %conv19.i, %if.end42.i.thread ], [ 0, %for.body.lr.ph.i ]
  %5 = phi i1 [ false, %if.end42.i.thread ], [ true, %for.body.lr.ph.i ]
  %seen_upper.021.i.ph = phi i32 [ %seen_upper.1.i, %if.end42.i.thread ], [ 0, %for.body.lr.ph.i ]
  %seen_lower.020.i.ph = phi i32 [ %seen_lower.1.i, %if.end42.i.thread ], [ 0, %for.body.lr.ph.i ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.outer, %if.end42.i
  %s.addr.025.i = phi ptr [ %incdec.ptr.i, %if.end42.i ], [ %s.addr.025.i.ph, %for.body.i.outer ]
  %i.024.i = phi i32 [ %inc.i, %if.end42.i ], [ %i.024.i.ph, %for.body.i.outer ]
  %last.023.i = phi i32 [ %conv19.i, %if.end42.i ], [ %last.023.i.ph, %for.body.i.outer ]
  %seen_upper.021.i = phi i32 [ %seen_upper.1.i, %if.end42.i ], [ %seen_upper.021.i.ph, %for.body.i.outer ]
  %seen_lower.020.i = phi i32 [ %seen_lower.1.i, %if.end42.i ], [ %seen_lower.020.i.ph, %for.body.i.outer ]
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %s.addr.025.i, i64 1
  %6 = load i8, ptr %s.addr.025.i, align 1, !tbaa !5
  %tobool.i = icmp ne i32 %i.024.i, 0
  %cmp1.i = icmp ne i32 %last.023.i, 45
  %or.cond.i = and i1 %tobool.i, %cmp1.i
  %idxprom.i = sext i8 %6 to i64
  %arrayidx.i = getelementptr inbounds i16, ptr %4, i64 %idxprom.i
  %7 = load i16, ptr %arrayidx.i, align 2, !tbaa !18
  %8 = and i16 %7, 256
  %tobool4.not.i = icmp eq i16 %8, 0
  %spec.select.i = select i1 %tobool4.not.i, i32 %seen_upper.021.i, i32 1
  %seen_upper.1.i = select i1 %or.cond.i, i32 %spec.select.i, i32 %seen_upper.021.i
  %9 = and i16 %7, 512
  %tobool11.not.i = icmp eq i16 %9, 0
  br i1 %tobool11.not.i, label %if.end18.i, label %if.then12.i

if.then12.i:                                      ; preds = %for.body.i
  %call13.i = tail call ptr @__ctype_toupper_loc() #38
  %10 = load ptr, ptr %call13.i, align 8, !tbaa !150
  %arrayidx16.i = getelementptr inbounds i32, ptr %10, i64 %idxprom.i
  %11 = load i32, ptr %arrayidx16.i, align 4, !tbaa !10
  %conv17.i = trunc i32 %11 to i8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then12.i, %for.body.i
  %seen_lower.1.i = phi i32 [ 1, %if.then12.i ], [ %seen_lower.020.i, %for.body.i ]
  %ch.0.i = phi i8 [ %conv17.i, %if.then12.i ], [ %6, %for.body.i ]
  %conv19.i = sext i8 %ch.0.i to i32
  %12 = add i8 %ch.0.i, -65
  %13 = tail call i8 @llvm.fshl.i8(i8 %12, i8 %12, i8 7)
  switch i8 %13, label %if.end42.i [
    i8 12, label %if.end42.i.thread
    i8 10, label %if.end42.i.thread
    i8 7, label %if.end42.i.thread
    i8 4, label %if.end42.i.thread
    i8 2, label %if.end42.i.thread
    i8 0, label %if.end42.i.thread
  ]

if.end42.i:                                       ; preds = %if.end18.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %n.tr95
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i, !llvm.loop !152

if.end42.i.thread:                                ; preds = %if.end18.i, %if.end18.i, %if.end18.i, %if.end18.i, %if.end18.i, %if.end18.i
  %inc.i57 = add nuw nsw i32 %i.024.i, 1
  %exitcond.not.i58 = icmp eq i32 %inc.i57, %n.tr95
  br i1 %exitcond.not.i58, label %suspect_word.exit, label %for.body.i.outer, !llvm.loop !152

for.end.i:                                        ; preds = %if.end42.i
  br i1 %5, label %if.then48, label %suspect_word.exit

suspect_word.exit:                                ; preds = %if.end42.i.thread, %for.end.i
  %.not.i = icmp ne i32 %seen_lower.1.i, 0
  %14 = icmp eq i32 %seen_upper.1.i, 0
  %narrow.i.not = select i1 %14, i1 %.not.i, i1 false
  br i1 %narrow.i.not, label %if.else50, label %if.then48

if.then48.thread:                                 ; preds = %while.cond15.preheader, %if.end45
  %15 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call.i131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.2.856, i32 noundef %n.tr95, ptr noundef nonnull %word.tr94) #35
  br label %cleanup83

if.then48:                                        ; preds = %for.end.i, %suspect_word.exit
  %16 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.2.856, i32 noundef %n.tr95, ptr noundef nonnull %word.tr94) #35
  br label %while.body.i

while.body.i:                                     ; preds = %if.then48, %while.body.i
  %nph.0.i102 = phi i32 [ %add.i, %while.body.i ], [ 0, %if.then48 ]
  %word.addr.0.i101 = phi ptr [ %incdec.ptr.i49, %while.body.i ], [ %word.tr94, %if.then48 ]
  %n.addr.0.i100 = phi i32 [ %dec.i, %while.body.i ], [ %n.tr95, %if.then48 ]
  %dec.i = add nsw i32 %n.addr.0.i100, -1
  %incdec.ptr.i49 = getelementptr inbounds nuw i8, ptr %word.addr.0.i101, i64 1
  %17 = load i8, ptr %word.addr.0.i101, align 1, !tbaa !5
  %18 = and i8 %17, 127
  %idxprom.i50 = zext nneg i8 %18 to i64
  %arrayidx.i51 = getelementptr inbounds nuw [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom.i50
  %19 = load ptr, ptr %arrayidx.i51, align 8, !tbaa !12
  %call1.i = tail call i32 @xlate_string(ptr noundef %19, ptr noundef %phone)
  %add.i = add i32 %call1.i, %nph.0.i102
  %cmp.i = icmp sgt i32 %n.addr.0.i100, 1
  br i1 %cmp.i, label %while.body.i, label %cleanup83, !llvm.loop !144

if.else50:                                        ; preds = %suspect_word.exit
  %tobool51 = icmp ne ptr %1, null
  %20 = load i32, ptr @verbose, align 4
  %tobool53 = icmp ne i32 %20, 0
  %or.cond = select i1 %tobool51, i1 true, i1 %tobool53
  br i1 %or.cond, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.else50
  %21 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %21, ptr noundef nonnull @.str.15.860, ptr noundef %1, i32 noundef %n.tr95, ptr noundef nonnull %word.tr94) #35
  br label %if.end56

if.end56:                                         ; preds = %if.else50, %if.then54
  %call57 = tail call i32 @NRL(ptr noundef nonnull %word.tr94, i32 noundef %n.tr95, ptr noundef %phone)
  br label %if.end80

if.else60:                                        ; preds = %cleanup42.thread, %entry
  %accumulator.tr.lcssa = phi i32 [ 0, %entry ], [ %add37, %cleanup42.thread ]
  %word.tr.lcssa = phi ptr [ %word, %entry ], [ %incdec.ptr26, %cleanup42.thread ]
  %n.tr.lcssa = phi i32 [ %n, %entry ], [ %conv35, %cleanup42.thread ]
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %word.tr.lcssa, i64 1
  %22 = sext i32 %n.tr.lcssa to i64
  %23 = getelementptr i8, ptr %incdec.ptr61, i64 %22
  %arrayidx63 = getelementptr i8, ptr %23, i64 -2
  %24 = load i8, ptr %arrayidx63, align 1, !tbaa !5
  %cmp65 = icmp eq i8 %24, 93
  %spec.select.v = select i1 %cmp65, i32 -2, i32 -1
  %spec.select = add nsw i32 %spec.select.v, %n.tr.lcssa
  %cmp72104 = icmp sgt i32 %spec.select, 0
  br i1 %cmp72104, label %while.body74.lr.ph, label %if.end80

while.body74.lr.ph:                               ; preds = %if.else60
  %items.i = getelementptr inbounds nuw i8, ptr %phone, i64 8
  br label %while.body74

while.body74:                                     ; preds = %while.body74.lr.ph, %while.body74
  %nph.6107 = phi i32 [ 0, %while.body74.lr.ph ], [ %inc78, %while.body74 ]
  %word.addr.0106 = phi ptr [ %incdec.ptr61, %while.body74.lr.ph ], [ %incdec.ptr75, %while.body74 ]
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %word.addr.0106, i64 1
  %25 = load i8, ptr %word.addr.0106, align 1, !tbaa !5
  %26 = load i32, ptr %items.i, align 8, !tbaa !26
  %call.i.i = tail call ptr @Darray_find(ptr noundef nonnull %phone, i32 noundef %26)
  store i8 %25, ptr %call.i.i, align 1, !tbaa !5
  %inc78 = add nuw nsw i32 %nph.6107, 1
  %exitcond.not = icmp eq i32 %inc78, %spec.select
  br i1 %exitcond.not, label %if.end80, label %while.body74, !llvm.loop !161

if.end80:                                         ; preds = %while.body74, %if.else60, %if.end56
  %accumulator.tr83 = phi i32 [ %accumulator.tr93, %if.end56 ], [ %accumulator.tr.lcssa, %if.else60 ], [ %accumulator.tr.lcssa, %while.body74 ]
  %nph.5 = phi i32 [ %call57, %if.end56 ], [ 0, %if.else60 ], [ %spec.select, %while.body74 ]
  %items.i52 = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %27 = load i32, ptr %items.i52, align 8, !tbaa !26
  %call.i.i53 = tail call ptr @Darray_find(ptr noundef nonnull %phone, i32 noundef %27)
  store i8 32, ptr %call.i.i53, align 1, !tbaa !5
  %add82 = add i32 %nph.5, 1
  br label %cleanup83

cleanup83:                                        ; preds = %while.body.i, %if.then48.thread, %if.end80
  %accumulator.tr82 = phi i32 [ %accumulator.tr83, %if.end80 ], [ %accumulator.tr93, %if.then48.thread ], [ %accumulator.tr93, %while.body.i ]
  %retval.2 = phi i32 [ %add82, %if.end80 ], [ 0, %if.then48.thread ], [ %add.i, %while.body.i ]
  %accumulator.ret.tr = add i32 %retval.2, %accumulator.tr82
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind uwtable
define dso_local void @say_phones(ptr noundef %phone, i32 noundef %len, i32 noundef %verbose) local_unnamed_addr #5 {
entry:
  %elm = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %elm) #31
  %esize.i = getelementptr inbounds nuw i8, ptr %elm, i64 16
  store i16 1, ptr %esize.i, align 8, !tbaa !27
  %conv1.i = trunc i32 %len to i16
  %get2.i = getelementptr inbounds nuw i8, ptr %elm, i64 18
  store i16 %conv1.i, ptr %get2.i, align 2, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %elm, i8 0, i64 16, i1 false)
  %call = call i32 @phone_to_elm(ptr noundef %phone, i32 noundef %len, ptr noundef nonnull %elm)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end17, label %if.then

if.then:                                          ; preds = %entry
  %0 = load i64, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 40), align 8, !tbaa !39
  %1 = trunc i64 %0 to i32
  %conv1 = mul i32 %call, %1
  %conv2 = zext i32 %conv1 to i64
  %mul3 = shl nuw nsw i64 %conv2, 1
  %call4 = tail call noalias ptr @malloc(i64 noundef %mul3) #34
  %tobool5.not = icmp eq i32 %verbose, 0
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3.859, i32 noundef %len, ptr noundef %phone) #35
  br label %if.end

if.end:                                           ; preds = %if.then6, %if.then
  %tobool8.not = icmp eq ptr %call4, null
  br i1 %tobool8.not, label %if.end17, label %if.then9

if.then9:                                         ; preds = %if.end
  %items = getelementptr inbounds nuw i8, ptr %elm, i64 8
  %3 = load i32, ptr %items, align 8, !tbaa !26
  %alloc.i = getelementptr inbounds nuw i8, ptr %elm, i64 12
  %4 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.not.i = icmp eq i32 %4, 0
  br i1 %cmp.not.i, label %if.then.thread.i.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then9
  %cmp1.not.i = icmp eq i32 %3, 0
  br i1 %cmp1.not.i, label %if.then.i.i, label %land.lhs.true.i.return.sink.split.i_crit_edge

land.lhs.true.i.return.sink.split.i_crit_edge:    ; preds = %land.lhs.true.i
  %.pre9 = load ptr, ptr %elm, align 8, !tbaa !23
  br label %darray_find.858.exit

if.then.i.i:                                      ; preds = %land.lhs.true.i
  %5 = load i16, ptr %esize.i, align 8, !tbaa !27
  %tobool.not.i.i = icmp eq i16 %5, 0
  br i1 %tobool.not.i.i, label %if.then4.i.i, label %if.end39.i.thread.i

if.then.thread.i.i:                               ; preds = %if.then9
  %6 = load i16, ptr %esize.i, align 8, !tbaa !27
  %conv38.i.i = zext i16 %6 to i32
  %mul39.i.i = mul i32 %3, %conv38.i.i
  %tobool.not40.i.i = icmp eq i16 %6, 0
  br i1 %tobool.not40.i.i, label %if.then4.i.i, label %if.then8.i.i

if.then4.i.i:                                     ; preds = %if.then.thread.i.i, %if.then.i.i
  tail call void @abort() #36
  unreachable

if.then8.i.i:                                     ; preds = %if.then.thread.i.i
  %7 = load i16, ptr %get2.i, align 2, !tbaa !28
  %narrow.i.i = tail call i16 @llvm.umax.i16(i16 %7, i16 1)
  %spec.select.i.i = zext i16 %narrow.i.i to i32
  %mul16.i.i = mul nuw i32 %spec.select.i.i, %conv38.i.i
  %conv17.i.i = zext i32 %mul16.i.i to i64
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %conv17.i.i) #34
  %tobool18.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.not.i.i, label %darray_find.858.exit, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.then8.i.i
  %tobool20.not.i.i = icmp eq i32 %mul39.i.i, 0
  %.pr.i.i = load ptr, ptr %elm, align 8, !tbaa !23
  br i1 %tobool20.not.i.i, label %if.end23.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  %conv22.i.i = zext i32 %mul39.i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i.i, ptr align 1 %.pr.i.i, i64 %conv22.i.i, i1 false)
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then21.i.i, %if.then19.i.i
  %tobool25.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool25.not.i.i, label %if.end39.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  tail call void @free(ptr noundef nonnull %.pr.i.i) #31
  br label %if.end39.i.i

if.end39.i.thread.i:                              ; preds = %if.then.i.i
  %.pre = load ptr, ptr %elm, align 8, !tbaa !23
  %.pre10 = zext i16 %5 to i64
  br label %if.then43.i.i

if.end39.i.i:                                     ; preds = %if.then26.i.i, %if.end23.i.i
  store ptr %call.i.i, ptr %elm, align 8, !tbaa !23
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %if.then43.i.i, label %darray_find.858.exit

if.then43.i.i:                                    ; preds = %if.end39.i.i, %if.end39.i.thread.i
  %conv45.i.i.pre-phi = phi i64 [ %conv17.i.i, %if.end39.i.i ], [ %.pre10, %if.end39.i.thread.i ]
  %9 = phi ptr [ %call.i.i, %if.end39.i.i ], [ %.pre, %if.end39.i.thread.i ]
  tail call void @llvm.memset.p0.i64(ptr align 1 %9, i8 0, i64 %conv45.i.i.pre-phi, i1 false)
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.end39.i.i, %if.then43.i.i, %land.lhs.true.i.return.sink.split.i_crit_edge, %if.then8.i.i
  %retval.0.i = phi ptr [ null, %if.then8.i.i ], [ %.pre9, %land.lhs.true.i.return.sink.split.i_crit_edge ], [ %9, %if.then43.i.i ], [ %call.i.i, %if.end39.i.i ]
  %call11 = tail call i32 @holmes(i32 noundef %3, ptr noundef %retval.0.i, i32 poison, ptr noundef nonnull %call4)
  %10 = load ptr, ptr @file_write, align 8, !tbaa !17
  %tobool12 = icmp eq ptr %10, null
  %.b = load i1, ptr @once, align 4
  %or.cond.not = select i1 %tobool12, i1 true, i1 %.b
  br i1 %or.cond.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %darray_find.858.exit
  tail call void %10(i32 noundef %call11, ptr noundef nonnull %call4) #31
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %darray_find.858.exit
  tail call void @free(ptr noundef nonnull %call4) #31
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.end15, %entry
  %11 = load ptr, ptr %elm, align 8, !tbaa !23
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %darray_free.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end17
  tail call void @free(ptr noundef nonnull %11) #31
  br label %darray_free.exit

darray_free.exit:                                 ; preds = %if.end17, %if.then.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %elm) #31
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #22

; Function Attrs: nofree nounwind memory(readwrite, argmem: read) uwtable
define dso_local noalias noundef ptr @concat_args(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #24 {
entry:
  %cmp15 = icmp sgt i32 %argc, 1
  br i1 %cmp15, label %for.body.preheader, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  %call432 = tail call noalias ptr @malloc(i64 noundef 0) #34
  br label %if.end19

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %argc to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %len.017 = phi i32 [ 0, %for.body.preheader ], [ %conv2, %for.body ]
  %arrayidx = getelementptr inbounds nuw ptr, ptr %argv, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %1 = trunc i64 %call to i32
  %2 = add i32 %len.017, 1
  %conv2 = add i32 %2, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !162

for.end:                                          ; preds = %for.body
  %3 = sext i32 %conv2 to i64
  %call4 = tail call noalias ptr @malloc(i64 noundef %3) #34
  %tobool.not.not = icmp eq ptr %call4, null
  br i1 %tobool.not.not, label %if.end19, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.end
  %4 = zext nneg i32 %argc to i64
  %wide.trip.count29 = zext nneg i32 %argc to i64
  br label %for.body8

for.body8:                                        ; preds = %for.body8.preheader, %while.end
  %indvars.iv26 = phi i64 [ 1, %for.body8.preheader ], [ %indvars.iv.next27, %while.end ]
  %d.024 = phi ptr [ %call4, %for.body8.preheader ], [ %d.2, %while.end ]
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %arrayidx11 = getelementptr inbounds nuw ptr, ptr %argv, i64 %indvars.iv26
  %5 = load ptr, ptr %arrayidx11, align 8, !tbaa !12
  %6 = load i8, ptr %5, align 1, !tbaa !5
  %tobool12.not18 = icmp eq i8 %6, 0
  br i1 %tobool12.not18, label %while.end, label %while.body

while.body:                                       ; preds = %for.body8, %while.body
  %7 = phi i8 [ %8, %while.body ], [ %6, %for.body8 ]
  %s.020 = phi ptr [ %incdec.ptr, %while.body ], [ %5, %for.body8 ]
  %d.119 = phi ptr [ %incdec.ptr13, %while.body ], [ %d.024, %for.body8 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.020, i64 1
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %d.119, i64 1
  store i8 %7, ptr %d.119, align 1, !tbaa !5
  %8 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool12.not = icmp eq i8 %8, 0
  br i1 %tobool12.not, label %while.end, label %while.body, !llvm.loop !163

while.end:                                        ; preds = %while.body, %for.body8
  %d.1.lcssa = phi ptr [ %d.024, %for.body8 ], [ %incdec.ptr13, %while.body ]
  %cmp14 = icmp samesign ult i64 %indvars.iv.next27, %4
  %storemerge = select i1 %cmp14, i8 32, i8 0
  %d.2.idx = zext i1 %cmp14 to i64
  %d.2 = getelementptr inbounds nuw i8, ptr %d.1.lcssa, i64 %d.2.idx
  store i8 %storemerge, ptr %d.1.lcssa, align 1, !tbaa !5
  %exitcond30.not = icmp eq i64 %indvars.iv.next27, %wide.trip.count29
  br i1 %exitcond30.not, label %if.end19, label %for.body8, !llvm.loop !164

if.end19:                                         ; preds = %while.end, %for.end.thread, %for.end
  %call435 = phi ptr [ %call432, %for.end.thread ], [ %call4, %for.end ], [ %call4, %while.end ]
  ret ptr %call435
}

; Function Attrs: nounwind uwtable
define dso_local void @say_string(ptr noundef %s) local_unnamed_addr #5 {
entry:
  %phone = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phone) #31
  %esize.i = getelementptr inbounds nuw i8, ptr %phone, i64 16
  store i16 1, ptr %esize.i, align 8, !tbaa !27
  %get2.i = getelementptr inbounds nuw i8, ptr %phone, i64 18
  store i16 128, ptr %get2.i, align 2, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %phone, i8 0, i64 16, i1 false)
  %call = call i32 @xlate_string(ptr noundef %s, ptr noundef nonnull %phone)
  %items = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %0 = load i32, ptr %items, align 8, !tbaa !26
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %alloc.i = getelementptr inbounds nuw i8, ptr %phone, i64 12
  %1 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.not.i = icmp eq i32 %1, 0
  br i1 %cmp.not.i, label %if.then.thread.i.i, label %if.then.return.sink.split.i_crit_edge

if.then.return.sink.split.i_crit_edge:            ; preds = %if.then
  %.pre = load ptr, ptr %phone, align 8, !tbaa !23
  br label %darray_find.858.exit

if.then.thread.i.i:                               ; preds = %if.then
  %2 = load i16, ptr %esize.i, align 8, !tbaa !27
  %conv38.i.i = zext i16 %2 to i32
  %mul39.i.i = mul i32 %0, %conv38.i.i
  %tobool.not40.i.i = icmp eq i16 %2, 0
  br i1 %tobool.not40.i.i, label %if.then4.i.i, label %if.then8.i.i

if.then4.i.i:                                     ; preds = %if.then.thread.i.i
  tail call void @abort() #36
  unreachable

if.then8.i.i:                                     ; preds = %if.then.thread.i.i
  %3 = load i16, ptr %get2.i, align 2, !tbaa !28
  %narrow.i.i = tail call i16 @llvm.umax.i16(i16 %3, i16 1)
  %spec.select.i.i = zext i16 %narrow.i.i to i32
  %mul16.i.i = mul nuw i32 %spec.select.i.i, %conv38.i.i
  %conv17.i.i = zext i32 %mul16.i.i to i64
  %call.i.i = tail call noalias ptr @malloc(i64 noundef %conv17.i.i) #34
  %tobool18.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.not.i.i, label %darray_find.858.exit, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.then8.i.i
  %tobool20.not.i.i = icmp eq i32 %mul39.i.i, 0
  %.pr.i.i = load ptr, ptr %phone, align 8, !tbaa !23
  br i1 %tobool20.not.i.i, label %if.end23.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then19.i.i
  %conv22.i.i = zext i32 %mul39.i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i.i, ptr align 1 %.pr.i.i, i64 %conv22.i.i, i1 false)
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then21.i.i, %if.then19.i.i
  %tobool25.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool25.not.i.i, label %if.end39.i.i, label %if.then26.i.i

if.then26.i.i:                                    ; preds = %if.end23.i.i
  tail call void @free(ptr noundef nonnull %.pr.i.i) #31
  br label %if.end39.i.i

if.end39.i.i:                                     ; preds = %if.then26.i.i, %if.end23.i.i
  store ptr %call.i.i, ptr %phone, align 8, !tbaa !23
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.end39.i.i, %if.then.return.sink.split.i_crit_edge, %if.then8.i.i
  %retval.0.i = phi ptr [ null, %if.then8.i.i ], [ %.pre, %if.then.return.sink.split.i_crit_edge ], [ %call.i.i, %if.end39.i.i ]
  %4 = load i32, ptr @verbose, align 4, !tbaa !10
  tail call void @say_phones(ptr noundef %retval.0.i, i32 noundef %0, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %darray_find.858.exit, %entry
  %5 = load ptr, ptr %phone, align 8, !tbaa !23
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %darray_free.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end
  tail call void @free(ptr noundef nonnull %5) #31
  br label %darray_free.exit

darray_free.exit:                                 ; preds = %if.end, %if.then.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phone) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @darray_fget(ptr noundef captures(none) %f, ptr noundef captures(none) %p) local_unnamed_addr #5 {
entry:
  %items.i = getelementptr inbounds nuw i8, ptr %p, i64 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call i32 @fgetc(ptr noundef %f)
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %0 = load i32, ptr %items.i, align 8, !tbaa !26
  %call.i.i = tail call ptr @Darray_find(ptr noundef nonnull %p, i32 noundef %0)
  %conv.i = trunc i32 %call to i8
  store i8 %conv.i, ptr %call.i.i, align 1, !tbaa !5
  %cmp2 = icmp eq i32 %call, 10
  br i1 %cmp2, label %while.end, label %while.cond, !llvm.loop !165

while.end:                                        ; preds = %while.body, %while.cond
  %1 = load i32, ptr %items.i, align 8, !tbaa !26
  %call.i.i5 = tail call ptr @Darray_find(ptr noundef nonnull %p, i32 noundef %1)
  store i8 0, ptr %call.i.i5, align 1, !tbaa !5
  %2 = load i32, ptr %items.i, align 8, !tbaa !26
  %sub = add i32 %2, -1
  ret i32 %sub
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @say_file(ptr noundef captures(none) %f) local_unnamed_addr #5 {
entry:
  %loop_wrap2 = alloca i64, align 8
  %phone = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loop_wrap2) #31
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str.5.861, ptr noundef nonnull @.str.6.862)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !21
  %1 = tail call i64 @fwrite(ptr nonnull @.str.7.863, i64 28, i64 1, ptr %0) #33
  tail call void @exit(i32 noundef 1) #37
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.8.864, ptr noundef nonnull %loop_wrap2) #31
  %call3 = call i32 @fclose(ptr noundef nonnull %call)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phone) #31
  %esize.i4 = getelementptr inbounds nuw i8, ptr %phone, i64 16
  store i16 1, ptr %esize.i4, align 8, !tbaa !27
  %get2.i5 = getelementptr inbounds nuw i8, ptr %phone, i64 18
  store i16 128, ptr %get2.i5, align 2, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %phone, i8 0, i64 16, i1 false)
  br label %while.cond

while.cond:                                       ; preds = %darray_find.858.exit, %if.end
  %line.sroa.0.0 = phi ptr [ null, %if.end ], [ %line.sroa.0.5, %darray_find.858.exit ]
  %line.sroa.32.0 = phi i32 [ 0, %if.end ], [ %line.sroa.32.5, %darray_find.858.exit ]
  %nlines.0 = phi i64 [ 0, %if.end ], [ %inc, %darray_find.858.exit ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.then43.i106, %while.cond
  %line.sroa.17.1 = phi i32 [ 0, %while.cond ], [ %add46.i111, %if.then43.i106 ]
  %line.sroa.0.1 = phi ptr [ %line.sroa.0.0, %while.cond ], [ %line.sroa.0.9, %if.then43.i106 ]
  %line.sroa.32.1 = phi i32 [ %line.sroa.32.0, %while.cond ], [ %line.sroa.32.9, %if.then43.i106 ]
  %call.i = call i32 @fgetc(ptr noundef %f)
  %cmp.not.i = icmp eq i32 %call.i, -1
  br i1 %cmp.not.i, label %darray_fget.exit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %cmp.not.i75 = icmp ult i32 %line.sroa.17.1, %line.sroa.32.1
  br i1 %cmp.not.i75, label %if.else34.i125, label %if.then8.i82

if.then8.i82:                                     ; preds = %while.body.i
  %add13.i86 = add i32 %line.sroa.17.1, 128
  %conv17.i88 = zext i32 %add13.i86 to i64
  %call.i89 = call noalias ptr @malloc(i64 noundef %conv17.i88) #34
  %tobool18.not.not.i90 = icmp ne ptr %call.i89, null
  call void @llvm.assume(i1 %tobool18.not.not.i90)
  %tobool20.not.i92 = icmp eq i32 %line.sroa.17.1, 0
  br i1 %tobool20.not.i92, label %if.end23.i96, label %if.then21.i94

if.then21.i94:                                    ; preds = %if.then8.i82
  %conv22.i95 = zext i32 %line.sroa.17.1 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i89, ptr align 1 %line.sroa.0.1, i64 %conv22.i95, i1 false)
  br label %if.end23.i96

if.end23.i96:                                     ; preds = %if.then21.i94, %if.then8.i82
  %tobool25.not.i97 = icmp eq ptr %line.sroa.0.1, null
  br i1 %tobool25.not.i97, label %if.then43.i106, label %if.then26.i98

if.then26.i98:                                    ; preds = %if.end23.i96
  call void @free(ptr noundef nonnull %line.sroa.0.1) #31
  br label %if.then43.i106

if.else34.i125:                                   ; preds = %while.body.i
  %add35.i128 = add nuw i32 %line.sroa.17.1, 1
  br label %if.then43.i106

if.then43.i106:                                   ; preds = %if.else34.i125, %if.then26.i98, %if.end23.i96
  %line.sroa.0.9 = phi ptr [ %line.sroa.0.1, %if.else34.i125 ], [ %call.i89, %if.then26.i98 ], [ %call.i89, %if.end23.i96 ]
  %line.sroa.32.9 = phi i32 [ %line.sroa.32.1, %if.else34.i125 ], [ %add13.i86, %if.then26.i98 ], [ %add13.i86, %if.end23.i96 ]
  %nsize.0.i104 = phi i32 [ %add35.i128, %if.else34.i125 ], [ %add13.i86, %if.then26.i98 ], [ %add13.i86, %if.end23.i96 ]
  %idx.ext.i107 = zext i32 %line.sroa.17.1 to i64
  %add.ptr.i108 = getelementptr inbounds nuw i8, ptr %line.sroa.0.9, i64 %idx.ext.i107
  %sub.i109 = sub i32 %nsize.0.i104, %line.sroa.17.1
  %conv45.i110 = zext i32 %sub.i109 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.i108, i8 0, i64 %conv45.i110, i1 false)
  %add46.i111 = add i32 %line.sroa.17.1, 1
  %conv.i.i = trunc i32 %call.i to i8
  store i8 %conv.i.i, ptr %add.ptr.i108, align 1, !tbaa !5
  %cmp2.i = icmp eq i32 %call.i, 10
  br i1 %cmp2.i, label %darray_fget.exit, label %while.cond.i, !llvm.loop !165

darray_fget.exit:                                 ; preds = %while.cond.i, %if.then43.i106
  %line.sroa.17.2 = phi i32 [ %line.sroa.17.1, %while.cond.i ], [ %add46.i111, %if.then43.i106 ]
  %line.sroa.0.2 = phi ptr [ %line.sroa.0.1, %while.cond.i ], [ %line.sroa.0.9, %if.then43.i106 ]
  %line.sroa.32.2 = phi i32 [ %line.sroa.32.1, %while.cond.i ], [ %line.sroa.32.9, %if.then43.i106 ]
  %cmp.not.i65 = icmp ult i32 %line.sroa.17.2, %line.sroa.32.2
  br i1 %cmp.not.i65, label %if.else34.i, label %if.then8.i

if.then8.i:                                       ; preds = %darray_fget.exit
  %add13.i = add i32 %line.sroa.17.2, 128
  %conv17.i = zext i32 %add13.i to i64
  %call.i67 = call noalias ptr @malloc(i64 noundef %conv17.i) #34
  %tobool18.not.not.i = icmp ne ptr %call.i67, null
  call void @llvm.assume(i1 %tobool18.not.not.i)
  %tobool20.not.i = icmp eq i32 %line.sroa.17.2, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %if.then21.i

if.then21.i:                                      ; preds = %if.then8.i
  %conv22.i = zext i32 %line.sroa.17.2 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i67, ptr align 1 %line.sroa.0.2, i64 %conv22.i, i1 false)
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then21.i, %if.then8.i
  %tobool25.not.i = icmp eq ptr %line.sroa.0.2, null
  br i1 %tobool25.not.i, label %if.then43.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @free(ptr noundef nonnull %line.sroa.0.2) #31
  br label %if.then43.i

if.else34.i:                                      ; preds = %darray_fget.exit
  %add35.i = add nuw i32 %line.sroa.17.2, 1
  br label %if.then43.i

if.then43.i:                                      ; preds = %if.else34.i, %if.then26.i, %if.end23.i
  %line.sroa.0.6 = phi ptr [ %line.sroa.0.2, %if.else34.i ], [ %call.i67, %if.then26.i ], [ %call.i67, %if.end23.i ]
  %line.sroa.32.6 = phi i32 [ %line.sroa.32.2, %if.else34.i ], [ %add13.i, %if.then26.i ], [ %add13.i, %if.end23.i ]
  %nsize.0.i = phi i32 [ %add35.i, %if.else34.i ], [ %add13.i, %if.then26.i ], [ %add13.i, %if.end23.i ]
  %idx.ext.i = zext i32 %line.sroa.17.2 to i64
  %add.ptr.i = getelementptr inbounds nuw i8, ptr %line.sroa.0.6, i64 %idx.ext.i
  %sub.i69 = sub i32 %nsize.0.i, %line.sroa.17.2
  %conv45.i = zext i32 %sub.i69 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.i, i8 0, i64 %conv45.i, i1 false)
  %add46.i = add i32 %line.sroa.17.2, 1
  store i8 0, ptr %add.ptr.i, align 1, !tbaa !5
  %tobool = icmp ne i32 %line.sroa.17.2, 0
  %cmp5 = icmp samesign ult i64 %nlines.0, 500
  %2 = select i1 %tobool, i1 %cmp5, i1 false
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %if.then43.i
  %inc = add nuw nsw i64 %nlines.0, 1
  %cmp.not.i6 = icmp eq i32 %line.sroa.32.6, 0
  br i1 %cmp.not.i6, label %if.then8.i.i, label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %while.body
  %cmp1.not.i = icmp eq i32 %add46.i, 0
  br i1 %cmp1.not.i, label %if.then43.i.i, label %darray_find.858.exit

if.then8.i.i:                                     ; preds = %while.body
  %call.i.i = call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #34
  %tobool18.not.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool18.not.not.i.i, label %darray_find.858.exit, label %if.then19.i.i

if.then19.i.i:                                    ; preds = %if.then8.i.i
  %tobool20.not.i.i = icmp eq i32 %add46.i, 0
  br i1 %tobool20.not.i.i, label %if.end39.i.i.thread, label %if.end39.i.i

if.end39.i.i.thread:                              ; preds = %if.then19.i.i
  call void @free(ptr noundef nonnull %line.sroa.0.6) #31
  br label %if.then43.i.i

if.end39.i.i:                                     ; preds = %if.then19.i.i
  %conv22.i.i = zext i32 %add46.i to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i.i, ptr nonnull align 1 %line.sroa.0.6, i64 %conv22.i.i, i1 false)
  call void @free(ptr noundef nonnull %line.sroa.0.6) #31
  br label %darray_find.858.exit

if.then43.i.i:                                    ; preds = %if.end39.i.i.thread, %land.lhs.true.i
  %line.sroa.0.4 = phi ptr [ %line.sroa.0.6, %land.lhs.true.i ], [ %call.i.i, %if.end39.i.i.thread ]
  %line.sroa.32.4 = phi i32 [ %line.sroa.32.6, %land.lhs.true.i ], [ 128, %if.end39.i.i.thread ]
  %nsize.0.i17.i = phi i64 [ 1, %land.lhs.true.i ], [ 128, %if.end39.i.i.thread ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %line.sroa.0.4, i8 0, i64 %nsize.0.i17.i, i1 false)
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.end39.i.i, %land.lhs.true.i, %if.then43.i.i, %if.then8.i.i
  %line.sroa.0.5 = phi ptr [ %line.sroa.0.6, %if.then8.i.i ], [ %line.sroa.0.4, %if.then43.i.i ], [ %call.i.i, %if.end39.i.i ], [ %line.sroa.0.6, %land.lhs.true.i ]
  %line.sroa.32.5 = phi i32 [ 0, %if.then8.i.i ], [ %line.sroa.32.4, %if.then43.i.i ], [ 128, %if.end39.i.i ], [ %line.sroa.32.6, %land.lhs.true.i ]
  %retval.0.i = phi ptr [ null, %if.then8.i.i ], [ %line.sroa.0.4, %if.then43.i.i ], [ %call.i.i, %if.end39.i.i ], [ %line.sroa.0.6, %land.lhs.true.i ]
  %call7 = call i32 @xlate_string(ptr noundef %retval.0.i, ptr noundef nonnull %phone)
  br label %while.cond, !llvm.loop !166

while.end:                                        ; preds = %if.then43.i
  %items8 = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %3 = load i32, ptr %items8, align 8, !tbaa !26
  %tobool9.not = icmp eq i32 %3, 0
  %.pre = load ptr, ptr %phone, align 8
  br i1 %tobool9.not, label %if.end15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.end
  %4 = load i64, ptr %loop_wrap2, align 8, !tbaa !15
  %cmp11166 = icmp sgt i64 %4, 0
  br i1 %cmp11166, label %for.body.lr.ph, label %if.end15.loopexit

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %alloc.i9 = getelementptr inbounds nuw i8, ptr %phone, i64 12
  %5 = load i16, ptr %esize.i4, align 8
  %.fr = freeze i16 %5
  %tobool.not.i.i19 = icmp eq i16 %.fr, 0
  %conv.i.i22 = zext i16 %.fr to i32
  %6 = load i16, ptr %get2.i5, align 2
  %narrow.i.i40 = call i16 @llvm.umax.i16(i16 %6, i16 1)
  %spec.select.i.i41 = zext i16 %narrow.i.i40 to i32
  %mul16.i.i42 = mul nuw i32 %spec.select.i.i41, %conv.i.i22
  %conv17.i.i43 = zext i32 %mul16.i.i42 to i64
  br i1 %tobool.not.i.i19, label %for.body.lr.ph.split.us, label %for.body.preheader

for.body.lr.ph.split.us:                          ; preds = %for.body.lr.ph
  %7 = load i32, ptr %alloc.i9, align 4, !tbaa !25
  %cmp.not.i10.us = icmp eq i32 %7, 0
  br i1 %cmp.not.i10.us, label %if.then4.i.i31, label %for.body.us.us211

for.body.us.us211:                                ; preds = %for.body.lr.ph.split.us, %for.body.us.us211
  %loop_wrap1.0168.us.us212 = phi i64 [ %inc14.us.us, %for.body.us.us211 ], [ 0, %for.body.lr.ph.split.us ]
  %8 = load i32, ptr @verbose, align 4, !tbaa !10
  call void @say_phones(ptr noundef %.pre, i32 noundef %3, i32 noundef %8)
  store i1 true, ptr @once, align 4
  %inc14.us.us = add nuw nsw i64 %loop_wrap1.0168.us.us212, 1
  %9 = load i64, ptr %loop_wrap2, align 8, !tbaa !15
  %cmp11.us.us = icmp slt i64 %inc14.us.us, %9
  br i1 %cmp11.us.us, label %for.body.us.us211, label %if.end15.loopexit, !llvm.loop !167

for.body.preheader:                               ; preds = %for.body.lr.ph
  %.pre229 = zext i16 %.fr to i64
  br label %for.body

for.body:                                         ; preds = %for.body.preheader, %darray_find.858.exit57
  %loop_wrap1.0168 = phi i64 [ %inc14, %darray_find.858.exit57 ], [ 0, %for.body.preheader ]
  %10 = phi i32 [ %13, %darray_find.858.exit57 ], [ %3, %for.body.preheader ]
  %call.i.i44164167 = phi ptr [ %call.i.i44161, %darray_find.858.exit57 ], [ %.pre, %for.body.preheader ]
  %11 = load i32, ptr %alloc.i9, align 4, !tbaa !25
  %cmp.not.i10 = icmp eq i32 %11, 0
  br i1 %cmp.not.i10, label %if.then.thread.i.i32, label %land.lhs.true.i13

land.lhs.true.i13:                                ; preds = %for.body
  %cmp1.not.i14 = icmp eq i32 %10, 0
  br i1 %cmp1.not.i14, label %if.then43.i.i23, label %darray_find.858.exit57

if.then.thread.i.i32:                             ; preds = %for.body
  %mul39.i.i36 = mul i32 %10, %conv.i.i22
  %call.i.i44 = call noalias ptr @malloc(i64 noundef %conv17.i.i43) #34
  %tobool18.not.not.i.i45 = icmp eq ptr %call.i.i44, null
  br i1 %tobool18.not.not.i.i45, label %darray_find.858.exit57, label %if.then19.i.i46

if.then4.i.i31:                                   ; preds = %for.body.lr.ph.split.us
  call void @abort() #36
  unreachable

if.then19.i.i46:                                  ; preds = %if.then.thread.i.i32
  %tobool20.not.i.i47 = icmp eq i32 %mul39.i.i36, 0
  br i1 %tobool20.not.i.i47, label %if.end23.i.i51, label %if.then21.i.i49

if.then21.i.i49:                                  ; preds = %if.then19.i.i46
  %conv22.i.i50 = zext i32 %mul39.i.i36 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i.i44, ptr align 1 %call.i.i44164167, i64 %conv22.i.i50, i1 false)
  br label %if.end23.i.i51

if.end23.i.i51:                                   ; preds = %if.then21.i.i49, %if.then19.i.i46
  %tobool25.not.i.i52 = icmp eq ptr %call.i.i44164167, null
  br i1 %tobool25.not.i.i52, label %if.end39.i.i55, label %if.then26.i.i53

if.then26.i.i53:                                  ; preds = %if.end23.i.i51
  call void @free(ptr noundef nonnull %call.i.i44164167) #31
  br label %if.end39.i.i55

if.end39.i.i55:                                   ; preds = %if.then26.i.i53, %if.end23.i.i51
  store i32 %spec.select.i.i41, ptr %alloc.i9, align 4, !tbaa !25
  %12 = icmp eq i32 %10, 0
  br i1 %12, label %if.then43.i.i23, label %darray_find.858.exit57

if.then43.i.i23:                                  ; preds = %land.lhs.true.i13, %if.end39.i.i55
  %conv45.i.i30.pre-phi = phi i64 [ %conv17.i.i43, %if.end39.i.i55 ], [ %.pre229, %land.lhs.true.i13 ]
  %call.i.i44163 = phi ptr [ %call.i.i44, %if.end39.i.i55 ], [ %call.i.i44164167, %land.lhs.true.i13 ]
  call void @llvm.memset.p0.i64(ptr align 1 %call.i.i44163, i8 0, i64 %conv45.i.i30.pre-phi, i1 false)
  br label %darray_find.858.exit57

darray_find.858.exit57:                           ; preds = %land.lhs.true.i13, %if.end39.i.i55, %if.then43.i.i23, %if.then.thread.i.i32
  %call.i.i44161 = phi ptr [ %call.i.i44164167, %if.then.thread.i.i32 ], [ %call.i.i44163, %if.then43.i.i23 ], [ %call.i.i44, %if.end39.i.i55 ], [ %call.i.i44164167, %land.lhs.true.i13 ]
  %13 = phi i32 [ %10, %if.then.thread.i.i32 ], [ 1, %if.then43.i.i23 ], [ %10, %if.end39.i.i55 ], [ %10, %land.lhs.true.i13 ]
  %retval.0.i16 = phi ptr [ null, %if.then.thread.i.i32 ], [ %call.i.i44163, %if.then43.i.i23 ], [ %call.i.i44, %if.end39.i.i55 ], [ %call.i.i44164167, %land.lhs.true.i13 ]
  %14 = load i32, ptr @verbose, align 4, !tbaa !10
  call void @say_phones(ptr noundef %retval.0.i16, i32 noundef %13, i32 noundef %14)
  store i1 true, ptr @once, align 4
  %inc14 = add nuw nsw i64 %loop_wrap1.0168, 1
  %15 = load i64, ptr %loop_wrap2, align 8, !tbaa !15
  %cmp11 = icmp slt i64 %inc14, %15
  br i1 %cmp11, label %for.body, label %if.end15.loopexit, !llvm.loop !167

if.end15.loopexit:                                ; preds = %darray_find.858.exit57, %for.body.us.us211, %for.cond.preheader
  %call.i.i44164.lcssa = phi ptr [ %.pre, %for.cond.preheader ], [ %.pre, %for.body.us.us211 ], [ %call.i.i44161, %darray_find.858.exit57 ]
  %.lcssa = phi i32 [ %3, %for.cond.preheader ], [ %3, %for.body.us.us211 ], [ %13, %darray_find.858.exit57 ]
  store i32 %.lcssa, ptr %items8, align 8
  store ptr %call.i.i44164.lcssa, ptr %phone, align 8
  br label %if.end15

if.end15:                                         ; preds = %while.end, %if.end15.loopexit
  %16 = phi ptr [ %call.i.i44164.lcssa, %if.end15.loopexit ], [ %.pre, %while.end ]
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %darray_free.exit, label %if.then.i

if.then.i:                                        ; preds = %if.end15
  call void @free(ptr noundef nonnull %16) #31
  store ptr null, ptr %phone, align 8, !tbaa !23
  br label %darray_free.exit

darray_free.exit:                                 ; preds = %if.end15, %if.then.i
  %alloc.i58 = getelementptr inbounds nuw i8, ptr %phone, i64 12
  store i32 0, ptr %alloc.i58, align 4, !tbaa !25
  store i32 0, ptr %items8, align 8, !tbaa !26
  %tobool.not.i59 = icmp eq ptr %line.sroa.0.6, null
  br i1 %tobool.not.i59, label %darray_free.exit63, label %if.then.i60

if.then.i60:                                      ; preds = %darray_free.exit
  call void @free(ptr noundef nonnull %line.sroa.0.6) #31
  br label %darray_free.exit63

darray_free.exit63:                               ; preds = %darray_free.exit, %if.then.i60
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phone) #31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loop_wrap2) #31
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef captures(none) %argv, ptr noundef readnone captures(none) %env) local_unnamed_addr #5 {
entry:
  %dummy.i = alloca i32, align 4
  %0 = load ptr, ptr %argv, align 8, !tbaa !12
  store ptr %0, ptr @program, align 8, !tbaa !12
  %call = tail call i32 @audio_init(i32 noundef %argc, ptr noundef nonnull %argv)
  %call1 = tail call i32 @init_synth(i32 noundef %call, ptr noundef nonnull %argv)
  %call2 = tail call i32 @init_holmes(i32 noundef %call1, ptr noundef nonnull %argv)
  %call4 = tail call i32 @file_init(i32 noundef %call2, ptr noundef nonnull %argv)
  %call5 = tail call i32 (ptr, i32, ptr, ...) @getargs(ptr noundef nonnull @.str.9.865, i32 noundef %call4, ptr noundef nonnull %argv, ptr noundef nonnull @.str.10.866, ptr noundef null, ptr noundef nonnull @verbose, ptr noundef nonnull @.str.11.867, ptr noundef null)
  %1 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  %3 = load ptr, ptr @program, align 8, !tbaa !12
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.12.868, ptr noundef %3) #35
  %4 = load ptr, ptr @stderr, align 8, !tbaa !21
  %5 = load ptr, ptr @program, align 8, !tbaa !12
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.13.869, ptr noundef %5) #35
  %6 = load ptr, ptr @stderr, align 8, !tbaa !21
  %7 = load ptr, ptr @Revision, align 8, !tbaa !12
  %call8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.14.870, ptr noundef %7) #35
  br label %if.end15

if.else:                                          ; preds = %entry
  %cmp = icmp sgt i32 %call5, 1
  br i1 %cmp, label %for.body.preheader.i, label %if.else13

for.body.preheader.i:                             ; preds = %if.else
  %wide.trip.count.i = zext nneg i32 %call5 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i = phi i64 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i, %for.body.i ]
  %len.017.i = phi i32 [ 0, %for.body.preheader.i ], [ %conv2.i, %for.body.i ]
  %arrayidx.i = getelementptr inbounds nuw ptr, ptr %argv, i64 %indvars.iv.i
  %8 = load ptr, ptr %arrayidx.i, align 8, !tbaa !12
  %call.i = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #32
  %9 = trunc i64 %call.i to i32
  %10 = add i32 %len.017.i, 1
  %conv2.i = add i32 %10, %9
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i, !llvm.loop !162

for.end.i:                                        ; preds = %for.body.i
  %11 = sext i32 %conv2.i to i64
  %call4.i = tail call noalias ptr @malloc(i64 noundef %11) #34
  %tobool.not.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.not.i, label %if.end15, label %for.body8.i

for.body8.i:                                      ; preds = %for.end.i, %while.end.i
  %indvars.iv26.i = phi i64 [ %indvars.iv.next27.i, %while.end.i ], [ 1, %for.end.i ]
  %d.024.i = phi ptr [ %d.2.i, %while.end.i ], [ %call4.i, %for.end.i ]
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1
  %arrayidx11.i = getelementptr inbounds nuw ptr, ptr %argv, i64 %indvars.iv26.i
  %12 = load ptr, ptr %arrayidx11.i, align 8, !tbaa !12
  %13 = load i8, ptr %12, align 1, !tbaa !5
  %tobool12.not18.i = icmp eq i8 %13, 0
  br i1 %tobool12.not18.i, label %while.end.i, label %while.body.i

while.body.i:                                     ; preds = %for.body8.i, %while.body.i
  %14 = phi i8 [ %15, %while.body.i ], [ %13, %for.body8.i ]
  %s.020.i = phi ptr [ %incdec.ptr.i, %while.body.i ], [ %12, %for.body8.i ]
  %d.119.i = phi ptr [ %incdec.ptr13.i, %while.body.i ], [ %d.024.i, %for.body8.i ]
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %s.020.i, i64 1
  %incdec.ptr13.i = getelementptr inbounds nuw i8, ptr %d.119.i, i64 1
  store i8 %14, ptr %d.119.i, align 1, !tbaa !5
  %15 = load i8, ptr %incdec.ptr.i, align 1, !tbaa !5
  %tobool12.not.i = icmp eq i8 %15, 0
  br i1 %tobool12.not.i, label %while.end.i, label %while.body.i, !llvm.loop !163

while.end.i:                                      ; preds = %while.body.i, %for.body8.i
  %d.1.lcssa.i = phi ptr [ %d.024.i, %for.body8.i ], [ %incdec.ptr13.i, %while.body.i ]
  %cmp14.i = icmp samesign ult i64 %indvars.iv.next27.i, %wide.trip.count.i
  %storemerge.i = select i1 %cmp14.i, i8 32, i8 0
  %d.2.idx.i = zext i1 %cmp14.i to i64
  %d.2.i = getelementptr inbounds nuw i8, ptr %d.1.lcssa.i, i64 %d.2.idx.i
  store i8 %storemerge.i, ptr %d.1.lcssa.i, align 1, !tbaa !5
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count.i
  br i1 %exitcond30.not.i, label %if.then12, label %for.body8.i, !llvm.loop !164

if.then12:                                        ; preds = %while.end.i
  tail call void @say_string(ptr noundef nonnull %call4.i)
  tail call void @free(ptr noundef nonnull %call4.i) #31
  br label %if.end15

if.else13:                                        ; preds = %if.else
  %16 = load ptr, ptr @stdin, align 8, !tbaa !21
  tail call void @say_file(ptr noundef %16)
  br label %if.end15

if.end15:                                         ; preds = %for.end.i, %if.then12, %if.else13, %if.then
  %17 = load ptr, ptr @file_term, align 8, !tbaa !17
  %tobool16.not = icmp eq ptr %17, null
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  tail call void %17() #31
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy.i) #31
  %18 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %cmp.i = icmp sgt i32 %18, -1
  br i1 %cmp.i, label %if.then.i, label %audio_term.exit

if.then.i:                                        ; preds = %if.end18
  %call.i17 = call i32 (i32, i64, ...) @ioctl(i32 noundef %18, i64 noundef 20481, ptr noundef nonnull %dummy.i) #31
  %19 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %call1.i = call i32 @close(i32 noundef %19) #31
  store i32 -1, ptr @dev_fd, align 4, !tbaa !10
  br label %audio_term.exit

audio_term.exit:                                  ; preds = %if.end18, %if.then.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy.i) #31
  %20 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i18

if.then.i18:                                      ; preds = %audio_term.exit
  %call.i19 = call i32 @fclose(ptr noundef nonnull %20)
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i18, %audio_term.exit
  %21 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.end21, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  %call3.i = call i32 @fclose(ptr noundef nonnull %21)
  br label %if.end21

if.end21:                                         ; preds = %if.then2.i, %if.end.i
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_cardinal(i64 noundef %value, ptr noundef captures(none) %phone) local_unnamed_addr #5 {
entry:
  %cmp = icmp slt i64 %value, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @xlate_string(ptr noundef nonnull @.str.1.874, ptr noundef %phone)
  %sub = sub nsw i64 0, %value
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %value.addr.0 = phi i64 [ %sub, %if.then ], [ %value, %entry ]
  %nph.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %cmp6 = icmp samesign ugt i64 %value.addr.0, 999999999
  br i1 %cmp6, label %if.then7, label %if.end20

if.then7:                                         ; preds = %if.end5
  %div = udiv i64 %value.addr.0, 1000000000
  %call8 = tail call i32 @xlate_cardinal(i64 noundef %div, ptr noundef %phone)
  %add9 = add i32 %call8, %nph.0
  %call10 = tail call i32 @xlate_string(ptr noundef nonnull @.str.3.876, ptr noundef %phone)
  %add11 = add i32 %add9, %call10
  %rem = urem i64 %value.addr.0, 1000000000
  %cmp12 = icmp eq i64 %rem, 0
  br i1 %cmp12, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then7
  %cmp15 = icmp samesign ult i64 %rem, 100
  br i1 %cmp15, label %if.end37.sink.split, label %if.end20

if.end20:                                         ; preds = %if.end14, %if.end5
  %value.addr.1 = phi i64 [ %rem, %if.end14 ], [ %value.addr.0, %if.end5 ]
  %nph.1 = phi i32 [ %add11, %if.end14 ], [ %nph.0, %if.end5 ]
  %cmp21 = icmp samesign ugt i64 %value.addr.1, 999999
  br i1 %cmp21, label %if.then22, label %if.end37

if.then22:                                        ; preds = %if.end20
  %div23.lhs.trunc = trunc nuw nsw i64 %value.addr.1 to i32
  %div2383 = udiv i32 %div23.lhs.trunc, 1000000
  %div23.zext = zext nneg i32 %div2383 to i64
  %call24 = tail call i32 @xlate_cardinal(i64 noundef %div23.zext, ptr noundef %phone)
  %add25 = add i32 %call24, %nph.1
  %call26 = tail call i32 @xlate_string(ptr noundef nonnull @.str.5.878, ptr noundef %phone)
  %add27 = add i32 %add25, %call26
  %rem2884 = urem i32 %div23.lhs.trunc, 1000000
  %cmp29 = icmp eq i32 %rem2884, 0
  br i1 %cmp29, label %cleanup, label %if.end31

if.end31:                                         ; preds = %if.then22
  %rem28.zext = zext nneg i32 %rem2884 to i64
  %cmp32 = icmp samesign ult i32 %rem2884, 100
  br i1 %cmp32, label %if.end37.sink.split, label %if.end37

if.end37.sink.split:                              ; preds = %if.end31, %if.end14
  %add11.sink = phi i32 [ %add11, %if.end14 ], [ %add27, %if.end31 ]
  %value.addr.2.ph = phi i64 [ %rem, %if.end14 ], [ %rem28.zext, %if.end31 ]
  %call17 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.877, ptr noundef %phone)
  %add18 = add i32 %call17, %add11.sink
  br label %if.end37

if.end37:                                         ; preds = %if.end37.sink.split, %if.end31, %if.end20
  %value.addr.2 = phi i64 [ %rem28.zext, %if.end31 ], [ %value.addr.1, %if.end20 ], [ %value.addr.2.ph, %if.end37.sink.split ]
  %nph.2 = phi i32 [ %add27, %if.end31 ], [ %nph.1, %if.end20 ], [ %add18, %if.end37.sink.split ]
  %0 = add nsw i64 %value.addr.2, -1000
  %or.cond = icmp ult i64 %0, 100
  %cmp40 = icmp samesign ugt i64 %value.addr.2, 1999
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp40
  br i1 %or.cond1, label %if.then41, label %if.end56

if.then41:                                        ; preds = %if.end37
  %div42.lhs.trunc = trunc nuw nsw i64 %value.addr.2 to i32
  %div4277 = udiv i32 %div42.lhs.trunc, 1000
  %div42.zext = zext nneg i32 %div4277 to i64
  %call43 = tail call i32 @xlate_cardinal(i64 noundef %div42.zext, ptr noundef %phone)
  %add44 = add i32 %call43, %nph.2
  %call45 = tail call i32 @xlate_string(ptr noundef nonnull @.str.6.879, ptr noundef %phone)
  %add46 = add i32 %add44, %call45
  %rem4778 = urem i32 %div42.lhs.trunc, 1000
  %rem47.zext = zext nneg i32 %rem4778 to i64
  %cmp48 = icmp eq i32 %rem4778, 0
  br i1 %cmp48, label %cleanup, label %if.end50

if.end50:                                         ; preds = %if.then41
  %cmp51 = icmp samesign ult i32 %rem4778, 100
  br i1 %cmp51, label %if.end56.thread73, label %if.then58

if.end56.thread73:                                ; preds = %if.end50
  %call53 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.877, ptr noundef %phone)
  %add54 = add i32 %call53, %add46
  br label %if.end68

if.end56:                                         ; preds = %if.end37
  %cmp57 = icmp samesign ugt i64 %value.addr.2, 99
  br i1 %cmp57, label %if.then58, label %if.end68

if.then58:                                        ; preds = %if.end50, %if.end56
  %nph.372 = phi i32 [ %nph.2, %if.end56 ], [ %add46, %if.end50 ]
  %value.addr.371 = phi i64 [ %value.addr.2, %if.end56 ], [ %rem47.zext, %if.end50 ]
  %div59.lhs.trunc = trunc nuw nsw i64 %value.addr.371 to i16
  %div5981 = udiv i16 %div59.lhs.trunc, 100
  %div59.zext = zext nneg i16 %div5981 to i64
  %arrayidx = getelementptr inbounds nuw [20 x ptr], ptr @Cardinals, i64 0, i64 %div59.zext
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %call60 = tail call i32 @xlate_string(ptr noundef %1, ptr noundef %phone)
  %add61 = add i32 %call60, %nph.372
  %call62 = tail call i32 @xlate_string(ptr noundef nonnull @.str.7.880, ptr noundef %phone)
  %add63 = add i32 %add61, %call62
  %rem6482 = urem i16 %div59.lhs.trunc, 100
  %rem64.zext = zext nneg i16 %rem6482 to i64
  %cmp65 = icmp eq i16 %rem6482, 0
  br i1 %cmp65, label %cleanup, label %if.end68

if.end68:                                         ; preds = %if.end56.thread73, %if.then58, %if.end56
  %value.addr.4 = phi i64 [ %rem64.zext, %if.then58 ], [ %value.addr.2, %if.end56 ], [ %rem47.zext, %if.end56.thread73 ]
  %nph.4 = phi i32 [ %add63, %if.then58 ], [ %nph.2, %if.end56 ], [ %add54, %if.end56.thread73 ]
  %cmp69 = icmp samesign ugt i64 %value.addr.4, 19
  br i1 %cmp69, label %if.then70, label %if.end80

if.then70:                                        ; preds = %if.end68
  %2 = trunc i64 %value.addr.4 to i8
  %div72.lhs.trunc = add i8 %2, -20
  %div7279 = udiv i8 %div72.lhs.trunc, 10
  %div72.zext = zext nneg i8 %div7279 to i64
  %arrayidx73 = getelementptr inbounds nuw [8 x ptr], ptr @Twenties, i64 0, i64 %div72.zext
  %3 = load ptr, ptr %arrayidx73, align 8, !tbaa !12
  %call74 = tail call i32 @xlate_string(ptr noundef %3, ptr noundef %phone)
  %add75 = add i32 %call74, %nph.4
  %rem7680 = urem i8 %2, 10
  %rem76.zext = zext nneg i8 %rem7680 to i64
  %cmp77 = icmp eq i8 %rem7680, 0
  br i1 %cmp77, label %cleanup, label %if.end80

if.end80:                                         ; preds = %if.then70, %if.end68
  %value.addr.5 = phi i64 [ %rem76.zext, %if.then70 ], [ %value.addr.4, %if.end68 ]
  %nph.5 = phi i32 [ %add75, %if.then70 ], [ %nph.4, %if.end68 ]
  %arrayidx81 = getelementptr inbounds nuw [20 x ptr], ptr @Cardinals, i64 0, i64 %value.addr.5
  %4 = load ptr, ptr %arrayidx81, align 8, !tbaa !12
  %call82 = tail call i32 @xlate_string(ptr noundef %4, ptr noundef %phone)
  %add83 = add i32 %call82, %nph.5
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.then58, %if.then41, %if.then22, %if.then7, %if.end80
  %retval.0 = phi i32 [ %add83, %if.end80 ], [ %add11, %if.then7 ], [ %add27, %if.then22 ], [ %add46, %if.then41 ], [ %add63, %if.then58 ], [ %add75, %if.then70 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_ordinal(i64 noundef %value, ptr noundef captures(none) %phone) local_unnamed_addr #5 {
entry:
  %cmp = icmp slt i64 %value, 0
  br i1 %cmp, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @xlate_string(ptr noundef nonnull @.str.1.874, ptr noundef %phone)
  %sub = sub nsw i64 0, %value
  br label %if.end5

if.end5:                                          ; preds = %if.then, %entry
  %value.addr.0 = phi i64 [ %sub, %if.then ], [ %value, %entry ]
  %nph.0 = phi i32 [ %call, %if.then ], [ 0, %entry ]
  %cmp6 = icmp samesign ugt i64 %value.addr.0, 999999999
  br i1 %cmp6, label %if.then7, label %if.end22

if.then7:                                         ; preds = %if.end5
  %div = udiv i64 %value.addr.0, 1000000000
  %call8 = tail call i32 @xlate_cardinal(i64 noundef %div, ptr noundef %phone)
  %add9 = add i32 %call8, %nph.0
  %rem = urem i64 %value.addr.0, 1000000000
  %cmp10 = icmp eq i64 %rem, 0
  br i1 %cmp10, label %cleanup, label %if.end14

if.end14:                                         ; preds = %if.then7
  %call15 = tail call i32 @xlate_string(ptr noundef nonnull @.str.3.876, ptr noundef %phone)
  %add16 = add i32 %call15, %add9
  %cmp17 = icmp samesign ult i64 %rem, 100
  br i1 %cmp17, label %if.end41.sink.split, label %if.end22

if.end22:                                         ; preds = %if.end14, %if.end5
  %value.addr.1 = phi i64 [ %rem, %if.end14 ], [ %value.addr.0, %if.end5 ]
  %nph.1 = phi i32 [ %add16, %if.end14 ], [ %nph.0, %if.end5 ]
  %cmp23 = icmp samesign ugt i64 %value.addr.1, 999999
  br i1 %cmp23, label %if.then24, label %if.end41

if.then24:                                        ; preds = %if.end22
  %div25.lhs.trunc = trunc nuw nsw i64 %value.addr.1 to i32
  %div2595 = udiv i32 %div25.lhs.trunc, 1000000
  %div25.zext = zext nneg i32 %div2595 to i64
  %call26 = tail call i32 @xlate_cardinal(i64 noundef %div25.zext, ptr noundef %phone)
  %add27 = add i32 %call26, %nph.1
  %rem2896 = urem i32 %div25.lhs.trunc, 1000000
  %cmp29 = icmp eq i32 %rem2896, 0
  br i1 %cmp29, label %cleanup, label %if.end33

if.end33:                                         ; preds = %if.then24
  %rem28.zext = zext nneg i32 %rem2896 to i64
  %call34 = tail call i32 @xlate_string(ptr noundef nonnull @.str.5.878, ptr noundef %phone)
  %add35 = add i32 %call34, %add27
  %cmp36 = icmp samesign ult i32 %rem2896, 100
  br i1 %cmp36, label %if.end41.sink.split, label %if.end41

if.end41.sink.split:                              ; preds = %if.end33, %if.end14
  %add16.sink = phi i32 [ %add16, %if.end14 ], [ %add35, %if.end33 ]
  %value.addr.2.ph = phi i64 [ %rem, %if.end14 ], [ %rem28.zext, %if.end33 ]
  %call19 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.877, ptr noundef %phone)
  %add20 = add i32 %call19, %add16.sink
  br label %if.end41

if.end41:                                         ; preds = %if.end41.sink.split, %if.end33, %if.end22
  %value.addr.2 = phi i64 [ %rem28.zext, %if.end33 ], [ %value.addr.1, %if.end22 ], [ %value.addr.2.ph, %if.end41.sink.split ]
  %nph.2 = phi i32 [ %add35, %if.end33 ], [ %nph.1, %if.end22 ], [ %add20, %if.end41.sink.split ]
  %0 = add nsw i64 %value.addr.2, -1000
  %or.cond = icmp ult i64 %0, 100
  %cmp44 = icmp samesign ugt i64 %value.addr.2, 1999
  %or.cond1 = select i1 %or.cond, i1 true, i1 %cmp44
  br i1 %or.cond1, label %if.then45, label %if.end62

if.then45:                                        ; preds = %if.end41
  %div46.lhs.trunc = trunc nuw nsw i64 %value.addr.2 to i32
  %div4688 = udiv i32 %div46.lhs.trunc, 1000
  %div46.zext = zext nneg i32 %div4688 to i64
  %call47 = tail call i32 @xlate_cardinal(i64 noundef %div46.zext, ptr noundef %phone)
  %add48 = add i32 %call47, %nph.2
  %rem4989 = urem i32 %div46.lhs.trunc, 1000
  %cmp50 = icmp eq i32 %rem4989, 0
  br i1 %cmp50, label %cleanup, label %if.end54

if.end54:                                         ; preds = %if.then45
  %rem49.zext = zext nneg i32 %rem4989 to i64
  %call55 = tail call i32 @xlate_string(ptr noundef nonnull @.str.6.879, ptr noundef %phone)
  %add56 = add i32 %call55, %add48
  %cmp57 = icmp samesign ult i32 %rem4989, 100
  br i1 %cmp57, label %if.end76.sink.split, label %if.then64

if.end62:                                         ; preds = %if.end41
  %cmp63 = icmp samesign ugt i64 %value.addr.2, 99
  br i1 %cmp63, label %if.then64, label %if.end76

if.then64:                                        ; preds = %if.end54, %if.end62
  %nph.383 = phi i32 [ %nph.2, %if.end62 ], [ %add56, %if.end54 ]
  %value.addr.382 = phi i64 [ %value.addr.2, %if.end62 ], [ %rem49.zext, %if.end54 ]
  %div65.lhs.trunc = trunc nuw nsw i64 %value.addr.382 to i16
  %div6593 = udiv i16 %div65.lhs.trunc, 100
  %div65.zext = zext nneg i16 %div6593 to i64
  %arrayidx = getelementptr inbounds nuw [20 x ptr], ptr @Cardinals, i64 0, i64 %div65.zext
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %call66 = tail call i32 @xlate_string(ptr noundef %1, ptr noundef %phone)
  %add67 = add i32 %call66, %nph.383
  %rem6894 = urem i16 %div65.lhs.trunc, 100
  %cmp69 = icmp eq i16 %rem6894, 0
  br i1 %cmp69, label %cleanup, label %if.end73

if.end73:                                         ; preds = %if.then64
  %rem68.zext = zext nneg i16 %rem6894 to i64
  br label %if.end76.sink.split

if.end76.sink.split:                              ; preds = %if.end54, %if.end73
  %.str.4.877.sink = phi ptr [ @.str.7.880, %if.end73 ], [ @.str.4.877, %if.end54 ]
  %add56.sink = phi i32 [ %add67, %if.end73 ], [ %add56, %if.end54 ]
  %value.addr.4.ph = phi i64 [ %rem68.zext, %if.end73 ], [ %rem49.zext, %if.end54 ]
  %call59 = tail call i32 @xlate_string(ptr noundef nonnull %.str.4.877.sink, ptr noundef %phone)
  %add60 = add i32 %call59, %add56.sink
  br label %if.end76

if.end76:                                         ; preds = %if.end76.sink.split, %if.end62
  %value.addr.4 = phi i64 [ %value.addr.2, %if.end62 ], [ %value.addr.4.ph, %if.end76.sink.split ]
  %nph.4 = phi i32 [ %nph.2, %if.end62 ], [ %add60, %if.end76.sink.split ]
  %cmp77 = icmp samesign ugt i64 %value.addr.4, 19
  br i1 %cmp77, label %if.then78, label %if.end94

if.then78:                                        ; preds = %if.end76
  %rem79.lhs.trunc = trunc i64 %value.addr.4 to i8
  %rem7990 = urem i8 %rem79.lhs.trunc, 10
  %cmp80 = icmp eq i8 %rem7990, 0
  br i1 %cmp80, label %if.then81, label %if.end87

if.then81:                                        ; preds = %if.then78
  %div83.lhs.trunc = add i8 %rem79.lhs.trunc, -20
  %div8391 = udiv i8 %div83.lhs.trunc, 10
  %div83.zext = zext nneg i8 %div8391 to i64
  %arrayidx84 = getelementptr inbounds nuw [8 x ptr], ptr @Ord_twenties, i64 0, i64 %div83.zext
  %2 = load ptr, ptr %arrayidx84, align 8, !tbaa !12
  br label %cleanup

if.end87:                                         ; preds = %if.then78
  %rem79.zext = zext nneg i8 %rem7990 to i64
  %div89.lhs.trunc = add i8 %rem79.lhs.trunc, -20
  %div8992 = udiv i8 %div89.lhs.trunc, 10
  %div89.zext = zext nneg i8 %div8992 to i64
  %arrayidx90 = getelementptr inbounds nuw [8 x ptr], ptr @Twenties, i64 0, i64 %div89.zext
  %3 = load ptr, ptr %arrayidx90, align 8, !tbaa !12
  %call91 = tail call i32 @xlate_string(ptr noundef %3, ptr noundef %phone)
  %add92 = add i32 %call91, %nph.4
  br label %if.end94

if.end94:                                         ; preds = %if.end87, %if.end76
  %value.addr.5 = phi i64 [ %rem79.zext, %if.end87 ], [ %value.addr.4, %if.end76 ]
  %nph.5 = phi i32 [ %add92, %if.end87 ], [ %nph.4, %if.end76 ]
  %arrayidx95 = getelementptr inbounds nuw [20 x ptr], ptr @Ordinals, i64 0, i64 %value.addr.5
  %4 = load ptr, ptr %arrayidx95, align 8, !tbaa !12
  br label %cleanup

cleanup:                                          ; preds = %if.then64, %if.then45, %if.then24, %if.then7, %if.end94, %if.then81
  %.sink = phi ptr [ %4, %if.end94 ], [ %2, %if.then81 ], [ @.str.8.909, %if.then7 ], [ @.str.9.910, %if.then24 ], [ @.str.10.911, %if.then45 ], [ @.str.11.912, %if.then64 ]
  %nph.5.sink = phi i32 [ %nph.5, %if.end94 ], [ %nph.4, %if.then81 ], [ %add9, %if.then7 ], [ %add27, %if.then24 ], [ %add48, %if.then45 ], [ %add67, %if.then64 ]
  %call96 = tail call i32 @xlate_string(ptr noundef %.sink, ptr noundef %phone)
  %add97 = add i32 %call96, %nph.5.sink
  ret i32 %add97
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local range(i32 0, 2) i32 @isvowel(i32 noundef %chr) local_unnamed_addr #15 {
entry:
  %0 = add i32 %chr, -65
  %1 = tail call i32 @llvm.fshl.i32(i32 %0, i32 %0, i32 31)
  %2 = icmp ult i32 %1, 8
  %switch.maskindex = trunc i32 %1 to i8
  %switch.shifted = lshr i8 -107, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %2, i1 %switch.lobit, i1 false
  %cmp6 = icmp eq i32 %chr, 85
  %narrow = or i1 %or.cond, %cmp6
  %lor.ext = zext i1 %narrow to i32
  ret i32 %lor.ext
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @isconsonant(i32 noundef %chr) local_unnamed_addr #25 {
entry:
  %call = tail call ptr @__ctype_b_loc() #38
  %0 = load ptr, ptr %call, align 8, !tbaa !145
  %idxprom = sext i32 %chr to i64
  %arrayidx = getelementptr inbounds i16, ptr %0, i64 %idxprom
  %1 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %2 = and i16 %1, 256
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %3 = add i32 %chr, -65
  %4 = tail call i32 @llvm.fshl.i32(i32 %3, i32 %3, i32 31)
  %5 = icmp ult i32 %4, 8
  %switch.maskindex = trunc i32 %4 to i8
  %switch.shifted = lshr i8 -107, %switch.maskindex
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %5, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %land.end, label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.rhs
  %cmp6.i = icmp ne i32 %chr, 85
  %6 = zext i1 %cmp6.i to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.rhs.i, %entry
  %land.ext = phi i32 [ 0, %entry ], [ %6, %lor.rhs.i ], [ 0, %land.rhs ]
  ret i32 %land.ext
}

; Function Attrs: nounwind uwtable
define dso_local i32 @NRL(ptr noundef readonly captures(none) %s, i32 noundef %n, ptr noundef captures(none) %phone) local_unnamed_addr #5 {
entry:
  %items = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %0 = load i32, ptr %items, align 8, !tbaa !26
  %add = add i32 %n, 3
  %conv = zext i32 %add to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #34
  store i8 32, ptr %call, align 1, !tbaa !5
  %d.027 = getelementptr inbounds nuw i8, ptr %call, i64 1
  %cmp.not29 = icmp eq i32 %n, 0
  %.pre = tail call ptr @__ctype_b_loc() #38
  br i1 %cmp.not29, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end
  %dec32.in = phi i32 [ %dec32, %if.end ], [ %n, %entry ]
  %d.031 = phi ptr [ %d.0, %if.end ], [ %d.027, %entry ]
  %s.addr.030 = phi ptr [ %incdec.ptr2, %if.end ], [ %s, %entry ]
  %dec32 = add i32 %dec32.in, -1
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %s.addr.030, i64 1
  %1 = load i8, ptr %s.addr.030, align 1, !tbaa !5
  %2 = load ptr, ptr %.pre, align 8, !tbaa !145
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %4 = and i16 %3, 512
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call6 = tail call ptr @__ctype_toupper_loc() #38
  %5 = load ptr, ptr %call6, align 8, !tbaa !150
  %arrayidx9 = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !10
  %conv10 = trunc i32 %6 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %ch.0 = phi i8 [ %conv10, %if.then ], [ %1, %while.body ]
  store i8 %ch.0, ptr %d.031, align 1, !tbaa !5
  %d.0 = getelementptr inbounds nuw i8, ptr %d.031, i64 1
  %cmp.not = icmp eq i32 %dec32, 0
  br i1 %cmp.not, label %while.end, label %while.body, !llvm.loop !168

while.end:                                        ; preds = %if.end, %entry
  %call.pn.lcssa = phi ptr [ %call, %entry ], [ %d.031, %if.end ]
  %d.0.lcssa = phi ptr [ %d.027, %entry ], [ %d.0, %if.end ]
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %call.pn.lcssa, i64 2
  store i8 32, ptr %d.0.lcssa, align 1, !tbaa !5
  store i8 0, ptr %incdec.ptr12, align 1, !tbaa !5
  %invariant.gep.i.i = getelementptr i8, ptr %call, i64 -1
  %alloc.i.i = getelementptr inbounds nuw i8, ptr %phone, i64 12
  %esize37.i.i = getelementptr inbounds nuw i8, ptr %phone, i64 16
  %get.i.i = getelementptr inbounds nuw i8, ptr %phone, i64 18
  %.pre.i = load i8, ptr %d.027, align 1, !tbaa !5
  br label %do.body.i

do.body.i:                                        ; preds = %find_rule.exit.i, %while.end
  %7 = phi i8 [ %.pre.i, %while.end ], [ %97, %find_rule.exit.i ]
  %index.0.i = phi i32 [ 1, %while.end ], [ %retval.0.i.i, %find_rule.exit.i ]
  %8 = load ptr, ptr %.pre, align 8, !tbaa !145
  %idxprom.i = sext i32 %index.0.i to i64
  %arrayidx.i = getelementptr inbounds i8, ptr %call, i64 %idxprom.i
  %idxprom1.i = sext i8 %7 to i64
  %arrayidx2.i = getelementptr inbounds i16, ptr %8, i64 %idxprom1.i
  %9 = load i16, ptr %arrayidx2.i, align 2, !tbaa !18
  %10 = and i16 %9, 256
  %tobool.not.i = icmp eq i16 %10, 0
  %add.i = add nsw i64 %idxprom1.i, -64
  %type.0.i = select i1 %tobool.not.i, i64 0, i64 %add.i
  %arrayidx8.i = getelementptr inbounds [0 x ptr], ptr @Rules, i64 0, i64 %type.0.i
  %11 = load ptr, ptr %arrayidx8.i, align 8, !tbaa !169
  %arrayidx23.i.i = getelementptr inbounds nuw i8, ptr %11, i64 8
  %12 = load ptr, ptr %arrayidx23.i.i, align 8, !tbaa !12
  %cmp24.i.i = icmp eq ptr %12, null
  br i1 %cmp24.i.i, label %if.then.i.i, label %for.cond2.preheader.lr.ph.i.i

for.cond2.preheader.lr.ph.i.i:                    ; preds = %do.body.i
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %idxprom.i
  br label %for.cond2.preheader.i.i

for.cond2.preheader.i.i:                          ; preds = %for.cond.backedge.i.i, %for.cond2.preheader.lr.ph.i.i
  %13 = phi ptr [ %12, %for.cond2.preheader.lr.ph.i.i ], [ %52, %for.cond.backedge.i.i ]
  %rules.addr.025.i.i = phi ptr [ %11, %for.cond2.preheader.lr.ph.i.i ], [ %incdec.ptr26.i.i, %for.cond.backedge.i.i ]
  %incdec.ptr26.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.025.i.i, i64 32
  %14 = load i8, ptr %13, align 1, !tbaa !5
  %cmp4.not19.i.i = icmp eq i8 %14, 0
  br i1 %cmp4.not19.i.i, label %if.end19.i.i, label %for.body.i.i

if.then.i.loopexit.i:                             ; preds = %for.cond.backedge.i.i
  %.pre43.i = load i8, ptr %arrayidx.i, align 1, !tbaa !5
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.loopexit.i, %do.body.i
  %15 = phi i8 [ %.pre43.i, %if.then.i.loopexit.i ], [ %7, %do.body.i ]
  %16 = load ptr, ptr @stderr, align 8, !tbaa !21
  %conv.i.i = sext i8 %15 to i32
  %call.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.1.944, i32 noundef %conv.i.i, ptr noundef nonnull %call) #35
  %add.i.i = add nsw i32 %index.0.i, 1
  br label %find_rule.exit.i

for.body.i.i:                                     ; preds = %for.cond2.preheader.i.i, %for.inc.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc.i.i ], [ %idxprom.i, %for.cond2.preheader.i.i ]
  %17 = phi i8 [ %19, %for.inc.i.i ], [ %14, %for.cond2.preheader.i.i ]
  %match.020.i.i = phi ptr [ %incdec.ptr14.i.i, %for.inc.i.i ], [ %13, %for.cond2.preheader.i.i ]
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i.i
  %18 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %cmp10.not.i.i = icmp eq i8 %17, %18
  br i1 %cmp10.not.i.i, label %for.inc.i.i, label %for.cond.backedge.i.i, !llvm.loop !172

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr14.i.i = getelementptr inbounds nuw i8, ptr %match.020.i.i, i64 1
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  %19 = load i8, ptr %incdec.ptr14.i.i, align 1, !tbaa !5
  %cmp4.not.i.i = icmp eq i8 %19, 0
  br i1 %cmp4.not.i.i, label %if.end19.loopexit.i.i, label %for.body.i.i, !llvm.loop !173

if.end19.loopexit.i.i:                            ; preds = %for.inc.i.i
  %20 = trunc nsw i64 %indvars.iv.next.i.i to i32
  br label %if.end19.i.i

if.end19.i.i:                                     ; preds = %if.end19.loopexit.i.i, %for.cond2.preheader.i.i
  %remainder.0.lcssa.i.i = phi i32 [ %index.0.i, %for.cond2.preheader.i.i ], [ %20, %if.end19.loopexit.i.i ]
  %21 = load ptr, ptr %rules.addr.025.i.i, align 8, !tbaa !12
  %arrayidx21.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.025.i.i, i64 16
  %22 = load ptr, ptr %arrayidx21.i.i, align 8, !tbaa !12
  %23 = load i8, ptr %21, align 1, !tbaa !5
  %cmp.i.i.i = icmp eq i8 %23, 0
  br i1 %cmp.i.i.i, label %if.end26.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end19.i.i
  %call.i.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %21) #32
  %conv2.i.i.i = trunc i64 %call.i.i.i to i32
  %cmp369.i.i.i = icmp sgt i32 %conv2.i.i.i, 0
  br i1 %cmp369.i.i.i, label %for.body.lr.ph.i.i.i, label %if.end26.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i.i.i
  %sub.i.i.i = shl i64 %call.i.i.i, 32
  %sext.i.i.i = add nsw i64 %sub.i.i.i, -4294967296
  %idx.ext.i.i.i = ashr exact i64 %sext.i.i.i, 32
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %21, i64 %idx.ext.i.i.i
  %24 = load ptr, ptr %.pre, align 8, !tbaa !145
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i, %for.body.lr.ph.i.i.i
  %count.072.i.i.i = phi i32 [ %conv2.i.i.i, %for.body.lr.ph.i.i.i ], [ %dec.i.i.i, %for.inc.i.i.i ]
  %text.071.i.i.i = phi ptr [ %gep.i.i, %for.body.lr.ph.i.i.i ], [ %text.1.i.i.i, %for.inc.i.i.i ]
  %pat.070.i.i.i = phi ptr [ %add.ptr.i.i.i, %for.body.lr.ph.i.i.i ], [ %incdec.ptr112.i.i.i, %for.inc.i.i.i ]
  %25 = load i8, ptr %pat.070.i.i.i, align 1, !tbaa !5
  %idxprom.i.i.i = sext i8 %25 to i64
  %arrayidx.i.i.i = getelementptr inbounds i16, ptr %24, i64 %idxprom.i.i.i
  %26 = load i16, ptr %arrayidx.i.i.i, align 2, !tbaa !18
  %.fr54.i.i.i = freeze i16 %26
  %27 = and i16 %.fr54.i.i.i, 1024
  %tobool.not.not.i.i.i = icmp eq i16 %27, 0
  br i1 %tobool.not.not.i.i.i, label %switch.early.test.i.i.i, label %if.then15.i.i.i

switch.early.test.i.i.i:                          ; preds = %for.body.i.i.i
  switch i8 %25, label %for.cond.backedge.sink.split.i.i [
    i8 39, label %if.then15.i.i.i
    i8 32, label %if.then15.i.i.i
    i8 35, label %sw.bb.i.i.i
    i8 58, label %while.cond34.preheader.i.i.i
    i8 94, label %sw.bb41.i.i.i
    i8 46, label %sw.bb48.i.i.i
    i8 43, label %sw.bb94.i.i.i
  ]

while.cond34.preheader.i.i.i:                     ; preds = %switch.early.test.i.i.i
  %28 = load i8, ptr %text.071.i.i.i, align 1, !tbaa !5
  %idxprom.i57.i.i.i = sext i8 %28 to i64
  %arrayidx.i58.i.i.i = getelementptr inbounds i16, ptr %24, i64 %idxprom.i57.i.i.i
  %29 = load i16, ptr %arrayidx.i58.i.i.i, align 2, !tbaa !18
  %30 = and i16 %29, 256
  %tobool.not.i59.i.i.i = icmp eq i16 %30, 0
  br i1 %tobool.not.i59.i.i.i, label %for.inc.i.i.i, label %land.rhs.i.i.i.i

if.then15.i.i.i:                                  ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %for.body.i.i.i
  %31 = load i8, ptr %text.071.i.i.i, align 1, !tbaa !5
  %cmp18.not.i.i.i = icmp eq i8 %25, %31
  br i1 %cmp18.not.i.i.i, label %if.else.i.i.i, label %for.cond.backedge.i.i

if.else.i.i.i:                                    ; preds = %if.then15.i.i.i
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %text.071.i.i.i, i64 -1
  br label %for.inc.i.i.i

sw.bb.i.i.i:                                      ; preds = %switch.early.test.i.i.i
  %32 = load i8, ptr %text.071.i.i.i, align 1, !tbaa !5
  %conv23.i.i.i = sext i8 %32 to i32
  %33 = add nsw i32 %conv23.i.i.i, -65
  %34 = tail call i32 @llvm.fshl.i32(i32 %33, i32 %33, i32 31)
  switch i32 %34, label %lor.rhs.i.i.i.i [
    i32 7, label %while.cond.i.i.i.preheader
    i32 4, label %while.cond.i.i.i.preheader
    i32 2, label %while.cond.i.i.i.preheader
    i32 0, label %while.cond.i.i.i.preheader
  ]

lor.rhs.i.i.i.i:                                  ; preds = %sw.bb.i.i.i
  %cmp6.i.not.i.i.i = icmp eq i8 %32, 85
  br i1 %cmp6.i.not.i.i.i, label %while.cond.i.i.i.preheader, label %for.cond.backedge.i.i

while.cond.i.i.i.preheader:                       ; preds = %lor.rhs.i.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.backedge, %while.cond.i.i.i.preheader
  %text.0.pn.i.i.i = phi ptr [ %text.071.i.i.i, %while.cond.i.i.i.preheader ], [ %text.2.i.i.i, %while.cond.i.i.i.backedge ]
  %text.2.i.i.i = getelementptr inbounds i8, ptr %text.0.pn.i.i.i, i64 -1
  %35 = load i8, ptr %text.2.i.i.i, align 1, !tbaa !5
  %conv29.i.i.i = sext i8 %35 to i32
  %36 = add nsw i32 %conv29.i.i.i, -65
  %37 = tail call i32 @llvm.fshl.i32(i32 %36, i32 %36, i32 31)
  switch i32 %37, label %lor.rhs.i38.i.i.i [
    i32 7, label %while.cond.i.i.i.backedge
    i32 4, label %while.cond.i.i.i.backedge
    i32 2, label %while.cond.i.i.i.backedge
    i32 0, label %while.cond.i.i.i.backedge
  ]

lor.rhs.i38.i.i.i:                                ; preds = %while.cond.i.i.i
  %cmp6.i39.not.i.i.i = icmp eq i8 %35, 85
  br i1 %cmp6.i39.not.i.i.i, label %while.cond.i.i.i.backedge, label %for.inc.i.i.i

while.cond.i.i.i.backedge:                        ; preds = %lor.rhs.i38.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i
  br label %while.cond.i.i.i, !llvm.loop !174

land.rhs.i.i.i.i:                                 ; preds = %while.cond34.preheader.i.i.i, %while.body38.i.i.i
  %38 = phi i8 [ %41, %while.body38.i.i.i ], [ %28, %while.cond34.preheader.i.i.i ]
  %text.360.i.i.i = phi ptr [ %incdec.ptr39.i.i.i, %while.body38.i.i.i ], [ %text.071.i.i.i, %while.cond34.preheader.i.i.i ]
  %conv35.i.i.i = sext i8 %38 to i32
  %39 = add nsw i32 %conv35.i.i.i, -65
  %40 = tail call i32 @llvm.fshl.i32(i32 %39, i32 %39, i32 31)
  switch i32 %40, label %isconsonant.exit.i.i.i [
    i32 7, label %for.inc.i.i.i
    i32 4, label %for.inc.i.i.i
    i32 2, label %for.inc.i.i.i
    i32 0, label %for.inc.i.i.i
  ]

isconsonant.exit.i.i.i:                           ; preds = %land.rhs.i.i.i.i
  %cmp6.i.i.not.i.i.i = icmp eq i8 %38, 85
  br i1 %cmp6.i.i.not.i.i.i, label %for.inc.i.i.i, label %while.body38.i.i.i

while.body38.i.i.i:                               ; preds = %isconsonant.exit.i.i.i
  %incdec.ptr39.i.i.i = getelementptr inbounds i8, ptr %text.360.i.i.i, i64 -1
  %41 = load i8, ptr %incdec.ptr39.i.i.i, align 1, !tbaa !5
  %idxprom.i.i.i.i = sext i8 %41 to i64
  %arrayidx.i.i.i.i = getelementptr inbounds i16, ptr %24, i64 %idxprom.i.i.i.i
  %42 = load i16, ptr %arrayidx.i.i.i.i, align 2, !tbaa !18
  %43 = and i16 %42, 256
  %tobool.not.i.i.i.i = icmp eq i16 %43, 0
  br i1 %tobool.not.i.i.i.i, label %for.inc.i.i.i, label %land.rhs.i.i.i.i, !llvm.loop !175

sw.bb41.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %44 = load i8, ptr %text.071.i.i.i, align 1, !tbaa !5
  %idxprom.i42.i.i.i = sext i8 %44 to i64
  %arrayidx.i43.i.i.i = getelementptr inbounds i16, ptr %24, i64 %idxprom.i42.i.i.i
  %45 = load i16, ptr %arrayidx.i43.i.i.i, align 2, !tbaa !18
  %46 = and i16 %45, 256
  %tobool.not.i44.i.i.i = icmp eq i16 %46, 0
  br i1 %tobool.not.i44.i.i.i, label %for.cond.backedge.i.i, label %land.rhs.i45.i.i.i

land.rhs.i45.i.i.i:                               ; preds = %sw.bb41.i.i.i
  %conv42.i.i.i = sext i8 %44 to i32
  %47 = add nsw i32 %conv42.i.i.i, -65
  %48 = tail call i32 @llvm.fshl.i32(i32 %47, i32 %47, i32 31)
  switch i32 %48, label %isconsonant.exit49.i.i.i [
    i32 7, label %for.cond.backedge.i.i
    i32 4, label %for.cond.backedge.i.i
    i32 2, label %for.cond.backedge.i.i
    i32 0, label %for.cond.backedge.i.i
  ]

isconsonant.exit49.i.i.i:                         ; preds = %land.rhs.i45.i.i.i
  %cmp6.i.i48.not.i.i.i = icmp eq i8 %44, 85
  br i1 %cmp6.i.i48.not.i.i.i, label %for.cond.backedge.i.i, label %if.end46.i.i.i

if.end46.i.i.i:                                   ; preds = %isconsonant.exit49.i.i.i
  %incdec.ptr47.i.i.i = getelementptr inbounds i8, ptr %text.071.i.i.i, i64 -1
  br label %for.inc.i.i.i

sw.bb48.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %49 = load i8, ptr %text.071.i.i.i, align 1, !tbaa !5
  switch i8 %49, label %for.cond.backedge.i.i [
    i8 66, label %if.end92.i.i.i
    i8 68, label %if.end92.i.i.i
    i8 86, label %if.end92.i.i.i
    i8 71, label %if.end92.i.i.i
    i8 74, label %if.end92.i.i.i
    i8 76, label %if.end92.i.i.i
    i8 77, label %if.end92.i.i.i
    i8 78, label %if.end92.i.i.i
    i8 82, label %if.end92.i.i.i
    i8 87, label %if.end92.i.i.i
    i8 90, label %if.end92.i.i.i
  ]

if.end92.i.i.i:                                   ; preds = %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i, %sw.bb48.i.i.i
  %incdec.ptr93.i.i.i = getelementptr inbounds i8, ptr %text.071.i.i.i, i64 -1
  br label %for.inc.i.i.i

sw.bb94.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %50 = load i8, ptr %text.071.i.i.i, align 1, !tbaa !5
  switch i8 %50, label %for.cond.backedge.i.i [
    i8 69, label %if.end107.i.i.i
    i8 73, label %if.end107.i.i.i
    i8 89, label %if.end107.i.i.i
  ]

if.end107.i.i.i:                                  ; preds = %sw.bb94.i.i.i, %sw.bb94.i.i.i, %sw.bb94.i.i.i
  %incdec.ptr108.i.i.i = getelementptr inbounds i8, ptr %text.071.i.i.i, i64 -1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %while.body38.i.i.i, %isconsonant.exit.i.i.i, %land.rhs.i.i.i.i, %land.rhs.i.i.i.i, %land.rhs.i.i.i.i, %land.rhs.i.i.i.i, %lor.rhs.i38.i.i.i, %if.end107.i.i.i, %if.end92.i.i.i, %if.end46.i.i.i, %if.else.i.i.i, %while.cond34.preheader.i.i.i
  %text.1.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.else.i.i.i ], [ %incdec.ptr47.i.i.i, %if.end46.i.i.i ], [ %incdec.ptr93.i.i.i, %if.end92.i.i.i ], [ %incdec.ptr108.i.i.i, %if.end107.i.i.i ], [ %text.071.i.i.i, %while.cond34.preheader.i.i.i ], [ %text.2.i.i.i, %lor.rhs.i38.i.i.i ], [ %text.360.i.i.i, %land.rhs.i.i.i.i ], [ %text.360.i.i.i, %land.rhs.i.i.i.i ], [ %text.360.i.i.i, %land.rhs.i.i.i.i ], [ %text.360.i.i.i, %land.rhs.i.i.i.i ], [ %incdec.ptr39.i.i.i, %while.body38.i.i.i ], [ %text.360.i.i.i, %isconsonant.exit.i.i.i ]
  %incdec.ptr112.i.i.i = getelementptr inbounds i8, ptr %pat.070.i.i.i, i64 -1
  %dec.i.i.i = add nsw i32 %count.072.i.i.i, -1
  %cmp3.i.i.i = icmp sgt i32 %count.072.i.i.i, 1
  br i1 %cmp3.i.i.i, label %for.body.i.i.i, label %if.end26.i.i, !llvm.loop !176

for.cond.backedge.sink.split.i.i:                 ; preds = %switch.early.test.i.i.i, %switch.early.test.i29.i.i
  %.lcssa49.sink.i.i = phi i8 [ %55, %switch.early.test.i29.i.i ], [ %25, %switch.early.test.i.i.i ]
  %.str.3.945.sink.i.i = phi ptr [ @.str.3.945, %switch.early.test.i29.i.i ], [ @.str.2.946, %switch.early.test.i.i.i ]
  %conv2.le.i.i.i = sext i8 %.lcssa49.sink.i.i to i32
  %51 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call162.i.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %51, ptr noundef nonnull %.str.3.945.sink.i.i, i32 noundef %conv2.le.i.i.i) #35
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %for.body.i.i, %sw.bb94.i.i.i, %sw.bb48.i.i.i, %isconsonant.exit49.i.i.i, %land.rhs.i45.i.i.i, %land.rhs.i45.i.i.i, %land.rhs.i45.i.i.i, %land.rhs.i45.i.i.i, %sw.bb41.i.i.i, %lor.rhs.i.i.i.i, %if.then15.i.i.i, %if.then151.i.i.i, %if.then146.i.i.i, %sw.bb108.i.i.i, %sw.bb93.i.i.i, %sw.bb47.i.i.i, %isconsonant.exit65.i.i.i, %land.rhs.i61.i.i.i, %land.rhs.i61.i.i.i, %land.rhs.i61.i.i.i, %land.rhs.i61.i.i.i, %sw.bb40.i.i.i, %lor.rhs.i.i42.i.i, %if.then14.i.i.i, %for.cond.backedge.sink.split.i.i
  %arrayidx.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.025.i.i, i64 40
  %52 = load ptr, ptr %arrayidx.i.i, align 8, !tbaa !12
  %cmp.i.i = icmp eq ptr %52, null
  br i1 %cmp.i.i, label %if.then.i.loopexit.i, label %for.cond2.preheader.i.i, !llvm.loop !172

if.end26.i.i:                                     ; preds = %for.inc.i.i.i, %if.end.i.i.i, %if.end19.i.i
  %53 = load i8, ptr %22, align 1, !tbaa !5
  %cmp.i18.i.i = icmp eq i8 %53, 0
  br i1 %cmp.i18.i.i, label %if.end32.i.i, label %for.cond.preheader.i.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end26.i.i
  %idxprom27.i.i = sext i32 %remainder.0.lcssa.i.i to i64
  %arrayidx28.i.i = getelementptr inbounds i8, ptr %call, i64 %idxprom27.i.i
  %54 = load ptr, ptr %.pre, align 8, !tbaa !145
  br label %for.body.i20.i.i

for.body.i20.i.i:                                 ; preds = %for.inc.i27.i.i, %for.cond.preheader.i.i.i
  %text.087.i.i.i = phi ptr [ %arrayidx28.i.i, %for.cond.preheader.i.i.i ], [ %text.1.i28.i.i, %for.inc.i27.i.i ]
  %pat.086.i.i.i = phi ptr [ %22, %for.cond.preheader.i.i.i ], [ %incdec.ptr163.i.i.i, %for.inc.i27.i.i ]
  %55 = phi i8 [ %53, %for.cond.preheader.i.i.i ], [ %.pr.i.i.i, %for.inc.i27.i.i ]
  %idxprom.i21.i.i = sext i8 %55 to i64
  %arrayidx.i22.i.i = getelementptr inbounds i16, ptr %54, i64 %idxprom.i21.i.i
  %56 = load i16, ptr %arrayidx.i22.i.i, align 2, !tbaa !18
  %.fr70.i.i.i = freeze i16 %56
  %57 = and i16 %.fr70.i.i.i, 1024
  %tobool.not.not.i23.i.i = icmp eq i16 %57, 0
  br i1 %tobool.not.not.i23.i.i, label %switch.early.test.i29.i.i, label %if.then14.i.i.i

switch.early.test.i29.i.i:                        ; preds = %for.body.i20.i.i
  switch i8 %55, label %for.cond.backedge.sink.split.i.i [
    i8 39, label %if.then14.i.i.i
    i8 32, label %if.then14.i.i.i
    i8 35, label %sw.bb.i36.i.i
    i8 58, label %while.cond33.preheader.i.i.i
    i8 94, label %sw.bb40.i.i.i
    i8 46, label %sw.bb47.i.i.i
    i8 43, label %sw.bb93.i.i.i
    i8 37, label %sw.bb108.i.i.i
  ]

while.cond33.preheader.i.i.i:                     ; preds = %switch.early.test.i29.i.i
  %58 = load i8, ptr %text.087.i.i.i, align 1, !tbaa !5
  %idxprom.i74.i.i.i = sext i8 %58 to i64
  %arrayidx.i75.i.i.i = getelementptr inbounds i16, ptr %54, i64 %idxprom.i74.i.i.i
  %59 = load i16, ptr %arrayidx.i75.i.i.i, align 2, !tbaa !18
  %60 = and i16 %59, 256
  %tobool.not.i76.i.i.i = icmp eq i16 %60, 0
  br i1 %tobool.not.i76.i.i.i, label %for.inc.i27.i.i, label %land.rhs.i.i30.i.i

if.then14.i.i.i:                                  ; preds = %switch.early.test.i29.i.i, %switch.early.test.i29.i.i, %for.body.i20.i.i
  %61 = load i8, ptr %text.087.i.i.i, align 1, !tbaa !5
  %cmp17.not.i.i.i = icmp eq i8 %55, %61
  br i1 %cmp17.not.i.i.i, label %if.else.i25.i.i, label %for.cond.backedge.i.i

if.else.i25.i.i:                                  ; preds = %if.then14.i.i.i
  %incdec.ptr.i26.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 1
  br label %for.inc.i27.i.i

sw.bb.i36.i.i:                                    ; preds = %switch.early.test.i29.i.i
  %62 = load i8, ptr %text.087.i.i.i, align 1, !tbaa !5
  %conv22.i.i.i = sext i8 %62 to i32
  %63 = add nsw i32 %conv22.i.i.i, -65
  %64 = tail call i32 @llvm.fshl.i32(i32 %63, i32 %63, i32 31)
  switch i32 %64, label %lor.rhs.i.i42.i.i [
    i32 7, label %while.cond.i38.i.i.preheader
    i32 4, label %while.cond.i38.i.i.preheader
    i32 2, label %while.cond.i38.i.i.preheader
    i32 0, label %while.cond.i38.i.i.preheader
  ]

lor.rhs.i.i42.i.i:                                ; preds = %sw.bb.i36.i.i
  %cmp6.i.not.i43.i.i = icmp eq i8 %62, 85
  br i1 %cmp6.i.not.i43.i.i, label %while.cond.i38.i.i.preheader, label %for.cond.backedge.i.i

while.cond.i38.i.i.preheader:                     ; preds = %lor.rhs.i.i42.i.i, %sw.bb.i36.i.i, %sw.bb.i36.i.i, %sw.bb.i36.i.i, %sw.bb.i36.i.i
  br label %while.cond.i38.i.i

while.cond.i38.i.i:                               ; preds = %while.cond.i38.i.i.backedge, %while.cond.i38.i.i.preheader
  %text.0.pn.i39.i.i = phi ptr [ %text.087.i.i.i, %while.cond.i38.i.i.preheader ], [ %text.2.i40.i.i, %while.cond.i38.i.i.backedge ]
  %text.2.i40.i.i = getelementptr inbounds nuw i8, ptr %text.0.pn.i39.i.i, i64 1
  %65 = load i8, ptr %text.2.i40.i.i, align 1, !tbaa !5
  %conv28.i.i.i = sext i8 %65 to i32
  %66 = add nsw i32 %conv28.i.i.i, -65
  %67 = tail call i32 @llvm.fshl.i32(i32 %66, i32 %66, i32 31)
  switch i32 %67, label %lor.rhs.i54.i.i.i [
    i32 7, label %while.cond.i38.i.i.backedge
    i32 4, label %while.cond.i38.i.i.backedge
    i32 2, label %while.cond.i38.i.i.backedge
    i32 0, label %while.cond.i38.i.i.backedge
  ]

lor.rhs.i54.i.i.i:                                ; preds = %while.cond.i38.i.i
  %cmp6.i55.not.i.i.i = icmp eq i8 %65, 85
  br i1 %cmp6.i55.not.i.i.i, label %while.cond.i38.i.i.backedge, label %for.inc.i27.i.i

while.cond.i38.i.i.backedge:                      ; preds = %lor.rhs.i54.i.i.i, %while.cond.i38.i.i, %while.cond.i38.i.i, %while.cond.i38.i.i, %while.cond.i38.i.i
  br label %while.cond.i38.i.i, !llvm.loop !177

land.rhs.i.i30.i.i:                               ; preds = %while.cond33.preheader.i.i.i, %while.body37.i.i.i
  %68 = phi i8 [ %71, %while.body37.i.i.i ], [ %58, %while.cond33.preheader.i.i.i ]
  %text.377.i.i.i = phi ptr [ %incdec.ptr38.i.i.i, %while.body37.i.i.i ], [ %text.087.i.i.i, %while.cond33.preheader.i.i.i ]
  %conv34.i.i.i = sext i8 %68 to i32
  %69 = add nsw i32 %conv34.i.i.i, -65
  %70 = tail call i32 @llvm.fshl.i32(i32 %69, i32 %69, i32 31)
  switch i32 %70, label %isconsonant.exit.i31.i.i [
    i32 7, label %for.inc.i27.i.i
    i32 4, label %for.inc.i27.i.i
    i32 2, label %for.inc.i27.i.i
    i32 0, label %for.inc.i27.i.i
  ]

isconsonant.exit.i31.i.i:                         ; preds = %land.rhs.i.i30.i.i
  %cmp6.i.i.not.i32.i.i = icmp eq i8 %68, 85
  br i1 %cmp6.i.i.not.i32.i.i, label %for.inc.i27.i.i, label %while.body37.i.i.i

while.body37.i.i.i:                               ; preds = %isconsonant.exit.i31.i.i
  %incdec.ptr38.i.i.i = getelementptr inbounds nuw i8, ptr %text.377.i.i.i, i64 1
  %71 = load i8, ptr %incdec.ptr38.i.i.i, align 1, !tbaa !5
  %idxprom.i.i33.i.i = sext i8 %71 to i64
  %arrayidx.i.i34.i.i = getelementptr inbounds i16, ptr %54, i64 %idxprom.i.i33.i.i
  %72 = load i16, ptr %arrayidx.i.i34.i.i, align 2, !tbaa !18
  %73 = and i16 %72, 256
  %tobool.not.i.i35.i.i = icmp eq i16 %73, 0
  br i1 %tobool.not.i.i35.i.i, label %for.inc.i27.i.i, label %land.rhs.i.i30.i.i, !llvm.loop !178

sw.bb40.i.i.i:                                    ; preds = %switch.early.test.i29.i.i
  %74 = load i8, ptr %text.087.i.i.i, align 1, !tbaa !5
  %idxprom.i58.i.i.i = sext i8 %74 to i64
  %arrayidx.i59.i.i.i = getelementptr inbounds i16, ptr %54, i64 %idxprom.i58.i.i.i
  %75 = load i16, ptr %arrayidx.i59.i.i.i, align 2, !tbaa !18
  %76 = and i16 %75, 256
  %tobool.not.i60.i.i.i = icmp eq i16 %76, 0
  br i1 %tobool.not.i60.i.i.i, label %for.cond.backedge.i.i, label %land.rhs.i61.i.i.i

land.rhs.i61.i.i.i:                               ; preds = %sw.bb40.i.i.i
  %conv41.i.i.i = sext i8 %74 to i32
  %77 = add nsw i32 %conv41.i.i.i, -65
  %78 = tail call i32 @llvm.fshl.i32(i32 %77, i32 %77, i32 31)
  switch i32 %78, label %isconsonant.exit65.i.i.i [
    i32 7, label %for.cond.backedge.i.i
    i32 4, label %for.cond.backedge.i.i
    i32 2, label %for.cond.backedge.i.i
    i32 0, label %for.cond.backedge.i.i
  ]

isconsonant.exit65.i.i.i:                         ; preds = %land.rhs.i61.i.i.i
  %cmp6.i.i64.not.i.i.i = icmp eq i8 %74, 85
  br i1 %cmp6.i.i64.not.i.i.i, label %for.cond.backedge.i.i, label %if.end45.i.i.i

if.end45.i.i.i:                                   ; preds = %isconsonant.exit65.i.i.i
  %incdec.ptr46.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 1
  br label %for.inc.i27.i.i

sw.bb47.i.i.i:                                    ; preds = %switch.early.test.i29.i.i
  %79 = load i8, ptr %text.087.i.i.i, align 1, !tbaa !5
  switch i8 %79, label %for.cond.backedge.i.i [
    i8 66, label %if.end91.i.i.i
    i8 68, label %if.end91.i.i.i
    i8 86, label %if.end91.i.i.i
    i8 71, label %if.end91.i.i.i
    i8 74, label %if.end91.i.i.i
    i8 76, label %if.end91.i.i.i
    i8 77, label %if.end91.i.i.i
    i8 78, label %if.end91.i.i.i
    i8 82, label %if.end91.i.i.i
    i8 87, label %if.end91.i.i.i
    i8 90, label %if.end91.i.i.i
  ]

if.end91.i.i.i:                                   ; preds = %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i, %sw.bb47.i.i.i
  %incdec.ptr92.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 1
  br label %for.inc.i27.i.i

sw.bb93.i.i.i:                                    ; preds = %switch.early.test.i29.i.i
  %80 = load i8, ptr %text.087.i.i.i, align 1, !tbaa !5
  switch i8 %80, label %for.cond.backedge.i.i [
    i8 69, label %if.end106.i.i.i
    i8 73, label %if.end106.i.i.i
    i8 89, label %if.end106.i.i.i
  ]

if.end106.i.i.i:                                  ; preds = %sw.bb93.i.i.i, %sw.bb93.i.i.i, %sw.bb93.i.i.i
  %incdec.ptr107.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 1
  br label %for.inc.i27.i.i

sw.bb108.i.i.i:                                   ; preds = %switch.early.test.i29.i.i
  %81 = load i8, ptr %text.087.i.i.i, align 1, !tbaa !5
  switch i8 %81, label %for.cond.backedge.i.i [
    i8 69, label %if.then112.i.i.i
    i8 73, label %if.then146.i.i.i
  ]

if.then112.i.i.i:                                 ; preds = %sw.bb108.i.i.i
  %incdec.ptr113.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 1
  %82 = load i8, ptr %incdec.ptr113.i.i.i, align 1, !tbaa !5
  switch i8 %82, label %for.inc.i27.i.i [
    i8 76, label %if.then117.i.i.i
    i8 82, label %if.then138.i.i.i
    i8 83, label %if.then138.i.i.i
    i8 68, label %if.then138.i.i.i
  ]

if.then117.i.i.i:                                 ; preds = %if.then112.i.i.i
  %incdec.ptr118.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 2
  %83 = load i8, ptr %incdec.ptr118.i.i.i, align 1, !tbaa !5
  %cmp120.i.i.i = icmp eq i8 %83, 89
  %incdec.ptr123.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 3
  %spec.select.i.i.i = select i1 %cmp120.i.i.i, ptr %incdec.ptr123.i.i.i, ptr %incdec.ptr113.i.i.i
  br label %for.inc.i27.i.i

if.then138.i.i.i:                                 ; preds = %if.then112.i.i.i, %if.then112.i.i.i, %if.then112.i.i.i
  %incdec.ptr139.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 2
  br label %for.inc.i27.i.i

if.then146.i.i.i:                                 ; preds = %sw.bb108.i.i.i
  %incdec.ptr147.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 1
  %84 = load i8, ptr %incdec.ptr147.i.i.i, align 1, !tbaa !5
  %cmp149.i.i.i = icmp eq i8 %84, 78
  br i1 %cmp149.i.i.i, label %if.then151.i.i.i, label %for.cond.backedge.i.i

if.then151.i.i.i:                                 ; preds = %if.then146.i.i.i
  %incdec.ptr152.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 2
  %85 = load i8, ptr %incdec.ptr152.i.i.i, align 1, !tbaa !5
  %cmp154.i.i.i = icmp eq i8 %85, 71
  br i1 %cmp154.i.i.i, label %if.then156.i.i.i, label %for.cond.backedge.i.i

if.then156.i.i.i:                                 ; preds = %if.then151.i.i.i
  %incdec.ptr157.i.i.i = getelementptr inbounds nuw i8, ptr %text.087.i.i.i, i64 3
  br label %for.inc.i27.i.i

for.inc.i27.i.i:                                  ; preds = %while.body37.i.i.i, %isconsonant.exit.i31.i.i, %land.rhs.i.i30.i.i, %land.rhs.i.i30.i.i, %land.rhs.i.i30.i.i, %land.rhs.i.i30.i.i, %lor.rhs.i54.i.i.i, %if.then156.i.i.i, %if.then138.i.i.i, %if.then117.i.i.i, %if.then112.i.i.i, %if.end106.i.i.i, %if.end91.i.i.i, %if.end45.i.i.i, %if.else.i25.i.i, %while.cond33.preheader.i.i.i
  %text.1.i28.i.i = phi ptr [ %incdec.ptr.i26.i.i, %if.else.i25.i.i ], [ %incdec.ptr46.i.i.i, %if.end45.i.i.i ], [ %incdec.ptr92.i.i.i, %if.end91.i.i.i ], [ %incdec.ptr107.i.i.i, %if.end106.i.i.i ], [ %incdec.ptr139.i.i.i, %if.then138.i.i.i ], [ %incdec.ptr157.i.i.i, %if.then156.i.i.i ], [ %incdec.ptr113.i.i.i, %if.then112.i.i.i ], [ %spec.select.i.i.i, %if.then117.i.i.i ], [ %text.087.i.i.i, %while.cond33.preheader.i.i.i ], [ %text.2.i40.i.i, %lor.rhs.i54.i.i.i ], [ %text.377.i.i.i, %land.rhs.i.i30.i.i ], [ %text.377.i.i.i, %land.rhs.i.i30.i.i ], [ %text.377.i.i.i, %land.rhs.i.i30.i.i ], [ %text.377.i.i.i, %land.rhs.i.i30.i.i ], [ %incdec.ptr38.i.i.i, %while.body37.i.i.i ], [ %text.377.i.i.i, %isconsonant.exit.i31.i.i ]
  %incdec.ptr163.i.i.i = getelementptr inbounds nuw i8, ptr %pat.086.i.i.i, i64 1
  %.pr.i.i.i = load i8, ptr %incdec.ptr163.i.i.i, align 1, !tbaa !5
  %cmp3.not.i.i.i = icmp eq i8 %.pr.i.i.i, 0
  br i1 %cmp3.not.i.i.i, label %if.end32.i.i, label %for.body.i20.i.i, !llvm.loop !179

if.end32.i.i:                                     ; preds = %if.end26.i.i, %for.inc.i27.i.i
  %arrayidx33.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.025.i.i, i64 24
  %86 = load ptr, ptr %arrayidx33.i.i, align 8, !tbaa !12
  %87 = load i8, ptr %86, align 1, !tbaa !5
  %tobool.not1.i.i.i = icmp eq i8 %87, 0
  br i1 %tobool.not1.i.i.i, label %find_rule.exit.i, label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %if.end32.i.i, %if.end53.i.i
  %88 = phi i8 [ %96, %if.end53.i.i ], [ %87, %if.end32.i.i ]
  %s.addr.02.i.i.i = phi ptr [ %incdec.ptr.i45.i.i, %if.end53.i.i ], [ %86, %if.end32.i.i ]
  %incdec.ptr.i45.i.i = getelementptr inbounds nuw i8, ptr %s.addr.02.i.i.i, i64 1
  %89 = load i32, ptr %items, align 8, !tbaa !26
  %90 = load i32, ptr %alloc.i.i, align 4, !tbaa !25
  %cmp.not.i.i = icmp ult i32 %89, %90
  %91 = load i16, ptr %esize37.i.i, align 8, !tbaa !27
  br i1 %cmp.not.i.i, label %if.then.i9.i, label %if.then.thread.i.i

if.then.i9.i:                                     ; preds = %while.body.i.i.i
  %tobool.not.i.i = icmp eq i16 %91, 0
  br i1 %tobool.not.i.i, label %if.then4.i.i, label %if.end39.i.thread.i

if.then.thread.i.i:                               ; preds = %while.body.i.i.i
  %conv38.i.i = zext i16 %91 to i32
  %mul39.i.i = mul i32 %89, %conv38.i.i
  %tobool.not40.i.i = icmp eq i16 %91, 0
  br i1 %tobool.not40.i.i, label %if.then4.i.i, label %if.then8.i.i

if.then4.i.i:                                     ; preds = %if.then.thread.i.i, %if.then.i9.i
  tail call void @abort() #36
  unreachable

if.then8.i.i:                                     ; preds = %if.then.thread.i.i
  %92 = load i16, ptr %get.i.i, align 2, !tbaa !28
  %narrow.i.i = tail call i16 @llvm.umax.i16(i16 %92, i16 1)
  %spec.select.i.i = zext i16 %narrow.i.i to i32
  %add13.i.i = add i32 %89, %spec.select.i.i
  %mul16.i.i = mul i32 %add13.i.i, %conv38.i.i
  %conv17.i.i = zext i32 %mul16.i.i to i64
  %call.i7.i = tail call noalias ptr @malloc(i64 noundef %conv17.i.i) #34
  %tobool18.not.not.i.i = icmp ne ptr %call.i7.i, null
  tail call void @llvm.assume(i1 %tobool18.not.not.i.i)
  %tobool20.not.i.i = icmp eq i32 %mul39.i.i, 0
  %.pr.i.i = load ptr, ptr %phone, align 8, !tbaa !23
  br i1 %tobool20.not.i.i, label %if.end23.i.i, label %if.then21.i.i

if.then21.i.i:                                    ; preds = %if.then8.i.i
  %conv22.i.i = zext i32 %mul39.i.i to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %call.i7.i, ptr align 1 %.pr.i.i, i64 %conv22.i.i, i1 false)
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then21.i.i, %if.then8.i.i
  %tobool25.not.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool25.not.i.i, label %if.end39.i.thread6.i, label %if.end39.i.i

if.end39.i.thread6.i:                             ; preds = %if.end23.i.i
  store ptr %call.i7.i, ptr %phone, align 8, !tbaa !23
  store i32 %add13.i.i, ptr %alloc.i.i, align 4, !tbaa !25
  br label %if.then43.i.i

if.end39.i.thread.i:                              ; preds = %if.then.i9.i
  %conv.i10.i = zext i16 %91 to i32
  %mul.i.i = mul i32 %89, %conv.i10.i
  %add35.i.i = add nuw i32 %89, 1
  %mul38.i.i = mul i32 %add35.i.i, %conv.i10.i
  %.pre41.i = load ptr, ptr %phone, align 8, !tbaa !23
  br label %if.then43.i.i

if.end39.i.i:                                     ; preds = %if.end23.i.i
  tail call void @free(ptr noundef nonnull %.pr.i.i) #31
  %.pre.pre.i.i = load i32, ptr %items, align 8, !tbaa !26
  store ptr %call.i7.i, ptr %phone, align 8, !tbaa !23
  store i32 %add13.i.i, ptr %alloc.i.i, align 4, !tbaa !25
  %cmp41.not.i.i = icmp ult i32 %89, %.pre.pre.i.i
  br i1 %cmp41.not.i.i, label %if.end53.i.i, label %if.then43.i.i

if.then43.i.i:                                    ; preds = %if.end39.i.i, %if.end39.i.thread.i, %if.end39.i.thread6.i
  %93 = phi ptr [ %.pre41.i, %if.end39.i.thread.i ], [ %call.i7.i, %if.end39.i.i ], [ %call.i7.i, %if.end39.i.thread6.i ]
  %nsize.0.i5.i = phi i32 [ %mul38.i.i, %if.end39.i.thread.i ], [ %mul16.i.i, %if.end39.i.i ], [ %mul16.i.i, %if.end39.i.thread6.i ]
  %mul4347.i4.i = phi i32 [ %mul.i.i, %if.end39.i.thread.i ], [ %mul39.i.i, %if.end39.i.i ], [ %mul39.i.i, %if.end39.i.thread6.i ]
  %idx.ext.i.i = zext i32 %mul4347.i4.i to i64
  %add.ptr.i.i = getelementptr inbounds nuw i8, ptr %93, i64 %idx.ext.i.i
  %sub.i.i = sub i32 %nsize.0.i5.i, %mul4347.i4.i
  %conv45.i.i = zext i32 %sub.i.i to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %add.ptr.i.i, i8 0, i64 %conv45.i.i, i1 false)
  %add46.i.i = add i32 %89, 1
  store i32 %add46.i.i, ptr %items, align 8, !tbaa !26
  %.pre42.i = load ptr, ptr %phone, align 8, !tbaa !23
  br label %if.end53.i.i

if.end53.i.i:                                     ; preds = %if.then43.i.i, %if.end39.i.i
  %94 = phi ptr [ %.pre42.i, %if.then43.i.i ], [ %call.i7.i, %if.end39.i.i ]
  %95 = load i16, ptr %esize37.i.i, align 8, !tbaa !27
  %conv56.i.i = zext i16 %95 to i32
  %mul57.i.i = mul i32 %89, %conv56.i.i
  %idx.ext58.i.i = zext i32 %mul57.i.i to i64
  %add.ptr59.i.i = getelementptr inbounds nuw i8, ptr %94, i64 %idx.ext58.i.i
  store i8 %88, ptr %add.ptr59.i.i, align 1, !tbaa !5
  %96 = load i8, ptr %incdec.ptr.i45.i.i, align 1, !tbaa !5
  %tobool.not.i.i.i = icmp eq i8 %96, 0
  br i1 %tobool.not.i.i.i, label %find_rule.exit.i, label %while.body.i.i.i, !llvm.loop !180

find_rule.exit.i:                                 ; preds = %if.end53.i.i, %if.end32.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %remainder.0.lcssa.i.i, %if.end32.i.i ], [ %remainder.0.lcssa.i.i, %if.end53.i.i ]
  %idxprom10.i = sext i32 %retval.0.i.i to i64
  %arrayidx11.i = getelementptr inbounds i8, ptr %call, i64 %idxprom10.i
  %97 = load i8, ptr %arrayidx11.i, align 1, !tbaa !5
  %cmp.not.i = icmp eq i8 %97, 0
  br i1 %cmp.not.i, label %guess_word.exit, label %do.body.i, !llvm.loop !181

guess_word.exit:                                  ; preds = %find_rule.exit.i
  tail call void @free(ptr noundef nonnull %call) #31
  %98 = load i32, ptr %items, align 8, !tbaa !26
  %sub = sub i32 %98, %0
  ret i32 %sub
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @trie_insert(ptr noundef captures(none) %r, ptr noundef readonly captures(none) %s, ptr noundef %value) local_unnamed_addr #0 {
entry:
  %0 = load i8, ptr %s, align 1, !tbaa !5
  %tobool.not13 = icmp ne i8 %0, 0
  tail call void @llvm.assume(i1 %tobool.not13)
  br label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %entry, %if.end10
  %1 = phi i8 [ %4, %if.end10 ], [ %0, %entry ]
  %incdec.ptr15.pn = phi ptr [ %incdec.ptr15, %if.end10 ], [ %s, %entry ]
  %r.addr.014 = phi ptr [ %more, %if.end10 ], [ %r, %entry ]
  %incdec.ptr15 = getelementptr inbounds nuw i8, ptr %incdec.ptr15.pn, i64 1
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.preheader, %while.body3
  %r.addr.1 = phi ptr [ %2, %while.body3 ], [ %r.addr.014, %while.cond1.preheader ]
  %2 = load ptr, ptr %r.addr.1, align 8, !tbaa !129
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.then8, label %while.body3

while.body3:                                      ; preds = %while.cond1
  %ch4 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %3 = load i8, ptr %ch4, align 8, !tbaa !131
  %cmp = icmp eq i8 %3, %1
  br i1 %cmp, label %if.end10, label %while.cond1, !llvm.loop !142

if.then8:                                         ; preds = %while.cond1
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %ch9 = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store i8 %1, ptr %ch9, align 8, !tbaa !131
  store ptr %calloc, ptr %r.addr.1, align 8, !tbaa !129
  br label %if.end10

if.end10:                                         ; preds = %while.body3, %if.then8
  %p.1 = phi ptr [ %calloc, %if.then8 ], [ %2, %while.body3 ]
  %more = getelementptr inbounds nuw i8, ptr %p.1, i64 8
  %4 = load i8, ptr %incdec.ptr15, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %while.end11, label %while.cond1.preheader, !llvm.loop !143

while.end11:                                      ; preds = %if.end10
  %value12 = getelementptr inbounds nuw i8, ptr %p.1, i64 16
  store ptr %value, ptr %value12, align 8, !tbaa !135
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @trie_lookup(ptr noundef captures(none) %r, ptr noundef captures(none) %sp) local_unnamed_addr #26 {
entry:
  %0 = load ptr, ptr %sp, align 8, !tbaa !12
  %1 = load i8, ptr %0, align 1, !tbaa !5
  %tobool.not27 = icmp eq i8 %1, 0
  br i1 %tobool.not27, label %while.end15, label %while.cond1.preheader

while.cond1.preheader:                            ; preds = %entry, %cleanup
  %2 = phi i8 [ %8, %cleanup ], [ %1, %entry ]
  %r.addr.030 = phi ptr [ %more, %cleanup ], [ %r, %entry ]
  %s.029 = phi ptr [ %incdec.ptr, %cleanup ], [ %0, %entry ]
  %value.028 = phi ptr [ %7, %cleanup ], [ null, %entry ]
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1.preheader, %while.body3
  %l.0 = phi ptr [ %3, %while.body3 ], [ %r.addr.030, %while.cond1.preheader ]
  %3 = load ptr, ptr %l.0, align 8, !tbaa !129
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %while.end15, label %while.body3

while.body3:                                      ; preds = %while.cond1
  %ch4 = getelementptr inbounds nuw i8, ptr %3, i64 24
  %4 = load i8, ptr %ch4, align 8, !tbaa !131
  %cmp = icmp eq i8 %4, %2
  br i1 %cmp, label %cleanup, label %while.cond1, !llvm.loop !133

cleanup:                                          ; preds = %while.body3
  %5 = load ptr, ptr %3, align 8, !tbaa !134
  store ptr %5, ptr %l.0, align 8, !tbaa !129
  %6 = load ptr, ptr %r.addr.030, align 8, !tbaa !129
  store ptr %6, ptr %3, align 8, !tbaa !134
  store ptr %3, ptr %r.addr.030, align 8, !tbaa !129
  %more = getelementptr inbounds nuw i8, ptr %3, i64 8
  %value11 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %7 = load ptr, ptr %value11, align 8, !tbaa !135
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.029, i64 1
  %8 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %while.end15, label %while.cond1.preheader

while.end15:                                      ; preds = %cleanup, %while.cond1, %entry
  %value.026 = phi ptr [ null, %entry ], [ %value.028, %while.cond1 ], [ %7, %cleanup ]
  %s.024 = phi ptr [ %0, %entry ], [ %s.029, %while.cond1 ], [ %incdec.ptr, %cleanup ]
  store ptr %s.024, ptr %sp, align 8, !tbaa !12
  ret ptr %value.026
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #28

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #28

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #28

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #28

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #29

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #28

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #17 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nounwind willreturn memory(write, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind }
attributes #28 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #30 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #31 = { nounwind }
attributes #32 = { nounwind willreturn memory(read) }
attributes #33 = { cold }
attributes #34 = { nounwind allocsize(0) }
attributes #35 = { cold nounwind }
attributes #36 = { noreturn nounwind }
attributes #37 = { cold noreturn nounwind }
attributes #38 = { nounwind willreturn memory(none) }

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
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!14, !14, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"short", !6, i64 0}
!20 = distinct !{!20, !9}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!23 = !{!24, !13, i64 0}
!24 = !{!"", !13, i64 0, !11, i64 8, !11, i64 12, !19, i64 16, !19, i64 18}
!25 = !{!24, !11, i64 12}
!26 = !{!24, !11, i64 8}
!27 = !{!24, !19, i64 16}
!28 = !{!24, !19, i64 18}
!29 = distinct !{!29, !9}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !6, i64 0}
!32 = !{!33, !16, i64 16}
!33 = !{!"", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40}
!34 = !{!33, !11, i64 4}
!35 = !{!33, !16, i64 32}
!36 = !{!33, !11, i64 8}
!37 = !{!33, !16, i64 24}
!38 = !{!33, !11, i64 0}
!39 = !{!33, !16, i64 40}
!40 = distinct !{!40, !9, !41, !42}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !9, !41}
!44 = distinct !{!44, !9}
!45 = !{!46, !16, i64 0}
!46 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312}
!47 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !15, i64 32, i64 8, !15, i64 40, i64 8, !15, i64 48, i64 8, !15, i64 56, i64 8, !15, i64 64, i64 8, !15, i64 72, i64 8, !15, i64 80, i64 8, !15, i64 88, i64 8, !15, i64 96, i64 8, !15, i64 104, i64 8, !15, i64 112, i64 8, !15, i64 120, i64 8, !15, i64 128, i64 8, !15, i64 136, i64 8, !15, i64 144, i64 8, !15, i64 152, i64 8, !15, i64 160, i64 8, !15, i64 168, i64 8, !15, i64 176, i64 8, !15, i64 184, i64 8, !15, i64 192, i64 8, !15, i64 200, i64 8, !15, i64 208, i64 8, !15, i64 216, i64 8, !15, i64 224, i64 8, !15, i64 232, i64 8, !15, i64 240, i64 8, !15, i64 248, i64 8, !15, i64 256, i64 8, !15, i64 264, i64 8, !15, i64 272, i64 8, !15, i64 280, i64 8, !15, i64 288, i64 8, !15, i64 296, i64 8, !15, i64 304, i64 8, !15, i64 312, i64 8, !15}
!48 = !{!49, !50, i64 0}
!49 = !{!"", !50, i64 0, !50, i64 4, !6, i64 8, !6, i64 9, !6, i64 10}
!50 = !{!"float", !6, i64 0}
!51 = !{!46, !16, i64 128}
!52 = !{!46, !16, i64 24}
!53 = !{!46, !16, i64 200}
!54 = !{!46, !16, i64 40}
!55 = !{!46, !16, i64 216}
!56 = !{!46, !16, i64 56}
!57 = !{!46, !16, i64 232}
!58 = !{!46, !16, i64 248}
!59 = !{!60, !50, i64 8}
!60 = !{!"", !50, i64 0, !50, i64 4, !50, i64 8}
!61 = !{!60, !50, i64 0}
!62 = !{!60, !50, i64 4}
!63 = distinct !{!63, !9}
!64 = !{!65, !6, i64 8}
!65 = !{!"Elm_s", !13, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !13, i64 16, !13, i64 24, !16, i64 32, !6, i64 40}
!66 = !{!65, !13, i64 0}
!67 = !{!68, !11, i64 4}
!68 = !{!"", !50, i64 0, !11, i64 4}
!69 = !{!49, !50, i64 4}
!70 = !{!49, !6, i64 8}
!71 = !{!68, !50, i64 0}
!72 = distinct !{!72, !9}
!73 = distinct !{!73, !9}
!74 = distinct !{!74, !9}
!75 = distinct !{!75, !9}
!76 = !{!65, !16, i64 32}
!77 = distinct !{!77, !9}
!78 = !{!50, !50, i64 0}
!79 = distinct !{!79, !9, !41, !42}
!80 = distinct !{!80, !9, !41}
!81 = !{!46, !16, i64 304}
!82 = !{!46, !16, i64 8}
!83 = !{!46, !16, i64 176}
!84 = !{!46, !16, i64 112}
!85 = !{!46, !16, i64 144}
!86 = !{!46, !16, i64 160}
!87 = !{!46, !16, i64 16}
!88 = !{!46, !16, i64 32}
!89 = !{!46, !16, i64 48}
!90 = !{!46, !16, i64 296}
!91 = !{!46, !16, i64 256}
!92 = !{!46, !16, i64 272}
!93 = !{!46, !16, i64 192}
!94 = !{!46, !16, i64 208}
!95 = !{!46, !16, i64 224}
!96 = !{!46, !16, i64 240}
!97 = distinct !{!97, !9}
!98 = distinct !{!98, !9}
!99 = distinct !{!99, !9}
!100 = distinct !{!100, !9}
!101 = distinct !{!101, !9}
!102 = distinct !{!102, !9, !41, !42}
!103 = distinct !{!103, !9, !41}
!104 = distinct !{!104, !9}
!105 = distinct !{!105, !9}
!106 = !{!46, !16, i64 184}
!107 = !{!46, !16, i64 288}
!108 = !{!109, !50, i64 16}
!109 = !{!"", !13, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !50, i64 24}
!110 = !{!109, !50, i64 12}
!111 = !{!109, !50, i64 8}
!112 = !{!46, !16, i64 96}
!113 = !{!46, !16, i64 104}
!114 = !{!46, !16, i64 80}
!115 = !{!46, !16, i64 88}
!116 = !{!46, !16, i64 64}
!117 = !{!46, !16, i64 72}
!118 = !{!46, !16, i64 136}
!119 = !{!46, !16, i64 120}
!120 = !{!46, !16, i64 264}
!121 = !{!46, !16, i64 280}
!122 = !{!46, !16, i64 312}
!123 = !{!109, !50, i64 20}
!124 = !{!109, !50, i64 24}
!125 = !{!46, !16, i64 152}
!126 = !{!46, !16, i64 168}
!127 = distinct !{!127, !9}
!128 = distinct !{!128, !9}
!129 = !{!130, !130, i64 0}
!130 = !{!"p1 _ZTS6trie_s", !14, i64 0}
!131 = !{!132, !6, i64 24}
!132 = !{!"trie_s", !130, i64 0, !130, i64 8, !14, i64 16, !6, i64 24}
!133 = distinct !{!133, !9}
!134 = !{!132, !130, i64 0}
!135 = !{!132, !14, i64 16}
!136 = !{!65, !6, i64 9}
!137 = !{!65, !6, i64 10}
!138 = distinct !{!138, !9}
!139 = distinct !{!139, !9}
!140 = distinct !{!140, !9}
!141 = distinct !{!141, !9}
!142 = distinct !{!142, !9}
!143 = distinct !{!143, !9}
!144 = distinct !{!144, !9}
!145 = !{!146, !146, i64 0}
!146 = !{!"p1 short", !14, i64 0}
!147 = distinct !{!147, !9}
!148 = distinct !{!148, !9}
!149 = distinct !{!149, !9}
!150 = !{!151, !151, i64 0}
!151 = !{!"p1 int", !14, i64 0}
!152 = distinct !{!152, !9}
!153 = distinct !{!153, !9}
!154 = distinct !{!154, !9}
!155 = distinct !{!155, !9}
!156 = distinct !{!156, !9}
!157 = distinct !{!157, !9}
!158 = distinct !{!158, !9}
!159 = distinct !{!159, !9}
!160 = distinct !{!160, !9}
!161 = distinct !{!161, !9}
!162 = distinct !{!162, !9}
!163 = distinct !{!163, !9}
!164 = distinct !{!164, !9}
!165 = distinct !{!165, !9}
!166 = distinct !{!166, !9}
!167 = distinct !{!167, !9}
!168 = distinct !{!168, !9}
!169 = !{!170, !170, i64 0}
!170 = !{!"p2 omnipotent char", !171, i64 0}
!171 = !{!"any p2 pointer", !14, i64 0}
!172 = distinct !{!172, !9}
!173 = distinct !{!173, !9}
!174 = distinct !{!174, !9}
!175 = distinct !{!175, !9}
!176 = distinct !{!176, !9}
!177 = distinct !{!177, !9}
!178 = distinct !{!178, !9}
!179 = distinct !{!179, !9}
!180 = distinct !{!180, !9}
!181 = distinct !{!181, !9}
