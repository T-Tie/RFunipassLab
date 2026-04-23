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
@phtoelm = dso_local global ptr null, align 8
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
  %tobool.not = icmp eq ptr %comment, null
  %spec.store.select = select i1 %tobool.not, ptr @.str.8.467, ptr %comment
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef 779316836)
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #36
  %add = add i64 %call, 24
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef %add)
  %conv = zext i32 %size to i64
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef %conv)
  %conv1 = zext i32 %enc to i64
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef %conv1)
  %conv2 = zext i32 %rate to i64
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef %conv2)
  tail call fastcc void @wblong(i32 noundef %fd, i64 noundef 1)
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %spec.store.select) #36
  %call4 = tail call i64 @write(i32 noundef %fd, ptr noundef nonnull %spec.store.select, i64 noundef %call3) #37
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @wblong(i32 noundef %fd, i64 noundef %x) unnamed_addr #0 {
entry:
  %byte = alloca i8, align 1
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 24, %entry ], [ %sub, %for.body ]
  %cmp = icmp sgt i32 %i.0, -1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %byte) #37
  %sh_prom = zext nneg i32 %i.0 to i64
  %shr = lshr i64 %x, %sh_prom
  %conv = trunc i64 %shr to i8
  store i8 %conv, ptr %byte, align 1, !tbaa !5
  %call = call i64 @write(i32 noundef %fd, ptr noundef nonnull %byte, i64 noundef 1) #37
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %byte) #37
  %sub = add nsw i32 %i.0, -8
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
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
  %call5 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %1, i32 noundef 577, i32 noundef 438) #37
  store i32 %call5, ptr @au_fd, align 4, !tbaa !10
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end9, label %if.then11

if.end9:                                          ; preds = %if.else
  %6 = load ptr, ptr @au_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %6) #38
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
  %call25 = tail call i32 (ptr, i32, ...) @open(ptr noundef nonnull %9, i32 noundef 577, i32 noundef 438) #37
  store i32 %call25, ptr @linear_fd, align 4, !tbaa !10
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.else24
  %14 = load ptr, ptr @linear_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %14) #38
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
  %call = tail call i64 @write(i32 noundef %0, ptr noundef %data, i64 noundef %mul) #37
  %cmp7.not = icmp eq i64 %call, %mul
  br i1 %cmp7.not, label %if.end10, label %if.then9

if.then9:                                         ; preds = %if.then2
  tail call void @perror(ptr noundef nonnull @.str.10.497) #38
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
  %call22 = tail call i64 @write(i32 noundef %2, ptr noundef %data, i64 noundef %conv21) #37
  %cmp24.not = icmp eq i64 %call22, %conv21
  br i1 %cmp24.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %if.then16
  tail call void @perror(ptr noundef nonnull @.str.10.497) #38
  br label %if.end55

if.else:                                          ; preds = %if.then16
  %4 = load i32, ptr @au_size, align 4, !tbaa !10
  %add = add i32 %4, %3
  store i32 %add, ptr @au_size, align 4, !tbaa !10
  br label %if.end55

if.then31:                                        ; preds = %if.then13
  %conv32 = zext nneg i32 %n to i64
  %call33 = tail call noalias ptr @malloc(i64 noundef %conv32) #39
  %tobool.not = icmp eq ptr %call33, null
  br i1 %tobool.not, label %if.else48, label %if.then34

if.then34:                                        ; preds = %if.then31
  %add.ptr = getelementptr inbounds nuw i8, ptr %call33, i64 %conv32
  %5 = load ptr, ptr @_l2u, align 8
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then34
  %p.0 = phi ptr [ %call33, %if.then34 ], [ %incdec.ptr38, %while.body ]
  %data.addr.0 = phi ptr [ %data, %if.then34 ], [ %incdec.ptr, %while.body ]
  %cmp35 = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp35, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %data.addr.0, i64 2
  %6 = load i16, ptr %data.addr.0, align 2, !tbaa !18
  %7 = ashr i16 %6, 3
  %idxprom = sext i16 %7 to i64
  %arrayidx = getelementptr inbounds i8, ptr %5, i64 %idxprom
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  store i8 %8, ptr %p.0, align 1, !tbaa !5
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %call40 = tail call i64 @write(i32 noundef %2, ptr noundef nonnull %call33, i64 noundef %conv32) #37
  %cmp42.not = icmp eq i64 %call40, %conv32
  br i1 %cmp42.not, label %if.else45, label %if.then44

if.then44:                                        ; preds = %while.end
  %9 = load ptr, ptr @au_file, align 8, !tbaa !12
  tail call void @perror(ptr noundef %9) #38
  br label %if.end47

if.else45:                                        ; preds = %while.end
  %10 = load i32, ptr @au_size, align 4, !tbaa !10
  %add46 = add i32 %10, %n
  store i32 %add46, ptr @au_size, align 4, !tbaa !10
  br label %if.end47

if.end47:                                         ; preds = %if.else45, %if.then44
  tail call void @free(ptr noundef nonnull %call33) #37
  br label %if.end55

if.else48:                                        ; preds = %if.then31
  %11 = load ptr, ptr @stderr, align 8, !tbaa !21
  %12 = load ptr, ptr @program, align 8, !tbaa !12
  %call49 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.8.82, ptr noundef %12) #40
  br label %if.end55

if.end55:                                         ; preds = %if.end47, %if.else48, %if.then26, %if.else, %if.end10, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @aufile_term() #5 {
entry:
  %0 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %call = tail call i64 @lseek(i32 noundef %0, i64 noundef 0, i32 noundef 1) #37
  %cmp1 = icmp sgt i64 %call, -1
  br i1 %cmp1, label %if.then2, label %if.end7

if.then2:                                         ; preds = %if.then
  %1 = load i32, ptr @au_fd, align 4, !tbaa !10
  %call3 = tail call i32 @ftruncate(i32 noundef %1, i64 noundef %call) #37
  %2 = load i32, ptr @au_fd, align 4, !tbaa !10
  %call4 = tail call i64 @lseek(i32 noundef %2, i64 noundef 8, i32 noundef 0) #37
  %cmp5 = icmp eq i64 %call4, 8
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.then2
  %3 = load i32, ptr @au_fd, align 4, !tbaa !10
  %4 = load i32, ptr @au_size, align 4, !tbaa !10
  %conv = zext i32 %4 to i64
  tail call fastcc void @wblong(i32 noundef %3, i64 noundef %conv)
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.then6, %if.then
  %5 = load i32, ptr @au_fd, align 4, !tbaa !10
  %cmp8.not = icmp eq i32 %5, 1
  br i1 %cmp8.not, label %if.end12, label %if.then10

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @close(i32 noundef %5) #37
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end7
  store i32 -1, ptr @au_fd, align 4, !tbaa !10
  br label %if.end13

if.end13:                                         ; preds = %if.end12, %entry
  %6 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %cmp14 = icmp sgt i32 %6, -1
  br i1 %cmp14, label %if.then16, label %if.end24

if.then16:                                        ; preds = %if.end13
  %call17 = tail call i64 @lseek(i32 noundef %6, i64 noundef 0, i32 noundef 1) #37
  %call18 = tail call i32 @ftruncate(i32 noundef %6, i64 noundef %call17) #37
  %7 = load i32, ptr @linear_fd, align 4, !tbaa !10
  %cmp19.not = icmp eq i32 %7, 1
  br i1 %cmp19.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %if.then16
  %call22 = tail call i32 @close(i32 noundef %7) #37
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
  tail call void @free(ptr noundef nonnull %0) #37
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
  tail call void @abort() #41
  unreachable

if.then8:                                         ; preds = %if.then.thread
  %get = getelementptr inbounds nuw i8, ptr %a, i64 18
  %4 = load i16, ptr %get, align 2, !tbaa !28
  %narrow = tail call i16 @llvm.umax.i16(i16 %4, i16 1)
  %spec.select = zext i16 %narrow to i32
  %add13 = add i32 %n, %spec.select
  %mul16 = mul i32 %add13, %conv38
  %conv17 = zext i32 %mul16 to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv17) #39
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
  tail call void @free(ptr noundef nonnull %.pr) #37
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
  %esize = getelementptr inbounds nuw i8, ptr %a, i64 16
  br label %while.cond

while.cond:                                       ; preds = %while.body, %if.then2
  %5 = phi i32 [ %dec, %if.then2 ], [ %.pre, %while.body ]
  %n.addr.0 = phi i32 [ %n, %if.then2 ], [ %inc, %while.body ]
  %p.0 = phi ptr [ %retval.0.i, %if.then2 ], [ %add.ptr10, %while.body ]
  %cmp = icmp ult i32 %n.addr.0, %5
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nuw i32 %n.addr.0, 1
  %6 = load i16, ptr %esize, align 8, !tbaa !27
  %idx.ext = zext i16 %6 to i64
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 %idx.ext
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %p.0, ptr align 1 %add.ptr, i64 %idx.ext, i1 false)
  %7 = load i16, ptr %esize, align 8, !tbaa !27
  %idx.ext9 = zext i16 %7 to i64
  %add.ptr10 = getelementptr inbounds nuw i8, ptr %p.0, i64 %idx.ext9
  %.pre = load i32, ptr %items, align 8, !tbaa !26
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %while.cond
  %8 = load i16, ptr %esize, align 8, !tbaa !27
  %conv12 = zext i16 %8 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %p.0, i8 0, i64 %conv12, i1 false)
  br label %cleanup

if.else:                                          ; preds = %if.then
  tail call void @abort() #41
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
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mSec_per_frame) #37
  store double 1.000000e+01, ptr %mSec_per_frame, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %impulse) #37
  store i32 0, ptr %impulse, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %casc) #37
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
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %casc) #37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %impulse) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mSec_per_frame) #37
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #37
  %overflow_arg_area_p = getelementptr inbounds nuw i8, ptr %ap, i64 8
  %0 = getelementptr inbounds nuw i8, ptr %ap, i64 16
  br label %while.cond.outer.outer

while.cond.outer.outer:                           ; preds = %for.cond, %entry
  %done_module.0.ph.ph = phi i32 [ 0, %entry ], [ %done_module.1, %for.cond ]
  %i.0.ph.ph = phi i32 [ 0, %entry ], [ %i.0, %for.cond ]
  %argc.addr.0.ph.ph = phi i32 [ %argc, %entry ], [ %sub, %for.cond ]
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.outer.outer, %if.else207
  %done_module.0.ph = phi i32 [ %done_module.2144, %if.else207 ], [ %done_module.0.ph.ph, %while.cond.outer.outer ]
  %i.0.ph = phi i32 [ %inc208, %if.else207 ], [ %i.0.ph.ph, %while.cond.outer.outer ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.else210
  %i.0 = phi i32 [ %inc211, %if.else210 ], [ %i.0.ph, %while.cond.outer ]
  %cmp = icmp slt i32 %i.0, %argc.addr.0.ph.ph
  br i1 %cmp, label %while.body, label %while.end213

while.body:                                       ; preds = %while.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds ptr, ptr %argv, i64 %idxprom
  %1 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %1, i64 1
  %2 = load i8, ptr %incdec.ptr, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %if.else210, label %land.lhs.true

land.lhs.true:                                    ; preds = %while.body
  %3 = load i8, ptr %1, align 1, !tbaa !5
  switch i8 %3, label %if.else210 [
    i8 45, label %while.cond6.preheader
    i8 43, label %while.cond6.preheader
  ]

while.cond6.preheader:                            ; preds = %land.lhs.true, %land.lhs.true
  %incdec.ptr.le = getelementptr inbounds nuw i8, ptr %1, i64 1
  %cmp4.le = icmp eq i8 %3, 43
  br label %while.cond6

while.cond6:                                      ; preds = %while.cond6.preheader, %while.end
  %off.0 = phi i32 [ %off.3, %while.end ], [ 1, %while.cond6.preheader ]
  %s.0 = phi ptr [ %incdec.ptr180, %while.end ], [ %incdec.ptr.le, %while.cond6.preheader ]
  %done_module.1 = phi i32 [ %done_module.3.ph, %while.end ], [ %done_module.0.ph, %while.cond6.preheader ]
  %4 = load i8, ptr %s.0, align 1, !tbaa !5
  %tobool7.not = icmp eq i8 %4, 0
  br i1 %tobool7.not, label %while.end195, label %while.body8

while.body8:                                      ; preds = %while.cond6
  call void @llvm.va_start.p0(ptr nonnull %ap)
  br label %while.cond9.outer

while.cond9.outer:                                ; preds = %while.cond9.outer.backedge, %while.body8
  %done_module.3.ph = phi i32 [ %done_module.1, %while.body8 ], [ %inc, %while.cond9.outer.backedge ]
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
  %call = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %8) #36
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
  %call50 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s.0, ptr noundef nonnull dereferenceable(6) @.str.1.447) #36
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then52, label %if.else86

if.then52:                                        ; preds = %vaarg.end48
  store i32 1, ptr @help_only, align 4, !tbaa !10
  %inc = add nsw i32 %done_module.3.ph, 1
  %tobool53.not = icmp eq i32 %done_module.3.ph, 0
  br i1 %tobool53.not, label %if.then54, label %if.end

if.then54:                                        ; preds = %if.then52
  %28 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call55 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.2.448, ptr noundef %module) #40
  br label %if.end

if.end:                                           ; preds = %if.then54, %if.then52
  %tobool56.not = icmp eq ptr %26, null
  br i1 %tobool56.not, label %if.else81, label %if.then57

if.then57:                                        ; preds = %if.end
  %call58 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 37) #36
  %tobool59.not = icmp eq ptr %call58, null
  %29 = load ptr, ptr @stderr, align 8, !tbaa !21
  br i1 %tobool59.not, label %if.else77, label %if.then60

if.then60:                                        ; preds = %if.then57
  %add.ptr = getelementptr inbounds nuw i8, ptr %call58, i64 1
  %call61 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.3.449, ptr noundef nonnull %8, ptr noundef nonnull %add.ptr) #40
  %call62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %call58) #36
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
  %call66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull %26, double noundef %32) #40
  br label %sw.epilog

sw.bb67:                                          ; preds = %if.then60, %if.then60
  %33 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %cmp70 = icmp eq i8 %33, 108
  %34 = load ptr, ptr @stderr, align 8, !tbaa !21
  br i1 %cmp70, label %if.then72, label %if.else

if.then72:                                        ; preds = %sw.bb67
  %35 = load i64, ptr %25, align 8, !tbaa !15
  %call73 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull %26, i64 noundef %35) #40
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb67
  %36 = load i32, ptr %25, align 4, !tbaa !10
  %call74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef nonnull %26, i32 noundef %36) #40
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then72, %if.else, %sw.bb, %if.then60
  %37 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call76 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %37, ptr noundef nonnull @.str.4.450, ptr noundef %27) #40
  br label %while.cond9.outer.backedge

if.else77:                                        ; preds = %if.then57
  %38 = load ptr, ptr %25, align 8, !tbaa !12
  %tobool78.not = icmp eq ptr %38, null
  %spec.select = select i1 %tobool78.not, ptr @.str.8.467, ptr %38
  %call79 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %29, ptr noundef nonnull @.str.5.452, ptr noundef nonnull %8, ptr noundef nonnull %spec.select, ptr noundef %27) #40
  br label %while.cond9.outer.backedge

if.else81:                                        ; preds = %if.end
  %39 = load ptr, ptr @stderr, align 8, !tbaa !21
  %40 = load i32, ptr %25, align 4, !tbaa !10
  %tobool82.not = icmp eq i32 %40, 0
  %cond83 = select i1 %tobool82.not, ptr @.str.9.454, ptr @.str.8.453
  %call84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.7.455, ptr noundef nonnull %8, ptr noundef nonnull %cond83, ptr noundef %27) #40
  br label %while.cond9.outer.backedge

while.cond9.outer.backedge:                       ; preds = %if.else81, %if.else77, %sw.epilog
  br label %while.cond9.outer

if.else86:                                        ; preds = %vaarg.end48
  %cmp87 = icmp sgt i32 %conv13, 1
  br i1 %cmp87, label %land.lhs.true91, label %if.else132

land.lhs.true91:                                  ; preds = %if.else86
  %call92 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %s.0, ptr noundef nonnull dereferenceable(1) %8) #36
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.then94, label %while.cond9.backedge

if.then94:                                        ; preds = %land.lhs.true91
  %tobool95.not = icmp eq ptr %26, null
  br i1 %tobool95.not, label %if.else121, label %if.then96

if.then96:                                        ; preds = %if.then94
  %add = add nsw i32 %off.0, %i.0
  %cmp97 = icmp slt i32 %add, %argc.addr.0.ph.ph
  br i1 %cmp97, label %if.then99, label %if.else117

if.then99:                                        ; preds = %if.then96
  %inc101 = add nsw i32 %off.0, 1
  %idxprom103 = sext i32 %add to i64
  %arrayidx104 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom103
  %41 = load ptr, ptr %arrayidx104, align 8, !tbaa !12
  %call105 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 37) #36
  %tobool106.not = icmp eq ptr %call105, null
  br i1 %tobool106.not, label %if.else115, label %if.then107

if.then107:                                       ; preds = %if.then99
  %call108 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %41, ptr noundef nonnull %26, ptr noundef %25) #37
  %cmp109.not = icmp eq i32 %call108, 1
  br i1 %cmp109.not, label %if.end128, label %if.then111

if.then111:                                       ; preds = %if.then107
  %42 = load ptr, ptr @stderr, align 8, !tbaa !21
  %43 = load ptr, ptr %argv, align 8, !tbaa !12
  %call113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %42, ptr noundef nonnull @.str.10.456, ptr noundef %43, ptr noundef %41, ptr noundef nonnull %8) #40
  br label %if.end128

if.else115:                                       ; preds = %if.then99
  store ptr %41, ptr %25, align 8, !tbaa !12
  br label %if.end128

if.else117:                                       ; preds = %if.then96
  %44 = load ptr, ptr @stderr, align 8, !tbaa !21
  %45 = load ptr, ptr %argv, align 8, !tbaa !12
  %call119 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.11.457, ptr noundef %45, ptr noundef nonnull %8) #40
  br label %if.end128

if.else121:                                       ; preds = %if.then94
  br i1 %cmp4.le, label %if.then124, label %if.else125

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
  %off.4 = phi i32 [ %off.0, %if.else117 ], [ %off.0, %if.then124 ], [ %off.0, %if.else125 ], [ %inc101, %if.then107 ], [ %inc101, %if.then111 ], [ %inc101, %if.else115 ]
  %idx.ext = and i64 %call, 2147483647
  br label %while.end

if.else132:                                       ; preds = %if.else86
  %47 = load i8, ptr %s.0, align 1, !tbaa !5
  %48 = load i8, ptr %8, align 1, !tbaa !5
  %cmp135 = icmp eq i8 %47, %48
  br i1 %cmp135, label %if.then137, label %while.cond9.backedge

while.cond9.backedge:                             ; preds = %if.else132, %land.lhs.true91
  br label %while.cond9

if.then137:                                       ; preds = %if.else132
  %tobool138.not = icmp eq ptr %26, null
  br i1 %tobool138.not, label %if.else165, label %if.then139

if.then139:                                       ; preds = %if.then137
  %add140 = add nsw i32 %off.0, %i.0
  %cmp141 = icmp slt i32 %add140, %argc.addr.0.ph.ph
  br i1 %cmp141, label %if.then143, label %if.else161

if.then143:                                       ; preds = %if.then139
  %inc145 = add nsw i32 %off.0, 1
  %idxprom147 = sext i32 %add140 to i64
  %arrayidx148 = getelementptr inbounds ptr, ptr %argv, i64 %idxprom147
  %49 = load ptr, ptr %arrayidx148, align 8, !tbaa !12
  %call149 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %26, i32 noundef 37) #36
  %tobool150.not = icmp eq ptr %call149, null
  br i1 %tobool150.not, label %if.else159, label %if.then151

if.then151:                                       ; preds = %if.then143
  %call152 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %49, ptr noundef nonnull %26, ptr noundef %25) #37
  %cmp153.not = icmp eq i32 %call152, 1
  br i1 %cmp153.not, label %while.end, label %if.then155

if.then155:                                       ; preds = %if.then151
  %50 = load ptr, ptr @stderr, align 8, !tbaa !21
  %51 = load ptr, ptr %argv, align 8, !tbaa !12
  %call157 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef nonnull @.str.10.456, ptr noundef %51, ptr noundef %49, ptr noundef nonnull %8) #40
  br label %while.end

if.else159:                                       ; preds = %if.then143
  store ptr %49, ptr %25, align 8, !tbaa !12
  br label %while.end

if.else161:                                       ; preds = %if.then139
  %52 = load ptr, ptr @stderr, align 8, !tbaa !21
  %53 = load ptr, ptr %argv, align 8, !tbaa !12
  %call163 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %52, ptr noundef nonnull @.str.11.457, ptr noundef %53, ptr noundef nonnull %8) #40
  br label %while.end

if.else165:                                       ; preds = %if.then137
  br i1 %cmp4.le, label %if.then170, label %if.else173

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
  %off.3 = phi i32 [ %off.4, %if.end128 ], [ %inc145, %if.else159 ], [ %inc145, %if.then155 ], [ %inc145, %if.then151 ], [ %off.0, %if.then170 ], [ %off.0, %if.else173 ], [ %off.0, %if.else161 ]
  %incdec.ptr180 = getelementptr inbounds nuw i8, ptr %s.0, i64 %.sink
  call void @llvm.va_end.p0(ptr nonnull %ap)
  br label %while.cond6

while.end195:                                     ; preds = %while.cond6
  %cmp196.not = icmp eq i32 %off.0, 0
  br i1 %cmp196.not, label %if.else207, label %if.then198

if.then198:                                       ; preds = %while.end195
  %sub = sub nsw i32 %argc.addr.0.ph.ph, %off.0
  %55 = sext i32 %sub to i64
  %56 = sext i32 %off.0 to i64
  %invariant.gep = getelementptr ptr, ptr %argv, i64 %56
  br label %for.cond

for.cond:                                         ; preds = %for.body, %if.then198
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %idxprom, %if.then198 ]
  %cmp199.not = icmp sgt i64 %indvars.iv, %55
  br i1 %cmp199.not, label %while.cond.outer.outer, label %for.body, !llvm.loop !40

for.body:                                         ; preds = %for.cond
  %gep = getelementptr ptr, ptr %invariant.gep, i64 %indvars.iv
  %57 = load ptr, ptr %gep, align 8, !tbaa !12
  %arrayidx205 = getelementptr inbounds ptr, ptr %argv, i64 %indvars.iv
  store ptr %57, ptr %arrayidx205, align 8, !tbaa !12
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !41

if.else207:                                       ; preds = %while.end195.thread, %while.end195
  %done_module.2144 = phi i32 [ %done_module.3.ph, %while.end195.thread ], [ %done_module.1, %while.end195 ]
  %inc208 = add nsw i32 %i.0, 1
  br label %while.cond.outer, !llvm.loop !40

if.else210:                                       ; preds = %land.lhs.true, %while.body
  %inc211 = add nsw i32 %i.0, 1
  br label %while.cond, !llvm.loop !40

while.end213:                                     ; preds = %while.cond
  %58 = load i32, ptr @help_only, align 4, !tbaa !10
  %tobool214 = icmp ne i32 %58, 0
  %tobool216 = icmp ne i32 %done_module.0.ph, 0
  %or.cond2 = select i1 %tobool214, i1 %tobool216, i1 false
  br i1 %or.cond2, label %if.then217, label %if.end219

if.then217:                                       ; preds = %while.end213
  %59 = load ptr, ptr @stderr, align 8, !tbaa !21
  %fputc = call i32 @fputc(i32 10, ptr %59)
  br label %if.end219

if.end219:                                        ; preds = %if.then217, %while.end213
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #37
  ret i32 %argc.addr.0.ph.ph
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
  %stress_s = alloca %struct.slope_t, align 8
  %stress_e = alloca %struct.slope_t, align 8
  %start = alloca [19 x %struct.slope_t], align 16
  %end = alloca [19 x %struct.slope_t], align 16
  %tp = alloca [19 x float], align 16
  call void @llvm.lifetime.start.p0(i64 228, ptr nonnull %flt) #37
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %pars) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stress_s) #37
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %stress_e) #37
  %0 = load i64, ptr @def_pars, align 8, !tbaa !42
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(320) %pars, ptr noundef nonnull align 8 dereferenceable(320) @def_pars, i64 320, i1 false), !tbaa.struct !44
  %1 = load float, ptr getelementptr inbounds nuw (i8, ptr @Elements, i64 40), align 8, !tbaa !45
  %conv2 = fptosi float %1 to i64
  %FNPhz = getelementptr inbounds nuw i8, ptr %pars, i64 128
  store i64 %conv2, ptr %FNPhz, align 8, !tbaa !48
  %B1hz = getelementptr inbounds nuw i8, ptr %pars, i64 24
  store i64 60, ptr %B1hz, align 8, !tbaa !49
  %B1phz = getelementptr inbounds nuw i8, ptr %pars, i64 200
  store i64 60, ptr %B1phz, align 8, !tbaa !50
  %B2hz = getelementptr inbounds nuw i8, ptr %pars, i64 40
  store i64 90, ptr %B2hz, align 8, !tbaa !51
  %B2phz = getelementptr inbounds nuw i8, ptr %pars, i64 216
  store i64 90, ptr %B2phz, align 8, !tbaa !52
  %B3hz = getelementptr inbounds nuw i8, ptr %pars, i64 56
  store i64 150, ptr %B3hz, align 8, !tbaa !53
  %B3phz = getelementptr inbounds nuw i8, ptr %pars, i64 232
  store i64 150, ptr %B3phz, align 8, !tbaa !54
  %2 = load i64, ptr getelementptr inbounds nuw (i8, ptr @def_pars, i64 248), align 8, !tbaa !55
  %B4phz = getelementptr inbounds nuw i8, ptr %pars, i64 248
  store i64 %2, ptr %B4phz, align 8, !tbaa !55
  tail call void @parwave_init(ptr noundef nonnull @klatt_global)
  %t = getelementptr inbounds nuw i8, ptr %stress_s, i64 4
  store i32 40, ptr %t, align 4, !tbaa !56
  %t3 = getelementptr inbounds nuw i8, ptr %stress_e, i64 4
  store i32 40, ptr %t3, align 4, !tbaa !56
  store float 0.000000e+00, ptr %stress_e, align 8, !tbaa !58
  %3 = load double, ptr @frac, align 8, !tbaa !30
  %conv11 = fptrunc double %3 to float
  %sub = fsub float 1.000000e+00, %conv11
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 19
  br i1 %exitcond.not, label %while.cond.preheader, label %for.body

while.cond.preheader:                             ; preds = %for.cond
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
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.end351, %while.cond.preheader
  %top.0.ph = phi float [ %top.2, %if.end351 ], [ %conv1, %while.cond.preheader ]
  %ntstress.0.ph = phi i32 [ %ntstress.2, %if.end351 ], [ 0, %while.cond.preheader ]
  %tstress.0.ph = phi i32 [ %tstress.2, %if.end351 ], [ 0, %while.cond.preheader ]
  %i.0.ph = phi i32 [ %inc28, %if.end351 ], [ 0, %while.cond.preheader ]
  %le.0.ph = phi ptr [ %arrayidx23, %if.end351 ], [ @Elements, %while.cond.preheader ]
  %samp.0.ph = phi ptr [ %samp.2, %if.end351 ], [ %samp_base, %while.cond.preheader ]
  br label %while.cond

for.body:                                         ; preds = %for.cond
  %arrayidx6 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr getelementptr inbounds nuw (i8, ptr @Elements, i64 40), i64 0, i64 %indvars.iv
  %4 = load float, ptr %arrayidx6, align 4, !tbaa !45
  %arrayidx9 = getelementptr inbounds nuw [19 x %struct.filter_t], ptr %flt, i64 0, i64 %indvars.iv
  %v10 = getelementptr inbounds nuw i8, ptr %arrayidx9, i64 8
  store float %4, ptr %v10, align 4, !tbaa !59
  store float %conv11, ptr %arrayidx9, align 4, !tbaa !61
  %b = getelementptr inbounds nuw i8, ptr %arrayidx9, i64 4
  store float %sub, ptr %b, align 4, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !63

while.cond:                                       ; preds = %while.cond.outer, %while.body
  %i.0 = phi i32 [ %inc28, %while.body ], [ %i.0.ph, %while.cond.outer ]
  %le.0 = phi ptr [ %arrayidx23, %while.body ], [ %le.0.ph, %while.cond.outer ]
  %cmp17 = icmp ult i32 %i.0, %nelm
  br i1 %cmp17, label %while.body, label %while.end353

while.body:                                       ; preds = %while.cond
  %inc19 = add nuw i32 %i.0, 1
  %idxprom20 = zext i32 %i.0 to i64
  %arrayidx21 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom20
  %5 = load i8, ptr %arrayidx21, align 1, !tbaa !5
  %idxprom22 = zext i8 %5 to i64
  %arrayidx23 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom22
  %idxprom25 = zext i32 %inc19 to i64
  %arrayidx26 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom25
  %6 = load i8, ptr %arrayidx26, align 1, !tbaa !5
  %inc28 = add i32 %i.0, 3
  %cmp29.not = icmp eq i8 %6, 0
  br i1 %cmp29.not, label %while.cond, label %if.then, !llvm.loop !64

if.then:                                          ; preds = %while.body
  %conv27.le = zext i8 %6 to i32
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
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %start) #37
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %end) #37
  %rk = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 8
  %8 = load i8, ptr %rk, align 8, !tbaa !65
  %rk39 = getelementptr inbounds nuw i8, ptr %le.0, i64 8
  %9 = load i8, ptr %rk39, align 8, !tbaa !65
  %cmp41 = icmp sgt i8 %8, %9
  %10 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool.not = icmp eq ptr %10, null
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %cond.end
  br i1 %tobool.not, label %if.end, label %if.then44

if.then44:                                        ; preds = %if.then43
  %11 = load ptr, ptr %le.0, align 8, !tbaa !67
  %12 = load ptr, ptr %arrayidx23, align 16, !tbaa !67
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.1.460, ptr noundef %11, ptr noundef %12) #37
  br label %if.end

if.end:                                           ; preds = %if.then44, %if.then43
  call fastcc void @set_trans(ptr noundef %start, ptr noundef nonnull %arrayidx23, ptr noundef nonnull %le.0, i32 noundef 0)
  br label %if.end53

if.else:                                          ; preds = %cond.end
  br i1 %tobool.not, label %if.end51, label %if.then47

if.then47:                                        ; preds = %if.else
  %13 = load ptr, ptr %le.0, align 8, !tbaa !67
  %14 = load ptr, ptr %arrayidx23, align 16, !tbaa !67
  %call50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %10, ptr noundef nonnull @.str.2.461, ptr noundef %13, ptr noundef %14) #37
  br label %if.end51

if.end51:                                         ; preds = %if.then47, %if.else
  call fastcc void @set_trans(ptr noundef %start, ptr noundef nonnull %le.0, ptr noundef nonnull %arrayidx23, i32 noundef 1)
  br label %if.end53

if.end53:                                         ; preds = %if.end51, %if.end
  %rk54 = getelementptr inbounds nuw i8, ptr %cond, i64 8
  %15 = load i8, ptr %rk54, align 8, !tbaa !65
  %16 = load i8, ptr %rk, align 8, !tbaa !65
  %cmp58 = icmp sgt i8 %15, %16
  %17 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool61.not = icmp eq ptr %17, null
  br i1 %cmp58, label %if.then60, label %if.else68

if.then60:                                        ; preds = %if.end53
  br i1 %tobool61.not, label %if.end66, label %if.then62

if.then62:                                        ; preds = %if.then60
  %18 = load ptr, ptr %arrayidx23, align 16, !tbaa !67
  %19 = load ptr, ptr %cond, align 8, !tbaa !67
  %call65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.1.460, ptr noundef %18, ptr noundef %19) #37
  br label %if.end66

if.end66:                                         ; preds = %if.then62, %if.then60
  call fastcc void @set_trans(ptr noundef %end, ptr noundef nonnull %cond, ptr noundef nonnull %arrayidx23, i32 noundef 1)
  br label %if.end76

if.else68:                                        ; preds = %if.end53
  br i1 %tobool61.not, label %if.end74, label %if.then70

if.then70:                                        ; preds = %if.else68
  %20 = load ptr, ptr %arrayidx23, align 16, !tbaa !67
  %21 = load ptr, ptr %cond, align 8, !tbaa !67
  %call73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %17, ptr noundef nonnull @.str.2.461, ptr noundef %20, ptr noundef %21) #37
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.else68
  call fastcc void @set_trans(ptr noundef %end, ptr noundef nonnull %arrayidx23, ptr noundef nonnull %cond, i32 noundef 0)
  br label %if.end76

if.end76:                                         ; preds = %if.end74, %if.end66
  %22 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool77.not = icmp eq ptr %22, null
  br i1 %tobool77.not, label %if.end124, label %if.then78

if.then78:                                        ; preds = %if.end76
  %23 = load ptr, ptr %arrayidx23, align 16, !tbaa !67
  %call81 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %22, ptr noundef nonnull @.str.3.462, ptr noundef %23) #37
  br label %for.cond82

for.cond82:                                       ; preds = %for.body85, %if.then78
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.body85 ], [ 0, %if.then78 ]
  %exitcond158.not = icmp eq i64 %indvars.iv155, 19
  %24 = load ptr, ptr @par_file, align 8, !tbaa !21
  br i1 %exitcond158.not, label %for.end93, label %for.body85

for.body85:                                       ; preds = %for.cond82
  %tobool86.not = icmp eq i64 %indvars.iv155, 0
  %cond87 = select i1 %tobool86.not, i32 35, i32 32
  %arrayidx89 = getelementptr inbounds nuw [19 x ptr], ptr @Ep_name, i64 0, i64 %indvars.iv155
  %25 = load ptr, ptr %arrayidx89, align 8, !tbaa !12
  %call90 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.4.463, i32 noundef %cond87, ptr noundef %25) #37
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  br label %for.cond82, !llvm.loop !68

for.end93:                                        ; preds = %for.cond82
  %fputc = tail call i32 @fputc(i32 10, ptr %24)
  br label %for.cond95

for.cond95:                                       ; preds = %for.body98, %for.end93
  %indvars.iv159 = phi i64 [ %indvars.iv.next160, %for.body98 ], [ 0, %for.end93 ]
  %exitcond162.not = icmp eq i64 %indvars.iv159, 19
  %26 = load ptr, ptr @par_file, align 8, !tbaa !21
  br i1 %exitcond162.not, label %for.end108, label %for.body98

for.body98:                                       ; preds = %for.cond95
  %tobool99.not = icmp eq i64 %indvars.iv159, 0
  %cond100 = select i1 %tobool99.not, i32 35, i32 32
  %arrayidx102 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %indvars.iv159
  %27 = load float, ptr %arrayidx102, align 8, !tbaa !58
  %conv104 = fpext float %27 to double
  %call105 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef nonnull @.str.6.465, i32 noundef %cond100, double noundef %conv104) #37
  %indvars.iv.next160 = add nuw nsw i64 %indvars.iv159, 1
  br label %for.cond95, !llvm.loop !69

for.end108:                                       ; preds = %for.cond95
  %fputc113 = tail call i32 @fputc(i32 10, ptr %26)
  br label %for.cond110

for.cond110:                                      ; preds = %for.body113, %for.end108
  %indvars.iv163 = phi i64 [ %indvars.iv.next164, %for.body113 ], [ 0, %for.end108 ]
  %exitcond166.not = icmp eq i64 %indvars.iv163, 19
  %28 = load ptr, ptr @par_file, align 8, !tbaa !21
  br i1 %exitcond166.not, label %for.end122, label %for.body113

for.body113:                                      ; preds = %for.cond110
  %tobool114.not = icmp eq i64 %indvars.iv163, 0
  %cond115 = select i1 %tobool114.not, i32 35, i32 32
  %t118 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %indvars.iv163, i32 1
  %29 = load i32, ptr %t118, align 4, !tbaa !56
  %call119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef nonnull @.str.7.466, i32 noundef %cond115, i32 noundef %29) #37
  %indvars.iv.next164 = add nuw nsw i64 %indvars.iv163, 1
  br label %for.cond110, !llvm.loop !70

for.end122:                                       ; preds = %for.cond110
  %fputc114 = tail call i32 @fputc(i32 10, ptr %28)
  br label %if.end124

if.end124:                                        ; preds = %for.end122, %if.end76
  %p225 = getelementptr inbounds nuw i8, ptr %arrayidx23, i64 40
  br label %for.cond125

for.cond125:                                      ; preds = %if.end311, %if.end124
  %top.2 = phi float [ %top.0.ph, %if.end124 ], [ %conv314, %if.end311 ]
  %ntstress.2 = phi i32 [ %ntstress.0.ph, %if.end124 ], [ %ntstress.3, %if.end311 ]
  %tstress.2 = phi i32 [ %tstress.0.ph, %if.end124 ], [ %inc317, %if.end311 ]
  %t37.0 = phi i32 [ 0, %if.end124 ], [ %inc316, %if.end311 ]
  %samp.2 = phi ptr [ %samp.0.ph, %if.end124 ], [ %add.ptr289, %if.end311 ]
  %exitcond175.not = icmp eq i32 %t37.0, %conv27.le
  br i1 %exitcond175.not, label %for.end318, label %for.body128

for.body128:                                      ; preds = %for.cond125
  %conv129 = fpext float %top.2 to double
  %mul130 = fmul double %conv129, 8.000000e-01
  %conv131 = fptrunc double %mul130 to float
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %tp) #37
  %cmp133 = icmp eq i32 %tstress.2, %ntstress.2
  br i1 %cmp133, label %if.then135, label %if.end212

if.then135:                                       ; preds = %for.body128
  %30 = load i64, ptr %stress_e, align 8
  store i64 %30, ptr %stress_s, align 8
  br label %while.cond137

while.cond137:                                    ; preds = %cleanup, %if.then135
  %ntstress.4 = phi i32 [ %conv27.le, %if.then135 ], [ %ntstress.6, %cleanup ]
  %j136.0 = phi i32 [ %inc28, %if.then135 ], [ %inc165, %cleanup ]
  %cmp138.not = icmp ugt i32 %j136.0, %nelm
  br i1 %cmp138.not, label %if.end212, label %while.body140

while.body140:                                    ; preds = %while.cond137
  %cmp141 = icmp ult i32 %j136.0, %nelm
  br i1 %cmp141, label %cond.true143, label %cond.end150

cond.true143:                                     ; preds = %while.body140
  %inc144 = add nuw i32 %j136.0, 1
  %idxprom145 = zext i32 %j136.0 to i64
  %arrayidx146 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom145
  %31 = load i8, ptr %arrayidx146, align 1, !tbaa !5
  %idxprom147 = zext i8 %31 to i64
  %arrayidx148 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom147
  br label %cond.end150

cond.end150:                                      ; preds = %while.body140, %cond.true143
  %j136.1 = phi i32 [ %inc144, %cond.true143 ], [ %j136.0, %while.body140 ]
  %cond151 = phi ptr [ %arrayidx148, %cond.true143 ], [ @Elements, %while.body140 ]
  %cmp152 = icmp ult i32 %j136.1, %nelm
  br i1 %cmp152, label %cond.true154, label %cond.end160

cond.true154:                                     ; preds = %cond.end150
  %inc155 = add nuw i32 %j136.1, 1
  %idxprom156 = zext i32 %j136.1 to i64
  %arrayidx157 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom156
  %32 = load i8, ptr %arrayidx157, align 1, !tbaa !5
  %conv158 = zext i8 %32 to i32
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
  %33 = load i8, ptr %arrayidx167, align 1, !tbaa !5
  %tobool172.not = icmp eq i8 %33, 0
  br i1 %tobool172.not, label %lor.lhs.false, label %if.then176.split.loop.exit136

lor.lhs.false:                                    ; preds = %cond.end170
  %feat = getelementptr inbounds nuw i8, ptr %cond151, i64 32
  %34 = load i64, ptr %feat, align 8, !tbaa !71
  %and = and i64 %34, 268435456
  %tobool173.not = icmp eq i64 %and, 0
  br i1 %tobool173.not, label %cleanup, label %if.end181

if.then176.split.loop.exit136:                    ; preds = %cond.end170
  %conv168.le = zext i8 %33 to i32
  br label %if.then176

if.then176:                                       ; preds = %cond.end160, %if.then176.split.loop.exit136
  %cond171125 = phi i32 [ %conv168.le, %if.then176.split.loop.exit136 ], [ 3, %cond.end160 ]
  %j136.3123 = phi i32 [ %inc165, %if.then176.split.loop.exit136 ], [ %j136.2, %cond.end160 ]
  %conv177 = uitofp nneg i32 %cond171125 to float
  %div = fdiv float %conv177, 3.000000e+00
  br label %if.end181

if.end181:                                        ; preds = %lor.lhs.false, %if.then176
  %cond171124 = phi i32 [ %cond171125, %if.then176 ], [ 0, %lor.lhs.false ]
  %j136.3122 = phi i32 [ %j136.3123, %if.then176 ], [ %inc165, %lor.lhs.false ]
  %storemerge = phi float [ %div, %if.then176 ], [ 0x3FB99999A0000000, %lor.lhs.false ]
  store float %storemerge, ptr %stress_e, align 8, !tbaa !58
  br label %do.body

do.body:                                          ; preds = %land.rhs, %if.end181
  %j136.4 = phi i32 [ %j136.3122, %if.end181 ], [ %inc200, %land.rhs ]
  %du.0 = phi i32 [ %cond161, %if.end181 ], [ %conv196, %land.rhs ]
  %d.0 = phi i32 [ 0, %if.end181 ], [ %add, %land.rhs ]
  %add = add i32 %d.0, %du.0
  %cmp182 = icmp ult i32 %j136.4, %nelm
  br i1 %cmp182, label %cond.true184, label %cond.end191

cond.true184:                                     ; preds = %do.body
  %inc185 = add nuw i32 %j136.4, 1
  %idxprom186 = zext i32 %j136.4 to i64
  %arrayidx187 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom186
  %35 = load i8, ptr %arrayidx187, align 1, !tbaa !5
  %idxprom188 = zext i8 %35 to i64
  %arrayidx189 = getelementptr inbounds nuw [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom188
  br label %cond.end191

cond.end191:                                      ; preds = %do.body, %cond.true184
  %j136.5 = phi i32 [ %inc185, %cond.true184 ], [ %j136.4, %do.body ]
  %cond192 = phi ptr [ %arrayidx189, %cond.true184 ], [ @Elements, %do.body ]
  %feat197 = getelementptr inbounds nuw i8, ptr %cond192, i64 32
  %36 = load i64, ptr %feat197, align 8, !tbaa !71
  %and198 = and i64 %36, 268435456
  %tobool199.not = icmp eq i64 %and198, 0
  br i1 %tobool199.not, label %cleanup.thread, label %land.rhs

land.rhs:                                         ; preds = %cond.end191
  %inc193 = add i32 %j136.5, 1
  %idxprom194 = zext i32 %j136.5 to i64
  %arrayidx195 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom194
  %37 = load i8, ptr %arrayidx195, align 1, !tbaa !5
  %conv196 = zext i8 %37 to i32
  %inc200 = add i32 %j136.5, 2
  %idxprom201 = zext i32 %inc193 to i64
  %arrayidx202 = getelementptr inbounds nuw i8, ptr %elm, i64 %idxprom201
  %38 = load i8, ptr %arrayidx202, align 1, !tbaa !5
  %conv203 = zext i8 %38 to i32
  %cmp204 = icmp eq i32 %cond171124, %conv203
  br i1 %cmp204, label %do.body, label %cleanup.thread, !llvm.loop !72

cleanup.thread:                                   ; preds = %land.rhs, %cond.end191
  %div206117 = lshr i32 %add, 1
  %ntstress.6129 = add i32 %div206117, %ntstress.4
  br label %if.end212

cleanup:                                          ; preds = %lor.lhs.false
  %ntstress.6 = add i32 %cond161, %ntstress.4
  br label %while.cond137

if.end212:                                        ; preds = %while.cond137, %cleanup.thread, %for.body128
  %ntstress.3 = phi i32 [ %ntstress.2, %for.body128 ], [ %ntstress.6129, %cleanup.thread ], [ %ntstress.4, %while.cond137 ]
  %tstress.3 = phi i32 [ %tstress.2, %for.body128 ], [ 0, %cleanup.thread ], [ 0, %while.cond137 ]
  br label %for.cond213

for.cond213:                                      ; preds = %for.body216, %if.end212
  %indvars.iv167 = phi i64 [ %indvars.iv.next168, %for.body216 ], [ 0, %if.end212 ]
  %exitcond170.not = icmp eq i64 %indvars.iv167, 19
  br i1 %exitcond170.not, label %for.end235, label %for.body216

for.body216:                                      ; preds = %for.cond213
  %add.ptr = getelementptr inbounds nuw %struct.filter_t, ptr %flt, i64 %indvars.iv167
  %arrayidx222 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %start, i64 0, i64 %indvars.iv167
  %arrayidx224 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %indvars.iv167
  %arrayidx227 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p225, i64 0, i64 %indvars.iv167
  %39 = load float, ptr %arrayidx227, align 4, !tbaa !45
  %call229 = call fastcc float @interpolate(ptr noundef %arrayidx222, ptr noundef %arrayidx224, float noundef %39, i32 noundef %t37.0, i32 noundef %conv27.le)
  %40 = load float, ptr %add.ptr, align 4, !tbaa !61
  %b.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 4
  %41 = load float, ptr %b.i, align 4, !tbaa !62
  %v1.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 8
  %42 = load float, ptr %v1.i, align 4, !tbaa !59
  %mul2.i = fmul float %41, %42
  %43 = tail call float @llvm.fmuladd.f32(float %40, float %call229, float %mul2.i)
  store float %43, ptr %v1.i, align 4, !tbaa !59
  %arrayidx232 = getelementptr inbounds nuw [19 x float], ptr %tp, i64 0, i64 %indvars.iv167
  store float %43, ptr %arrayidx232, align 4, !tbaa !73
  %indvars.iv.next168 = add nuw nsw i64 %indvars.iv167, 1
  br label %for.cond213, !llvm.loop !74

for.end235:                                       ; preds = %for.cond213
  %sub236 = fsub float %top.2, %conv131
  %call237 = call fastcc float @interpolate(ptr noundef %stress_s, ptr noundef %stress_e, float noundef 0.000000e+00, i32 noundef %tstress.3, i32 noundef %ntstress.3)
  %44 = tail call float @llvm.fmuladd.f32(float %sub236, float %call237, float %conv131)
  %conv239 = fptosi float %44 to i64
  store i64 %conv239, ptr %pars, align 8, !tbaa !42
  %45 = load float, ptr %arrayidx240, align 4, !tbaa !73
  %conv241 = fptosi float %45 to i64
  store i64 %conv241, ptr %AVpdb, align 8, !tbaa !75
  store i64 %conv241, ptr %AVdb, align 8, !tbaa !76
  %46 = load float, ptr %arrayidx242, align 8, !tbaa !73
  %conv243 = fptosi float %46 to i64
  store i64 %conv243, ptr %AF, align 8, !tbaa !77
  %47 = load float, ptr %tp, align 16, !tbaa !73
  %conv245 = fptosi float %47 to i64
  store i64 %conv245, ptr %FNZhz, align 8, !tbaa !78
  %48 = load float, ptr %arrayidx246, align 4, !tbaa !73
  %conv247 = fptosi float %48 to i64
  store i64 %conv247, ptr %ASP, align 8, !tbaa !79
  %49 = load float, ptr %arrayidx248, align 16, !tbaa !73
  %conv249 = fptosi float %49 to i64
  store i64 %conv249, ptr %Aturb, align 8, !tbaa !80
  %50 = load float, ptr %arrayidx250, align 16, !tbaa !73
  %conv251 = fptosi float %50 to i64
  store i64 %conv251, ptr %B1hz, align 8, !tbaa !49
  store i64 %conv251, ptr %B1phz, align 8, !tbaa !50
  %51 = load float, ptr %arrayidx254, align 4, !tbaa !73
  %conv255 = fptosi float %51 to i64
  store i64 %conv255, ptr %B2hz, align 8, !tbaa !51
  store i64 %conv255, ptr %B2phz, align 8, !tbaa !52
  %52 = load float, ptr %arrayidx258, align 8, !tbaa !73
  %conv259 = fptosi float %52 to i64
  store i64 %conv259, ptr %B3hz, align 8, !tbaa !53
  store i64 %conv259, ptr %B3phz, align 8, !tbaa !54
  %53 = load float, ptr %arrayidx262, align 4, !tbaa !73
  %conv263 = fptosi float %53 to i64
  store i64 %conv263, ptr %F1hz, align 8, !tbaa !81
  %54 = load float, ptr %arrayidx264, align 8, !tbaa !73
  %conv265 = fptosi float %54 to i64
  store i64 %conv265, ptr %F2hz, align 8, !tbaa !82
  %55 = load float, ptr %arrayidx266, align 4, !tbaa !73
  %conv267 = fptosi float %55 to i64
  store i64 %conv267, ptr %F3hz, align 8, !tbaa !83
  %56 = load float, ptr %arrayidx268, align 8, !tbaa !73
  %add269 = fadd float %56, 1.400000e+01
  %conv270 = fptosi float %add269 to i64
  store i64 %conv270, ptr %AB, align 8, !tbaa !84
  %57 = load float, ptr %arrayidx271, align 16, !tbaa !73
  %add272 = fadd float %57, 1.400000e+01
  %conv273 = fptosi float %add272 to i64
  store i64 %conv273, ptr %A5, align 8, !tbaa !85
  %58 = load float, ptr %arrayidx274, align 4, !tbaa !73
  %add275 = fadd float %58, 1.400000e+01
  %conv276 = fptosi float %add275 to i64
  store i64 %conv276, ptr %A6, align 8, !tbaa !86
  %59 = load float, ptr %arrayidx277, align 16, !tbaa !73
  %add278 = fadd float %59, 1.400000e+01
  %conv279 = fptosi float %add278 to i64
  store i64 %conv279, ptr %A1, align 8, !tbaa !87
  %60 = load float, ptr %arrayidx280, align 4, !tbaa !73
  %add281 = fadd float %60, 1.400000e+01
  %conv282 = fptosi float %add281 to i64
  store i64 %conv282, ptr %A2, align 8, !tbaa !88
  %61 = load float, ptr %arrayidx283, align 8, !tbaa !73
  %add284 = fadd float %61, 1.400000e+01
  %conv285 = fptosi float %add284 to i64
  store i64 %conv285, ptr %A3, align 8, !tbaa !89
  %62 = load float, ptr %arrayidx286, align 4, !tbaa !73
  %add287 = fadd float %62, 1.400000e+01
  %conv288 = fptosi float %add287 to i64
  store i64 %conv288, ptr %A4, align 8, !tbaa !90
  call void @parwave(ptr noundef nonnull @klatt_global, ptr noundef nonnull %pars, ptr noundef %samp.2)
  %63 = load i64, ptr getelementptr inbounds nuw (i8, ptr @klatt_global, i64 40), align 8, !tbaa !39
  %add.ptr289 = getelementptr inbounds i16, ptr %samp.2, i64 %63
  %64 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool290.not = icmp eq ptr %64, null
  br i1 %tobool290.not, label %if.end304, label %for.cond292

for.cond292:                                      ; preds = %for.end235, %for.body295
  %indvars.iv171 = phi i64 [ %indvars.iv.next172, %for.body295 ], [ 0, %for.end235 ]
  %exitcond174.not = icmp eq i64 %indvars.iv171, 19
  %65 = load ptr, ptr @par_file, align 8, !tbaa !21
  br i1 %exitcond174.not, label %for.end302, label %for.body295

for.body295:                                      ; preds = %for.cond292
  %arrayidx297 = getelementptr inbounds nuw [19 x float], ptr %tp, i64 0, i64 %indvars.iv171
  %66 = load float, ptr %arrayidx297, align 4, !tbaa !73
  %conv298 = fpext float %66 to double
  %call299 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.10.469, double noundef %conv298) #37
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1
  br label %for.cond292, !llvm.loop !91

for.end302:                                       ; preds = %for.cond292
  %fputc118 = tail call i32 @fputc(i32 10, ptr %65)
  br label %if.end304

if.end304:                                        ; preds = %for.end302, %for.end235
  %67 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %tobool305.not = icmp eq ptr %67, null
  br i1 %tobool305.not, label %if.end311, label %if.then306

if.then306:                                       ; preds = %if.end304
  %68 = load i64, ptr %pars, align 8, !tbaa !42
  %conv308 = sitofp i64 %68 to double
  %mul309 = fmul double %conv308, 1.000000e-01
  %div.i = fdiv double %mul309, 2.500000e+01
  %call.i = tail call double @log(double noundef %div.i) #37, !tbaa !10
  %div2.i = fdiv double %call.i, 0x3FE62E42FEFA39EF
  %69 = tail call double @llvm.fmuladd.f64(double %div2.i, double 1.600000e+01, double -1.000000e+00)
  %70 = load float, ptr %tp, align 16, !tbaa !73
  %sub.i.i = fadd float %70, -9.500000e+01
  %div.i.i = fdiv float %sub.i.i, 5.000000e+00
  %conv.i.i = fptosi float %div.i.i to i32
  %spec.store.select.i.i = tail call range(i32 -2147483648, 64) i32 @llvm.smin.i32(i32 %conv.i.i, i32 63)
  %call4.i = tail call i32 @fputc(i32 noundef %spec.store.select.i.i, ptr noundef nonnull %67)
  %71 = load float, ptr %arrayidx5.i, align 4, !tbaa !73
  %conv.i11.i = fptosi float %71 to i32
  %spec.store.select.i12.i = tail call i32 @llvm.smax.i32(i32 %conv.i11.i, i32 1)
  %spec.store.select1.i.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i12.i, i32 63)
  %72 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call7.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i.i, ptr noundef %72)
  %73 = load float, ptr %arrayidx262, align 4, !tbaa !73
  %sub.i13.i = fadd float %73, -1.250000e+02
  %div.i14.i = fdiv float %sub.i13.i, 2.500000e+01
  %conv.i15.i = fptosi float %div.i14.i to i32
  %spec.store.select.i16.i = tail call range(i32 -2147483648, 64) i32 @llvm.smin.i32(i32 %conv.i15.i, i32 63)
  %74 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call10.i = tail call i32 @fputc(i32 noundef %spec.store.select.i16.i, ptr noundef %74)
  %75 = load float, ptr %arrayidx277, align 16, !tbaa !73
  %conv.i17.i = fptosi float %75 to i32
  %spec.store.select.i18.i = tail call i32 @llvm.smax.i32(i32 %conv.i17.i, i32 1)
  %spec.store.select1.i19.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i18.i, i32 63)
  %76 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call13.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i19.i, ptr noundef %76)
  %77 = load float, ptr %arrayidx264, align 8, !tbaa !73
  %sub.i20.i = fadd float %77, -5.500000e+02
  %div.i21.i = fdiv float %sub.i20.i, 5.000000e+01
  %conv.i22.i = fptosi float %div.i21.i to i32
  %spec.store.select.i23.i = tail call range(i32 -2147483648, 64) i32 @llvm.smin.i32(i32 %conv.i22.i, i32 63)
  %78 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call16.i = tail call i32 @fputc(i32 noundef %spec.store.select.i23.i, ptr noundef %78)
  %79 = load float, ptr %arrayidx280, align 4, !tbaa !73
  %conv.i24.i = fptosi float %79 to i32
  %spec.store.select.i25.i = tail call i32 @llvm.smax.i32(i32 %conv.i24.i, i32 1)
  %spec.store.select1.i26.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i25.i, i32 63)
  %80 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call19.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i26.i, ptr noundef %80)
  %81 = load float, ptr %arrayidx266, align 4, !tbaa !73
  %sub.i27.i = fadd float %81, -1.350000e+03
  %div.i28.i = fdiv float %sub.i27.i, 5.000000e+01
  %conv.i29.i = fptosi float %div.i28.i to i32
  %spec.store.select.i30.i = tail call range(i32 -2147483648, 64) i32 @llvm.smin.i32(i32 %conv.i29.i, i32 63)
  %82 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call22.i = tail call i32 @fputc(i32 noundef %spec.store.select.i30.i, ptr noundef %82)
  %83 = load float, ptr %arrayidx283, align 8, !tbaa !73
  %conv.i31.i = fptosi float %83 to i32
  %spec.store.select.i32.i = tail call i32 @llvm.smax.i32(i32 %conv.i31.i, i32 1)
  %spec.store.select1.i33.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i32.i, i32 63)
  %84 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call25.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i33.i, ptr noundef %84)
  %85 = load float, ptr %arrayidx286, align 4, !tbaa !73
  %conv.i34.i = fptosi float %85 to i32
  %spec.store.select.i35.i = tail call i32 @llvm.smax.i32(i32 %conv.i34.i, i32 1)
  %spec.store.select1.i36.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i35.i, i32 63)
  %86 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call28.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i36.i, ptr noundef %86)
  %87 = load float, ptr %arrayidx240, align 4, !tbaa !73
  %conv.i37.i = fptosi float %87 to i32
  %spec.store.select.i38.i = tail call i32 @llvm.smax.i32(i32 %conv.i37.i, i32 1)
  %spec.store.select1.i39.i = tail call range(i32 1, 64) i32 @llvm.umin.i32(i32 %spec.store.select.i38.i, i32 63)
  %88 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call31.i = tail call i32 @fputc(i32 noundef %spec.store.select1.i39.i, ptr noundef %88)
  %conv.i = fptosi double %69 to i32
  %89 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call32.i = tail call i32 @fputc(i32 noundef %conv.i, ptr noundef %89)
  %90 = load ptr, ptr @jsru_file, align 8, !tbaa !21
  %call33.i = tail call i32 @fputc(i32 noundef 32, ptr noundef %90)
  br label %if.end311

if.end311:                                        ; preds = %if.then306, %if.end304
  %conv314 = fadd float %top.2, -5.000000e-01
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %tp) #37
  %inc316 = add nuw nsw i32 %t37.0, 1
  %inc317 = add i32 %tstress.3, 1
  br label %for.cond125, !llvm.loop !92

for.end318:                                       ; preds = %for.cond125
  %91 = load ptr, ptr @par_file, align 8, !tbaa !21
  %tobool319.not = icmp eq ptr %91, null
  br i1 %tobool319.not, label %if.end351, label %for.cond322

for.cond322:                                      ; preds = %for.end318, %for.body325
  %indvars.iv176 = phi i64 [ %indvars.iv.next177, %for.body325 ], [ 0, %for.end318 ]
  %exitcond179.not = icmp eq i64 %indvars.iv176, 19
  %92 = load ptr, ptr @par_file, align 8, !tbaa !21
  br i1 %exitcond179.not, label %for.end335, label %for.body325

for.body325:                                      ; preds = %for.cond322
  %tobool326.not = icmp eq i64 %indvars.iv176, 0
  %cond327 = select i1 %tobool326.not, i32 35, i32 32
  %arrayidx329 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %indvars.iv176
  %93 = load float, ptr %arrayidx329, align 8, !tbaa !58
  %conv331 = fpext float %93 to double
  %call332 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %92, ptr noundef nonnull @.str.6.465, i32 noundef %cond327, double noundef %conv331) #37
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1
  br label %for.cond322, !llvm.loop !93

for.end335:                                       ; preds = %for.cond322
  %fputc115 = tail call i32 @fputc(i32 10, ptr %92)
  br label %for.cond337

for.cond337:                                      ; preds = %for.body340, %for.end335
  %indvars.iv180 = phi i64 [ %indvars.iv.next181, %for.body340 ], [ 0, %for.end335 ]
  %exitcond183.not = icmp eq i64 %indvars.iv180, 19
  %94 = load ptr, ptr @par_file, align 8, !tbaa !21
  br i1 %exitcond183.not, label %for.end349, label %for.body340

for.body340:                                      ; preds = %for.cond337
  %tobool341.not = icmp eq i64 %indvars.iv180, 0
  %cond342 = select i1 %tobool341.not, i32 35, i32 32
  %t345 = getelementptr inbounds nuw [19 x %struct.slope_t], ptr %end, i64 0, i64 %indvars.iv180, i32 1
  %95 = load i32, ptr %t345, align 4, !tbaa !56
  %call346 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.7.466, i32 noundef %cond342, i32 noundef %95) #37
  %indvars.iv.next181 = add nuw nsw i64 %indvars.iv180, 1
  br label %for.cond337, !llvm.loop !94

for.end349:                                       ; preds = %for.cond337
  %fputc116 = tail call i32 @fputc(i32 10, ptr %94)
  br label %if.end351

if.end351:                                        ; preds = %for.end349, %for.end318
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %end) #37
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %start) #37
  br label %while.cond.outer, !llvm.loop !64

while.end353:                                     ; preds = %while.cond
  %sub.ptr.lhs.cast = ptrtoint ptr %samp.0.ph to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %samp_base to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = lshr exact i64 %sub.ptr.sub, 1
  %conv354 = trunc i64 %sub.ptr.div to i32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stress_e) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %stress_s) #37
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %pars) #37
  call void @llvm.lifetime.end.p0(i64 228, ptr nonnull %flt) #37
  ret i32 %conv354
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @set_trans(ptr noundef nonnull writeonly captures(none) %t, ptr noundef readonly captures(none) %a, ptr noundef readonly captures(none) %b, i32 noundef range(i32 0, 2) %ext) unnamed_addr #17 {
entry:
  %tobool.not = icmp eq i32 %ext, 0
  %p = getelementptr inbounds nuw i8, ptr %a, i64 40
  %cond.in.in.v = select i1 %tobool.not, i64 10, i64 9
  %invariant.gep = getelementptr inbounds nuw i8, ptr %p, i64 %cond.in.in.v
  %p20 = getelementptr inbounds nuw i8, ptr %b, i64 40
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 19
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = mul nuw nsw i64 %indvars.iv, 12
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %0
  %cond.in = load i8, ptr %gep, align 1, !tbaa !5
  %cond = sext i8 %cond.in to i32
  %1 = load i32, ptr @speed, align 4, !tbaa !10
  %mul = mul nsw i32 %1, %cond
  %arrayidx6 = getelementptr inbounds nuw %struct.slope_t, ptr %t, i64 %indvars.iv
  %t7 = getelementptr inbounds nuw i8, ptr %arrayidx6, i64 4
  store i32 %mul, ptr %t7, align 4, !tbaa !56
  %tobool11.not = icmp eq i32 %mul, 0
  br i1 %tobool11.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  %arrayidx14 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p, i64 0, i64 %indvars.iv
  %fixd = getelementptr inbounds nuw i8, ptr %arrayidx14, i64 4
  %2 = load float, ptr %fixd, align 4, !tbaa !95
  %prop = getelementptr inbounds nuw i8, ptr %arrayidx14, i64 8
  %3 = load i8, ptr %prop, align 4, !tbaa !96
  %conv19 = sitofp i8 %3 to float
  %arrayidx22 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20, i64 0, i64 %indvars.iv
  %4 = load float, ptr %arrayidx22, align 4, !tbaa !45
  %mul23 = fmul float %4, %conv19
  %5 = tail call float @llvm.fmuladd.f32(float %mul23, float 0x3F847AE140000000, float %2)
  br label %for.inc

if.else:                                          ; preds = %for.body
  %arrayidx29 = getelementptr inbounds nuw [19 x %struct.interp_t], ptr %p20, i64 0, i64 %indvars.iv
  %6 = load float, ptr %arrayidx29, align 4, !tbaa !45
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  %storemerge = phi float [ %6, %if.else ], [ %5, %if.then ]
  store float %storemerge, ptr %arrayidx6, align 4, !tbaa !58
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !97

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal fastcc float @interpolate(ptr noundef nonnull readonly captures(none) %s, ptr noundef nonnull readonly captures(none) %e, float noundef %mid, i32 noundef %t, i32 noundef %d) unnamed_addr #18 {
entry:
  %t1 = getelementptr inbounds nuw i8, ptr %s, i64 4
  %0 = load i32, ptr %t1, align 4, !tbaa !56
  %t2 = getelementptr inbounds nuw i8, ptr %e, i64 4
  %1 = load i32, ptr %t2, align 4, !tbaa !56
  %2 = add i32 %0, %1
  %sub = sub i32 %d, %2
  %conv = sitofp i32 %sub to float
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then, label %if.else22

if.then:                                          ; preds = %entry
  %cmp5 = icmp slt i32 %t, %0
  br i1 %cmp5, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.then
  %3 = load float, ptr %s, align 4, !tbaa !58
  %cmp.i = icmp slt i32 %t, 1
  br i1 %cmp.i, label %cleanup, label %if.else3.i

if.else3.i:                                       ; preds = %if.then7
  %conv.i = uitofp nneg i32 %t to float
  %conv4.i = uitofp nneg i32 %0 to float
  %div.i = fdiv float %conv.i, %conv4.i
  %sub.i = fsub float %mid, %3
  %4 = tail call float @llvm.fmuladd.f32(float %sub.i, float %div.i, float %3)
  br label %cleanup

if.else:                                          ; preds = %if.then
  %sub10 = sub nsw i32 %t, %0
  %conv11 = sitofp i32 %sub10 to float
  %cmp12 = fcmp ugt float %conv11, %conv
  br i1 %cmp12, label %if.else15, label %cleanup

if.else15:                                        ; preds = %if.else
  %5 = load float, ptr %e, align 4, !tbaa !58
  %sub18 = fsub float %conv11, %conv
  %conv19 = fptosi float %sub18 to i32
  %cmp.i27 = icmp slt i32 %conv19, 1
  br i1 %cmp.i27, label %cleanup, label %if.else.i28

if.else.i28:                                      ; preds = %if.else15
  %cmp1.not.i29 = icmp sgt i32 %1, %conv19
  br i1 %cmp1.not.i29, label %if.else3.i31, label %cleanup

if.else3.i31:                                     ; preds = %if.else.i28
  %conv.i32 = uitofp nneg i32 %conv19 to float
  %conv4.i33 = uitofp nneg i32 %1 to float
  %div.i34 = fdiv float %conv.i32, %conv4.i33
  %sub.i35 = fsub float %5, %mid
  %6 = tail call float @llvm.fmuladd.f32(float %sub.i35, float %div.i34, float %mid)
  br label %cleanup

if.else22:                                        ; preds = %entry
  %conv23 = sitofp i32 %t to float
  %conv24 = sitofp i32 %d to float
  %div = fdiv float %conv23, %conv24
  %sub25 = fsub float 1.000000e+00, %div
  %7 = load float, ptr %s, align 4, !tbaa !58
  %cmp.i37 = icmp slt i32 %t, 1
  br i1 %cmp.i37, label %linear.exit46, label %if.else.i38

if.else.i38:                                      ; preds = %if.else22
  %cmp1.not.i39 = icmp slt i32 %t, %0
  br i1 %cmp1.not.i39, label %if.else3.i41, label %linear.exit46

if.else3.i41:                                     ; preds = %if.else.i38
  %conv.i42 = uitofp nneg i32 %t to float
  %conv4.i43 = uitofp nneg i32 %0 to float
  %div.i44 = fdiv float %conv.i42, %conv4.i43
  %sub.i45 = fsub float %mid, %7
  %8 = tail call float @llvm.fmuladd.f32(float %sub.i45, float %div.i44, float %7)
  br label %linear.exit46

linear.exit46:                                    ; preds = %if.else22, %if.else.i38, %if.else3.i41
  %retval.0.i40 = phi float [ %8, %if.else3.i41 ], [ %7, %if.else22 ], [ %mid, %if.else.i38 ]
  %9 = load float, ptr %e, align 4, !tbaa !58
  %sub30 = sub nsw i32 %d, %t
  %cmp.i47 = icmp slt i32 %sub30, 1
  br i1 %cmp.i47, label %linear.exit56, label %if.else.i48

if.else.i48:                                      ; preds = %linear.exit46
  %cmp1.not.i49 = icmp slt i32 %sub30, %1
  br i1 %cmp1.not.i49, label %if.else3.i51, label %linear.exit56

if.else3.i51:                                     ; preds = %if.else.i48
  %conv.i52 = uitofp nneg i32 %sub30 to float
  %conv4.i53 = uitofp nneg i32 %1 to float
  %div.i54 = fdiv float %conv.i52, %conv4.i53
  %sub.i55 = fsub float %mid, %9
  %10 = tail call float @llvm.fmuladd.f32(float %sub.i55, float %div.i54, float %9)
  br label %linear.exit56

linear.exit56:                                    ; preds = %linear.exit46, %if.else.i48, %if.else3.i51
  %retval.0.i50 = phi float [ %10, %if.else3.i51 ], [ %9, %linear.exit46 ], [ %mid, %if.else.i48 ]
  %sub33 = fsub float 1.000000e+00, %sub25
  %mul34 = fmul float %sub33, %retval.0.i50
  %11 = tail call float @llvm.fmuladd.f32(float %sub25, float %retval.0.i40, float %mul34)
  br label %cleanup

cleanup:                                          ; preds = %if.else3.i31, %if.else.i28, %if.else15, %if.else3.i, %if.then7, %if.else, %linear.exit56
  %retval.0 = phi float [ %11, %linear.exit56 ], [ %mid, %if.else ], [ %4, %if.else3.i ], [ %3, %if.then7 ], [ %6, %if.else3.i31 ], [ %mid, %if.else15 ], [ %5, %if.else.i28 ]
  ret float %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #19

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #19

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @init_holmes(i32 noundef %argc, ptr noundef captures(none) %argv) local_unnamed_addr #0 {
entry:
  %par_name = alloca ptr, align 8
  %jsru_name = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %par_name) #37
  store ptr null, ptr %par_name, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %jsru_name) #37
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
  call void @perror(ptr noundef %2) #38
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
  call void @perror(ptr noundef %4) #38
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then12, %if.then9, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %jsru_name) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %par_name) #37
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rate_set) #37
  store i32 0, ptr %rate_set, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %use_audio) #37
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
  %call.i = call i32 (ptr, i32, ...) @open(ptr noundef %3, i32 noundef 2049) #37
  store i32 %call.i, ptr @dev_fd, align 4, !tbaa !10
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.then.i, label %if.end4

if.then.i:                                        ; preds = %if.then2
  %4 = load ptr, ptr @dev_file, align 8, !tbaa !12
  call void @perror(ptr noundef %4) #38
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
  %call10 = call i32 (i32, i64, ...) @ioctl(i32 noundef %6, i64 noundef 3221508098, ptr noundef nonnull @samp_rate) #37
  %7 = load i64, ptr @samp_rate, align 8, !tbaa !15
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8.494, i64 noundef %7)
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then9, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %use_audio) #37
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rate_set) #37
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dummy) #37
  %0 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %cmp = icmp sgt i32 %0, -1
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  %call = call i32 (i32, i64, ...) @ioctl(i32 noundef %0, i64 noundef 20481, ptr noundef nonnull %dummy) #37
  %1 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %call1 = call i32 @close(i32 noundef %1) #37
  store i32 -1, ptr @dev_fd, align 4, !tbaa !10
  br label %if.end7

if.end7:                                          ; preds = %entry, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dummy) #37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @audio_play(i32 noundef %n, ptr noundef readonly captures(none) %data) local_unnamed_addr #5 {
entry:
  %cmp = icmp sgt i32 %n, 0
  br i1 %cmp, label %if.then, label %if.end33

if.then:                                          ; preds = %entry
  %conv = zext nneg i32 %n to i64
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #39
  %cmp1 = icmp eq ptr %call, null
  br i1 %cmp1, label %if.then3, label %for.cond

if.then3:                                         ; preds = %if.then
  %0 = load ptr, ptr @stderr, align 8, !tbaa !21
  %1 = tail call i64 @fwrite(ptr nonnull @.str.9.496, i64 41, i64 1, ptr %0) #38
  tail call void @exit(i32 noundef 3) #42
  unreachable

for.cond:                                         ; preds = %if.then, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv, %conv
  br i1 %exitcond.not, label %if.end21, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i16, ptr %data, i64 %indvars.iv
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %sub.nonneg = sub i16 -32768, %2
  %div1516 = lshr i16 %sub.nonneg, 8
  %3 = trunc nuw i16 %div1516 to i8
  %conv8 = sub i8 0, %3
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %call, i64 %indvars.iv
  store i8 %conv8, ptr %arrayidx10, align 1, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !98

if.end21:                                         ; preds = %for.cond
  %4 = load i32, ptr @dev_fd, align 4, !tbaa !10
  %cmp22 = icmp sgt i32 %4, -1
  br i1 %cmp22, label %if.then24, label %if.end32

if.then24:                                        ; preds = %if.end21
  %call26 = tail call i64 @write(i32 noundef %4, ptr noundef nonnull %call, i64 noundef %conv) #37
  %cmp28.not = icmp eq i64 %call26, %conv
  br i1 %cmp28.not, label %if.end32, label %if.then30

if.then30:                                        ; preds = %if.then24
  tail call void @perror(ptr noundef nonnull @.str.10.497) #38
  br label %if.end32

if.end32:                                         ; preds = %if.then24, %if.then30, %if.end21
  tail call void @free(ptr noundef nonnull %call) #37
  br label %if.end33

if.end33:                                         ; preds = %if.end32, %entry
  ret void
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind uwtable
define dso_local void @show_parms(ptr noundef readnone captures(none) %globals, ptr noundef readonly captures(none) %pars) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @show_parms.names, align 4, !tbaa !10
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr @show_parms.names, align 4, !tbaa !10
  %1 = and i32 %0, 63
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %for.cond, label %for.cond4.preheader

for.cond:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 40
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [40 x ptr], ptr @par_name, i64 0, i64 %indvars.iv
  %2 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41.539, ptr noundef %2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !99

for.end:                                          ; preds = %for.cond
  %putchar = tail call i32 @putchar(i32 10)
  br label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.end, %entry
  br label %for.cond4

for.cond4:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.body6 ], [ 0, %for.cond4.preheader ]
  %exitcond12.not = icmp eq i64 %indvars.iv9, 40
  br i1 %exitcond12.not, label %for.end15, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [40 x ptr], ptr @par_name, i64 0, i64 %indvars.iv9
  %3 = load ptr, ptr %arrayidx8, align 8, !tbaa !12
  %call9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #36
  %conv = trunc i64 %call9 to i32
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %pars, i64 %indvars.iv9
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !10
  %call12 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.43.541, i32 noundef %conv, i32 noundef %4)
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond4, !llvm.loop !100

for.end15:                                        ; preds = %for.cond4
  %putchar7 = tail call i32 @putchar(i32 10)
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @parwave(ptr noundef captures(none) %globals, ptr noundef readonly captures(none) %frame, ptr noundef writeonly captures(none) %jwave) local_unnamed_addr #0 {
entry:
  %0 = load i64, ptr %frame, align 8, !tbaa !42
  store i64 %0, ptr @F0hz10, align 8, !tbaa !15
  %AVdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 8
  %1 = load i64, ptr %AVdb.i, align 8, !tbaa !76
  %2 = tail call i64 @llvm.smax.i64(i64 %1, i64 7)
  %spec.store.select.i = add nsw i64 %2, -7
  store i64 %spec.store.select.i, ptr @AVdb, align 8
  %ASP.i = getelementptr inbounds nuw i8, ptr %frame, i64 144
  %3 = load i64, ptr %ASP.i, align 8, !tbaa !79
  %call.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %3)
  %conv.i = fpext float %call.i to double
  %mul.i = fmul double %conv.i, 5.000000e-02
  %conv1.i = fptrunc double %mul.i to float
  store float %conv1.i, ptr @amp_aspir, align 4, !tbaa !73
  %AF.i = getelementptr inbounds nuw i8, ptr %frame, i64 176
  %4 = load i64, ptr %AF.i, align 8, !tbaa !77
  %call2.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %4)
  %conv5.i = fmul float %call2.i, 2.500000e-01
  store float %conv5.i, ptr @amp_frica, align 4, !tbaa !73
  %Kskew.i = getelementptr inbounds nuw i8, ptr %frame, i64 184
  %5 = load i64, ptr %Kskew.i, align 8, !tbaa !101
  store i64 %5, ptr @Kskew, align 8, !tbaa !15
  %AVpdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 304
  %6 = load i64, ptr %AVpdb.i, align 8, !tbaa !75
  %call6.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %6)
  %A1.i = getelementptr inbounds nuw i8, ptr %frame, i64 192
  %7 = load i64, ptr %A1.i, align 8, !tbaa !87
  %call7.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %7)
  %A2.i = getelementptr inbounds nuw i8, ptr %frame, i64 208
  %8 = load i64, ptr %A2.i, align 8, !tbaa !88
  %call11.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %8)
  %A3.i = getelementptr inbounds nuw i8, ptr %frame, i64 224
  %9 = load i64, ptr %A3.i, align 8, !tbaa !89
  %call15.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %9)
  %A4.i = getelementptr inbounds nuw i8, ptr %frame, i64 240
  %10 = load i64, ptr %A4.i, align 8, !tbaa !90
  %call19.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %10)
  %A5.i = getelementptr inbounds nuw i8, ptr %frame, i64 256
  %11 = load i64, ptr %A5.i, align 8, !tbaa !85
  %call23.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %11)
  %A6.i = getelementptr inbounds nuw i8, ptr %frame, i64 272
  %12 = load i64, ptr %A6.i, align 8, !tbaa !86
  %call27.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %12)
  %ANP.i = getelementptr inbounds nuw i8, ptr %frame, i64 288
  %13 = load i64, ptr %ANP.i, align 8, !tbaa !102
  %call31.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %13)
  %AB.i = getelementptr inbounds nuw i8, ptr %frame, i64 296
  %14 = load i64, ptr %AB.i, align 8, !tbaa !84
  %call35.i = tail call fastcc float @DBtoLIN(ptr noundef %globals, i64 noundef %14)
  %conv36.i = fpext float %call35.i to double
  %mul37.i = fmul double %conv36.i, 5.000000e-02
  %conv38.i = fptrunc double %mul37.i to float
  store float %conv38.i, ptr @amp_bypas, align 4, !tbaa !73
  %nfcascade.i = getelementptr inbounds nuw i8, ptr %globals, i64 24
  %15 = load i64, ptr %nfcascade.i, align 8, !tbaa !37
  %cmp39.i = icmp sgt i64 %15, 7
  br i1 %cmp39.i, label %if.then41.i, label %if.end47.i

if.then41.i:                                      ; preds = %entry
  %samrate.i = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %16 = load i64, ptr %samrate.i, align 8, !tbaa !32
  %cmp42.i = icmp sgt i64 %16, 15999
  br i1 %cmp42.i, label %if.then44.i, label %if.then63.sink.split.i

if.then44.i:                                      ; preds = %if.then41.i
  tail call fastcc void @setabc(i64 noundef 7500, i64 noundef 600, ptr noundef nonnull @r8c)
  %.pr.i = load i64, ptr %nfcascade.i, align 8, !tbaa !37
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then44.i, %entry
  %17 = phi i64 [ %.pr.i, %if.then44.i ], [ %15, %entry ]
  %cmp49.i = icmp sgt i64 %17, 6
  br i1 %cmp49.i, label %if.then51.i, label %if.end59.i

if.then51.i:                                      ; preds = %if.end47.i
  %samrate52.i = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %18 = load i64, ptr %samrate52.i, align 8, !tbaa !32
  %cmp53.i = icmp sgt i64 %18, 15999
  br i1 %cmp53.i, label %if.then55.i, label %if.then63.sink.split.i

if.then55.i:                                      ; preds = %if.then51.i
  tail call fastcc void @setabc(i64 noundef 6500, i64 noundef 500, ptr noundef nonnull @r7c)
  %.pr68.pre.i = load i64, ptr %nfcascade.i, align 8, !tbaa !37
  br label %if.end59.i

if.end59.i:                                       ; preds = %if.then55.i, %if.end47.i
  %.pr68.i = phi i64 [ %.pr68.pre.i, %if.then55.i ], [ %17, %if.end47.i ]
  %cmp61.i = icmp sgt i64 %.pr68.i, 5
  br i1 %cmp61.i, label %if.then63.i, label %if.end64.i

if.then63.sink.split.i:                           ; preds = %if.then51.i, %if.then41.i
  store i64 6, ptr %nfcascade.i, align 8, !tbaa !37
  br label %if.then63.i

if.then63.i:                                      ; preds = %if.then63.sink.split.i, %if.end59.i
  %F6hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 96
  %19 = load i64, ptr %F6hz.i, align 8, !tbaa !103
  %B6hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 104
  %20 = load i64, ptr %B6hz.i, align 8, !tbaa !104
  tail call fastcc void @setabc(i64 noundef %19, i64 noundef %20, ptr noundef nonnull @r6c)
  %.pr70.i = load i64, ptr %nfcascade.i, align 8, !tbaa !37
  br label %if.end64.i

if.end64.i:                                       ; preds = %if.then63.i, %if.end59.i
  %21 = phi i64 [ %.pr70.i, %if.then63.i ], [ %.pr68.i, %if.end59.i ]
  %cmp66.i = icmp sgt i64 %21, 4
  br i1 %cmp66.i, label %if.then68.i, label %frame_init.exit

if.then68.i:                                      ; preds = %if.end64.i
  %F5hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 80
  %22 = load i64, ptr %F5hz.i, align 8, !tbaa !105
  %B5hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 88
  %23 = load i64, ptr %B5hz.i, align 8, !tbaa !106
  tail call fastcc void @setabc(i64 noundef %22, i64 noundef %23, ptr noundef nonnull @r5c)
  br label %frame_init.exit

frame_init.exit:                                  ; preds = %if.end64.i, %if.then68.i
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
  %24 = load i64, ptr %F4hz.i, align 8, !tbaa !107
  %B4hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 72
  %25 = load i64, ptr %B4hz.i, align 8, !tbaa !108
  tail call fastcc void @setabc(i64 noundef %24, i64 noundef %25, ptr noundef nonnull @r4c)
  %F3hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 48
  %26 = load i64, ptr %F3hz.i, align 8, !tbaa !83
  %B3hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 56
  %27 = load i64, ptr %B3hz.i, align 8, !tbaa !53
  tail call fastcc void @setabc(i64 noundef %26, i64 noundef %27, ptr noundef nonnull @r3c)
  %F2hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 32
  %28 = load i64, ptr %F2hz.i, align 8, !tbaa !82
  %B2hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 40
  %29 = load i64, ptr %B2hz.i, align 8, !tbaa !51
  tail call fastcc void @setabc(i64 noundef %28, i64 noundef %29, ptr noundef nonnull @r2c)
  %F1hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 16
  %30 = load i64, ptr %F1hz.i, align 8, !tbaa !81
  %B1hz.i = getelementptr inbounds nuw i8, ptr %frame, i64 24
  %31 = load i64, ptr %B1hz.i, align 8, !tbaa !49
  tail call fastcc void @setabc(i64 noundef %30, i64 noundef %31, ptr noundef nonnull @r1c)
  %FNPhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 128
  %32 = load i64, ptr %FNPhz.i, align 8, !tbaa !48
  %BNPhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 136
  %33 = load i64, ptr %BNPhz.i, align 8, !tbaa !109
  tail call fastcc void @setabc(i64 noundef %32, i64 noundef %33, ptr noundef nonnull @rnpc)
  %FNZhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 112
  %34 = load i64, ptr %FNZhz.i, align 8, !tbaa !78
  %BNZhz.i = getelementptr inbounds nuw i8, ptr %frame, i64 120
  %35 = load i64, ptr %BNZhz.i, align 8, !tbaa !110
  tail call fastcc void @setabc(i64 noundef %34, i64 noundef %35, ptr noundef nonnull @rnz)
  %36 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 8), align 8, !tbaa !111
  %conv1.i.i = fdiv float 1.000000e+00, %36
  store float %conv1.i.i, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 8), align 8, !tbaa !111
  %fneg.i.i = fneg float %conv1.i.i
  %37 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 12), align 4, !tbaa !113
  %mul.i.i = fmul float %37, %fneg.i.i
  store float %mul.i.i, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 12), align 4, !tbaa !113
  %38 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 16), align 8, !tbaa !114
  %mul6.i.i = fmul float %38, %fneg.i.i
  store float %mul6.i.i, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 16), align 8, !tbaa !114
  %39 = load i64, ptr %F1hz.i, align 8, !tbaa !81
  %B1phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 200
  %40 = load i64, ptr %B1phz.i, align 8, !tbaa !50
  tail call fastcc void @setabcg(i64 noundef %39, i64 noundef %40, ptr noundef nonnull @r1p, float noundef %conv10.i)
  %41 = load i64, ptr %FNPhz.i, align 8, !tbaa !48
  %42 = load i64, ptr %BNPhz.i, align 8, !tbaa !109
  tail call fastcc void @setabcg(i64 noundef %41, i64 noundef %42, ptr noundef nonnull @rnpp, float noundef %conv34.i)
  %43 = load i64, ptr %F2hz.i, align 8, !tbaa !82
  %B2phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 216
  %44 = load i64, ptr %B2phz.i, align 8, !tbaa !52
  tail call fastcc void @setabcg(i64 noundef %43, i64 noundef %44, ptr noundef nonnull @r2p, float noundef %conv14.i)
  %45 = load i64, ptr %F3hz.i, align 8, !tbaa !83
  %B3phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 232
  %46 = load i64, ptr %B3phz.i, align 8, !tbaa !54
  tail call fastcc void @setabcg(i64 noundef %45, i64 noundef %46, ptr noundef nonnull @r3p, float noundef %conv18.i)
  %47 = load i64, ptr %F4hz.i, align 8, !tbaa !107
  %B4phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 248
  %48 = load i64, ptr %B4phz.i, align 8, !tbaa !55
  tail call fastcc void @setabcg(i64 noundef %47, i64 noundef %48, ptr noundef nonnull @r4p, float noundef %conv22.i)
  %F5hz76.i = getelementptr inbounds nuw i8, ptr %frame, i64 80
  %49 = load i64, ptr %F5hz76.i, align 8, !tbaa !105
  %B5phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 264
  %50 = load i64, ptr %B5phz.i, align 8, !tbaa !115
  tail call fastcc void @setabcg(i64 noundef %49, i64 noundef %50, ptr noundef nonnull @r5p, float noundef %conv26.i)
  %F6hz77.i = getelementptr inbounds nuw i8, ptr %frame, i64 96
  %51 = load i64, ptr %F6hz77.i, align 8, !tbaa !103
  %B6phz.i = getelementptr inbounds nuw i8, ptr %frame, i64 280
  %52 = load i64, ptr %B6phz.i, align 8, !tbaa !116
  tail call fastcc void @setabcg(i64 noundef %51, i64 noundef %52, ptr noundef nonnull @r6p, float noundef %conv30.i)
  %Gain078.i = getelementptr inbounds nuw i8, ptr %frame, i64 312
  %53 = load i64, ptr %Gain078.i, align 8, !tbaa !117
  %sub79.i = add nsw i64 %53, -3
  %cmp80.i = icmp slt i64 %53, 4
  %spec.store.select1.i = select i1 %cmp80.i, i64 57, i64 %sub79.i
  %samrate84.i = getelementptr inbounds nuw i8, ptr %globals, i64 16
  %54 = load i64, ptr %samrate84.i, align 8, !tbaa !32
  %call85.i = tail call fastcc float @DBtoLIN(ptr noundef nonnull %globals, i64 noundef %spec.store.select1.i)
  tail call fastcc void @setabcg(i64 noundef 0, i64 noundef %54, ptr noundef nonnull @rout, float noundef %call85.i)
  %f0_flutter = getelementptr inbounds nuw i8, ptr %globals, i64 8
  %55 = load i32, ptr %f0_flutter, align 8, !tbaa !36
  %cmp.not = icmp eq i32 %55, 0
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %frame_init.exit
  %56 = load i32, ptr @time_count, align 4, !tbaa !10
  %inc = add nsw i32 %56, 1
  store i32 %inc, ptr @time_count, align 4, !tbaa !10
  %57 = load i64, ptr %frame, align 8, !tbaa !42
  %div.i = sdiv i64 %57, 10
  %conv.i48 = sitofp i32 %55 to double
  %div1.i = fdiv double %conv.i48, 5.000000e+01
  %conv2.i = sitofp i64 %div.i to double
  %div3.i = fdiv double %conv2.i, 1.000000e+02
  %conv4.i = sitofp i32 %inc to double
  %mul.i49 = fmul double %conv4.i, 0x4053F2F91CA1765C
  %call.i50 = tail call double @sin(double noundef %mul.i49) #37, !tbaa !10
  %58 = load i32, ptr @time_count, align 4, !tbaa !10
  %conv5.i51 = sitofp i32 %58 to double
  %mul6.i = fmul double %conv5.i51, 0x40464E28AD1D5A02
  %call7.i52 = tail call double @sin(double noundef %mul6.i) #37, !tbaa !10
  %59 = load i32, ptr @time_count, align 4, !tbaa !10
  %conv8.i53 = sitofp i32 %59 to double
  %mul9.i54 = fmul double %conv8.i53, 0x403D87EDBD883645
  %call10.i = tail call double @sin(double noundef %mul9.i54) #37, !tbaa !10
  %mul11.i = fmul double %div1.i, %div3.i
  %add.i = fadd double %call.i50, %call7.i52
  %add12.i = fadd double %add.i, %call10.i
  %mul13.i55 = fmul double %mul11.i, %add12.i
  %mul14.i = fmul double %mul13.i55, 1.000000e+01
  %conv15.i = fptosi double %mul14.i to i64
  %60 = load i64, ptr @F0hz10, align 8, !tbaa !15
  %add16.i = add nsw i64 %60, %conv15.i
  store i64 %add16.i, ptr @F0hz10, align 8, !tbaa !15
  br label %if.end

if.end:                                           ; preds = %if.then, %frame_init.exit
  %nspfr = getelementptr inbounds nuw i8, ptr %globals, i64 40
  %glsource = getelementptr inbounds nuw i8, ptr %globals, i64 32
  %Aturb.i = getelementptr inbounds nuw i8, ptr %frame, i64 160
  %Kopen.i = getelementptr inbounds nuw i8, ptr %frame, i64 152
  %quiet_flag.i = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %TLTdb.i = getelementptr inbounds nuw i8, ptr %frame, i64 168
  br label %for.cond

for.cond:                                         ; preds = %clip.exit, %if.end
  %voice.0 = phi float [ undef, %if.end ], [ %voice.3, %clip.exit ]
  %ns.0 = phi i64 [ 0, %if.end ], [ %inc80, %clip.exit ]
  %jwave.addr.0 = phi ptr [ %jwave, %if.end ], [ %incdec.ptr, %clip.exit ]
  %61 = load i64, ptr %nspfr, align 8, !tbaa !39
  %cmp1 = icmp slt i64 %ns.0, %61
  br i1 %cmp1, label %for.body, label %for.end81

for.body:                                         ; preds = %for.cond
  %62 = load i64, ptr @parwave.seed, align 8, !tbaa !15
  %mul = mul nuw nsw i64 %62, 1664525
  %add = add nuw nsw i64 %mul, 1
  %and = and i64 %add, 4294967295
  store i64 %and, ptr @parwave.seed, align 8, !tbaa !15
  %shl = shl nuw i64 %and, 32
  %shr = ashr i64 %shl, 50
  %conv = sitofp i64 %shr to double
  %63 = load float, ptr @nlast, align 4, !tbaa !73
  %conv2 = fpext float %63 to double
  %64 = tail call double @llvm.fmuladd.f64(double %conv2, double 7.500000e-01, double %conv)
  %conv4 = fptrunc double %64 to float
  store float %conv4, ptr @nlast, align 4, !tbaa !73
  %65 = load i64, ptr @nper, align 8, !tbaa !15
  %66 = load i64, ptr @nmod, align 8, !tbaa !15
  %67 = load float, ptr @amp_frica, align 4, !tbaa !73
  %cmp66.i64 = icmp eq i64 %ns.0, 0
  br label %for.cond13

for.cond13:                                       ; preds = %if.end25, %for.body
  %68 = phi i64 [ %65, %for.body ], [ %inc27, %if.end25 ]
  %n4.0 = phi i32 [ 0, %for.body ], [ %inc28, %if.end25 ]
  %voice.1 = phi float [ %voice.0, %for.body ], [ %call26, %if.end25 ]
  %exitcond.not = icmp eq i32 %n4.0, 4
  br i1 %exitcond.not, label %for.end, label %for.body16

for.body16:                                       ; preds = %for.cond13
  %69 = load i64, ptr %glsource, align 8, !tbaa !35
  %cmp17 = icmp eq i64 %69, 1
  br i1 %cmp17, label %if.then19, label %if.else

if.then19:                                        ; preds = %for.body16
  %cmp.i = icmp slt i64 %68, 3
  br i1 %cmp.i, label %if.then.i, label %impulsive_source.exit

if.then.i:                                        ; preds = %if.then19
  %arrayidx.i = getelementptr inbounds [3 x float], ptr @impulsive_source.doublet, i64 0, i64 %68
  %70 = load float, ptr %arrayidx.i, align 4, !tbaa !73
  br label %impulsive_source.exit

impulsive_source.exit:                            ; preds = %if.then19, %if.then.i
  %storemerge.i = phi float [ %70, %if.then.i ], [ 0.000000e+00, %if.then19 ]
  store float %storemerge.i, ptr @vwave, align 4, !tbaa !73
  %call.i56 = tail call fastcc float @resonator(ptr noundef nonnull @rgl, float noundef %storemerge.i)
  br label %if.end21

if.else:                                          ; preds = %for.body16
  %71 = load i64, ptr @nopen, align 8, !tbaa !15
  %cmp.i57 = icmp slt i64 %68, %71
  br i1 %cmp.i57, label %if.then.i58, label %natural_source.exit

if.then.i58:                                      ; preds = %if.else
  %72 = load float, ptr @natglot_b, align 4, !tbaa !73
  %73 = load float, ptr @natglot_a, align 4, !tbaa !73
  %sub.i = fsub float %73, %72
  store float %sub.i, ptr @natglot_a, align 4, !tbaa !73
  %74 = load float, ptr @vwave, align 4, !tbaa !73
  %add.i59 = fadd float %sub.i, %74
  %conv.i60 = fpext float %add.i59 to double
  %mul.i61 = fmul double %conv.i60, 2.800000e-02
  %conv1.i62 = fptrunc double %mul.i61 to float
  br label %natural_source.exit

natural_source.exit:                              ; preds = %if.else, %if.then.i58
  %.sink.i = phi float [ %add.i59, %if.then.i58 ], [ 0.000000e+00, %if.else ]
  %retval.0.i = phi float [ %conv1.i62, %if.then.i58 ], [ 0.000000e+00, %if.else ]
  store float %.sink.i, ptr @vwave, align 4, !tbaa !73
  br label %if.end21

if.end21:                                         ; preds = %natural_source.exit, %impulsive_source.exit
  %voice.2 = phi float [ %call.i56, %impulsive_source.exit ], [ %retval.0.i, %natural_source.exit ]
  %75 = load i64, ptr @T0, align 8, !tbaa !15
  %cmp22.not = icmp slt i64 %68, %75
  br i1 %cmp22.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %if.end21
  store i64 0, ptr @nper, align 8, !tbaa !15
  %76 = load i64, ptr @F0hz10, align 8, !tbaa !15
  %cmp.i63 = icmp sgt i64 %76, 0
  br i1 %cmp.i63, label %if.then.i66, label %if.else62.i

if.then.i66:                                      ; preds = %if.then24
  %77 = load i64, ptr %samrate84.i, align 8, !tbaa !32
  %mul.i68 = mul nsw i64 %77, 40
  %div.i69 = sdiv i64 %mul.i68, %76
  store i64 %div.i69, ptr @T0, align 8, !tbaa !15
  %78 = load i64, ptr @AVdb, align 8, !tbaa !15
  %call.i70 = tail call fastcc float @DBtoLIN(ptr noundef nonnull readonly %globals, i64 noundef %78)
  store float %call.i70, ptr @amp_voice, align 4, !tbaa !73
  %79 = load i64, ptr @T0, align 8, !tbaa !15
  store i64 %79, ptr @nmod, align 8, !tbaa !15
  %80 = load i64, ptr @AVdb, align 8, !tbaa !15
  %cmp1.i = icmp sgt i64 %80, 0
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i

if.then2.i:                                       ; preds = %if.then.i66
  %shr.i = ashr i64 %79, 1
  store i64 %shr.i, ptr @nmod, align 8, !tbaa !15
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i66
  %81 = load i64, ptr %Aturb.i, align 8, !tbaa !80
  %call3.i = tail call fastcc float @DBtoLIN(ptr noundef nonnull readonly %globals, i64 noundef %81)
  %conv.i71 = fpext float %call3.i to double
  %mul4.i = fmul double %conv.i71, 1.000000e-01
  %conv5.i72 = fptrunc double %mul4.i to float
  store float %conv5.i72, ptr @amp_breth, align 4, !tbaa !73
  %82 = load i64, ptr %Kopen.i, align 8, !tbaa !118
  %mul6.i73 = shl nsw i64 %82, 2
  %83 = load i64, ptr %glsource, align 8, !tbaa !35
  %cmp7.i = icmp eq i64 %83, 1
  %cmp9.i = icmp sgt i64 %82, 65
  %or.cond.i = select i1 %cmp7.i, i1 %cmp9.i, i1 false
  %spec.store.select.i74 = select i1 %or.cond.i, i64 263, i64 %mul6.i73
  store i64 %spec.store.select.i74, ptr @nopen, align 8
  %84 = load i64, ptr @T0, align 8, !tbaa !15
  %sub.i75 = add nsw i64 %84, -1
  %cmp13.not.i = icmp slt i64 %spec.store.select.i74, %sub.i75
  br i1 %cmp13.not.i, label %if.end20.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.end.i
  %sub16.i = add nsw i64 %84, -2
  store i64 %sub16.i, ptr @nopen, align 8, !tbaa !15
  %85 = load i32, ptr %quiet_flag.i, align 4, !tbaa !34
  %tobool.not.i = icmp eq i32 %85, 0
  br i1 %tobool.not.i, label %if.then17.i, label %if.end20.i

if.then17.i:                                      ; preds = %if.then15.i
  %puts.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %.pr.i81 = load i64, ptr @nopen, align 8, !tbaa !15
  br label %if.end20.i

if.end20.i:                                       ; preds = %if.then17.i, %if.then15.i, %if.end.i
  %86 = phi i64 [ %sub16.i, %if.then15.i ], [ %.pr.i81, %if.then17.i ], [ %spec.store.select.i74, %if.end.i ]
  %cmp21.i = icmp slt i64 %86, 40
  br i1 %cmp21.i, label %if.then23.i, label %if.end30.i

if.then23.i:                                      ; preds = %if.end20.i
  store i64 40, ptr @nopen, align 8, !tbaa !15
  %87 = load i32, ptr %quiet_flag.i, align 4, !tbaa !34
  %tobool25.not.i = icmp eq i32 %87, 0
  br i1 %tobool25.not.i, label %if.then26.i, label %if.end30.i

if.then26.i:                                      ; preds = %if.then23.i
  %puts15.i = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  %88 = load i64, ptr @nopen, align 8, !tbaa !15
  %call28.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.47.566, i64 noundef %88)
  %.pre.i = load i64, ptr @nopen, align 8, !tbaa !15
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.then23.i, %if.end20.i
  %89 = phi i64 [ 40, %if.then23.i ], [ %.pre.i, %if.then26.i ], [ %86, %if.end20.i ]
  %sub31.i = add nsw i64 %89, -40
  %arrayidx.i76 = getelementptr inbounds [224 x i16], ptr @natglot, i64 0, i64 %sub31.i
  %90 = load i16, ptr %arrayidx.i76, align 2, !tbaa !18
  %conv32.i77 = sitofp i16 %90 to float
  store float %conv32.i77, ptr @natglot_b, align 4, !tbaa !73
  %conv33.i = sitofp i64 %89 to float
  %mul34.i = fmul float %conv33.i, %conv32.i77
  %conv35.i = fpext float %mul34.i to double
  %mul36.i = fmul double %conv35.i, 3.330000e-01
  %conv37.i = fptrunc double %mul36.i to float
  store float %conv37.i, ptr @natglot_a, align 4, !tbaa !73
  %91 = load i64, ptr %samrate84.i, align 8, !tbaa !32
  %div39.i = sdiv i64 %91, %89
  tail call fastcc void @setabc(i64 noundef 0, i64 noundef %div39.i, ptr noundef nonnull @rgl)
  %92 = load i64, ptr @nopen, align 8, !tbaa !15
  %conv40.i = sitofp i64 %92 to double
  %mul41.i = fmul double %conv40.i, 8.330000e-03
  %conv42.i = fptrunc double %mul41.i to float
  %mul43.i = fmul float %conv42.i, %conv42.i
  %93 = load float, ptr getelementptr inbounds nuw (i8, ptr @rgl, i64 8), align 8, !tbaa !111
  %mul44.i = fmul float %93, %mul43.i
  store float %mul44.i, ptr getelementptr inbounds nuw (i8, ptr @rgl, i64 8), align 8, !tbaa !111
  %94 = load i64, ptr @T0, align 8, !tbaa !15
  %sub45.i = sub nsw i64 %94, %92
  %95 = load i64, ptr @Kskew, align 8, !tbaa !15
  %cmp46.i = icmp sgt i64 %95, %sub45.i
  br i1 %cmp46.i, label %if.then48.i, label %if.end55.i

if.then48.i:                                      ; preds = %if.end30.i
  %96 = load i32, ptr %quiet_flag.i, align 4, !tbaa !34
  %tobool50.not.i = icmp eq i32 %96, 0
  br i1 %tobool50.not.i, label %if.then51.i80, label %if.end54.i

if.then51.i80:                                    ; preds = %if.then48.i
  %call53.i = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.48.567, i64 noundef %95, i64 noundef %sub45.i)
  %.pre17.pre.i = load i64, ptr @T0, align 8, !tbaa !15
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then51.i80, %if.then48.i
  %.pre17.i = phi i64 [ %.pre17.pre.i, %if.then51.i80 ], [ %94, %if.then48.i ]
  store i64 %sub45.i, ptr @Kskew, align 8, !tbaa !15
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.end54.i, %if.end30.i
  %97 = phi i64 [ %.pre17.i, %if.end54.i ], [ %94, %if.end30.i ]
  %98 = phi i64 [ %sub45.i, %if.end54.i ], [ %95, %if.end30.i ]
  %99 = load i64, ptr @skew, align 8, !tbaa !15
  %sub59.i = sub nsw i64 0, %98
  %cmp5616.i = icmp slt i64 %99, 0
  %storemerge.i78 = select i1 %cmp5616.i, i64 %sub59.i, i64 %98
  %add.i79 = add nsw i64 %storemerge.i78, %97
  store i64 %add.i79, ptr @T0, align 8, !tbaa !15
  %sub61.i = sub nsw i64 0, %storemerge.i78
  store i64 %sub61.i, ptr @skew, align 8, !tbaa !15
  %100 = icmp ne i64 %add.i79, 4
  br label %if.end63.i

if.else62.i:                                      ; preds = %if.then24
  store i64 4, ptr @T0, align 8, !tbaa !15
  store float 0.000000e+00, ptr @amp_voice, align 4, !tbaa !73
  store i64 4, ptr @nmod, align 8, !tbaa !15
  store float 0.000000e+00, ptr @amp_breth, align 4, !tbaa !73
  store float 0.000000e+00, ptr @natglot_a, align 4, !tbaa !73
  store float 0.000000e+00, ptr @natglot_b, align 4, !tbaa !73
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.else62.i, %if.end55.i
  %cmp64.i = phi i1 [ false, %if.else62.i ], [ %100, %if.end55.i ]
  %or.cond1.i = or i1 %cmp66.i64, %cmp64.i
  br i1 %or.cond1.i, label %if.then68.i65, label %if.end25

if.then68.i65:                                    ; preds = %if.end63.i
  %101 = load i64, ptr %TLTdb.i, align 8, !tbaa !119
  %conv69.i = sitofp i64 %101 to double
  %mul70.i = fmul double %conv69.i, 3.300000e-02
  %conv71.i = fptrunc double %mul70.i to float
  store float %conv71.i, ptr @decay, align 4, !tbaa !73
  %cmp73.i = fcmp ogt float %conv71.i, 0.000000e+00
  %conv78.i = fsub float 1.000000e+00, %conv71.i
  %conv78.sink.i = select i1 %cmp73.i, float %conv78.i, float 1.000000e+00
  store float %conv78.sink.i, ptr @onemd, align 4, !tbaa !73
  br label %if.end25

if.end25:                                         ; preds = %if.then68.i65, %if.end63.i, %if.end21
  %call26 = tail call fastcc float @resonator(ptr noundef nonnull @rlp, float noundef %voice.2)
  %102 = load i64, ptr @nper, align 8, !tbaa !15
  %inc27 = add nsw i64 %102, 1
  store i64 %inc27, ptr @nper, align 8, !tbaa !15
  %inc28 = add nuw nsw i32 %n4.0, 1
  br label %for.cond13, !llvm.loop !120

for.end:                                          ; preds = %for.cond13
  %cmp5 = icmp sgt i64 %65, %66
  %conv10 = fmul float %conv4, 5.000000e-01
  %noise.0 = select i1 %cmp5, float %conv10, float %conv4
  %mul12 = fmul float %67, %noise.0
  %103 = load float, ptr @onemd, align 4, !tbaa !73
  %104 = load float, ptr @vlast, align 4, !tbaa !73
  %105 = load float, ptr @decay, align 4, !tbaa !73
  %mul30 = fmul float %104, %105
  %106 = tail call float @llvm.fmuladd.f32(float %voice.1, float %103, float %mul30)
  store float %106, ptr @vlast, align 4, !tbaa !73
  %107 = load i64, ptr @nopen, align 8, !tbaa !15
  %cmp31 = icmp slt i64 %68, %107
  %108 = load float, ptr @amp_breth, align 4
  %conv34 = sitofp i64 %shr to float
  %109 = tail call float @llvm.fmuladd.f32(float %108, float %conv34, float %106)
  %voice.3 = select i1 %cmp31, float %109, float %106
  %110 = load float, ptr @amp_voice, align 4, !tbaa !73
  %mul37 = fmul float %110, %voice.3
  %111 = load float, ptr @amp_aspir, align 4, !tbaa !73
  %mul38 = fmul float %noise.0, %111
  %add39 = fadd float %mul37, %mul38
  %112 = load i32, ptr %globals, align 8, !tbaa !38
  %cmp40.not = icmp eq i32 %112, 2
  %call61 = tail call fastcc float @antiresonator(float noundef %add39)
  %call62 = tail call fastcc float @resonator(ptr noundef nonnull @rnpc, float noundef %call61)
  br i1 %cmp40.not, label %if.else60, label %if.then42

if.then42:                                        ; preds = %for.end
  %113 = load i64, ptr %nfcascade.i, align 8, !tbaa !37
  switch i64 %113, label %if.end65 [
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
  %call45 = tail call fastcc float @resonator(ptr noundef nonnull @r8c, float noundef %call62)
  br label %sw.bb46

sw.bb46:                                          ; preds = %sw.bb, %if.then42
  %casc_next_in.0 = phi float [ %call45, %sw.bb ], [ %call62, %if.then42 ]
  %call47 = tail call fastcc float @resonator(ptr noundef nonnull @r7c, float noundef %casc_next_in.0)
  br label %sw.bb48

sw.bb48:                                          ; preds = %sw.bb46, %if.then42
  %casc_next_in.1 = phi float [ %call47, %sw.bb46 ], [ %call62, %if.then42 ]
  %call49 = tail call fastcc float @resonator(ptr noundef nonnull @r6c, float noundef %casc_next_in.1)
  br label %sw.bb50

sw.bb50:                                          ; preds = %sw.bb48, %if.then42
  %casc_next_in.2 = phi float [ %call49, %sw.bb48 ], [ %call62, %if.then42 ]
  %call51 = tail call fastcc float @resonator(ptr noundef nonnull @r5c, float noundef %casc_next_in.2)
  br label %sw.bb52

sw.bb52:                                          ; preds = %sw.bb50, %if.then42
  %casc_next_in.3 = phi float [ %call51, %sw.bb50 ], [ %call62, %if.then42 ]
  %call53 = tail call fastcc float @resonator(ptr noundef nonnull @r4c, float noundef %casc_next_in.3)
  br label %sw.bb54

sw.bb54:                                          ; preds = %sw.bb52, %if.then42
  %casc_next_in.4 = phi float [ %call53, %sw.bb52 ], [ %call62, %if.then42 ]
  %call55 = tail call fastcc float @resonator(ptr noundef nonnull @r3c, float noundef %casc_next_in.4)
  br label %sw.bb56

sw.bb56:                                          ; preds = %sw.bb54, %if.then42
  %casc_next_in.5 = phi float [ %call55, %sw.bb54 ], [ %call62, %if.then42 ]
  %call57 = tail call fastcc float @resonator(ptr noundef nonnull @r2c, float noundef %casc_next_in.5)
  br label %sw.bb58

sw.bb58:                                          ; preds = %sw.bb56, %if.then42
  %casc_next_in.6 = phi float [ %call57, %sw.bb56 ], [ %call62, %if.then42 ]
  %call59 = tail call fastcc float @resonator(ptr noundef nonnull @r1c, float noundef %casc_next_in.6)
  br label %if.end65

if.else60:                                        ; preds = %for.end
  %call63 = tail call fastcc float @resonator(ptr noundef nonnull @r1p, float noundef %call62)
  %114 = load float, ptr @glotlast, align 4, !tbaa !73
  %sub = fsub float %call62, %114
  %add64 = fadd float %mul12, %sub
  store float %call62, ptr @glotlast, align 4, !tbaa !73
  br label %if.end65

if.end65:                                         ; preds = %sw.bb58, %if.then42, %if.else60
  %sourc.0 = phi float [ %add64, %if.else60 ], [ %mul12, %if.then42 ], [ %mul12, %sw.bb58 ]
  %out.1 = phi float [ %call63, %if.else60 ], [ 0.000000e+00, %if.then42 ], [ %call59, %sw.bb58 ]
  %call66 = tail call fastcc float @resonator(ptr noundef nonnull @r6p, float noundef %sourc.0)
  %sub67 = fsub float %call66, %out.1
  %call68 = tail call fastcc float @resonator(ptr noundef nonnull @r5p, float noundef %sourc.0)
  %sub69 = fsub float %call68, %sub67
  %call70 = tail call fastcc float @resonator(ptr noundef nonnull @r4p, float noundef %sourc.0)
  %sub71 = fsub float %call70, %sub69
  %call72 = tail call fastcc float @resonator(ptr noundef nonnull @r3p, float noundef %sourc.0)
  %sub73 = fsub float %call72, %sub71
  %call74 = tail call fastcc float @resonator(ptr noundef nonnull @r2p, float noundef %sourc.0)
  %sub75 = fsub float %call74, %sub73
  %115 = load float, ptr @amp_bypas, align 4, !tbaa !73
  %neg = fneg float %sub75
  %116 = tail call float @llvm.fmuladd.f32(float %115, float %sourc.0, float %neg)
  %call77 = tail call fastcc float @resonator(ptr noundef nonnull @rout, float noundef %116)
  %conv.i82 = fptosi float %call77 to i64
  %cmp.i83 = icmp slt i64 %conv.i82, -32767
  br i1 %cmp.i83, label %if.then.i84, label %if.else.i

if.then.i84:                                      ; preds = %if.end65
  %sub.i85 = sub nsw i64 0, %conv.i82
  br label %if.end5.sink.split.i

if.else.i:                                        ; preds = %if.end65
  %cmp2.i = icmp sgt i64 %conv.i82, 32767
  br i1 %cmp2.i, label %if.end5.sink.split.i, label %clip.exit

if.end5.sink.split.i:                             ; preds = %if.else.i, %if.then.i84
  %conv.sink.i = phi i64 [ %sub.i85, %if.then.i84 ], [ %conv.i82, %if.else.i ]
  %temp.0.ph.i = phi i64 [ -32767, %if.then.i84 ], [ 32767, %if.else.i ]
  %.b.i = load i1, ptr @warnsw, align 4
  br i1 %.b.i, label %clip.exit, label %if.then.i86

if.then.i86:                                      ; preds = %if.end5.sink.split.i
  store i1 true, ptr @warnsw, align 4
  %117 = load i32, ptr %quiet_flag.i, align 4, !tbaa !34
  %tobool.not.i88 = icmp eq i32 %117, 0
  br i1 %tobool.not.i88, label %if.then1.i, label %clip.exit

if.then1.i:                                       ; preds = %if.then.i86
  %call.i89 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85.544)
  %conv.i.i = uitofp nneg i64 %conv.sink.i to double
  %div.i.i = fdiv double %conv.i.i, 3.276700e+04
  %call.i.i = tail call double @log10(double noundef %div.i.i) #37, !tbaa !10
  %mul.i.i90 = fmul double %call.i.i, 2.000000e+01
  %conv1.i.i91 = fptrunc double %mul.i.i90 to float
  %conv.i92 = fpext float %conv1.i.i91 to double
  %call3.i93 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.86.545, double noundef %conv.i92)
  br label %clip.exit

clip.exit:                                        ; preds = %if.then1.i, %if.then.i86, %if.end5.sink.split.i, %if.else.i
  %temp.0.i = phi i64 [ %conv.i82, %if.else.i ], [ %temp.0.ph.i, %if.end5.sink.split.i ], [ %temp.0.ph.i, %if.then.i86 ], [ %temp.0.ph.i, %if.then1.i ]
  %conv6.i = trunc nsw i64 %temp.0.i to i16
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %jwave.addr.0, i64 2
  store i16 %conv6.i, ptr %jwave.addr.0, align 2, !tbaa !18
  %inc80 = add nuw nsw i64 %ns.0, 1
  br label %for.cond, !llvm.loop !121

for.end81:                                        ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal fastcc float @resonator(ptr noundef captures(none) %r, float noundef %input) unnamed_addr #22 {
entry:
  %a = getelementptr inbounds nuw i8, ptr %r, i64 8
  %0 = load float, ptr %a, align 8, !tbaa !111
  %b = getelementptr inbounds nuw i8, ptr %r, i64 12
  %1 = load float, ptr %b, align 4, !tbaa !113
  %p1 = getelementptr inbounds nuw i8, ptr %r, i64 20
  %2 = load float, ptr %p1, align 4, !tbaa !122
  %mul1 = fmul float %1, %2
  %3 = tail call float @llvm.fmuladd.f32(float %0, float %input, float %mul1)
  %c = getelementptr inbounds nuw i8, ptr %r, i64 16
  %4 = load float, ptr %c, align 8, !tbaa !114
  %p2 = getelementptr inbounds nuw i8, ptr %r, i64 24
  %5 = load float, ptr %p2, align 8, !tbaa !123
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %3)
  store float %2, ptr %p2, align 8, !tbaa !123
  store float %6, ptr %p1, align 4, !tbaa !122
  ret float %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc float @antiresonator(float noundef %input) unnamed_addr #23 {
entry:
  %0 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 8), align 8, !tbaa !111
  %1 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 12), align 4, !tbaa !113
  %2 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 20), align 4, !tbaa !122
  %mul1 = fmul float %1, %2
  %3 = tail call float @llvm.fmuladd.f32(float %0, float %input, float %mul1)
  %4 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 16), align 8, !tbaa !114
  %5 = load float, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 24), align 8, !tbaa !123
  %6 = tail call float @llvm.fmuladd.f32(float %4, float %5, float %3)
  store float %2, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 24), align 8, !tbaa !123
  store float %input, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 20), align 4, !tbaa !122
  ret float %6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @log10(double noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind uwtable
define internal fastcc float @DBtoLIN(ptr noundef readonly captures(none) %globals, i64 noundef %dB) unnamed_addr #0 {
entry:
  %cmp = icmp slt i64 %dB, 0
  br i1 %cmp, label %if.end5, label %if.else

if.else:                                          ; preds = %entry
  %cmp1 = icmp samesign ugt i64 %dB, 87
  br i1 %cmp1, label %if.then2, label %if.end5

if.then2:                                         ; preds = %if.else
  %quiet_flag = getelementptr inbounds nuw i8, ptr %globals, i64 4
  %0 = load i32, ptr %quiet_flag, align 4, !tbaa !34
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.then2
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.44.569, i64 noundef %dB)
  br label %if.end5

if.end5:                                          ; preds = %if.then2, %if.then3, %entry, %if.else
  %dB.addr.0 = phi i64 [ %dB, %if.else ], [ 0, %entry ], [ 87, %if.then3 ], [ 87, %if.then2 ]
  %arrayidx = getelementptr inbounds nuw [88 x float], ptr @amptable, i64 0, i64 %dB.addr.0
  %1 = load float, ptr %arrayidx, align 4, !tbaa !73
  %conv = fpext float %1 to double
  %mul = fmul double %conv, 1.000000e-03
  %conv6 = fptrunc double %mul to float
  ret float %conv6
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite) uwtable
define internal fastcc void @setabc(i64 noundef %f, i64 noundef %bw, ptr noundef writeonly captures(none) initializes((8, 20)) %rp) unnamed_addr #24 {
entry:
  %0 = load float, ptr @minus_pi_t, align 4, !tbaa !73
  %conv = sitofp i64 %bw to float
  %mul = fmul float %0, %conv
  %conv1 = fpext float %mul to double
  %call = tail call double @exp(double noundef %conv1) #37, !tbaa !10
  %conv2 = fptrunc double %call to float
  %1 = fneg float %conv2
  %fneg = fmul float %conv2, %1
  %c = getelementptr inbounds nuw i8, ptr %rp, i64 16
  store float %fneg, ptr %c, align 8, !tbaa !114
  %2 = load float, ptr @two_pi_t, align 4, !tbaa !73
  %conv4 = sitofp i64 %f to float
  %mul5 = fmul float %2, %conv4
  %conv6 = fpext float %mul5 to double
  %conv7 = fpext float %conv2 to double
  %call8 = tail call double @cos(double noundef %conv6) #37, !tbaa !10
  %mul9 = fmul double %call8, %conv7
  %mul10 = fmul double %mul9, 2.000000e+00
  %conv11 = fptrunc double %mul10 to float
  %b = getelementptr inbounds nuw i8, ptr %rp, i64 12
  store float %conv11, ptr %b, align 4, !tbaa !113
  %conv13 = fpext float %conv11 to double
  %sub = fsub double 1.000000e+00, %conv13
  %conv15 = fpext float %fneg to double
  %sub16 = fsub double %sub, %conv15
  %conv17 = fptrunc double %sub16 to float
  %a = getelementptr inbounds nuw i8, ptr %rp, i64 8
  store float %conv17, ptr %a, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite) uwtable
define internal fastcc void @setabcg(i64 noundef %f, i64 noundef %bw, ptr noundef captures(none) initializes((8, 20)) %rp, float noundef %gain) unnamed_addr #25 {
entry:
  tail call fastcc void @setabc(i64 noundef %f, i64 noundef %bw, ptr noundef %rp)
  %a = getelementptr inbounds nuw i8, ptr %rp, i64 8
  %0 = load float, ptr %a, align 8, !tbaa !111
  %mul = fmul float %gain, %0
  store float %mul, ptr %a, align 8, !tbaa !111
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @parwave_init(ptr noundef readonly captures(none) %globals) local_unnamed_addr #26 {
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
  store float %conv6, ptr @minus_pi_t, align 4, !tbaa !73
  %conv9 = fmul float %conv6, -2.000000e+00
  store float %conv9, ptr @two_pi_t, align 4, !tbaa !73
  tail call fastcc void @setabc(i64 noundef %div, i64 noundef %div3, ptr noundef nonnull @rlp)
  store i64 0, ptr @nper, align 8, !tbaa !15
  store i64 0, ptr @T0, align 8, !tbaa !15
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnpp, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnpp, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r1p, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r1p, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r2p, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r2p, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r3p, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r3p, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r4p, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r4p, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r5p, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r5p, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r6p, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r6p, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r1c, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r1c, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r2c, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r2c, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r3c, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r3c, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r4c, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r4c, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r5c, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r5c, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r6c, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r6c, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r7c, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r7c, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r8c, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @r8c, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnpc, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnpc, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rnz, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rgl, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rgl, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rlp, i64 20), align 4, !tbaa !122
  store float 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @rlp, i64 24), align 8, !tbaa !123
  store float 0.000000e+00, ptr @vlast, align 4, !tbaa !73
  store float 0.000000e+00, ptr @nlast, align 4, !tbaa !73
  store float 0.000000e+00, ptr @glotlast, align 4, !tbaa !73
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
  %s = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %s) #37
  store ptr %phone, ptr %s, align 8, !tbaa !12
  %idx.ext = sext i32 %n to i64
  %add.ptr = getelementptr inbounds i8, ptr %phone, i64 %idx.ext
  %0 = load ptr, ptr @phtoelm, align 8, !tbaa !124
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %while.cond.preheader

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
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.then, %entry
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %while.cond.preheader, %if.end27.loopexit
  %.ph = phi ptr [ %phone, %while.cond.preheader ], [ %.pre.pre, %if.end27.loopexit ]
  %t.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %t.1, %if.end27.loopexit ]
  %stress.0.ph = phi i32 [ 0, %while.cond.preheader ], [ %stress.1, %if.end27.loopexit ]
  br label %while.cond.outer15

while.cond.outer15:                               ; preds = %while.cond.outer15.backedge, %while.cond.outer
  %.ph16 = phi ptr [ %.ph, %while.cond.outer ], [ %incdec.ptr21, %while.cond.outer15.backedge ]
  %stress.0.ph17 = phi i32 [ %stress.0.ph, %while.cond.outer ], [ %stress.0.ph17.be, %while.cond.outer15.backedge ]
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.outer15
  %1 = phi ptr [ %.ph16, %while.cond.outer15 ], [ %incdec.ptr21, %while.cond.backedge ]
  %cmp = icmp ult ptr %1, %add.ptr
  br i1 %cmp, label %land.rhs, label %while.end28

land.rhs:                                         ; preds = %while.cond
  %2 = load i8, ptr %1, align 1, !tbaa !5
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %while.end28, label %while.body

while.body:                                       ; preds = %land.rhs
  %call = call ptr @trie_lookup(ptr noundef nonnull @phtoelm, ptr noundef nonnull %s)
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %while.body
  %3 = load i8, ptr %call, align 1, !tbaa !5
  %conv5 = sext i8 %3 to i32
  br label %while.cond6

while.cond6:                                      ; preds = %while.body9, %if.then3
  %n4.0 = phi i32 [ %conv5, %if.then3 ], [ %dec, %while.body9 ]
  %call.pn = phi ptr [ %call, %if.then3 ], [ %e.0, %while.body9 ]
  %t.1 = phi i32 [ %t.0.ph, %if.then3 ], [ %add19, %while.body9 ]
  %stress.1 = phi i32 [ %stress.0.ph17, %if.then3 ], [ %spec.select, %while.body9 ]
  %cmp7 = icmp sgt i32 %n4.0, 0
  br i1 %cmp7, label %while.body9, label %if.end27.loopexit

while.body9:                                      ; preds = %while.cond6
  %dec = add nsw i32 %n4.0, -1
  %e.0 = getelementptr inbounds nuw i8, ptr %call.pn, i64 1
  %4 = load i8, ptr %e.0, align 1, !tbaa !5
  %conv11 = sext i8 %4 to i32
  %idxprom = sext i8 %4 to i64
  %arrayidx = getelementptr inbounds [0 x %struct.Elm_s], ptr @Elements, i64 0, i64 %idxprom
  %call12 = tail call i32 @phone_append(ptr noundef %elm, i32 noundef %conv11)
  %feat = getelementptr inbounds nuw i8, ptr %arrayidx, i64 32
  %5 = load i64, ptr %feat, align 16, !tbaa !71
  %and = and i64 %5, 268435456
  %tobool13.not = icmp eq i64 %and, 0
  %spec.select = select i1 %tobool13.not, i32 0, i32 %stress.1
  %du = getelementptr inbounds nuw i8, ptr %arrayidx, i64 9
  %6 = load i8, ptr %du, align 1, !tbaa !126
  %conv16 = sext i8 %6 to i16
  %ud = getelementptr inbounds nuw i8, ptr %arrayidx, i64 10
  %7 = load i8, ptr %ud, align 2, !tbaa !127
  %conv17 = sext i8 %7 to i16
  %add = add nsw i16 %conv17, %conv16
  %div13 = sdiv i16 %add, 2
  %div.sext = sext i16 %div13 to i32
  %8 = load i32, ptr @speed, align 4, !tbaa !10
  %mul = mul nsw i32 %8, %div.sext
  %call18 = tail call i32 @phone_append(ptr noundef %elm, i32 noundef %mul)
  %add19 = add i32 %mul, %t.1
  %call20 = tail call i32 @phone_append(ptr noundef %elm, i32 noundef %spec.select)
  br label %while.cond6, !llvm.loop !128

if.else:                                          ; preds = %while.body
  %9 = load ptr, ptr %s, align 8, !tbaa !12
  %incdec.ptr21 = getelementptr inbounds nuw i8, ptr %9, i64 1
  store ptr %incdec.ptr21, ptr %s, align 8, !tbaa !12
  %10 = load i8, ptr %9, align 1, !tbaa !5
  switch i8 %10, label %sw.default [
    i8 39, label %while.cond.outer15.backedge
    i8 44, label %sw.bb23
    i8 43, label %sw.bb24
    i8 45, label %while.cond.backedge
  ]

while.cond.backedge:                              ; preds = %if.else, %sw.default
  br label %while.cond, !llvm.loop !129

sw.bb23:                                          ; preds = %if.else
  br label %while.cond.outer15.backedge

sw.bb24:                                          ; preds = %if.else
  br label %while.cond.outer15.backedge

while.cond.outer15.backedge:                      ; preds = %if.else, %sw.bb24, %sw.bb23
  %stress.0.ph17.be = phi i32 [ 2, %sw.bb23 ], [ 1, %sw.bb24 ], [ 3, %if.else ]
  br label %while.cond.outer15, !llvm.loop !129

sw.default:                                       ; preds = %if.else
  %conv22 = sext i8 %10 to i32
  %11 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %11, ptr noundef nonnull @.str.1.742, i32 noundef %conv22, i32 noundef %n, ptr noundef %phone) #40
  br label %while.cond.backedge

if.end27.loopexit:                                ; preds = %while.cond6
  %.pre.pre = load ptr, ptr %s, align 8, !tbaa !12
  br label %while.cond.outer, !llvm.loop !129

while.end28:                                      ; preds = %while.cond, %land.rhs
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %s) #37
  ret i32 %t.0.ph
}

; Function Attrs: nofree nounwind uwtable
define internal void @enter(ptr noundef readonly captures(none) %p, ...) unnamed_addr #0 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  %buf = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ap) #37
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %buf) #37
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
  %add.ptr.i = getelementptr inbounds nuw %struct.Elm_s, ptr @Elements, i64 %idx.ext.i
  br label %while.cond.i

while.cond.i:                                     ; preds = %if.end.i, %while.body
  %e.0.i = phi ptr [ @Elements, %while.body ], [ %incdec.ptr.i, %if.end.i ]
  %cmp.i = icmp ult ptr %e.0.i, %add.ptr.i
  br i1 %cmp.i, label %while.body.i, label %if.else

while.body.i:                                     ; preds = %while.cond.i
  %6 = load ptr, ptr %e.0.i, align 8, !tbaa !67
  %call.i = call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %6) #36
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then, label %if.end.i

if.end.i:                                         ; preds = %while.body.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %e.0.i, i64 272
  br label %while.cond.i, !llvm.loop !130

if.then:                                          ; preds = %while.body.i
  %sub.ptr.lhs.cast = ptrtoint ptr %e.0.i to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, ptrtoint (ptr @Elements to i64)
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 272
  %conv = trunc i64 %sub.ptr.div to i8
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %x.0.ph, i64 1
  store i8 %conv, ptr %x.0.ph, align 1, !tbaa !5
  br label %while.cond.outer, !llvm.loop !131

if.else:                                          ; preds = %while.cond.i
  %7 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call4 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %7, ptr noundef nonnull @.str.110.851, ptr noundef nonnull %4) #40
  br label %while.cond, !llvm.loop !131

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
  %call13 = call noalias ptr @malloc(i64 noundef %add) #39
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %call13, ptr nonnull align 16 %buf, i64 %add, i1 false)
  call void @trie_insert(ptr noundef nonnull @phtoelm, ptr noundef %p, ptr noundef %call13)
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %buf) #37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ap) #37
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local i32 @spell_out(ptr noundef %word, i32 noundef %n, ptr noundef captures(none) %phone) local_unnamed_addr #27 {
entry:
  %0 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.2.856, i32 noundef %n, ptr noundef %word) #40
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %n.addr.0 = phi i32 [ %n, %entry ], [ %dec, %while.body ]
  %word.addr.0 = phi ptr [ %word, %entry ], [ %incdec.ptr, %while.body ]
  %nph.0 = phi i32 [ 0, %entry ], [ %add, %while.body ]
  %cmp = icmp sgt i32 %n.addr.0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %dec = add nsw i32 %n.addr.0, -1
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %word.addr.0, i64 1
  %1 = load i8, ptr %word.addr.0, align 1, !tbaa !5
  %2 = and i8 %1, 127
  %idxprom = zext nneg i8 %2 to i64
  %arrayidx = getelementptr inbounds nuw [0 x ptr], ptr @ASCII, i64 0, i64 %idxprom
  %3 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %call1 = tail call i32 @xlate_string(ptr noundef %3, ptr noundef %phone)
  %add = add i32 %call1, %nph.0
  br label %while.cond, !llvm.loop !132

while.end:                                        ; preds = %while.cond
  ret i32 %nph.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @xlate_string(ptr noundef %string, ptr noundef captures(none) %phone) local_unnamed_addr #5 {
entry:
  %call = tail call ptr @__ctype_b_loc() #43
  %0 = load ptr, ptr %call, align 8, !tbaa !133
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
  br i1 %tobool.not, label %while.cond2.preheader, label %while.cond, !llvm.loop !135

while.cond2.preheader:                            ; preds = %while.cond
  %items = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %alloc.i = getelementptr inbounds nuw i8, ptr %phone, i64 12
  br label %while.cond2

while.cond2.loopexit:                             ; preds = %while.cond292
  br label %while.cond2, !llvm.loop !136

while.cond2:                                      ; preds = %while.cond2.preheader, %while.cond2.loopexit
  %4 = phi i16 [ %46, %while.cond2.loopexit ], [ %2, %while.cond2.preheader ]
  %5 = phi ptr [ %44, %while.cond2.loopexit ], [ %0, %while.cond2.preheader ]
  %6 = phi i8 [ %45, %while.cond2.loopexit ], [ %1, %while.cond2.preheader ]
  %s.1 = phi ptr [ %s.15, %while.cond2.loopexit ], [ %s.0, %while.cond2.preheader ]
  %nph.0 = phi i32 [ %nph.1, %while.cond2.loopexit ], [ 0, %while.cond2.preheader ]
  %tobool3.not = icmp eq i8 %6, 0
  br i1 %tobool3.not, label %while.end303, label %while.body4

while.body4:                                      ; preds = %while.cond2
  %conv9 = zext i16 %4 to i32
  %and10 = and i32 %conv9, 1024
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.else103, label %while.cond12

while.cond12:                                     ; preds = %while.body4, %while.body37
  %7 = phi i16 [ %.pre113, %while.body37 ], [ %4, %while.body4 ]
  %8 = phi i8 [ %.pre, %while.body37 ], [ %6, %while.body4 ]
  %s.2 = phi ptr [ %incdec.ptr38, %while.body37 ], [ %s.1, %while.body4 ]
  %9 = and i16 %7, 1024
  %tobool19.not = icmp eq i16 %9, 0
  br i1 %tobool19.not, label %lor.rhs, label %while.cond12.while.body37_crit_edge

while.cond12.while.body37_crit_edge:              ; preds = %while.cond12
  %incdec.ptr38.phi.trans.insert = getelementptr inbounds nuw i8, ptr %s.2, i64 1
  %.pre.pre = load i8, ptr %incdec.ptr38.phi.trans.insert, align 1, !tbaa !5
  %idxprom15.phi.trans.insert.phi.trans.insert = sext i8 %.pre.pre to i64
  %arrayidx16.phi.trans.insert.phi.trans.insert = getelementptr inbounds i16, ptr %5, i64 %idxprom15.phi.trans.insert.phi.trans.insert
  %.pre113.pre = load i16, ptr %arrayidx16.phi.trans.insert.phi.trans.insert, align 2, !tbaa !18
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
  %.pre113 = phi i16 [ %.pre113.pre, %while.cond12.while.body37_crit_edge ], [ %11, %land.rhs ]
  %.pre = phi i8 [ %.pre.pre, %while.cond12.while.body37_crit_edge ], [ %10, %land.rhs ]
  %incdec.ptr38 = getelementptr inbounds nuw i8, ptr %s.2, i64 1
  br label %while.cond12, !llvm.loop !137

lor.lhs.false41:                                  ; preds = %land.rhs, %lor.rhs
  %conv46 = zext i16 %7 to i32
  %13 = and i32 %conv46, 8196
  %or.cond = icmp eq i32 %13, 0
  br i1 %or.cond, label %lor.lhs.false57, label %if.then68

lor.lhs.false57:                                  ; preds = %lor.lhs.false41
  %and63 = and i32 %conv46, 2048
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %while.cond74.preheader, label %land.lhs.true

while.cond74.preheader:                           ; preds = %land.lhs.true, %lor.lhs.false57
  br label %while.cond74

land.lhs.true:                                    ; preds = %lor.lhs.false57
  %sub.ptr.lhs.cast = ptrtoint ptr %s.2 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %s.1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv65 = trunc i64 %sub.ptr.sub to i32
  %call66 = tail call i32 @suspect_word(ptr noundef nonnull %s.1, i32 noundef %conv65)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.then68, label %while.cond74.preheader

if.then68:                                        ; preds = %lor.rhs, %land.lhs.true, %lor.lhs.false41
  %sub.ptr.lhs.cast69 = ptrtoint ptr %s.2 to i64
  %sub.ptr.rhs.cast70 = ptrtoint ptr %s.1 to i64
  %sub.ptr.sub71 = sub i64 %sub.ptr.lhs.cast69, %sub.ptr.rhs.cast70
  %conv72 = trunc i64 %sub.ptr.sub71 to i32
  %call73 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %s.1, i32 noundef %conv72, ptr noundef %phone)
  %add = add i32 %call73, %nph.0
  br label %if.end291

while.cond74:                                     ; preds = %while.cond74.preheader, %while.body94
  %s.3 = phi ptr [ %incdec.ptr95, %while.body94 ], [ %s.2, %while.cond74.preheader ]
  %14 = load i8, ptr %s.3, align 1, !tbaa !5
  %tobool76.not = icmp eq i8 %14, 0
  br i1 %tobool76.not, label %while.end96, label %land.lhs.true77

land.lhs.true77:                                  ; preds = %while.cond74
  %idxprom80 = sext i8 %14 to i64
  %arrayidx81 = getelementptr inbounds i16, ptr %5, i64 %idxprom80
  %15 = load i16, ptr %arrayidx81, align 2, !tbaa !18
  %16 = and i16 %15, 8196
  %or.cond101 = icmp eq i16 %16, 0
  br i1 %or.cond101, label %while.body94, label %while.end96

while.body94:                                     ; preds = %land.lhs.true77
  %incdec.ptr95 = getelementptr inbounds nuw i8, ptr %s.3, i64 1
  br label %while.cond74, !llvm.loop !138

while.end96:                                      ; preds = %land.lhs.true77, %while.cond74
  %sub.ptr.lhs.cast97 = ptrtoint ptr %s.3 to i64
  %sub.ptr.rhs.cast98 = ptrtoint ptr %s.1 to i64
  %sub.ptr.sub99 = sub i64 %sub.ptr.lhs.cast97, %sub.ptr.rhs.cast98
  %conv100 = trunc i64 %sub.ptr.sub99 to i32
  %call101 = tail call i32 @spell_out(ptr noundef nonnull %s.1, i32 noundef %conv100, ptr noundef %phone)
  %add102 = add i32 %call101, %nph.0
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
  %arrayidx117 = getelementptr inbounds nuw i8, ptr %s.1, i64 1
  %17 = load i8, ptr %arrayidx117, align 1, !tbaa !5
  %idxprom119 = sext i8 %17 to i64
  %arrayidx120 = getelementptr inbounds i16, ptr %5, i64 %idxprom119
  %18 = load i16, ptr %arrayidx120, align 2, !tbaa !18
  %19 = and i16 %18, 2048
  %tobool123.not = icmp eq i16 %19, 0
  br i1 %tobool123.not, label %if.else215, label %if.then124

if.then124:                                       ; preds = %land.lhs.true115, %if.else103
  %cmp126 = icmp eq i8 %6, 45
  %spec.select.idx = zext i1 %cmp126 to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %s.1, i64 %spec.select.idx
  br label %while.cond133

while.cond133:                                    ; preds = %while.body141, %if.then124
  %value.0 = phi i64 [ 0, %if.then124 ], [ %sub, %while.body141 ]
  %s.6 = phi ptr [ %spec.select, %if.then124 ], [ %incdec.ptr144, %while.body141 ]
  %20 = load i8, ptr %s.6, align 1, !tbaa !5
  %idxprom136 = sext i8 %20 to i64
  %arrayidx137 = getelementptr inbounds i16, ptr %5, i64 %idxprom136
  %21 = load i16, ptr %arrayidx137, align 2, !tbaa !18
  %22 = and i16 %21, 2048
  %tobool140.not = icmp eq i16 %22, 0
  br i1 %tobool140.not, label %while.end145, label %while.body141

while.body141:                                    ; preds = %while.cond133
  %mul = mul nsw i64 %value.0, 10
  %add143 = add i64 %mul, -48
  %sub = add i64 %add143, %idxprom136
  %incdec.ptr144 = getelementptr inbounds nuw i8, ptr %s.6, i64 1
  br label %while.cond133, !llvm.loop !139

while.end145:                                     ; preds = %while.cond133
  %cond = select i1 %cmp126, i32 -1, i32 1
  %cmp147 = icmp eq i8 %20, 46
  br i1 %cmp147, label %land.lhs.true149, label %if.else183

land.lhs.true149:                                 ; preds = %while.end145
  %arrayidx151 = getelementptr inbounds nuw i8, ptr %s.6, i64 1
  %23 = load i8, ptr %arrayidx151, align 1, !tbaa !5
  %idxprom153 = sext i8 %23 to i64
  %arrayidx154 = getelementptr inbounds i16, ptr %5, i64 %idxprom153
  %24 = load i16, ptr %arrayidx154, align 2, !tbaa !18
  %25 = and i16 %24, 2048
  %tobool157.not = icmp eq i16 %25, 0
  br i1 %tobool157.not, label %if.else183, label %if.then158

if.then158:                                       ; preds = %land.lhs.true149
  %conv160 = sext i32 %cond to i64
  %mul161 = mul nsw i64 %value.0, %conv160
  %call162 = tail call i32 @xlate_cardinal(i64 noundef %mul161, ptr noundef %phone)
  %call164 = tail call i32 @xlate_string(ptr noundef nonnull @.str.4.857, ptr noundef %phone)
  %26 = load ptr, ptr %call, align 8, !tbaa !133
  br label %while.cond166

while.cond166:                                    ; preds = %while.cond166, %if.then158
  %s.7 = phi ptr [ %arrayidx151, %if.then158 ], [ %incdec.ptr175, %while.cond166 ]
  %27 = load i8, ptr %s.7, align 1, !tbaa !5
  %idxprom169 = sext i8 %27 to i64
  %arrayidx170 = getelementptr inbounds i16, ptr %26, i64 %idxprom169
  %28 = load i16, ptr %arrayidx170, align 2, !tbaa !18
  %29 = and i16 %28, 2048
  %tobool173.not = icmp eq i16 %29, 0
  %incdec.ptr175 = getelementptr inbounds nuw i8, ptr %s.7, i64 1
  br i1 %tobool173.not, label %while.end176, label %while.cond166, !llvm.loop !140

while.end176:                                     ; preds = %while.cond166
  %add163 = add i32 %call162, %nph.0
  %add165 = add i32 %add163, %call164
  %sub.ptr.lhs.cast177 = ptrtoint ptr %s.7 to i64
  %sub.ptr.rhs.cast178 = ptrtoint ptr %arrayidx151 to i64
  %sub.ptr.sub179 = sub i64 %sub.ptr.lhs.cast177, %sub.ptr.rhs.cast178
  %conv180 = trunc i64 %sub.ptr.sub179 to i32
  %call181 = tail call i32 @spell_out(ptr noundef nonnull %arrayidx151, i32 noundef %conv180, ptr noundef %phone)
  %add182 = add i32 %add165, %call181
  br label %if.end291

if.else183:                                       ; preds = %land.lhs.true149, %while.end145
  %conv184 = sext i32 %cond to i64
  %mul185 = mul nsw i64 %value.0, %conv184
  %call186 = tail call i32 @xlate_cardinal(i64 noundef %mul185, ptr noundef %phone)
  %add187 = add i32 %call186, %nph.0
  br label %if.end291

land.lhs.true193:                                 ; preds = %lor.lhs.false111
  %call194 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %s.1, i32 noundef 93) #36
  %tobool195.not = icmp eq ptr %call194, null
  br i1 %tobool195.not, label %if.else215, label %while.cond198

while.cond198:                                    ; preds = %land.lhs.true193, %land.rhs201
  %s.9 = phi ptr [ %incdec.ptr202, %land.rhs201 ], [ %s.1, %land.lhs.true193 ]
  %30 = load i8, ptr %s.9, align 1, !tbaa !5
  %tobool200.not = icmp eq i8 %30, 0
  br i1 %tobool200.not, label %while.end208, label %land.rhs201

land.rhs201:                                      ; preds = %while.cond198
  %incdec.ptr202 = getelementptr inbounds nuw i8, ptr %s.9, i64 1
  %cmp204.not = icmp eq i8 %30, 93
  br i1 %cmp204.not, label %while.end208, label %while.cond198, !llvm.loop !141

while.end208:                                     ; preds = %while.cond198, %land.rhs201
  %s.10 = phi ptr [ %incdec.ptr202, %land.rhs201 ], [ %s.9, %while.cond198 ]
  %sub.ptr.lhs.cast209 = ptrtoint ptr %s.10 to i64
  %sub.ptr.rhs.cast210 = ptrtoint ptr %s.1 to i64
  %sub.ptr.sub211 = sub i64 %sub.ptr.lhs.cast209, %sub.ptr.rhs.cast210
  %conv212 = trunc i64 %sub.ptr.sub211 to i32
  %call213 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %s.1, i32 noundef %conv212, ptr noundef %phone)
  %add214 = add i32 %call213, %nph.0
  br label %if.end291

if.else215:                                       ; preds = %land.lhs.true115, %lor.lhs.false111, %land.lhs.true193
  %31 = and i16 %4, 4
  %tobool222.not = icmp eq i16 %31, 0
  br i1 %tobool222.not, label %while.cond266, label %if.then223

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
  %arrayidx225 = getelementptr inbounds nuw i8, ptr %s.1, i64 1
  %32 = load i8, ptr %arrayidx225, align 1, !tbaa !5
  %tobool226.not = icmp eq i8 %32, 0
  br i1 %tobool226.not, label %land.lhs.true236, label %lor.lhs.false227

lor.lhs.false227:                                 ; preds = %sw.bb
  %idxprom231 = sext i8 %32 to i64
  %arrayidx232 = getelementptr inbounds i16, ptr %5, i64 %idxprom231
  %33 = load i16, ptr %arrayidx232, align 2, !tbaa !18
  %34 = and i16 %33, 8192
  %tobool235.not = icmp eq i16 %34, 0
  br i1 %tobool235.not, label %if.end242, label %land.lhs.true236

land.lhs.true236:                                 ; preds = %lor.lhs.false227, %sw.bb
  %35 = load i32, ptr %items, align 8, !tbaa !26
  %tobool237.not = icmp eq i32 %35, 0
  br i1 %tobool237.not, label %if.end242, label %if.then238

if.then238:                                       ; preds = %land.lhs.true236
  %36 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.not.i = icmp eq i32 %36, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then238
  %37 = load ptr, ptr %phone, align 8, !tbaa !23
  br label %darray_find.858.exit

if.end.i:                                         ; preds = %if.then238
  %call.i = tail call ptr @Darray_find(ptr noundef nonnull %phone, i32 noundef 0)
  %.pre116 = load i32, ptr %items, align 8, !tbaa !26
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.then.i, %if.end.i
  %38 = phi i32 [ %35, %if.then.i ], [ %.pre116, %if.end.i ]
  %retval.0.i = phi ptr [ %37, %if.then.i ], [ %call.i, %if.end.i ]
  %39 = load i32, ptr @verbose, align 4, !tbaa !10
  tail call void @say_phones(ptr noundef %retval.0.i, i32 noundef %38, i32 noundef %39)
  store i32 0, ptr %items, align 8, !tbaa !26
  br label %if.end242

if.end242:                                        ; preds = %darray_find.858.exit, %land.lhs.true236, %lor.lhs.false227
  %call244 = tail call i32 @phone_append(ptr noundef %phone, i32 noundef 32)
  br label %if.end291

sw.bb245:                                         ; preds = %if.then223, %if.then223, %if.then223, %if.then223, %if.then223, %if.then223, %if.then223
  %incdec.ptr246 = getelementptr inbounds nuw i8, ptr %s.1, i64 1
  %call247 = tail call i32 @phone_append(ptr noundef %phone, i32 noundef 32)
  br label %if.end291

sw.bb248:                                         ; preds = %if.then223
  %call249 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %s.1, i32 noundef 93) #36
  %tobool250.not = icmp eq ptr %call249, null
  br i1 %tobool250.not, label %sw.default, label %while.cond253

while.cond253:                                    ; preds = %sw.bb248, %while.body256
  %s.1.pn = phi ptr [ %s.12, %while.body256 ], [ %s.1, %sw.bb248 ]
  %s.12 = getelementptr inbounds nuw i8, ptr %s.1.pn, i64 1
  %cmp254 = icmp ult ptr %s.12, %call249
  br i1 %cmp254, label %while.body256, label %cleanup

while.body256:                                    ; preds = %while.cond253
  %40 = load i8, ptr %s.12, align 1, !tbaa !5
  %conv258 = sext i8 %40 to i32
  %call259 = tail call i32 @phone_append(ptr noundef %phone, i32 noundef %conv258)
  br label %while.cond253, !llvm.loop !142

cleanup:                                          ; preds = %while.cond253
  %add.ptr = getelementptr inbounds nuw i8, ptr %call249, i64 1
  br label %if.end291

sw.default:                                       ; preds = %sw.bb248, %if.then223
  %call262 = tail call i32 @spell_out(ptr noundef nonnull %s.1, i32 noundef 1, ptr noundef %phone)
  %add263 = add i32 %call262, %nph.0
  %incdec.ptr264 = getelementptr inbounds nuw i8, ptr %s.1, i64 1
  br label %if.end291

while.cond266:                                    ; preds = %if.else215, %while.body279
  %41 = phi i8 [ %.pre117, %while.body279 ], [ %6, %if.else215 ]
  %s.14 = phi ptr [ %incdec.ptr280, %while.body279 ], [ %s.1, %if.else215 ]
  %tobool268.not = icmp eq i8 %41, 0
  br i1 %tobool268.not, label %while.end281, label %land.rhs269

land.rhs269:                                      ; preds = %while.cond266
  %idxprom272 = sext i8 %41 to i64
  %arrayidx273 = getelementptr inbounds i16, ptr %5, i64 %idxprom272
  %42 = load i16, ptr %arrayidx273, align 2, !tbaa !18
  %43 = and i16 %42, 8192
  %tobool276.not = icmp eq i16 %43, 0
  br i1 %tobool276.not, label %while.body279, label %while.end281

while.body279:                                    ; preds = %land.rhs269
  %incdec.ptr280 = getelementptr inbounds nuw i8, ptr %s.14, i64 1
  %.pre117 = load i8, ptr %incdec.ptr280, align 1, !tbaa !5
  br label %while.cond266, !llvm.loop !143

while.end281:                                     ; preds = %while.cond266, %land.rhs269
  %sub.ptr.lhs.cast282 = ptrtoint ptr %s.14 to i64
  %sub.ptr.rhs.cast283 = ptrtoint ptr %s.1 to i64
  %sub.ptr.sub284 = sub i64 %sub.ptr.lhs.cast282, %sub.ptr.rhs.cast283
  %conv285 = trunc i64 %sub.ptr.sub284 to i32
  %call286 = tail call i32 @spell_out(ptr noundef nonnull %s.1, i32 noundef %conv285, ptr noundef %phone)
  %add287 = add i32 %call286, %nph.0
  br label %if.end291

if.end291:                                        ; preds = %cleanup, %while.end176, %if.else183, %while.end281, %sw.default, %sw.bb245, %if.end242, %while.end208, %if.then68, %while.end96
  %s.4 = phi ptr [ %s.2, %if.then68 ], [ %s.3, %while.end96 ], [ %s.10, %while.end208 ], [ %incdec.ptr264, %sw.default ], [ %arrayidx225, %if.end242 ], [ %incdec.ptr246, %sw.bb245 ], [ %add.ptr, %cleanup ], [ %s.14, %while.end281 ], [ %s.7, %while.end176 ], [ %s.6, %if.else183 ]
  %nph.1 = phi i32 [ %add, %if.then68 ], [ %add102, %while.end96 ], [ %add214, %while.end208 ], [ %add263, %sw.default ], [ %nph.0, %if.end242 ], [ %nph.0, %sw.bb245 ], [ %nph.0, %cleanup ], [ %add287, %while.end281 ], [ %add182, %while.end176 ], [ %add187, %if.else183 ]
  %44 = load ptr, ptr %call, align 8, !tbaa !133
  br label %while.cond292

while.cond292:                                    ; preds = %while.cond292, %if.end291
  %s.15 = phi ptr [ %s.4, %if.end291 ], [ %incdec.ptr301, %while.cond292 ]
  %45 = load i8, ptr %s.15, align 1, !tbaa !5
  %idxprom295 = sext i8 %45 to i64
  %arrayidx296 = getelementptr inbounds i16, ptr %44, i64 %idxprom295
  %46 = load i16, ptr %arrayidx296, align 2, !tbaa !18
  %47 = and i16 %46, 8192
  %tobool299.not = icmp eq i16 %47, 0
  %incdec.ptr301 = getelementptr inbounds nuw i8, ptr %s.15, i64 1
  br i1 %tobool299.not, label %while.cond2.loopexit, label %while.cond292, !llvm.loop !144

while.end303:                                     ; preds = %while.cond2
  ret i32 %nph.0
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #28

; Function Attrs: nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable
define dso_local range(i32 0, 2) i32 @suspect_word(ptr noundef readonly captures(none) %s, i32 noundef %n) local_unnamed_addr #29 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  br label %for.cond

for.cond:                                         ; preds = %if.end18, %entry
  %seen_lower.0 = phi i32 [ 0, %entry ], [ %seen_lower.1, %if.end18 ]
  %seen_upper.0 = phi i32 [ 0, %entry ], [ %seen_upper.1, %if.end18 ]
  %seen_vowel.0 = phi i32 [ 0, %entry ], [ %seen_vowel.1, %if.end18 ]
  %last.0 = phi i32 [ 0, %entry ], [ %conv19, %if.end18 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end18 ]
  %s.addr.0 = phi ptr [ %s, %entry ], [ %incdec.ptr, %if.end18 ]
  %exitcond.not = icmp eq i32 %i.0, %smax
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.addr.0, i64 1
  %0 = load i8, ptr %s.addr.0, align 1, !tbaa !5
  %tobool = icmp ne i32 %i.0, 0
  %cmp1 = icmp ne i32 %last.0, 45
  %or.cond = and i1 %cmp1, %tobool
  %call = tail call ptr @__ctype_b_loc() #43
  br i1 %or.cond, label %land.lhs.true2, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  %.pre19 = sext i8 %0 to i64
  br label %if.end

land.lhs.true2:                                   ; preds = %for.body
  %1 = load ptr, ptr %call, align 8, !tbaa !133
  %idxprom = sext i8 %0 to i64
  %arrayidx = getelementptr inbounds i16, ptr %1, i64 %idxprom
  %2 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %3 = and i16 %2, 256
  %tobool4.not = icmp eq i16 %3, 0
  %spec.select = select i1 %tobool4.not, i32 %seen_upper.0, i32 1
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %land.lhs.true2
  %idxprom7.pre-phi = phi i64 [ %.pre19, %for.body.if.end_crit_edge ], [ %idxprom, %land.lhs.true2 ]
  %seen_upper.1 = phi i32 [ %seen_upper.0, %for.body.if.end_crit_edge ], [ %spec.select, %land.lhs.true2 ]
  %4 = load ptr, ptr %call, align 8, !tbaa !133
  %arrayidx8 = getelementptr inbounds i16, ptr %4, i64 %idxprom7.pre-phi
  %5 = load i16, ptr %arrayidx8, align 2, !tbaa !18
  %6 = and i16 %5, 512
  %tobool11.not = icmp eq i16 %6, 0
  br i1 %tobool11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end
  %call13 = tail call ptr @__ctype_toupper_loc() #43
  %7 = load ptr, ptr %call13, align 8, !tbaa !145
  %arrayidx16 = getelementptr inbounds i32, ptr %7, i64 %idxprom7.pre-phi
  %8 = load i32, ptr %arrayidx16, align 4, !tbaa !10
  %conv17 = trunc i32 %8 to i8
  br label %if.end18

if.end18:                                         ; preds = %if.then12, %if.end
  %seen_lower.1 = phi i32 [ 1, %if.then12 ], [ %seen_lower.0, %if.end ]
  %ch.0 = phi i8 [ %conv17, %if.then12 ], [ %0, %if.end ]
  %conv19 = sext i8 %ch.0 to i32
  %9 = add i8 %ch.0, -65
  %10 = tail call i8 @llvm.fshl.i8(i8 %9, i8 %9, i8 7)
  %11 = icmp ult i8 %10, 13
  %switch.maskindex = zext nneg i8 %10 to i16
  %switch.shifted = lshr i16 5269, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %12 = select i1 %11, i1 %switch.lobit, i1 false
  %seen_vowel.1 = select i1 %12, i32 1, i32 %seen_vowel.0
  %inc = add nuw i32 %i.0, 1
  br label %for.cond, !llvm.loop !147

for.end:                                          ; preds = %for.cond
  %tobool44.not = icmp eq i32 %seen_vowel.0, 0
  br i1 %tobool44.not, label %lor.end, label %lor.lhs.false45

lor.lhs.false45:                                  ; preds = %for.end
  %tobool46 = icmp ne i32 %seen_upper.0, 0
  %tobool48 = icmp ne i32 %seen_lower.0, 0
  %or.cond6 = select i1 %tobool46, i1 %tobool48, i1 false
  br i1 %or.cond6, label %lor.end, label %lor.rhs

lor.rhs:                                          ; preds = %lor.lhs.false45
  %lnot = xor i1 %tobool48, true
  %13 = zext i1 %lnot to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.lhs.false45, %lor.rhs, %for.end
  %lor.ext = phi i32 [ 1, %for.end ], [ %13, %lor.rhs ], [ 1, %lor.lhs.false45 ]
  ret i32 %lor.ext
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @xlate_word(ptr noundef %word, i32 noundef %n, ptr noundef captures(none) %phone) unnamed_addr #5 {
entry:
  br label %tailrecurse

tailrecurse:                                      ; preds = %cleanup42.thread, %entry
  %accumulator.tr = phi i32 [ 0, %entry ], [ %add37, %cleanup42.thread ]
  %word.tr = phi ptr [ %word, %entry ], [ %incdec.ptr26, %cleanup42.thread ]
  %n.tr = phi i32 [ %n, %entry ], [ %conv35, %cleanup42.thread ]
  %0 = load i8, ptr %word.tr, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %0, 91
  br i1 %cmp.not, label %if.else60, label %if.then

if.then:                                          ; preds = %tailrecurse
  %1 = load ptr, ptr @dict, align 8, !tbaa !17
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end45, label %while.cond15.preheader

while.cond15.preheader:                           ; preds = %if.then
  %idx.ext = sext i32 %n.tr to i64
  %add.ptr = getelementptr inbounds i8, ptr %word.tr, i64 %idx.ext
  br label %while.cond15

while.cond15:                                     ; preds = %while.body18, %while.cond15.preheader
  %h.0 = phi ptr [ %word.tr, %while.cond15.preheader ], [ %incdec.ptr26, %while.body18 ]
  %cmp16.not = icmp ult ptr %h.0, %add.ptr
  br i1 %cmp16.not, label %while.body18, label %if.end45

while.body18:                                     ; preds = %while.cond15
  %2 = load i8, ptr %h.0, align 1, !tbaa !5
  %.off = add i8 %2, -45
  %switch = icmp ult i8 %.off, 2
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %h.0, i64 1
  br i1 %switch, label %cleanup42.thread, label %while.cond15, !llvm.loop !148

cleanup42.thread:                                 ; preds = %while.body18
  %sub.ptr.lhs.cast = ptrtoint ptr %h.0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %word.tr to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %conv27 = trunc i64 %sub.ptr.sub to i32
  %call28 = tail call fastcc i32 @xlate_word(ptr noundef nonnull %word.tr, i32 noundef %conv27, ptr noundef %phone)
  %sub.ptr.lhs.cast32 = ptrtoint ptr %add.ptr to i64
  %sub.ptr.rhs.cast33 = ptrtoint ptr %incdec.ptr26 to i64
  %sub.ptr.sub34 = sub i64 %sub.ptr.lhs.cast32, %sub.ptr.rhs.cast33
  %conv35 = trunc i64 %sub.ptr.sub34 to i32
  %add37 = add i32 %call28, %accumulator.tr
  br label %tailrecurse

if.end45:                                         ; preds = %if.then, %while.cond15
  %call46 = tail call i32 @suspect_word(ptr noundef nonnull %word.tr, i32 noundef %n.tr)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %if.else50, label %if.then48

if.then48:                                        ; preds = %if.end45
  %call49 = tail call i32 @spell_out(ptr noundef nonnull %word.tr, i32 noundef %n.tr, ptr noundef %phone)
  br label %cleanup83

if.else50:                                        ; preds = %if.end45
  %tobool51 = icmp ne ptr %1, null
  %3 = load i32, ptr @verbose, align 4
  %tobool53 = icmp ne i32 %3, 0
  %or.cond = select i1 %tobool51, i1 true, i1 %tobool53
  br i1 %or.cond, label %if.then54, label %if.end56

if.then54:                                        ; preds = %if.else50
  %4 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call55 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.15.860, ptr noundef %1, i32 noundef %n.tr, ptr noundef nonnull %word.tr) #40
  br label %if.end56

if.end56:                                         ; preds = %if.else50, %if.then54
  %call57 = tail call i32 @NRL(ptr noundef nonnull %word.tr, i32 noundef %n.tr, ptr noundef %phone)
  br label %if.end80

if.else60:                                        ; preds = %tailrecurse
  %incdec.ptr61 = getelementptr inbounds nuw i8, ptr %word.tr, i64 1
  %5 = sext i32 %n.tr to i64
  %6 = getelementptr i8, ptr %incdec.ptr61, i64 %5
  %arrayidx63 = getelementptr i8, ptr %6, i64 -2
  %7 = load i8, ptr %arrayidx63, align 1, !tbaa !5
  %cmp65 = icmp eq i8 %7, 93
  %spec.select.v = select i1 %cmp65, i32 -2, i32 -1
  %spec.select = add nsw i32 %spec.select.v, %n.tr
  br label %while.cond70

while.cond70:                                     ; preds = %while.body74, %if.else60
  %n.addr.1 = phi i32 [ %spec.select, %if.else60 ], [ %dec71, %while.body74 ]
  %word.addr.0 = phi ptr [ %incdec.ptr61, %if.else60 ], [ %incdec.ptr75, %while.body74 ]
  %nph.6 = phi i32 [ 0, %if.else60 ], [ %inc78, %while.body74 ]
  %cmp72 = icmp sgt i32 %n.addr.1, 0
  br i1 %cmp72, label %while.body74, label %if.end80

while.body74:                                     ; preds = %while.cond70
  %dec71 = add nsw i32 %n.addr.1, -1
  %incdec.ptr75 = getelementptr inbounds nuw i8, ptr %word.addr.0, i64 1
  %8 = load i8, ptr %word.addr.0, align 1, !tbaa !5
  %conv76 = sext i8 %8 to i32
  %call77 = tail call i32 @phone_append(ptr noundef %phone, i32 noundef %conv76)
  %inc78 = add nuw i32 %nph.6, 1
  br label %while.cond70, !llvm.loop !149

if.end80:                                         ; preds = %while.cond70, %if.end56
  %nph.5 = phi i32 [ %call57, %if.end56 ], [ %nph.6, %while.cond70 ]
  %call81 = tail call i32 @phone_append(ptr noundef %phone, i32 noundef 32)
  %add82 = add i32 %nph.5, 1
  br label %cleanup83

cleanup83:                                        ; preds = %if.end80, %if.then48
  %retval.2 = phi i32 [ %call49, %if.then48 ], [ %add82, %if.end80 ]
  %accumulator.ret.tr = add i32 %retval.2, %accumulator.tr
  ret i32 %accumulator.ret.tr
}

; Function Attrs: nounwind uwtable
define dso_local void @say_phones(ptr noundef %phone, i32 noundef %len, i32 noundef %verbose) local_unnamed_addr #5 {
entry:
  %elm = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %elm) #37
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
  %call4 = tail call noalias ptr @malloc(i64 noundef %mul3) #39
  %tobool5.not = icmp eq i32 %verbose, 0
  br i1 %tobool5.not, label %if.end, label %if.then6

if.then6:                                         ; preds = %if.then
  %2 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.3.859, i32 noundef %len, ptr noundef %phone) #40
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
  %cmp1.not.i = icmp eq i32 %3, 0
  %or.cond = select i1 %cmp.not.i, i1 true, i1 %cmp1.not.i
  br i1 %or.cond, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then9
  %5 = load ptr, ptr %elm, align 8, !tbaa !23
  br label %darray_find.858.exit

if.end.i:                                         ; preds = %if.then9
  %call.i = call ptr @Darray_find(ptr noundef nonnull %elm, i32 noundef 0)
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %call.i, %if.end.i ]
  %call11 = tail call i32 @holmes(i32 noundef %3, ptr noundef %retval.0.i, i32 poison, ptr noundef nonnull %call4)
  %6 = load ptr, ptr @file_write, align 8, !tbaa !17
  %tobool12 = icmp eq ptr %6, null
  %.b = load i1, ptr @once, align 4
  %or.cond.not = select i1 %tobool12, i1 true, i1 %.b
  br i1 %or.cond.not, label %if.end15, label %if.then14

if.then14:                                        ; preds = %darray_find.858.exit
  tail call void %6(i32 noundef %call11, ptr noundef nonnull %call4) #37
  br label %if.end15

if.end15:                                         ; preds = %if.then14, %darray_find.858.exit
  tail call void @free(ptr noundef nonnull %call4) #37
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.end15, %entry
  call void @darray_free(ptr noundef nonnull %elm)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %elm) #37
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_toupper_loc() local_unnamed_addr #28

; Function Attrs: nofree nounwind memory(readwrite, argmem: read) uwtable
define dso_local noalias noundef ptr @concat_args(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #30 {
entry:
  %smax = tail call i32 @llvm.smax.i32(i32 %argc, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %len.0 = phi i32 [ %conv2, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw ptr, ptr %argv, i64 %indvars.iv
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !12
  %call = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #36
  %1 = trunc i64 %call to i32
  %2 = add i32 %len.0, 1
  %conv2 = add i32 %2, %1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  %conv3 = sext i32 %len.0 to i64
  %call4 = tail call noalias ptr @malloc(i64 noundef %conv3) #39
  %tobool.not = icmp eq ptr %call4, null
  br i1 %tobool.not, label %if.end19, label %for.cond5

for.cond5:                                        ; preds = %for.end, %while.end
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %while.end ], [ 1, %for.end ]
  %d.0 = phi ptr [ %d.2, %while.end ], [ %call4, %for.end ]
  %exitcond20.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond20.not, label %if.end19, label %for.body8

for.body8:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw ptr, ptr %argv, i64 %indvars.iv16
  %3 = load ptr, ptr %arrayidx11, align 8, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %while.body, %for.body8
  %d.1 = phi ptr [ %d.0, %for.body8 ], [ %incdec.ptr13, %while.body ]
  %s.0 = phi ptr [ %3, %for.body8 ], [ %incdec.ptr, %while.body ]
  %4 = load i8, ptr %s.0, align 1, !tbaa !5
  %tobool12.not = icmp eq i8 %4, 0
  br i1 %tobool12.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.0, i64 1
  %incdec.ptr13 = getelementptr inbounds nuw i8, ptr %d.1, i64 1
  store i8 %4, ptr %d.1, align 1, !tbaa !5
  br label %while.cond, !llvm.loop !151

while.end:                                        ; preds = %while.cond
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %5 = trunc nuw i64 %indvars.iv.next17 to i32
  %cmp14 = icmp sgt i32 %argc, %5
  %storemerge = select i1 %cmp14, i8 32, i8 0
  %d.2.idx = zext i1 %cmp14 to i64
  %d.2 = getelementptr inbounds nuw i8, ptr %d.1, i64 %d.2.idx
  store i8 %storemerge, ptr %d.1, align 1, !tbaa !5
  br label %for.cond5, !llvm.loop !152

if.end19:                                         ; preds = %for.cond5, %for.end
  ret ptr %call4
}

; Function Attrs: nounwind uwtable
define dso_local void @say_string(ptr noundef %s) local_unnamed_addr #5 {
entry:
  %phone = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phone) #37
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
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %2 = load ptr, ptr %phone, align 8, !tbaa !23
  br label %darray_find.858.exit

if.end.i:                                         ; preds = %if.then
  %call.i = call ptr @Darray_find(ptr noundef nonnull %phone, i32 noundef 0)
  %.pre = load i32, ptr %items, align 8, !tbaa !26
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.then.i, %if.end.i
  %3 = phi i32 [ %0, %if.then.i ], [ %.pre, %if.end.i ]
  %retval.0.i = phi ptr [ %2, %if.then.i ], [ %call.i, %if.end.i ]
  %4 = load i32, ptr @verbose, align 4, !tbaa !10
  tail call void @say_phones(ptr noundef %retval.0.i, i32 noundef %3, i32 noundef %4)
  br label %if.end

if.end:                                           ; preds = %darray_find.858.exit, %entry
  call void @darray_free(ptr noundef nonnull %phone)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phone) #37
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @darray_fget(ptr noundef captures(none) %f, ptr noundef captures(none) %p) local_unnamed_addr #5 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %call = tail call i32 @fgetc(ptr noundef %f)
  %cmp.not = icmp eq i32 %call, -1
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %call1 = tail call i32 @phone_append(ptr noundef %p, i32 noundef %call)
  %cmp2 = icmp eq i32 %call, 10
  br i1 %cmp2, label %while.end, label %while.cond, !llvm.loop !153

while.end:                                        ; preds = %while.body, %while.cond
  %call3 = tail call i32 @phone_append(ptr noundef %p, i32 noundef 0)
  %items = getelementptr inbounds nuw i8, ptr %p, i64 8
  %0 = load i32, ptr %items, align 8, !tbaa !26
  %sub = add i32 %0, -1
  ret i32 %sub
}

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local void @say_file(ptr noundef captures(none) %f) local_unnamed_addr #5 {
entry:
  %loop_wrap2 = alloca i64, align 8
  %line = alloca %struct.darray_t, align 8
  %phone = alloca %struct.darray_t, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %loop_wrap2) #37
  %call = tail call noalias ptr @fopen(ptr noundef nonnull @.str.5.861, ptr noundef nonnull @.str.6.862)
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load ptr, ptr @stderr, align 8, !tbaa !21
  %1 = tail call i64 @fwrite(ptr nonnull @.str.7.863, i64 28, i64 1, ptr %0) #38
  tail call void @exit(i32 noundef 1) #42
  unreachable

if.end:                                           ; preds = %entry
  %call2 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %call, ptr noundef nonnull @.str.8.864, ptr noundef nonnull %loop_wrap2) #37
  %call3 = call i32 @fclose(ptr noundef nonnull %call)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %line) #37
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %phone) #37
  %esize.i = getelementptr inbounds nuw i8, ptr %line, i64 16
  store i16 1, ptr %esize.i, align 8, !tbaa !27
  %get2.i = getelementptr inbounds nuw i8, ptr %line, i64 18
  store i16 128, ptr %get2.i, align 2, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %line, i8 0, i64 16, i1 false)
  %esize.i4 = getelementptr inbounds nuw i8, ptr %phone, i64 16
  store i16 1, ptr %esize.i4, align 8, !tbaa !27
  %get2.i5 = getelementptr inbounds nuw i8, ptr %phone, i64 18
  store i16 128, ptr %get2.i5, align 2, !tbaa !28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %phone, i8 0, i64 16, i1 false)
  %alloc.i = getelementptr inbounds nuw i8, ptr %line, i64 12
  %items.i = getelementptr inbounds nuw i8, ptr %line, i64 8
  br label %while.cond

while.cond:                                       ; preds = %darray_find.858.exit, %if.end
  %nlines.0 = phi i64 [ 0, %if.end ], [ %inc, %darray_find.858.exit ]
  %call4 = call i32 @darray_fget(ptr noundef %f, ptr noundef nonnull %line)
  %tobool = icmp ne i32 %call4, 0
  %cmp5 = icmp samesign ult i64 %nlines.0, 500
  %2 = select i1 %tobool, i1 %cmp5, i1 false
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nuw nsw i64 %nlines.0, 1
  %3 = load i32, ptr %alloc.i, align 4, !tbaa !25
  %cmp.not.i = icmp eq i32 %3, 0
  %4 = load i32, ptr %items.i, align 8
  %cmp1.not.i = icmp eq i32 %4, 0
  %or.cond = select i1 %cmp.not.i, i1 true, i1 %cmp1.not.i
  br i1 %or.cond, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %while.body
  %5 = load ptr, ptr %line, align 8, !tbaa !23
  br label %darray_find.858.exit

if.end.i:                                         ; preds = %while.body
  %call.i = call ptr @Darray_find(ptr noundef nonnull %line, i32 noundef 0)
  br label %darray_find.858.exit

darray_find.858.exit:                             ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %5, %if.then.i ], [ %call.i, %if.end.i ]
  %call7 = call i32 @xlate_string(ptr noundef %retval.0.i, ptr noundef nonnull %phone)
  store i32 0, ptr %items.i, align 8, !tbaa !26
  br label %while.cond, !llvm.loop !154

while.end:                                        ; preds = %while.cond
  %items8 = getelementptr inbounds nuw i8, ptr %phone, i64 8
  %6 = load i32, ptr %items8, align 8, !tbaa !26
  %tobool9.not = icmp eq i32 %6, 0
  br i1 %tobool9.not, label %if.end15, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.end
  %alloc.i6 = getelementptr inbounds nuw i8, ptr %phone, i64 12
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %darray_find.858.exit15
  %7 = phi i32 [ %11, %darray_find.858.exit15 ], [ %6, %for.cond.preheader ]
  %loop_wrap1.0 = phi i64 [ %inc14, %darray_find.858.exit15 ], [ 0, %for.cond.preheader ]
  %8 = load i64, ptr %loop_wrap2, align 8, !tbaa !15
  %cmp11 = icmp slt i64 %loop_wrap1.0, %8
  br i1 %cmp11, label %for.body, label %if.end15

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %alloc.i6, align 4, !tbaa !25
  %cmp.not.i7 = icmp eq i32 %9, 0
  %cmp1.not.i10 = icmp eq i32 %7, 0
  %or.cond16 = or i1 %cmp.not.i7, %cmp1.not.i10
  br i1 %or.cond16, label %if.end.i13, label %if.then.i11

if.then.i11:                                      ; preds = %for.body
  %10 = load ptr, ptr %phone, align 8, !tbaa !23
  br label %darray_find.858.exit15

if.end.i13:                                       ; preds = %for.body
  %call.i14 = call ptr @Darray_find(ptr noundef nonnull %phone, i32 noundef 0)
  %.pre = load i32, ptr %items8, align 8, !tbaa !26
  br label %darray_find.858.exit15

darray_find.858.exit15:                           ; preds = %if.then.i11, %if.end.i13
  %11 = phi i32 [ %7, %if.then.i11 ], [ %.pre, %if.end.i13 ]
  %retval.0.i12 = phi ptr [ %10, %if.then.i11 ], [ %call.i14, %if.end.i13 ]
  %12 = load i32, ptr @verbose, align 4, !tbaa !10
  call void @say_phones(ptr noundef %retval.0.i12, i32 noundef %11, i32 noundef %12)
  store i1 true, ptr @once, align 4
  %inc14 = add nuw nsw i64 %loop_wrap1.0, 1
  br label %for.cond, !llvm.loop !155

if.end15:                                         ; preds = %for.cond, %while.end
  call void @darray_free(ptr noundef nonnull %phone)
  call void @darray_free(ptr noundef nonnull %line)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %phone) #37
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %line) #37
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %loop_wrap2) #37
  ret void
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef captures(none) %argv, ptr noundef readnone captures(none) %env) local_unnamed_addr #5 {
entry:
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
  %call6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %2, ptr noundef nonnull @.str.12.868, ptr noundef %3) #40
  %4 = load ptr, ptr @stderr, align 8, !tbaa !21
  %5 = load ptr, ptr @program, align 8, !tbaa !12
  %call7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %4, ptr noundef nonnull @.str.13.869, ptr noundef %5) #40
  %6 = load ptr, ptr @stderr, align 8, !tbaa !21
  %7 = load ptr, ptr @Revision, align 8, !tbaa !12
  %call8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.14.870, ptr noundef %7) #40
  br label %if.end15

if.else:                                          ; preds = %entry
  %cmp = icmp sgt i32 %call5, 1
  br i1 %cmp, label %if.then9, label %if.else13

if.then9:                                         ; preds = %if.else
  %call10 = tail call ptr @concat_args(i32 noundef %call5, ptr noundef nonnull %argv)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %if.then9
  tail call void @say_string(ptr noundef nonnull %call10)
  tail call void @free(ptr noundef nonnull %call10) #37
  br label %if.end15

if.else13:                                        ; preds = %if.else
  %8 = load ptr, ptr @stdin, align 8, !tbaa !21
  tail call void @say_file(ptr noundef %8)
  br label %if.end15

if.end15:                                         ; preds = %if.then9, %if.then12, %if.else13, %if.then
  %9 = load ptr, ptr @file_term, align 8, !tbaa !17
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %if.end18, label %if.then17

if.then17:                                        ; preds = %if.end15
  tail call void %9() #37
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end15
  tail call void @audio_term()
  tail call void @term_holmes()
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
define dso_local range(i32 0, 2) i32 @isconsonant(i32 noundef %chr) local_unnamed_addr #31 {
entry:
  %call = tail call ptr @__ctype_b_loc() #43
  %0 = load ptr, ptr %call, align 8, !tbaa !133
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
  %call = tail call noalias ptr @malloc(i64 noundef %conv) #39
  store i8 32, ptr %call, align 1, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %call.pn = phi ptr [ %call, %entry ], [ %d.0, %if.end ]
  %n.addr.0 = phi i32 [ %n, %entry ], [ %dec, %if.end ]
  %s.addr.0 = phi ptr [ %s, %entry ], [ %incdec.ptr2, %if.end ]
  %d.0 = getelementptr inbounds nuw i8, ptr %call.pn, i64 1
  %dec = add i32 %n.addr.0, -1
  %cmp.not = icmp eq i32 %n.addr.0, 0
  br i1 %cmp.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %incdec.ptr2 = getelementptr inbounds nuw i8, ptr %s.addr.0, i64 1
  %1 = load i8, ptr %s.addr.0, align 1, !tbaa !5
  %call3 = tail call ptr @__ctype_b_loc() #43
  %2 = load ptr, ptr %call3, align 8, !tbaa !133
  %idxprom = sext i8 %1 to i64
  %arrayidx = getelementptr inbounds i16, ptr %2, i64 %idxprom
  %3 = load i16, ptr %arrayidx, align 2, !tbaa !18
  %4 = and i16 %3, 512
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %call6 = tail call ptr @__ctype_toupper_loc() #43
  %5 = load ptr, ptr %call6, align 8, !tbaa !145
  %arrayidx9 = getelementptr inbounds i32, ptr %5, i64 %idxprom
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !10
  %conv10 = trunc i32 %6 to i8
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %ch.0 = phi i8 [ %conv10, %if.then ], [ %1, %while.body ]
  store i8 %ch.0, ptr %d.0, align 1, !tbaa !5
  br label %while.cond, !llvm.loop !156

while.end:                                        ; preds = %while.cond
  %incdec.ptr12 = getelementptr inbounds nuw i8, ptr %call.pn, i64 2
  store i8 32, ptr %d.0, align 1, !tbaa !5
  store i8 0, ptr %incdec.ptr12, align 1, !tbaa !5
  %call.i = tail call ptr @__ctype_b_loc() #43
  %invariant.gep.i.i = getelementptr i8, ptr %call, i64 -1
  %arrayidx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %call, i64 1
  %.pre.i = load i8, ptr %arrayidx.phi.trans.insert.i, align 1, !tbaa !5
  br label %do.body.i

do.body.i:                                        ; preds = %find_rule.exit.i, %while.end
  %7 = phi i8 [ %.pre.i, %while.end ], [ %60, %find_rule.exit.i ]
  %index.0.i = phi i32 [ 1, %while.end ], [ %retval.0.i.i, %find_rule.exit.i ]
  %8 = load ptr, ptr %call.i, align 8, !tbaa !133
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
  %11 = load ptr, ptr %arrayidx8.i, align 8, !tbaa !157
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.i, i64 %idxprom.i
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.backedge.i.i, %do.body.i
  %rules.addr.0.i.i = phi ptr [ %11, %do.body.i ], [ %incdec.ptr.i.i, %for.cond.backedge.i.i ]
  %incdec.ptr.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.0.i.i, i64 32
  %arrayidx.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.0.i.i, i64 8
  %12 = load ptr, ptr %arrayidx.i.i, align 8, !tbaa !12
  %cmp.i.i = icmp eq ptr %12, null
  br i1 %cmp.i.i, label %if.then.i.i, label %for.cond2.i.i

if.then.i.i:                                      ; preds = %for.cond.i.i
  %13 = load ptr, ptr @stderr, align 8, !tbaa !21
  %14 = load i8, ptr %arrayidx.i, align 1, !tbaa !5
  %conv.i.i = sext i8 %14 to i32
  %call.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.1.944, i32 noundef %conv.i.i, ptr noundef nonnull %call) #40
  %add.i.i = add nsw i32 %index.0.i, 1
  br label %find_rule.exit.i

for.cond2.i.i:                                    ; preds = %for.cond.i.i, %for.inc.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.inc.i.i ], [ %idxprom.i, %for.cond.i.i ]
  %match.0.i.i = phi ptr [ %incdec.ptr14.i.i, %for.inc.i.i ], [ %12, %for.cond.i.i ]
  %15 = load i8, ptr %match.0.i.i, align 1, !tbaa !5
  %cmp4.not.i.i = icmp eq i8 %15, 0
  br i1 %cmp4.not.i.i, label %if.end19.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond2.i.i
  %arrayidx8.i.i = getelementptr inbounds i8, ptr %call, i64 %indvars.iv.i.i
  %16 = load i8, ptr %arrayidx8.i.i, align 1, !tbaa !5
  %cmp10.not.i.i = icmp eq i8 %15, %16
  br i1 %cmp10.not.i.i, label %for.inc.i.i, label %for.cond.backedge.i.i, !llvm.loop !160

for.inc.i.i:                                      ; preds = %for.body.i.i
  %incdec.ptr14.i.i = getelementptr inbounds nuw i8, ptr %match.0.i.i, i64 1
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  br label %for.cond2.i.i, !llvm.loop !161

if.end19.i.i:                                     ; preds = %for.cond2.i.i
  %17 = load ptr, ptr %rules.addr.0.i.i, align 8, !tbaa !12
  %arrayidx21.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.0.i.i, i64 16
  %18 = load ptr, ptr %arrayidx21.i.i, align 8, !tbaa !12
  %19 = load i8, ptr %17, align 1, !tbaa !5
  %cmp.i.i.i = icmp eq i8 %19, 0
  br i1 %cmp.i.i.i, label %if.end26.i.i, label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.end19.i.i
  %call.i.i.i = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %17) #36
  %conv2.i.i.i = trunc i64 %call.i.i.i to i32
  %sub.i.i.i = shl i64 %call.i.i.i, 32
  %sext.i.i.i = add i64 %sub.i.i.i, -4294967296
  %idx.ext.i.i.i = ashr exact i64 %sext.i.i.i, 32
  %add.ptr.i.i.i = getelementptr inbounds i8, ptr %17, i64 %idx.ext.i.i.i
  br label %for.cond.i.i.i

for.cond.i.i.i:                                   ; preds = %for.inc.i.i.i, %if.end.i.i.i
  %pat.0.i.i.i = phi ptr [ %add.ptr.i.i.i, %if.end.i.i.i ], [ %incdec.ptr112.i.i.i, %for.inc.i.i.i ]
  %text.0.i.i.i = phi ptr [ %gep.i.i, %if.end.i.i.i ], [ %text.1.i.i.i, %for.inc.i.i.i ]
  %count.0.i.i.i = phi i32 [ %conv2.i.i.i, %if.end.i.i.i ], [ %dec.i.i.i, %for.inc.i.i.i ]
  %cmp3.i.i.i = icmp sgt i32 %count.0.i.i.i, 0
  br i1 %cmp3.i.i.i, label %for.body.i.i.i, label %if.end26.i.i

for.body.i.i.i:                                   ; preds = %for.cond.i.i.i
  %20 = load ptr, ptr %call.i, align 8, !tbaa !133
  %21 = load i8, ptr %pat.0.i.i.i, align 1, !tbaa !5
  %idxprom.i.i.i = sext i8 %21 to i64
  %arrayidx.i.i.i = getelementptr inbounds i16, ptr %20, i64 %idxprom.i.i.i
  %22 = load i16, ptr %arrayidx.i.i.i, align 2, !tbaa !18
  %.fr41.i.i.i = freeze i16 %22
  %23 = and i16 %.fr41.i.i.i, 1024
  %tobool.not.not.i.i.i = icmp eq i16 %23, 0
  br i1 %tobool.not.not.i.i.i, label %switch.early.test.i.i.i, label %if.then15.i.i.i

switch.early.test.i.i.i:                          ; preds = %for.body.i.i.i
  switch i8 %21, label %for.cond.backedge.sink.split.i.i [
    i8 39, label %if.then15.i.i.i
    i8 32, label %if.then15.i.i.i
    i8 35, label %sw.bb.i.i.i
    i8 58, label %while.cond34.i.i.i
    i8 94, label %sw.bb41.i.i.i
    i8 46, label %sw.bb48.i.i.i
    i8 43, label %sw.bb94.i.i.i
  ]

if.then15.i.i.i:                                  ; preds = %switch.early.test.i.i.i, %switch.early.test.i.i.i, %for.body.i.i.i
  %24 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5
  %cmp18.not.i.i.i = icmp eq i8 %21, %24
  br i1 %cmp18.not.i.i.i, label %if.else.i.i.i, label %for.cond.backedge.i.i

if.else.i.i.i:                                    ; preds = %if.then15.i.i.i
  %incdec.ptr.i.i.i = getelementptr inbounds i8, ptr %text.0.i.i.i, i64 -1
  br label %for.inc.i.i.i

sw.bb.i.i.i:                                      ; preds = %switch.early.test.i.i.i
  %25 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5
  %conv23.i.i.i = sext i8 %25 to i32
  %26 = add nsw i32 %conv23.i.i.i, -65
  %27 = tail call i32 @llvm.fshl.i32(i32 %26, i32 %26, i32 31)
  switch i32 %27, label %lor.rhs.i.i.i.i [
    i32 7, label %while.cond.i.i.i.preheader
    i32 4, label %while.cond.i.i.i.preheader
    i32 2, label %while.cond.i.i.i.preheader
    i32 0, label %while.cond.i.i.i.preheader
  ]

lor.rhs.i.i.i.i:                                  ; preds = %sw.bb.i.i.i
  %cmp6.i.not.i.i.i = icmp eq i8 %25, 85
  br i1 %cmp6.i.not.i.i.i, label %while.cond.i.i.i.preheader, label %for.cond.backedge.i.i

while.cond.i.i.i.preheader:                       ; preds = %lor.rhs.i.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i, %sw.bb.i.i.i
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.cond.i.i.i.backedge, %while.cond.i.i.i.preheader
  %text.0.pn.i.i.i = phi ptr [ %text.0.i.i.i, %while.cond.i.i.i.preheader ], [ %text.2.i.i.i, %while.cond.i.i.i.backedge ]
  %text.2.i.i.i = getelementptr inbounds i8, ptr %text.0.pn.i.i.i, i64 -1
  %28 = load i8, ptr %text.2.i.i.i, align 1, !tbaa !5
  %conv29.i.i.i = sext i8 %28 to i32
  %29 = add nsw i32 %conv29.i.i.i, -65
  %30 = tail call i32 @llvm.fshl.i32(i32 %29, i32 %29, i32 31)
  switch i32 %30, label %lor.rhs.i38.i.i.i [
    i32 7, label %while.cond.i.i.i.backedge
    i32 4, label %while.cond.i.i.i.backedge
    i32 2, label %while.cond.i.i.i.backedge
    i32 0, label %while.cond.i.i.i.backedge
  ]

lor.rhs.i38.i.i.i:                                ; preds = %while.cond.i.i.i
  %cmp6.i39.not.i.i.i = icmp eq i8 %28, 85
  br i1 %cmp6.i39.not.i.i.i, label %while.cond.i.i.i.backedge, label %for.inc.i.i.i

while.cond.i.i.i.backedge:                        ; preds = %lor.rhs.i38.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i, %while.cond.i.i.i
  br label %while.cond.i.i.i, !llvm.loop !162

while.cond34.i.i.i:                               ; preds = %switch.early.test.i.i.i, %while.cond34.i.i.i
  %text.3.i.i.i = phi ptr [ %incdec.ptr39.i.i.i, %while.cond34.i.i.i ], [ %text.0.i.i.i, %switch.early.test.i.i.i ]
  %31 = load i8, ptr %text.3.i.i.i, align 1, !tbaa !5
  %conv35.i.i.i = sext i8 %31 to i32
  %call36.i.i.i = tail call i32 @isconsonant(i32 noundef %conv35.i.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call36.i.i.i, 0
  %incdec.ptr39.i.i.i = getelementptr inbounds i8, ptr %text.3.i.i.i, i64 -1
  br i1 %tobool37.not.i.i.i, label %for.inc.i.i.i, label %while.cond34.i.i.i, !llvm.loop !163

sw.bb41.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %32 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5
  %conv42.i.i.i = sext i8 %32 to i32
  %call43.i.i.i = tail call i32 @isconsonant(i32 noundef %conv42.i.i.i)
  %tobool44.not.i.i.i = icmp eq i32 %call43.i.i.i, 0
  br i1 %tobool44.not.i.i.i, label %for.cond.backedge.i.i, label %if.end46.i.i.i

if.end46.i.i.i:                                   ; preds = %sw.bb41.i.i.i
  %incdec.ptr47.i.i.i = getelementptr inbounds i8, ptr %text.0.i.i.i, i64 -1
  br label %for.inc.i.i.i

sw.bb48.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %33 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5
  switch i8 %33, label %for.cond.backedge.i.i [
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
  %incdec.ptr93.i.i.i = getelementptr inbounds i8, ptr %text.0.i.i.i, i64 -1
  br label %for.inc.i.i.i

sw.bb94.i.i.i:                                    ; preds = %switch.early.test.i.i.i
  %34 = load i8, ptr %text.0.i.i.i, align 1, !tbaa !5
  switch i8 %34, label %for.cond.backedge.i.i [
    i8 69, label %if.end107.i.i.i
    i8 73, label %if.end107.i.i.i
    i8 89, label %if.end107.i.i.i
  ]

if.end107.i.i.i:                                  ; preds = %sw.bb94.i.i.i, %sw.bb94.i.i.i, %sw.bb94.i.i.i
  %incdec.ptr108.i.i.i = getelementptr inbounds i8, ptr %text.0.i.i.i, i64 -1
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %while.cond34.i.i.i, %lor.rhs.i38.i.i.i, %if.end107.i.i.i, %if.end92.i.i.i, %if.end46.i.i.i, %if.else.i.i.i
  %text.1.i.i.i = phi ptr [ %incdec.ptr.i.i.i, %if.else.i.i.i ], [ %incdec.ptr47.i.i.i, %if.end46.i.i.i ], [ %incdec.ptr93.i.i.i, %if.end92.i.i.i ], [ %incdec.ptr108.i.i.i, %if.end107.i.i.i ], [ %text.2.i.i.i, %lor.rhs.i38.i.i.i ], [ %text.3.i.i.i, %while.cond34.i.i.i ]
  %incdec.ptr112.i.i.i = getelementptr inbounds i8, ptr %pat.0.i.i.i, i64 -1
  %dec.i.i.i = add nsw i32 %count.0.i.i.i, -1
  br label %for.cond.i.i.i, !llvm.loop !164

for.cond.backedge.sink.split.i.i:                 ; preds = %switch.early.test.i.i.i, %switch.early.test.i32.i.i
  %.lcssa84.sink.i.i = phi i8 [ %38, %switch.early.test.i32.i.i ], [ %21, %switch.early.test.i.i.i ]
  %.str.3.945.sink.i.i = phi ptr [ @.str.3.945, %switch.early.test.i32.i.i ], [ @.str.2.946, %switch.early.test.i.i.i ]
  %conv2.le.i.i.i = sext i8 %.lcssa84.sink.i.i to i32
  %35 = load ptr, ptr @stderr, align 8, !tbaa !21
  %call162.i.i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull %.str.3.945.sink.i.i, i32 noundef %conv2.le.i.i.i) #40
  br label %for.cond.backedge.i.i

for.cond.backedge.i.i:                            ; preds = %for.body.i.i, %sw.bb94.i.i.i, %sw.bb48.i.i.i, %sw.bb41.i.i.i, %lor.rhs.i.i.i.i, %if.then15.i.i.i, %if.then151.i.i.i, %if.then146.i.i.i, %sw.bb108.i.i.i, %sw.bb93.i.i.i, %sw.bb47.i.i.i, %sw.bb40.i.i.i, %lor.rhs.i.i40.i.i, %if.then14.i.i.i, %for.cond.backedge.sink.split.i.i
  br label %for.cond.i.i, !llvm.loop !160

if.end26.i.i:                                     ; preds = %for.cond.i.i.i, %if.end19.i.i
  %36 = load i8, ptr %18, align 1, !tbaa !5
  %cmp.i18.i.i = icmp eq i8 %36, 0
  br i1 %cmp.i18.i.i, label %if.end32.i.i, label %for.cond.i19.preheader.i.i

for.cond.i19.preheader.i.i:                       ; preds = %if.end26.i.i
  %sext.i.i = shl i64 %indvars.iv.i.i, 32
  %idxprom27.i.i = ashr exact i64 %sext.i.i, 32
  %arrayidx28.i.i = getelementptr inbounds i8, ptr %call, i64 %idxprom27.i.i
  %37 = load ptr, ptr %call.i, align 8, !tbaa !133
  br label %for.cond.i19.i.i

for.cond.i19.i.i:                                 ; preds = %for.inc.i30.i.i, %for.cond.i19.preheader.i.i
  %38 = phi i8 [ %.pr.i.i.i, %for.inc.i30.i.i ], [ %36, %for.cond.i19.preheader.i.i ]
  %pat.0.i20.i.i = phi ptr [ %incdec.ptr163.i.i.i, %for.inc.i30.i.i ], [ %18, %for.cond.i19.preheader.i.i ]
  %text.0.i21.i.i = phi ptr [ %text.1.i31.i.i, %for.inc.i30.i.i ], [ %arrayidx28.i.i, %for.cond.i19.preheader.i.i ]
  %cmp3.not.i.i.i = icmp eq i8 %38, 0
  br i1 %cmp3.not.i.i.i, label %if.end32.i.i, label %for.body.i22.i.i

for.body.i22.i.i:                                 ; preds = %for.cond.i19.i.i
  %idxprom.i24.i.i = sext i8 %38 to i64
  %arrayidx.i25.i.i = getelementptr inbounds i16, ptr %37, i64 %idxprom.i24.i.i
  %39 = load i16, ptr %arrayidx.i25.i.i, align 2, !tbaa !18
  %.fr57.i.i.i = freeze i16 %39
  %40 = and i16 %.fr57.i.i.i, 1024
  %tobool.not.not.i26.i.i = icmp eq i16 %40, 0
  br i1 %tobool.not.not.i26.i.i, label %switch.early.test.i32.i.i, label %if.then14.i.i.i

switch.early.test.i32.i.i:                        ; preds = %for.body.i22.i.i
  switch i8 %38, label %for.cond.backedge.sink.split.i.i [
    i8 39, label %if.then14.i.i.i
    i8 32, label %if.then14.i.i.i
    i8 35, label %sw.bb.i34.i.i
    i8 58, label %while.cond33.i.i.i
    i8 94, label %sw.bb40.i.i.i
    i8 46, label %sw.bb47.i.i.i
    i8 43, label %sw.bb93.i.i.i
    i8 37, label %sw.bb108.i.i.i
  ]

if.then14.i.i.i:                                  ; preds = %switch.early.test.i32.i.i, %switch.early.test.i32.i.i, %for.body.i22.i.i
  %41 = load i8, ptr %text.0.i21.i.i, align 1, !tbaa !5
  %cmp17.not.i.i.i = icmp eq i8 %38, %41
  br i1 %cmp17.not.i.i.i, label %if.else.i28.i.i, label %for.cond.backedge.i.i

if.else.i28.i.i:                                  ; preds = %if.then14.i.i.i
  %incdec.ptr.i29.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 1
  br label %for.inc.i30.i.i

sw.bb.i34.i.i:                                    ; preds = %switch.early.test.i32.i.i
  %42 = load i8, ptr %text.0.i21.i.i, align 1, !tbaa !5
  %conv22.i.i.i = sext i8 %42 to i32
  %43 = add nsw i32 %conv22.i.i.i, -65
  %44 = tail call i32 @llvm.fshl.i32(i32 %43, i32 %43, i32 31)
  switch i32 %44, label %lor.rhs.i.i40.i.i [
    i32 7, label %while.cond.i36.i.i.preheader
    i32 4, label %while.cond.i36.i.i.preheader
    i32 2, label %while.cond.i36.i.i.preheader
    i32 0, label %while.cond.i36.i.i.preheader
  ]

lor.rhs.i.i40.i.i:                                ; preds = %sw.bb.i34.i.i
  %cmp6.i.not.i41.i.i = icmp eq i8 %42, 85
  br i1 %cmp6.i.not.i41.i.i, label %while.cond.i36.i.i.preheader, label %for.cond.backedge.i.i

while.cond.i36.i.i.preheader:                     ; preds = %lor.rhs.i.i40.i.i, %sw.bb.i34.i.i, %sw.bb.i34.i.i, %sw.bb.i34.i.i, %sw.bb.i34.i.i
  br label %while.cond.i36.i.i

while.cond.i36.i.i:                               ; preds = %while.cond.i36.i.i.backedge, %while.cond.i36.i.i.preheader
  %text.0.pn.i37.i.i = phi ptr [ %text.0.i21.i.i, %while.cond.i36.i.i.preheader ], [ %text.2.i38.i.i, %while.cond.i36.i.i.backedge ]
  %text.2.i38.i.i = getelementptr inbounds nuw i8, ptr %text.0.pn.i37.i.i, i64 1
  %45 = load i8, ptr %text.2.i38.i.i, align 1, !tbaa !5
  %conv28.i.i.i = sext i8 %45 to i32
  %46 = add nsw i32 %conv28.i.i.i, -65
  %47 = tail call i32 @llvm.fshl.i32(i32 %46, i32 %46, i32 31)
  switch i32 %47, label %lor.rhs.i54.i.i.i [
    i32 7, label %while.cond.i36.i.i.backedge
    i32 4, label %while.cond.i36.i.i.backedge
    i32 2, label %while.cond.i36.i.i.backedge
    i32 0, label %while.cond.i36.i.i.backedge
  ]

lor.rhs.i54.i.i.i:                                ; preds = %while.cond.i36.i.i
  %cmp6.i55.not.i.i.i = icmp eq i8 %45, 85
  br i1 %cmp6.i55.not.i.i.i, label %while.cond.i36.i.i.backedge, label %for.inc.i30.i.i

while.cond.i36.i.i.backedge:                      ; preds = %lor.rhs.i54.i.i.i, %while.cond.i36.i.i, %while.cond.i36.i.i, %while.cond.i36.i.i, %while.cond.i36.i.i
  br label %while.cond.i36.i.i, !llvm.loop !165

while.cond33.i.i.i:                               ; preds = %switch.early.test.i32.i.i, %while.cond33.i.i.i
  %text.3.i33.i.i = phi ptr [ %incdec.ptr38.i.i.i, %while.cond33.i.i.i ], [ %text.0.i21.i.i, %switch.early.test.i32.i.i ]
  %48 = load i8, ptr %text.3.i33.i.i, align 1, !tbaa !5
  %conv34.i.i.i = sext i8 %48 to i32
  %call35.i.i.i = tail call i32 @isconsonant(i32 noundef %conv34.i.i.i)
  %tobool36.not.i.i.i = icmp eq i32 %call35.i.i.i, 0
  %incdec.ptr38.i.i.i = getelementptr inbounds nuw i8, ptr %text.3.i33.i.i, i64 1
  br i1 %tobool36.not.i.i.i, label %for.inc.i30.i.i, label %while.cond33.i.i.i, !llvm.loop !166

sw.bb40.i.i.i:                                    ; preds = %switch.early.test.i32.i.i
  %49 = load i8, ptr %text.0.i21.i.i, align 1, !tbaa !5
  %conv41.i.i.i = sext i8 %49 to i32
  %call42.i.i.i = tail call i32 @isconsonant(i32 noundef %conv41.i.i.i)
  %tobool43.not.i.i.i = icmp eq i32 %call42.i.i.i, 0
  br i1 %tobool43.not.i.i.i, label %for.cond.backedge.i.i, label %if.end45.i.i.i

if.end45.i.i.i:                                   ; preds = %sw.bb40.i.i.i
  %incdec.ptr46.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 1
  br label %for.inc.i30.i.i

sw.bb47.i.i.i:                                    ; preds = %switch.early.test.i32.i.i
  %50 = load i8, ptr %text.0.i21.i.i, align 1, !tbaa !5
  switch i8 %50, label %for.cond.backedge.i.i [
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
  %incdec.ptr92.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 1
  br label %for.inc.i30.i.i

sw.bb93.i.i.i:                                    ; preds = %switch.early.test.i32.i.i
  %51 = load i8, ptr %text.0.i21.i.i, align 1, !tbaa !5
  switch i8 %51, label %for.cond.backedge.i.i [
    i8 69, label %if.end106.i.i.i
    i8 73, label %if.end106.i.i.i
    i8 89, label %if.end106.i.i.i
  ]

if.end106.i.i.i:                                  ; preds = %sw.bb93.i.i.i, %sw.bb93.i.i.i, %sw.bb93.i.i.i
  %incdec.ptr107.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 1
  br label %for.inc.i30.i.i

sw.bb108.i.i.i:                                   ; preds = %switch.early.test.i32.i.i
  %52 = load i8, ptr %text.0.i21.i.i, align 1, !tbaa !5
  switch i8 %52, label %for.cond.backedge.i.i [
    i8 69, label %if.then112.i.i.i
    i8 73, label %if.then146.i.i.i
  ]

if.then112.i.i.i:                                 ; preds = %sw.bb108.i.i.i
  %incdec.ptr113.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 1
  %53 = load i8, ptr %incdec.ptr113.i.i.i, align 1, !tbaa !5
  switch i8 %53, label %for.inc.i30.i.i [
    i8 76, label %if.then117.i.i.i
    i8 82, label %if.then138.i.i.i
    i8 83, label %if.then138.i.i.i
    i8 68, label %if.then138.i.i.i
  ]

if.then117.i.i.i:                                 ; preds = %if.then112.i.i.i
  %incdec.ptr118.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 2
  %54 = load i8, ptr %incdec.ptr118.i.i.i, align 1, !tbaa !5
  %cmp120.i.i.i = icmp eq i8 %54, 89
  %incdec.ptr123.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 3
  %spec.select.i.i.i = select i1 %cmp120.i.i.i, ptr %incdec.ptr123.i.i.i, ptr %incdec.ptr113.i.i.i
  br label %for.inc.i30.i.i

if.then138.i.i.i:                                 ; preds = %if.then112.i.i.i, %if.then112.i.i.i, %if.then112.i.i.i
  %incdec.ptr139.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 2
  br label %for.inc.i30.i.i

if.then146.i.i.i:                                 ; preds = %sw.bb108.i.i.i
  %incdec.ptr147.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 1
  %55 = load i8, ptr %incdec.ptr147.i.i.i, align 1, !tbaa !5
  %cmp149.i.i.i = icmp eq i8 %55, 78
  br i1 %cmp149.i.i.i, label %if.then151.i.i.i, label %for.cond.backedge.i.i

if.then151.i.i.i:                                 ; preds = %if.then146.i.i.i
  %incdec.ptr152.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 2
  %56 = load i8, ptr %incdec.ptr152.i.i.i, align 1, !tbaa !5
  %cmp154.i.i.i = icmp eq i8 %56, 71
  br i1 %cmp154.i.i.i, label %if.then156.i.i.i, label %for.cond.backedge.i.i

if.then156.i.i.i:                                 ; preds = %if.then151.i.i.i
  %incdec.ptr157.i.i.i = getelementptr inbounds nuw i8, ptr %text.0.i21.i.i, i64 3
  br label %for.inc.i30.i.i

for.inc.i30.i.i:                                  ; preds = %while.cond33.i.i.i, %lor.rhs.i54.i.i.i, %if.then156.i.i.i, %if.then138.i.i.i, %if.then117.i.i.i, %if.then112.i.i.i, %if.end106.i.i.i, %if.end91.i.i.i, %if.end45.i.i.i, %if.else.i28.i.i
  %text.1.i31.i.i = phi ptr [ %incdec.ptr.i29.i.i, %if.else.i28.i.i ], [ %incdec.ptr46.i.i.i, %if.end45.i.i.i ], [ %incdec.ptr92.i.i.i, %if.end91.i.i.i ], [ %incdec.ptr107.i.i.i, %if.end106.i.i.i ], [ %incdec.ptr139.i.i.i, %if.then138.i.i.i ], [ %incdec.ptr157.i.i.i, %if.then156.i.i.i ], [ %incdec.ptr113.i.i.i, %if.then112.i.i.i ], [ %spec.select.i.i.i, %if.then117.i.i.i ], [ %text.2.i38.i.i, %lor.rhs.i54.i.i.i ], [ %text.3.i33.i.i, %while.cond33.i.i.i ]
  %incdec.ptr163.i.i.i = getelementptr inbounds nuw i8, ptr %pat.0.i20.i.i, i64 1
  %.pr.i.i.i = load i8, ptr %incdec.ptr163.i.i.i, align 1, !tbaa !5
  br label %for.cond.i19.i.i, !llvm.loop !167

if.end32.i.i:                                     ; preds = %if.end26.i.i, %for.cond.i19.i.i
  %arrayidx33.i.i = getelementptr inbounds nuw i8, ptr %rules.addr.0.i.i, i64 24
  %57 = load ptr, ptr %arrayidx33.i.i, align 8, !tbaa !12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end32.i.i
  %s.addr.0.i = phi ptr [ %57, %if.end32.i.i ], [ %incdec.ptr.i, %while.body.i ]
  %58 = load i8, ptr %s.addr.0.i, align 1, !tbaa !5
  %tobool.not.i11 = icmp eq i8 %58, 0
  br i1 %tobool.not.i11, label %find_rule.exit.i.loopexit, label %while.body.i

while.body.i:                                     ; preds = %while.cond.i
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %s.addr.0.i, i64 1
  %conv.i = sext i8 %58 to i32
  %call.i12 = tail call i32 @phone_append(ptr noundef %phone, i32 noundef %conv.i)
  br label %while.cond.i, !llvm.loop !168

find_rule.exit.i.loopexit:                        ; preds = %while.cond.i
  %59 = trunc nsw i64 %indvars.iv.i.i to i32
  br label %find_rule.exit.i

find_rule.exit.i:                                 ; preds = %find_rule.exit.i.loopexit, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ %59, %find_rule.exit.i.loopexit ]
  %idxprom10.i = sext i32 %retval.0.i.i to i64
  %arrayidx11.i = getelementptr inbounds i8, ptr %call, i64 %idxprom10.i
  %60 = load i8, ptr %arrayidx11.i, align 1, !tbaa !5
  %cmp.not.i = icmp eq i8 %60, 0
  br i1 %cmp.not.i, label %guess_word.exit, label %do.body.i, !llvm.loop !169

guess_word.exit:                                  ; preds = %find_rule.exit.i
  tail call void @free(ptr noundef nonnull %call) #37
  %61 = load i32, ptr %items, align 8, !tbaa !26
  %sub = sub i32 %61, %0
  ret i32 %sub
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @trie_insert(ptr noundef captures(none) %r, ptr noundef readonly captures(none) %s, ptr noundef %value) local_unnamed_addr #0 {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end10, %entry
  %s.addr.0 = phi ptr [ %s, %entry ], [ %incdec.ptr, %if.end10 ]
  %p.0 = phi ptr [ null, %entry ], [ %p.1, %if.end10 ]
  %r.addr.0 = phi ptr [ %r, %entry ], [ %more, %if.end10 ]
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.addr.0, i64 1
  %0 = load i8, ptr %s.addr.0, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %while.end11, label %while.cond1

while.cond1:                                      ; preds = %while.cond, %while.body3
  %r.addr.1 = phi ptr [ %1, %while.body3 ], [ %r.addr.0, %while.cond ]
  %1 = load ptr, ptr %r.addr.1, align 8, !tbaa !124
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %if.then8, label %while.body3

while.body3:                                      ; preds = %while.cond1
  %ch4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %2 = load i8, ptr %ch4, align 8, !tbaa !170
  %cmp = icmp eq i8 %2, %0
  br i1 %cmp, label %if.end10, label %while.cond1, !llvm.loop !172

if.then8:                                         ; preds = %while.cond1
  %calloc = tail call dereferenceable_or_null(32) ptr @calloc(i64 1, i64 32)
  %ch9 = getelementptr inbounds nuw i8, ptr %calloc, i64 24
  store i8 %0, ptr %ch9, align 8, !tbaa !170
  store ptr %calloc, ptr %r.addr.1, align 8, !tbaa !124
  br label %if.end10

if.end10:                                         ; preds = %while.body3, %if.then8
  %p.1 = phi ptr [ %calloc, %if.then8 ], [ %1, %while.body3 ]
  %more = getelementptr inbounds nuw i8, ptr %p.1, i64 8
  br label %while.cond, !llvm.loop !173

while.end11:                                      ; preds = %while.cond
  %value12 = getelementptr inbounds nuw i8, ptr %p.0, i64 16
  store ptr %value, ptr %value12, align 8, !tbaa !174
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @trie_lookup(ptr noundef captures(none) %r, ptr noundef captures(none) %sp) local_unnamed_addr #32 {
entry:
  %0 = load ptr, ptr %sp, align 8, !tbaa !12
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %value.0 = phi ptr [ null, %entry ], [ %6, %cleanup ]
  %s.0 = phi ptr [ %0, %entry ], [ %incdec.ptr, %cleanup ]
  %r.addr.0 = phi ptr [ %r, %entry ], [ %more, %cleanup ]
  %1 = load i8, ptr %s.0, align 1, !tbaa !5
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %while.end15, label %while.cond1

while.cond1:                                      ; preds = %while.cond, %while.body3
  %l.0 = phi ptr [ %2, %while.body3 ], [ %r.addr.0, %while.cond ]
  %2 = load ptr, ptr %l.0, align 8, !tbaa !124
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %while.end15, label %while.body3

while.body3:                                      ; preds = %while.cond1
  %ch4 = getelementptr inbounds nuw i8, ptr %2, i64 24
  %3 = load i8, ptr %ch4, align 8, !tbaa !170
  %cmp = icmp eq i8 %3, %1
  br i1 %cmp, label %cleanup, label %while.cond1, !llvm.loop !175

cleanup:                                          ; preds = %while.body3
  %4 = load ptr, ptr %2, align 8, !tbaa !176
  store ptr %4, ptr %l.0, align 8, !tbaa !124
  %5 = load ptr, ptr %r.addr.0, align 8, !tbaa !124
  store ptr %5, ptr %2, align 8, !tbaa !176
  store ptr %2, ptr %r.addr.0, align 8, !tbaa !124
  %more = getelementptr inbounds nuw i8, ptr %2, i64 8
  %value11 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %6 = load ptr, ptr %value11, align 8, !tbaa !174
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %s.0, i64 1
  br label %while.cond

while.end15:                                      ; preds = %while.cond, %while.cond1
  store ptr %s.0, ptr %sp, align 8, !tbaa !12
  ret ptr %value.0
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #34

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #34

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #34

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #34

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #33

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #34

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #34

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #34

; Function Attrs: nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #35

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
attributes #17 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nounwind willreturn memory(read, argmem: write, inaccessiblemem: none, errnomem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { nofree nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nounwind memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { nofree nounwind }
attributes #34 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #35 = { nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" }
attributes #36 = { nounwind willreturn memory(read) }
attributes #37 = { nounwind }
attributes #38 = { cold }
attributes #39 = { nounwind allocsize(0) }
attributes #40 = { cold nounwind }
attributes #41 = { noreturn nounwind }
attributes #42 = { cold noreturn nounwind }
attributes #43 = { nounwind willreturn memory(none) }

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
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = !{!43, !16, i64 0}
!43 = !{!"", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !16, i64 80, !16, i64 88, !16, i64 96, !16, i64 104, !16, i64 112, !16, i64 120, !16, i64 128, !16, i64 136, !16, i64 144, !16, i64 152, !16, i64 160, !16, i64 168, !16, i64 176, !16, i64 184, !16, i64 192, !16, i64 200, !16, i64 208, !16, i64 216, !16, i64 224, !16, i64 232, !16, i64 240, !16, i64 248, !16, i64 256, !16, i64 264, !16, i64 272, !16, i64 280, !16, i64 288, !16, i64 296, !16, i64 304, !16, i64 312}
!44 = !{i64 0, i64 8, !15, i64 8, i64 8, !15, i64 16, i64 8, !15, i64 24, i64 8, !15, i64 32, i64 8, !15, i64 40, i64 8, !15, i64 48, i64 8, !15, i64 56, i64 8, !15, i64 64, i64 8, !15, i64 72, i64 8, !15, i64 80, i64 8, !15, i64 88, i64 8, !15, i64 96, i64 8, !15, i64 104, i64 8, !15, i64 112, i64 8, !15, i64 120, i64 8, !15, i64 128, i64 8, !15, i64 136, i64 8, !15, i64 144, i64 8, !15, i64 152, i64 8, !15, i64 160, i64 8, !15, i64 168, i64 8, !15, i64 176, i64 8, !15, i64 184, i64 8, !15, i64 192, i64 8, !15, i64 200, i64 8, !15, i64 208, i64 8, !15, i64 216, i64 8, !15, i64 224, i64 8, !15, i64 232, i64 8, !15, i64 240, i64 8, !15, i64 248, i64 8, !15, i64 256, i64 8, !15, i64 264, i64 8, !15, i64 272, i64 8, !15, i64 280, i64 8, !15, i64 288, i64 8, !15, i64 296, i64 8, !15, i64 304, i64 8, !15, i64 312, i64 8, !15}
!45 = !{!46, !47, i64 0}
!46 = !{!"", !47, i64 0, !47, i64 4, !6, i64 8, !6, i64 9, !6, i64 10}
!47 = !{!"float", !6, i64 0}
!48 = !{!43, !16, i64 128}
!49 = !{!43, !16, i64 24}
!50 = !{!43, !16, i64 200}
!51 = !{!43, !16, i64 40}
!52 = !{!43, !16, i64 216}
!53 = !{!43, !16, i64 56}
!54 = !{!43, !16, i64 232}
!55 = !{!43, !16, i64 248}
!56 = !{!57, !11, i64 4}
!57 = !{!"", !47, i64 0, !11, i64 4}
!58 = !{!57, !47, i64 0}
!59 = !{!60, !47, i64 8}
!60 = !{!"", !47, i64 0, !47, i64 4, !47, i64 8}
!61 = !{!60, !47, i64 0}
!62 = !{!60, !47, i64 4}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9}
!65 = !{!66, !6, i64 8}
!66 = !{!"Elm_s", !13, i64 0, !6, i64 8, !6, i64 9, !6, i64 10, !6, i64 11, !13, i64 16, !13, i64 24, !16, i64 32, !6, i64 40}
!67 = !{!66, !13, i64 0}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, !9}
!71 = !{!66, !16, i64 32}
!72 = distinct !{!72, !9}
!73 = !{!47, !47, i64 0}
!74 = distinct !{!74, !9}
!75 = !{!43, !16, i64 304}
!76 = !{!43, !16, i64 8}
!77 = !{!43, !16, i64 176}
!78 = !{!43, !16, i64 112}
!79 = !{!43, !16, i64 144}
!80 = !{!43, !16, i64 160}
!81 = !{!43, !16, i64 16}
!82 = !{!43, !16, i64 32}
!83 = !{!43, !16, i64 48}
!84 = !{!43, !16, i64 296}
!85 = !{!43, !16, i64 256}
!86 = !{!43, !16, i64 272}
!87 = !{!43, !16, i64 192}
!88 = !{!43, !16, i64 208}
!89 = !{!43, !16, i64 224}
!90 = !{!43, !16, i64 240}
!91 = distinct !{!91, !9}
!92 = distinct !{!92, !9}
!93 = distinct !{!93, !9}
!94 = distinct !{!94, !9}
!95 = !{!46, !47, i64 4}
!96 = !{!46, !6, i64 8}
!97 = distinct !{!97, !9}
!98 = distinct !{!98, !9}
!99 = distinct !{!99, !9}
!100 = distinct !{!100, !9}
!101 = !{!43, !16, i64 184}
!102 = !{!43, !16, i64 288}
!103 = !{!43, !16, i64 96}
!104 = !{!43, !16, i64 104}
!105 = !{!43, !16, i64 80}
!106 = !{!43, !16, i64 88}
!107 = !{!43, !16, i64 64}
!108 = !{!43, !16, i64 72}
!109 = !{!43, !16, i64 136}
!110 = !{!43, !16, i64 120}
!111 = !{!112, !47, i64 8}
!112 = !{!"", !13, i64 0, !47, i64 8, !47, i64 12, !47, i64 16, !47, i64 20, !47, i64 24}
!113 = !{!112, !47, i64 12}
!114 = !{!112, !47, i64 16}
!115 = !{!43, !16, i64 264}
!116 = !{!43, !16, i64 280}
!117 = !{!43, !16, i64 312}
!118 = !{!43, !16, i64 152}
!119 = !{!43, !16, i64 168}
!120 = distinct !{!120, !9}
!121 = distinct !{!121, !9}
!122 = !{!112, !47, i64 20}
!123 = !{!112, !47, i64 24}
!124 = !{!125, !125, i64 0}
!125 = !{!"p1 _ZTS6trie_s", !14, i64 0}
!126 = !{!66, !6, i64 9}
!127 = !{!66, !6, i64 10}
!128 = distinct !{!128, !9}
!129 = distinct !{!129, !9}
!130 = distinct !{!130, !9}
!131 = distinct !{!131, !9}
!132 = distinct !{!132, !9}
!133 = !{!134, !134, i64 0}
!134 = !{!"p1 short", !14, i64 0}
!135 = distinct !{!135, !9}
!136 = distinct !{!136, !9}
!137 = distinct !{!137, !9}
!138 = distinct !{!138, !9}
!139 = distinct !{!139, !9}
!140 = distinct !{!140, !9}
!141 = distinct !{!141, !9}
!142 = distinct !{!142, !9}
!143 = distinct !{!143, !9}
!144 = distinct !{!144, !9}
!145 = !{!146, !146, i64 0}
!146 = !{!"p1 int", !14, i64 0}
!147 = distinct !{!147, !9}
!148 = distinct !{!148, !9}
!149 = distinct !{!149, !9}
!150 = distinct !{!150, !9}
!151 = distinct !{!151, !9}
!152 = distinct !{!152, !9}
!153 = distinct !{!153, !9}
!154 = distinct !{!154, !9}
!155 = distinct !{!155, !9}
!156 = distinct !{!156, !9}
!157 = !{!158, !158, i64 0}
!158 = !{!"p2 omnipotent char", !159, i64 0}
!159 = !{!"any p2 pointer", !14, i64 0}
!160 = distinct !{!160, !9}
!161 = distinct !{!161, !9}
!162 = distinct !{!162, !9}
!163 = distinct !{!163, !9}
!164 = distinct !{!164, !9}
!165 = distinct !{!165, !9}
!166 = distinct !{!166, !9}
!167 = distinct !{!167, !9}
!168 = distinct !{!168, !9}
!169 = distinct !{!169, !9}
!170 = !{!171, !6, i64 24}
!171 = !{!"trie_s", !125, i64 0, !125, i64 8, !14, i64 16, !6, i64 24}
!172 = distinct !{!172, !9}
!173 = distinct !{!173, !9}
!174 = !{!171, !14, i64 16}
!175 = distinct !{!175, !9}
!176 = !{!171, !125, i64 0}
