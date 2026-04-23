; ModuleID = '<stdin>'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.S0 = type { [18 x i8] }

@.str.1 = private unnamed_addr constant [8 x i8] c"g_10.f0\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"g_10.f1\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"g_10.f2\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"g_10.f3\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"g_10.f4\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"g_10.f5\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"g_10.f6\00", align 1
@g_20 = internal unnamed_addr global [10 x i16] [i16 -4900, i16 -4900, i16 -4900, i16 -4900, i16 -4900, i16 -4900, i16 -4900, i16 -4900, i16 -4900, i16 -4900], align 16
@.str.8 = private unnamed_addr constant [8 x i8] c"g_20[i]\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"index = [%d]\0A\00", align 1
@g_80 = internal global i32 616406875, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"g_80\00", align 1
@g_88 = internal unnamed_addr global i16 -31910, align 2
@.str.11 = private unnamed_addr constant [5 x i8] c"g_88\00", align 1
@g_92 = internal unnamed_addr global i1 false, align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"g_92\00", align 1
@g_133 = internal global [9 x i64] [i64 -7554736144263008128, i64 -7554736144263008128, i64 -7554736144263008128, i64 -7554736144263008128, i64 -7554736144263008128, i64 -7554736144263008128, i64 -7554736144263008128, i64 -7554736144263008128, i64 -7554736144263008128], align 16
@.str.13 = private unnamed_addr constant [9 x i8] c"g_133[i]\00", align 1
@g_142 = internal global i32 1, align 4
@.str.14 = private unnamed_addr constant [6 x i8] c"g_142\00", align 1
@g_156 = internal global [6 x i32] [i32 -1448530826, i32 -1448530826, i32 -1, i32 -1448530826, i32 -1448530826, i32 -1], align 16
@.str.15 = private unnamed_addr constant [9 x i8] c"g_156[i]\00", align 1
@g_161 = internal unnamed_addr global i8 4, align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"g_161\00", align 1
@g_166 = internal global i32 0, align 4
@.str.17 = private unnamed_addr constant [6 x i8] c"g_166\00", align 1
@g_174 = internal global [5 x i32] [i32 -10, i32 -10, i32 -10, i32 -10, i32 -10], align 16
@.str.18 = private unnamed_addr constant [9 x i8] c"g_174[i]\00", align 1
@g_202 = internal unnamed_addr global [7 x [10 x [3 x i32]]] [[10 x [3 x i32]] [[3 x i32] [i32 -200250074, i32 -8, i32 8], [3 x i32] [i32 1210445682, i32 1, i32 673695382], [3 x i32] [i32 0, i32 8, i32 -1], [3 x i32] [i32 -1, i32 -1, i32 -187344909], [3 x i32] [i32 -1, i32 -967335782, i32 1], [3 x i32] [i32 -1881528480, i32 -1, i32 -867022748], [3 x i32] [i32 0, i32 1, i32 1964594268], [3 x i32] [i32 -1, i32 -648340239, i32 -1050888707], [3 x i32] [i32 -275451831, i32 -648340239, i32 1], [3 x i32] [i32 -1357389644, i32 1, i32 1210445682]], [10 x [3 x i32]] [[3 x i32] [i32 699604592, i32 -1, i32 432019225], [3 x i32] [i32 -1, i32 0, i32 -322415813], [3 x i32] [i32 1145126753, i32 -2081751821, i32 1], [3 x i32] [i32 -1791115990, i32 -1, i32 4], [3 x i32] [i32 1204658779, i32 -2013842732, i32 -1144181212], [3 x i32] [i32 1, i32 0, i32 397909226], [3 x i32] [i32 1988178841, i32 1988178841, i32 1], [3 x i32] [i32 -2013842732, i32 1, i32 1308552917], [3 x i32] [i32 -578577331, i32 -1, i32 136965935], [3 x i32] [i32 1763615312, i32 1456447747, i32 1398096112]], [10 x [3 x i32]] [[3 x i32] [i32 0, i32 -578577331, i32 136965935], [3 x i32] [i32 -967335782, i32 397909226, i32 1308552917], [3 x i32] [i32 0, i32 -187344909, i32 1], [3 x i32] [i32 -1705225044, i32 -7, i32 397909226], [3 x i32] [i32 -1, i32 1763615312, i32 -1144181212], [3 x i32] [i32 -10, i32 1706179411, i32 4], [3 x i32] [i32 -1, i32 -1188481886, i32 1], [3 x i32] [i32 673695382, i32 136965935, i32 -322415813], [3 x i32] [i32 -8, i32 673695382, i32 432019225], [3 x i32] [i32 1964594268, i32 349913072, i32 1210445682]], [10 x [3 x i32]] [[3 x i32] [i32 0, i32 -1, i32 1], [3 x i32] [i32 5, i32 -4, i32 -1050888707], [3 x i32] [i32 5, i32 -1791115990, i32 1964594268], [3 x i32] [i32 0, i32 -1, i32 -867022748], [3 x i32] [i32 1964594268, i32 -547658669, i32 349913072], [3 x i32] [i32 -8, i32 -1705225044, i32 1204658779], [3 x i32] [i32 673695382, i32 8, i32 -275451831], [3 x i32] [i32 -1, i32 -311889923, i32 0], [3 x i32] [i32 -10, i32 -867022748, i32 -1], [3 x i32] [i32 -1, i32 1311704189, i32 1311704189]], [10 x [3 x i32]] [[3 x i32] [i32 -1705225044, i32 -495119455, i32 -1], [3 x i32] [i32 0, i32 -8, i32 -1], [3 x i32] [i32 -967335782, i32 -1357389644, i32 0], [3 x i32] [i32 0, i32 1210445682, i32 -1791115990], [3 x i32] [i32 1763615312, i32 -1357389644, i32 699604592], [3 x i32] [i32 -578577331, i32 -8, i32 1456447747], [3 x i32] [i32 -2013842732, i32 -495119455, i32 1], [3 x i32] [i32 1988178841, i32 1311704189, i32 -7], [3 x i32] [i32 1, i32 -867022748, i32 -967335782], [3 x i32] [i32 1204658779, i32 -311889923, i32 1988178841]], [10 x [3 x i32]] [[3 x i32] [i32 -1791115990, i32 8, i32 -495119455], [3 x i32] [i32 1145126753, i32 -1705225044, i32 -1357389644], [3 x i32] [i32 -1, i32 -547658669, i32 2141657641], [3 x i32] [i32 699604592, i32 -1, i32 -200250074], [3 x i32] [i32 -1357389644, i32 -1791115990, i32 -2013842732], [3 x i32] [i32 -275451831, i32 -4, i32 -2013842732], [3 x i32] [i32 -1, i32 -1, i32 -200250074], [3 x i32] [i32 0, i32 349913072, i32 2141657641], [3 x i32] [i32 1, i32 673695382, i32 -1357389644], [3 x i32] [i32 -2081751821, i32 136965935, i32 -495119455]], [10 x [3 x i32]] [[3 x i32] [i32 -613055697, i32 -1188481886, i32 1988178841], [3 x i32] [i32 -547658669, i32 1706179411, i32 -967335782], [3 x i32] [i32 -720855813, i32 1763615312, i32 -7], [3 x i32] [i32 1, i32 -7, i32 1], [3 x i32] [i32 349913072, i32 -187344909, i32 1456447747], [3 x i32] [i32 8, i32 397909226, i32 699604592], [3 x i32] [i32 1308552917, i32 -578577331, i32 -1791115990], [3 x i32] [i32 -7, i32 1456447747, i32 0], [3 x i32] [i32 1308552917, i32 -1, i32 -1], [3 x i32] [i32 -1, i32 -311889923, i32 -1881528480]]], align 16
@.str.19 = private unnamed_addr constant [15 x i8] c"g_202[i][j][k]\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"index = [%d][%d][%d]\0A\00", align 1
@g_232 = internal global i32 1058350367, align 4
@.str.21 = private unnamed_addr constant [6 x i8] c"g_232\00", align 1
@g_268 = internal unnamed_addr constant [9 x [3 x i32]] [[3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 -7, i32 -7, i32 -7], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 -7, i32 -7, i32 -7], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 -7, i32 -7, i32 -7], [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 -7, i32 -7, i32 -7], [3 x i32] [i32 1, i32 1, i32 1]], align 16
@.str.22 = private unnamed_addr constant [12 x i8] c"g_268[i][j]\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"index = [%d][%d]\0A\00", align 1
@g_390 = internal global [9 x [10 x i16]] [[10 x i16] [i16 19979, i16 -4, i16 19979, i16 12751, i16 19243, i16 12751, i16 19979, i16 -4, i16 19979, i16 12751], [10 x i16] [i16 19243, i16 -4, i16 -3, i16 -4, i16 19243, i16 0, i16 19243, i16 -4, i16 -3, i16 -4], [10 x i16] [i16 19243, i16 12751, i16 19979, i16 -4, i16 19979, i16 12751, i16 19243, i16 12751, i16 19979, i16 -4], [10 x i16] [i16 19979, i16 -4, i16 19979, i16 12751, i16 19243, i16 12751, i16 19979, i16 -4, i16 19979, i16 12751], [10 x i16] [i16 19243, i16 -4, i16 -3, i16 -4, i16 19243, i16 0, i16 19243, i16 -4, i16 -3, i16 -4], [10 x i16] [i16 19243, i16 12751, i16 19979, i16 -4, i16 19979, i16 12751, i16 19243, i16 12751, i16 19979, i16 -4], [10 x i16] [i16 19979, i16 -4, i16 19979, i16 12751, i16 19243, i16 12751, i16 19979, i16 -4, i16 19979, i16 12751], [10 x i16] [i16 19243, i16 -4, i16 -3, i16 -4, i16 19243, i16 0, i16 19243, i16 -4, i16 -3, i16 -4], [10 x i16] [i16 19243, i16 12751, i16 19979, i16 -4, i16 19979, i16 12751, i16 19243, i16 12751, i16 19979, i16 -4]], align 16
@.str.24 = private unnamed_addr constant [12 x i8] c"g_390[i][j]\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"g_394\00", align 1
@g_395 = internal unnamed_addr global i1 false, align 8
@.str.26 = private unnamed_addr constant [6 x i8] c"g_395\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"g_414\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"g_430\00", align 1
@g_485 = internal global i16 -26444, align 2
@.str.29 = private unnamed_addr constant [6 x i8] c"g_485\00", align 1
@g_493 = internal unnamed_addr global i16 1, align 2
@.str.30 = private unnamed_addr constant [6 x i8] c"g_493\00", align 1
@g_526 = internal unnamed_addr global i1 false, align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"g_526\00", align 1
@g_534 = internal global i32 -7, align 4
@.str.32 = private unnamed_addr constant [6 x i8] c"g_534\00", align 1
@g_616 = internal unnamed_addr global [4 x [2 x i64]] [[2 x i64] [i64 -5, i64 -5], [2 x i64] [i64 -5, i64 -5], [2 x i64] [i64 -5, i64 -5], [2 x i64] [i64 -5, i64 -5]], align 16
@.str.33 = private unnamed_addr constant [12 x i8] c"g_616[i][j]\00", align 1
@g_701 = internal unnamed_addr global i32 2007317316, align 4
@.str.34 = private unnamed_addr constant [6 x i8] c"g_701\00", align 1
@g_741 = internal global i64 -1294654254530824337, align 8
@.str.35 = private unnamed_addr constant [6 x i8] c"g_741\00", align 1
@g_906 = internal global [2 x [8 x [8 x i8]]] [[8 x [8 x i8]] [[8 x i8] c"\01\09\01\01\FF\FF\BC\FC", [8 x i8] c"X\07\015\F7\9E\FF\A3", [8 x i8] c"X\01\00\FB\FF\14\8DX", [8 x i8] c"\01\FB\09\E8\00\00\F9\8D", [8 x i8] c"\015d\14X\D2\01\00", [8 x i8] c"\E8\00\FF\B1\FCdd\FC", [8 x i8] c"\00\FC\FC\00\07\FC\00\00", [8 x i8] c"\FB\01\DE\01\01\FF\14\01"], [8 x [8 x i8]] [[8 x i8] c"\00\01\FB\01\F7\FCi\09", [8 x i8] c"a\FC\FD\FB\FFd\DEa", [8 x i8] c"\FC\00\09\07\01\D2\01\FF", [8 x i8] c"\FB5\01d\9E\00\FB\00", [8 x i8] c"\E8\FBi\FB\E8\14\01\FC", [8 x i8] c"\00\01\8D\00\A3\9E\00\FB", [8 x i8] c"\DE\07\8D\BC\A4\FF\01\FB", [8 x i8] c"\A3\09i\FC\F7\01\FB\01"]], align 16
@.str.36 = private unnamed_addr constant [15 x i8] c"g_906[i][j][k]\00", align 1
@g_933 = internal global i32 1, align 4
@.str.37 = private unnamed_addr constant [6 x i8] c"g_933\00", align 1
@g_938 = internal unnamed_addr global [2 x [10 x [3 x i32]]] [[10 x [3 x i32]] [[3 x i32] [i32 -2134681239, i32 983262623, i32 1], [3 x i32] [i32 -2, i32 1, i32 -1], [3 x i32] [i32 1, i32 -88770281, i32 3], [3 x i32] [i32 -989289732, i32 1734562198, i32 -1], [3 x i32] [i32 1117521440, i32 -88770281, i32 1585473246], [3 x i32] [i32 -454201980, i32 -1, i32 -199629850], [3 x i32] [i32 0, i32 1734562198, i32 4], [3 x i32] [i32 4, i32 47223073, i32 4], [3 x i32] [i32 -1, i32 1117521440, i32 -199629850], [3 x i32] [i32 -989289732, i32 1, i32 3]], [10 x [3 x i32]] [[3 x i32] [i32 577766614, i32 -454201980, i32 983262623], [3 x i32] [i32 1, i32 983262623, i32 -454201980], [3 x i32] [i32 577766614, i32 3, i32 1], [3 x i32] [i32 -989289732, i32 -199629850, i32 1117521440], [3 x i32] [i32 -1, i32 4, i32 47223073], [3 x i32] [i32 4, i32 4, i32 1734562198], [3 x i32] [i32 0, i32 -199629850, i32 -1], [3 x i32] [i32 -454201980, i32 3, i32 -90943124], [3 x i32] [i32 47223073, i32 983262623, i32 1758992109], [3 x i32] [i32 -199629850, i32 -454201980, i32 -90943124]]], align 16
@.str.38 = private unnamed_addr constant [15 x i8] c"g_938[i][j][k]\00", align 1
@g_1085 = internal unnamed_addr global [1 x [7 x [7 x i32]]] [[7 x [7 x i32]] [[7 x i32] [i32 354791822, i32 354791822, i32 -588648428, i32 354791822, i32 354791822, i32 -588648428, i32 354791822], [7 x i32] [i32 -8, i32 966749253, i32 -890494991, i32 -1585421910, i32 -890494991, i32 966749253, i32 -8], [7 x i32] [i32 -1235711967, i32 354791822, i32 -1235711967, i32 -1235711967, i32 354791822, i32 -1235711967, i32 -1235711967], [7 x i32] [i32 -8, i32 -1585421910, i32 1315999093, i32 -1585421910, i32 -8, i32 -469334695, i32 -8], [7 x i32] [i32 354791822, i32 -1235711967, i32 -1235711967, i32 354791822, i32 -1235711967, i32 -1235711967, i32 354791822], [7 x i32] [i32 -890494991, i32 -1585421910, i32 -890494991, i32 966749253, i32 -8, i32 966749253, i32 -890494991], [7 x i32] [i32 354791822, i32 354791822, i32 -588648428, i32 354791822, i32 354791822, i32 -588648428, i32 354791822]]], align 16
@.str.39 = private unnamed_addr constant [16 x i8] c"g_1085[i][j][k]\00", align 1
@g_1109 = internal unnamed_addr global [4 x i64] zeroinitializer, align 16
@.str.40 = private unnamed_addr constant [10 x i8] c"g_1109[i]\00", align 1
@g_1131 = internal global i32 0, align 4
@.str.41 = private unnamed_addr constant [7 x i8] c"g_1131\00", align 1
@g_1170 = internal unnamed_addr global i32 -1, align 4
@.str.42 = private unnamed_addr constant [7 x i8] c"g_1170\00", align 1
@g_1179 = internal global i64 7039142387444414253, align 8
@.str.43 = private unnamed_addr constant [7 x i8] c"g_1179\00", align 1
@g_1421 = internal unnamed_addr global i64 -2, align 8
@.str.44 = private unnamed_addr constant [7 x i8] c"g_1421\00", align 1
@g_1422 = internal unnamed_addr global i32 -1094388593, align 4
@.str.45 = private unnamed_addr constant [7 x i8] c"g_1422\00", align 1
@g_1504 = internal global [3 x [5 x i64]] [[5 x i64] zeroinitializer, [5 x i64] [i64 -2147102083449783458, i64 -2147102083449783458, i64 -2147102083449783458, i64 -2147102083449783458, i64 -2147102083449783458], [5 x i64] zeroinitializer], align 16
@.str.46 = private unnamed_addr constant [13 x i8] c"g_1504[i][j]\00", align 1
@g_1849 = internal global i8 1, align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"g_1849\00", align 1
@.str.48 = private unnamed_addr constant [10 x i8] c"g_1978[i]\00", align 1
@g_1979 = internal unnamed_addr global i32 -1439803115, align 4
@.str.49 = private unnamed_addr constant [7 x i8] c"g_1979\00", align 1
@g_1980 = internal unnamed_addr global i1 false, align 4
@.str.50 = private unnamed_addr constant [7 x i8] c"g_1980\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"g_1981\00", align 1
@g_1982 = internal unnamed_addr constant [4 x [3 x i32]] [[3 x i32] [i32 704054870, i32 704054870, i32 704054870], [3 x i32] [i32 -10, i32 -10, i32 -10], [3 x i32] [i32 704054870, i32 704054870, i32 704054870], [3 x i32] [i32 -10, i32 -10, i32 -10]], align 16
@.str.52 = private unnamed_addr constant [13 x i8] c"g_1982[i][j]\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"g_1983\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"g_1984\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"g_1985\00", align 1
@.str.56 = private unnamed_addr constant [10 x i8] c"g_1986[i]\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"g_1987\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"g_1988\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"g_1989\00", align 1
@.str.60 = private unnamed_addr constant [19 x i8] c"g_2205[i][j][k].f0\00", align 1
@.str.61 = private unnamed_addr constant [19 x i8] c"g_2205[i][j][k].f1\00", align 1
@.str.62 = private unnamed_addr constant [19 x i8] c"g_2205[i][j][k].f2\00", align 1
@.str.63 = private unnamed_addr constant [19 x i8] c"g_2205[i][j][k].f3\00", align 1
@.str.64 = private unnamed_addr constant [19 x i8] c"g_2205[i][j][k].f4\00", align 1
@.str.65 = private unnamed_addr constant [19 x i8] c"g_2205[i][j][k].f5\00", align 1
@.str.66 = private unnamed_addr constant [19 x i8] c"g_2205[i][j][k].f6\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"g_2426\00", align 1
@g_2432 = internal unnamed_addr global i16 15231, align 2
@.str.68 = private unnamed_addr constant [7 x i8] c"g_2432\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"g_2506\00", align 1
@g_2507 = internal global i32 0, align 4
@.str.70 = private unnamed_addr constant [7 x i8] c"g_2507\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"g_2639\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"g_2695\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"g_2713\00", align 1
@.str.74 = private unnamed_addr constant [7 x i8] c"g_2731\00", align 1
@g_2769 = internal global i32 -2049074211, align 4
@.str.75 = private unnamed_addr constant [7 x i8] c"g_2769\00", align 1
@.str.76 = private unnamed_addr constant [7 x i8] c"g_2835\00", align 1
@.str.77 = private unnamed_addr constant [7 x i8] c"g_2866\00", align 1
@g_3070 = internal unnamed_addr global [2 x [1 x i32]] [[1 x i32] [i32 -1675168], [1 x i32] [i32 -1675168]], align 4
@.str.78 = private unnamed_addr constant [13 x i8] c"g_3070[i][j]\00", align 1
@g_3086 = internal unnamed_addr global [4 x i8] zeroinitializer, align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"g_3086[i]\00", align 1
@g_3323 = internal global i32 -801526002, align 4
@.str.80 = private unnamed_addr constant [7 x i8] c"g_3323\00", align 1
@.str.81 = private unnamed_addr constant [7 x i8] c"g_3397\00", align 1
@.str.82 = private unnamed_addr constant [7 x i8] c"g_3451\00", align 1
@.str.83 = private unnamed_addr constant [7 x i8] c"g_3481\00", align 1
@.str.84 = private unnamed_addr constant [7 x i8] c"g_3482\00", align 1
@g_3527 = internal global i16 0, align 2
@.str.85 = private unnamed_addr constant [7 x i8] c"g_3527\00", align 1
@g_3599 = internal global i32 545356805, align 4
@.str.86 = private unnamed_addr constant [7 x i8] c"g_3599\00", align 1
@g_3636 = internal unnamed_addr global i64 1, align 8
@.str.87 = private unnamed_addr constant [7 x i8] c"g_3636\00", align 1
@.str.88 = private unnamed_addr constant [16 x i8] c"g_3680[i][j][k]\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"g_3748\00", align 1
@.str.90 = private unnamed_addr constant [7 x i8] c"g_3801\00", align 1
@.str.91 = private unnamed_addr constant [10 x i8] c"g_3978.f0\00", align 1
@.str.92 = private unnamed_addr constant [10 x i8] c"g_3978.f1\00", align 1
@.str.93 = private unnamed_addr constant [10 x i8] c"g_3978.f2\00", align 1
@.str.94 = private unnamed_addr constant [10 x i8] c"g_3978.f3\00", align 1
@.str.95 = private unnamed_addr constant [10 x i8] c"g_3978.f4\00", align 1
@.str.96 = private unnamed_addr constant [10 x i8] c"g_3978.f5\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"g_3978.f6\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"g_4152.f0\00", align 1
@.str.99 = private unnamed_addr constant [10 x i8] c"g_4152.f1\00", align 1
@.str.100 = private unnamed_addr constant [10 x i8] c"g_4152.f2\00", align 1
@.str.101 = private unnamed_addr constant [10 x i8] c"g_4152.f3\00", align 1
@.str.102 = private unnamed_addr constant [10 x i8] c"g_4152.f4\00", align 1
@.str.103 = private unnamed_addr constant [10 x i8] c"g_4152.f5\00", align 1
@.str.104 = private unnamed_addr constant [10 x i8] c"g_4152.f6\00", align 1
@.str.105 = private unnamed_addr constant [7 x i8] c"g_4177\00", align 1
@.str.106 = private unnamed_addr constant [7 x i8] c"g_4422\00", align 1
@g_4486 = internal global i64 4, align 8
@.str.107 = private unnamed_addr constant [7 x i8] c"g_4486\00", align 1
@g_4579 = internal global i16 -7, align 2
@.str.108 = private unnamed_addr constant [7 x i8] c"g_4579\00", align 1
@g_4643 = internal global [10 x i8] c"\01\01\04\01\01\04\01\01\04\01", align 1
@.str.109 = private unnamed_addr constant [10 x i8] c"g_4643[i]\00", align 1
@g_4883 = internal global i32 -4, align 4
@.str.110 = private unnamed_addr constant [7 x i8] c"g_4883\00", align 1
@.str.111 = private unnamed_addr constant [10 x i8] c"g_5161[i]\00", align 1
@g_5301 = internal global i32 1, align 4
@.str.112 = private unnamed_addr constant [7 x i8] c"g_5301\00", align 1
@g_5343 = internal global i32 -477379510, align 4
@.str.113 = private unnamed_addr constant [7 x i8] c"g_5343\00", align 1
@.str.114 = private unnamed_addr constant [7 x i8] c"g_5455\00", align 1
@.str.115 = private unnamed_addr constant [7 x i8] c"g_5493\00", align 1
@g_5500 = internal global i32 -3, align 4
@.str.116 = private unnamed_addr constant [7 x i8] c"g_5500\00", align 1
@.str.117 = private unnamed_addr constant [7 x i8] c"g_5645\00", align 1
@g_5672 = internal unnamed_addr constant [1 x [9 x [3 x i8]]] [[9 x [3 x i8]] [[3 x i8] c"\01\01\01", [3 x i8] c"888", [3 x i8] c"\01\01\01", [3 x i8] c"888", [3 x i8] c"\01\01\01", [3 x i8] c"888", [3 x i8] c"\01\01\01", [3 x i8] c"888", [3 x i8] c"\01\01\01"]], align 16
@.str.118 = private unnamed_addr constant [16 x i8] c"g_5672[i][j][k]\00", align 1
@.str.119 = private unnamed_addr constant [10 x i8] c"g_5753.f0\00", align 1
@.str.120 = private unnamed_addr constant [10 x i8] c"g_5753.f1\00", align 1
@.str.121 = private unnamed_addr constant [10 x i8] c"g_5753.f2\00", align 1
@.str.122 = private unnamed_addr constant [10 x i8] c"g_5753.f3\00", align 1
@.str.123 = private unnamed_addr constant [10 x i8] c"g_5753.f4\00", align 1
@.str.124 = private unnamed_addr constant [10 x i8] c"g_5753.f5\00", align 1
@.str.125 = private unnamed_addr constant [10 x i8] c"g_5753.f6\00", align 1
@.str.126 = private unnamed_addr constant [7 x i8] c"g_5817\00", align 1
@.str.127 = private unnamed_addr constant [7 x i8] c"g_5837\00", align 1
@.str.128 = private unnamed_addr constant [7 x i8] c"g_5856\00", align 1
@.str.129 = private unnamed_addr constant [7 x i8] c"g_5895\00", align 1
@.str.130 = private unnamed_addr constant [7 x i8] c"g_5935\00", align 1
@.str.131 = private unnamed_addr constant [7 x i8] c"g_5959\00", align 1
@.str.132 = private unnamed_addr constant [7 x i8] c"g_6003\00", align 1
@.str.133 = private unnamed_addr constant [7 x i8] c"g_6020\00", align 1
@.str.134 = private unnamed_addr constant [7 x i8] c"g_6032\00", align 1
@g_6221 = internal global i32 0, align 4
@.str.135 = private unnamed_addr constant [7 x i8] c"g_6221\00", align 1
@g_6404 = internal global i8 -36, align 1
@.str.136 = private unnamed_addr constant [7 x i8] c"g_6404\00", align 1
@g_6503 = internal global [5 x i16] [i16 -28157, i16 -28157, i16 -28157, i16 -28157, i16 -28157], align 2
@.str.137 = private unnamed_addr constant [10 x i8] c"g_6503[i]\00", align 1
@g_6516 = internal global [5 x i16] [i16 1, i16 1, i16 1, i16 1, i16 1], align 2
@.str.138 = private unnamed_addr constant [10 x i8] c"g_6516[i]\00", align 1
@.str.139 = private unnamed_addr constant [7 x i8] c"g_6591\00", align 1
@crc32_context = internal unnamed_addr global i32 -1, align 4
@crc32_tab = internal unnamed_addr global [256 x i32] zeroinitializer, align 16
@g_566 = internal global ptr @g_165, align 8
@g_1769 = internal global ptr getelementptr inbounds nuw (i8, ptr @g_390, i64 30), align 8
@g_2036 = internal global ptr @g_932, align 8
@g_1768 = internal unnamed_addr global ptr @g_1769, align 8
@g_2329 = internal global ptr @g_484, align 8
@g_964 = internal global ptr @g_534, align 8
@g_79 = internal global ptr @g_80, align 8
@g_3133 = internal global ptr @g_2282, align 8
@g_932 = internal global ptr @g_933, align 8
@g_403 = internal global ptr @g_165, align 8
@g_484 = internal global ptr @g_485, align 8
@g_2064 = internal global ptr getelementptr inbounds nuw (i8, ptr @g_133, i64 32), align 8
@g_165 = internal global ptr @g_166, align 8
@g_2185 = internal unnamed_addr global [4 x ptr] [ptr getelementptr (i8, ptr @g_784, i64 472), ptr getelementptr (i8, ptr @g_784, i64 472), ptr getelementptr (i8, ptr @g_784, i64 472), ptr getelementptr (i8, ptr @g_784, i64 472)], align 16
@g_784 = internal global [9 x [8 x [3 x ptr]]] [[8 x [3 x ptr]] [[3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] zeroinitializer], [8 x [3 x ptr]] [[3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] [ptr @g_10, ptr null, ptr null], [3 x ptr] [ptr null, ptr null, ptr @g_10]], [8 x [3 x ptr]] [[3 x ptr] [ptr null, ptr @g_10, ptr null], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr null], [3 x ptr] [ptr @g_10, ptr null, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10]], [8 x [3 x ptr]] [[3 x ptr] [ptr @g_10, ptr null, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr null], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10]], [8 x [3 x ptr]] [[3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null]], [8 x [3 x ptr]] [[3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr null], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr null, ptr @g_10]], [8 x [3 x ptr]] [[3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] zeroinitializer, [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10]], [8 x [3 x ptr]] [[3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10]], [8 x [3 x ptr]] [[3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr null, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr @g_10], [3 x ptr] [ptr @g_10, ptr @g_10, ptr null]]], align 16
@g_265 = internal unnamed_addr global ptr null, align 8
@g_3132 = internal global ptr @g_3133, align 8
@g_1320 = internal global ptr @g_566, align 8
@g_4278 = internal global ptr @g_165, align 8
@g_3660 = internal global ptr getelementptr inbounds nuw (i8, ptr @g_3661, i64 40), align 8
@g_3661 = internal global [10 x ptr] [ptr null, ptr @g_1769, ptr null, ptr null, ptr @g_1769, ptr null, ptr null, ptr @g_1769, ptr null, ptr null], align 16
@g_2282 = internal global ptr null, align 8
@g_3131 = internal unnamed_addr global ptr @g_3132, align 8
@g_2037 = internal global ptr @g_2036, align 8
@__const.func_39.l_3921 = private unnamed_addr constant [5 x [7 x i32]] [[7 x i32] [i32 0, i32 0, i32 -1928501389, i32 1514914438, i32 -1928501389, i32 0, i32 0], [7 x i32] [i32 -366689626, i32 -5, i32 820481086, i32 -5, i32 -366689626, i32 -366689626, i32 -5], [7 x i32] [i32 -1765450838, i32 -1272010873, i32 -1765450838, i32 -1928501389, i32 -1928501389, i32 -1765450838, i32 -1272010873], [7 x i32] [i32 -5, i32 374871790, i32 820481086, i32 820481086, i32 374871790, i32 -5, i32 374871790], [7 x i32] [i32 -1765450838, i32 -1928501389, i32 -1928501389, i32 -1765450838, i32 -1272010873, i32 -1765450838, i32 -1928501389]], align 16
@__const.func_102.l_1739 = private unnamed_addr constant [4 x [5 x [9 x i32]]] [[5 x [9 x i32]] [[9 x i32] [i32 0, i32 1, i32 1, i32 -179185250, i32 -1, i32 -9, i32 -1697763343, i32 0, i32 0], [9 x i32] [i32 990441382, i32 -227804057, i32 -3, i32 -1155492333, i32 -1924411319, i32 -3, i32 -9, i32 1, i32 828554967], [9 x i32] [i32 0, i32 -1, i32 -1697763343, i32 -8, i32 -1924411319, i32 -2142035340, i32 -1811236817, i32 0, i32 -179185250], [9 x i32] [i32 3, i32 4, i32 1903734618, i32 990441382, i32 -1, i32 1, i32 3, i32 1677954917, i32 828554967], [9 x i32] [i32 -2142035340, i32 0, i32 3, i32 990441382, i32 0, i32 -1155492333, i32 0, i32 -1, i32 0]], [5 x [9 x i32]] [[9 x i32] [i32 0, i32 -10, i32 -8, i32 -8, i32 -10, i32 0, i32 828554967, i32 1677954917, i32 3], [9 x i32] [i32 1903734618, i32 1, i32 -8, i32 -1155492333, i32 1677954917, i32 -1811236817, i32 -179185250, i32 1903734618, i32 -480442863], [9 x i32] [i32 -1284151819, i32 1903734618, i32 -977221251, i32 1946179303, i32 1, i32 0, i32 -1, i32 828554967, i32 921887456], [9 x i32] [i32 -8, i32 1903734618, i32 0, i32 921887456, i32 431191360, i32 8, i32 1, i32 -9, i32 0], [9 x i32] [i32 -1, i32 431191360, i32 0, i32 -1, i32 1, i32 0, i32 -977221251, i32 -179185250, i32 1]], [5 x [9 x i32]] [[9 x i32] [i32 -1, i32 -1697763343, i32 891196600, i32 0, i32 -1155492333, i32 -480442863, i32 -480442863, i32 -1155492333, i32 0], [9 x i32] [i32 -8, i32 -9, i32 -8, i32 891196600, i32 1, i32 1, i32 921887456, i32 -8, i32 0], [9 x i32] [i32 -1284151819, i32 -1811236817, i32 1, i32 -977221251, i32 431191360, i32 1, i32 0, i32 990441382, i32 1], [9 x i32] [i32 0, i32 3, i32 8, i32 891196600, i32 1, i32 -8, i32 1, i32 990441382, i32 0], [9 x i32] [i32 1, i32 0, i32 1, i32 0, i32 -3, i32 616482181, i32 0, i32 -8, i32 921887456]], [5 x [9 x i32]] [[9 x i32] [i32 616482181, i32 828554967, i32 8, i32 -1, i32 -1697763343, i32 891196600, i32 0, i32 -1155492333, i32 -480442863], [9 x i32] [i32 -977221251, i32 -179185250, i32 1, i32 921887456, i32 1903734618, i32 921887456, i32 1, i32 -179185250, i32 -977221251], [9 x i32] [i32 -7939944, i32 828554967, i32 -8, i32 1946179303, i32 3, i32 921887456, i32 0, i32 -9, i32 1], [9 x i32] [i32 1774300624, i32 0, i32 891196600, i32 1, i32 -8, i32 891196600, i32 921887456, i32 828554967, i32 -1], [9 x i32] [i32 -7939944, i32 3, i32 0, i32 -1284151819, i32 -8, i32 616482181, i32 -480442863, i32 1903734618, i32 1946179303]]], align 16
@g_2328 = internal global [3 x ptr] [ptr @g_2329, ptr @g_2329, ptr @g_2329], align 16
@g_2063 = internal global [3 x [1 x ptr]] [[1 x ptr] [ptr @g_2064], [1 x ptr] [ptr @g_2064], [1 x ptr] [ptr @g_2064]], align 16
@g_963 = internal global [4 x [5 x ptr]] [[5 x ptr] [ptr @g_232, ptr @g_174, ptr @g_174, ptr @g_232, ptr @g_174], [5 x ptr] [ptr @g_232, ptr @g_232, ptr getelementptr (i8, ptr @g_174, i64 16), ptr @g_232, ptr @g_232], [5 x ptr] [ptr @g_174, ptr @g_232, ptr @g_174, ptr @g_174, ptr @g_232], [5 x ptr] [ptr @g_232, ptr @g_174, ptr @g_174, ptr @g_232, ptr @g_174]], align 16
@.str.234 = private unnamed_addr constant [36 x i8] c"...checksum after hashing %s : %lX\0A\00", align 1
@g_10 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 -1, i8 -125, i8 -77, i8 2, i8 0, i8 -6, i8 122, i8 3, i8 0, i8 0, i8 32, i8 0, i8 -64, i8 -4, i8 -25, i8 3, i8 0 }, align 16
@g_2205 = internal unnamed_addr constant [7 x [7 x [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]]] [[7 x [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]] [[5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 127, i8 0, i8 -28, i8 -106, i8 1, i8 0, i8 -60, i8 -94, i8 19, i8 0, i8 16, i8 54, i8 0, i8 -88, i8 4, i8 -96, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 71, i8 -1, i8 27, i8 117, i8 0, i8 0, i8 -6, i8 25, i8 15, i8 0, i8 -16, i8 47, i8 0, i8 72, i8 -1, i8 -57, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -35, i8 1, i8 -8, i8 76, i8 0, i8 0, i8 56, i8 -39, i8 8, i8 0, i8 -64, i8 17, i8 0, i8 -64, i8 1, i8 -68, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -36, i8 1, i8 112, i8 57, i8 2, i8 0, i8 -126, i8 -90, i8 12, i8 0, i8 80, i8 74, i8 0, i8 112, i8 0, i8 20, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }]], [7 x [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]] [[5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -35, i8 1, i8 -8, i8 76, i8 0, i8 0, i8 56, i8 -39, i8 8, i8 0, i8 -64, i8 17, i8 0, i8 -64, i8 1, i8 -68, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 71, i8 -1, i8 27, i8 117, i8 0, i8 0, i8 -6, i8 25, i8 15, i8 0, i8 -16, i8 47, i8 0, i8 72, i8 -1, i8 -57, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 127, i8 0, i8 -28, i8 -106, i8 1, i8 0, i8 -60, i8 -94, i8 19, i8 0, i8 16, i8 54, i8 0, i8 -88, i8 4, i8 -96, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 10, i8 -1, i8 -61, i8 41, i8 2, i8 0, i8 58, i8 -45, i8 10, i8 0, i8 72, i8 80, i8 0, i8 104, i8 4, i8 -80, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -67, i8 -2, i8 19, i8 -84, i8 2, i8 0, i8 -58, i8 -68, i8 21, i8 0, i8 -40, i8 80, i8 0, i8 96, i8 -2, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 71, i8 -1, i8 27, i8 117, i8 0, i8 0, i8 -6, i8 25, i8 15, i8 0, i8 -16, i8 47, i8 0, i8 72, i8 -1, i8 -57, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }]], [7 x [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]] [[5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -40, i8 -2, i8 99, i8 -60, i8 2, i8 0, i8 -120, i8 -57, i8 10, i8 0, i8 56, i8 104, i8 0, i8 56, i8 -5, i8 27, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 127, i8 0, i8 -28, i8 -106, i8 1, i8 0, i8 -60, i8 -94, i8 19, i8 0, i8 16, i8 54, i8 0, i8 -88, i8 4, i8 -96, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -67, i8 -2, i8 19, i8 -84, i8 2, i8 0, i8 -58, i8 -68, i8 21, i8 0, i8 -40, i8 80, i8 0, i8 96, i8 -2, i8 23, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -36, i8 1, i8 112, i8 57, i8 2, i8 0, i8 -126, i8 -90, i8 12, i8 0, i8 80, i8 74, i8 0, i8 112, i8 0, i8 20, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -67, i8 -2, i8 19, i8 -84, i8 2, i8 0, i8 -58, i8 -68, i8 21, i8 0, i8 -40, i8 80, i8 0, i8 96, i8 -2, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 127, i8 0, i8 -28, i8 -106, i8 1, i8 0, i8 -60, i8 -94, i8 19, i8 0, i8 16, i8 54, i8 0, i8 -88, i8 4, i8 -96, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -40, i8 -2, i8 99, i8 -60, i8 2, i8 0, i8 -120, i8 -57, i8 10, i8 0, i8 56, i8 104, i8 0, i8 56, i8 -5, i8 27, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }]], [7 x [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]] [[5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 71, i8 -1, i8 27, i8 117, i8 0, i8 0, i8 -6, i8 25, i8 15, i8 0, i8 -16, i8 47, i8 0, i8 72, i8 -1, i8 -57, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -67, i8 -2, i8 19, i8 -84, i8 2, i8 0, i8 -58, i8 -68, i8 21, i8 0, i8 -40, i8 80, i8 0, i8 96, i8 -2, i8 23, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 10, i8 -1, i8 -61, i8 41, i8 2, i8 0, i8 58, i8 -45, i8 10, i8 0, i8 72, i8 80, i8 0, i8 104, i8 4, i8 -80, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 127, i8 0, i8 -28, i8 -106, i8 1, i8 0, i8 -60, i8 -94, i8 19, i8 0, i8 16, i8 54, i8 0, i8 -88, i8 4, i8 -96, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 71, i8 -1, i8 27, i8 117, i8 0, i8 0, i8 -6, i8 25, i8 15, i8 0, i8 -16, i8 47, i8 0, i8 72, i8 -1, i8 -57, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -35, i8 1, i8 -8, i8 76, i8 0, i8 0, i8 56, i8 -39, i8 8, i8 0, i8 -64, i8 17, i8 0, i8 -64, i8 1, i8 -68, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }]], [7 x [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]] [[5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -36, i8 1, i8 112, i8 57, i8 2, i8 0, i8 -126, i8 -90, i8 12, i8 0, i8 80, i8 74, i8 0, i8 112, i8 0, i8 20, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -75, i8 1, i8 16, i8 -87, i8 0, i8 0, i8 -2, i8 68, i8 12, i8 0, i8 -96, i8 26, i8 0, i8 16, i8 -1, i8 -45, i8 -5, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -35, i8 1, i8 -8, i8 76, i8 0, i8 0, i8 56, i8 -39, i8 8, i8 0, i8 -64, i8 17, i8 0, i8 -64, i8 1, i8 -68, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -87, i8 -1, i8 79, i8 100, i8 0, i8 0, i8 -70, i8 -119, i8 13, i8 0, i8 -40, i8 37, i8 0, i8 -80, i8 2, i8 60, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 71, i8 -1, i8 27, i8 117, i8 0, i8 0, i8 -6, i8 25, i8 15, i8 0, i8 -16, i8 47, i8 0, i8 72, i8 -1, i8 -57, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 15, i8 0, i8 -4, i8 6, i8 2, i8 0, i8 -8, i8 90, i8 16, i8 0, i8 72, i8 26, i8 0, i8 -120, i8 -6, i8 -85, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -109, i8 -1, i8 -117, i8 105, i8 1, i8 0, i8 -56, i8 -33, i8 2, i8 0, i8 -88, i8 45, i8 0, i8 -96, i8 -1, i8 43, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 127, i8 0, i8 -28, i8 -106, i8 1, i8 0, i8 -60, i8 -94, i8 19, i8 0, i8 16, i8 54, i8 0, i8 -88, i8 4, i8 -96, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -98, i8 -2, i8 -113, i8 72, i8 1, i8 0, i8 64, i8 106, i8 2, i8 0, i8 -80, i8 48, i8 0, i8 56, i8 0, i8 116, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }]], [7 x [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]] [[5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 121, i8 1, i8 -124, i8 -108, i8 2, i8 0, i8 -70, i8 66, i8 21, i8 0, i8 -128, i8 11, i8 0, i8 0, i8 3, i8 -64, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -40, i8 -2, i8 99, i8 -60, i8 2, i8 0, i8 -120, i8 -57, i8 10, i8 0, i8 56, i8 104, i8 0, i8 56, i8 -5, i8 27, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -40, i8 -2, i8 99, i8 -60, i8 2, i8 0, i8 -120, i8 -57, i8 10, i8 0, i8 56, i8 104, i8 0, i8 56, i8 -5, i8 27, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -122, i8 -1, i8 75, i8 72, i8 2, i8 0, i8 -62, i8 94, i8 9, i8 0, i8 -72, i8 107, i8 0, i8 -88, i8 3, i8 16, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -36, i8 1, i8 112, i8 57, i8 2, i8 0, i8 -126, i8 -90, i8 12, i8 0, i8 80, i8 74, i8 0, i8 112, i8 0, i8 20, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -4, i8 1, i8 -68, i8 -81, i8 1, i8 0, i8 62, i8 -62, i8 0, i8 0, i8 -24, i8 97, i8 0, i8 -64, i8 -6, i8 23, i8 3, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -67, i8 -2, i8 19, i8 -84, i8 2, i8 0, i8 -58, i8 -68, i8 21, i8 0, i8 -40, i8 80, i8 0, i8 96, i8 -2, i8 23, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 10, i8 -1, i8 -61, i8 41, i8 2, i8 0, i8 58, i8 -45, i8 10, i8 0, i8 72, i8 80, i8 0, i8 104, i8 4, i8 -80, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 10, i8 -1, i8 -61, i8 41, i8 2, i8 0, i8 58, i8 -45, i8 10, i8 0, i8 72, i8 80, i8 0, i8 104, i8 4, i8 -80, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -28, i8 0, i8 -72, i8 -2, i8 0, i8 0, i8 -6, i8 -79, i8 13, i8 0, i8 -72, i8 70, i8 0, i8 -72, i8 -2, i8 55, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 86, i8 1, i8 108, i8 87, i8 0, i8 0, i8 126, i8 34, i8 20, i8 0, i8 72, i8 91, i8 0, i8 0, i8 0, i8 60, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -35, i8 1, i8 -8, i8 76, i8 0, i8 0, i8 56, i8 -39, i8 8, i8 0, i8 -64, i8 17, i8 0, i8 -64, i8 1, i8 -68, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 121, i8 1, i8 -124, i8 -108, i8 2, i8 0, i8 -70, i8 66, i8 21, i8 0, i8 -128, i8 11, i8 0, i8 0, i8 3, i8 -64, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 65, i8 -2, i8 -113, i8 34, i8 2, i8 0, i8 -66, i8 46, i8 8, i8 0, i8 120, i8 62, i8 0, i8 -96, i8 -6, i8 -41, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }]], [7 x [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }]] [[5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 121, i8 1, i8 -124, i8 -108, i8 2, i8 0, i8 -70, i8 66, i8 21, i8 0, i8 -128, i8 11, i8 0, i8 0, i8 3, i8 -64, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -35, i8 1, i8 -8, i8 76, i8 0, i8 0, i8 56, i8 -39, i8 8, i8 0, i8 -64, i8 17, i8 0, i8 -64, i8 1, i8 -68, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 86, i8 1, i8 108, i8 87, i8 0, i8 0, i8 126, i8 34, i8 20, i8 0, i8 72, i8 91, i8 0, i8 0, i8 0, i8 60, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -28, i8 0, i8 -72, i8 -2, i8 0, i8 0, i8 -6, i8 -79, i8 13, i8 0, i8 -72, i8 70, i8 0, i8 -72, i8 -2, i8 55, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 10, i8 -1, i8 -61, i8 41, i8 2, i8 0, i8 58, i8 -45, i8 10, i8 0, i8 72, i8 80, i8 0, i8 104, i8 4, i8 -80, i8 -2, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 10, i8 -1, i8 -61, i8 41, i8 2, i8 0, i8 58, i8 -45, i8 10, i8 0, i8 72, i8 80, i8 0, i8 104, i8 4, i8 -80, i8 -2, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -67, i8 -2, i8 19, i8 -84, i8 2, i8 0, i8 -58, i8 -68, i8 21, i8 0, i8 -40, i8 80, i8 0, i8 96, i8 -2, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 0, i8 0, i8 116, i8 -67, i8 2, i8 0, i8 -56, i8 24, i8 20, i8 0, i8 112, i8 64, i8 0, i8 0, i8 -3, i8 -121, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 57, i8 -2, i8 -57, i8 57, i8 1, i8 0, i8 70, i8 125, i8 4, i8 0, i8 64, i8 95, i8 0, i8 64, i8 -1, i8 -109, i8 -6, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -4, i8 1, i8 -68, i8 -81, i8 1, i8 0, i8 62, i8 -62, i8 0, i8 0, i8 -24, i8 97, i8 0, i8 -64, i8 -6, i8 23, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -36, i8 1, i8 112, i8 57, i8 2, i8 0, i8 -126, i8 -90, i8 12, i8 0, i8 80, i8 74, i8 0, i8 112, i8 0, i8 20, i8 3, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -122, i8 -1, i8 75, i8 72, i8 2, i8 0, i8 -62, i8 94, i8 9, i8 0, i8 -72, i8 107, i8 0, i8 -88, i8 3, i8 16, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -45, i8 1, i8 96, i8 21, i8 1, i8 0, i8 6, i8 42, i8 14, i8 0, i8 -40, i8 75, i8 0, i8 -32, i8 -3, i8 103, i8 0, i8 0 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -40, i8 -2, i8 99, i8 -60, i8 2, i8 0, i8 -120, i8 -57, i8 10, i8 0, i8 56, i8 104, i8 0, i8 56, i8 -5, i8 27, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -40, i8 -2, i8 99, i8 -60, i8 2, i8 0, i8 -120, i8 -57, i8 10, i8 0, i8 56, i8 104, i8 0, i8 56, i8 -5, i8 27, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 121, i8 1, i8 -124, i8 -108, i8 2, i8 0, i8 -70, i8 66, i8 21, i8 0, i8 -128, i8 11, i8 0, i8 0, i8 3, i8 -64, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -92, i8 -2, i8 63, i8 36, i8 0, i8 0, i8 60, i8 -31, i8 8, i8 0, i8 -120, i8 24, i8 0, i8 -120, i8 -5, i8 -37, i8 -1, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -89, i8 0, i8 60, i8 -78, i8 2, i8 0, i8 -60, i8 43, i8 5, i8 0, i8 48, i8 68, i8 0, i8 32, i8 -4, i8 23, i8 -4, i8 7 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -31, i8 0, i8 -20, i8 -32, i8 0, i8 0, i8 6, i8 -6, i8 0, i8 0, i8 104, i8 4, i8 0, i8 104, i8 -5, i8 -61, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 42, i8 1, i8 52, i8 55, i8 1, i8 0, i8 64, i8 -89, i8 13, i8 0, i8 -64, i8 4, i8 0, i8 -16, i8 -4, i8 119, i8 -4, i8 7 }], [5 x { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }] [{ i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 86, i8 1, i8 108, i8 87, i8 0, i8 0, i8 126, i8 34, i8 20, i8 0, i8 72, i8 91, i8 0, i8 0, i8 0, i8 60, i8 1, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 40, i8 0, i8 92, i8 -17, i8 0, i8 0, i8 -124, i8 44, i8 1, i8 0, i8 64, i8 34, i8 0, i8 120, i8 -5, i8 -97, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -35, i8 1, i8 -8, i8 76, i8 0, i8 0, i8 56, i8 -39, i8 8, i8 0, i8 -64, i8 17, i8 0, i8 -64, i8 1, i8 -68, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -40, i8 -2, i8 99, i8 -60, i8 2, i8 0, i8 -120, i8 -57, i8 10, i8 0, i8 56, i8 104, i8 0, i8 56, i8 -5, i8 27, i8 0, i8 0 }, { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 -67, i8 -2, i8 19, i8 -84, i8 2, i8 0, i8 -58, i8 -68, i8 21, i8 0, i8 -40, i8 80, i8 0, i8 96, i8 -2, i8 23, i8 -4, i8 7 }]]], align 16
@g_5753 = internal global { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 } { i8 106, i8 0, i8 8, i8 98, i8 2, i8 0, i8 -128, i8 110, i8 13, i8 0, i8 -48, i8 44, i8 0, i8 -64, i8 2, i8 80, i8 -4, i8 7 }, align 16
@.str.240 = private unnamed_addr constant [15 x i8] c"checksum = %X\0A\00", align 1

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readonly captures(none) %argv) local_unnamed_addr #0 {
entry:
  %l_4762.i.i = alloca i32, align 4
  %l_4881.i.i = alloca i32, align 4
  %l_4882.i.i = alloca i32, align 4
  %l_4788.i.i = alloca i32, align 4
  %l_4696.i.i = alloca [4 x i64], align 16
  %l_2517.i213.i.i = alloca [3 x [2 x ptr]], align 16
  %l_4062.i.i.i = alloca ptr, align 8
  %p_40.addr.i.i.i = alloca ptr, align 8
  %l_3532.i.i.i = alloca [5 x i32], align 16
  %l_3129.i.i.i = alloca [2 x ptr], align 16
  %l_3921.i.i.i = alloca [5 x [7 x i32]], align 16
  %l_2517.i.i.i = alloca [3 x [2 x ptr]], align 16
  %l_1739.i.i.i.i = alloca [4 x [5 x [9 x i32]]], align 16
  %l_1766.i.i.i.i = alloca ptr, align 8
  %l_48.i.i = alloca [10 x ptr], align 16
  %l_4136.i.i = alloca [9 x [4 x [1 x i32]]], align 16
  %cmp = icmp eq i32 %argc, 2
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %argv, i64 8
  %0 = load ptr, ptr %arrayidx, align 8, !tbaa !5
  %1 = load i8, ptr %0, align 1
  %.not = icmp eq i8 %1, 49
  br i1 %.not, label %sub_1, label %land.lhs.true.tail

sub_1:                                            ; preds = %land.lhs.true
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 1
  %3 = load i8, ptr %2, align 1
  %4 = icmp ne i8 %3, 0
  br label %land.lhs.true.tail

land.lhs.true.tail:                               ; preds = %land.lhs.true, %sub_1
  %cmp1 = phi i1 [ true, %land.lhs.true ], [ %4, %sub_1 ]
  %not.cmp1 = xor i1 %cmp1, true
  %spec.select358 = zext i1 %not.cmp1 to i32
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.tail, %entry
  %tobool748.not = phi i1 [ true, %entry ], [ %cmp1, %land.lhs.true.tail ]
  %print_hash_value.0 = phi i32 [ 0, %entry ], [ %spec.select358, %land.lhs.true.tail ]
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i, %if.end
  %indvars.iv.i = phi i64 [ 0, %if.end ], [ %indvars.iv.next.i, %for.end.i ]
  %5 = trunc nuw nsw i64 %indvars.iv.i to i32
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i, %for.cond1.preheader.i
  %j.09.i = phi i32 [ 8, %for.cond1.preheader.i ], [ %dec.i, %for.body3.i ]
  %crc.08.i = phi i32 [ %5, %for.cond1.preheader.i ], [ %crc.1.i, %for.body3.i ]
  %and.i = and i32 %crc.08.i, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  %shr.i = lshr i32 %crc.08.i, 1
  %xor.i = xor i32 %shr.i, -306674912
  %crc.1.i = select i1 %tobool.not.i, i32 %shr.i, i32 %xor.i
  %dec.i = add nsw i32 %j.09.i, -1
  %cmp2.i = icmp samesign ugt i32 %j.09.i, 1
  br i1 %cmp2.i, label %for.body3.i, label %for.end.i, !llvm.loop !10

for.end.i:                                        ; preds = %for.body3.i
  %arrayidx.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %indvars.iv.i
  store i32 %crc.1.i, ptr %arrayidx.i, align 4, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %crc32_gentab.exit, label %for.cond1.preheader.i, !llvm.loop !14

crc32_gentab.exit:                                ; preds = %for.end.i
  store i16 -165, ptr getelementptr inbounds nuw (i8, ptr @g_20, i64 10), align 2, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %l_48.i.i) #4
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %crc32_gentab.exit
  %index = phi i64 [ 0, %crc32_gentab.exit ], [ %index.next, %vector.body ]
  %6 = getelementptr inbounds nuw [10 x ptr], ptr %l_48.i.i, i64 0, i64 %index
  store <2 x ptr> <ptr @g_10, ptr @g_10>, ptr %6, align 16, !tbaa !17
  %index.next = add nuw i64 %index, 2
  %7 = icmp eq i64 %index.next, 10
  br i1 %7, label %for.cond5.preheader.i.i.i, label %vector.body, !llvm.loop !19

for.cond5.preheader.i.i.i:                        ; preds = %vector.body, %for.inc26.i.i.i
  %indvars.iv35.i.i.i = phi i64 [ %indvars.iv.next36.i.i.i, %for.inc26.i.i.i ], [ 0, %vector.body ]
  br label %pred.store.if

for.cond29.preheader.i.i.i:                       ; preds = %for.inc26.i.i.i
  %indvars.iv9.i.sroa.gep238.i.i = getelementptr inbounds nuw i8, ptr %l_3129.i.i.i, i64 8
  %arrayidx10.i.i = getelementptr inbounds nuw i8, ptr %l_48.i.i, i64 72
  store i16 10, ptr @g_493, align 2, !tbaa !15
  store i32 3, ptr @g_142, align 4, !tbaa !12
  br label %for.body32.i.i.i

pred.store.if:                                    ; preds = %for.cond5.preheader.i.i.i, %pred.store.if
  %indvars.iv31.i.i.i = phi i64 [ 0, %for.cond5.preheader.i.i.i ], [ %indvars.iv.next32.i.i.i, %pred.store.if ]
  %8 = getelementptr inbounds nuw [7 x [10 x [3 x i32]]], ptr @g_202, i64 0, i64 %indvars.iv35.i.i.i, i64 %indvars.iv31.i.i.i, i64 0
  store i32 7, ptr %8, align 4, !tbaa !12
  %9 = getelementptr inbounds nuw [7 x [10 x [3 x i32]]], ptr @g_202, i64 0, i64 %indvars.iv35.i.i.i, i64 %indvars.iv31.i.i.i, i64 1
  store i32 7, ptr %9, align 4, !tbaa !12
  %10 = getelementptr inbounds nuw [7 x [10 x [3 x i32]]], ptr @g_202, i64 0, i64 %indvars.iv35.i.i.i, i64 %indvars.iv31.i.i.i, i64 2
  store i32 7, ptr %10, align 4, !tbaa !12
  %indvars.iv.next32.i.i.i = add nuw nsw i64 %indvars.iv31.i.i.i, 1
  %exitcond34.not.i.i.i = icmp eq i64 %indvars.iv.next32.i.i.i, 10
  br i1 %exitcond34.not.i.i.i, label %for.inc26.i.i.i, label %pred.store.if, !llvm.loop !22

for.inc26.i.i.i:                                  ; preds = %pred.store.if
  %indvars.iv.next36.i.i.i = add nuw nsw i64 %indvars.iv35.i.i.i, 1
  %exitcond38.not.i.i.i = icmp eq i64 %indvars.iv.next36.i.i.i, 7
  br i1 %exitcond38.not.i.i.i, label %for.cond29.preheader.i.i.i, label %for.cond5.preheader.i.i.i, !llvm.loop !23

for.body32.i.i.i:                                 ; preds = %cleanup.i.i.i, %for.cond29.preheader.i.i.i
  %storemerge1428.i.i.i = phi i32 [ 0, %for.cond29.preheader.i.i.i ], [ %inc213.i.i.i, %cleanup.i.i.i ]
  %11 = load volatile i64, ptr @g_1179, align 8, !tbaa !24
  %12 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  %13 = load i32, ptr %12, align 4, !tbaa !12
  %tobool163.not.i.i.i = icmp eq i32 %13, 0
  br i1 %tobool163.not.i.i.i, label %cleanup.thread.i.i.i, label %cleanup.i.i.i

cleanup.thread.i.i.i:                             ; preds = %for.body32.i.i.i
  store i32 %storemerge1428.i.i.i, ptr @g_701, align 4, !tbaa !12
  %14 = load ptr, ptr @g_566, align 8, !tbaa !28
  %15 = load ptr, ptr %14, align 8, !tbaa !26
  %16 = load i32, ptr %15, align 4, !tbaa !12
  %17 = load volatile ptr, ptr @g_1320, align 8, !tbaa !31
  %18 = load ptr, ptr %17, align 8, !tbaa !28
  %19 = load ptr, ptr %18, align 8, !tbaa !26
  store i32 %16, ptr %19, align 4, !tbaa !12
  br label %func_59.exit.i.i

cleanup.i.i.i:                                    ; preds = %for.body32.i.i.i
  %inc213.i.i.i = add nuw nsw i32 %storemerge1428.i.i.i, 1
  %exitcond39.not.i.i.i = icmp eq i32 %inc213.i.i.i, 49
  br i1 %exitcond39.not.i.i.i, label %for.end214.loopexit.i.i.i, label %for.body32.i.i.i, !llvm.loop !34

for.end214.loopexit.i.i.i:                        ; preds = %cleanup.i.i.i
  store i32 49, ptr @g_701, align 4, !tbaa !12
  br label %func_59.exit.i.i

func_59.exit.i.i:                                 ; preds = %for.end214.loopexit.i.i.i, %cleanup.thread.i.i.i
  %20 = load volatile ptr, ptr @g_2037, align 8, !tbaa !31
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  %22 = load volatile ptr, ptr %21, align 8, !tbaa !26
  %23 = load volatile i32, ptr %22, align 4, !tbaa !12
  %24 = load ptr, ptr %arrayidx10.i.i, align 8, !tbaa !17
  store i32 -30669, ptr getelementptr inbounds nuw (i8, ptr @g_202, i64 796), align 4, !tbaa !12
  store i64 27006, ptr getelementptr inbounds nuw (i8, ptr @g_616, i64 8), align 8, !tbaa !24
  %25 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %26 = load volatile ptr, ptr %25, align 8, !tbaa !37
  %27 = load i64, ptr %26, align 8, !tbaa !24
  %and.i.i.i = and i64 %27, 8260719951057787638
  store i64 %and.i.i.i, ptr %26, align 8, !tbaa !24
  store i64 %and.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_1109, i64 16), align 16, !tbaa !24
  %28 = load volatile ptr, ptr @g_79, align 8, !tbaa !26
  store volatile i32 -22025, ptr %28, align 4, !tbaa !12
  %29 = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @g_156, i64 8), align 8, !tbaa !12
  %dec.i.i.i.i = add i32 %29, -1
  store volatile i32 %dec.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_156, i64 8), align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 720, ptr nonnull %l_1739.i.i.i.i) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(720) %l_1739.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(720) @__const.func_102.l_1739, i64 720, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %l_1766.i.i.i.i) #4
  %30 = load i64, ptr getelementptr inbounds nuw (i8, ptr @g_1109, i64 24), align 8, !tbaa !24
  %dec.i23.i.i.i = add i64 %30, -1
  store i64 %dec.i23.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_1109, i64 24), align 8, !tbaa !24
  %31 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  store i32 69347059, ptr %31, align 4, !tbaa !12
  %arrayidx48.i.i.i.i = getelementptr inbounds nuw i8, ptr %l_1739.i.i.i.i, i64 348
  store i32 -977238401, ptr %arrayidx48.i.i.i.i, align 4, !tbaa !12
  %arrayidx238.i.i.i.i = getelementptr inbounds nuw i8, ptr %l_1739.i.i.i.i, i64 184
  %.promoted5.i.i.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_938, i64 44), align 4
  %32 = load ptr, ptr @g_484, align 8
  %bf.load239.i.i.i.i = load i144, ptr @g_10, align 16
  %bf.load239.fr.i.i.i.i = freeze i144 %bf.load239.i.i.i.i
  %33 = and i144 %bf.load239.fr.i.i.i.i, 562949953159168
  %tobool243.not.i.i.i.i = icmp eq i144 %33, 0
  br i1 %tobool243.not.i.i.i.i, label %lbl_1820.us.i.i.i.i, label %lbl_1820.i.i.i.i

lbl_1820.us.i.i.i.i:                              ; preds = %func_59.exit.i.i
  %tobool.not.us.i.i.i.i = icmp eq i64 %dec.i23.i.i.i, 0
  br i1 %tobool.not.us.i.i.i.i, label %for.end186.us.i.i.i.i, label %for.cond67.preheader.us.i.i.i.i

for.end186.us.i.i.i.i:                            ; preds = %lbl_1820.us.i.i.i.i
  store i32 0, ptr @g_1422, align 4, !tbaa !12
  store i1 true, ptr @g_395, align 8
  %34 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  %35 = load i32, ptr %34, align 4, !tbaa !12
  %tobool197.not.us.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool197.not.us.i.i.i.i, label %if.else223.us.i.i.i.i, label %if.then198.us.i.i.i.i

if.then198.us.i.i.i.i:                            ; preds = %for.end186.us.i.i.i.i
  %36 = load volatile i16, ptr %32, align 2, !tbaa !15
  %xor210.us.i.i.i.i = xor i32 %.promoted5.i.i.i.i, 1
  store i32 %xor210.us.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_938, i64 44), align 4, !tbaa !12
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @g_1109, i64 24), align 8, !tbaa !24
  br label %func_54.exit.i.i

if.else223.us.i.i.i.i:                            ; preds = %for.end186.us.i.i.i.i
  %37 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  br label %func_54.exit.i.i

for.cond67.preheader.us.i.i.i.i:                  ; preds = %lbl_1820.us.i.i.i.i
  store i1 true, ptr @g_526, align 1
  store ptr %l_1766.i.i.i.i, ptr @g_1768, align 8, !tbaa !39
  br label %func_54.exit.i.i

lbl_1820.i.i.i.i:                                 ; preds = %func_59.exit.i.i, %if.end235.i.i.i.i
  %xor2107.i.i.i.i = phi i32 [ %xor2106.i.i.i.i, %if.end235.i.i.i.i ], [ %.promoted5.i.i.i.i, %func_59.exit.i.i ]
  %38 = phi i64 [ %43, %if.end235.i.i.i.i ], [ %dec.i23.i.i.i, %func_59.exit.i.i ]
  %tobool.not.i.i.i.i = icmp eq i64 %38, 0
  br i1 %tobool.not.i.i.i.i, label %for.end186.i.i.i.i, label %for.cond67.preheader.i.i.i.i

for.cond67.preheader.i.i.i.i:                     ; preds = %lbl_1820.i.i.i.i
  store i1 true, ptr @g_526, align 1
  store ptr %l_1766.i.i.i.i, ptr @g_1768, align 8, !tbaa !39
  br label %if.end235.i.i.i.i

for.end186.i.i.i.i:                               ; preds = %lbl_1820.i.i.i.i
  store i32 0, ptr @g_1422, align 4, !tbaa !12
  store i1 true, ptr @g_395, align 8
  %39 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  %40 = load i32, ptr %39, align 4, !tbaa !12
  %tobool197.not.i.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool197.not.i.i.i.i, label %if.else223.i.i.i.i, label %if.then198.i.i.i.i

if.then198.i.i.i.i:                               ; preds = %for.end186.i.i.i.i
  %41 = load volatile i16, ptr %32, align 2, !tbaa !15
  %xor210.i.i.i.i = xor i32 %xor2107.i.i.i.i, 1
  store i32 %xor210.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_938, i64 44), align 4, !tbaa !12
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @g_1109, i64 24), align 8, !tbaa !24
  br label %if.end235.i.i.i.i

if.else223.i.i.i.i:                               ; preds = %for.end186.i.i.i.i
  %42 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  br label %if.end235.i.i.i.i

if.end235.i.i.i.i:                                ; preds = %if.else223.i.i.i.i, %if.then198.i.i.i.i, %for.cond67.preheader.i.i.i.i
  %xor2106.i.i.i.i = phi i32 [ %xor210.i.i.i.i, %if.then198.i.i.i.i ], [ %xor2107.i.i.i.i, %if.else223.i.i.i.i ], [ %xor2107.i.i.i.i, %for.cond67.preheader.i.i.i.i ]
  %43 = phi i64 [ 1, %if.then198.i.i.i.i ], [ 0, %if.else223.i.i.i.i ], [ %38, %for.cond67.preheader.i.i.i.i ]
  store volatile ptr %arrayidx238.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  br label %lbl_1820.i.i.i.i

func_54.exit.i.i:                                 ; preds = %for.cond67.preheader.us.i.i.i.i, %if.else223.us.i.i.i.i, %if.then198.us.i.i.i.i
  store volatile ptr %arrayidx238.i.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %l_1766.i.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 720, ptr nonnull %l_1739.i.i.i.i) #4
  %44 = load ptr, ptr @g_566, align 8, !tbaa !28
  store ptr @g_166, ptr %44, align 8, !tbaa !26
  %45 = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_202, i64 796), align 4, !tbaa !12
  %and70.i.i.i = and i32 %45, 5
  store i32 %and70.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_202, i64 796), align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %l_2517.i.i.i) #4
  br label %for.cond1.preheader.i.i.i

for.cond1.preheader.i.i.i:                        ; preds = %for.cond1.preheader.i.i.i, %func_54.exit.i.i
  %indvars.iv8.i.i.i = phi i64 [ 0, %func_54.exit.i.i ], [ %indvars.iv.next9.i.i.i, %for.cond1.preheader.i.i.i ]
  %arrayidx5.i.i.i = getelementptr inbounds nuw [3 x [2 x ptr]], ptr %l_2517.i.i.i, i64 0, i64 %indvars.iv8.i.i.i, i64 0
  store ptr @g_1769, ptr %arrayidx5.i.i.i, align 16, !tbaa !39
  %arrayidx5.i.c.i.i = getelementptr inbounds nuw [3 x [2 x ptr]], ptr %l_2517.i.i.i, i64 0, i64 %indvars.iv8.i.i.i, i64 1
  store ptr @g_1769, ptr %arrayidx5.i.c.i.i, align 8, !tbaa !39
  %indvars.iv.next9.i.i.i = add nuw nsw i64 %indvars.iv8.i.i.i, 1
  %exitcond.not.i180.i.i = icmp eq i64 %indvars.iv.next9.i.i.i, 3
  br i1 %exitcond.not.i180.i.i, label %for.body11.preheader.i.i.i, label %for.cond1.preheader.i.i.i, !llvm.loop !41

for.body11.preheader.i.i.i:                       ; preds = %for.cond1.preheader.i.i.i
  %cmp35.i.i = icmp eq ptr %24, null
  %46 = load volatile ptr, ptr @g_964, align 8, !tbaa !26
  %or.i.i.i = zext i1 %cmp35.i.i to i32
  store i32 %or.i.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_174, i64 4), align 4, !tbaa !12
  %arrayidx41.i.i.i = getelementptr inbounds nuw i8, ptr %l_2517.i.i.i, i64 24
  %47 = load ptr, ptr %arrayidx41.i.i.i, align 8, !tbaa !39
  %cmp42.i.i.i = icmp eq ptr %47, @g_1769
  %conv43.i.i.i = zext i1 %cmp42.i.i.i to i32
  %48 = load i32, ptr @g_166, align 4, !tbaa !12
  %cmp47.i.i.i = icmp ne i32 %48, %conv43.i.i.i
  %conv48.i.i.i = zext i1 %cmp47.i.i.i to i32
  store i32 %conv48.i.i.i, ptr @g_534, align 4, !tbaa !12
  %49 = load volatile i16, ptr %32, align 2, !tbaa !15
  %cmp75.not.i.i.i = icmp eq i32 %48, 1
  br i1 %cmp75.not.i.i.i, label %if.end345.i.i.i, label %cleanup.i181.i.i

cleanup.i181.i.i:                                 ; preds = %for.body11.preheader.i.i.i
  store i8 -3, ptr @g_161, align 1, !tbaa !42
  store i32 -1, ptr @g_142, align 4, !tbaa !12
  store i32 %conv48.i.i.i, ptr @g_534, align 4, !tbaa !12
  store i1 true, ptr @g_92, align 1
  %50 = load volatile ptr, ptr @g_79, align 8, !tbaa !26
  %51 = load volatile i32, ptr %50, align 4, !tbaa !12
  %52 = load volatile ptr, ptr @g_1320, align 8, !tbaa !31
  %53 = load ptr, ptr %52, align 8, !tbaa !28
  %54 = load ptr, ptr %53, align 8, !tbaa !26
  store ptr %54, ptr %44, align 8, !tbaa !26
  %55 = load volatile ptr, ptr @g_403, align 8, !tbaa !28
  br label %func_50.exit.i.i

if.end345.i.i.i:                                  ; preds = %for.body11.preheader.i.i.i
  %56 = load i16, ptr @g_88, align 2, !tbaa !15
  %cmp337.i.i.i = icmp ne i16 %56, -14184
  %conv338.i.i.i = zext i1 %cmp337.i.i.i to i32
  store i32 %conv338.i.i.i, ptr @g_166, align 4, !tbaa !12
  %57 = load volatile ptr, ptr @g_932, align 8, !tbaa !26
  %58 = load volatile i32, ptr %57, align 4, !tbaa !12
  br label %func_50.exit.i.i

func_50.exit.i.i:                                 ; preds = %if.end345.i.i.i, %cleanup.i181.i.i
  %.sink.i.i = phi i32 [ 1, %if.end345.i.i.i ], [ %51, %cleanup.i181.i.i ]
  store i32 %.sink.i.i, ptr @g_534, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %l_2517.i.i.i) #4
  store i1 true, ptr @g_1980, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_40.addr.i.i.i)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %l_3532.i.i.i) #4
  br label %vector.body3269

vector.body3269:                                  ; preds = %pred.store.continue3275, %func_50.exit.i.i
  %index3270 = phi i64 [ 0, %func_50.exit.i.i ], [ %index.next3276, %pred.store.continue3275 ]
  %vec.ind3271 = phi <2 x i8> [ <i8 0, i8 1>, %func_50.exit.i.i ], [ %vec.ind.next3277, %pred.store.continue3275 ]
  %59 = icmp ult <2 x i8> %vec.ind3271, splat (i8 5)
  %60 = extractelement <2 x i1> %59, i64 0
  br i1 %60, label %pred.store.if3272, label %pred.store.continue3273

pred.store.if3272:                                ; preds = %vector.body3269
  %61 = getelementptr inbounds nuw [5 x i32], ptr %l_3532.i.i.i, i64 0, i64 %index3270
  store i32 -4, ptr %61, align 8, !tbaa !12
  br label %pred.store.continue3273

pred.store.continue3273:                          ; preds = %pred.store.if3272, %vector.body3269
  %62 = extractelement <2 x i1> %59, i64 1
  br i1 %62, label %pred.store.if3274, label %pred.store.continue3275

pred.store.if3274:                                ; preds = %pred.store.continue3273
  %63 = or disjoint i64 %index3270, 1
  %64 = getelementptr inbounds nuw [5 x i32], ptr %l_3532.i.i.i, i64 0, i64 %63
  store i32 -4, ptr %64, align 4, !tbaa !12
  br label %pred.store.continue3275

pred.store.continue3275:                          ; preds = %pred.store.if3274, %pred.store.continue3273
  %index.next3276 = add nuw i64 %index3270, 2
  %vec.ind.next3277 = add <2 x i8> %vec.ind3271, splat (i8 2)
  %65 = icmp eq i64 %index.next3276, 6
  br i1 %65, label %for.cond26.preheader.i.i.i, label %vector.body3269, !llvm.loop !43

for.cond26.preheader.i.i.i:                       ; preds = %pred.store.continue3275
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %l_3129.i.i.i) #4
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @g_202, i64 676), align 4, !tbaa !12
  store ptr %indvars.iv9.i.sroa.gep238.i.i, ptr @g_3131, align 8, !tbaa !44
  %66 = load i8, ptr @g_161, align 1, !tbaa !42
  %dec.i.i185.i.i = add i8 %66, -1
  store i8 %dec.i.i185.i.i, ptr @g_161, align 1, !tbaa !42
  store i32 1, ptr @g_142, align 4, !tbaa !12
  store volatile ptr @g_142, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %l_3129.i.i.i) #4
  %67 = load i32, ptr @g_1422, align 4, !tbaa !12
  %and1293.i.i.i = and i32 %67, 1
  store i32 %and1293.i.i.i, ptr @g_1422, align 4, !tbaa !12
  %arrayidx1513.i.i.i = getelementptr inbounds nuw i8, ptr %l_3921.i.i.i, i64 108
  %68 = load ptr, ptr @g_566, align 8, !tbaa !28
  store i32 0, ptr @g_232, align 4, !tbaa !12
  %.pre12.pre.i.i.i = load i16, ptr @g_88, align 2, !tbaa !15
  %69 = and i16 %.pre12.pre.i.i.i, 19692
  %70 = load ptr, ptr @g_566, align 8, !tbaa !28
  br label %for.body1480.i.i.i

for.body1480.i.i.i:                               ; preds = %for.end1609.i.i.i, %for.cond26.preheader.i.i.i
  call void @llvm.lifetime.start.p0(i64 140, ptr nonnull %l_3921.i.i.i) #4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(140) %l_3921.i.i.i, ptr noundef nonnull align 16 dereferenceable(140) @__const.func_39.l_3921, i64 140, i1 false)
  %71 = load ptr, ptr @g_566, align 8
  %72 = load ptr, ptr @g_566, align 8
  %73 = load ptr, ptr @g_566, align 8
  %74 = load ptr, ptr @g_566, align 8
  %75 = load ptr, ptr @g_566, align 8
  br label %land.end1587.i.i.i

land.rhs1545.i.2.i.i:                             ; preds = %land.end1587.i.i.i
  %76 = load ptr, ptr %71, align 8, !tbaa !26
  %77 = load i32, ptr %76, align 4, !tbaa !12
  %conv1546.i.2.i.i = trunc i32 %77 to i8
  %sext.i.2.i.i = shl i32 %77, 24
  %cmp.i173.i.2.i.i = icmp slt i8 %conv1546.i.2.i.i, 0
  %cmp9.i.i.2.i.i = icmp sgt i32 %sext.i.2.i.i, 117440512
  %or.cond.i174.i.2.i.i = or i1 %cmp.i173.i.2.i.i, %cmp9.i.i.2.i.i
  %shl.i175.i.2.i.i = lshr exact i32 %sext.i.2.i.i, 20
  %78 = trunc i32 %shl.i175.i.2.i.i to i8
  %cond.i176.i.2.i.i = select i1 %or.cond.i174.i.2.i.i, i8 %conv1546.i.2.i.i, i8 %78
  %cmp1585.i.2.i.i = icmp slt i8 %cond.i176.i.2.i.i, 2
  %79 = select i1 %cmp1585.i.2.i.i, i32 2, i32 1
  br label %land.end1587.i.2.i.i

land.end1587.i.2.i.i:                             ; preds = %land.rhs1545.i.2.i.i, %land.end1587.i.i.i
  %land.ext1588.i.2.i.i = phi i32 [ %79, %land.rhs1545.i.2.i.i ], [ 1, %land.end1587.i.i.i ]
  %80 = load ptr, ptr %68, align 8, !tbaa !26
  store i32 %land.ext1588.i.2.i.i, ptr %80, align 4, !tbaa !12
  %.pr.i.2.i.i = load i32, ptr %arrayidx1513.i.i.i, align 4, !tbaa !12
  store ptr %arrayidx1513.i.i.i, ptr %68, align 8, !tbaa !26
  %tobool1544.not.i.3.i.i = icmp eq i32 %.pr.i.2.i.i, 0
  br i1 %tobool1544.not.i.3.i.i, label %land.end1587.i.3.i.i, label %land.rhs1545.i.3.i.i

land.rhs1545.i.3.i.i:                             ; preds = %land.end1587.i.2.i.i
  %81 = load ptr, ptr %72, align 8, !tbaa !26
  %82 = load i32, ptr %81, align 4, !tbaa !12
  %conv1546.i.3.i.i = trunc i32 %82 to i8
  %sext.i.3.i.i = shl i32 %82, 24
  %cmp.i173.i.3.i.i = icmp slt i8 %conv1546.i.3.i.i, 0
  %cmp9.i.i.3.i.i = icmp sgt i32 %sext.i.3.i.i, 117440512
  %or.cond.i174.i.3.i.i = or i1 %cmp.i173.i.3.i.i, %cmp9.i.i.3.i.i
  %shl.i175.i.3.i.i = lshr exact i32 %sext.i.3.i.i, 20
  %83 = trunc i32 %shl.i175.i.3.i.i to i8
  %cond.i176.i.3.i.i = select i1 %or.cond.i174.i.3.i.i, i8 %conv1546.i.3.i.i, i8 %83
  %cmp1585.i.3.i.i = icmp slt i8 %cond.i176.i.3.i.i, 2
  %84 = select i1 %cmp1585.i.3.i.i, i32 2, i32 1
  br label %land.end1587.i.3.i.i

land.end1587.i.3.i.i:                             ; preds = %land.rhs1545.i.3.i.i, %land.end1587.i.2.i.i
  %land.ext1588.i.3.i.i = phi i32 [ %84, %land.rhs1545.i.3.i.i ], [ 1, %land.end1587.i.2.i.i ]
  %85 = load ptr, ptr %68, align 8, !tbaa !26
  store i32 %land.ext1588.i.3.i.i, ptr %85, align 4, !tbaa !12
  %.pr.i.3.i.i = load i32, ptr %arrayidx1513.i.i.i, align 4, !tbaa !12
  store ptr %arrayidx1513.i.i.i, ptr %68, align 8, !tbaa !26
  %tobool1544.not.i.4.i.i = icmp eq i32 %.pr.i.3.i.i, 0
  br i1 %tobool1544.not.i.4.i.i, label %land.end1587.i.4.i.i, label %land.rhs1545.i.4.i.i

land.rhs1545.i.4.i.i:                             ; preds = %land.end1587.i.3.i.i
  %86 = load ptr, ptr %73, align 8, !tbaa !26
  %87 = load i32, ptr %86, align 4, !tbaa !12
  %conv1546.i.4.i.i = trunc i32 %87 to i8
  %sext.i.4.i.i = shl i32 %87, 24
  %cmp.i173.i.4.i.i = icmp slt i8 %conv1546.i.4.i.i, 0
  %cmp9.i.i.4.i.i = icmp sgt i32 %sext.i.4.i.i, 117440512
  %or.cond.i174.i.4.i.i = or i1 %cmp.i173.i.4.i.i, %cmp9.i.i.4.i.i
  %shl.i175.i.4.i.i = lshr exact i32 %sext.i.4.i.i, 20
  %88 = trunc i32 %shl.i175.i.4.i.i to i8
  %cond.i176.i.4.i.i = select i1 %or.cond.i174.i.4.i.i, i8 %conv1546.i.4.i.i, i8 %88
  %cmp1585.i.4.i.i = icmp slt i8 %cond.i176.i.4.i.i, 2
  %89 = select i1 %cmp1585.i.4.i.i, i32 2, i32 1
  br label %land.end1587.i.4.i.i

land.end1587.i.4.i.i:                             ; preds = %land.rhs1545.i.4.i.i, %land.end1587.i.3.i.i
  %land.ext1588.i.4.i.i = phi i32 [ %89, %land.rhs1545.i.4.i.i ], [ 1, %land.end1587.i.3.i.i ]
  %90 = load ptr, ptr %68, align 8, !tbaa !26
  store i32 %land.ext1588.i.4.i.i, ptr %90, align 4, !tbaa !12
  %.pr.i.4.i.i = load i32, ptr %arrayidx1513.i.i.i, align 4, !tbaa !12
  store ptr %arrayidx1513.i.i.i, ptr %68, align 8, !tbaa !26
  %tobool1544.not.i.5.i.i = icmp eq i32 %.pr.i.4.i.i, 0
  br i1 %tobool1544.not.i.5.i.i, label %land.end1587.i.5.i.i, label %land.rhs1545.i.5.i.i

land.rhs1545.i.5.i.i:                             ; preds = %land.end1587.i.4.i.i
  %91 = load ptr, ptr %74, align 8, !tbaa !26
  %92 = load i32, ptr %91, align 4, !tbaa !12
  %conv1546.i.5.i.i = trunc i32 %92 to i8
  %sext.i.5.i.i = shl i32 %92, 24
  %cmp.i173.i.5.i.i = icmp slt i8 %conv1546.i.5.i.i, 0
  %cmp9.i.i.5.i.i = icmp sgt i32 %sext.i.5.i.i, 117440512
  %or.cond.i174.i.5.i.i = or i1 %cmp.i173.i.5.i.i, %cmp9.i.i.5.i.i
  %shl.i175.i.5.i.i = lshr exact i32 %sext.i.5.i.i, 20
  %93 = trunc i32 %shl.i175.i.5.i.i to i8
  %cond.i176.i.5.i.i = select i1 %or.cond.i174.i.5.i.i, i8 %conv1546.i.5.i.i, i8 %93
  %cmp1585.i.5.i.i = icmp slt i8 %cond.i176.i.5.i.i, 2
  %94 = select i1 %cmp1585.i.5.i.i, i32 2, i32 1
  br label %land.end1587.i.5.i.i

land.end1587.i.5.i.i:                             ; preds = %land.rhs1545.i.5.i.i, %land.end1587.i.4.i.i
  %land.ext1588.i.5.i.i = phi i32 [ %94, %land.rhs1545.i.5.i.i ], [ 1, %land.end1587.i.4.i.i ]
  %95 = load ptr, ptr %68, align 8, !tbaa !26
  store i32 %land.ext1588.i.5.i.i, ptr %95, align 4, !tbaa !12
  %.pr.i.5.i.i = load i32, ptr %arrayidx1513.i.i.i, align 4, !tbaa !12
  store ptr %arrayidx1513.i.i.i, ptr %68, align 8, !tbaa !26
  %tobool1544.not.i.6.i.i = icmp eq i32 %.pr.i.5.i.i, 0
  br i1 %tobool1544.not.i.6.i.i, label %cleanup1603.i.i.i, label %land.rhs1545.i.6.i.i

land.rhs1545.i.6.i.i:                             ; preds = %land.end1587.i.5.i.i
  %96 = load ptr, ptr %75, align 8, !tbaa !26
  %97 = load i32, ptr %96, align 4, !tbaa !12
  %conv1546.i.6.i.i = trunc i32 %97 to i8
  %sext.i.6.i.i = shl i32 %97, 24
  %cmp.i173.i.6.i.i = icmp slt i8 %conv1546.i.6.i.i, 0
  %cmp9.i.i.6.i.i = icmp sgt i32 %sext.i.6.i.i, 117440512
  %or.cond.i174.i.6.i.i = or i1 %cmp.i173.i.6.i.i, %cmp9.i.i.6.i.i
  %shl.i175.i.6.i.i = lshr exact i32 %sext.i.6.i.i, 20
  %98 = trunc i32 %shl.i175.i.6.i.i to i8
  %cond.i176.i.6.i.i = select i1 %or.cond.i174.i.6.i.i, i8 %conv1546.i.6.i.i, i8 %98
  %cmp1585.i.6.i.i = icmp slt i8 %cond.i176.i.6.i.i, 2
  %99 = select i1 %cmp1585.i.6.i.i, i32 2, i32 1
  br label %cleanup1603.i.i.i

land.end1587.i.i.i:                               ; preds = %cleanup1603.i.i.i, %for.body1480.i.i.i
  %storemerge1585.i.i.i = phi i8 [ 2, %for.body1480.i.i.i ], [ %dec1608.i.i.i, %cleanup1603.i.i.i ]
  %100 = load volatile ptr, ptr @g_79, align 8, !tbaa !26
  %101 = load volatile i32, ptr %100, align 4, !tbaa !12
  store i32 0, ptr %arrayidx1513.i.i.i, align 4, !tbaa !12
  store ptr %arrayidx1513.i.i.i, ptr %68, align 8, !tbaa !26
  store i32 1, ptr %arrayidx1513.i.i.i, align 4, !tbaa !12
  store ptr %arrayidx1513.i.i.i, ptr %68, align 8, !tbaa !26
  %102 = load ptr, ptr %70, align 8, !tbaa !26
  %103 = load i32, ptr %102, align 4, !tbaa !12
  %conv1546.i.1.i.i = trunc i32 %103 to i8
  %sext.i.1.i.i = shl i32 %103, 24
  %cmp.i173.i.1.i.i = icmp slt i8 %conv1546.i.1.i.i, 0
  %cmp9.i.i.1.i.i = icmp sgt i32 %sext.i.1.i.i, 117440512
  %or.cond.i174.i.1.i.i = or i1 %cmp.i173.i.1.i.i, %cmp9.i.i.1.i.i
  %shl.i175.i.1.i.i = lshr exact i32 %sext.i.1.i.i, 20
  %104 = trunc i32 %shl.i175.i.1.i.i to i8
  %cond.i176.i.1.i.i = select i1 %or.cond.i174.i.1.i.i, i8 %conv1546.i.1.i.i, i8 %104
  %cmp1585.i.1.i.i = icmp slt i8 %cond.i176.i.1.i.i, 2
  %105 = select i1 %cmp1585.i.1.i.i, i32 2, i32 1
  %106 = load ptr, ptr %68, align 8, !tbaa !26
  store i32 %105, ptr %106, align 4, !tbaa !12
  %.pr.i.1.i.i = load i32, ptr %arrayidx1513.i.i.i, align 4, !tbaa !12
  store ptr %arrayidx1513.i.i.i, ptr %68, align 8, !tbaa !26
  %tobool1544.not.i.2.i.i = icmp eq i32 %.pr.i.1.i.i, 0
  br i1 %tobool1544.not.i.2.i.i, label %land.end1587.i.2.i.i, label %land.rhs1545.i.2.i.i

cleanup1603.i.i.i:                                ; preds = %land.rhs1545.i.6.i.i, %land.end1587.i.5.i.i
  %land.ext1588.i.6.i.i = phi i32 [ %99, %land.rhs1545.i.6.i.i ], [ 1, %land.end1587.i.5.i.i ]
  %107 = load ptr, ptr %68, align 8, !tbaa !26
  store i32 %land.ext1588.i.6.i.i, ptr %107, align 4, !tbaa !12
  %dec1608.i.i.i = add nsw i8 %storemerge1585.i.i.i, -1
  %cmp1485.not.i.i.i = icmp eq i8 %storemerge1585.i.i.i, 0
  br i1 %cmp1485.not.i.i.i, label %for.end1609.i.i.i, label %land.end1587.i.i.i, !llvm.loop !48

for.end1609.i.i.i:                                ; preds = %cleanup1603.i.i.i
  call void @llvm.lifetime.end.p0(i64 140, ptr nonnull %l_3921.i.i.i) #4
  %108 = load i32, ptr @g_232, align 4, !tbaa !12
  %inc1611.i.i.i = add nsw i32 %108, 1
  store i32 %inc1611.i.i.i, ptr @g_232, align 4, !tbaa !12
  %cmp1478.i.i.i = icmp slt i32 %108, 21
  br i1 %cmp1478.i.i.i, label %for.body1480.i.i.i, label %for.end1612.i.i.i, !llvm.loop !49

for.end1612.i.i.i:                                ; preds = %for.end1609.i.i.i
  store i16 %69, ptr @g_88, align 2, !tbaa !15
  store i8 35, ptr @g_161, align 1, !tbaa !42
  store i16 7, ptr @g_88, align 2, !tbaa !15
  store ptr %p_40.addr.i.i.i, ptr @g_2185, align 16, !tbaa !50
  %109 = load i64, ptr @g_1421, align 8, !tbaa !24
  %arrayidx1640.i.i.i = getelementptr inbounds nuw i8, ptr %l_3532.i.i.i, i64 4
  %110 = load i32, ptr %arrayidx1640.i.i.i, align 4, !tbaa !12
  %conv1642.i.i.i = sext i32 %110 to i64
  %cmp.i192.i.i.i = icmp sgt i64 %109, 0
  %cmp1.i193.i.i.i = icmp sgt i32 %110, 0
  %or.cond.i194.i.i.i = and i1 %cmp.i192.i.i.i, %cmp1.i193.i.i.i
  %sub.i195.i.i.i = sub nuw nsw i64 9223372036854775807, %conv1642.i.i.i
  %cmp3.i196.i.i.i = icmp samesign ugt i64 %109, %sub.i195.i.i.i
  %or.cond11.i.i.i.i = select i1 %or.cond.i194.i.i.i, i1 %cmp3.i196.i.i.i, i1 false
  br i1 %or.cond11.i.i.i.i, label %func_39.exit.i.i, label %lor.lhs.false.i.i.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %for.end1612.i.i.i
  %111 = and i64 %109, %conv1642.i.i.i
  %or.cond1.not.i.i.i.i = icmp slt i64 %111, 0
  %sub8.i.i.i.i = sub nsw i64 -9223372036854775808, %conv1642.i.i.i
  %cmp9.i197.i.i.i = icmp slt i64 %109, %sub8.i.i.i.i
  %or.cond12.i.i.i.i = select i1 %or.cond1.not.i.i.i.i, i1 %cmp9.i197.i.i.i, i1 false
  %add.i198.i.i.i = select i1 %or.cond12.i.i.i.i, i64 0, i64 %conv1642.i.i.i
  %spec.select.i199.i.i.i = add nsw i64 %add.i198.i.i.i, %109
  br label %func_39.exit.i.i

func_39.exit.i.i:                                 ; preds = %lor.lhs.false.i.i.i.i, %for.end1612.i.i.i
  %cond.i200.i.i.i = phi i64 [ %109, %for.end1612.i.i.i ], [ %spec.select.i199.i.i.i, %lor.lhs.false.i.i.i.i ]
  %sub.i201.i.i.i = sub i64 0, %cond.i200.i.i.i
  %conv1646.i.i.i = and i64 %sub.i201.i.i.i, 255
  %112 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %113 = load volatile ptr, ptr %112, align 8, !tbaa !37
  store i64 %conv1646.i.i.i, ptr %113, align 8, !tbaa !24
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %l_3532.i.i.i) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_40.addr.i.i.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %l_4062.i.i.i) #4
  store ptr %l_4062.i.i.i, ptr @g_265, align 8, !tbaa !35
  %114 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %115 = load volatile ptr, ptr @g_3660, align 8, !tbaa !52
  %116 = load ptr, ptr @g_566, align 8, !tbaa !28
  store ptr null, ptr %116, align 8, !tbaa !26
  br label %for.body399.i.i.i

for.body399.i.i.i:                                ; preds = %for.inc422.i.i.i, %func_39.exit.i.i
  %117 = phi i8 [ 35, %func_39.exit.i.i ], [ %122, %for.inc422.i.i.i ]
  %cmp397.i.i.i = phi i1 [ true, %func_39.exit.i.i ], [ false, %for.inc422.i.i.i ]
  %indvars.iv5.i.i.i = phi i64 [ 0, %func_39.exit.i.i ], [ 1, %for.inc422.i.i.i ]
  store volatile i32 0, ptr @g_933, align 4, !tbaa !12
  %118 = load volatile i32, ptr @g_933, align 4, !tbaa !12
  %cmp4012.i.i.i = icmp ult i32 %118, 10
  br i1 %cmp4012.i.i.i, label %for.body408.i.i.i, label %for.inc422.i.i.i

for.body408.i.i.i:                                ; preds = %for.body399.i.i.i, %for.body408.i.i.i.backedge
  %indvars.iv.i186.i.i = phi i64 [ %indvars.iv.i186.i.i.be, %for.body408.i.i.i.backedge ], [ 0, %for.body399.i.i.i ]
  %119 = load volatile i32, ptr @g_933, align 4, !tbaa !12
  %idxprom411.i.i.i = zext i32 %119 to i64
  %arrayidx414.i.i.i = getelementptr inbounds nuw [2 x [10 x [3 x i32]]], ptr @g_938, i64 0, i64 %indvars.iv5.i.i.i, i64 %idxprom411.i.i.i, i64 %indvars.iv.i186.i.i
  store i32 -1426662363, ptr %arrayidx414.i.i.i, align 4, !tbaa !12
  %indvars.iv.next.i187.i.i = add nuw nsw i64 %indvars.iv.i186.i.i, 1
  %exitcond.not.i188.i.i = icmp eq i64 %indvars.iv.next.i187.i.i, 3
  br i1 %exitcond.not.i188.i.i, label %for.inc419.i.i.i, label %for.body408.i.i.i.backedge

for.body408.i.i.i.backedge:                       ; preds = %for.body408.i.i.i, %for.inc419.i.i.i
  %indvars.iv.i186.i.i.be = phi i64 [ %indvars.iv.next.i187.i.i, %for.body408.i.i.i ], [ 0, %for.inc419.i.i.i ]
  br label %for.body408.i.i.i, !llvm.loop !54

for.inc419.i.i.i:                                 ; preds = %for.body408.i.i.i
  store i8 3, ptr @g_161, align 1, !tbaa !42
  %120 = load volatile i32, ptr @g_933, align 4, !tbaa !12
  %add420.i.i.i = add i32 %120, 1
  store volatile i32 %add420.i.i.i, ptr @g_933, align 4, !tbaa !12
  %121 = load volatile i32, ptr @g_933, align 4, !tbaa !12
  %cmp401.i.i.i = icmp ult i32 %121, 10
  br i1 %cmp401.i.i.i, label %for.body408.i.i.i.backedge, label %for.inc422.i.i.i

for.inc422.i.i.i:                                 ; preds = %for.inc419.i.i.i, %for.body399.i.i.i
  %122 = phi i8 [ %117, %for.body399.i.i.i ], [ 3, %for.inc419.i.i.i ]
  br i1 %cmp397.i.i.i, label %for.body399.i.i.i, label %if.then.i.i, !llvm.loop !55

if.then.i.i:                                      ; preds = %for.inc422.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %l_4062.i.i.i) #4
  store volatile ptr null, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  store i32 0, ptr @g_701, align 4, !tbaa !12
  %123 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2328, i64 16), align 16, !tbaa !52
  %124 = load volatile ptr, ptr %123, align 8, !tbaa !39
  %125 = load volatile ptr, ptr %124, align 8, !tbaa !56
  %126 = load volatile i16, ptr %125, align 2, !tbaa !15
  store i64 45411, ptr @g_1421, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %l_4136.i.i) #4
  store i32 1, ptr @g_1170, align 4, !tbaa !12
  store i16 1, ptr @g_88, align 2, !tbaa !15
  store i32 1652718892, ptr getelementptr inbounds nuw (i8, ptr @g_202, i64 504), align 8, !tbaa !12
  store i32 1, ptr @g_1422, align 4, !tbaa !12
  %127 = load i32, ptr @g_1979, align 4, !tbaa !12
  %conv176.i.i = trunc i32 %127 to i16
  %128 = load ptr, ptr @g_1769, align 8, !tbaa !56
  store i16 %conv176.i.i, ptr %128, align 2, !tbaa !15
  %129 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %130 = load volatile ptr, ptr %129, align 8, !tbaa !37
  %arrayidx194.i.i = getelementptr inbounds nuw i8, ptr %l_4136.i.i, i64 100
  store volatile ptr %arrayidx194.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %l_4136.i.i) #4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %l_2517.i213.i.i) #4
  br label %for.cond1.preheader.i214.i.i

for.cond1.preheader.i214.i.i:                     ; preds = %for.cond1.preheader.i214.i.i, %if.then.i.i
  %indvars.iv8.i215.i.i = phi i64 [ 0, %if.then.i.i ], [ %indvars.iv.next9.i221.i.i, %for.cond1.preheader.i214.i.i ]
  %arrayidx5.i219.i.i = getelementptr inbounds nuw [3 x [2 x ptr]], ptr %l_2517.i213.i.i, i64 0, i64 %indvars.iv8.i215.i.i, i64 0
  store ptr @g_1769, ptr %arrayidx5.i219.i.i, align 16, !tbaa !39
  %arrayidx5.i219.c.i.i = getelementptr inbounds nuw [3 x [2 x ptr]], ptr %l_2517.i213.i.i, i64 0, i64 %indvars.iv8.i215.i.i, i64 1
  store ptr @g_1769, ptr %arrayidx5.i219.c.i.i, align 8, !tbaa !39
  %indvars.iv.next9.i221.i.i = add nuw nsw i64 %indvars.iv8.i215.i.i, 1
  %exitcond.not.i222.i.i = icmp eq i64 %indvars.iv.next9.i221.i.i, 3
  br i1 %exitcond.not.i222.i.i, label %for.body11.preheader.i223.i.i, label %for.cond1.preheader.i214.i.i, !llvm.loop !41

for.body11.preheader.i223.i.i:                    ; preds = %for.cond1.preheader.i214.i.i
  %131 = load volatile ptr, ptr @g_964, align 8, !tbaa !26
  store i32 34867, ptr getelementptr inbounds nuw (i8, ptr @g_174, i64 4), align 4, !tbaa !12
  %arrayidx41.i224.i.i = getelementptr inbounds nuw i8, ptr %l_2517.i213.i.i, i64 24
  %132 = load ptr, ptr %arrayidx41.i224.i.i, align 8, !tbaa !39
  %cmp42.i225.i.i = icmp eq ptr %132, @g_1769
  %conv43.i226.i.i = zext i1 %cmp42.i225.i.i to i32
  %133 = load i32, ptr @g_166, align 4, !tbaa !12
  %cmp47.i227.i.i = icmp ne i32 %133, %conv43.i226.i.i
  %conv48.i228.i.i = zext i1 %cmp47.i227.i.i to i32
  store i32 %conv48.i228.i.i, ptr @g_534, align 4, !tbaa !12
  %134 = load volatile i16, ptr %32, align 2, !tbaa !15
  %cmp75.not.i230.i.i = icmp eq i32 %133, 0
  br i1 %cmp75.not.i230.i.i, label %if.end345.i234.i.i, label %cleanup.i231.i.i

cleanup.i231.i.i:                                 ; preds = %for.body11.preheader.i223.i.i
  store i8 -3, ptr @g_161, align 1, !tbaa !42
  store i32 -1, ptr @g_142, align 4, !tbaa !12
  store i32 %conv48.i228.i.i, ptr @g_534, align 4, !tbaa !12
  store i1 true, ptr @g_92, align 1
  %135 = load volatile ptr, ptr @g_79, align 8, !tbaa !26
  %136 = load volatile i32, ptr %135, align 4, !tbaa !12
  %137 = load volatile ptr, ptr @g_1320, align 8, !tbaa !31
  %138 = load ptr, ptr %137, align 8, !tbaa !28
  %139 = load ptr, ptr %138, align 8, !tbaa !26
  store ptr %139, ptr %116, align 8, !tbaa !26
  %140 = load volatile ptr, ptr @g_403, align 8, !tbaa !28
  br label %func_25.exit.i

if.end345.i234.i.i:                               ; preds = %for.body11.preheader.i223.i.i
  %141 = load i16, ptr @g_88, align 2, !tbaa !15
  %cmp337.i235.i.i = icmp ne i16 %141, -14184
  %conv338.i236.i.i = zext i1 %cmp337.i235.i.i to i32
  store i32 %conv338.i236.i.i, ptr @g_166, align 4, !tbaa !12
  %142 = load volatile ptr, ptr @g_932, align 8, !tbaa !26
  %143 = load volatile i32, ptr %142, align 4, !tbaa !12
  br label %func_25.exit.i

func_25.exit.i:                                   ; preds = %if.end345.i234.i.i, %cleanup.i231.i.i
  %144 = phi i8 [ %122, %if.end345.i234.i.i ], [ -3, %cleanup.i231.i.i ]
  %.sink244.i.i = phi i32 [ 1, %if.end345.i234.i.i ], [ %136, %cleanup.i231.i.i ]
  %retval.1.in.i232.i.i = phi ptr [ %68, %if.end345.i234.i.i ], [ %140, %cleanup.i231.i.i ]
  store i32 %.sink244.i.i, ptr @g_534, align 4, !tbaa !12
  %retval.1.i233.i.i = load ptr, ptr %retval.1.in.i232.i.i, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %l_2517.i213.i.i) #4
  %145 = load volatile ptr, ptr @g_4278, align 8, !tbaa !28
  store ptr %retval.1.i233.i.i, ptr %145, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %l_48.i.i) #4
  store i16 18, ptr @g_2432, align 2, !tbaa !15
  store i32 -16, ptr @g_166, align 4, !tbaa !12
  %arrayidx1299.i.i = getelementptr inbounds nuw i8, ptr %l_4696.i.i, i64 24
  %146 = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_174, i64 16), align 16, !tbaa !12
  %conv1317.i.i = trunc i32 %146 to i16
  %.promoted3300 = load i8, ptr getelementptr inbounds nuw (i8, ptr @g_3086, i64 2), align 1, !tbaa !42
  br label %for.body1271.i.i

for.body1271.i.i:                                 ; preds = %for.inc1472.i.i, %func_25.exit.i
  %dec1319.i.i.lcssa3301 = phi i8 [ %.promoted3300, %func_25.exit.i ], [ %dec1319.i.i, %for.inc1472.i.i ]
  %storemerge7434.i.i = phi i32 [ -16, %func_25.exit.i ], [ %cond.i134.i.i, %for.inc1472.i.i ]
  %p_14.0.allc.033.i.i = phi i144 [ 1509976230438086423986836119417019695591, %func_25.exit.i ], [ %bf.set1410.i.i, %for.inc1472.i.i ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %l_4696.i.i) #4
  br label %vector.body3282

vector.body3282:                                  ; preds = %vector.body3282, %for.body1271.i.i
  %index3283 = phi i64 [ 0, %for.body1271.i.i ], [ %index.next3284, %vector.body3282 ]
  %147 = getelementptr inbounds nuw [4 x i64], ptr %l_4696.i.i, i64 0, i64 %index3283
  store <2 x i64> splat (i64 9), ptr %147, align 16, !tbaa !24
  %index.next3284 = add nuw i64 %index3283, 2
  %148 = icmp eq i64 %index.next3284, 4
  br i1 %148, label %for.cond1282.preheader.i.i, label %vector.body3282, !llvm.loop !58

for.cond1282.preheader.i.i:                       ; preds = %vector.body3282
  %arrayidx1299.promoted.i.i = load i64, ptr %arrayidx1299.i.i, align 8, !tbaa !24
  br label %for.body1286.i.i

for.body1286.i.i:                                 ; preds = %safe_mod_func_uint16_t_u_u.exit.i.i, %for.cond1282.preheader.i.i
  %dec1319.i.i3299 = phi i8 [ %dec1319.i.i.lcssa3301, %for.cond1282.preheader.i.i ], [ %dec1319.i.i, %safe_mod_func_uint16_t_u_u.exit.i.i ]
  %indvars.iv37.i.i = phi i64 [ 4, %for.cond1282.preheader.i.i ], [ %indvars.iv.next38.i.i, %safe_mod_func_uint16_t_u_u.exit.i.i ]
  %p_14.0.allc.131.i.i = phi i144 [ %p_14.0.allc.033.i.i, %for.cond1282.preheader.i.i ], [ %bf.set1410.i.i, %safe_mod_func_uint16_t_u_u.exit.i.i ]
  %149 = phi i64 [ %arrayidx1299.promoted.i.i, %for.cond1282.preheader.i.i ], [ %inc1300.i.i, %safe_mod_func_uint16_t_u_u.exit.i.i ]
  %inc1300.i.i = add i64 %149, 1
  %arrayidx1302.i.i = getelementptr inbounds nuw [5 x i32], ptr @g_174, i64 0, i64 %indvars.iv37.i.i
  %150 = load i32, ptr %arrayidx1302.i.i, align 4, !tbaa !12
  %cmp1304.i.i = icmp ugt i32 %150, 5
  %conv1306.i.i = zext i1 %cmp1304.i.i to i64
  %bf.lshr1314.i.i = lshr i144 %p_14.0.allc.131.i.i, 83
  %151 = trunc nuw nsw i144 %bf.lshr1314.i.i to i64
  %bf.cast1316.i.i = and i64 %151, 16777215
  %dec1319.i.i = add i8 %dec1319.i.i3299, -1
  %152 = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @g_156, i64 8), align 8, !tbaa !12, !noalias !59
  %bf.shl1349.i.i = shl i144 %p_14.0.allc.131.i.i, 22
  %bf.ashr1350.i.i = ashr i144 %bf.shl1349.i.i, 129
  %conv1354.i.i = trunc nsw i144 %bf.ashr1350.i.i to i16
  %cmp.i119.i.i = icmp eq i16 %conv1354.i.i, 0
  br i1 %cmp.i119.i.i, label %safe_mod_func_uint16_t_u_u.exit.i.i, label %cond.false.i120.i.i

cond.false.i120.i.i:                              ; preds = %for.body1286.i.i
  %153 = urem i16 %conv1317.i.i, %conv1354.i.i
  br label %safe_mod_func_uint16_t_u_u.exit.i.i

safe_mod_func_uint16_t_u_u.exit.i.i:              ; preds = %cond.false.i120.i.i, %for.body1286.i.i
  %cond.in.i121.i.i = phi i16 [ %153, %cond.false.i120.i.i ], [ %conv1317.i.i, %for.body1286.i.i ]
  %conv1356.i.i = zext i16 %cond.in.i121.i.i to i64
  %mul.i122.i.i = mul nuw nsw i64 %bf.cast1316.i.i, %conv1356.i.i
  %conv1358.i.i = and i64 %inc1300.i.i, 4294967295
  %and1360.i.i = and i64 %conv1358.i.i, %mul.i122.i.i
  %tobool1361.i.i = icmp ne i64 %and1360.i.i, 0
  %bf.cast1366.i.i = trunc nsw i144 %bf.ashr1350.i.i to i32
  %tobool1367.i.i = icmp ne i32 %bf.cast1366.i.i, 0
  %154 = select i1 %tobool1361.i.i, i1 %tobool1367.i.i, i1 false
  %conv1370.i.i = zext i1 %154 to i16
  %bf.shl1372.i.i = shl i144 %p_14.0.allc.131.i.i, 90
  %bf.ashr1373.i.i = ashr i144 %bf.shl1372.i.i, 139
  %conv1375.i.i = trunc nsw i144 %bf.ashr1373.i.i to i8
  %add.i123.i.i = add nsw i8 %144, %conv1375.i.i
  %conv1377.i.i = zext i8 %add.i123.i.i to i64
  %bf.cast1381.i.i = trunc nsw i144 %bf.ashr1373.i.i to i32
  %or.cond.i.i.i = icmp ugt i32 %bf.cast1381.i.i, 31
  %narrow.i.i.i = select i1 %or.cond.i.i.i, i32 0, i32 %bf.cast1381.i.i
  %shr.i124.i.i = zext nneg i32 %narrow.i.i.i to i64
  %cond.i125.i.i = lshr i64 %conv1377.i.i, %shr.i124.i.i
  %cmp1383.i.i = icmp eq i64 %cond.i125.i.i, %conv1306.i.i
  %conv1384.i.i = zext i1 %cmp1383.i.i to i32
  %bf.shl1386.i.i = shl i144 %p_14.0.allc.131.i.i, 5
  %bf.ashr1387.i.i = ashr i144 %bf.shl1386.i.i, 127
  %bf.cast1388.i.i = trunc nsw i144 %bf.ashr1387.i.i to i32
  %cmp1389.i.i = icmp ne i32 %conv1384.i.i, %bf.cast1388.i.i
  %155 = and i144 %p_14.0.allc.131.i.i, 9671406538902634888167424
  %tobool1396.i.i = icmp eq i144 %155, 0
  %.not.i = and i1 %tobool1396.i.i, %cmp1389.i.i
  %bf.clear1401.i.i = and i144 %p_14.0.allc.131.i.i, -5316749723862834278251836663111352320
  %bf.shl1408.i.i = select i1 %.not.i, i144 0, i144 162259276829213363391578010288128
  %bf.set1410.i.i = or disjoint i144 %bf.shl1408.i.i, %bf.clear1401.i.i
  %indvars.iv.next38.i.i = add nsw i64 %indvars.iv37.i.i, -1
  %cmp1284.not.i.i = icmp eq i64 %indvars.iv37.i.i, 0
  br i1 %cmp1284.not.i.i, label %for.end1432.i.i, label %for.body1286.i.i, !llvm.loop !62

for.end1432.i.i:                                  ; preds = %safe_mod_func_uint16_t_u_u.exit.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %l_4696.i.i) #4
  br i1 %.not.i, label %for.inc1472.i.i, label %func_13.exit.i

for.inc1472.i.i:                                  ; preds = %for.end1432.i.i
  %conv1473.i.i = sext i32 %storemerge7434.i.i to i64
  %xor2.i129.i.i = and i64 %conv1473.i.i, 9223372036854775807
  %sub.i130.i.i = add nsw i64 %xor2.i129.i.i, -5
  %and4.i132.i.i = and i64 %sub.i130.i.i, %conv1473.i.i
  %cmp.i133.i.i = icmp slt i64 %and4.i132.i.i, 0
  %sub5.i.neg.i.i = select i1 %cmp.i133.i.i, i32 0, i32 -5
  %cond.i134.i.i = add i32 %sub5.i.neg.i.i, %storemerge7434.i.i
  store i32 %cond.i134.i.i, ptr @g_166, align 4, !tbaa !12
  %cmp1269.i.i = icmp sgt i32 %cond.i134.i.i, -25
  br i1 %cmp1269.i.i, label %for.body1271.i.i, label %func_13.exit.i, !llvm.loop !63

func_13.exit.i:                                   ; preds = %for.inc1472.i.i, %for.end1432.i.i
  %bf.cast1454.i.lcssa.i = phi i32 [ 1, %for.end1432.i.i ], [ 0, %for.inc1472.i.i ]
  store i8 %dec1319.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_3086, i64 2), align 1, !tbaa !42
  store i16 %conv1370.i.i, ptr %128, align 2, !tbaa !15
  store i32 %bf.cast1454.i.lcssa.i, ptr @g_142, align 4, !tbaa !12
  %byval-temp374.sroa.0.sroa.0.0.copyload.i = load i144, ptr @g_10, align 16, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l_4762.i.i) #4
  %g_3070.promoted277.i.i = load i32, ptr @g_3070, align 4
  store i64 0, ptr @g_3636, align 8, !tbaa !24
  %cmp41.i.i = icmp ugt i8 %144, 94
  %conv44.i.i = zext i1 %cmp41.i.i to i32
  %.pre.i = load i16, ptr @g_88, align 2, !tbaa !15
  %g_3636.promoted = load i64, ptr @g_3636, align 8
  br label %for.body.i131.i

for.body.i131.i:                                  ; preds = %land.end1747.i.i, %func_13.exit.i
  %conv1786.i.i3304 = phi i64 [ %g_3636.promoted, %func_13.exit.i ], [ %conv1786.i.i, %land.end1747.i.i ]
  %156 = phi i16 [ %.pre.i, %func_13.exit.i ], [ %or667.us.i.i, %land.end1747.i.i ]
  %bf.set819254.lcssa272286.i.i = phi i144 [ %byval-temp374.sroa.0.sroa.0.0.copyload.i, %func_13.exit.i ], [ %bf.set819.i.i, %land.end1747.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l_4881.i.i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l_4882.i.i) #4
  %dec.i.i = add i16 %156, -1
  store i16 %dec.i.i, ptr @g_88, align 2, !tbaa !15
  %157 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %158 = load volatile ptr, ptr %157, align 8, !tbaa !37
  store i64 95, ptr %158, align 8, !tbaa !24
  store i16 0, ptr %128, align 2, !tbaa !15
  store i32 %conv44.i.i, ptr @g_1979, align 4, !tbaa !12
  %159 = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @g_156, i64 8), align 8, !tbaa !12, !noalias !64
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @g_3086, i64 3), align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %l_4788.i.i) #4
  store i16 0, ptr @g_493, align 2, !tbaa !15
  %160 = load ptr, ptr @g_566, align 8
  br label %for.body93.i.i

for.cond89.i.i:                                   ; preds = %land.end636.i.i, %for.cond444.preheader.i.i
  %bf.clear818.i.i = and i144 %bf.set819254267.i.i, -262144
  %bf.set819.i.i = or disjoint i144 %bf.clear818.i.i, 1
  %add836.i.i = add nuw nsw i16 %storemerge117268.i.i, 1
  store i16 %add836.i.i, ptr @g_493, align 2, !tbaa !15
  %exitcond.i.i = icmp eq i16 %add836.i.i, 5
  br i1 %exitcond.i.i, label %cleanup839.thread.i.i, label %for.body93.i.i, !llvm.loop !67

cleanup839.thread.i.i:                            ; preds = %for.cond89.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_4788.i.i) #4
  store volatile ptr %l_4881.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  %161 = and i144 %bf.set819254267.i.i, 162259267157806806474544612638720
  %tobool1688.not.i.i = icmp eq i144 %161, 0
  br i1 %tobool1688.not.i.i, label %land.end1747.i.i, label %safe_lshift_func_uint16_t_u_u.exit.i.i

for.body93.i.i:                                   ; preds = %for.cond89.i.i, %for.body.i131.i
  %162 = phi i16 [ %dec.i.i, %for.body.i131.i ], [ %or667.us.i.i, %for.cond89.i.i ]
  %163 = phi i8 [ 0, %for.body.i131.i ], [ %164, %for.cond89.i.i ]
  %storemerge117268.i.i = phi i16 [ 0, %for.body.i131.i ], [ %add836.i.i, %for.cond89.i.i ]
  %bf.set819254267.i.i = phi i144 [ %bf.set819254.lcssa272286.i.i, %for.body.i131.i ], [ %bf.set819.i.i, %for.cond89.i.i ]
  %164 = and i8 %163, -2
  store i8 %164, ptr getelementptr inbounds nuw (i8, ptr @g_3086, i64 3), align 1, !tbaa !42
  %conv121.i.i = zext i8 %164 to i32
  %bf.shl123.i.i = shl i144 %bf.set819254267.i.i, 90
  %bf.ashr.i.i = ashr i144 %bf.shl123.i.i, 139
  %bf.cast124.i.i = trunc nsw i144 %bf.ashr.i.i to i32
  %cmp125.i.i = icmp slt i32 %conv121.i.i, %bf.cast124.i.i
  br i1 %cmp125.i.i, label %if.then127.i.i, label %for.cond249.preheader.i.i

for.cond249.preheader.i.i:                        ; preds = %for.body93.i.i
  %bf.shl296.i.i = shl i144 %bf.set819254267.i.i, 22
  %bf.ashr297.i.i = ashr i144 %bf.shl296.i.i, 129
  %bf.cast298.i.i = trunc nsw i144 %bf.ashr297.i.i to i32
  %tobool299.not.i.i = icmp eq i32 %bf.cast298.i.i, 0
  br i1 %tobool299.not.i.i, label %safe_div_func_int32_t_s_s.exit.i.i, label %cleanup839.i.i

if.then127.i.i:                                   ; preds = %for.body93.i.i
  %165 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %166 = load volatile ptr, ptr %165, align 8, !tbaa !37
  %167 = load i64, ptr %166, align 8, !tbaa !24
  %inc137.i.i = add i64 %167, 1
  store i64 %inc137.i.i, ptr %166, align 8, !tbaa !24
  store i16 0, ptr @g_2432, align 2, !tbaa !15
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @g_1085, i64 112), align 16, !tbaa !12
  br label %for.body242.i.i

for.cond444.preheader.i.i:                        ; preds = %for.body242.i.i
  %conv159.i.i = trunc i64 %inc137.i.i to i16
  %bf.shl208.i.i = shl i144 %bf.set819254267.i.i, 22
  %bf.ashr209.i.i = ashr i144 %bf.shl208.i.i, 129
  %bf.cast210.i.i = trunc nsw i144 %bf.ashr209.i.i to i32
  store i32 0, ptr @g_166, align 4, !tbaa !12
  %bf.shl582.i.i = shl i144 %bf.set819254267.i.i, 126
  %bf.ashr583.i.i = ashr exact i144 %bf.shl582.i.i, 126
  %bf.cast584.i.i = trunc nsw i144 %bf.ashr583.i.i to i64
  %bf.cast660.i.i = trunc nsw i144 %bf.ashr209.i.i to i16
  %cmp690.i.i = icmp sgt i32 %bf.cast210.i.i, 3
  %conv691.i.i = zext i1 %cmp690.i.i to i32
  %bf.lshr693.i.i = lshr i144 %bf.set819254267.i.i, 54
  %168 = trunc i144 %bf.lshr693.i.i to i32
  %bf.cast695.i.i = and i32 %168, 536870911
  %cmp696.i.i = icmp samesign ugt i32 %bf.cast695.i.i, %conv691.i.i
  %conv698.i.i = zext i1 %cmp696.i.i to i64
  %cmp701.not.i.i = icmp eq i64 %conv698.i.i, %bf.cast584.i.i
  %cmp701.not.fr.i.i = freeze i1 %cmp701.not.i.i
  store volatile ptr %l_4762.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  %169 = or i16 %conv159.i.i, 2774
  store i16 %169, ptr %128, align 2, !tbaa !15
  %170 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2328, i64 16), align 16, !tbaa !52
  %171 = load volatile ptr, ptr %170, align 8, !tbaa !39
  %172 = load volatile ptr, ptr %171, align 8, !tbaa !56
  %173 = load volatile i16, ptr %172, align 2, !tbaa !15
  %174 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %175 = load volatile ptr, ptr %174, align 8, !tbaa !37
  %or665.i.i = or i16 %162, %bf.cast660.i.i
  %or667.us.i.i = or i16 %or665.i.i, 95
  store i16 %or667.us.i.i, ptr @g_88, align 2, !tbaa !15
  br i1 %cmp701.not.fr.i.i, label %for.cond89.i.i, label %land.end636.i.i

for.body242.i.i:                                  ; preds = %for.body242.i.i, %if.then127.i.i
  %storemerge120226.i.i = phi i64 [ 4, %if.then127.i.i ], [ %sub.i.i, %for.body242.i.i ]
  store volatile ptr %l_4788.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  %sub.i.i = add nsw i64 %storemerge120226.i.i, -1
  store i64 %sub.i.i, ptr @g_1421, align 8, !tbaa !24
  %cmp240.not.i.i = icmp eq i64 %storemerge120226.i.i, 0
  br i1 %cmp240.not.i.i, label %for.cond444.preheader.i.i, label %for.body242.i.i, !llvm.loop !68

safe_div_func_int32_t_s_s.exit.i.i:               ; preds = %for.cond249.preheader.i.i
  %bf.shl307.i.i = shl i144 %bf.set819254267.i.i, 126
  %bf.ashr308.i.i = ashr exact i144 %bf.shl307.i.i, 126
  %bf.cast309.i.i = trunc nsw i144 %bf.ashr308.i.i to i32
  %cmp310.i.i = icmp slt i32 %bf.cast309.i.i, 1
  %176 = select i1 %cmp310.i.i, i16 32498, i16 32497
  %177 = load i16, ptr %128, align 2, !tbaa !15
  %conv316.i.i = and i16 %177, %176
  store i16 %conv316.i.i, ptr %128, align 2, !tbaa !15
  %or338.i.i = or i32 %g_3070.promoted277.i.i, 1
  store i32 %or338.i.i, ptr @g_3070, align 4, !tbaa !12
  br label %cleanup839.i.i

land.end636.i.i:                                  ; preds = %for.cond444.preheader.i.i
  %178 = load volatile i32, ptr @g_4883, align 4, !tbaa !12
  %dec769.i.i = add i32 %178, -1
  store volatile i32 %dec769.i.i, ptr @g_4883, align 4, !tbaa !12
  store i32 1, ptr @g_166, align 4, !tbaa !12
  store i32 3, ptr %l_4881.i.i, align 4
  br label %for.cond89.i.i

cleanup839.i.i:                                   ; preds = %safe_div_func_int32_t_s_s.exit.i.i, %for.cond249.preheader.i.i
  %dec.i.i.i = add nsw i8 %144, -1
  store i32 1, ptr @g_534, align 4, !tbaa !12
  store i32 -506606045, ptr getelementptr inbounds nuw (i8, ptr @g_1085, i64 112), align 16, !tbaa !12
  store i64 1, ptr @g_1421, align 8, !tbaa !24
  store i8 %dec.i.i.i, ptr @g_161, align 1, !tbaa !42
  store i32 1, ptr @g_142, align 4, !tbaa !12
  store ptr @g_142, ptr %160, align 8, !tbaa !26
  store volatile ptr null, ptr getelementptr inbounds nuw (i8, ptr @g_963, i64 8), align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_4788.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_4882.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_4881.i.i) #4
  br label %func_1.exit

safe_lshift_func_uint16_t_u_u.exit.i.i:           ; preds = %cleanup839.thread.i.i
  %179 = lshr i144 %bf.set819254267.i.i, 122
  %conv1724.i.i = trunc nuw nsw i144 %179 to i64
  %conv1726.i.i = and i64 %conv1724.i.i, 255
  %180 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %181 = load volatile ptr, ptr %180, align 8, !tbaa !37
  %182 = load i64, ptr %181, align 8, !tbaa !24
  %xor1727.i.i = xor i64 %182, %conv1726.i.i
  store i64 %xor1727.i.i, ptr %181, align 8, !tbaa !24
  br label %land.end1747.i.i

land.end1747.i.i:                                 ; preds = %safe_lshift_func_uint16_t_u_u.exit.i.i, %cleanup839.thread.i.i
  %183 = load volatile ptr, ptr @g_2329, align 8, !tbaa !39
  %184 = load volatile ptr, ptr %183, align 8, !tbaa !56
  %185 = load volatile i16, ptr %184, align 2, !tbaa !15
  %186 = load volatile ptr, ptr @g_1320, align 8, !tbaa !31
  %187 = load ptr, ptr %186, align 8, !tbaa !28
  store ptr %l_4882.i.i, ptr %187, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_4882.i.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_4881.i.i) #4
  %sub.i193.i.i = shl i64 %conv1786.i.i3304, 56
  %sext.i.i = add i64 %sub.i193.i.i, -432345564227567616
  %conv1786.i.i = ashr exact i64 %sext.i.i, 56
  store i64 %conv1786.i.i, ptr @g_3636, align 8, !tbaa !24
  %cmp.i.i = icmp sgt i64 %conv1786.i.i, -27
  br i1 %cmp.i.i, label %for.body.i131.i, label %for.end1787.i.i, !llvm.loop !69

for.end1787.i.i:                                  ; preds = %land.end1747.i.i
  %188 = load volatile i32, ptr getelementptr inbounds nuw (i8, ptr @g_156, i64 8), align 8, !tbaa !12, !noalias !70
  %bf.lshr1800.i.i = lshr i144 %bf.set819254267.i.i, 18
  %189 = trunc i144 %bf.lshr1800.i.i to i32
  %add.i194.i.i = add i32 %189, %168
  %call1804.lobit.i.i = lshr i32 %add.i194.i.i, 15
  %conv1807.i.i = and i32 %call1804.lobit.i.i, 1
  store i32 %conv1807.i.i, ptr getelementptr inbounds nuw (i8, ptr @g_1085, i64 112), align 16, !tbaa !12
  br label %func_1.exit

func_1.exit:                                      ; preds = %cleanup839.i.i, %for.end1787.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %l_4762.i.i) #4
  %190 = load volatile ptr, ptr getelementptr inbounds nuw (i8, ptr @g_2063, i64 16), align 16, !tbaa !35
  %191 = load volatile ptr, ptr %190, align 8, !tbaa !37
  store i64 1, ptr %191, align 8, !tbaa !24
  store i32 -2, ptr getelementptr inbounds nuw (i8, ptr @g_174, i64 16), align 16, !tbaa !12
  store i32 0, ptr @g_1170, align 4, !tbaa !12
  store ptr @g_10, ptr getelementptr inbounds nuw (i8, ptr @g_784, i64 1520), align 16, !tbaa !17
  store i1 false, ptr @g_1980, align 4
  %bf.load = load i144, ptr @g_10, align 16
  %bf.shl = shl i144 %bf.load, 126
  %bf.ashr = ashr exact i144 %bf.shl, 126
  %bf.cast = trunc nsw i144 %bf.ashr to i64
  call fastcc void @transparent_crc(i64 noundef %bf.cast, ptr noundef nonnull @.str.1, i32 noundef %print_hash_value.0)
  %bf.load3 = load i144, ptr @g_10, align 16
  %192 = trunc i144 %bf.load3 to i64
  %193 = lshr i64 %192, 18
  %bf.cast4 = and i64 %193, 2147483647
  call fastcc void @transparent_crc(i64 noundef %bf.cast4, ptr noundef nonnull @.str.2, i32 noundef %print_hash_value.0)
  %bf.load6 = load i144, ptr @g_10, align 16
  %bf.shl7 = shl i144 %bf.load6, 90
  %bf.ashr8 = ashr i144 %bf.shl7, 139
  %bf.cast9 = trunc nsw i144 %bf.ashr8 to i64
  call fastcc void @transparent_crc(i64 noundef %bf.cast9, ptr noundef nonnull @.str.3, i32 noundef %print_hash_value.0)
  %bf.load11 = load i144, ptr @g_10, align 16
  %bf.lshr12 = lshr i144 %bf.load11, 54
  %194 = trunc i144 %bf.lshr12 to i64
  %bf.cast14 = and i64 %194, 536870911
  call fastcc void @transparent_crc(i64 noundef %bf.cast14, ptr noundef nonnull @.str.4, i32 noundef %print_hash_value.0)
  %bf.load16 = load i144, ptr @g_10, align 16
  %bf.lshr17 = lshr i144 %bf.load16, 83
  %195 = trunc nuw nsw i144 %bf.lshr17 to i64
  %bf.cast19 = and i64 %195, 16777215
  call fastcc void @transparent_crc(i64 noundef %bf.cast19, ptr noundef nonnull @.str.5, i32 noundef %print_hash_value.0)
  %bf.load21 = load i144, ptr @g_10, align 16
  %bf.shl22 = shl i144 %bf.load21, 22
  %bf.ashr23 = ashr i144 %bf.shl22, 129
  %bf.cast24 = trunc nsw i144 %bf.ashr23 to i64
  call fastcc void @transparent_crc(i64 noundef %bf.cast24, ptr noundef nonnull @.str.6, i32 noundef %print_hash_value.0)
  %bf.load26 = load i144, ptr @g_10, align 16
  %bf.shl27 = shl i144 %bf.load26, 5
  %bf.ashr28 = ashr i144 %bf.shl27, 127
  %bf.cast29 = trunc nsw i144 %bf.ashr28 to i64
  call fastcc void @transparent_crc(i64 noundef %bf.cast29, ptr noundef nonnull @.str.7, i32 noundef %print_hash_value.0)
  br label %for.body

for.body:                                         ; preds = %func_1.exit, %for.inc
  %indvars.iv = phi i64 [ 0, %func_1.exit ], [ %indvars.iv.next, %for.inc ]
  %arrayidx33 = getelementptr inbounds nuw [10 x i16], ptr @g_20, i64 0, i64 %indvars.iv
  %196 = load i16, ptr %arrayidx33, align 2, !tbaa !15
  %conv34 = zext i16 %196 to i64
  call fastcc void @transparent_crc(i64 noundef %conv34, ptr noundef nonnull @.str.8, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc, label %if.then35

if.then35:                                        ; preds = %for.body
  %197 = trunc nuw nsw i64 %indvars.iv to i32
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %197)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then35
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 10
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !73

for.end:                                          ; preds = %for.inc
  %198 = load volatile i32, ptr @g_80, align 4, !tbaa !12
  %conv38 = sext i32 %198 to i64
  call fastcc void @transparent_crc(i64 noundef %conv38, ptr noundef nonnull @.str.10, i32 noundef %print_hash_value.0)
  %199 = load i16, ptr @g_88, align 2, !tbaa !15
  %conv39 = zext i16 %199 to i64
  call fastcc void @transparent_crc(i64 noundef %conv39, ptr noundef nonnull @.str.11, i32 noundef %print_hash_value.0)
  %.b = load i1, ptr @g_92, align 1
  %conv40 = select i1 %.b, i64 0, i64 -58
  call fastcc void @transparent_crc(i64 noundef %conv40, ptr noundef nonnull @.str.12, i32 noundef %print_hash_value.0)
  br label %for.body44

for.body44:                                       ; preds = %for.end, %for.inc51
  %indvars.iv3050 = phi i64 [ 0, %for.end ], [ %indvars.iv.next3051, %for.inc51 ]
  %arrayidx46 = getelementptr inbounds nuw [9 x i64], ptr @g_133, i64 0, i64 %indvars.iv3050
  %200 = load i64, ptr %arrayidx46, align 8, !tbaa !24
  call fastcc void @transparent_crc(i64 noundef %200, ptr noundef nonnull @.str.13, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc51, label %if.then48

if.then48:                                        ; preds = %for.body44
  %201 = trunc nuw nsw i64 %indvars.iv3050 to i32
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %201)
  br label %for.inc51

for.inc51:                                        ; preds = %for.body44, %if.then48
  %indvars.iv.next3051 = add nuw nsw i64 %indvars.iv3050, 1
  %exitcond3053.not = icmp eq i64 %indvars.iv.next3051, 9
  br i1 %exitcond3053.not, label %for.end53, label %for.body44, !llvm.loop !74

for.end53:                                        ; preds = %for.inc51
  %202 = load i32, ptr @g_142, align 4, !tbaa !12
  %conv54 = sext i32 %202 to i64
  call fastcc void @transparent_crc(i64 noundef %conv54, ptr noundef nonnull @.str.14, i32 noundef %print_hash_value.0)
  br label %for.body58

for.body58:                                       ; preds = %for.end53, %for.inc66
  %indvars.iv3054 = phi i64 [ 0, %for.end53 ], [ %indvars.iv.next3055, %for.inc66 ]
  %arrayidx60 = getelementptr inbounds nuw [6 x i32], ptr @g_156, i64 0, i64 %indvars.iv3054
  %203 = load volatile i32, ptr %arrayidx60, align 4, !tbaa !12
  %conv61 = zext i32 %203 to i64
  call fastcc void @transparent_crc(i64 noundef %conv61, ptr noundef nonnull @.str.15, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc66, label %if.then63

if.then63:                                        ; preds = %for.body58
  %204 = trunc nuw nsw i64 %indvars.iv3054 to i32
  %call64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %204)
  br label %for.inc66

for.inc66:                                        ; preds = %for.body58, %if.then63
  %indvars.iv.next3055 = add nuw nsw i64 %indvars.iv3054, 1
  %exitcond3057.not = icmp eq i64 %indvars.iv.next3055, 6
  br i1 %exitcond3057.not, label %for.end68, label %for.body58, !llvm.loop !75

for.end68:                                        ; preds = %for.inc66
  %205 = load i8, ptr @g_161, align 1, !tbaa !42
  %conv69 = zext i8 %205 to i64
  call fastcc void @transparent_crc(i64 noundef %conv69, ptr noundef nonnull @.str.16, i32 noundef %print_hash_value.0)
  %206 = load i32, ptr @g_166, align 4, !tbaa !12
  %conv70 = sext i32 %206 to i64
  call fastcc void @transparent_crc(i64 noundef %conv70, ptr noundef nonnull @.str.17, i32 noundef %print_hash_value.0)
  br label %for.body74

for.cond85.preheader:                             ; preds = %for.inc82
  %tobool.not.i359 = icmp eq i32 %print_hash_value.0, 0
  br label %for.cond89.preheader

for.body74:                                       ; preds = %for.end68, %for.inc82
  %indvars.iv3058 = phi i64 [ 0, %for.end68 ], [ %indvars.iv.next3059, %for.inc82 ]
  %arrayidx76 = getelementptr inbounds nuw [5 x i32], ptr @g_174, i64 0, i64 %indvars.iv3058
  %207 = load i32, ptr %arrayidx76, align 4, !tbaa !12
  %conv77 = sext i32 %207 to i64
  call fastcc void @transparent_crc(i64 noundef %conv77, ptr noundef nonnull @.str.18, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc82, label %if.then79

if.then79:                                        ; preds = %for.body74
  %208 = trunc nuw nsw i64 %indvars.iv3058 to i32
  %call80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %208)
  br label %for.inc82

for.inc82:                                        ; preds = %for.body74, %if.then79
  %indvars.iv.next3059 = add nuw nsw i64 %indvars.iv3058, 1
  %exitcond3061.not = icmp eq i64 %indvars.iv.next3059, 5
  br i1 %exitcond3061.not, label %for.cond85.preheader, label %for.body74, !llvm.loop !76

for.cond89.preheader:                             ; preds = %for.cond85.preheader, %for.inc114
  %indvars.iv3070 = phi i64 [ 0, %for.cond85.preheader ], [ %indvars.iv.next3071, %for.inc114 ]
  %209 = trunc nuw nsw i64 %indvars.iv3070 to i32
  br label %for.cond93.preheader

for.cond93.preheader:                             ; preds = %for.cond89.preheader, %for.inc111
  %indvars.iv3066 = phi i64 [ 0, %for.cond89.preheader ], [ %indvars.iv.next3067, %for.inc111 ]
  %210 = trunc nuw nsw i64 %indvars.iv3066 to i32
  br label %for.body96

for.body96:                                       ; preds = %for.cond93.preheader, %for.inc108
  %indvars.iv3062 = phi i64 [ 0, %for.cond93.preheader ], [ %indvars.iv.next3063, %for.inc108 ]
  %arrayidx102 = getelementptr inbounds nuw [7 x [10 x [3 x i32]]], ptr @g_202, i64 0, i64 %indvars.iv3070, i64 %indvars.iv3066, i64 %indvars.iv3062
  %211 = load i32, ptr %arrayidx102, align 4, !tbaa !12
  %conv103 = sext i32 %211 to i64
  %212 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i = lshr i32 %212, 8
  %.tr.i.i.i = zext i32 %212 to i64
  %xor.narrow.i.i.i = xor i64 %.tr.i.i.i, %conv103
  %idxprom.i.i.i = and i64 %xor.narrow.i.i.i, 255
  %arrayidx.i.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i
  %213 = load i32, ptr %arrayidx.i.i.i, align 4, !tbaa !12
  %xor2.i.i.i = xor i32 %shr.i.i.i, %213
  %shr1.i.i = lshr i64 %conv103, 8
  %shr.i8.i.i = lshr i32 %xor2.i.i.i, 8
  %.tr.i9.i.i = zext i32 %xor2.i.i.i to i64
  %xor.narrow.i10.i.i = xor i64 %shr1.i.i, %.tr.i9.i.i
  %idxprom.i11.i.i = and i64 %xor.narrow.i10.i.i, 255
  %arrayidx.i12.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i
  %214 = load i32, ptr %arrayidx.i12.i.i, align 4, !tbaa !12
  %xor2.i13.i.i = xor i32 %shr.i8.i.i, %214
  %shr4.i.i = lshr i64 %conv103, 16
  %shr.i14.i.i = lshr i32 %xor2.i13.i.i, 8
  %.tr.i15.i.i = zext i32 %xor2.i13.i.i to i64
  %xor.narrow.i16.i.i = xor i64 %shr4.i.i, %.tr.i15.i.i
  %idxprom.i17.i.i = and i64 %xor.narrow.i16.i.i, 255
  %arrayidx.i18.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i
  %215 = load i32, ptr %arrayidx.i18.i.i, align 4, !tbaa !12
  %xor2.i19.i.i = xor i32 %shr.i14.i.i, %215
  %shr7.i.i = lshr i64 %conv103, 24
  %shr.i20.i.i = lshr i32 %xor2.i19.i.i, 8
  %.tr.i21.i.i = zext i32 %xor2.i19.i.i to i64
  %xor.narrow.i22.i.i = xor i64 %shr7.i.i, %.tr.i21.i.i
  %idxprom.i23.i.i = and i64 %xor.narrow.i22.i.i, 255
  %arrayidx.i24.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i
  %216 = load i32, ptr %arrayidx.i24.i.i, align 4, !tbaa !12
  %xor2.i25.i.i = xor i32 %shr.i20.i.i, %216
  %shr10.i.i = lshr i64 %conv103, 32
  %shr.i26.i.i = lshr i32 %xor2.i25.i.i, 8
  %.tr.i27.i.i = zext i32 %xor2.i25.i.i to i64
  %xor.narrow.i28.i.i = xor i64 %shr10.i.i, %.tr.i27.i.i
  %idxprom.i29.i.i = and i64 %xor.narrow.i28.i.i, 255
  %arrayidx.i30.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i
  %217 = load i32, ptr %arrayidx.i30.i.i, align 4, !tbaa !12
  %xor2.i31.i.i = xor i32 %shr.i26.i.i, %217
  %shr13.i.i = lshr i64 %conv103, 40
  %shr.i32.i.i = lshr i32 %xor2.i31.i.i, 8
  %.tr.i33.i.i = zext i32 %xor2.i31.i.i to i64
  %xor.narrow.i34.i.i = xor i64 %shr13.i.i, %.tr.i33.i.i
  %idxprom.i35.i.i = and i64 %xor.narrow.i34.i.i, 255
  %arrayidx.i36.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i
  %218 = load i32, ptr %arrayidx.i36.i.i, align 4, !tbaa !12
  %xor2.i37.i.i = xor i32 %shr.i32.i.i, %218
  %shr16.i.i = lshr i64 %conv103, 48
  %shr.i38.i.i = lshr i32 %xor2.i37.i.i, 8
  %.tr.i39.i.i = zext i32 %xor2.i37.i.i to i64
  %xor.narrow.i40.i.i = xor i64 %shr16.i.i, %.tr.i39.i.i
  %idxprom.i41.i.i = and i64 %xor.narrow.i40.i.i, 255
  %arrayidx.i42.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i
  %219 = load i32, ptr %arrayidx.i42.i.i, align 4, !tbaa !12
  %xor2.i43.i.i = xor i32 %shr.i38.i.i, %219
  %shr19.i.i = lshr i64 %conv103, 56
  %shr.i44.i.i = lshr i32 %xor2.i43.i.i, 8
  %220 = and i32 %xor2.i43.i.i, 255
  %.tr.i45.masked.i.i = zext nneg i32 %220 to i64
  %idxprom.i47.i.i = xor i64 %shr19.i.i, %.tr.i45.masked.i.i
  %arrayidx.i48.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i
  %221 = load i32, ptr %arrayidx.i48.i.i, align 4, !tbaa !12
  %xor2.i49.i.i = xor i32 %shr.i44.i.i, %221
  store i32 %xor2.i49.i.i, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit, label %if.then.i

if.then.i:                                        ; preds = %for.body96
  %222 = xor i32 %xor2.i49.i.i, -1
  %xor.i360 = zext i32 %222 to i64
  %call.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.19, i64 noundef %xor.i360)
  br label %transparent_crc.exit

transparent_crc.exit:                             ; preds = %for.body96, %if.then.i
  br i1 %tobool748.not, label %for.inc108, label %if.then105

if.then105:                                       ; preds = %transparent_crc.exit
  %223 = trunc nuw nsw i64 %indvars.iv3062 to i32
  %call106 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %209, i32 noundef %210, i32 noundef %223)
  br label %for.inc108

for.inc108:                                       ; preds = %transparent_crc.exit, %if.then105
  %indvars.iv.next3063 = add nuw nsw i64 %indvars.iv3062, 1
  %exitcond3065.not = icmp eq i64 %indvars.iv.next3063, 3
  br i1 %exitcond3065.not, label %for.inc111, label %for.body96, !llvm.loop !77

for.inc111:                                       ; preds = %for.inc108
  %indvars.iv.next3067 = add nuw nsw i64 %indvars.iv3066, 1
  %exitcond3069.not = icmp eq i64 %indvars.iv.next3067, 10
  br i1 %exitcond3069.not, label %for.inc114, label %for.cond93.preheader, !llvm.loop !78

for.inc114:                                       ; preds = %for.inc111
  %indvars.iv.next3071 = add nuw nsw i64 %indvars.iv3070, 1
  %exitcond3073.not = icmp eq i64 %indvars.iv.next3071, 7
  br i1 %exitcond3073.not, label %for.end116, label %for.cond89.preheader, !llvm.loop !79

for.end116:                                       ; preds = %for.inc114
  %224 = load i32, ptr @g_232, align 4, !tbaa !12
  %conv117 = sext i32 %224 to i64
  call fastcc void @transparent_crc(i64 noundef %conv117, ptr noundef nonnull @.str.21, i32 noundef %print_hash_value.0)
  br label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %for.end116, %for.inc138
  %indvars.iv3078 = phi i64 [ 0, %for.end116 ], [ %indvars.iv.next3079, %for.inc138 ]
  %225 = trunc nuw nsw i64 %indvars.iv3078 to i32
  br label %for.body125

for.body125:                                      ; preds = %for.cond122.preheader, %for.inc135
  %indvars.iv3074 = phi i64 [ 0, %for.cond122.preheader ], [ %indvars.iv.next3075, %for.inc135 ]
  %arrayidx129 = getelementptr inbounds nuw [9 x [3 x i32]], ptr @g_268, i64 0, i64 %indvars.iv3078, i64 %indvars.iv3074
  %226 = load i32, ptr %arrayidx129, align 4, !tbaa !12
  %conv130 = zext i32 %226 to i64
  %227 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i361 = lshr i32 %227, 8
  %xor.narrow.i.i.i3632981 = xor i32 %227, %226
  %228 = and i32 %xor.narrow.i.i.i3632981, 255
  %idxprom.i.i.i364 = zext nneg i32 %228 to i64
  %arrayidx.i.i.i365 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i364
  %229 = load i32, ptr %arrayidx.i.i.i365, align 4, !tbaa !12
  %xor2.i.i.i366 = xor i32 %shr.i.i.i361, %229
  %shr1.i.i367 = lshr i64 %conv130, 8
  %shr.i8.i.i368 = lshr i32 %xor2.i.i.i366, 8
  %.tr.i9.i.i369 = zext i32 %xor2.i.i.i366 to i64
  %xor.narrow.i10.i.i370 = xor i64 %shr1.i.i367, %.tr.i9.i.i369
  %idxprom.i11.i.i371 = and i64 %xor.narrow.i10.i.i370, 255
  %arrayidx.i12.i.i372 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i371
  %230 = load i32, ptr %arrayidx.i12.i.i372, align 4, !tbaa !12
  %xor2.i13.i.i373 = xor i32 %shr.i8.i.i368, %230
  %shr4.i.i374 = lshr i64 %conv130, 16
  %shr.i14.i.i375 = lshr i32 %xor2.i13.i.i373, 8
  %.tr.i15.i.i376 = zext i32 %xor2.i13.i.i373 to i64
  %xor.narrow.i16.i.i377 = xor i64 %shr4.i.i374, %.tr.i15.i.i376
  %idxprom.i17.i.i378 = and i64 %xor.narrow.i16.i.i377, 255
  %arrayidx.i18.i.i379 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i378
  %231 = load i32, ptr %arrayidx.i18.i.i379, align 4, !tbaa !12
  %xor2.i19.i.i380 = xor i32 %shr.i14.i.i375, %231
  %shr7.i.i381 = lshr i64 %conv130, 24
  %shr.i20.i.i382 = lshr i32 %xor2.i19.i.i380, 8
  %232 = and i32 %xor2.i19.i.i380, 255
  %.tr.i21.i.i383.masked = zext nneg i32 %232 to i64
  %idxprom.i23.i.i385 = xor i64 %shr7.i.i381, %.tr.i21.i.i383.masked
  %arrayidx.i24.i.i386 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i385
  %233 = load i32, ptr %arrayidx.i24.i.i386, align 4, !tbaa !12
  %xor2.i25.i.i387 = xor i32 %shr.i20.i.i382, %233
  %shr.i26.i.i389 = lshr i32 %xor2.i25.i.i387, 8
  %234 = and i32 %xor2.i25.i.i387, 255
  %idxprom.i29.i.i392 = zext nneg i32 %234 to i64
  %arrayidx.i30.i.i393 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i392
  %235 = load i32, ptr %arrayidx.i30.i.i393, align 4, !tbaa !12
  %xor2.i31.i.i394 = xor i32 %shr.i26.i.i389, %235
  %shr.i32.i.i396 = lshr i32 %xor2.i31.i.i394, 8
  %236 = and i32 %xor2.i31.i.i394, 255
  %idxprom.i35.i.i399 = zext nneg i32 %236 to i64
  %arrayidx.i36.i.i400 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i399
  %237 = load i32, ptr %arrayidx.i36.i.i400, align 4, !tbaa !12
  %xor2.i37.i.i401 = xor i32 %shr.i32.i.i396, %237
  %shr.i38.i.i403 = lshr i32 %xor2.i37.i.i401, 8
  %238 = and i32 %xor2.i37.i.i401, 255
  %idxprom.i41.i.i406 = zext nneg i32 %238 to i64
  %arrayidx.i42.i.i407 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i406
  %239 = load i32, ptr %arrayidx.i42.i.i407, align 4, !tbaa !12
  %xor2.i43.i.i408 = xor i32 %shr.i38.i.i403, %239
  %shr.i44.i.i410 = lshr i32 %xor2.i43.i.i408, 8
  %240 = and i32 %xor2.i43.i.i408, 255
  %.tr.i45.masked.i.i411 = zext nneg i32 %240 to i64
  %arrayidx.i48.i.i413 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i411
  %241 = load i32, ptr %arrayidx.i48.i.i413, align 4, !tbaa !12
  %xor2.i49.i.i414 = xor i32 %shr.i44.i.i410, %241
  store i32 %xor2.i49.i.i414, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit419, label %if.then.i416

if.then.i416:                                     ; preds = %for.body125
  %242 = xor i32 %xor2.i49.i.i414, -1
  %xor.i417 = zext i32 %242 to i64
  %call.i418 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.22, i64 noundef %xor.i417)
  br label %transparent_crc.exit419

transparent_crc.exit419:                          ; preds = %for.body125, %if.then.i416
  br i1 %tobool748.not, label %for.inc135, label %if.then132

if.then132:                                       ; preds = %transparent_crc.exit419
  %243 = trunc nuw nsw i64 %indvars.iv3074 to i32
  %call133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %225, i32 noundef %243)
  br label %for.inc135

for.inc135:                                       ; preds = %transparent_crc.exit419, %if.then132
  %indvars.iv.next3075 = add nuw nsw i64 %indvars.iv3074, 1
  %exitcond3077.not = icmp eq i64 %indvars.iv.next3075, 3
  br i1 %exitcond3077.not, label %for.inc138, label %for.body125, !llvm.loop !80

for.inc138:                                       ; preds = %for.inc135
  %indvars.iv.next3079 = add nuw nsw i64 %indvars.iv3078, 1
  %exitcond3081.not = icmp eq i64 %indvars.iv.next3079, 9
  br i1 %exitcond3081.not, label %for.cond145.preheader, label %for.cond122.preheader, !llvm.loop !81

for.cond145.preheader:                            ; preds = %for.inc138, %for.inc161
  %indvars.iv3086 = phi i64 [ %indvars.iv.next3087, %for.inc161 ], [ 0, %for.inc138 ]
  %244 = trunc nuw nsw i64 %indvars.iv3086 to i32
  br label %for.body148

for.body148:                                      ; preds = %for.cond145.preheader, %for.inc158
  %indvars.iv3082 = phi i64 [ 0, %for.cond145.preheader ], [ %indvars.iv.next3083, %for.inc158 ]
  %arrayidx152 = getelementptr inbounds nuw [9 x [10 x i16]], ptr @g_390, i64 0, i64 %indvars.iv3086, i64 %indvars.iv3082
  %245 = load i16, ptr %arrayidx152, align 2, !tbaa !15
  %conv153 = sext i16 %245 to i64
  %246 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i420 = lshr i32 %246, 8
  %.tr.i.i.i421 = zext i32 %246 to i64
  %xor.narrow.i.i.i422 = xor i64 %.tr.i.i.i421, %conv153
  %idxprom.i.i.i423 = and i64 %xor.narrow.i.i.i422, 255
  %arrayidx.i.i.i424 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i423
  %247 = load i32, ptr %arrayidx.i.i.i424, align 4, !tbaa !12
  %xor2.i.i.i425 = xor i32 %shr.i.i.i420, %247
  %shr1.i.i426 = lshr i64 %conv153, 8
  %shr.i8.i.i427 = lshr i32 %xor2.i.i.i425, 8
  %.tr.i9.i.i428 = zext i32 %xor2.i.i.i425 to i64
  %xor.narrow.i10.i.i429 = xor i64 %shr1.i.i426, %.tr.i9.i.i428
  %idxprom.i11.i.i430 = and i64 %xor.narrow.i10.i.i429, 255
  %arrayidx.i12.i.i431 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i430
  %248 = load i32, ptr %arrayidx.i12.i.i431, align 4, !tbaa !12
  %xor2.i13.i.i432 = xor i32 %shr.i8.i.i427, %248
  %shr4.i.i433 = lshr i64 %conv153, 16
  %shr.i14.i.i434 = lshr i32 %xor2.i13.i.i432, 8
  %.tr.i15.i.i435 = zext i32 %xor2.i13.i.i432 to i64
  %xor.narrow.i16.i.i436 = xor i64 %shr4.i.i433, %.tr.i15.i.i435
  %idxprom.i17.i.i437 = and i64 %xor.narrow.i16.i.i436, 255
  %arrayidx.i18.i.i438 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i437
  %249 = load i32, ptr %arrayidx.i18.i.i438, align 4, !tbaa !12
  %xor2.i19.i.i439 = xor i32 %shr.i14.i.i434, %249
  %shr7.i.i440 = lshr i64 %conv153, 24
  %shr.i20.i.i441 = lshr i32 %xor2.i19.i.i439, 8
  %.tr.i21.i.i442 = zext i32 %xor2.i19.i.i439 to i64
  %xor.narrow.i22.i.i443 = xor i64 %shr7.i.i440, %.tr.i21.i.i442
  %idxprom.i23.i.i444 = and i64 %xor.narrow.i22.i.i443, 255
  %arrayidx.i24.i.i445 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i444
  %250 = load i32, ptr %arrayidx.i24.i.i445, align 4, !tbaa !12
  %xor2.i25.i.i446 = xor i32 %shr.i20.i.i441, %250
  %shr10.i.i447 = lshr i64 %conv153, 32
  %shr.i26.i.i448 = lshr i32 %xor2.i25.i.i446, 8
  %.tr.i27.i.i449 = zext i32 %xor2.i25.i.i446 to i64
  %xor.narrow.i28.i.i450 = xor i64 %shr10.i.i447, %.tr.i27.i.i449
  %idxprom.i29.i.i451 = and i64 %xor.narrow.i28.i.i450, 255
  %arrayidx.i30.i.i452 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i451
  %251 = load i32, ptr %arrayidx.i30.i.i452, align 4, !tbaa !12
  %xor2.i31.i.i453 = xor i32 %shr.i26.i.i448, %251
  %shr13.i.i454 = lshr i64 %conv153, 40
  %shr.i32.i.i455 = lshr i32 %xor2.i31.i.i453, 8
  %.tr.i33.i.i456 = zext i32 %xor2.i31.i.i453 to i64
  %xor.narrow.i34.i.i457 = xor i64 %shr13.i.i454, %.tr.i33.i.i456
  %idxprom.i35.i.i458 = and i64 %xor.narrow.i34.i.i457, 255
  %arrayidx.i36.i.i459 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i458
  %252 = load i32, ptr %arrayidx.i36.i.i459, align 4, !tbaa !12
  %xor2.i37.i.i460 = xor i32 %shr.i32.i.i455, %252
  %shr16.i.i461 = lshr i64 %conv153, 48
  %shr.i38.i.i462 = lshr i32 %xor2.i37.i.i460, 8
  %.tr.i39.i.i463 = zext i32 %xor2.i37.i.i460 to i64
  %xor.narrow.i40.i.i464 = xor i64 %shr16.i.i461, %.tr.i39.i.i463
  %idxprom.i41.i.i465 = and i64 %xor.narrow.i40.i.i464, 255
  %arrayidx.i42.i.i466 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i465
  %253 = load i32, ptr %arrayidx.i42.i.i466, align 4, !tbaa !12
  %xor2.i43.i.i467 = xor i32 %shr.i38.i.i462, %253
  %shr19.i.i468 = lshr i64 %conv153, 56
  %shr.i44.i.i469 = lshr i32 %xor2.i43.i.i467, 8
  %254 = and i32 %xor2.i43.i.i467, 255
  %.tr.i45.masked.i.i470 = zext nneg i32 %254 to i64
  %idxprom.i47.i.i471 = xor i64 %shr19.i.i468, %.tr.i45.masked.i.i470
  %arrayidx.i48.i.i472 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i471
  %255 = load i32, ptr %arrayidx.i48.i.i472, align 4, !tbaa !12
  %xor2.i49.i.i473 = xor i32 %shr.i44.i.i469, %255
  store i32 %xor2.i49.i.i473, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit478, label %if.then.i475

if.then.i475:                                     ; preds = %for.body148
  %256 = xor i32 %xor2.i49.i.i473, -1
  %xor.i476 = zext i32 %256 to i64
  %call.i477 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.24, i64 noundef %xor.i476)
  br label %transparent_crc.exit478

transparent_crc.exit478:                          ; preds = %for.body148, %if.then.i475
  br i1 %tobool748.not, label %for.inc158, label %if.then155

if.then155:                                       ; preds = %transparent_crc.exit478
  %257 = trunc nuw nsw i64 %indvars.iv3082 to i32
  %call156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %244, i32 noundef %257)
  br label %for.inc158

for.inc158:                                       ; preds = %transparent_crc.exit478, %if.then155
  %indvars.iv.next3083 = add nuw nsw i64 %indvars.iv3082, 1
  %exitcond3085.not = icmp eq i64 %indvars.iv.next3083, 10
  br i1 %exitcond3085.not, label %for.inc161, label %for.body148, !llvm.loop !82

for.inc161:                                       ; preds = %for.inc158
  %indvars.iv.next3087 = add nuw nsw i64 %indvars.iv3086, 1
  %exitcond3089.not = icmp eq i64 %indvars.iv.next3087, 9
  br i1 %exitcond3089.not, label %for.end163, label %for.cond145.preheader, !llvm.loop !83

for.end163:                                       ; preds = %for.inc161
  %258 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i479 = lshr i32 %258, 8
  %259 = and i32 %258, 255
  %260 = xor i32 %259, 249
  %idxprom.i.i.i482 = zext nneg i32 %260 to i64
  %arrayidx.i.i.i483 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i482
  %261 = load i32, ptr %arrayidx.i.i.i483, align 4, !tbaa !12
  %xor2.i.i.i484 = xor i32 %shr.i.i.i479, %261
  %shr.i8.i.i485 = lshr i32 %xor2.i.i.i484, 8
  %262 = and i32 %xor2.i.i.i484, 255
  %263 = xor i32 %262, 255
  %idxprom.i11.i.i488 = zext nneg i32 %263 to i64
  %arrayidx.i12.i.i489 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i488
  %264 = load i32, ptr %arrayidx.i12.i.i489, align 4, !tbaa !12
  %xor2.i13.i.i490 = xor i32 %shr.i8.i.i485, %264
  %shr.i14.i.i491 = lshr i32 %xor2.i13.i.i490, 8
  %265 = and i32 %xor2.i13.i.i490, 255
  %266 = xor i32 %265, 255
  %idxprom.i17.i.i494 = zext nneg i32 %266 to i64
  %arrayidx.i18.i.i495 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i494
  %267 = load i32, ptr %arrayidx.i18.i.i495, align 4, !tbaa !12
  %xor2.i19.i.i496 = xor i32 %shr.i14.i.i491, %267
  %shr.i20.i.i497 = lshr i32 %xor2.i19.i.i496, 8
  %268 = and i32 %xor2.i19.i.i496, 255
  %269 = xor i32 %268, 255
  %idxprom.i23.i.i500 = zext nneg i32 %269 to i64
  %arrayidx.i24.i.i501 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i500
  %270 = load i32, ptr %arrayidx.i24.i.i501, align 4, !tbaa !12
  %xor2.i25.i.i502 = xor i32 %shr.i20.i.i497, %270
  %shr.i26.i.i503 = lshr i32 %xor2.i25.i.i502, 8
  %271 = and i32 %xor2.i25.i.i502, 255
  %272 = xor i32 %271, 255
  %idxprom.i29.i.i506 = zext nneg i32 %272 to i64
  %arrayidx.i30.i.i507 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i506
  %273 = load i32, ptr %arrayidx.i30.i.i507, align 4, !tbaa !12
  %xor2.i31.i.i508 = xor i32 %shr.i26.i.i503, %273
  %shr.i32.i.i509 = lshr i32 %xor2.i31.i.i508, 8
  %274 = and i32 %xor2.i31.i.i508, 255
  %275 = xor i32 %274, 255
  %idxprom.i35.i.i512 = zext nneg i32 %275 to i64
  %arrayidx.i36.i.i513 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i512
  %276 = load i32, ptr %arrayidx.i36.i.i513, align 4, !tbaa !12
  %xor2.i37.i.i514 = xor i32 %shr.i32.i.i509, %276
  %shr.i38.i.i515 = lshr i32 %xor2.i37.i.i514, 8
  %277 = and i32 %xor2.i37.i.i514, 255
  %278 = xor i32 %277, 255
  %idxprom.i41.i.i518 = zext nneg i32 %278 to i64
  %arrayidx.i42.i.i519 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i518
  %279 = load i32, ptr %arrayidx.i42.i.i519, align 4, !tbaa !12
  %xor2.i43.i.i520 = xor i32 %shr.i38.i.i515, %279
  %shr.i44.i.i521 = lshr i32 %xor2.i43.i.i520, 8
  %280 = and i32 %xor2.i43.i.i520, 255
  %281 = xor i32 %280, 255
  %idxprom.i47.i.i523 = zext nneg i32 %281 to i64
  %arrayidx.i48.i.i524 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i523
  %282 = load i32, ptr %arrayidx.i48.i.i524, align 4, !tbaa !12
  %xor2.i49.i.i525 = xor i32 %shr.i44.i.i521, %282
  store i32 %xor2.i49.i.i525, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit530, label %if.then.i527

if.then.i527:                                     ; preds = %for.end163
  %283 = xor i32 %xor2.i49.i.i525, -1
  %xor.i528 = zext i32 %283 to i64
  %call.i529 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.25, i64 noundef %xor.i528)
  br label %transparent_crc.exit530

transparent_crc.exit530:                          ; preds = %for.end163, %if.then.i527
  %.b3244 = load i1, ptr @g_395, align 8
  %284 = select i1 %.b3244, i64 3, i64 -2
  call fastcc void @transparent_crc(i64 noundef %284, ptr noundef nonnull @.str.26, i32 noundef %print_hash_value.0)
  %285 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i531 = lshr i32 %285, 8
  %286 = and i32 %285, 255
  %287 = xor i32 %286, 151
  %idxprom.i.i.i534 = zext nneg i32 %287 to i64
  %arrayidx.i.i.i535 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i534
  %288 = load i32, ptr %arrayidx.i.i.i535, align 4, !tbaa !12
  %xor2.i.i.i536 = xor i32 %shr.i.i.i531, %288
  %shr.i8.i.i537 = lshr i32 %xor2.i.i.i536, 8
  %289 = and i32 %xor2.i.i.i536, 255
  %290 = xor i32 %289, 68
  %idxprom.i11.i.i540 = zext nneg i32 %290 to i64
  %arrayidx.i12.i.i541 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i540
  %291 = load i32, ptr %arrayidx.i12.i.i541, align 4, !tbaa !12
  %xor2.i13.i.i542 = xor i32 %shr.i8.i.i537, %291
  %shr.i14.i.i543 = lshr i32 %xor2.i13.i.i542, 8
  %292 = and i32 %xor2.i13.i.i542, 255
  %293 = xor i32 %292, 77
  %idxprom.i17.i.i546 = zext nneg i32 %293 to i64
  %arrayidx.i18.i.i547 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i546
  %294 = load i32, ptr %arrayidx.i18.i.i547, align 4, !tbaa !12
  %xor2.i19.i.i548 = xor i32 %shr.i14.i.i543, %294
  %shr.i20.i.i549 = lshr i32 %xor2.i19.i.i548, 8
  %295 = and i32 %xor2.i19.i.i548, 255
  %296 = xor i32 %295, 159
  %idxprom.i23.i.i552 = zext nneg i32 %296 to i64
  %arrayidx.i24.i.i553 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i552
  %297 = load i32, ptr %arrayidx.i24.i.i553, align 4, !tbaa !12
  %xor2.i25.i.i554 = xor i32 %shr.i20.i.i549, %297
  %shr.i26.i.i555 = lshr i32 %xor2.i25.i.i554, 8
  %298 = and i32 %xor2.i25.i.i554, 255
  %idxprom.i29.i.i558 = zext nneg i32 %298 to i64
  %arrayidx.i30.i.i559 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i558
  %299 = load i32, ptr %arrayidx.i30.i.i559, align 4, !tbaa !12
  %xor2.i31.i.i560 = xor i32 %shr.i26.i.i555, %299
  %shr.i32.i.i561 = lshr i32 %xor2.i31.i.i560, 8
  %300 = and i32 %xor2.i31.i.i560, 255
  %idxprom.i35.i.i564 = zext nneg i32 %300 to i64
  %arrayidx.i36.i.i565 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i564
  %301 = load i32, ptr %arrayidx.i36.i.i565, align 4, !tbaa !12
  %xor2.i37.i.i566 = xor i32 %shr.i32.i.i561, %301
  %shr.i38.i.i567 = lshr i32 %xor2.i37.i.i566, 8
  %302 = and i32 %xor2.i37.i.i566, 255
  %idxprom.i41.i.i570 = zext nneg i32 %302 to i64
  %arrayidx.i42.i.i571 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i570
  %303 = load i32, ptr %arrayidx.i42.i.i571, align 4, !tbaa !12
  %xor2.i43.i.i572 = xor i32 %shr.i38.i.i567, %303
  %shr.i44.i.i573 = lshr i32 %xor2.i43.i.i572, 8
  %304 = and i32 %xor2.i43.i.i572, 255
  %.tr.i45.masked.i.i574 = zext nneg i32 %304 to i64
  %arrayidx.i48.i.i576 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i574
  %305 = load i32, ptr %arrayidx.i48.i.i576, align 4, !tbaa !12
  %xor2.i49.i.i577 = xor i32 %shr.i44.i.i573, %305
  store i32 %xor2.i49.i.i577, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit582, label %if.then.i579

if.then.i579:                                     ; preds = %transparent_crc.exit530
  %306 = xor i32 %xor2.i49.i.i577, -1
  %xor.i580 = zext i32 %306 to i64
  %call.i581 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.27, i64 noundef %xor.i580)
  br label %transparent_crc.exit582

transparent_crc.exit582:                          ; preds = %transparent_crc.exit530, %if.then.i579
  call fastcc void @transparent_crc(i64 noundef 194, ptr noundef nonnull @.str.28, i32 noundef %print_hash_value.0)
  %307 = load volatile i16, ptr @g_485, align 2, !tbaa !15
  %conv167 = zext i16 %307 to i64
  call fastcc void @transparent_crc(i64 noundef %conv167, ptr noundef nonnull @.str.29, i32 noundef %print_hash_value.0)
  %308 = load i16, ptr @g_493, align 2, !tbaa !15
  %conv168 = zext i16 %308 to i64
  call fastcc void @transparent_crc(i64 noundef %conv168, ptr noundef nonnull @.str.30, i32 noundef %print_hash_value.0)
  %.b3246 = load i1, ptr @g_526, align 1
  %conv169 = select i1 %.b3246, i64 26, i64 7
  call fastcc void @transparent_crc(i64 noundef %conv169, ptr noundef nonnull @.str.31, i32 noundef %print_hash_value.0)
  %309 = load i32, ptr @g_534, align 4, !tbaa !12
  %conv170 = sext i32 %309 to i64
  call fastcc void @transparent_crc(i64 noundef %conv170, ptr noundef nonnull @.str.32, i32 noundef %print_hash_value.0)
  br label %for.cond175.preheader

for.cond175.preheader:                            ; preds = %transparent_crc.exit582, %for.inc190
  %indvars.iv3093 = phi i64 [ 0, %transparent_crc.exit582 ], [ %indvars.iv.next3094, %for.inc190 ]
  %310 = trunc nuw nsw i64 %indvars.iv3093 to i32
  br label %for.body178

for.body178:                                      ; preds = %for.cond175.preheader, %for.inc187
  %cmp176 = phi i1 [ true, %for.cond175.preheader ], [ false, %for.inc187 ]
  %indvars.iv3090 = phi i64 [ 0, %for.cond175.preheader ], [ 1, %for.inc187 ]
  %arrayidx182 = getelementptr inbounds nuw [4 x [2 x i64]], ptr @g_616, i64 0, i64 %indvars.iv3093, i64 %indvars.iv3090
  %311 = load i64, ptr %arrayidx182, align 8, !tbaa !24
  %312 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i583 = lshr i32 %312, 8
  %.tr.i.i.i584 = zext i32 %312 to i64
  %xor.narrow.i.i.i585 = xor i64 %311, %.tr.i.i.i584
  %idxprom.i.i.i586 = and i64 %xor.narrow.i.i.i585, 255
  %arrayidx.i.i.i587 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i586
  %313 = load i32, ptr %arrayidx.i.i.i587, align 4, !tbaa !12
  %xor2.i.i.i588 = xor i32 %shr.i.i.i583, %313
  %shr1.i.i589 = lshr i64 %311, 8
  %shr.i8.i.i590 = lshr i32 %xor2.i.i.i588, 8
  %.tr.i9.i.i591 = zext i32 %xor2.i.i.i588 to i64
  %xor.narrow.i10.i.i592 = xor i64 %shr1.i.i589, %.tr.i9.i.i591
  %idxprom.i11.i.i593 = and i64 %xor.narrow.i10.i.i592, 255
  %arrayidx.i12.i.i594 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i593
  %314 = load i32, ptr %arrayidx.i12.i.i594, align 4, !tbaa !12
  %xor2.i13.i.i595 = xor i32 %shr.i8.i.i590, %314
  %shr4.i.i596 = lshr i64 %311, 16
  %shr.i14.i.i597 = lshr i32 %xor2.i13.i.i595, 8
  %.tr.i15.i.i598 = zext i32 %xor2.i13.i.i595 to i64
  %xor.narrow.i16.i.i599 = xor i64 %shr4.i.i596, %.tr.i15.i.i598
  %idxprom.i17.i.i600 = and i64 %xor.narrow.i16.i.i599, 255
  %arrayidx.i18.i.i601 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i600
  %315 = load i32, ptr %arrayidx.i18.i.i601, align 4, !tbaa !12
  %xor2.i19.i.i602 = xor i32 %shr.i14.i.i597, %315
  %shr7.i.i603 = lshr i64 %311, 24
  %shr.i20.i.i604 = lshr i32 %xor2.i19.i.i602, 8
  %.tr.i21.i.i605 = zext i32 %xor2.i19.i.i602 to i64
  %xor.narrow.i22.i.i606 = xor i64 %shr7.i.i603, %.tr.i21.i.i605
  %idxprom.i23.i.i607 = and i64 %xor.narrow.i22.i.i606, 255
  %arrayidx.i24.i.i608 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i607
  %316 = load i32, ptr %arrayidx.i24.i.i608, align 4, !tbaa !12
  %xor2.i25.i.i609 = xor i32 %shr.i20.i.i604, %316
  %shr10.i.i610 = lshr i64 %311, 32
  %shr.i26.i.i611 = lshr i32 %xor2.i25.i.i609, 8
  %.tr.i27.i.i612 = zext i32 %xor2.i25.i.i609 to i64
  %xor.narrow.i28.i.i613 = xor i64 %shr10.i.i610, %.tr.i27.i.i612
  %idxprom.i29.i.i614 = and i64 %xor.narrow.i28.i.i613, 255
  %arrayidx.i30.i.i615 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i614
  %317 = load i32, ptr %arrayidx.i30.i.i615, align 4, !tbaa !12
  %xor2.i31.i.i616 = xor i32 %shr.i26.i.i611, %317
  %shr13.i.i617 = lshr i64 %311, 40
  %shr.i32.i.i618 = lshr i32 %xor2.i31.i.i616, 8
  %.tr.i33.i.i619 = zext i32 %xor2.i31.i.i616 to i64
  %xor.narrow.i34.i.i620 = xor i64 %shr13.i.i617, %.tr.i33.i.i619
  %idxprom.i35.i.i621 = and i64 %xor.narrow.i34.i.i620, 255
  %arrayidx.i36.i.i622 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i621
  %318 = load i32, ptr %arrayidx.i36.i.i622, align 4, !tbaa !12
  %xor2.i37.i.i623 = xor i32 %shr.i32.i.i618, %318
  %shr16.i.i624 = lshr i64 %311, 48
  %shr.i38.i.i625 = lshr i32 %xor2.i37.i.i623, 8
  %.tr.i39.i.i626 = zext i32 %xor2.i37.i.i623 to i64
  %xor.narrow.i40.i.i627 = xor i64 %shr16.i.i624, %.tr.i39.i.i626
  %idxprom.i41.i.i628 = and i64 %xor.narrow.i40.i.i627, 255
  %arrayidx.i42.i.i629 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i628
  %319 = load i32, ptr %arrayidx.i42.i.i629, align 4, !tbaa !12
  %xor2.i43.i.i630 = xor i32 %shr.i38.i.i625, %319
  %shr19.i.i631 = lshr i64 %311, 56
  %shr.i44.i.i632 = lshr i32 %xor2.i43.i.i630, 8
  %320 = and i32 %xor2.i43.i.i630, 255
  %.tr.i45.masked.i.i633 = zext nneg i32 %320 to i64
  %idxprom.i47.i.i634 = xor i64 %shr19.i.i631, %.tr.i45.masked.i.i633
  %arrayidx.i48.i.i635 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i634
  %321 = load i32, ptr %arrayidx.i48.i.i635, align 4, !tbaa !12
  %xor2.i49.i.i636 = xor i32 %shr.i44.i.i632, %321
  store i32 %xor2.i49.i.i636, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit641, label %if.then.i638

if.then.i638:                                     ; preds = %for.body178
  %322 = xor i32 %xor2.i49.i.i636, -1
  %xor.i639 = zext i32 %322 to i64
  %call.i640 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.33, i64 noundef %xor.i639)
  br label %transparent_crc.exit641

transparent_crc.exit641:                          ; preds = %for.body178, %if.then.i638
  br i1 %tobool748.not, label %for.inc187, label %if.then184

if.then184:                                       ; preds = %transparent_crc.exit641
  %323 = trunc nuw nsw i64 %indvars.iv3090 to i32
  %call185 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %310, i32 noundef %323)
  br label %for.inc187

for.inc187:                                       ; preds = %transparent_crc.exit641, %if.then184
  br i1 %cmp176, label %for.body178, label %for.inc190, !llvm.loop !84

for.inc190:                                       ; preds = %for.inc187
  %indvars.iv.next3094 = add nuw nsw i64 %indvars.iv3093, 1
  %exitcond3096.not = icmp eq i64 %indvars.iv.next3094, 4
  br i1 %exitcond3096.not, label %for.end192, label %for.cond175.preheader, !llvm.loop !85

for.end192:                                       ; preds = %for.inc190
  %324 = load i32, ptr @g_701, align 4, !tbaa !12
  %conv193 = zext i32 %324 to i64
  call fastcc void @transparent_crc(i64 noundef %conv193, ptr noundef nonnull @.str.34, i32 noundef %print_hash_value.0)
  %325 = load volatile i64, ptr @g_741, align 8, !tbaa !24
  call fastcc void @transparent_crc(i64 noundef %325, ptr noundef nonnull @.str.35, i32 noundef %print_hash_value.0)
  br label %for.cond198.preheader

for.cond198.preheader:                            ; preds = %for.end192, %for.inc223
  %cmp195 = phi i1 [ true, %for.end192 ], [ false, %for.inc223 ]
  %indvars.iv3121 = phi i64 [ 0, %for.end192 ], [ 1, %for.inc223 ]
  br i1 %tobool.not.i359, label %for.cond198.preheader.split.us, label %for.cond202.preheader.preheader

for.cond202.preheader.preheader:                  ; preds = %for.cond198.preheader
  %326 = trunc nuw nsw i64 %indvars.iv3121 to i32
  br label %for.cond202.preheader

for.cond198.preheader.split.us:                   ; preds = %for.cond198.preheader
  br i1 %tobool748.not, label %for.cond198.preheader.split.us.split.us, label %for.cond202.preheader.us.preheader

for.cond202.preheader.us.preheader:               ; preds = %for.cond198.preheader.split.us
  %327 = trunc nuw nsw i64 %indvars.iv3121 to i32
  br label %for.cond202.preheader.us

for.cond198.preheader.split.us.split.us:          ; preds = %for.cond198.preheader.split.us
  %crc32_context.promoted = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %for.cond202.preheader.us.us

for.cond202.preheader.us.us:                      ; preds = %for.inc220.split.us.us.split.us.us, %for.cond198.preheader.split.us.split.us
  %indvars.iv3117 = phi i64 [ %indvars.iv.next3118, %for.inc220.split.us.us.split.us.us ], [ 0, %for.cond198.preheader.split.us.split.us ]
  %xor2.i49.i.i695.us.us.us.lcssa.us3006 = phi i32 [ %xor2.i49.i.i695.us.us.us.us, %for.inc220.split.us.us.split.us.us ], [ %crc32_context.promoted, %for.cond198.preheader.split.us.split.us ]
  br label %for.body205.us.us.us.us

for.body205.us.us.us.us:                          ; preds = %for.body205.us.us.us.us, %for.cond202.preheader.us.us
  %indvars.iv3113 = phi i64 [ %indvars.iv.next3114, %for.body205.us.us.us.us ], [ 0, %for.cond202.preheader.us.us ]
  %xor2.i49.i.i695.us.us.us3005.us = phi i32 [ %xor2.i49.i.i695.us.us.us.us, %for.body205.us.us.us.us ], [ %xor2.i49.i.i695.us.us.us.lcssa.us3006, %for.cond202.preheader.us.us ]
  %arrayidx211.us.us.us.us = getelementptr inbounds nuw [2 x [8 x [8 x i8]]], ptr @g_906, i64 0, i64 %indvars.iv3121, i64 %indvars.iv3117, i64 %indvars.iv3113
  %328 = load volatile i8, ptr %arrayidx211.us.us.us.us, align 1, !tbaa !42
  %shr.i.i.i642.us.us.us.us = lshr i32 %xor2.i49.i.i695.us.us.us3005.us, 8
  %329 = and i32 %xor2.i49.i.i695.us.us.us3005.us, 255
  %330 = zext i8 %328 to i32
  %idxprom.i.i.i6452980.us.us.us.us = xor i32 %329, %330
  %idxprom.i.i.i645.us.us.us.us = zext nneg i32 %idxprom.i.i.i6452980.us.us.us.us to i64
  %arrayidx.i.i.i646.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i645.us.us.us.us
  %331 = load i32, ptr %arrayidx.i.i.i646.us.us.us.us, align 4, !tbaa !12
  %xor2.i.i.i647.us.us.us.us = xor i32 %shr.i.i.i642.us.us.us.us, %331
  %shr.i8.i.i649.us.us.us.us = lshr i32 %xor2.i.i.i647.us.us.us.us, 8
  %332 = and i32 %xor2.i.i.i647.us.us.us.us, 255
  %idxprom.i11.i.i652.us.us.us.us = zext nneg i32 %332 to i64
  %arrayidx.i12.i.i653.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i652.us.us.us.us
  %333 = load i32, ptr %arrayidx.i12.i.i653.us.us.us.us, align 4, !tbaa !12
  %xor2.i13.i.i654.us.us.us.us = xor i32 %shr.i8.i.i649.us.us.us.us, %333
  %shr.i14.i.i656.us.us.us.us = lshr i32 %xor2.i13.i.i654.us.us.us.us, 8
  %334 = and i32 %xor2.i13.i.i654.us.us.us.us, 255
  %idxprom.i17.i.i659.us.us.us.us = zext nneg i32 %334 to i64
  %arrayidx.i18.i.i660.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i659.us.us.us.us
  %335 = load i32, ptr %arrayidx.i18.i.i660.us.us.us.us, align 4, !tbaa !12
  %xor2.i19.i.i661.us.us.us.us = xor i32 %shr.i14.i.i656.us.us.us.us, %335
  %shr.i20.i.i663.us.us.us.us = lshr i32 %xor2.i19.i.i661.us.us.us.us, 8
  %336 = and i32 %xor2.i19.i.i661.us.us.us.us, 255
  %idxprom.i23.i.i666.us.us.us.us = zext nneg i32 %336 to i64
  %arrayidx.i24.i.i667.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i666.us.us.us.us
  %337 = load i32, ptr %arrayidx.i24.i.i667.us.us.us.us, align 4, !tbaa !12
  %xor2.i25.i.i668.us.us.us.us = xor i32 %shr.i20.i.i663.us.us.us.us, %337
  %shr.i26.i.i670.us.us.us.us = lshr i32 %xor2.i25.i.i668.us.us.us.us, 8
  %338 = and i32 %xor2.i25.i.i668.us.us.us.us, 255
  %idxprom.i29.i.i673.us.us.us.us = zext nneg i32 %338 to i64
  %arrayidx.i30.i.i674.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i673.us.us.us.us
  %339 = load i32, ptr %arrayidx.i30.i.i674.us.us.us.us, align 4, !tbaa !12
  %xor2.i31.i.i675.us.us.us.us = xor i32 %shr.i26.i.i670.us.us.us.us, %339
  %shr.i32.i.i677.us.us.us.us = lshr i32 %xor2.i31.i.i675.us.us.us.us, 8
  %340 = and i32 %xor2.i31.i.i675.us.us.us.us, 255
  %idxprom.i35.i.i680.us.us.us.us = zext nneg i32 %340 to i64
  %arrayidx.i36.i.i681.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i680.us.us.us.us
  %341 = load i32, ptr %arrayidx.i36.i.i681.us.us.us.us, align 4, !tbaa !12
  %xor2.i37.i.i682.us.us.us.us = xor i32 %shr.i32.i.i677.us.us.us.us, %341
  %shr.i38.i.i684.us.us.us.us = lshr i32 %xor2.i37.i.i682.us.us.us.us, 8
  %342 = and i32 %xor2.i37.i.i682.us.us.us.us, 255
  %idxprom.i41.i.i687.us.us.us.us = zext nneg i32 %342 to i64
  %arrayidx.i42.i.i688.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i687.us.us.us.us
  %343 = load i32, ptr %arrayidx.i42.i.i688.us.us.us.us, align 4, !tbaa !12
  %xor2.i43.i.i689.us.us.us.us = xor i32 %shr.i38.i.i684.us.us.us.us, %343
  %shr.i44.i.i691.us.us.us.us = lshr i32 %xor2.i43.i.i689.us.us.us.us, 8
  %344 = and i32 %xor2.i43.i.i689.us.us.us.us, 255
  %.tr.i45.masked.i.i692.us.us.us.us = zext nneg i32 %344 to i64
  %arrayidx.i48.i.i694.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i692.us.us.us.us
  %345 = load i32, ptr %arrayidx.i48.i.i694.us.us.us.us, align 4, !tbaa !12
  %xor2.i49.i.i695.us.us.us.us = xor i32 %shr.i44.i.i691.us.us.us.us, %345
  %indvars.iv.next3114 = add nuw nsw i64 %indvars.iv3113, 1
  %exitcond3116.not = icmp eq i64 %indvars.iv.next3114, 8
  br i1 %exitcond3116.not, label %for.inc220.split.us.us.split.us.us, label %for.body205.us.us.us.us, !llvm.loop !86

for.inc220.split.us.us.split.us.us:               ; preds = %for.body205.us.us.us.us
  %indvars.iv.next3118 = add nuw nsw i64 %indvars.iv3117, 1
  %exitcond3120.not = icmp eq i64 %indvars.iv.next3118, 8
  br i1 %exitcond3120.not, label %for.inc223.split.us.split.us, label %for.cond202.preheader.us.us, !llvm.loop !87

for.inc223.split.us.split.us:                     ; preds = %for.inc220.split.us.us.split.us.us
  store i32 %xor2.i49.i.i695.us.us.us.us, ptr @crc32_context, align 4, !tbaa !12
  br label %for.inc223

for.cond202.preheader.us:                         ; preds = %for.cond202.preheader.us.preheader, %for.inc220.split.us.us.split
  %indvars.iv3109 = phi i64 [ 0, %for.cond202.preheader.us.preheader ], [ %indvars.iv.next3110, %for.inc220.split.us.us.split ]
  %346 = trunc nuw nsw i64 %indvars.iv3109 to i32
  br label %for.body205.us.us

for.body205.us.us:                                ; preds = %for.body205.us.us, %for.cond202.preheader.us
  %indvars.iv3105 = phi i64 [ %indvars.iv.next3106, %for.body205.us.us ], [ 0, %for.cond202.preheader.us ]
  %arrayidx211.us.us = getelementptr inbounds nuw [2 x [8 x [8 x i8]]], ptr @g_906, i64 0, i64 %indvars.iv3121, i64 %indvars.iv3109, i64 %indvars.iv3105
  %347 = load volatile i8, ptr %arrayidx211.us.us, align 1, !tbaa !42
  %348 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i642.us.us = lshr i32 %348, 8
  %349 = and i32 %348, 255
  %350 = zext i8 %347 to i32
  %idxprom.i.i.i6452980.us.us = xor i32 %349, %350
  %idxprom.i.i.i645.us.us = zext nneg i32 %idxprom.i.i.i6452980.us.us to i64
  %arrayidx.i.i.i646.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i645.us.us
  %351 = load i32, ptr %arrayidx.i.i.i646.us.us, align 4, !tbaa !12
  %xor2.i.i.i647.us.us = xor i32 %shr.i.i.i642.us.us, %351
  %shr.i8.i.i649.us.us = lshr i32 %xor2.i.i.i647.us.us, 8
  %352 = and i32 %xor2.i.i.i647.us.us, 255
  %idxprom.i11.i.i652.us.us = zext nneg i32 %352 to i64
  %arrayidx.i12.i.i653.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i652.us.us
  %353 = load i32, ptr %arrayidx.i12.i.i653.us.us, align 4, !tbaa !12
  %xor2.i13.i.i654.us.us = xor i32 %shr.i8.i.i649.us.us, %353
  %shr.i14.i.i656.us.us = lshr i32 %xor2.i13.i.i654.us.us, 8
  %354 = and i32 %xor2.i13.i.i654.us.us, 255
  %idxprom.i17.i.i659.us.us = zext nneg i32 %354 to i64
  %arrayidx.i18.i.i660.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i659.us.us
  %355 = load i32, ptr %arrayidx.i18.i.i660.us.us, align 4, !tbaa !12
  %xor2.i19.i.i661.us.us = xor i32 %shr.i14.i.i656.us.us, %355
  %shr.i20.i.i663.us.us = lshr i32 %xor2.i19.i.i661.us.us, 8
  %356 = and i32 %xor2.i19.i.i661.us.us, 255
  %idxprom.i23.i.i666.us.us = zext nneg i32 %356 to i64
  %arrayidx.i24.i.i667.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i666.us.us
  %357 = load i32, ptr %arrayidx.i24.i.i667.us.us, align 4, !tbaa !12
  %xor2.i25.i.i668.us.us = xor i32 %shr.i20.i.i663.us.us, %357
  %shr.i26.i.i670.us.us = lshr i32 %xor2.i25.i.i668.us.us, 8
  %358 = and i32 %xor2.i25.i.i668.us.us, 255
  %idxprom.i29.i.i673.us.us = zext nneg i32 %358 to i64
  %arrayidx.i30.i.i674.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i673.us.us
  %359 = load i32, ptr %arrayidx.i30.i.i674.us.us, align 4, !tbaa !12
  %xor2.i31.i.i675.us.us = xor i32 %shr.i26.i.i670.us.us, %359
  %shr.i32.i.i677.us.us = lshr i32 %xor2.i31.i.i675.us.us, 8
  %360 = and i32 %xor2.i31.i.i675.us.us, 255
  %idxprom.i35.i.i680.us.us = zext nneg i32 %360 to i64
  %arrayidx.i36.i.i681.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i680.us.us
  %361 = load i32, ptr %arrayidx.i36.i.i681.us.us, align 4, !tbaa !12
  %xor2.i37.i.i682.us.us = xor i32 %shr.i32.i.i677.us.us, %361
  %shr.i38.i.i684.us.us = lshr i32 %xor2.i37.i.i682.us.us, 8
  %362 = and i32 %xor2.i37.i.i682.us.us, 255
  %idxprom.i41.i.i687.us.us = zext nneg i32 %362 to i64
  %arrayidx.i42.i.i688.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i687.us.us
  %363 = load i32, ptr %arrayidx.i42.i.i688.us.us, align 4, !tbaa !12
  %xor2.i43.i.i689.us.us = xor i32 %shr.i38.i.i684.us.us, %363
  %shr.i44.i.i691.us.us = lshr i32 %xor2.i43.i.i689.us.us, 8
  %364 = and i32 %xor2.i43.i.i689.us.us, 255
  %.tr.i45.masked.i.i692.us.us = zext nneg i32 %364 to i64
  %arrayidx.i48.i.i694.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i692.us.us
  %365 = load i32, ptr %arrayidx.i48.i.i694.us.us, align 4, !tbaa !12
  %xor2.i49.i.i695.us.us = xor i32 %shr.i44.i.i691.us.us, %365
  store i32 %xor2.i49.i.i695.us.us, ptr @crc32_context, align 4, !tbaa !12
  %366 = trunc nuw nsw i64 %indvars.iv3105 to i32
  %call215.us.us = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %327, i32 noundef %346, i32 noundef %366)
  %indvars.iv.next3106 = add nuw nsw i64 %indvars.iv3105, 1
  %exitcond3108.not = icmp eq i64 %indvars.iv.next3106, 8
  br i1 %exitcond3108.not, label %for.inc220.split.us.us.split, label %for.body205.us.us, !llvm.loop !86

for.inc220.split.us.us.split:                     ; preds = %for.body205.us.us
  %indvars.iv.next3110 = add nuw nsw i64 %indvars.iv3109, 1
  %exitcond3112.not = icmp eq i64 %indvars.iv.next3110, 8
  br i1 %exitcond3112.not, label %for.inc223, label %for.cond202.preheader.us, !llvm.loop !87

for.cond202.preheader:                            ; preds = %for.cond202.preheader.preheader, %for.inc220.split
  %indvars.iv3101 = phi i64 [ 0, %for.cond202.preheader.preheader ], [ %indvars.iv.next3102, %for.inc220.split ]
  %367 = trunc nuw nsw i64 %indvars.iv3101 to i32
  br label %for.body205

for.body205:                                      ; preds = %for.cond202.preheader, %for.inc217
  %indvars.iv3097 = phi i64 [ 0, %for.cond202.preheader ], [ %indvars.iv.next3098, %for.inc217 ]
  %arrayidx211 = getelementptr inbounds nuw [2 x [8 x [8 x i8]]], ptr @g_906, i64 0, i64 %indvars.iv3121, i64 %indvars.iv3101, i64 %indvars.iv3097
  %368 = load volatile i8, ptr %arrayidx211, align 1, !tbaa !42
  %369 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i642 = lshr i32 %369, 8
  %370 = and i32 %369, 255
  %371 = zext i8 %368 to i32
  %idxprom.i.i.i6452980 = xor i32 %370, %371
  %idxprom.i.i.i645 = zext nneg i32 %idxprom.i.i.i6452980 to i64
  %arrayidx.i.i.i646 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i645
  %372 = load i32, ptr %arrayidx.i.i.i646, align 4, !tbaa !12
  %xor2.i.i.i647 = xor i32 %shr.i.i.i642, %372
  %shr.i8.i.i649 = lshr i32 %xor2.i.i.i647, 8
  %373 = and i32 %xor2.i.i.i647, 255
  %idxprom.i11.i.i652 = zext nneg i32 %373 to i64
  %arrayidx.i12.i.i653 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i652
  %374 = load i32, ptr %arrayidx.i12.i.i653, align 4, !tbaa !12
  %xor2.i13.i.i654 = xor i32 %shr.i8.i.i649, %374
  %shr.i14.i.i656 = lshr i32 %xor2.i13.i.i654, 8
  %375 = and i32 %xor2.i13.i.i654, 255
  %idxprom.i17.i.i659 = zext nneg i32 %375 to i64
  %arrayidx.i18.i.i660 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i659
  %376 = load i32, ptr %arrayidx.i18.i.i660, align 4, !tbaa !12
  %xor2.i19.i.i661 = xor i32 %shr.i14.i.i656, %376
  %shr.i20.i.i663 = lshr i32 %xor2.i19.i.i661, 8
  %377 = and i32 %xor2.i19.i.i661, 255
  %idxprom.i23.i.i666 = zext nneg i32 %377 to i64
  %arrayidx.i24.i.i667 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i666
  %378 = load i32, ptr %arrayidx.i24.i.i667, align 4, !tbaa !12
  %xor2.i25.i.i668 = xor i32 %shr.i20.i.i663, %378
  %shr.i26.i.i670 = lshr i32 %xor2.i25.i.i668, 8
  %379 = and i32 %xor2.i25.i.i668, 255
  %idxprom.i29.i.i673 = zext nneg i32 %379 to i64
  %arrayidx.i30.i.i674 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i673
  %380 = load i32, ptr %arrayidx.i30.i.i674, align 4, !tbaa !12
  %xor2.i31.i.i675 = xor i32 %shr.i26.i.i670, %380
  %shr.i32.i.i677 = lshr i32 %xor2.i31.i.i675, 8
  %381 = and i32 %xor2.i31.i.i675, 255
  %idxprom.i35.i.i680 = zext nneg i32 %381 to i64
  %arrayidx.i36.i.i681 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i680
  %382 = load i32, ptr %arrayidx.i36.i.i681, align 4, !tbaa !12
  %xor2.i37.i.i682 = xor i32 %shr.i32.i.i677, %382
  %shr.i38.i.i684 = lshr i32 %xor2.i37.i.i682, 8
  %383 = and i32 %xor2.i37.i.i682, 255
  %idxprom.i41.i.i687 = zext nneg i32 %383 to i64
  %arrayidx.i42.i.i688 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i687
  %384 = load i32, ptr %arrayidx.i42.i.i688, align 4, !tbaa !12
  %xor2.i43.i.i689 = xor i32 %shr.i38.i.i684, %384
  %shr.i44.i.i691 = lshr i32 %xor2.i43.i.i689, 8
  %385 = and i32 %xor2.i43.i.i689, 255
  %.tr.i45.masked.i.i692 = zext nneg i32 %385 to i64
  %arrayidx.i48.i.i694 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i692
  %386 = load i32, ptr %arrayidx.i48.i.i694, align 4, !tbaa !12
  %xor2.i49.i.i695 = xor i32 %shr.i44.i.i691, %386
  store i32 %xor2.i49.i.i695, ptr @crc32_context, align 4, !tbaa !12
  %387 = xor i32 %xor2.i49.i.i695, -1
  %xor.i698 = zext i32 %387 to i64
  %call.i699 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.36, i64 noundef %xor.i698)
  br i1 %tobool748.not, label %for.inc217, label %if.then214

if.then214:                                       ; preds = %for.body205
  %388 = trunc nuw nsw i64 %indvars.iv3097 to i32
  %call215 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %326, i32 noundef %367, i32 noundef %388)
  br label %for.inc217

for.inc217:                                       ; preds = %for.body205, %if.then214
  %indvars.iv.next3098 = add nuw nsw i64 %indvars.iv3097, 1
  %exitcond3100.not = icmp eq i64 %indvars.iv.next3098, 8
  br i1 %exitcond3100.not, label %for.inc220.split, label %for.body205, !llvm.loop !86

for.inc220.split:                                 ; preds = %for.inc217
  %indvars.iv.next3102 = add nuw nsw i64 %indvars.iv3101, 1
  %exitcond3104.not = icmp eq i64 %indvars.iv.next3102, 8
  br i1 %exitcond3104.not, label %for.inc223, label %for.cond202.preheader, !llvm.loop !87

for.inc223:                                       ; preds = %for.inc220.split, %for.inc220.split.us.us.split, %for.inc223.split.us.split.us
  br i1 %cmp195, label %for.cond198.preheader, label %for.end225, !llvm.loop !88

for.end225:                                       ; preds = %for.inc223
  %389 = load volatile i32, ptr @g_933, align 4, !tbaa !12
  %conv226 = zext i32 %389 to i64
  call fastcc void @transparent_crc(i64 noundef %conv226, ptr noundef nonnull @.str.37, i32 noundef %print_hash_value.0)
  br label %for.cond231.preheader

for.cond231.preheader:                            ; preds = %for.end225, %for.inc256
  %cmp228 = phi i1 [ true, %for.end225 ], [ false, %for.inc256 ]
  %indvars.iv3132 = phi i64 [ 0, %for.end225 ], [ 1, %for.inc256 ]
  %390 = trunc nuw nsw i64 %indvars.iv3132 to i32
  br label %for.cond235.preheader

for.cond235.preheader:                            ; preds = %for.cond231.preheader, %for.inc253
  %indvars.iv3128 = phi i64 [ 0, %for.cond231.preheader ], [ %indvars.iv.next3129, %for.inc253 ]
  %391 = trunc nuw nsw i64 %indvars.iv3128 to i32
  br label %for.body238

for.body238:                                      ; preds = %for.cond235.preheader, %for.inc250
  %indvars.iv3124 = phi i64 [ 0, %for.cond235.preheader ], [ %indvars.iv.next3125, %for.inc250 ]
  %arrayidx244 = getelementptr inbounds nuw [2 x [10 x [3 x i32]]], ptr @g_938, i64 0, i64 %indvars.iv3132, i64 %indvars.iv3128, i64 %indvars.iv3124
  %392 = load i32, ptr %arrayidx244, align 4, !tbaa !12
  %conv245 = zext i32 %392 to i64
  %393 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i701 = lshr i32 %393, 8
  %xor.narrow.i.i.i7032979 = xor i32 %393, %392
  %394 = and i32 %xor.narrow.i.i.i7032979, 255
  %idxprom.i.i.i704 = zext nneg i32 %394 to i64
  %arrayidx.i.i.i705 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i704
  %395 = load i32, ptr %arrayidx.i.i.i705, align 4, !tbaa !12
  %xor2.i.i.i706 = xor i32 %shr.i.i.i701, %395
  %shr1.i.i707 = lshr i64 %conv245, 8
  %shr.i8.i.i708 = lshr i32 %xor2.i.i.i706, 8
  %.tr.i9.i.i709 = zext i32 %xor2.i.i.i706 to i64
  %xor.narrow.i10.i.i710 = xor i64 %shr1.i.i707, %.tr.i9.i.i709
  %idxprom.i11.i.i711 = and i64 %xor.narrow.i10.i.i710, 255
  %arrayidx.i12.i.i712 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i711
  %396 = load i32, ptr %arrayidx.i12.i.i712, align 4, !tbaa !12
  %xor2.i13.i.i713 = xor i32 %shr.i8.i.i708, %396
  %shr4.i.i714 = lshr i64 %conv245, 16
  %shr.i14.i.i715 = lshr i32 %xor2.i13.i.i713, 8
  %.tr.i15.i.i716 = zext i32 %xor2.i13.i.i713 to i64
  %xor.narrow.i16.i.i717 = xor i64 %shr4.i.i714, %.tr.i15.i.i716
  %idxprom.i17.i.i718 = and i64 %xor.narrow.i16.i.i717, 255
  %arrayidx.i18.i.i719 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i718
  %397 = load i32, ptr %arrayidx.i18.i.i719, align 4, !tbaa !12
  %xor2.i19.i.i720 = xor i32 %shr.i14.i.i715, %397
  %shr7.i.i721 = lshr i64 %conv245, 24
  %shr.i20.i.i722 = lshr i32 %xor2.i19.i.i720, 8
  %398 = and i32 %xor2.i19.i.i720, 255
  %.tr.i21.i.i723.masked = zext nneg i32 %398 to i64
  %idxprom.i23.i.i725 = xor i64 %shr7.i.i721, %.tr.i21.i.i723.masked
  %arrayidx.i24.i.i726 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i725
  %399 = load i32, ptr %arrayidx.i24.i.i726, align 4, !tbaa !12
  %xor2.i25.i.i727 = xor i32 %shr.i20.i.i722, %399
  %shr.i26.i.i729 = lshr i32 %xor2.i25.i.i727, 8
  %400 = and i32 %xor2.i25.i.i727, 255
  %idxprom.i29.i.i732 = zext nneg i32 %400 to i64
  %arrayidx.i30.i.i733 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i732
  %401 = load i32, ptr %arrayidx.i30.i.i733, align 4, !tbaa !12
  %xor2.i31.i.i734 = xor i32 %shr.i26.i.i729, %401
  %shr.i32.i.i736 = lshr i32 %xor2.i31.i.i734, 8
  %402 = and i32 %xor2.i31.i.i734, 255
  %idxprom.i35.i.i739 = zext nneg i32 %402 to i64
  %arrayidx.i36.i.i740 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i739
  %403 = load i32, ptr %arrayidx.i36.i.i740, align 4, !tbaa !12
  %xor2.i37.i.i741 = xor i32 %shr.i32.i.i736, %403
  %shr.i38.i.i743 = lshr i32 %xor2.i37.i.i741, 8
  %404 = and i32 %xor2.i37.i.i741, 255
  %idxprom.i41.i.i746 = zext nneg i32 %404 to i64
  %arrayidx.i42.i.i747 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i746
  %405 = load i32, ptr %arrayidx.i42.i.i747, align 4, !tbaa !12
  %xor2.i43.i.i748 = xor i32 %shr.i38.i.i743, %405
  %shr.i44.i.i750 = lshr i32 %xor2.i43.i.i748, 8
  %406 = and i32 %xor2.i43.i.i748, 255
  %.tr.i45.masked.i.i751 = zext nneg i32 %406 to i64
  %arrayidx.i48.i.i753 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i751
  %407 = load i32, ptr %arrayidx.i48.i.i753, align 4, !tbaa !12
  %xor2.i49.i.i754 = xor i32 %shr.i44.i.i750, %407
  store i32 %xor2.i49.i.i754, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit759, label %if.then.i756

if.then.i756:                                     ; preds = %for.body238
  %408 = xor i32 %xor2.i49.i.i754, -1
  %xor.i757 = zext i32 %408 to i64
  %call.i758 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.38, i64 noundef %xor.i757)
  br label %transparent_crc.exit759

transparent_crc.exit759:                          ; preds = %for.body238, %if.then.i756
  br i1 %tobool748.not, label %for.inc250, label %if.then247

if.then247:                                       ; preds = %transparent_crc.exit759
  %409 = trunc nuw nsw i64 %indvars.iv3124 to i32
  %call248 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %390, i32 noundef %391, i32 noundef %409)
  br label %for.inc250

for.inc250:                                       ; preds = %transparent_crc.exit759, %if.then247
  %indvars.iv.next3125 = add nuw nsw i64 %indvars.iv3124, 1
  %exitcond3127.not = icmp eq i64 %indvars.iv.next3125, 3
  br i1 %exitcond3127.not, label %for.inc253, label %for.body238, !llvm.loop !89

for.inc253:                                       ; preds = %for.inc250
  %indvars.iv.next3129 = add nuw nsw i64 %indvars.iv3128, 1
  %exitcond3131.not = icmp eq i64 %indvars.iv.next3129, 10
  br i1 %exitcond3131.not, label %for.inc256, label %for.cond235.preheader, !llvm.loop !90

for.inc256:                                       ; preds = %for.inc253
  br i1 %cmp228, label %for.cond231.preheader, label %for.cond267.preheader, !llvm.loop !91

for.cond267.preheader:                            ; preds = %for.inc256, %for.inc285
  %indvars.iv3139 = phi i64 [ %indvars.iv.next3140, %for.inc285 ], [ 0, %for.inc256 ]
  %410 = trunc nuw nsw i64 %indvars.iv3139 to i32
  br label %for.body270

for.body270:                                      ; preds = %for.cond267.preheader, %for.inc282
  %indvars.iv3135 = phi i64 [ 0, %for.cond267.preheader ], [ %indvars.iv.next3136, %for.inc282 ]
  %arrayidx276 = getelementptr inbounds nuw [7 x [7 x i32]], ptr @g_1085, i64 0, i64 %indvars.iv3139, i64 %indvars.iv3135
  %411 = load i32, ptr %arrayidx276, align 4, !tbaa !12
  %conv277 = sext i32 %411 to i64
  %412 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i760 = lshr i32 %412, 8
  %.tr.i.i.i761 = zext i32 %412 to i64
  %xor.narrow.i.i.i762 = xor i64 %.tr.i.i.i761, %conv277
  %idxprom.i.i.i763 = and i64 %xor.narrow.i.i.i762, 255
  %arrayidx.i.i.i764 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i763
  %413 = load i32, ptr %arrayidx.i.i.i764, align 4, !tbaa !12
  %xor2.i.i.i765 = xor i32 %shr.i.i.i760, %413
  %shr1.i.i766 = lshr i64 %conv277, 8
  %shr.i8.i.i767 = lshr i32 %xor2.i.i.i765, 8
  %.tr.i9.i.i768 = zext i32 %xor2.i.i.i765 to i64
  %xor.narrow.i10.i.i769 = xor i64 %shr1.i.i766, %.tr.i9.i.i768
  %idxprom.i11.i.i770 = and i64 %xor.narrow.i10.i.i769, 255
  %arrayidx.i12.i.i771 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i770
  %414 = load i32, ptr %arrayidx.i12.i.i771, align 4, !tbaa !12
  %xor2.i13.i.i772 = xor i32 %shr.i8.i.i767, %414
  %shr4.i.i773 = lshr i64 %conv277, 16
  %shr.i14.i.i774 = lshr i32 %xor2.i13.i.i772, 8
  %.tr.i15.i.i775 = zext i32 %xor2.i13.i.i772 to i64
  %xor.narrow.i16.i.i776 = xor i64 %shr4.i.i773, %.tr.i15.i.i775
  %idxprom.i17.i.i777 = and i64 %xor.narrow.i16.i.i776, 255
  %arrayidx.i18.i.i778 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i777
  %415 = load i32, ptr %arrayidx.i18.i.i778, align 4, !tbaa !12
  %xor2.i19.i.i779 = xor i32 %shr.i14.i.i774, %415
  %shr7.i.i780 = lshr i64 %conv277, 24
  %shr.i20.i.i781 = lshr i32 %xor2.i19.i.i779, 8
  %.tr.i21.i.i782 = zext i32 %xor2.i19.i.i779 to i64
  %xor.narrow.i22.i.i783 = xor i64 %shr7.i.i780, %.tr.i21.i.i782
  %idxprom.i23.i.i784 = and i64 %xor.narrow.i22.i.i783, 255
  %arrayidx.i24.i.i785 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i784
  %416 = load i32, ptr %arrayidx.i24.i.i785, align 4, !tbaa !12
  %xor2.i25.i.i786 = xor i32 %shr.i20.i.i781, %416
  %shr10.i.i787 = lshr i64 %conv277, 32
  %shr.i26.i.i788 = lshr i32 %xor2.i25.i.i786, 8
  %.tr.i27.i.i789 = zext i32 %xor2.i25.i.i786 to i64
  %xor.narrow.i28.i.i790 = xor i64 %shr10.i.i787, %.tr.i27.i.i789
  %idxprom.i29.i.i791 = and i64 %xor.narrow.i28.i.i790, 255
  %arrayidx.i30.i.i792 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i791
  %417 = load i32, ptr %arrayidx.i30.i.i792, align 4, !tbaa !12
  %xor2.i31.i.i793 = xor i32 %shr.i26.i.i788, %417
  %shr13.i.i794 = lshr i64 %conv277, 40
  %shr.i32.i.i795 = lshr i32 %xor2.i31.i.i793, 8
  %.tr.i33.i.i796 = zext i32 %xor2.i31.i.i793 to i64
  %xor.narrow.i34.i.i797 = xor i64 %shr13.i.i794, %.tr.i33.i.i796
  %idxprom.i35.i.i798 = and i64 %xor.narrow.i34.i.i797, 255
  %arrayidx.i36.i.i799 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i798
  %418 = load i32, ptr %arrayidx.i36.i.i799, align 4, !tbaa !12
  %xor2.i37.i.i800 = xor i32 %shr.i32.i.i795, %418
  %shr16.i.i801 = lshr i64 %conv277, 48
  %shr.i38.i.i802 = lshr i32 %xor2.i37.i.i800, 8
  %.tr.i39.i.i803 = zext i32 %xor2.i37.i.i800 to i64
  %xor.narrow.i40.i.i804 = xor i64 %shr16.i.i801, %.tr.i39.i.i803
  %idxprom.i41.i.i805 = and i64 %xor.narrow.i40.i.i804, 255
  %arrayidx.i42.i.i806 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i805
  %419 = load i32, ptr %arrayidx.i42.i.i806, align 4, !tbaa !12
  %xor2.i43.i.i807 = xor i32 %shr.i38.i.i802, %419
  %shr19.i.i808 = lshr i64 %conv277, 56
  %shr.i44.i.i809 = lshr i32 %xor2.i43.i.i807, 8
  %420 = and i32 %xor2.i43.i.i807, 255
  %.tr.i45.masked.i.i810 = zext nneg i32 %420 to i64
  %idxprom.i47.i.i811 = xor i64 %shr19.i.i808, %.tr.i45.masked.i.i810
  %arrayidx.i48.i.i812 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i811
  %421 = load i32, ptr %arrayidx.i48.i.i812, align 4, !tbaa !12
  %xor2.i49.i.i813 = xor i32 %shr.i44.i.i809, %421
  store i32 %xor2.i49.i.i813, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit818, label %if.then.i815

if.then.i815:                                     ; preds = %for.body270
  %422 = xor i32 %xor2.i49.i.i813, -1
  %xor.i816 = zext i32 %422 to i64
  %call.i817 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.39, i64 noundef %xor.i816)
  br label %transparent_crc.exit818

transparent_crc.exit818:                          ; preds = %for.body270, %if.then.i815
  br i1 %tobool748.not, label %for.inc282, label %if.then279

if.then279:                                       ; preds = %transparent_crc.exit818
  %423 = trunc nuw nsw i64 %indvars.iv3135 to i32
  %call280 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 0, i32 noundef %410, i32 noundef %423)
  br label %for.inc282

for.inc282:                                       ; preds = %transparent_crc.exit818, %if.then279
  %indvars.iv.next3136 = add nuw nsw i64 %indvars.iv3135, 1
  %exitcond3138.not = icmp eq i64 %indvars.iv.next3136, 7
  br i1 %exitcond3138.not, label %for.inc285, label %for.body270, !llvm.loop !92

for.inc285:                                       ; preds = %for.inc282
  %indvars.iv.next3140 = add nuw nsw i64 %indvars.iv3139, 1
  %exitcond3142.not = icmp eq i64 %indvars.iv.next3140, 7
  br i1 %exitcond3142.not, label %for.body294, label %for.cond267.preheader, !llvm.loop !93

for.body294:                                      ; preds = %for.inc285, %for.inc301
  %indvars.iv3143 = phi i64 [ %indvars.iv.next3144, %for.inc301 ], [ 0, %for.inc285 ]
  %arrayidx296 = getelementptr inbounds nuw [4 x i64], ptr @g_1109, i64 0, i64 %indvars.iv3143
  %424 = load i64, ptr %arrayidx296, align 8, !tbaa !24
  call fastcc void @transparent_crc(i64 noundef %424, ptr noundef nonnull @.str.40, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc301, label %if.then298

if.then298:                                       ; preds = %for.body294
  %425 = trunc nuw nsw i64 %indvars.iv3143 to i32
  %call299 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %425)
  br label %for.inc301

for.inc301:                                       ; preds = %for.body294, %if.then298
  %indvars.iv.next3144 = add nuw nsw i64 %indvars.iv3143, 1
  %exitcond3146.not = icmp eq i64 %indvars.iv.next3144, 4
  br i1 %exitcond3146.not, label %for.end303, label %for.body294, !llvm.loop !94

for.end303:                                       ; preds = %for.inc301
  %426 = load volatile i32, ptr @g_1131, align 4, !tbaa !12
  %conv304 = zext i32 %426 to i64
  call fastcc void @transparent_crc(i64 noundef %conv304, ptr noundef nonnull @.str.41, i32 noundef %print_hash_value.0)
  %427 = load i32, ptr @g_1170, align 4, !tbaa !12
  %conv305 = sext i32 %427 to i64
  call fastcc void @transparent_crc(i64 noundef %conv305, ptr noundef nonnull @.str.42, i32 noundef %print_hash_value.0)
  %428 = load volatile i64, ptr @g_1179, align 8, !tbaa !24
  call fastcc void @transparent_crc(i64 noundef %428, ptr noundef nonnull @.str.43, i32 noundef %print_hash_value.0)
  %429 = load i64, ptr @g_1421, align 8, !tbaa !24
  call fastcc void @transparent_crc(i64 noundef %429, ptr noundef nonnull @.str.44, i32 noundef %print_hash_value.0)
  %430 = load i32, ptr @g_1422, align 4, !tbaa !12
  %conv306 = sext i32 %430 to i64
  call fastcc void @transparent_crc(i64 noundef %conv306, ptr noundef nonnull @.str.45, i32 noundef %print_hash_value.0)
  br label %for.cond311.preheader

for.cond311.preheader:                            ; preds = %for.end303, %for.inc326
  %indvars.iv3151 = phi i64 [ 0, %for.end303 ], [ %indvars.iv.next3152, %for.inc326 ]
  %431 = trunc nuw nsw i64 %indvars.iv3151 to i32
  br label %for.body314

for.body314:                                      ; preds = %for.cond311.preheader, %for.inc323
  %indvars.iv3147 = phi i64 [ 0, %for.cond311.preheader ], [ %indvars.iv.next3148, %for.inc323 ]
  %arrayidx318 = getelementptr inbounds nuw [3 x [5 x i64]], ptr @g_1504, i64 0, i64 %indvars.iv3151, i64 %indvars.iv3147
  %432 = load volatile i64, ptr %arrayidx318, align 8, !tbaa !24
  %433 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i819 = lshr i32 %433, 8
  %.tr.i.i.i820 = zext i32 %433 to i64
  %xor.narrow.i.i.i821 = xor i64 %432, %.tr.i.i.i820
  %idxprom.i.i.i822 = and i64 %xor.narrow.i.i.i821, 255
  %arrayidx.i.i.i823 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i822
  %434 = load i32, ptr %arrayidx.i.i.i823, align 4, !tbaa !12
  %xor2.i.i.i824 = xor i32 %shr.i.i.i819, %434
  %shr1.i.i825 = lshr i64 %432, 8
  %shr.i8.i.i826 = lshr i32 %xor2.i.i.i824, 8
  %.tr.i9.i.i827 = zext i32 %xor2.i.i.i824 to i64
  %xor.narrow.i10.i.i828 = xor i64 %shr1.i.i825, %.tr.i9.i.i827
  %idxprom.i11.i.i829 = and i64 %xor.narrow.i10.i.i828, 255
  %arrayidx.i12.i.i830 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i829
  %435 = load i32, ptr %arrayidx.i12.i.i830, align 4, !tbaa !12
  %xor2.i13.i.i831 = xor i32 %shr.i8.i.i826, %435
  %shr4.i.i832 = lshr i64 %432, 16
  %shr.i14.i.i833 = lshr i32 %xor2.i13.i.i831, 8
  %.tr.i15.i.i834 = zext i32 %xor2.i13.i.i831 to i64
  %xor.narrow.i16.i.i835 = xor i64 %shr4.i.i832, %.tr.i15.i.i834
  %idxprom.i17.i.i836 = and i64 %xor.narrow.i16.i.i835, 255
  %arrayidx.i18.i.i837 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i836
  %436 = load i32, ptr %arrayidx.i18.i.i837, align 4, !tbaa !12
  %xor2.i19.i.i838 = xor i32 %shr.i14.i.i833, %436
  %shr7.i.i839 = lshr i64 %432, 24
  %shr.i20.i.i840 = lshr i32 %xor2.i19.i.i838, 8
  %.tr.i21.i.i841 = zext i32 %xor2.i19.i.i838 to i64
  %xor.narrow.i22.i.i842 = xor i64 %shr7.i.i839, %.tr.i21.i.i841
  %idxprom.i23.i.i843 = and i64 %xor.narrow.i22.i.i842, 255
  %arrayidx.i24.i.i844 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i843
  %437 = load i32, ptr %arrayidx.i24.i.i844, align 4, !tbaa !12
  %xor2.i25.i.i845 = xor i32 %shr.i20.i.i840, %437
  %shr10.i.i846 = lshr i64 %432, 32
  %shr.i26.i.i847 = lshr i32 %xor2.i25.i.i845, 8
  %.tr.i27.i.i848 = zext i32 %xor2.i25.i.i845 to i64
  %xor.narrow.i28.i.i849 = xor i64 %shr10.i.i846, %.tr.i27.i.i848
  %idxprom.i29.i.i850 = and i64 %xor.narrow.i28.i.i849, 255
  %arrayidx.i30.i.i851 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i850
  %438 = load i32, ptr %arrayidx.i30.i.i851, align 4, !tbaa !12
  %xor2.i31.i.i852 = xor i32 %shr.i26.i.i847, %438
  %shr13.i.i853 = lshr i64 %432, 40
  %shr.i32.i.i854 = lshr i32 %xor2.i31.i.i852, 8
  %.tr.i33.i.i855 = zext i32 %xor2.i31.i.i852 to i64
  %xor.narrow.i34.i.i856 = xor i64 %shr13.i.i853, %.tr.i33.i.i855
  %idxprom.i35.i.i857 = and i64 %xor.narrow.i34.i.i856, 255
  %arrayidx.i36.i.i858 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i857
  %439 = load i32, ptr %arrayidx.i36.i.i858, align 4, !tbaa !12
  %xor2.i37.i.i859 = xor i32 %shr.i32.i.i854, %439
  %shr16.i.i860 = lshr i64 %432, 48
  %shr.i38.i.i861 = lshr i32 %xor2.i37.i.i859, 8
  %.tr.i39.i.i862 = zext i32 %xor2.i37.i.i859 to i64
  %xor.narrow.i40.i.i863 = xor i64 %shr16.i.i860, %.tr.i39.i.i862
  %idxprom.i41.i.i864 = and i64 %xor.narrow.i40.i.i863, 255
  %arrayidx.i42.i.i865 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i864
  %440 = load i32, ptr %arrayidx.i42.i.i865, align 4, !tbaa !12
  %xor2.i43.i.i866 = xor i32 %shr.i38.i.i861, %440
  %shr19.i.i867 = lshr i64 %432, 56
  %shr.i44.i.i868 = lshr i32 %xor2.i43.i.i866, 8
  %441 = and i32 %xor2.i43.i.i866, 255
  %.tr.i45.masked.i.i869 = zext nneg i32 %441 to i64
  %idxprom.i47.i.i870 = xor i64 %shr19.i.i867, %.tr.i45.masked.i.i869
  %arrayidx.i48.i.i871 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i870
  %442 = load i32, ptr %arrayidx.i48.i.i871, align 4, !tbaa !12
  %xor2.i49.i.i872 = xor i32 %shr.i44.i.i868, %442
  store i32 %xor2.i49.i.i872, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit877, label %if.then.i874

if.then.i874:                                     ; preds = %for.body314
  %443 = xor i32 %xor2.i49.i.i872, -1
  %xor.i875 = zext i32 %443 to i64
  %call.i876 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.46, i64 noundef %xor.i875)
  br label %transparent_crc.exit877

transparent_crc.exit877:                          ; preds = %for.body314, %if.then.i874
  br i1 %tobool748.not, label %for.inc323, label %if.then320

if.then320:                                       ; preds = %transparent_crc.exit877
  %444 = trunc nuw nsw i64 %indvars.iv3147 to i32
  %call321 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %431, i32 noundef %444)
  br label %for.inc323

for.inc323:                                       ; preds = %transparent_crc.exit877, %if.then320
  %indvars.iv.next3148 = add nuw nsw i64 %indvars.iv3147, 1
  %exitcond3150.not = icmp eq i64 %indvars.iv.next3148, 5
  br i1 %exitcond3150.not, label %for.inc326, label %for.body314, !llvm.loop !95

for.inc326:                                       ; preds = %for.inc323
  %indvars.iv.next3152 = add nuw nsw i64 %indvars.iv3151, 1
  %exitcond3154.not = icmp eq i64 %indvars.iv.next3152, 3
  br i1 %exitcond3154.not, label %for.end328, label %for.cond311.preheader, !llvm.loop !96

for.end328:                                       ; preds = %for.inc326
  %445 = load volatile i8, ptr @g_1849, align 1, !tbaa !42
  %conv329 = sext i8 %445 to i64
  call fastcc void @transparent_crc(i64 noundef %conv329, ptr noundef nonnull @.str.47, i32 noundef %print_hash_value.0)
  br label %for.body333

for.body333:                                      ; preds = %for.end328, %for.inc341
  %cmp331 = phi i1 [ true, %for.end328 ], [ false, %for.inc341 ]
  %i.133017 = phi i32 [ 0, %for.end328 ], [ 1, %for.inc341 ]
  call fastcc void @transparent_crc(i64 noundef 2, ptr noundef nonnull @.str.48, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc341, label %if.then338

if.then338:                                       ; preds = %for.body333
  %call339 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.133017)
  br label %for.inc341

for.inc341:                                       ; preds = %for.body333, %if.then338
  br i1 %cmp331, label %for.body333, label %for.end343, !llvm.loop !97

for.end343:                                       ; preds = %for.inc341
  %446 = load i32, ptr @g_1979, align 4, !tbaa !12
  %conv344 = zext i32 %446 to i64
  call fastcc void @transparent_crc(i64 noundef %conv344, ptr noundef nonnull @.str.49, i32 noundef %print_hash_value.0)
  %.b3245 = load i1, ptr @g_1980, align 4
  %conv345 = select i1 %.b3245, i64 4294967292, i64 0
  call fastcc void @transparent_crc(i64 noundef %conv345, ptr noundef nonnull @.str.50, i32 noundef %print_hash_value.0)
  %447 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i878 = lshr i32 %447, 8
  %448 = and i32 %447, 255
  %449 = xor i32 %448, 54
  %idxprom.i.i.i881 = zext nneg i32 %449 to i64
  %arrayidx.i.i.i882 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i881
  %450 = load i32, ptr %arrayidx.i.i.i882, align 4, !tbaa !12
  %xor2.i.i.i883 = xor i32 %shr.i.i.i878, %450
  %shr.i8.i.i884 = lshr i32 %xor2.i.i.i883, 8
  %451 = and i32 %xor2.i.i.i883, 255
  %452 = xor i32 %451, 5
  %idxprom.i11.i.i887 = zext nneg i32 %452 to i64
  %arrayidx.i12.i.i888 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i887
  %453 = load i32, ptr %arrayidx.i12.i.i888, align 4, !tbaa !12
  %xor2.i13.i.i889 = xor i32 %shr.i8.i.i884, %453
  %shr.i14.i.i890 = lshr i32 %xor2.i13.i.i889, 8
  %454 = and i32 %xor2.i13.i.i889, 255
  %455 = xor i32 %454, 15
  %idxprom.i17.i.i893 = zext nneg i32 %455 to i64
  %arrayidx.i18.i.i894 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i893
  %456 = load i32, ptr %arrayidx.i18.i.i894, align 4, !tbaa !12
  %xor2.i19.i.i895 = xor i32 %shr.i14.i.i890, %456
  %shr.i20.i.i896 = lshr i32 %xor2.i19.i.i895, 8
  %457 = and i32 %xor2.i19.i.i895, 255
  %458 = xor i32 %457, 153
  %idxprom.i23.i.i899 = zext nneg i32 %458 to i64
  %arrayidx.i24.i.i900 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i899
  %459 = load i32, ptr %arrayidx.i24.i.i900, align 4, !tbaa !12
  %xor2.i25.i.i901 = xor i32 %shr.i20.i.i896, %459
  %shr.i26.i.i902 = lshr i32 %xor2.i25.i.i901, 8
  %460 = and i32 %xor2.i25.i.i901, 255
  %idxprom.i29.i.i905 = zext nneg i32 %460 to i64
  %arrayidx.i30.i.i906 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i905
  %461 = load i32, ptr %arrayidx.i30.i.i906, align 4, !tbaa !12
  %xor2.i31.i.i907 = xor i32 %shr.i26.i.i902, %461
  %shr.i32.i.i908 = lshr i32 %xor2.i31.i.i907, 8
  %462 = and i32 %xor2.i31.i.i907, 255
  %idxprom.i35.i.i911 = zext nneg i32 %462 to i64
  %arrayidx.i36.i.i912 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i911
  %463 = load i32, ptr %arrayidx.i36.i.i912, align 4, !tbaa !12
  %xor2.i37.i.i913 = xor i32 %shr.i32.i.i908, %463
  %shr.i38.i.i914 = lshr i32 %xor2.i37.i.i913, 8
  %464 = and i32 %xor2.i37.i.i913, 255
  %idxprom.i41.i.i917 = zext nneg i32 %464 to i64
  %arrayidx.i42.i.i918 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i917
  %465 = load i32, ptr %arrayidx.i42.i.i918, align 4, !tbaa !12
  %xor2.i43.i.i919 = xor i32 %shr.i38.i.i914, %465
  %shr.i44.i.i920 = lshr i32 %xor2.i43.i.i919, 8
  %466 = and i32 %xor2.i43.i.i919, 255
  %.tr.i45.masked.i.i921 = zext nneg i32 %466 to i64
  %arrayidx.i48.i.i923 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i921
  %467 = load i32, ptr %arrayidx.i48.i.i923, align 4, !tbaa !12
  %xor2.i49.i.i924 = xor i32 %shr.i44.i.i920, %467
  store i32 %xor2.i49.i.i924, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %for.cond351.preheader.preheader, label %if.then.i926

if.then.i926:                                     ; preds = %for.end343
  %468 = xor i32 %xor2.i49.i.i924, -1
  %xor.i927 = zext i32 %468 to i64
  %call.i928 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.51, i64 noundef %xor.i927)
  br label %for.cond351.preheader.preheader

for.cond351.preheader.preheader:                  ; preds = %for.end343, %if.then.i926
  br label %for.cond351.preheader

for.cond351.preheader:                            ; preds = %for.cond351.preheader.preheader, %for.inc367
  %indvars.iv3159 = phi i64 [ %indvars.iv.next3160, %for.inc367 ], [ 0, %for.cond351.preheader.preheader ]
  %469 = trunc nuw nsw i64 %indvars.iv3159 to i32
  br label %for.body354

for.body354:                                      ; preds = %for.cond351.preheader, %for.inc364
  %indvars.iv3155 = phi i64 [ 0, %for.cond351.preheader ], [ %indvars.iv.next3156, %for.inc364 ]
  %arrayidx358 = getelementptr inbounds nuw [4 x [3 x i32]], ptr @g_1982, i64 0, i64 %indvars.iv3159, i64 %indvars.iv3155
  %470 = load i32, ptr %arrayidx358, align 4, !tbaa !12
  %conv359 = zext i32 %470 to i64
  %471 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i930 = lshr i32 %471, 8
  %xor.narrow.i.i.i9322978 = xor i32 %471, %470
  %472 = and i32 %xor.narrow.i.i.i9322978, 255
  %idxprom.i.i.i933 = zext nneg i32 %472 to i64
  %arrayidx.i.i.i934 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i933
  %473 = load i32, ptr %arrayidx.i.i.i934, align 4, !tbaa !12
  %xor2.i.i.i935 = xor i32 %shr.i.i.i930, %473
  %shr1.i.i936 = lshr i64 %conv359, 8
  %shr.i8.i.i937 = lshr i32 %xor2.i.i.i935, 8
  %.tr.i9.i.i938 = zext i32 %xor2.i.i.i935 to i64
  %xor.narrow.i10.i.i939 = xor i64 %shr1.i.i936, %.tr.i9.i.i938
  %idxprom.i11.i.i940 = and i64 %xor.narrow.i10.i.i939, 255
  %arrayidx.i12.i.i941 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i940
  %474 = load i32, ptr %arrayidx.i12.i.i941, align 4, !tbaa !12
  %xor2.i13.i.i942 = xor i32 %shr.i8.i.i937, %474
  %shr4.i.i943 = lshr i64 %conv359, 16
  %shr.i14.i.i944 = lshr i32 %xor2.i13.i.i942, 8
  %.tr.i15.i.i945 = zext i32 %xor2.i13.i.i942 to i64
  %xor.narrow.i16.i.i946 = xor i64 %shr4.i.i943, %.tr.i15.i.i945
  %idxprom.i17.i.i947 = and i64 %xor.narrow.i16.i.i946, 255
  %arrayidx.i18.i.i948 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i947
  %475 = load i32, ptr %arrayidx.i18.i.i948, align 4, !tbaa !12
  %xor2.i19.i.i949 = xor i32 %shr.i14.i.i944, %475
  %shr7.i.i950 = lshr i64 %conv359, 24
  %shr.i20.i.i951 = lshr i32 %xor2.i19.i.i949, 8
  %476 = and i32 %xor2.i19.i.i949, 255
  %.tr.i21.i.i952.masked = zext nneg i32 %476 to i64
  %idxprom.i23.i.i954 = xor i64 %shr7.i.i950, %.tr.i21.i.i952.masked
  %arrayidx.i24.i.i955 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i954
  %477 = load i32, ptr %arrayidx.i24.i.i955, align 4, !tbaa !12
  %xor2.i25.i.i956 = xor i32 %shr.i20.i.i951, %477
  %shr.i26.i.i958 = lshr i32 %xor2.i25.i.i956, 8
  %478 = and i32 %xor2.i25.i.i956, 255
  %idxprom.i29.i.i961 = zext nneg i32 %478 to i64
  %arrayidx.i30.i.i962 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i961
  %479 = load i32, ptr %arrayidx.i30.i.i962, align 4, !tbaa !12
  %xor2.i31.i.i963 = xor i32 %shr.i26.i.i958, %479
  %shr.i32.i.i965 = lshr i32 %xor2.i31.i.i963, 8
  %480 = and i32 %xor2.i31.i.i963, 255
  %idxprom.i35.i.i968 = zext nneg i32 %480 to i64
  %arrayidx.i36.i.i969 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i968
  %481 = load i32, ptr %arrayidx.i36.i.i969, align 4, !tbaa !12
  %xor2.i37.i.i970 = xor i32 %shr.i32.i.i965, %481
  %shr.i38.i.i972 = lshr i32 %xor2.i37.i.i970, 8
  %482 = and i32 %xor2.i37.i.i970, 255
  %idxprom.i41.i.i975 = zext nneg i32 %482 to i64
  %arrayidx.i42.i.i976 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i975
  %483 = load i32, ptr %arrayidx.i42.i.i976, align 4, !tbaa !12
  %xor2.i43.i.i977 = xor i32 %shr.i38.i.i972, %483
  %shr.i44.i.i979 = lshr i32 %xor2.i43.i.i977, 8
  %484 = and i32 %xor2.i43.i.i977, 255
  %.tr.i45.masked.i.i980 = zext nneg i32 %484 to i64
  %arrayidx.i48.i.i982 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i980
  %485 = load i32, ptr %arrayidx.i48.i.i982, align 4, !tbaa !12
  %xor2.i49.i.i983 = xor i32 %shr.i44.i.i979, %485
  store i32 %xor2.i49.i.i983, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit988, label %if.then.i985

if.then.i985:                                     ; preds = %for.body354
  %486 = xor i32 %xor2.i49.i.i983, -1
  %xor.i986 = zext i32 %486 to i64
  %call.i987 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.52, i64 noundef %xor.i986)
  br label %transparent_crc.exit988

transparent_crc.exit988:                          ; preds = %for.body354, %if.then.i985
  br i1 %tobool748.not, label %for.inc364, label %if.then361

if.then361:                                       ; preds = %transparent_crc.exit988
  %487 = trunc nuw nsw i64 %indvars.iv3155 to i32
  %call362 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %469, i32 noundef %487)
  br label %for.inc364

for.inc364:                                       ; preds = %transparent_crc.exit988, %if.then361
  %indvars.iv.next3156 = add nuw nsw i64 %indvars.iv3155, 1
  %exitcond3158.not = icmp eq i64 %indvars.iv.next3156, 3
  br i1 %exitcond3158.not, label %for.inc367, label %for.body354, !llvm.loop !98

for.inc367:                                       ; preds = %for.inc364
  %indvars.iv.next3160 = add nuw nsw i64 %indvars.iv3159, 1
  %exitcond3162.not = icmp eq i64 %indvars.iv.next3160, 4
  br i1 %exitcond3162.not, label %for.end369, label %for.cond351.preheader, !llvm.loop !99

for.end369:                                       ; preds = %for.inc367
  call fastcc void @transparent_crc(i64 noundef 7, ptr noundef nonnull @.str.53, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 4294967269, ptr noundef nonnull @.str.54, i32 noundef %print_hash_value.0)
  %488 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i989 = lshr i32 %488, 8
  %489 = and i32 %488, 255
  %idxprom.i.i.i992 = zext nneg i32 %489 to i64
  %arrayidx.i.i.i993 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i992
  %490 = load i32, ptr %arrayidx.i.i.i993, align 4, !tbaa !12
  %xor2.i.i.i994 = xor i32 %shr.i.i.i989, %490
  %shr.i8.i.i995 = lshr i32 %xor2.i.i.i994, 8
  %491 = and i32 %xor2.i.i.i994, 255
  %idxprom.i11.i.i998 = zext nneg i32 %491 to i64
  %arrayidx.i12.i.i999 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i998
  %492 = load i32, ptr %arrayidx.i12.i.i999, align 4, !tbaa !12
  %xor2.i13.i.i1000 = xor i32 %shr.i8.i.i995, %492
  %shr.i14.i.i1001 = lshr i32 %xor2.i13.i.i1000, 8
  %493 = and i32 %xor2.i13.i.i1000, 255
  %idxprom.i17.i.i1004 = zext nneg i32 %493 to i64
  %arrayidx.i18.i.i1005 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1004
  %494 = load i32, ptr %arrayidx.i18.i.i1005, align 4, !tbaa !12
  %xor2.i19.i.i1006 = xor i32 %shr.i14.i.i1001, %494
  %shr.i20.i.i1007 = lshr i32 %xor2.i19.i.i1006, 8
  %495 = and i32 %xor2.i19.i.i1006, 255
  %idxprom.i23.i.i1010 = zext nneg i32 %495 to i64
  %arrayidx.i24.i.i1011 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1010
  %496 = load i32, ptr %arrayidx.i24.i.i1011, align 4, !tbaa !12
  %xor2.i25.i.i1012 = xor i32 %shr.i20.i.i1007, %496
  %shr.i26.i.i1013 = lshr i32 %xor2.i25.i.i1012, 8
  %497 = and i32 %xor2.i25.i.i1012, 255
  %idxprom.i29.i.i1016 = zext nneg i32 %497 to i64
  %arrayidx.i30.i.i1017 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1016
  %498 = load i32, ptr %arrayidx.i30.i.i1017, align 4, !tbaa !12
  %xor2.i31.i.i1018 = xor i32 %shr.i26.i.i1013, %498
  %shr.i32.i.i1019 = lshr i32 %xor2.i31.i.i1018, 8
  %499 = and i32 %xor2.i31.i.i1018, 255
  %idxprom.i35.i.i1022 = zext nneg i32 %499 to i64
  %arrayidx.i36.i.i1023 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1022
  %500 = load i32, ptr %arrayidx.i36.i.i1023, align 4, !tbaa !12
  %xor2.i37.i.i1024 = xor i32 %shr.i32.i.i1019, %500
  %shr.i38.i.i1025 = lshr i32 %xor2.i37.i.i1024, 8
  %501 = and i32 %xor2.i37.i.i1024, 255
  %idxprom.i41.i.i1028 = zext nneg i32 %501 to i64
  %arrayidx.i42.i.i1029 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1028
  %502 = load i32, ptr %arrayidx.i42.i.i1029, align 4, !tbaa !12
  %xor2.i43.i.i1030 = xor i32 %shr.i38.i.i1025, %502
  %shr.i44.i.i1031 = lshr i32 %xor2.i43.i.i1030, 8
  %503 = and i32 %xor2.i43.i.i1030, 255
  %.tr.i45.masked.i.i1032 = zext nneg i32 %503 to i64
  %arrayidx.i48.i.i1034 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1032
  %504 = load i32, ptr %arrayidx.i48.i.i1034, align 4, !tbaa !12
  %xor2.i49.i.i1035 = xor i32 %shr.i44.i.i1031, %504
  store i32 %xor2.i49.i.i1035, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %for.body376.preheader, label %if.then.i1037

if.then.i1037:                                    ; preds = %for.end369
  %505 = xor i32 %xor2.i49.i.i1035, -1
  %xor.i1038 = zext i32 %505 to i64
  %call.i1039 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.55, i64 noundef %xor.i1038)
  br label %for.body376.preheader

for.body376.preheader:                            ; preds = %for.end369, %if.then.i1037
  br label %for.body376

for.body376:                                      ; preds = %for.body376.preheader, %for.inc384
  %i.153020 = phi i32 [ %inc385, %for.inc384 ], [ 0, %for.body376.preheader ]
  %506 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1041 = lshr i32 %506, 8
  %507 = and i32 %506, 255
  %idxprom.i.i.i1044 = zext nneg i32 %507 to i64
  %arrayidx.i.i.i1045 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1044
  %508 = load i32, ptr %arrayidx.i.i.i1045, align 4, !tbaa !12
  %xor2.i.i.i1046 = xor i32 %shr.i.i.i1041, %508
  %shr.i8.i.i1047 = lshr i32 %xor2.i.i.i1046, 8
  %509 = and i32 %xor2.i.i.i1046, 255
  %idxprom.i11.i.i1050 = zext nneg i32 %509 to i64
  %arrayidx.i12.i.i1051 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1050
  %510 = load i32, ptr %arrayidx.i12.i.i1051, align 4, !tbaa !12
  %xor2.i13.i.i1052 = xor i32 %shr.i8.i.i1047, %510
  %shr.i14.i.i1053 = lshr i32 %xor2.i13.i.i1052, 8
  %511 = and i32 %xor2.i13.i.i1052, 255
  %idxprom.i17.i.i1056 = zext nneg i32 %511 to i64
  %arrayidx.i18.i.i1057 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1056
  %512 = load i32, ptr %arrayidx.i18.i.i1057, align 4, !tbaa !12
  %xor2.i19.i.i1058 = xor i32 %shr.i14.i.i1053, %512
  %shr.i20.i.i1059 = lshr i32 %xor2.i19.i.i1058, 8
  %513 = and i32 %xor2.i19.i.i1058, 255
  %idxprom.i23.i.i1062 = zext nneg i32 %513 to i64
  %arrayidx.i24.i.i1063 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1062
  %514 = load i32, ptr %arrayidx.i24.i.i1063, align 4, !tbaa !12
  %xor2.i25.i.i1064 = xor i32 %shr.i20.i.i1059, %514
  %shr.i26.i.i1065 = lshr i32 %xor2.i25.i.i1064, 8
  %515 = and i32 %xor2.i25.i.i1064, 255
  %idxprom.i29.i.i1068 = zext nneg i32 %515 to i64
  %arrayidx.i30.i.i1069 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1068
  %516 = load i32, ptr %arrayidx.i30.i.i1069, align 4, !tbaa !12
  %xor2.i31.i.i1070 = xor i32 %shr.i26.i.i1065, %516
  %shr.i32.i.i1071 = lshr i32 %xor2.i31.i.i1070, 8
  %517 = and i32 %xor2.i31.i.i1070, 255
  %idxprom.i35.i.i1074 = zext nneg i32 %517 to i64
  %arrayidx.i36.i.i1075 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1074
  %518 = load i32, ptr %arrayidx.i36.i.i1075, align 4, !tbaa !12
  %xor2.i37.i.i1076 = xor i32 %shr.i32.i.i1071, %518
  %shr.i38.i.i1077 = lshr i32 %xor2.i37.i.i1076, 8
  %519 = and i32 %xor2.i37.i.i1076, 255
  %idxprom.i41.i.i1080 = zext nneg i32 %519 to i64
  %arrayidx.i42.i.i1081 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1080
  %520 = load i32, ptr %arrayidx.i42.i.i1081, align 4, !tbaa !12
  %xor2.i43.i.i1082 = xor i32 %shr.i38.i.i1077, %520
  %shr.i44.i.i1083 = lshr i32 %xor2.i43.i.i1082, 8
  %521 = and i32 %xor2.i43.i.i1082, 255
  %.tr.i45.masked.i.i1084 = zext nneg i32 %521 to i64
  %arrayidx.i48.i.i1086 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1084
  %522 = load i32, ptr %arrayidx.i48.i.i1086, align 4, !tbaa !12
  %xor2.i49.i.i1087 = xor i32 %shr.i44.i.i1083, %522
  store i32 %xor2.i49.i.i1087, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1092, label %if.then.i1089

if.then.i1089:                                    ; preds = %for.body376
  %523 = xor i32 %xor2.i49.i.i1087, -1
  %xor.i1090 = zext i32 %523 to i64
  %call.i1091 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.56, i64 noundef %xor.i1090)
  br label %transparent_crc.exit1092

transparent_crc.exit1092:                         ; preds = %for.body376, %if.then.i1089
  br i1 %tobool748.not, label %for.inc384, label %if.then381

if.then381:                                       ; preds = %transparent_crc.exit1092
  %call382 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.153020)
  br label %for.inc384

for.inc384:                                       ; preds = %transparent_crc.exit1092, %if.then381
  %inc385 = add nuw nsw i32 %i.153020, 1
  %exitcond3163.not = icmp eq i32 %inc385, 4
  br i1 %exitcond3163.not, label %for.end386, label %for.body376, !llvm.loop !100

for.end386:                                       ; preds = %for.inc384
  call fastcc void @transparent_crc(i64 noundef 1, ptr noundef nonnull @.str.57, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 667027409, ptr noundef nonnull @.str.58, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 1, ptr noundef nonnull @.str.59, i32 noundef %print_hash_value.0)
  br label %for.cond394.preheader

for.cond394.preheader:                            ; preds = %for.end386, %for.inc489
  %indvars.iv3172 = phi i64 [ 0, %for.end386 ], [ %indvars.iv.next3173, %for.inc489 ]
  %524 = trunc nuw nsw i64 %indvars.iv3172 to i32
  br label %for.cond398.preheader

for.cond398.preheader:                            ; preds = %for.cond394.preheader, %for.inc486
  %indvars.iv3168 = phi i64 [ 0, %for.cond394.preheader ], [ %indvars.iv.next3169, %for.inc486 ]
  %525 = trunc nuw nsw i64 %indvars.iv3168 to i32
  br label %for.body401

for.body401:                                      ; preds = %for.cond398.preheader, %for.inc483
  %indvars.iv3164 = phi i64 [ 0, %for.cond398.preheader ], [ %indvars.iv.next3165, %for.inc483 ]
  %arrayidx407 = getelementptr inbounds nuw [7 x [7 x [5 x %struct.S0]]], ptr @g_2205, i64 0, i64 %indvars.iv3172, i64 %indvars.iv3168, i64 %indvars.iv3164
  %bf.load408 = load i144, ptr %arrayidx407, align 2
  %bf.shl409 = shl i144 %bf.load408, 126
  %bf.ashr410 = ashr exact i144 %bf.shl409, 126
  %bf.cast411 = trunc nsw i144 %bf.ashr410 to i64
  %526 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1093 = lshr i32 %526, 8
  %.tr.i.i.i1094 = zext i32 %526 to i64
  %xor.narrow.i.i.i1095 = xor i64 %bf.cast411, %.tr.i.i.i1094
  %idxprom.i.i.i1096 = and i64 %xor.narrow.i.i.i1095, 255
  %arrayidx.i.i.i1097 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1096
  %527 = load i32, ptr %arrayidx.i.i.i1097, align 4, !tbaa !12
  %xor2.i.i.i1098 = xor i32 %shr.i.i.i1093, %527
  %shr1.i.i1099 = lshr i64 %bf.cast411, 8
  %shr.i8.i.i1100 = lshr i32 %xor2.i.i.i1098, 8
  %.tr.i9.i.i1101 = zext i32 %xor2.i.i.i1098 to i64
  %xor.narrow.i10.i.i1102 = xor i64 %shr1.i.i1099, %.tr.i9.i.i1101
  %idxprom.i11.i.i1103 = and i64 %xor.narrow.i10.i.i1102, 255
  %arrayidx.i12.i.i1104 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1103
  %528 = load i32, ptr %arrayidx.i12.i.i1104, align 4, !tbaa !12
  %xor2.i13.i.i1105 = xor i32 %shr.i8.i.i1100, %528
  %shr4.i.i1106 = lshr i64 %bf.cast411, 16
  %shr.i14.i.i1107 = lshr i32 %xor2.i13.i.i1105, 8
  %.tr.i15.i.i1108 = zext i32 %xor2.i13.i.i1105 to i64
  %xor.narrow.i16.i.i1109 = xor i64 %shr4.i.i1106, %.tr.i15.i.i1108
  %idxprom.i17.i.i1110 = and i64 %xor.narrow.i16.i.i1109, 255
  %arrayidx.i18.i.i1111 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1110
  %529 = load i32, ptr %arrayidx.i18.i.i1111, align 4, !tbaa !12
  %xor2.i19.i.i1112 = xor i32 %shr.i14.i.i1107, %529
  %shr7.i.i1113 = lshr i64 %bf.cast411, 24
  %shr.i20.i.i1114 = lshr i32 %xor2.i19.i.i1112, 8
  %.tr.i21.i.i1115 = zext i32 %xor2.i19.i.i1112 to i64
  %xor.narrow.i22.i.i1116 = xor i64 %shr7.i.i1113, %.tr.i21.i.i1115
  %idxprom.i23.i.i1117 = and i64 %xor.narrow.i22.i.i1116, 255
  %arrayidx.i24.i.i1118 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1117
  %530 = load i32, ptr %arrayidx.i24.i.i1118, align 4, !tbaa !12
  %xor2.i25.i.i1119 = xor i32 %shr.i20.i.i1114, %530
  %shr10.i.i1120 = lshr i64 %bf.cast411, 32
  %shr.i26.i.i1121 = lshr i32 %xor2.i25.i.i1119, 8
  %.tr.i27.i.i1122 = zext i32 %xor2.i25.i.i1119 to i64
  %xor.narrow.i28.i.i1123 = xor i64 %shr10.i.i1120, %.tr.i27.i.i1122
  %idxprom.i29.i.i1124 = and i64 %xor.narrow.i28.i.i1123, 255
  %arrayidx.i30.i.i1125 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1124
  %531 = load i32, ptr %arrayidx.i30.i.i1125, align 4, !tbaa !12
  %xor2.i31.i.i1126 = xor i32 %shr.i26.i.i1121, %531
  %shr13.i.i1127 = lshr i64 %bf.cast411, 40
  %shr.i32.i.i1128 = lshr i32 %xor2.i31.i.i1126, 8
  %.tr.i33.i.i1129 = zext i32 %xor2.i31.i.i1126 to i64
  %xor.narrow.i34.i.i1130 = xor i64 %shr13.i.i1127, %.tr.i33.i.i1129
  %idxprom.i35.i.i1131 = and i64 %xor.narrow.i34.i.i1130, 255
  %arrayidx.i36.i.i1132 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1131
  %532 = load i32, ptr %arrayidx.i36.i.i1132, align 4, !tbaa !12
  %xor2.i37.i.i1133 = xor i32 %shr.i32.i.i1128, %532
  %shr16.i.i1134 = lshr i64 %bf.cast411, 48
  %shr.i38.i.i1135 = lshr i32 %xor2.i37.i.i1133, 8
  %.tr.i39.i.i1136 = zext i32 %xor2.i37.i.i1133 to i64
  %xor.narrow.i40.i.i1137 = xor i64 %shr16.i.i1134, %.tr.i39.i.i1136
  %idxprom.i41.i.i1138 = and i64 %xor.narrow.i40.i.i1137, 255
  %arrayidx.i42.i.i1139 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1138
  %533 = load i32, ptr %arrayidx.i42.i.i1139, align 4, !tbaa !12
  %xor2.i43.i.i1140 = xor i32 %shr.i38.i.i1135, %533
  %shr19.i.i1141 = lshr i64 %bf.cast411, 56
  %shr.i44.i.i1142 = lshr i32 %xor2.i43.i.i1140, 8
  %534 = and i32 %xor2.i43.i.i1140, 255
  %.tr.i45.masked.i.i1143 = zext nneg i32 %534 to i64
  %idxprom.i47.i.i1144 = xor i64 %shr19.i.i1141, %.tr.i45.masked.i.i1143
  %arrayidx.i48.i.i1145 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i1144
  %535 = load i32, ptr %arrayidx.i48.i.i1145, align 4, !tbaa !12
  %xor2.i49.i.i1146 = xor i32 %shr.i44.i.i1142, %535
  store i32 %xor2.i49.i.i1146, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1151, label %if.then.i1148

if.then.i1148:                                    ; preds = %for.body401
  %536 = xor i32 %xor2.i49.i.i1146, -1
  %xor.i1149 = zext i32 %536 to i64
  %call.i1150 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.60, i64 noundef %xor.i1149)
  %bf.load419.pre = load i144, ptr %arrayidx407, align 2
  %.pre = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1151

transparent_crc.exit1151:                         ; preds = %for.body401, %if.then.i1148
  %537 = phi i32 [ %xor2.i49.i.i1146, %for.body401 ], [ %.pre, %if.then.i1148 ]
  %bf.load419 = phi i144 [ %bf.load408, %for.body401 ], [ %bf.load419.pre, %if.then.i1148 ]
  %538 = trunc i144 %bf.load419 to i64
  %539 = lshr i64 %538, 18
  %shr.i.i.i1152 = lshr i32 %537, 8
  %.tr.i.i.i1153 = zext i32 %537 to i64
  %xor.narrow.i.i.i1154 = xor i64 %539, %.tr.i.i.i1153
  %idxprom.i.i.i1155 = and i64 %xor.narrow.i.i.i1154, 255
  %arrayidx.i.i.i1156 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1155
  %540 = load i32, ptr %arrayidx.i.i.i1156, align 4, !tbaa !12
  %xor2.i.i.i1157 = xor i32 %shr.i.i.i1152, %540
  %shr1.i.i1158 = lshr i64 %538, 26
  %shr.i8.i.i1159 = lshr i32 %xor2.i.i.i1157, 8
  %.tr.i9.i.i1160 = zext i32 %xor2.i.i.i1157 to i64
  %xor.narrow.i10.i.i1161 = xor i64 %shr1.i.i1158, %.tr.i9.i.i1160
  %idxprom.i11.i.i1162 = and i64 %xor.narrow.i10.i.i1161, 255
  %arrayidx.i12.i.i1163 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1162
  %541 = load i32, ptr %arrayidx.i12.i.i1163, align 4, !tbaa !12
  %xor2.i13.i.i1164 = xor i32 %shr.i8.i.i1159, %541
  %shr4.i.i1165 = lshr i64 %538, 34
  %shr.i14.i.i1166 = lshr i32 %xor2.i13.i.i1164, 8
  %.tr.i15.i.i1167 = zext i32 %xor2.i13.i.i1164 to i64
  %xor.narrow.i16.i.i1168 = xor i64 %shr4.i.i1165, %.tr.i15.i.i1167
  %idxprom.i17.i.i1169 = and i64 %xor.narrow.i16.i.i1168, 255
  %arrayidx.i18.i.i1170 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1169
  %542 = load i32, ptr %arrayidx.i18.i.i1170, align 4, !tbaa !12
  %xor2.i19.i.i1171 = xor i32 %shr.i14.i.i1166, %542
  %bf.cast422 = lshr i64 %538, 42
  %shr7.i.i1172 = and i64 %bf.cast422, 127
  %shr.i20.i.i1173 = lshr i32 %xor2.i19.i.i1171, 8
  %543 = and i32 %xor2.i19.i.i1171, 255
  %.tr.i21.i.i1174.masked = zext nneg i32 %543 to i64
  %idxprom.i23.i.i1176 = xor i64 %shr7.i.i1172, %.tr.i21.i.i1174.masked
  %arrayidx.i24.i.i1177 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1176
  %544 = load i32, ptr %arrayidx.i24.i.i1177, align 4, !tbaa !12
  %xor2.i25.i.i1178 = xor i32 %shr.i20.i.i1173, %544
  %shr.i26.i.i1180 = lshr i32 %xor2.i25.i.i1178, 8
  %545 = and i32 %xor2.i25.i.i1178, 255
  %idxprom.i29.i.i1183 = zext nneg i32 %545 to i64
  %arrayidx.i30.i.i1184 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1183
  %546 = load i32, ptr %arrayidx.i30.i.i1184, align 4, !tbaa !12
  %xor2.i31.i.i1185 = xor i32 %shr.i26.i.i1180, %546
  %shr.i32.i.i1187 = lshr i32 %xor2.i31.i.i1185, 8
  %547 = and i32 %xor2.i31.i.i1185, 255
  %idxprom.i35.i.i1190 = zext nneg i32 %547 to i64
  %arrayidx.i36.i.i1191 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1190
  %548 = load i32, ptr %arrayidx.i36.i.i1191, align 4, !tbaa !12
  %xor2.i37.i.i1192 = xor i32 %shr.i32.i.i1187, %548
  %shr.i38.i.i1194 = lshr i32 %xor2.i37.i.i1192, 8
  %549 = and i32 %xor2.i37.i.i1192, 255
  %idxprom.i41.i.i1197 = zext nneg i32 %549 to i64
  %arrayidx.i42.i.i1198 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1197
  %550 = load i32, ptr %arrayidx.i42.i.i1198, align 4, !tbaa !12
  %xor2.i43.i.i1199 = xor i32 %shr.i38.i.i1194, %550
  %shr.i44.i.i1201 = lshr i32 %xor2.i43.i.i1199, 8
  %551 = and i32 %xor2.i43.i.i1199, 255
  %.tr.i45.masked.i.i1202 = zext nneg i32 %551 to i64
  %arrayidx.i48.i.i1204 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1202
  %552 = load i32, ptr %arrayidx.i48.i.i1204, align 4, !tbaa !12
  %xor2.i49.i.i1205 = xor i32 %shr.i44.i.i1201, %552
  store i32 %xor2.i49.i.i1205, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1210, label %if.then.i1207

if.then.i1207:                                    ; preds = %transparent_crc.exit1151
  %553 = xor i32 %xor2.i49.i.i1205, -1
  %xor.i1208 = zext i32 %553 to i64
  %call.i1209 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.61, i64 noundef %xor.i1208)
  %bf.load430.pre = load i144, ptr %arrayidx407, align 2
  %.pre3209 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1210

transparent_crc.exit1210:                         ; preds = %transparent_crc.exit1151, %if.then.i1207
  %554 = phi i32 [ %xor2.i49.i.i1205, %transparent_crc.exit1151 ], [ %.pre3209, %if.then.i1207 ]
  %bf.load430 = phi i144 [ %bf.load419, %transparent_crc.exit1151 ], [ %bf.load430.pre, %if.then.i1207 ]
  %bf.shl431 = shl i144 %bf.load430, 90
  %bf.ashr432 = ashr i144 %bf.shl431, 139
  %bf.cast433 = trunc nsw i144 %bf.ashr432 to i64
  %shr.i.i.i1211 = lshr i32 %554, 8
  %.tr.i.i.i1212 = zext i32 %554 to i64
  %xor.narrow.i.i.i1213 = xor i64 %bf.cast433, %.tr.i.i.i1212
  %idxprom.i.i.i1214 = and i64 %xor.narrow.i.i.i1213, 255
  %arrayidx.i.i.i1215 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1214
  %555 = load i32, ptr %arrayidx.i.i.i1215, align 4, !tbaa !12
  %xor2.i.i.i1216 = xor i32 %shr.i.i.i1211, %555
  %shr1.i.i1217 = lshr i64 %bf.cast433, 8
  %shr.i8.i.i1218 = lshr i32 %xor2.i.i.i1216, 8
  %.tr.i9.i.i1219 = zext i32 %xor2.i.i.i1216 to i64
  %xor.narrow.i10.i.i1220 = xor i64 %shr1.i.i1217, %.tr.i9.i.i1219
  %idxprom.i11.i.i1221 = and i64 %xor.narrow.i10.i.i1220, 255
  %arrayidx.i12.i.i1222 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1221
  %556 = load i32, ptr %arrayidx.i12.i.i1222, align 4, !tbaa !12
  %xor2.i13.i.i1223 = xor i32 %shr.i8.i.i1218, %556
  %shr4.i.i1224 = lshr i64 %bf.cast433, 16
  %shr.i14.i.i1225 = lshr i32 %xor2.i13.i.i1223, 8
  %.tr.i15.i.i1226 = zext i32 %xor2.i13.i.i1223 to i64
  %xor.narrow.i16.i.i1227 = xor i64 %shr4.i.i1224, %.tr.i15.i.i1226
  %idxprom.i17.i.i1228 = and i64 %xor.narrow.i16.i.i1227, 255
  %arrayidx.i18.i.i1229 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1228
  %557 = load i32, ptr %arrayidx.i18.i.i1229, align 4, !tbaa !12
  %xor2.i19.i.i1230 = xor i32 %shr.i14.i.i1225, %557
  %shr7.i.i1231 = lshr i64 %bf.cast433, 24
  %shr.i20.i.i1232 = lshr i32 %xor2.i19.i.i1230, 8
  %.tr.i21.i.i1233 = zext i32 %xor2.i19.i.i1230 to i64
  %xor.narrow.i22.i.i1234 = xor i64 %shr7.i.i1231, %.tr.i21.i.i1233
  %idxprom.i23.i.i1235 = and i64 %xor.narrow.i22.i.i1234, 255
  %arrayidx.i24.i.i1236 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1235
  %558 = load i32, ptr %arrayidx.i24.i.i1236, align 4, !tbaa !12
  %xor2.i25.i.i1237 = xor i32 %shr.i20.i.i1232, %558
  %shr10.i.i1238 = lshr i64 %bf.cast433, 32
  %shr.i26.i.i1239 = lshr i32 %xor2.i25.i.i1237, 8
  %.tr.i27.i.i1240 = zext i32 %xor2.i25.i.i1237 to i64
  %xor.narrow.i28.i.i1241 = xor i64 %shr10.i.i1238, %.tr.i27.i.i1240
  %idxprom.i29.i.i1242 = and i64 %xor.narrow.i28.i.i1241, 255
  %arrayidx.i30.i.i1243 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1242
  %559 = load i32, ptr %arrayidx.i30.i.i1243, align 4, !tbaa !12
  %xor2.i31.i.i1244 = xor i32 %shr.i26.i.i1239, %559
  %shr13.i.i1245 = lshr i64 %bf.cast433, 40
  %shr.i32.i.i1246 = lshr i32 %xor2.i31.i.i1244, 8
  %.tr.i33.i.i1247 = zext i32 %xor2.i31.i.i1244 to i64
  %xor.narrow.i34.i.i1248 = xor i64 %shr13.i.i1245, %.tr.i33.i.i1247
  %idxprom.i35.i.i1249 = and i64 %xor.narrow.i34.i.i1248, 255
  %arrayidx.i36.i.i1250 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1249
  %560 = load i32, ptr %arrayidx.i36.i.i1250, align 4, !tbaa !12
  %xor2.i37.i.i1251 = xor i32 %shr.i32.i.i1246, %560
  %shr16.i.i1252 = lshr i64 %bf.cast433, 48
  %shr.i38.i.i1253 = lshr i32 %xor2.i37.i.i1251, 8
  %.tr.i39.i.i1254 = zext i32 %xor2.i37.i.i1251 to i64
  %xor.narrow.i40.i.i1255 = xor i64 %shr16.i.i1252, %.tr.i39.i.i1254
  %idxprom.i41.i.i1256 = and i64 %xor.narrow.i40.i.i1255, 255
  %arrayidx.i42.i.i1257 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1256
  %561 = load i32, ptr %arrayidx.i42.i.i1257, align 4, !tbaa !12
  %xor2.i43.i.i1258 = xor i32 %shr.i38.i.i1253, %561
  %shr19.i.i1259 = lshr i64 %bf.cast433, 56
  %shr.i44.i.i1260 = lshr i32 %xor2.i43.i.i1258, 8
  %562 = and i32 %xor2.i43.i.i1258, 255
  %.tr.i45.masked.i.i1261 = zext nneg i32 %562 to i64
  %idxprom.i47.i.i1262 = xor i64 %shr19.i.i1259, %.tr.i45.masked.i.i1261
  %arrayidx.i48.i.i1263 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i1262
  %563 = load i32, ptr %arrayidx.i48.i.i1263, align 4, !tbaa !12
  %xor2.i49.i.i1264 = xor i32 %shr.i44.i.i1260, %563
  store i32 %xor2.i49.i.i1264, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1269, label %if.then.i1266

if.then.i1266:                                    ; preds = %transparent_crc.exit1210
  %564 = xor i32 %xor2.i49.i.i1264, -1
  %xor.i1267 = zext i32 %564 to i64
  %call.i1268 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.62, i64 noundef %xor.i1267)
  %bf.load441.pre = load i144, ptr %arrayidx407, align 2
  %.pre3211 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1269

transparent_crc.exit1269:                         ; preds = %transparent_crc.exit1210, %if.then.i1266
  %565 = phi i32 [ %xor2.i49.i.i1264, %transparent_crc.exit1210 ], [ %.pre3211, %if.then.i1266 ]
  %bf.load441 = phi i144 [ %bf.load430, %transparent_crc.exit1210 ], [ %bf.load441.pre, %if.then.i1266 ]
  %bf.lshr442 = lshr i144 %bf.load441, 54
  %566 = trunc i144 %bf.lshr442 to i64
  %shr.i.i.i1270 = lshr i32 %565, 8
  %.tr.i.i.i1271 = zext i32 %565 to i64
  %xor.narrow.i.i.i1272 = xor i64 %566, %.tr.i.i.i1271
  %idxprom.i.i.i1273 = and i64 %xor.narrow.i.i.i1272, 255
  %arrayidx.i.i.i1274 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1273
  %567 = load i32, ptr %arrayidx.i.i.i1274, align 4, !tbaa !12
  %xor2.i.i.i1275 = xor i32 %shr.i.i.i1270, %567
  %shr1.i.i1276 = lshr i64 %566, 8
  %shr.i8.i.i1277 = lshr i32 %xor2.i.i.i1275, 8
  %.tr.i9.i.i1278 = zext i32 %xor2.i.i.i1275 to i64
  %xor.narrow.i10.i.i1279 = xor i64 %shr1.i.i1276, %.tr.i9.i.i1278
  %idxprom.i11.i.i1280 = and i64 %xor.narrow.i10.i.i1279, 255
  %arrayidx.i12.i.i1281 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1280
  %568 = load i32, ptr %arrayidx.i12.i.i1281, align 4, !tbaa !12
  %xor2.i13.i.i1282 = xor i32 %shr.i8.i.i1277, %568
  %shr4.i.i1283 = lshr i64 %566, 16
  %shr.i14.i.i1284 = lshr i32 %xor2.i13.i.i1282, 8
  %.tr.i15.i.i1285 = zext i32 %xor2.i13.i.i1282 to i64
  %xor.narrow.i16.i.i1286 = xor i64 %shr4.i.i1283, %.tr.i15.i.i1285
  %idxprom.i17.i.i1287 = and i64 %xor.narrow.i16.i.i1286, 255
  %arrayidx.i18.i.i1288 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1287
  %569 = load i32, ptr %arrayidx.i18.i.i1288, align 4, !tbaa !12
  %xor2.i19.i.i1289 = xor i32 %shr.i14.i.i1284, %569
  %bf.cast444 = lshr i64 %566, 24
  %shr7.i.i1290 = and i64 %bf.cast444, 31
  %shr.i20.i.i1291 = lshr i32 %xor2.i19.i.i1289, 8
  %570 = and i32 %xor2.i19.i.i1289, 255
  %.tr.i21.i.i1292.masked = zext nneg i32 %570 to i64
  %idxprom.i23.i.i1294 = xor i64 %shr7.i.i1290, %.tr.i21.i.i1292.masked
  %arrayidx.i24.i.i1295 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1294
  %571 = load i32, ptr %arrayidx.i24.i.i1295, align 4, !tbaa !12
  %xor2.i25.i.i1296 = xor i32 %shr.i20.i.i1291, %571
  %shr.i26.i.i1298 = lshr i32 %xor2.i25.i.i1296, 8
  %572 = and i32 %xor2.i25.i.i1296, 255
  %idxprom.i29.i.i1301 = zext nneg i32 %572 to i64
  %arrayidx.i30.i.i1302 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1301
  %573 = load i32, ptr %arrayidx.i30.i.i1302, align 4, !tbaa !12
  %xor2.i31.i.i1303 = xor i32 %shr.i26.i.i1298, %573
  %shr.i32.i.i1305 = lshr i32 %xor2.i31.i.i1303, 8
  %574 = and i32 %xor2.i31.i.i1303, 255
  %idxprom.i35.i.i1308 = zext nneg i32 %574 to i64
  %arrayidx.i36.i.i1309 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1308
  %575 = load i32, ptr %arrayidx.i36.i.i1309, align 4, !tbaa !12
  %xor2.i37.i.i1310 = xor i32 %shr.i32.i.i1305, %575
  %shr.i38.i.i1312 = lshr i32 %xor2.i37.i.i1310, 8
  %576 = and i32 %xor2.i37.i.i1310, 255
  %idxprom.i41.i.i1315 = zext nneg i32 %576 to i64
  %arrayidx.i42.i.i1316 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1315
  %577 = load i32, ptr %arrayidx.i42.i.i1316, align 4, !tbaa !12
  %xor2.i43.i.i1317 = xor i32 %shr.i38.i.i1312, %577
  %shr.i44.i.i1319 = lshr i32 %xor2.i43.i.i1317, 8
  %578 = and i32 %xor2.i43.i.i1317, 255
  %.tr.i45.masked.i.i1320 = zext nneg i32 %578 to i64
  %arrayidx.i48.i.i1322 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1320
  %579 = load i32, ptr %arrayidx.i48.i.i1322, align 4, !tbaa !12
  %xor2.i49.i.i1323 = xor i32 %shr.i44.i.i1319, %579
  store i32 %xor2.i49.i.i1323, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1328, label %if.then.i1325

if.then.i1325:                                    ; preds = %transparent_crc.exit1269
  %580 = xor i32 %xor2.i49.i.i1323, -1
  %xor.i1326 = zext i32 %580 to i64
  %call.i1327 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.63, i64 noundef %xor.i1326)
  %bf.load452.pre = load i144, ptr %arrayidx407, align 2
  %.pre3213 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1328

transparent_crc.exit1328:                         ; preds = %transparent_crc.exit1269, %if.then.i1325
  %581 = phi i32 [ %xor2.i49.i.i1323, %transparent_crc.exit1269 ], [ %.pre3213, %if.then.i1325 ]
  %bf.load452 = phi i144 [ %bf.load441, %transparent_crc.exit1269 ], [ %bf.load452.pre, %if.then.i1325 ]
  %bf.lshr453 = lshr i144 %bf.load452, 83
  %582 = trunc nuw nsw i144 %bf.lshr453 to i64
  %shr.i.i.i1329 = lshr i32 %581, 8
  %.tr.i.i.i1330 = zext i32 %581 to i64
  %xor.narrow.i.i.i1331 = xor i64 %582, %.tr.i.i.i1330
  %idxprom.i.i.i1332 = and i64 %xor.narrow.i.i.i1331, 255
  %arrayidx.i.i.i1333 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1332
  %583 = load i32, ptr %arrayidx.i.i.i1333, align 4, !tbaa !12
  %xor2.i.i.i1334 = xor i32 %shr.i.i.i1329, %583
  %shr1.i.i1335 = lshr i64 %582, 8
  %shr.i8.i.i1336 = lshr i32 %xor2.i.i.i1334, 8
  %.tr.i9.i.i1337 = zext i32 %xor2.i.i.i1334 to i64
  %xor.narrow.i10.i.i1338 = xor i64 %shr1.i.i1335, %.tr.i9.i.i1337
  %idxprom.i11.i.i1339 = and i64 %xor.narrow.i10.i.i1338, 255
  %arrayidx.i12.i.i1340 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1339
  %584 = load i32, ptr %arrayidx.i12.i.i1340, align 4, !tbaa !12
  %xor2.i13.i.i1341 = xor i32 %shr.i8.i.i1336, %584
  %shr4.i.i1342 = lshr i64 %582, 16
  %shr.i14.i.i1343 = lshr i32 %xor2.i13.i.i1341, 8
  %.tr.i15.i.i1344 = zext i32 %xor2.i13.i.i1341 to i64
  %xor.narrow.i16.i.i1345 = xor i64 %shr4.i.i1342, %.tr.i15.i.i1344
  %idxprom.i17.i.i1346 = and i64 %xor.narrow.i16.i.i1345, 255
  %arrayidx.i18.i.i1347 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1346
  %585 = load i32, ptr %arrayidx.i18.i.i1347, align 4, !tbaa !12
  %xor2.i19.i.i1348 = xor i32 %shr.i14.i.i1343, %585
  %shr.i20.i.i1350 = lshr i32 %xor2.i19.i.i1348, 8
  %586 = and i32 %xor2.i19.i.i1348, 255
  %idxprom.i23.i.i1353 = zext nneg i32 %586 to i64
  %arrayidx.i24.i.i1354 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1353
  %587 = load i32, ptr %arrayidx.i24.i.i1354, align 4, !tbaa !12
  %xor2.i25.i.i1355 = xor i32 %shr.i20.i.i1350, %587
  %shr.i26.i.i1357 = lshr i32 %xor2.i25.i.i1355, 8
  %588 = and i32 %xor2.i25.i.i1355, 255
  %idxprom.i29.i.i1360 = zext nneg i32 %588 to i64
  %arrayidx.i30.i.i1361 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1360
  %589 = load i32, ptr %arrayidx.i30.i.i1361, align 4, !tbaa !12
  %xor2.i31.i.i1362 = xor i32 %shr.i26.i.i1357, %589
  %shr.i32.i.i1364 = lshr i32 %xor2.i31.i.i1362, 8
  %590 = and i32 %xor2.i31.i.i1362, 255
  %idxprom.i35.i.i1367 = zext nneg i32 %590 to i64
  %arrayidx.i36.i.i1368 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1367
  %591 = load i32, ptr %arrayidx.i36.i.i1368, align 4, !tbaa !12
  %xor2.i37.i.i1369 = xor i32 %shr.i32.i.i1364, %591
  %shr.i38.i.i1371 = lshr i32 %xor2.i37.i.i1369, 8
  %592 = and i32 %xor2.i37.i.i1369, 255
  %idxprom.i41.i.i1374 = zext nneg i32 %592 to i64
  %arrayidx.i42.i.i1375 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1374
  %593 = load i32, ptr %arrayidx.i42.i.i1375, align 4, !tbaa !12
  %xor2.i43.i.i1376 = xor i32 %shr.i38.i.i1371, %593
  %shr.i44.i.i1378 = lshr i32 %xor2.i43.i.i1376, 8
  %594 = and i32 %xor2.i43.i.i1376, 255
  %.tr.i45.masked.i.i1379 = zext nneg i32 %594 to i64
  %arrayidx.i48.i.i1381 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1379
  %595 = load i32, ptr %arrayidx.i48.i.i1381, align 4, !tbaa !12
  %xor2.i49.i.i1382 = xor i32 %shr.i44.i.i1378, %595
  store i32 %xor2.i49.i.i1382, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1387, label %if.then.i1384

if.then.i1384:                                    ; preds = %transparent_crc.exit1328
  %596 = xor i32 %xor2.i49.i.i1382, -1
  %xor.i1385 = zext i32 %596 to i64
  %call.i1386 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.64, i64 noundef %xor.i1385)
  %bf.load463.pre = load i144, ptr %arrayidx407, align 2
  %.pre3215 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1387

transparent_crc.exit1387:                         ; preds = %transparent_crc.exit1328, %if.then.i1384
  %597 = phi i32 [ %xor2.i49.i.i1382, %transparent_crc.exit1328 ], [ %.pre3215, %if.then.i1384 ]
  %bf.load463 = phi i144 [ %bf.load452, %transparent_crc.exit1328 ], [ %bf.load463.pre, %if.then.i1384 ]
  %bf.shl464 = shl i144 %bf.load463, 22
  %bf.ashr465 = ashr i144 %bf.shl464, 129
  %bf.cast466 = trunc nsw i144 %bf.ashr465 to i64
  %shr.i.i.i1388 = lshr i32 %597, 8
  %.tr.i.i.i1389 = zext i32 %597 to i64
  %xor.narrow.i.i.i1390 = xor i64 %bf.cast466, %.tr.i.i.i1389
  %idxprom.i.i.i1391 = and i64 %xor.narrow.i.i.i1390, 255
  %arrayidx.i.i.i1392 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1391
  %598 = load i32, ptr %arrayidx.i.i.i1392, align 4, !tbaa !12
  %xor2.i.i.i1393 = xor i32 %shr.i.i.i1388, %598
  %shr1.i.i1394 = lshr i64 %bf.cast466, 8
  %shr.i8.i.i1395 = lshr i32 %xor2.i.i.i1393, 8
  %.tr.i9.i.i1396 = zext i32 %xor2.i.i.i1393 to i64
  %xor.narrow.i10.i.i1397 = xor i64 %shr1.i.i1394, %.tr.i9.i.i1396
  %idxprom.i11.i.i1398 = and i64 %xor.narrow.i10.i.i1397, 255
  %arrayidx.i12.i.i1399 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1398
  %599 = load i32, ptr %arrayidx.i12.i.i1399, align 4, !tbaa !12
  %xor2.i13.i.i1400 = xor i32 %shr.i8.i.i1395, %599
  %shr4.i.i1401 = lshr i64 %bf.cast466, 16
  %shr.i14.i.i1402 = lshr i32 %xor2.i13.i.i1400, 8
  %.tr.i15.i.i1403 = zext i32 %xor2.i13.i.i1400 to i64
  %xor.narrow.i16.i.i1404 = xor i64 %shr4.i.i1401, %.tr.i15.i.i1403
  %idxprom.i17.i.i1405 = and i64 %xor.narrow.i16.i.i1404, 255
  %arrayidx.i18.i.i1406 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1405
  %600 = load i32, ptr %arrayidx.i18.i.i1406, align 4, !tbaa !12
  %xor2.i19.i.i1407 = xor i32 %shr.i14.i.i1402, %600
  %shr7.i.i1408 = lshr i64 %bf.cast466, 24
  %shr.i20.i.i1409 = lshr i32 %xor2.i19.i.i1407, 8
  %.tr.i21.i.i1410 = zext i32 %xor2.i19.i.i1407 to i64
  %xor.narrow.i22.i.i1411 = xor i64 %shr7.i.i1408, %.tr.i21.i.i1410
  %idxprom.i23.i.i1412 = and i64 %xor.narrow.i22.i.i1411, 255
  %arrayidx.i24.i.i1413 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1412
  %601 = load i32, ptr %arrayidx.i24.i.i1413, align 4, !tbaa !12
  %xor2.i25.i.i1414 = xor i32 %shr.i20.i.i1409, %601
  %shr10.i.i1415 = lshr i64 %bf.cast466, 32
  %shr.i26.i.i1416 = lshr i32 %xor2.i25.i.i1414, 8
  %.tr.i27.i.i1417 = zext i32 %xor2.i25.i.i1414 to i64
  %xor.narrow.i28.i.i1418 = xor i64 %shr10.i.i1415, %.tr.i27.i.i1417
  %idxprom.i29.i.i1419 = and i64 %xor.narrow.i28.i.i1418, 255
  %arrayidx.i30.i.i1420 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1419
  %602 = load i32, ptr %arrayidx.i30.i.i1420, align 4, !tbaa !12
  %xor2.i31.i.i1421 = xor i32 %shr.i26.i.i1416, %602
  %shr13.i.i1422 = lshr i64 %bf.cast466, 40
  %shr.i32.i.i1423 = lshr i32 %xor2.i31.i.i1421, 8
  %.tr.i33.i.i1424 = zext i32 %xor2.i31.i.i1421 to i64
  %xor.narrow.i34.i.i1425 = xor i64 %shr13.i.i1422, %.tr.i33.i.i1424
  %idxprom.i35.i.i1426 = and i64 %xor.narrow.i34.i.i1425, 255
  %arrayidx.i36.i.i1427 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1426
  %603 = load i32, ptr %arrayidx.i36.i.i1427, align 4, !tbaa !12
  %xor2.i37.i.i1428 = xor i32 %shr.i32.i.i1423, %603
  %shr16.i.i1429 = lshr i64 %bf.cast466, 48
  %shr.i38.i.i1430 = lshr i32 %xor2.i37.i.i1428, 8
  %.tr.i39.i.i1431 = zext i32 %xor2.i37.i.i1428 to i64
  %xor.narrow.i40.i.i1432 = xor i64 %shr16.i.i1429, %.tr.i39.i.i1431
  %idxprom.i41.i.i1433 = and i64 %xor.narrow.i40.i.i1432, 255
  %arrayidx.i42.i.i1434 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1433
  %604 = load i32, ptr %arrayidx.i42.i.i1434, align 4, !tbaa !12
  %xor2.i43.i.i1435 = xor i32 %shr.i38.i.i1430, %604
  %shr19.i.i1436 = lshr i64 %bf.cast466, 56
  %shr.i44.i.i1437 = lshr i32 %xor2.i43.i.i1435, 8
  %605 = and i32 %xor2.i43.i.i1435, 255
  %.tr.i45.masked.i.i1438 = zext nneg i32 %605 to i64
  %idxprom.i47.i.i1439 = xor i64 %shr19.i.i1436, %.tr.i45.masked.i.i1438
  %arrayidx.i48.i.i1440 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i1439
  %606 = load i32, ptr %arrayidx.i48.i.i1440, align 4, !tbaa !12
  %xor2.i49.i.i1441 = xor i32 %shr.i44.i.i1437, %606
  store i32 %xor2.i49.i.i1441, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1446, label %if.then.i1443

if.then.i1443:                                    ; preds = %transparent_crc.exit1387
  %607 = xor i32 %xor2.i49.i.i1441, -1
  %xor.i1444 = zext i32 %607 to i64
  %call.i1445 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.65, i64 noundef %xor.i1444)
  %bf.load474.pre = load i144, ptr %arrayidx407, align 2
  %.pre3217 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1446

transparent_crc.exit1446:                         ; preds = %transparent_crc.exit1387, %if.then.i1443
  %608 = phi i32 [ %xor2.i49.i.i1441, %transparent_crc.exit1387 ], [ %.pre3217, %if.then.i1443 ]
  %bf.load474 = phi i144 [ %bf.load463, %transparent_crc.exit1387 ], [ %bf.load474.pre, %if.then.i1443 ]
  %bf.shl475 = shl i144 %bf.load474, 5
  %bf.ashr476 = ashr i144 %bf.shl475, 127
  %bf.cast477 = trunc nsw i144 %bf.ashr476 to i64
  %shr.i.i.i1447 = lshr i32 %608, 8
  %.tr.i.i.i1448 = zext i32 %608 to i64
  %xor.narrow.i.i.i1449 = xor i64 %bf.cast477, %.tr.i.i.i1448
  %idxprom.i.i.i1450 = and i64 %xor.narrow.i.i.i1449, 255
  %arrayidx.i.i.i1451 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1450
  %609 = load i32, ptr %arrayidx.i.i.i1451, align 4, !tbaa !12
  %xor2.i.i.i1452 = xor i32 %shr.i.i.i1447, %609
  %shr1.i.i1453 = lshr i64 %bf.cast477, 8
  %shr.i8.i.i1454 = lshr i32 %xor2.i.i.i1452, 8
  %.tr.i9.i.i1455 = zext i32 %xor2.i.i.i1452 to i64
  %xor.narrow.i10.i.i1456 = xor i64 %shr1.i.i1453, %.tr.i9.i.i1455
  %idxprom.i11.i.i1457 = and i64 %xor.narrow.i10.i.i1456, 255
  %arrayidx.i12.i.i1458 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1457
  %610 = load i32, ptr %arrayidx.i12.i.i1458, align 4, !tbaa !12
  %xor2.i13.i.i1459 = xor i32 %shr.i8.i.i1454, %610
  %shr4.i.i1460 = lshr i64 %bf.cast477, 16
  %shr.i14.i.i1461 = lshr i32 %xor2.i13.i.i1459, 8
  %.tr.i15.i.i1462 = zext i32 %xor2.i13.i.i1459 to i64
  %xor.narrow.i16.i.i1463 = xor i64 %shr4.i.i1460, %.tr.i15.i.i1462
  %idxprom.i17.i.i1464 = and i64 %xor.narrow.i16.i.i1463, 255
  %arrayidx.i18.i.i1465 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1464
  %611 = load i32, ptr %arrayidx.i18.i.i1465, align 4, !tbaa !12
  %xor2.i19.i.i1466 = xor i32 %shr.i14.i.i1461, %611
  %shr7.i.i1467 = lshr i64 %bf.cast477, 24
  %shr.i20.i.i1468 = lshr i32 %xor2.i19.i.i1466, 8
  %.tr.i21.i.i1469 = zext i32 %xor2.i19.i.i1466 to i64
  %xor.narrow.i22.i.i1470 = xor i64 %shr7.i.i1467, %.tr.i21.i.i1469
  %idxprom.i23.i.i1471 = and i64 %xor.narrow.i22.i.i1470, 255
  %arrayidx.i24.i.i1472 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1471
  %612 = load i32, ptr %arrayidx.i24.i.i1472, align 4, !tbaa !12
  %xor2.i25.i.i1473 = xor i32 %shr.i20.i.i1468, %612
  %shr10.i.i1474 = lshr i64 %bf.cast477, 32
  %shr.i26.i.i1475 = lshr i32 %xor2.i25.i.i1473, 8
  %.tr.i27.i.i1476 = zext i32 %xor2.i25.i.i1473 to i64
  %xor.narrow.i28.i.i1477 = xor i64 %shr10.i.i1474, %.tr.i27.i.i1476
  %idxprom.i29.i.i1478 = and i64 %xor.narrow.i28.i.i1477, 255
  %arrayidx.i30.i.i1479 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1478
  %613 = load i32, ptr %arrayidx.i30.i.i1479, align 4, !tbaa !12
  %xor2.i31.i.i1480 = xor i32 %shr.i26.i.i1475, %613
  %shr13.i.i1481 = lshr i64 %bf.cast477, 40
  %shr.i32.i.i1482 = lshr i32 %xor2.i31.i.i1480, 8
  %.tr.i33.i.i1483 = zext i32 %xor2.i31.i.i1480 to i64
  %xor.narrow.i34.i.i1484 = xor i64 %shr13.i.i1481, %.tr.i33.i.i1483
  %idxprom.i35.i.i1485 = and i64 %xor.narrow.i34.i.i1484, 255
  %arrayidx.i36.i.i1486 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1485
  %614 = load i32, ptr %arrayidx.i36.i.i1486, align 4, !tbaa !12
  %xor2.i37.i.i1487 = xor i32 %shr.i32.i.i1482, %614
  %shr16.i.i1488 = lshr i64 %bf.cast477, 48
  %shr.i38.i.i1489 = lshr i32 %xor2.i37.i.i1487, 8
  %.tr.i39.i.i1490 = zext i32 %xor2.i37.i.i1487 to i64
  %xor.narrow.i40.i.i1491 = xor i64 %shr16.i.i1488, %.tr.i39.i.i1490
  %idxprom.i41.i.i1492 = and i64 %xor.narrow.i40.i.i1491, 255
  %arrayidx.i42.i.i1493 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1492
  %615 = load i32, ptr %arrayidx.i42.i.i1493, align 4, !tbaa !12
  %xor2.i43.i.i1494 = xor i32 %shr.i38.i.i1489, %615
  %shr19.i.i1495 = lshr i64 %bf.cast477, 56
  %shr.i44.i.i1496 = lshr i32 %xor2.i43.i.i1494, 8
  %616 = and i32 %xor2.i43.i.i1494, 255
  %.tr.i45.masked.i.i1497 = zext nneg i32 %616 to i64
  %idxprom.i47.i.i1498 = xor i64 %shr19.i.i1495, %.tr.i45.masked.i.i1497
  %arrayidx.i48.i.i1499 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i1498
  %617 = load i32, ptr %arrayidx.i48.i.i1499, align 4, !tbaa !12
  %xor2.i49.i.i1500 = xor i32 %shr.i44.i.i1496, %617
  store i32 %xor2.i49.i.i1500, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1505, label %if.then.i1502

if.then.i1502:                                    ; preds = %transparent_crc.exit1446
  %618 = xor i32 %xor2.i49.i.i1500, -1
  %xor.i1503 = zext i32 %618 to i64
  %call.i1504 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.66, i64 noundef %xor.i1503)
  br label %transparent_crc.exit1505

transparent_crc.exit1505:                         ; preds = %transparent_crc.exit1446, %if.then.i1502
  br i1 %tobool748.not, label %for.inc483, label %if.then480

if.then480:                                       ; preds = %transparent_crc.exit1505
  %619 = trunc nuw nsw i64 %indvars.iv3164 to i32
  %call481 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %524, i32 noundef %525, i32 noundef %619)
  br label %for.inc483

for.inc483:                                       ; preds = %transparent_crc.exit1505, %if.then480
  %indvars.iv.next3165 = add nuw nsw i64 %indvars.iv3164, 1
  %exitcond3167.not = icmp eq i64 %indvars.iv.next3165, 5
  br i1 %exitcond3167.not, label %for.inc486, label %for.body401, !llvm.loop !101

for.inc486:                                       ; preds = %for.inc483
  %indvars.iv.next3169 = add nuw nsw i64 %indvars.iv3168, 1
  %exitcond3171.not = icmp eq i64 %indvars.iv.next3169, 7
  br i1 %exitcond3171.not, label %for.inc489, label %for.cond398.preheader, !llvm.loop !102

for.inc489:                                       ; preds = %for.inc486
  %indvars.iv.next3173 = add nuw nsw i64 %indvars.iv3172, 1
  %exitcond3175.not = icmp eq i64 %indvars.iv.next3173, 7
  br i1 %exitcond3175.not, label %for.end491, label %for.cond394.preheader, !llvm.loop !103

for.end491:                                       ; preds = %for.inc489
  call fastcc void @transparent_crc(i64 noundef 0, ptr noundef nonnull @.str.67, i32 noundef %print_hash_value.0)
  %620 = load i16, ptr @g_2432, align 2, !tbaa !15
  %conv493 = sext i16 %620 to i64
  call fastcc void @transparent_crc(i64 noundef %conv493, ptr noundef nonnull @.str.68, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 0, ptr noundef nonnull @.str.69, i32 noundef %print_hash_value.0)
  %621 = load volatile i32, ptr @g_2507, align 4, !tbaa !12
  %conv495 = sext i32 %621 to i64
  call fastcc void @transparent_crc(i64 noundef %conv495, ptr noundef nonnull @.str.70, i32 noundef %print_hash_value.0)
  %622 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1506 = lshr i32 %622, 8
  %623 = and i32 %622, 255
  %624 = xor i32 %623, 19
  %idxprom.i.i.i1509 = zext nneg i32 %624 to i64
  %arrayidx.i.i.i1510 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1509
  %625 = load i32, ptr %arrayidx.i.i.i1510, align 4, !tbaa !12
  %xor2.i.i.i1511 = xor i32 %shr.i.i.i1506, %625
  %shr.i8.i.i1512 = lshr i32 %xor2.i.i.i1511, 8
  %626 = and i32 %xor2.i.i.i1511, 255
  %627 = xor i32 %626, 38
  %idxprom.i11.i.i1515 = zext nneg i32 %627 to i64
  %arrayidx.i12.i.i1516 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1515
  %628 = load i32, ptr %arrayidx.i12.i.i1516, align 4, !tbaa !12
  %xor2.i13.i.i1517 = xor i32 %shr.i8.i.i1512, %628
  %shr.i14.i.i1518 = lshr i32 %xor2.i13.i.i1517, 8
  %629 = and i32 %xor2.i13.i.i1517, 255
  %630 = xor i32 %629, 139
  %idxprom.i17.i.i1521 = zext nneg i32 %630 to i64
  %arrayidx.i18.i.i1522 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1521
  %631 = load i32, ptr %arrayidx.i18.i.i1522, align 4, !tbaa !12
  %xor2.i19.i.i1523 = xor i32 %shr.i14.i.i1518, %631
  %shr.i20.i.i1524 = lshr i32 %xor2.i19.i.i1523, 8
  %632 = and i32 %xor2.i19.i.i1523, 255
  %633 = xor i32 %632, 124
  %idxprom.i23.i.i1527 = zext nneg i32 %633 to i64
  %arrayidx.i24.i.i1528 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1527
  %634 = load i32, ptr %arrayidx.i24.i.i1528, align 4, !tbaa !12
  %xor2.i25.i.i1529 = xor i32 %shr.i20.i.i1524, %634
  %shr.i26.i.i1530 = lshr i32 %xor2.i25.i.i1529, 8
  %635 = and i32 %xor2.i25.i.i1529, 255
  %idxprom.i29.i.i1533 = zext nneg i32 %635 to i64
  %arrayidx.i30.i.i1534 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1533
  %636 = load i32, ptr %arrayidx.i30.i.i1534, align 4, !tbaa !12
  %xor2.i31.i.i1535 = xor i32 %shr.i26.i.i1530, %636
  %shr.i32.i.i1536 = lshr i32 %xor2.i31.i.i1535, 8
  %637 = and i32 %xor2.i31.i.i1535, 255
  %idxprom.i35.i.i1539 = zext nneg i32 %637 to i64
  %arrayidx.i36.i.i1540 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1539
  %638 = load i32, ptr %arrayidx.i36.i.i1540, align 4, !tbaa !12
  %xor2.i37.i.i1541 = xor i32 %shr.i32.i.i1536, %638
  %shr.i38.i.i1542 = lshr i32 %xor2.i37.i.i1541, 8
  %639 = and i32 %xor2.i37.i.i1541, 255
  %idxprom.i41.i.i1545 = zext nneg i32 %639 to i64
  %arrayidx.i42.i.i1546 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1545
  %640 = load i32, ptr %arrayidx.i42.i.i1546, align 4, !tbaa !12
  %xor2.i43.i.i1547 = xor i32 %shr.i38.i.i1542, %640
  %shr.i44.i.i1548 = lshr i32 %xor2.i43.i.i1547, 8
  %641 = and i32 %xor2.i43.i.i1547, 255
  %.tr.i45.masked.i.i1549 = zext nneg i32 %641 to i64
  %arrayidx.i48.i.i1551 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1549
  %642 = load i32, ptr %arrayidx.i48.i.i1551, align 4, !tbaa !12
  %xor2.i49.i.i1552 = xor i32 %shr.i44.i.i1548, %642
  store i32 %xor2.i49.i.i1552, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1557, label %if.then.i1554

if.then.i1554:                                    ; preds = %for.end491
  %643 = xor i32 %xor2.i49.i.i1552, -1
  %xor.i1555 = zext i32 %643 to i64
  %call.i1556 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.71, i64 noundef %xor.i1555)
  br label %transparent_crc.exit1557

transparent_crc.exit1557:                         ; preds = %for.end491, %if.then.i1554
  call fastcc void @transparent_crc(i64 noundef 0, ptr noundef nonnull @.str.72, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 1, ptr noundef nonnull @.str.73, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 5837, ptr noundef nonnull @.str.74, i32 noundef %print_hash_value.0)
  %644 = load volatile i32, ptr @g_2769, align 4, !tbaa !12
  %conv499 = zext i32 %644 to i64
  call fastcc void @transparent_crc(i64 noundef %conv499, ptr noundef nonnull @.str.75, i32 noundef %print_hash_value.0)
  %645 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1558 = lshr i32 %645, 8
  %646 = and i32 %645, 255
  %idxprom.i.i.i1561 = zext nneg i32 %646 to i64
  %arrayidx.i.i.i1562 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1561
  %647 = load i32, ptr %arrayidx.i.i.i1562, align 4, !tbaa !12
  %xor2.i.i.i1563 = xor i32 %shr.i.i.i1558, %647
  %shr.i8.i.i1564 = lshr i32 %xor2.i.i.i1563, 8
  %648 = and i32 %xor2.i.i.i1563, 255
  %idxprom.i11.i.i1567 = zext nneg i32 %648 to i64
  %arrayidx.i12.i.i1568 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1567
  %649 = load i32, ptr %arrayidx.i12.i.i1568, align 4, !tbaa !12
  %xor2.i13.i.i1569 = xor i32 %shr.i8.i.i1564, %649
  %shr.i14.i.i1570 = lshr i32 %xor2.i13.i.i1569, 8
  %650 = and i32 %xor2.i13.i.i1569, 255
  %idxprom.i17.i.i1573 = zext nneg i32 %650 to i64
  %arrayidx.i18.i.i1574 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1573
  %651 = load i32, ptr %arrayidx.i18.i.i1574, align 4, !tbaa !12
  %xor2.i19.i.i1575 = xor i32 %shr.i14.i.i1570, %651
  %shr.i20.i.i1576 = lshr i32 %xor2.i19.i.i1575, 8
  %652 = and i32 %xor2.i19.i.i1575, 255
  %idxprom.i23.i.i1579 = zext nneg i32 %652 to i64
  %arrayidx.i24.i.i1580 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1579
  %653 = load i32, ptr %arrayidx.i24.i.i1580, align 4, !tbaa !12
  %xor2.i25.i.i1581 = xor i32 %shr.i20.i.i1576, %653
  %shr.i26.i.i1582 = lshr i32 %xor2.i25.i.i1581, 8
  %654 = and i32 %xor2.i25.i.i1581, 255
  %idxprom.i29.i.i1585 = zext nneg i32 %654 to i64
  %arrayidx.i30.i.i1586 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1585
  %655 = load i32, ptr %arrayidx.i30.i.i1586, align 4, !tbaa !12
  %xor2.i31.i.i1587 = xor i32 %shr.i26.i.i1582, %655
  %shr.i32.i.i1588 = lshr i32 %xor2.i31.i.i1587, 8
  %656 = and i32 %xor2.i31.i.i1587, 255
  %idxprom.i35.i.i1591 = zext nneg i32 %656 to i64
  %arrayidx.i36.i.i1592 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1591
  %657 = load i32, ptr %arrayidx.i36.i.i1592, align 4, !tbaa !12
  %xor2.i37.i.i1593 = xor i32 %shr.i32.i.i1588, %657
  %shr.i38.i.i1594 = lshr i32 %xor2.i37.i.i1593, 8
  %658 = and i32 %xor2.i37.i.i1593, 255
  %idxprom.i41.i.i1597 = zext nneg i32 %658 to i64
  %arrayidx.i42.i.i1598 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1597
  %659 = load i32, ptr %arrayidx.i42.i.i1598, align 4, !tbaa !12
  %xor2.i43.i.i1599 = xor i32 %shr.i38.i.i1594, %659
  %shr.i44.i.i1600 = lshr i32 %xor2.i43.i.i1599, 8
  %660 = and i32 %xor2.i43.i.i1599, 255
  %.tr.i45.masked.i.i1601 = zext nneg i32 %660 to i64
  %arrayidx.i48.i.i1603 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1601
  %661 = load i32, ptr %arrayidx.i48.i.i1603, align 4, !tbaa !12
  %xor2.i49.i.i1604 = xor i32 %shr.i44.i.i1600, %661
  store i32 %xor2.i49.i.i1604, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1609, label %if.then.i1606

if.then.i1606:                                    ; preds = %transparent_crc.exit1557
  %662 = xor i32 %xor2.i49.i.i1604, -1
  %xor.i1607 = zext i32 %662 to i64
  %call.i1608 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.76, i64 noundef %xor.i1607)
  br label %transparent_crc.exit1609

transparent_crc.exit1609:                         ; preds = %transparent_crc.exit1557, %if.then.i1606
  call fastcc void @transparent_crc(i64 noundef 1, ptr noundef nonnull @.str.77, i32 noundef %print_hash_value.0)
  br label %for.body508

for.body508:                                      ; preds = %transparent_crc.exit1609, %for.inc521
  %cmp502 = phi i1 [ true, %transparent_crc.exit1609 ], [ false, %for.inc521 ]
  %indvars.iv3176 = phi i64 [ 0, %transparent_crc.exit1609 ], [ 1, %for.inc521 ]
  %arrayidx510 = getelementptr inbounds nuw [2 x [1 x i32]], ptr @g_3070, i64 0, i64 %indvars.iv3176
  %663 = load i32, ptr %arrayidx510, align 4, !tbaa !12
  %conv513 = zext i32 %663 to i64
  call fastcc void @transparent_crc(i64 noundef %conv513, ptr noundef nonnull @.str.78, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc521, label %if.then515

if.then515:                                       ; preds = %for.body508
  %664 = trunc nuw nsw i64 %indvars.iv3176 to i32
  %call516 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, i32 noundef %664, i32 noundef 0)
  br label %for.inc521

for.inc521:                                       ; preds = %if.then515, %for.body508
  br i1 %cmp502, label %for.body508, label %for.body527, !llvm.loop !104

for.body527:                                      ; preds = %for.inc521, %for.inc535
  %indvars.iv3179 = phi i64 [ %indvars.iv.next3180, %for.inc535 ], [ 0, %for.inc521 ]
  %arrayidx529 = getelementptr inbounds nuw [4 x i8], ptr @g_3086, i64 0, i64 %indvars.iv3179
  %665 = load i8, ptr %arrayidx529, align 1, !tbaa !42
  %conv530 = zext i8 %665 to i64
  call fastcc void @transparent_crc(i64 noundef %conv530, ptr noundef nonnull @.str.79, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc535, label %if.then532

if.then532:                                       ; preds = %for.body527
  %666 = trunc nuw nsw i64 %indvars.iv3179 to i32
  %call533 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %666)
  br label %for.inc535

for.inc535:                                       ; preds = %for.body527, %if.then532
  %indvars.iv.next3180 = add nuw nsw i64 %indvars.iv3179, 1
  %exitcond3182.not = icmp eq i64 %indvars.iv.next3180, 4
  br i1 %exitcond3182.not, label %for.end537, label %for.body527, !llvm.loop !105

for.end537:                                       ; preds = %for.inc535
  %667 = load volatile i32, ptr @g_3323, align 4, !tbaa !12
  %conv538 = zext i32 %667 to i64
  call fastcc void @transparent_crc(i64 noundef %conv538, ptr noundef nonnull @.str.80, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef -10, ptr noundef nonnull @.str.81, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef -1, ptr noundef nonnull @.str.82, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 1, ptr noundef nonnull @.str.83, i32 noundef %print_hash_value.0)
  %668 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1610 = lshr i32 %668, 8
  %669 = and i32 %668, 255
  %670 = xor i32 %669, 255
  %idxprom.i.i.i1613 = zext nneg i32 %670 to i64
  %arrayidx.i.i.i1614 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1613
  %671 = load i32, ptr %arrayidx.i.i.i1614, align 4, !tbaa !12
  %xor2.i.i.i1615 = xor i32 %shr.i.i.i1610, %671
  %shr.i8.i.i1616 = lshr i32 %xor2.i.i.i1615, 8
  %672 = and i32 %xor2.i.i.i1615, 255
  %673 = xor i32 %672, 255
  %idxprom.i11.i.i1619 = zext nneg i32 %673 to i64
  %arrayidx.i12.i.i1620 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1619
  %674 = load i32, ptr %arrayidx.i12.i.i1620, align 4, !tbaa !12
  %xor2.i13.i.i1621 = xor i32 %shr.i8.i.i1616, %674
  %shr.i14.i.i1622 = lshr i32 %xor2.i13.i.i1621, 8
  %675 = and i32 %xor2.i13.i.i1621, 255
  %676 = xor i32 %675, 255
  %idxprom.i17.i.i1625 = zext nneg i32 %676 to i64
  %arrayidx.i18.i.i1626 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1625
  %677 = load i32, ptr %arrayidx.i18.i.i1626, align 4, !tbaa !12
  %xor2.i19.i.i1627 = xor i32 %shr.i14.i.i1622, %677
  %shr.i20.i.i1628 = lshr i32 %xor2.i19.i.i1627, 8
  %678 = and i32 %xor2.i19.i.i1627, 255
  %679 = xor i32 %678, 255
  %idxprom.i23.i.i1631 = zext nneg i32 %679 to i64
  %arrayidx.i24.i.i1632 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1631
  %680 = load i32, ptr %arrayidx.i24.i.i1632, align 4, !tbaa !12
  %xor2.i25.i.i1633 = xor i32 %shr.i20.i.i1628, %680
  %shr.i26.i.i1634 = lshr i32 %xor2.i25.i.i1633, 8
  %681 = and i32 %xor2.i25.i.i1633, 255
  %682 = xor i32 %681, 255
  %idxprom.i29.i.i1637 = zext nneg i32 %682 to i64
  %arrayidx.i30.i.i1638 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1637
  %683 = load i32, ptr %arrayidx.i30.i.i1638, align 4, !tbaa !12
  %xor2.i31.i.i1639 = xor i32 %shr.i26.i.i1634, %683
  %shr.i32.i.i1640 = lshr i32 %xor2.i31.i.i1639, 8
  %684 = and i32 %xor2.i31.i.i1639, 255
  %685 = xor i32 %684, 255
  %idxprom.i35.i.i1643 = zext nneg i32 %685 to i64
  %arrayidx.i36.i.i1644 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1643
  %686 = load i32, ptr %arrayidx.i36.i.i1644, align 4, !tbaa !12
  %xor2.i37.i.i1645 = xor i32 %shr.i32.i.i1640, %686
  %shr.i38.i.i1646 = lshr i32 %xor2.i37.i.i1645, 8
  %687 = and i32 %xor2.i37.i.i1645, 255
  %688 = xor i32 %687, 255
  %idxprom.i41.i.i1649 = zext nneg i32 %688 to i64
  %arrayidx.i42.i.i1650 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1649
  %689 = load i32, ptr %arrayidx.i42.i.i1650, align 4, !tbaa !12
  %xor2.i43.i.i1651 = xor i32 %shr.i38.i.i1646, %689
  %shr.i44.i.i1652 = lshr i32 %xor2.i43.i.i1651, 8
  %690 = and i32 %xor2.i43.i.i1651, 255
  %691 = xor i32 %690, 255
  %idxprom.i47.i.i1654 = zext nneg i32 %691 to i64
  %arrayidx.i48.i.i1655 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i1654
  %692 = load i32, ptr %arrayidx.i48.i.i1655, align 4, !tbaa !12
  %xor2.i49.i.i1656 = xor i32 %shr.i44.i.i1652, %692
  store i32 %xor2.i49.i.i1656, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1661, label %if.then.i1658

if.then.i1658:                                    ; preds = %for.end537
  %693 = xor i32 %xor2.i49.i.i1656, -1
  %xor.i1659 = zext i32 %693 to i64
  %call.i1660 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.84, i64 noundef %xor.i1659)
  br label %transparent_crc.exit1661

transparent_crc.exit1661:                         ; preds = %for.end537, %if.then.i1658
  %694 = load volatile i16, ptr @g_3527, align 2, !tbaa !15
  %conv542 = sext i16 %694 to i64
  call fastcc void @transparent_crc(i64 noundef %conv542, ptr noundef nonnull @.str.85, i32 noundef %print_hash_value.0)
  %695 = load volatile i32, ptr @g_3599, align 4, !tbaa !12
  %conv543 = zext i32 %695 to i64
  call fastcc void @transparent_crc(i64 noundef %conv543, ptr noundef nonnull @.str.86, i32 noundef %print_hash_value.0)
  %696 = load i64, ptr @g_3636, align 8, !tbaa !24
  call fastcc void @transparent_crc(i64 noundef %696, ptr noundef nonnull @.str.87, i32 noundef %print_hash_value.0)
  br label %for.cond548.preheader

for.cond548.preheader:                            ; preds = %transparent_crc.exit1661, %for.inc573
  %i.193032 = phi i32 [ 0, %transparent_crc.exit1661 ], [ %inc574, %for.inc573 ]
  br i1 %tobool.not.i359, label %for.cond548.preheader.split.us, label %for.cond552.preheader

for.cond548.preheader.split.us:                   ; preds = %for.cond548.preheader
  br i1 %tobool748.not, label %for.cond548.preheader.split.us.split.us, label %for.cond552.preheader.us

for.cond548.preheader.split.us.split.us:          ; preds = %for.cond548.preheader.split.us
  %crc32_context.promoted3030 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %for.cond552.preheader.us.us

for.cond552.preheader.us.us:                      ; preds = %for.inc570.split.us.us.split.us.us, %for.cond548.preheader.split.us.split.us
  %xor2.i49.i.i1715.us.us.us.lcssa.us3031 = phi i32 [ %crc32_context.promoted3030, %for.cond548.preheader.split.us.split.us ], [ %xor2.i49.i.i1715.us.us.us.us, %for.inc570.split.us.us.split.us.us ]
  %j.113027.us.us = phi i32 [ 0, %for.cond548.preheader.split.us.split.us ], [ %inc571.us.us, %for.inc570.split.us.us.split.us.us ]
  br label %for.body555.us.us.us.us

for.body555.us.us.us.us:                          ; preds = %for.body555.us.us.us.us, %for.cond552.preheader.us.us
  %xor2.i49.i.i1715.us.us.us3029.us = phi i32 [ %xor2.i49.i.i1715.us.us.us.lcssa.us3031, %for.cond552.preheader.us.us ], [ %xor2.i49.i.i1715.us.us.us.us, %for.body555.us.us.us.us ]
  %cmp553.us.us.us.us = phi i1 [ true, %for.cond552.preheader.us.us ], [ false, %for.body555.us.us.us.us ]
  %shr.i.i.i1662.us.us.us.us = lshr i32 %xor2.i49.i.i1715.us.us.us3029.us, 8
  %xor.narrow.i.i.i16642977.us.us.us.us = and i32 %xor2.i49.i.i1715.us.us.us3029.us, 255
  %697 = xor i32 %xor.narrow.i.i.i16642977.us.us.us.us, 207
  %idxprom.i.i.i1665.us.us.us.us = zext nneg i32 %697 to i64
  %arrayidx.i.i.i1666.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1665.us.us.us.us
  %698 = load i32, ptr %arrayidx.i.i.i1666.us.us.us.us, align 4, !tbaa !12
  %xor2.i.i.i1667.us.us.us.us = xor i32 %shr.i.i.i1662.us.us.us.us, %698
  %shr.i8.i.i1669.us.us.us.us = lshr i32 %xor2.i.i.i1667.us.us.us.us, 8
  %699 = and i32 %xor2.i.i.i1667.us.us.us.us, 255
  %700 = xor i32 %699, 154
  %idxprom.i11.i.i1672.us.us.us.us = zext nneg i32 %700 to i64
  %arrayidx.i12.i.i1673.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1672.us.us.us.us
  %701 = load i32, ptr %arrayidx.i12.i.i1673.us.us.us.us, align 4, !tbaa !12
  %xor2.i13.i.i1674.us.us.us.us = xor i32 %shr.i8.i.i1669.us.us.us.us, %701
  %shr.i14.i.i1676.us.us.us.us = lshr i32 %xor2.i13.i.i1674.us.us.us.us, 8
  %702 = and i32 %xor2.i13.i.i1674.us.us.us.us, 255
  %703 = xor i32 %702, 248
  %idxprom.i17.i.i1679.us.us.us.us = zext nneg i32 %703 to i64
  %arrayidx.i18.i.i1680.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1679.us.us.us.us
  %704 = load i32, ptr %arrayidx.i18.i.i1680.us.us.us.us, align 4, !tbaa !12
  %xor2.i19.i.i1681.us.us.us.us = xor i32 %shr.i14.i.i1676.us.us.us.us, %704
  %shr.i20.i.i1683.us.us.us.us = lshr i32 %xor2.i19.i.i1681.us.us.us.us, 8
  %705 = and i32 %xor2.i19.i.i1681.us.us.us.us, 255
  %706 = xor i32 %705, 66
  %idxprom.i23.i.i1686.us.us.us.us = zext nneg i32 %706 to i64
  %arrayidx.i24.i.i1687.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1686.us.us.us.us
  %707 = load i32, ptr %arrayidx.i24.i.i1687.us.us.us.us, align 4, !tbaa !12
  %xor2.i25.i.i1688.us.us.us.us = xor i32 %shr.i20.i.i1683.us.us.us.us, %707
  %shr.i26.i.i1690.us.us.us.us = lshr i32 %xor2.i25.i.i1688.us.us.us.us, 8
  %708 = and i32 %xor2.i25.i.i1688.us.us.us.us, 255
  %idxprom.i29.i.i1693.us.us.us.us = zext nneg i32 %708 to i64
  %arrayidx.i30.i.i1694.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1693.us.us.us.us
  %709 = load i32, ptr %arrayidx.i30.i.i1694.us.us.us.us, align 4, !tbaa !12
  %xor2.i31.i.i1695.us.us.us.us = xor i32 %shr.i26.i.i1690.us.us.us.us, %709
  %shr.i32.i.i1697.us.us.us.us = lshr i32 %xor2.i31.i.i1695.us.us.us.us, 8
  %710 = and i32 %xor2.i31.i.i1695.us.us.us.us, 255
  %idxprom.i35.i.i1700.us.us.us.us = zext nneg i32 %710 to i64
  %arrayidx.i36.i.i1701.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1700.us.us.us.us
  %711 = load i32, ptr %arrayidx.i36.i.i1701.us.us.us.us, align 4, !tbaa !12
  %xor2.i37.i.i1702.us.us.us.us = xor i32 %shr.i32.i.i1697.us.us.us.us, %711
  %shr.i38.i.i1704.us.us.us.us = lshr i32 %xor2.i37.i.i1702.us.us.us.us, 8
  %712 = and i32 %xor2.i37.i.i1702.us.us.us.us, 255
  %idxprom.i41.i.i1707.us.us.us.us = zext nneg i32 %712 to i64
  %arrayidx.i42.i.i1708.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1707.us.us.us.us
  %713 = load i32, ptr %arrayidx.i42.i.i1708.us.us.us.us, align 4, !tbaa !12
  %xor2.i43.i.i1709.us.us.us.us = xor i32 %shr.i38.i.i1704.us.us.us.us, %713
  %shr.i44.i.i1711.us.us.us.us = lshr i32 %xor2.i43.i.i1709.us.us.us.us, 8
  %714 = and i32 %xor2.i43.i.i1709.us.us.us.us, 255
  %.tr.i45.masked.i.i1712.us.us.us.us = zext nneg i32 %714 to i64
  %arrayidx.i48.i.i1714.us.us.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1712.us.us.us.us
  %715 = load i32, ptr %arrayidx.i48.i.i1714.us.us.us.us, align 4, !tbaa !12
  %xor2.i49.i.i1715.us.us.us.us = xor i32 %shr.i44.i.i1711.us.us.us.us, %715
  br i1 %cmp553.us.us.us.us, label %for.body555.us.us.us.us, label %for.inc570.split.us.us.split.us.us, !llvm.loop !106

for.inc570.split.us.us.split.us.us:               ; preds = %for.body555.us.us.us.us
  %inc571.us.us = add nuw nsw i32 %j.113027.us.us, 1
  %exitcond3185.not = icmp eq i32 %inc571.us.us, 3
  br i1 %exitcond3185.not, label %for.inc573.split.us.split.us, label %for.cond552.preheader.us.us, !llvm.loop !107

for.inc573.split.us.split.us:                     ; preds = %for.inc570.split.us.us.split.us.us
  store i32 %xor2.i49.i.i1715.us.us.us.us, ptr @crc32_context, align 4, !tbaa !12
  br label %for.inc573

for.cond552.preheader.us:                         ; preds = %for.cond548.preheader.split.us, %for.inc570.split.us.us.split
  %j.113027.us = phi i32 [ %inc571.us, %for.inc570.split.us.us.split ], [ 0, %for.cond548.preheader.split.us ]
  br label %for.body555.us.us

for.body555.us.us:                                ; preds = %for.body555.us.us, %for.cond552.preheader.us
  %cmp553.us.us = phi i1 [ true, %for.cond552.preheader.us ], [ false, %for.body555.us.us ]
  %k.53026.us.us = phi i32 [ 0, %for.cond552.preheader.us ], [ 1, %for.body555.us.us ]
  %716 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1662.us.us = lshr i32 %716, 8
  %xor.narrow.i.i.i16642977.us.us = and i32 %716, 255
  %717 = xor i32 %xor.narrow.i.i.i16642977.us.us, 207
  %idxprom.i.i.i1665.us.us = zext nneg i32 %717 to i64
  %arrayidx.i.i.i1666.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1665.us.us
  %718 = load i32, ptr %arrayidx.i.i.i1666.us.us, align 4, !tbaa !12
  %xor2.i.i.i1667.us.us = xor i32 %shr.i.i.i1662.us.us, %718
  %shr.i8.i.i1669.us.us = lshr i32 %xor2.i.i.i1667.us.us, 8
  %719 = and i32 %xor2.i.i.i1667.us.us, 255
  %720 = xor i32 %719, 154
  %idxprom.i11.i.i1672.us.us = zext nneg i32 %720 to i64
  %arrayidx.i12.i.i1673.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1672.us.us
  %721 = load i32, ptr %arrayidx.i12.i.i1673.us.us, align 4, !tbaa !12
  %xor2.i13.i.i1674.us.us = xor i32 %shr.i8.i.i1669.us.us, %721
  %shr.i14.i.i1676.us.us = lshr i32 %xor2.i13.i.i1674.us.us, 8
  %722 = and i32 %xor2.i13.i.i1674.us.us, 255
  %723 = xor i32 %722, 248
  %idxprom.i17.i.i1679.us.us = zext nneg i32 %723 to i64
  %arrayidx.i18.i.i1680.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1679.us.us
  %724 = load i32, ptr %arrayidx.i18.i.i1680.us.us, align 4, !tbaa !12
  %xor2.i19.i.i1681.us.us = xor i32 %shr.i14.i.i1676.us.us, %724
  %shr.i20.i.i1683.us.us = lshr i32 %xor2.i19.i.i1681.us.us, 8
  %725 = and i32 %xor2.i19.i.i1681.us.us, 255
  %726 = xor i32 %725, 66
  %idxprom.i23.i.i1686.us.us = zext nneg i32 %726 to i64
  %arrayidx.i24.i.i1687.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1686.us.us
  %727 = load i32, ptr %arrayidx.i24.i.i1687.us.us, align 4, !tbaa !12
  %xor2.i25.i.i1688.us.us = xor i32 %shr.i20.i.i1683.us.us, %727
  %shr.i26.i.i1690.us.us = lshr i32 %xor2.i25.i.i1688.us.us, 8
  %728 = and i32 %xor2.i25.i.i1688.us.us, 255
  %idxprom.i29.i.i1693.us.us = zext nneg i32 %728 to i64
  %arrayidx.i30.i.i1694.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1693.us.us
  %729 = load i32, ptr %arrayidx.i30.i.i1694.us.us, align 4, !tbaa !12
  %xor2.i31.i.i1695.us.us = xor i32 %shr.i26.i.i1690.us.us, %729
  %shr.i32.i.i1697.us.us = lshr i32 %xor2.i31.i.i1695.us.us, 8
  %730 = and i32 %xor2.i31.i.i1695.us.us, 255
  %idxprom.i35.i.i1700.us.us = zext nneg i32 %730 to i64
  %arrayidx.i36.i.i1701.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1700.us.us
  %731 = load i32, ptr %arrayidx.i36.i.i1701.us.us, align 4, !tbaa !12
  %xor2.i37.i.i1702.us.us = xor i32 %shr.i32.i.i1697.us.us, %731
  %shr.i38.i.i1704.us.us = lshr i32 %xor2.i37.i.i1702.us.us, 8
  %732 = and i32 %xor2.i37.i.i1702.us.us, 255
  %idxprom.i41.i.i1707.us.us = zext nneg i32 %732 to i64
  %arrayidx.i42.i.i1708.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1707.us.us
  %733 = load i32, ptr %arrayidx.i42.i.i1708.us.us, align 4, !tbaa !12
  %xor2.i43.i.i1709.us.us = xor i32 %shr.i38.i.i1704.us.us, %733
  %shr.i44.i.i1711.us.us = lshr i32 %xor2.i43.i.i1709.us.us, 8
  %734 = and i32 %xor2.i43.i.i1709.us.us, 255
  %.tr.i45.masked.i.i1712.us.us = zext nneg i32 %734 to i64
  %arrayidx.i48.i.i1714.us.us = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1712.us.us
  %735 = load i32, ptr %arrayidx.i48.i.i1714.us.us, align 4, !tbaa !12
  %xor2.i49.i.i1715.us.us = xor i32 %shr.i44.i.i1711.us.us, %735
  store i32 %xor2.i49.i.i1715.us.us, ptr @crc32_context, align 4, !tbaa !12
  %call565.us.us = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.193032, i32 noundef %j.113027.us, i32 noundef %k.53026.us.us)
  br i1 %cmp553.us.us, label %for.body555.us.us, label %for.inc570.split.us.us.split, !llvm.loop !106

for.inc570.split.us.us.split:                     ; preds = %for.body555.us.us
  %inc571.us = add nuw nsw i32 %j.113027.us, 1
  %exitcond3184.not = icmp eq i32 %inc571.us, 3
  br i1 %exitcond3184.not, label %for.inc573, label %for.cond552.preheader.us, !llvm.loop !107

for.cond552.preheader:                            ; preds = %for.cond548.preheader, %for.inc570.split
  %j.113027 = phi i32 [ %inc571, %for.inc570.split ], [ 0, %for.cond548.preheader ]
  br label %for.body555

for.body555:                                      ; preds = %for.cond552.preheader, %for.inc567
  %cmp553 = phi i1 [ true, %for.cond552.preheader ], [ false, %for.inc567 ]
  %k.53026 = phi i32 [ 0, %for.cond552.preheader ], [ 1, %for.inc567 ]
  %736 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1662 = lshr i32 %736, 8
  %xor.narrow.i.i.i16642977 = and i32 %736, 255
  %737 = xor i32 %xor.narrow.i.i.i16642977, 207
  %idxprom.i.i.i1665 = zext nneg i32 %737 to i64
  %arrayidx.i.i.i1666 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1665
  %738 = load i32, ptr %arrayidx.i.i.i1666, align 4, !tbaa !12
  %xor2.i.i.i1667 = xor i32 %shr.i.i.i1662, %738
  %shr.i8.i.i1669 = lshr i32 %xor2.i.i.i1667, 8
  %739 = and i32 %xor2.i.i.i1667, 255
  %740 = xor i32 %739, 154
  %idxprom.i11.i.i1672 = zext nneg i32 %740 to i64
  %arrayidx.i12.i.i1673 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1672
  %741 = load i32, ptr %arrayidx.i12.i.i1673, align 4, !tbaa !12
  %xor2.i13.i.i1674 = xor i32 %shr.i8.i.i1669, %741
  %shr.i14.i.i1676 = lshr i32 %xor2.i13.i.i1674, 8
  %742 = and i32 %xor2.i13.i.i1674, 255
  %743 = xor i32 %742, 248
  %idxprom.i17.i.i1679 = zext nneg i32 %743 to i64
  %arrayidx.i18.i.i1680 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1679
  %744 = load i32, ptr %arrayidx.i18.i.i1680, align 4, !tbaa !12
  %xor2.i19.i.i1681 = xor i32 %shr.i14.i.i1676, %744
  %shr.i20.i.i1683 = lshr i32 %xor2.i19.i.i1681, 8
  %745 = and i32 %xor2.i19.i.i1681, 255
  %746 = xor i32 %745, 66
  %idxprom.i23.i.i1686 = zext nneg i32 %746 to i64
  %arrayidx.i24.i.i1687 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1686
  %747 = load i32, ptr %arrayidx.i24.i.i1687, align 4, !tbaa !12
  %xor2.i25.i.i1688 = xor i32 %shr.i20.i.i1683, %747
  %shr.i26.i.i1690 = lshr i32 %xor2.i25.i.i1688, 8
  %748 = and i32 %xor2.i25.i.i1688, 255
  %idxprom.i29.i.i1693 = zext nneg i32 %748 to i64
  %arrayidx.i30.i.i1694 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1693
  %749 = load i32, ptr %arrayidx.i30.i.i1694, align 4, !tbaa !12
  %xor2.i31.i.i1695 = xor i32 %shr.i26.i.i1690, %749
  %shr.i32.i.i1697 = lshr i32 %xor2.i31.i.i1695, 8
  %750 = and i32 %xor2.i31.i.i1695, 255
  %idxprom.i35.i.i1700 = zext nneg i32 %750 to i64
  %arrayidx.i36.i.i1701 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1700
  %751 = load i32, ptr %arrayidx.i36.i.i1701, align 4, !tbaa !12
  %xor2.i37.i.i1702 = xor i32 %shr.i32.i.i1697, %751
  %shr.i38.i.i1704 = lshr i32 %xor2.i37.i.i1702, 8
  %752 = and i32 %xor2.i37.i.i1702, 255
  %idxprom.i41.i.i1707 = zext nneg i32 %752 to i64
  %arrayidx.i42.i.i1708 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1707
  %753 = load i32, ptr %arrayidx.i42.i.i1708, align 4, !tbaa !12
  %xor2.i43.i.i1709 = xor i32 %shr.i38.i.i1704, %753
  %shr.i44.i.i1711 = lshr i32 %xor2.i43.i.i1709, 8
  %754 = and i32 %xor2.i43.i.i1709, 255
  %.tr.i45.masked.i.i1712 = zext nneg i32 %754 to i64
  %arrayidx.i48.i.i1714 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1712
  %755 = load i32, ptr %arrayidx.i48.i.i1714, align 4, !tbaa !12
  %xor2.i49.i.i1715 = xor i32 %shr.i44.i.i1711, %755
  store i32 %xor2.i49.i.i1715, ptr @crc32_context, align 4, !tbaa !12
  %756 = xor i32 %xor2.i49.i.i1715, -1
  %xor.i1718 = zext i32 %756 to i64
  %call.i1719 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.88, i64 noundef %xor.i1718)
  br i1 %tobool748.not, label %for.inc567, label %if.then564

if.then564:                                       ; preds = %for.body555
  %call565 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.193032, i32 noundef %j.113027, i32 noundef %k.53026)
  br label %for.inc567

for.inc567:                                       ; preds = %for.body555, %if.then564
  br i1 %cmp553, label %for.body555, label %for.inc570.split, !llvm.loop !106

for.inc570.split:                                 ; preds = %for.inc567
  %inc571 = add nuw nsw i32 %j.113027, 1
  %exitcond3183.not = icmp eq i32 %inc571, 3
  br i1 %exitcond3183.not, label %for.inc573, label %for.cond552.preheader, !llvm.loop !107

for.inc573:                                       ; preds = %for.inc570.split, %for.inc570.split.us.us.split, %for.inc573.split.us.split.us
  %inc574 = add nuw nsw i32 %i.193032, 1
  %exitcond3186.not = icmp eq i32 %inc574, 3
  br i1 %exitcond3186.not, label %for.end575, label %for.cond548.preheader, !llvm.loop !108

for.end575:                                       ; preds = %for.inc573
  %757 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1721 = lshr i32 %757, 8
  %758 = and i32 %757, 255
  %759 = xor i32 %758, 37
  %idxprom.i.i.i1724 = zext nneg i32 %759 to i64
  %arrayidx.i.i.i1725 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1724
  %760 = load i32, ptr %arrayidx.i.i.i1725, align 4, !tbaa !12
  %xor2.i.i.i1726 = xor i32 %shr.i.i.i1721, %760
  %shr.i8.i.i1727 = lshr i32 %xor2.i.i.i1726, 8
  %761 = and i32 %xor2.i.i.i1726, 255
  %idxprom.i11.i.i1730 = zext nneg i32 %761 to i64
  %arrayidx.i12.i.i1731 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1730
  %762 = load i32, ptr %arrayidx.i12.i.i1731, align 4, !tbaa !12
  %xor2.i13.i.i1732 = xor i32 %shr.i8.i.i1727, %762
  %shr.i14.i.i1733 = lshr i32 %xor2.i13.i.i1732, 8
  %763 = and i32 %xor2.i13.i.i1732, 255
  %idxprom.i17.i.i1736 = zext nneg i32 %763 to i64
  %arrayidx.i18.i.i1737 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1736
  %764 = load i32, ptr %arrayidx.i18.i.i1737, align 4, !tbaa !12
  %xor2.i19.i.i1738 = xor i32 %shr.i14.i.i1733, %764
  %shr.i20.i.i1739 = lshr i32 %xor2.i19.i.i1738, 8
  %765 = and i32 %xor2.i19.i.i1738, 255
  %idxprom.i23.i.i1742 = zext nneg i32 %765 to i64
  %arrayidx.i24.i.i1743 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1742
  %766 = load i32, ptr %arrayidx.i24.i.i1743, align 4, !tbaa !12
  %xor2.i25.i.i1744 = xor i32 %shr.i20.i.i1739, %766
  %shr.i26.i.i1745 = lshr i32 %xor2.i25.i.i1744, 8
  %767 = and i32 %xor2.i25.i.i1744, 255
  %idxprom.i29.i.i1748 = zext nneg i32 %767 to i64
  %arrayidx.i30.i.i1749 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1748
  %768 = load i32, ptr %arrayidx.i30.i.i1749, align 4, !tbaa !12
  %xor2.i31.i.i1750 = xor i32 %shr.i26.i.i1745, %768
  %shr.i32.i.i1751 = lshr i32 %xor2.i31.i.i1750, 8
  %769 = and i32 %xor2.i31.i.i1750, 255
  %idxprom.i35.i.i1754 = zext nneg i32 %769 to i64
  %arrayidx.i36.i.i1755 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1754
  %770 = load i32, ptr %arrayidx.i36.i.i1755, align 4, !tbaa !12
  %xor2.i37.i.i1756 = xor i32 %shr.i32.i.i1751, %770
  %shr.i38.i.i1757 = lshr i32 %xor2.i37.i.i1756, 8
  %771 = and i32 %xor2.i37.i.i1756, 255
  %idxprom.i41.i.i1760 = zext nneg i32 %771 to i64
  %arrayidx.i42.i.i1761 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1760
  %772 = load i32, ptr %arrayidx.i42.i.i1761, align 4, !tbaa !12
  %xor2.i43.i.i1762 = xor i32 %shr.i38.i.i1757, %772
  %shr.i44.i.i1763 = lshr i32 %xor2.i43.i.i1762, 8
  %773 = and i32 %xor2.i43.i.i1762, 255
  %.tr.i45.masked.i.i1764 = zext nneg i32 %773 to i64
  %arrayidx.i48.i.i1766 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1764
  %774 = load i32, ptr %arrayidx.i48.i.i1766, align 4, !tbaa !12
  %xor2.i49.i.i1767 = xor i32 %shr.i44.i.i1763, %774
  store i32 %xor2.i49.i.i1767, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1772, label %if.then.i1769

if.then.i1769:                                    ; preds = %for.end575
  %775 = xor i32 %xor2.i49.i.i1767, -1
  %xor.i1770 = zext i32 %775 to i64
  %call.i1771 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.89, i64 noundef %xor.i1770)
  br label %transparent_crc.exit1772

transparent_crc.exit1772:                         ; preds = %for.end575, %if.then.i1769
  call fastcc void @transparent_crc(i64 noundef -1, ptr noundef nonnull @.str.90, i32 noundef %print_hash_value.0)
  %776 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i1773 = lshr i32 %776, 8
  %777 = and i32 %776, 255
  %778 = xor i32 %777, 47
  %idxprom.i.i.i1776 = zext nneg i32 %778 to i64
  %arrayidx.i.i.i1777 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1776
  %779 = load i32, ptr %arrayidx.i.i.i1777, align 4, !tbaa !12
  %xor2.i.i.i1778 = xor i32 %shr.i.i.i1773, %779
  %shr.i8.i.i1779 = lshr i32 %xor2.i.i.i1778, 8
  %780 = and i32 %xor2.i.i.i1778, 255
  %781 = xor i32 %780, 1
  %idxprom.i11.i.i1782 = zext nneg i32 %781 to i64
  %arrayidx.i12.i.i1783 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1782
  %782 = load i32, ptr %arrayidx.i12.i.i1783, align 4, !tbaa !12
  %xor2.i13.i.i1784 = xor i32 %shr.i8.i.i1779, %782
  %shr.i14.i.i1785 = lshr i32 %xor2.i13.i.i1784, 8
  %783 = and i32 %xor2.i13.i.i1784, 255
  %idxprom.i17.i.i1788 = zext nneg i32 %783 to i64
  %arrayidx.i18.i.i1789 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1788
  %784 = load i32, ptr %arrayidx.i18.i.i1789, align 4, !tbaa !12
  %xor2.i19.i.i1790 = xor i32 %shr.i14.i.i1785, %784
  %shr.i20.i.i1791 = lshr i32 %xor2.i19.i.i1790, 8
  %785 = and i32 %xor2.i19.i.i1790, 255
  %idxprom.i23.i.i1794 = zext nneg i32 %785 to i64
  %arrayidx.i24.i.i1795 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1794
  %786 = load i32, ptr %arrayidx.i24.i.i1795, align 4, !tbaa !12
  %xor2.i25.i.i1796 = xor i32 %shr.i20.i.i1791, %786
  %shr.i26.i.i1797 = lshr i32 %xor2.i25.i.i1796, 8
  %787 = and i32 %xor2.i25.i.i1796, 255
  %idxprom.i29.i.i1800 = zext nneg i32 %787 to i64
  %arrayidx.i30.i.i1801 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1800
  %788 = load i32, ptr %arrayidx.i30.i.i1801, align 4, !tbaa !12
  %xor2.i31.i.i1802 = xor i32 %shr.i26.i.i1797, %788
  %shr.i32.i.i1803 = lshr i32 %xor2.i31.i.i1802, 8
  %789 = and i32 %xor2.i31.i.i1802, 255
  %idxprom.i35.i.i1806 = zext nneg i32 %789 to i64
  %arrayidx.i36.i.i1807 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1806
  %790 = load i32, ptr %arrayidx.i36.i.i1807, align 4, !tbaa !12
  %xor2.i37.i.i1808 = xor i32 %shr.i32.i.i1803, %790
  %shr.i38.i.i1809 = lshr i32 %xor2.i37.i.i1808, 8
  %791 = and i32 %xor2.i37.i.i1808, 255
  %idxprom.i41.i.i1812 = zext nneg i32 %791 to i64
  %arrayidx.i42.i.i1813 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1812
  %792 = load i32, ptr %arrayidx.i42.i.i1813, align 4, !tbaa !12
  %xor2.i43.i.i1814 = xor i32 %shr.i38.i.i1809, %792
  %shr.i44.i.i1815 = lshr i32 %xor2.i43.i.i1814, 8
  %793 = and i32 %xor2.i43.i.i1814, 255
  %.tr.i45.masked.i.i1816 = zext nneg i32 %793 to i64
  %arrayidx.i48.i.i1818 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1816
  %794 = load i32, ptr %arrayidx.i48.i.i1818, align 4, !tbaa !12
  %xor2.i49.i.i1819 = xor i32 %shr.i44.i.i1815, %794
  store i32 %xor2.i49.i.i1819, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1824, label %if.then.i1821

if.then.i1821:                                    ; preds = %transparent_crc.exit1772
  %795 = xor i32 %xor2.i49.i.i1819, -1
  %xor.i1822 = zext i32 %795 to i64
  %call.i1823 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.91, i64 noundef %xor.i1822)
  %.pre3218 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1824

transparent_crc.exit1824:                         ; preds = %transparent_crc.exit1772, %if.then.i1821
  %796 = phi i32 [ %xor2.i49.i.i1819, %transparent_crc.exit1772 ], [ %.pre3218, %if.then.i1821 ]
  %shr.i.i.i1825 = lshr i32 %796, 8
  %797 = and i32 %796, 255
  %798 = xor i32 %797, 107
  %idxprom.i.i.i1828 = zext nneg i32 %798 to i64
  %arrayidx.i.i.i1829 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1828
  %799 = load i32, ptr %arrayidx.i.i.i1829, align 4, !tbaa !12
  %xor2.i.i.i1830 = xor i32 %shr.i.i.i1825, %799
  %shr.i8.i.i1831 = lshr i32 %xor2.i.i.i1830, 8
  %800 = and i32 %xor2.i.i.i1830, 255
  %801 = xor i32 %800, 74
  %idxprom.i11.i.i1834 = zext nneg i32 %801 to i64
  %arrayidx.i12.i.i1835 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1834
  %802 = load i32, ptr %arrayidx.i12.i.i1835, align 4, !tbaa !12
  %xor2.i13.i.i1836 = xor i32 %shr.i8.i.i1831, %802
  %shr.i14.i.i1837 = lshr i32 %xor2.i13.i.i1836, 8
  %803 = and i32 %xor2.i13.i.i1836, 255
  %idxprom.i17.i.i1840 = zext nneg i32 %803 to i64
  %arrayidx.i18.i.i1841 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1840
  %804 = load i32, ptr %arrayidx.i18.i.i1841, align 4, !tbaa !12
  %xor2.i19.i.i1842 = xor i32 %shr.i14.i.i1837, %804
  %shr.i20.i.i1843 = lshr i32 %xor2.i19.i.i1842, 8
  %805 = and i32 %xor2.i19.i.i1842, 255
  %idxprom.i23.i.i1846 = zext nneg i32 %805 to i64
  %arrayidx.i24.i.i1847 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1846
  %806 = load i32, ptr %arrayidx.i24.i.i1847, align 4, !tbaa !12
  %xor2.i25.i.i1848 = xor i32 %shr.i20.i.i1843, %806
  %shr.i26.i.i1849 = lshr i32 %xor2.i25.i.i1848, 8
  %807 = and i32 %xor2.i25.i.i1848, 255
  %idxprom.i29.i.i1852 = zext nneg i32 %807 to i64
  %arrayidx.i30.i.i1853 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1852
  %808 = load i32, ptr %arrayidx.i30.i.i1853, align 4, !tbaa !12
  %xor2.i31.i.i1854 = xor i32 %shr.i26.i.i1849, %808
  %shr.i32.i.i1855 = lshr i32 %xor2.i31.i.i1854, 8
  %809 = and i32 %xor2.i31.i.i1854, 255
  %idxprom.i35.i.i1858 = zext nneg i32 %809 to i64
  %arrayidx.i36.i.i1859 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1858
  %810 = load i32, ptr %arrayidx.i36.i.i1859, align 4, !tbaa !12
  %xor2.i37.i.i1860 = xor i32 %shr.i32.i.i1855, %810
  %shr.i38.i.i1861 = lshr i32 %xor2.i37.i.i1860, 8
  %811 = and i32 %xor2.i37.i.i1860, 255
  %idxprom.i41.i.i1864 = zext nneg i32 %811 to i64
  %arrayidx.i42.i.i1865 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1864
  %812 = load i32, ptr %arrayidx.i42.i.i1865, align 4, !tbaa !12
  %xor2.i43.i.i1866 = xor i32 %shr.i38.i.i1861, %812
  %shr.i44.i.i1867 = lshr i32 %xor2.i43.i.i1866, 8
  %813 = and i32 %xor2.i43.i.i1866, 255
  %.tr.i45.masked.i.i1868 = zext nneg i32 %813 to i64
  %arrayidx.i48.i.i1870 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1868
  %814 = load i32, ptr %arrayidx.i48.i.i1870, align 4, !tbaa !12
  %xor2.i49.i.i1871 = xor i32 %shr.i44.i.i1867, %814
  store i32 %xor2.i49.i.i1871, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1876, label %if.then.i1873

if.then.i1873:                                    ; preds = %transparent_crc.exit1824
  %815 = xor i32 %xor2.i49.i.i1871, -1
  %xor.i1874 = zext i32 %815 to i64
  %call.i1875 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.92, i64 noundef %xor.i1874)
  %.pre3219 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1876

transparent_crc.exit1876:                         ; preds = %transparent_crc.exit1824, %if.then.i1873
  %816 = phi i32 [ %xor2.i49.i.i1871, %transparent_crc.exit1824 ], [ %.pre3219, %if.then.i1873 ]
  %shr.i.i.i1877 = lshr i32 %816, 8
  %817 = and i32 %816, 255
  %818 = xor i32 %817, 3
  %idxprom.i.i.i1880 = zext nneg i32 %818 to i64
  %arrayidx.i.i.i1881 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1880
  %819 = load i32, ptr %arrayidx.i.i.i1881, align 4, !tbaa !12
  %xor2.i.i.i1882 = xor i32 %shr.i.i.i1877, %819
  %shr.i8.i.i1883 = lshr i32 %xor2.i.i.i1882, 8
  %820 = and i32 %xor2.i.i.i1882, 255
  %idxprom.i11.i.i1886 = zext nneg i32 %820 to i64
  %arrayidx.i12.i.i1887 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1886
  %821 = load i32, ptr %arrayidx.i12.i.i1887, align 4, !tbaa !12
  %xor2.i13.i.i1888 = xor i32 %shr.i8.i.i1883, %821
  %shr.i14.i.i1889 = lshr i32 %xor2.i13.i.i1888, 8
  %822 = and i32 %xor2.i13.i.i1888, 255
  %idxprom.i17.i.i1892 = zext nneg i32 %822 to i64
  %arrayidx.i18.i.i1893 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1892
  %823 = load i32, ptr %arrayidx.i18.i.i1893, align 4, !tbaa !12
  %xor2.i19.i.i1894 = xor i32 %shr.i14.i.i1889, %823
  %shr.i20.i.i1895 = lshr i32 %xor2.i19.i.i1894, 8
  %824 = and i32 %xor2.i19.i.i1894, 255
  %idxprom.i23.i.i1898 = zext nneg i32 %824 to i64
  %arrayidx.i24.i.i1899 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1898
  %825 = load i32, ptr %arrayidx.i24.i.i1899, align 4, !tbaa !12
  %xor2.i25.i.i1900 = xor i32 %shr.i20.i.i1895, %825
  %shr.i26.i.i1901 = lshr i32 %xor2.i25.i.i1900, 8
  %826 = and i32 %xor2.i25.i.i1900, 255
  %idxprom.i29.i.i1904 = zext nneg i32 %826 to i64
  %arrayidx.i30.i.i1905 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1904
  %827 = load i32, ptr %arrayidx.i30.i.i1905, align 4, !tbaa !12
  %xor2.i31.i.i1906 = xor i32 %shr.i26.i.i1901, %827
  %shr.i32.i.i1907 = lshr i32 %xor2.i31.i.i1906, 8
  %828 = and i32 %xor2.i31.i.i1906, 255
  %idxprom.i35.i.i1910 = zext nneg i32 %828 to i64
  %arrayidx.i36.i.i1911 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1910
  %829 = load i32, ptr %arrayidx.i36.i.i1911, align 4, !tbaa !12
  %xor2.i37.i.i1912 = xor i32 %shr.i32.i.i1907, %829
  %shr.i38.i.i1913 = lshr i32 %xor2.i37.i.i1912, 8
  %830 = and i32 %xor2.i37.i.i1912, 255
  %idxprom.i41.i.i1916 = zext nneg i32 %830 to i64
  %arrayidx.i42.i.i1917 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1916
  %831 = load i32, ptr %arrayidx.i42.i.i1917, align 4, !tbaa !12
  %xor2.i43.i.i1918 = xor i32 %shr.i38.i.i1913, %831
  %shr.i44.i.i1919 = lshr i32 %xor2.i43.i.i1918, 8
  %832 = and i32 %xor2.i43.i.i1918, 255
  %.tr.i45.masked.i.i1920 = zext nneg i32 %832 to i64
  %arrayidx.i48.i.i1922 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1920
  %833 = load i32, ptr %arrayidx.i48.i.i1922, align 4, !tbaa !12
  %xor2.i49.i.i1923 = xor i32 %shr.i44.i.i1919, %833
  store i32 %xor2.i49.i.i1923, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1928, label %if.then.i1925

if.then.i1925:                                    ; preds = %transparent_crc.exit1876
  %834 = xor i32 %xor2.i49.i.i1923, -1
  %xor.i1926 = zext i32 %834 to i64
  %call.i1927 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.93, i64 noundef %xor.i1926)
  %.pre3220 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1928

transparent_crc.exit1928:                         ; preds = %transparent_crc.exit1876, %if.then.i1925
  %835 = phi i32 [ %xor2.i49.i.i1923, %transparent_crc.exit1876 ], [ %.pre3220, %if.then.i1925 ]
  %shr.i.i.i1929 = lshr i32 %835, 8
  %836 = and i32 %835, 255
  %837 = xor i32 %836, 49
  %idxprom.i.i.i1932 = zext nneg i32 %837 to i64
  %arrayidx.i.i.i1933 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1932
  %838 = load i32, ptr %arrayidx.i.i.i1933, align 4, !tbaa !12
  %xor2.i.i.i1934 = xor i32 %shr.i.i.i1929, %838
  %shr.i8.i.i1935 = lshr i32 %xor2.i.i.i1934, 8
  %839 = and i32 %xor2.i.i.i1934, 255
  %840 = xor i32 %839, 1
  %idxprom.i11.i.i1938 = zext nneg i32 %840 to i64
  %arrayidx.i12.i.i1939 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1938
  %841 = load i32, ptr %arrayidx.i12.i.i1939, align 4, !tbaa !12
  %xor2.i13.i.i1940 = xor i32 %shr.i8.i.i1935, %841
  %shr.i14.i.i1941 = lshr i32 %xor2.i13.i.i1940, 8
  %842 = and i32 %xor2.i13.i.i1940, 255
  %idxprom.i17.i.i1944 = zext nneg i32 %842 to i64
  %arrayidx.i18.i.i1945 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1944
  %843 = load i32, ptr %arrayidx.i18.i.i1945, align 4, !tbaa !12
  %xor2.i19.i.i1946 = xor i32 %shr.i14.i.i1941, %843
  %shr.i20.i.i1947 = lshr i32 %xor2.i19.i.i1946, 8
  %844 = and i32 %xor2.i19.i.i1946, 255
  %idxprom.i23.i.i1950 = zext nneg i32 %844 to i64
  %arrayidx.i24.i.i1951 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i1950
  %845 = load i32, ptr %arrayidx.i24.i.i1951, align 4, !tbaa !12
  %xor2.i25.i.i1952 = xor i32 %shr.i20.i.i1947, %845
  %shr.i26.i.i1953 = lshr i32 %xor2.i25.i.i1952, 8
  %846 = and i32 %xor2.i25.i.i1952, 255
  %idxprom.i29.i.i1956 = zext nneg i32 %846 to i64
  %arrayidx.i30.i.i1957 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i1956
  %847 = load i32, ptr %arrayidx.i30.i.i1957, align 4, !tbaa !12
  %xor2.i31.i.i1958 = xor i32 %shr.i26.i.i1953, %847
  %shr.i32.i.i1959 = lshr i32 %xor2.i31.i.i1958, 8
  %848 = and i32 %xor2.i31.i.i1958, 255
  %idxprom.i35.i.i1962 = zext nneg i32 %848 to i64
  %arrayidx.i36.i.i1963 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i1962
  %849 = load i32, ptr %arrayidx.i36.i.i1963, align 4, !tbaa !12
  %xor2.i37.i.i1964 = xor i32 %shr.i32.i.i1959, %849
  %shr.i38.i.i1965 = lshr i32 %xor2.i37.i.i1964, 8
  %850 = and i32 %xor2.i37.i.i1964, 255
  %idxprom.i41.i.i1968 = zext nneg i32 %850 to i64
  %arrayidx.i42.i.i1969 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i1968
  %851 = load i32, ptr %arrayidx.i42.i.i1969, align 4, !tbaa !12
  %xor2.i43.i.i1970 = xor i32 %shr.i38.i.i1965, %851
  %shr.i44.i.i1971 = lshr i32 %xor2.i43.i.i1970, 8
  %852 = and i32 %xor2.i43.i.i1970, 255
  %.tr.i45.masked.i.i1972 = zext nneg i32 %852 to i64
  %arrayidx.i48.i.i1974 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i1972
  %853 = load i32, ptr %arrayidx.i48.i.i1974, align 4, !tbaa !12
  %xor2.i49.i.i1975 = xor i32 %shr.i44.i.i1971, %853
  store i32 %xor2.i49.i.i1975, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit1980, label %if.then.i1977

if.then.i1977:                                    ; preds = %transparent_crc.exit1928
  %854 = xor i32 %xor2.i49.i.i1975, -1
  %xor.i1978 = zext i32 %854 to i64
  %call.i1979 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.94, i64 noundef %xor.i1978)
  %.pre3221 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit1980

transparent_crc.exit1980:                         ; preds = %transparent_crc.exit1928, %if.then.i1977
  %855 = phi i32 [ %xor2.i49.i.i1975, %transparent_crc.exit1928 ], [ %.pre3221, %if.then.i1977 ]
  %shr.i.i.i1981 = lshr i32 %855, 8
  %856 = and i32 %855, 255
  %857 = xor i32 %856, 18
  %idxprom.i.i.i1984 = zext nneg i32 %857 to i64
  %arrayidx.i.i.i1985 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i1984
  %858 = load i32, ptr %arrayidx.i.i.i1985, align 4, !tbaa !12
  %xor2.i.i.i1986 = xor i32 %shr.i.i.i1981, %858
  %shr.i8.i.i1987 = lshr i32 %xor2.i.i.i1986, 8
  %859 = and i32 %xor2.i.i.i1986, 255
  %idxprom.i11.i.i1990 = zext nneg i32 %859 to i64
  %arrayidx.i12.i.i1991 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i1990
  %860 = load i32, ptr %arrayidx.i12.i.i1991, align 4, !tbaa !12
  %xor2.i13.i.i1992 = xor i32 %shr.i8.i.i1987, %860
  %shr.i14.i.i1993 = lshr i32 %xor2.i13.i.i1992, 8
  %861 = and i32 %xor2.i13.i.i1992, 255
  %idxprom.i17.i.i1996 = zext nneg i32 %861 to i64
  %arrayidx.i18.i.i1997 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i1996
  %862 = load i32, ptr %arrayidx.i18.i.i1997, align 4, !tbaa !12
  %xor2.i19.i.i1998 = xor i32 %shr.i14.i.i1993, %862
  %shr.i20.i.i1999 = lshr i32 %xor2.i19.i.i1998, 8
  %863 = and i32 %xor2.i19.i.i1998, 255
  %idxprom.i23.i.i2002 = zext nneg i32 %863 to i64
  %arrayidx.i24.i.i2003 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2002
  %864 = load i32, ptr %arrayidx.i24.i.i2003, align 4, !tbaa !12
  %xor2.i25.i.i2004 = xor i32 %shr.i20.i.i1999, %864
  %shr.i26.i.i2005 = lshr i32 %xor2.i25.i.i2004, 8
  %865 = and i32 %xor2.i25.i.i2004, 255
  %idxprom.i29.i.i2008 = zext nneg i32 %865 to i64
  %arrayidx.i30.i.i2009 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2008
  %866 = load i32, ptr %arrayidx.i30.i.i2009, align 4, !tbaa !12
  %xor2.i31.i.i2010 = xor i32 %shr.i26.i.i2005, %866
  %shr.i32.i.i2011 = lshr i32 %xor2.i31.i.i2010, 8
  %867 = and i32 %xor2.i31.i.i2010, 255
  %idxprom.i35.i.i2014 = zext nneg i32 %867 to i64
  %arrayidx.i36.i.i2015 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2014
  %868 = load i32, ptr %arrayidx.i36.i.i2015, align 4, !tbaa !12
  %xor2.i37.i.i2016 = xor i32 %shr.i32.i.i2011, %868
  %shr.i38.i.i2017 = lshr i32 %xor2.i37.i.i2016, 8
  %869 = and i32 %xor2.i37.i.i2016, 255
  %idxprom.i41.i.i2020 = zext nneg i32 %869 to i64
  %arrayidx.i42.i.i2021 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2020
  %870 = load i32, ptr %arrayidx.i42.i.i2021, align 4, !tbaa !12
  %xor2.i43.i.i2022 = xor i32 %shr.i38.i.i2017, %870
  %shr.i44.i.i2023 = lshr i32 %xor2.i43.i.i2022, 8
  %871 = and i32 %xor2.i43.i.i2022, 255
  %.tr.i45.masked.i.i2024 = zext nneg i32 %871 to i64
  %arrayidx.i48.i.i2026 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2024
  %872 = load i32, ptr %arrayidx.i48.i.i2026, align 4, !tbaa !12
  %xor2.i49.i.i2027 = xor i32 %shr.i44.i.i2023, %872
  store i32 %xor2.i49.i.i2027, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2032, label %if.then.i2029

if.then.i2029:                                    ; preds = %transparent_crc.exit1980
  %873 = xor i32 %xor2.i49.i.i2027, -1
  %xor.i2030 = zext i32 %873 to i64
  %call.i2031 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.95, i64 noundef %xor.i2030)
  %.pre3222 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2032

transparent_crc.exit2032:                         ; preds = %transparent_crc.exit1980, %if.then.i2029
  %874 = phi i32 [ %xor2.i49.i.i2027, %transparent_crc.exit1980 ], [ %.pre3222, %if.then.i2029 ]
  %shr.i.i.i2033 = lshr i32 %874, 8
  %875 = and i32 %874, 255
  %876 = xor i32 %875, 137
  %idxprom.i.i.i2036 = zext nneg i32 %876 to i64
  %arrayidx.i.i.i2037 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2036
  %877 = load i32, ptr %arrayidx.i.i.i2037, align 4, !tbaa !12
  %xor2.i.i.i2038 = xor i32 %shr.i.i.i2033, %877
  %shr.i8.i.i2039 = lshr i32 %xor2.i.i.i2038, 8
  %878 = and i32 %xor2.i.i.i2038, 255
  %879 = xor i32 %878, 255
  %idxprom.i11.i.i2042 = zext nneg i32 %879 to i64
  %arrayidx.i12.i.i2043 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2042
  %880 = load i32, ptr %arrayidx.i12.i.i2043, align 4, !tbaa !12
  %xor2.i13.i.i2044 = xor i32 %shr.i8.i.i2039, %880
  %shr.i14.i.i2045 = lshr i32 %xor2.i13.i.i2044, 8
  %881 = and i32 %xor2.i13.i.i2044, 255
  %882 = xor i32 %881, 255
  %idxprom.i17.i.i2048 = zext nneg i32 %882 to i64
  %arrayidx.i18.i.i2049 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2048
  %883 = load i32, ptr %arrayidx.i18.i.i2049, align 4, !tbaa !12
  %xor2.i19.i.i2050 = xor i32 %shr.i14.i.i2045, %883
  %shr.i20.i.i2051 = lshr i32 %xor2.i19.i.i2050, 8
  %884 = and i32 %xor2.i19.i.i2050, 255
  %885 = xor i32 %884, 255
  %idxprom.i23.i.i2054 = zext nneg i32 %885 to i64
  %arrayidx.i24.i.i2055 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2054
  %886 = load i32, ptr %arrayidx.i24.i.i2055, align 4, !tbaa !12
  %xor2.i25.i.i2056 = xor i32 %shr.i20.i.i2051, %886
  %shr.i26.i.i2057 = lshr i32 %xor2.i25.i.i2056, 8
  %887 = and i32 %xor2.i25.i.i2056, 255
  %888 = xor i32 %887, 255
  %idxprom.i29.i.i2060 = zext nneg i32 %888 to i64
  %arrayidx.i30.i.i2061 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2060
  %889 = load i32, ptr %arrayidx.i30.i.i2061, align 4, !tbaa !12
  %xor2.i31.i.i2062 = xor i32 %shr.i26.i.i2057, %889
  %shr.i32.i.i2063 = lshr i32 %xor2.i31.i.i2062, 8
  %890 = and i32 %xor2.i31.i.i2062, 255
  %891 = xor i32 %890, 255
  %idxprom.i35.i.i2066 = zext nneg i32 %891 to i64
  %arrayidx.i36.i.i2067 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2066
  %892 = load i32, ptr %arrayidx.i36.i.i2067, align 4, !tbaa !12
  %xor2.i37.i.i2068 = xor i32 %shr.i32.i.i2063, %892
  %shr.i38.i.i2069 = lshr i32 %xor2.i37.i.i2068, 8
  %893 = and i32 %xor2.i37.i.i2068, 255
  %894 = xor i32 %893, 255
  %idxprom.i41.i.i2072 = zext nneg i32 %894 to i64
  %arrayidx.i42.i.i2073 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2072
  %895 = load i32, ptr %arrayidx.i42.i.i2073, align 4, !tbaa !12
  %xor2.i43.i.i2074 = xor i32 %shr.i38.i.i2069, %895
  %shr.i44.i.i2075 = lshr i32 %xor2.i43.i.i2074, 8
  %896 = and i32 %xor2.i43.i.i2074, 255
  %897 = xor i32 %896, 255
  %idxprom.i47.i.i2077 = zext nneg i32 %897 to i64
  %arrayidx.i48.i.i2078 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i2077
  %898 = load i32, ptr %arrayidx.i48.i.i2078, align 4, !tbaa !12
  %xor2.i49.i.i2079 = xor i32 %shr.i44.i.i2075, %898
  store i32 %xor2.i49.i.i2079, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2084, label %if.then.i2081

if.then.i2081:                                    ; preds = %transparent_crc.exit2032
  %899 = xor i32 %xor2.i49.i.i2079, -1
  %xor.i2082 = zext i32 %899 to i64
  %call.i2083 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.96, i64 noundef %xor.i2082)
  %.pre3223 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2084

transparent_crc.exit2084:                         ; preds = %transparent_crc.exit2032, %if.then.i2081
  %900 = phi i32 [ %xor2.i49.i.i2079, %transparent_crc.exit2032 ], [ %.pre3223, %if.then.i2081 ]
  %shr.i.i.i2085 = lshr i32 %900, 8
  %901 = and i32 %900, 255
  %902 = xor i32 %901, 102
  %idxprom.i.i.i2088 = zext nneg i32 %902 to i64
  %arrayidx.i.i.i2089 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2088
  %903 = load i32, ptr %arrayidx.i.i.i2089, align 4, !tbaa !12
  %xor2.i.i.i2090 = xor i32 %shr.i.i.i2085, %903
  %shr.i8.i.i2091 = lshr i32 %xor2.i.i.i2090, 8
  %904 = and i32 %xor2.i.i.i2090, 255
  %idxprom.i11.i.i2094 = zext nneg i32 %904 to i64
  %arrayidx.i12.i.i2095 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2094
  %905 = load i32, ptr %arrayidx.i12.i.i2095, align 4, !tbaa !12
  %xor2.i13.i.i2096 = xor i32 %shr.i8.i.i2091, %905
  %shr.i14.i.i2097 = lshr i32 %xor2.i13.i.i2096, 8
  %906 = and i32 %xor2.i13.i.i2096, 255
  %idxprom.i17.i.i2100 = zext nneg i32 %906 to i64
  %arrayidx.i18.i.i2101 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2100
  %907 = load i32, ptr %arrayidx.i18.i.i2101, align 4, !tbaa !12
  %xor2.i19.i.i2102 = xor i32 %shr.i14.i.i2097, %907
  %shr.i20.i.i2103 = lshr i32 %xor2.i19.i.i2102, 8
  %908 = and i32 %xor2.i19.i.i2102, 255
  %idxprom.i23.i.i2106 = zext nneg i32 %908 to i64
  %arrayidx.i24.i.i2107 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2106
  %909 = load i32, ptr %arrayidx.i24.i.i2107, align 4, !tbaa !12
  %xor2.i25.i.i2108 = xor i32 %shr.i20.i.i2103, %909
  %shr.i26.i.i2109 = lshr i32 %xor2.i25.i.i2108, 8
  %910 = and i32 %xor2.i25.i.i2108, 255
  %idxprom.i29.i.i2112 = zext nneg i32 %910 to i64
  %arrayidx.i30.i.i2113 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2112
  %911 = load i32, ptr %arrayidx.i30.i.i2113, align 4, !tbaa !12
  %xor2.i31.i.i2114 = xor i32 %shr.i26.i.i2109, %911
  %shr.i32.i.i2115 = lshr i32 %xor2.i31.i.i2114, 8
  %912 = and i32 %xor2.i31.i.i2114, 255
  %idxprom.i35.i.i2118 = zext nneg i32 %912 to i64
  %arrayidx.i36.i.i2119 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2118
  %913 = load i32, ptr %arrayidx.i36.i.i2119, align 4, !tbaa !12
  %xor2.i37.i.i2120 = xor i32 %shr.i32.i.i2115, %913
  %shr.i38.i.i2121 = lshr i32 %xor2.i37.i.i2120, 8
  %914 = and i32 %xor2.i37.i.i2120, 255
  %idxprom.i41.i.i2124 = zext nneg i32 %914 to i64
  %arrayidx.i42.i.i2125 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2124
  %915 = load i32, ptr %arrayidx.i42.i.i2125, align 4, !tbaa !12
  %xor2.i43.i.i2126 = xor i32 %shr.i38.i.i2121, %915
  %shr.i44.i.i2127 = lshr i32 %xor2.i43.i.i2126, 8
  %916 = and i32 %xor2.i43.i.i2126, 255
  %.tr.i45.masked.i.i2128 = zext nneg i32 %916 to i64
  %arrayidx.i48.i.i2130 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2128
  %917 = load i32, ptr %arrayidx.i48.i.i2130, align 4, !tbaa !12
  %xor2.i49.i.i2131 = xor i32 %shr.i44.i.i2127, %917
  store i32 %xor2.i49.i.i2131, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2136, label %if.then.i2133

if.then.i2133:                                    ; preds = %transparent_crc.exit2084
  %918 = xor i32 %xor2.i49.i.i2131, -1
  %xor.i2134 = zext i32 %918 to i64
  %call.i2135 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.97, i64 noundef %xor.i2134)
  br label %transparent_crc.exit2136

transparent_crc.exit2136:                         ; preds = %transparent_crc.exit2084, %if.then.i2133
  call fastcc void @transparent_crc(i64 noundef -98, ptr noundef nonnull @.str.98, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 26665, ptr noundef nonnull @.str.99, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef -3, ptr noundef nonnull @.str.100, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 2154, ptr noundef nonnull @.str.101, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 2759, ptr noundef nonnull @.str.102, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef -59, ptr noundef nonnull @.str.103, i32 noundef %print_hash_value.0)
  call fastcc void @transparent_crc(i64 noundef 147, ptr noundef nonnull @.str.104, i32 noundef %print_hash_value.0)
  %919 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i2137 = lshr i32 %919, 8
  %920 = and i32 %919, 255
  %921 = xor i32 %920, 255
  %idxprom.i.i.i2140 = zext nneg i32 %921 to i64
  %arrayidx.i.i.i2141 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2140
  %922 = load i32, ptr %arrayidx.i.i.i2141, align 4, !tbaa !12
  %xor2.i.i.i2142 = xor i32 %shr.i.i.i2137, %922
  %shr.i8.i.i2143 = lshr i32 %xor2.i.i.i2142, 8
  %923 = and i32 %xor2.i.i.i2142, 255
  %idxprom.i11.i.i2146 = zext nneg i32 %923 to i64
  %arrayidx.i12.i.i2147 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2146
  %924 = load i32, ptr %arrayidx.i12.i.i2147, align 4, !tbaa !12
  %xor2.i13.i.i2148 = xor i32 %shr.i8.i.i2143, %924
  %shr.i14.i.i2149 = lshr i32 %xor2.i13.i.i2148, 8
  %925 = and i32 %xor2.i13.i.i2148, 255
  %idxprom.i17.i.i2152 = zext nneg i32 %925 to i64
  %arrayidx.i18.i.i2153 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2152
  %926 = load i32, ptr %arrayidx.i18.i.i2153, align 4, !tbaa !12
  %xor2.i19.i.i2154 = xor i32 %shr.i14.i.i2149, %926
  %shr.i20.i.i2155 = lshr i32 %xor2.i19.i.i2154, 8
  %927 = and i32 %xor2.i19.i.i2154, 255
  %idxprom.i23.i.i2158 = zext nneg i32 %927 to i64
  %arrayidx.i24.i.i2159 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2158
  %928 = load i32, ptr %arrayidx.i24.i.i2159, align 4, !tbaa !12
  %xor2.i25.i.i2160 = xor i32 %shr.i20.i.i2155, %928
  %shr.i26.i.i2161 = lshr i32 %xor2.i25.i.i2160, 8
  %929 = and i32 %xor2.i25.i.i2160, 255
  %idxprom.i29.i.i2164 = zext nneg i32 %929 to i64
  %arrayidx.i30.i.i2165 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2164
  %930 = load i32, ptr %arrayidx.i30.i.i2165, align 4, !tbaa !12
  %xor2.i31.i.i2166 = xor i32 %shr.i26.i.i2161, %930
  %shr.i32.i.i2167 = lshr i32 %xor2.i31.i.i2166, 8
  %931 = and i32 %xor2.i31.i.i2166, 255
  %idxprom.i35.i.i2170 = zext nneg i32 %931 to i64
  %arrayidx.i36.i.i2171 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2170
  %932 = load i32, ptr %arrayidx.i36.i.i2171, align 4, !tbaa !12
  %xor2.i37.i.i2172 = xor i32 %shr.i32.i.i2167, %932
  %shr.i38.i.i2173 = lshr i32 %xor2.i37.i.i2172, 8
  %933 = and i32 %xor2.i37.i.i2172, 255
  %idxprom.i41.i.i2176 = zext nneg i32 %933 to i64
  %arrayidx.i42.i.i2177 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2176
  %934 = load i32, ptr %arrayidx.i42.i.i2177, align 4, !tbaa !12
  %xor2.i43.i.i2178 = xor i32 %shr.i38.i.i2173, %934
  %shr.i44.i.i2179 = lshr i32 %xor2.i43.i.i2178, 8
  %935 = and i32 %xor2.i43.i.i2178, 255
  %.tr.i45.masked.i.i2180 = zext nneg i32 %935 to i64
  %arrayidx.i48.i.i2182 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2180
  %936 = load i32, ptr %arrayidx.i48.i.i2182, align 4, !tbaa !12
  %xor2.i49.i.i2183 = xor i32 %shr.i44.i.i2179, %936
  store i32 %xor2.i49.i.i2183, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2188, label %if.then.i2185

if.then.i2185:                                    ; preds = %transparent_crc.exit2136
  %937 = xor i32 %xor2.i49.i.i2183, -1
  %xor.i2186 = zext i32 %937 to i64
  %call.i2187 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.105, i64 noundef %xor.i2186)
  br label %transparent_crc.exit2188

transparent_crc.exit2188:                         ; preds = %transparent_crc.exit2136, %if.then.i2185
  call fastcc void @transparent_crc(i64 noundef 46, ptr noundef nonnull @.str.106, i32 noundef %print_hash_value.0)
  %938 = load volatile i64, ptr @g_4486, align 8, !tbaa !24
  call fastcc void @transparent_crc(i64 noundef %938, ptr noundef nonnull @.str.107, i32 noundef %print_hash_value.0)
  %939 = load volatile i16, ptr @g_4579, align 2, !tbaa !15
  %conv615 = zext i16 %939 to i64
  call fastcc void @transparent_crc(i64 noundef %conv615, ptr noundef nonnull @.str.108, i32 noundef %print_hash_value.0)
  br label %for.body619

for.body619:                                      ; preds = %transparent_crc.exit2188, %for.inc627
  %indvars.iv3187 = phi i64 [ 0, %transparent_crc.exit2188 ], [ %indvars.iv.next3188, %for.inc627 ]
  %arrayidx621 = getelementptr inbounds nuw [10 x i8], ptr @g_4643, i64 0, i64 %indvars.iv3187
  %940 = load volatile i8, ptr %arrayidx621, align 1, !tbaa !42
  %conv622 = zext i8 %940 to i64
  call fastcc void @transparent_crc(i64 noundef %conv622, ptr noundef nonnull @.str.109, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc627, label %if.then624

if.then624:                                       ; preds = %for.body619
  %941 = trunc nuw nsw i64 %indvars.iv3187 to i32
  %call625 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %941)
  br label %for.inc627

for.inc627:                                       ; preds = %for.body619, %if.then624
  %indvars.iv.next3188 = add nuw nsw i64 %indvars.iv3187, 1
  %exitcond3190.not = icmp eq i64 %indvars.iv.next3188, 10
  br i1 %exitcond3190.not, label %for.end629, label %for.body619, !llvm.loop !109

for.end629:                                       ; preds = %for.inc627
  %942 = load volatile i32, ptr @g_4883, align 4, !tbaa !12
  %conv630 = zext i32 %942 to i64
  call fastcc void @transparent_crc(i64 noundef %conv630, ptr noundef nonnull @.str.110, i32 noundef %print_hash_value.0)
  %943 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i2189 = lshr i32 %943, 8
  %944 = and i32 %943, 255
  %idxprom.i.i.i2192 = zext nneg i32 %944 to i64
  %arrayidx.i.i.i2193 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2192
  %945 = load i32, ptr %arrayidx.i.i.i2193, align 4, !tbaa !12
  %xor2.i.i.i2194 = xor i32 %shr.i.i.i2189, %945
  %shr.i8.i.i2195 = lshr i32 %xor2.i.i.i2194, 8
  %946 = and i32 %xor2.i.i.i2194, 255
  %idxprom.i11.i.i2198 = zext nneg i32 %946 to i64
  %arrayidx.i12.i.i2199 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2198
  %947 = load i32, ptr %arrayidx.i12.i.i2199, align 4, !tbaa !12
  %xor2.i13.i.i2200 = xor i32 %shr.i8.i.i2195, %947
  %shr.i14.i.i2201 = lshr i32 %xor2.i13.i.i2200, 8
  %948 = and i32 %xor2.i13.i.i2200, 255
  %idxprom.i17.i.i2204 = zext nneg i32 %948 to i64
  %arrayidx.i18.i.i2205 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2204
  %949 = load i32, ptr %arrayidx.i18.i.i2205, align 4, !tbaa !12
  %xor2.i19.i.i2206 = xor i32 %shr.i14.i.i2201, %949
  %shr.i20.i.i2207 = lshr i32 %xor2.i19.i.i2206, 8
  %950 = and i32 %xor2.i19.i.i2206, 255
  %idxprom.i23.i.i2210 = zext nneg i32 %950 to i64
  %arrayidx.i24.i.i2211 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2210
  %951 = load i32, ptr %arrayidx.i24.i.i2211, align 4, !tbaa !12
  %xor2.i25.i.i2212 = xor i32 %shr.i20.i.i2207, %951
  %shr.i26.i.i2213 = lshr i32 %xor2.i25.i.i2212, 8
  %952 = and i32 %xor2.i25.i.i2212, 255
  %idxprom.i29.i.i2216 = zext nneg i32 %952 to i64
  %arrayidx.i30.i.i2217 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2216
  %953 = load i32, ptr %arrayidx.i30.i.i2217, align 4, !tbaa !12
  %xor2.i31.i.i2218 = xor i32 %shr.i26.i.i2213, %953
  %shr.i32.i.i2219 = lshr i32 %xor2.i31.i.i2218, 8
  %954 = and i32 %xor2.i31.i.i2218, 255
  %idxprom.i35.i.i2222 = zext nneg i32 %954 to i64
  %arrayidx.i36.i.i2223 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2222
  %955 = load i32, ptr %arrayidx.i36.i.i2223, align 4, !tbaa !12
  %xor2.i37.i.i2224 = xor i32 %shr.i32.i.i2219, %955
  %shr.i38.i.i2225 = lshr i32 %xor2.i37.i.i2224, 8
  %956 = and i32 %xor2.i37.i.i2224, 255
  %idxprom.i41.i.i2228 = zext nneg i32 %956 to i64
  %arrayidx.i42.i.i2229 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2228
  %957 = load i32, ptr %arrayidx.i42.i.i2229, align 4, !tbaa !12
  %xor2.i43.i.i2230 = xor i32 %shr.i38.i.i2225, %957
  %shr.i44.i.i2231 = lshr i32 %xor2.i43.i.i2230, 8
  %958 = and i32 %xor2.i43.i.i2230, 255
  %.tr.i45.masked.i.i2232 = zext nneg i32 %958 to i64
  %arrayidx.i48.i.i2234 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2232
  %959 = load i32, ptr %arrayidx.i48.i.i2234, align 4, !tbaa !12
  %xor2.i49.i.i2235 = xor i32 %shr.i44.i.i2231, %959
  store i32 %xor2.i49.i.i2235, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2240, label %if.then.i2237

if.then.i2237:                                    ; preds = %for.end629
  %960 = xor i32 %xor2.i49.i.i2235, -1
  %xor.i2238 = zext i32 %960 to i64
  %call.i2239 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.111, i64 noundef %xor.i2238)
  br label %transparent_crc.exit2240

transparent_crc.exit2240:                         ; preds = %for.end629, %if.then.i2237
  br i1 %tobool748.not, label %for.end644, label %if.then639

if.then639:                                       ; preds = %transparent_crc.exit2240
  %call640 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef 0)
  br label %for.end644

for.end644:                                       ; preds = %if.then639, %transparent_crc.exit2240
  %961 = load volatile i32, ptr @g_5301, align 4, !tbaa !12
  %conv645 = sext i32 %961 to i64
  call fastcc void @transparent_crc(i64 noundef %conv645, ptr noundef nonnull @.str.112, i32 noundef %print_hash_value.0)
  %962 = load volatile i32, ptr @g_5343, align 4, !tbaa !12
  %conv646 = sext i32 %962 to i64
  call fastcc void @transparent_crc(i64 noundef %conv646, ptr noundef nonnull @.str.113, i32 noundef %print_hash_value.0)
  %963 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i2241 = lshr i32 %963, 8
  %964 = and i32 %963, 255
  %965 = xor i32 %964, 1
  %idxprom.i.i.i2244 = zext nneg i32 %965 to i64
  %arrayidx.i.i.i2245 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2244
  %966 = load i32, ptr %arrayidx.i.i.i2245, align 4, !tbaa !12
  %xor2.i.i.i2246 = xor i32 %shr.i.i.i2241, %966
  %shr.i8.i.i2247 = lshr i32 %xor2.i.i.i2246, 8
  %967 = and i32 %xor2.i.i.i2246, 255
  %idxprom.i11.i.i2250 = zext nneg i32 %967 to i64
  %arrayidx.i12.i.i2251 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2250
  %968 = load i32, ptr %arrayidx.i12.i.i2251, align 4, !tbaa !12
  %xor2.i13.i.i2252 = xor i32 %shr.i8.i.i2247, %968
  %shr.i14.i.i2253 = lshr i32 %xor2.i13.i.i2252, 8
  %969 = and i32 %xor2.i13.i.i2252, 255
  %idxprom.i17.i.i2256 = zext nneg i32 %969 to i64
  %arrayidx.i18.i.i2257 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2256
  %970 = load i32, ptr %arrayidx.i18.i.i2257, align 4, !tbaa !12
  %xor2.i19.i.i2258 = xor i32 %shr.i14.i.i2253, %970
  %shr.i20.i.i2259 = lshr i32 %xor2.i19.i.i2258, 8
  %971 = and i32 %xor2.i19.i.i2258, 255
  %idxprom.i23.i.i2262 = zext nneg i32 %971 to i64
  %arrayidx.i24.i.i2263 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2262
  %972 = load i32, ptr %arrayidx.i24.i.i2263, align 4, !tbaa !12
  %xor2.i25.i.i2264 = xor i32 %shr.i20.i.i2259, %972
  %shr.i26.i.i2265 = lshr i32 %xor2.i25.i.i2264, 8
  %973 = and i32 %xor2.i25.i.i2264, 255
  %idxprom.i29.i.i2268 = zext nneg i32 %973 to i64
  %arrayidx.i30.i.i2269 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2268
  %974 = load i32, ptr %arrayidx.i30.i.i2269, align 4, !tbaa !12
  %xor2.i31.i.i2270 = xor i32 %shr.i26.i.i2265, %974
  %shr.i32.i.i2271 = lshr i32 %xor2.i31.i.i2270, 8
  %975 = and i32 %xor2.i31.i.i2270, 255
  %idxprom.i35.i.i2274 = zext nneg i32 %975 to i64
  %arrayidx.i36.i.i2275 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2274
  %976 = load i32, ptr %arrayidx.i36.i.i2275, align 4, !tbaa !12
  %xor2.i37.i.i2276 = xor i32 %shr.i32.i.i2271, %976
  %shr.i38.i.i2277 = lshr i32 %xor2.i37.i.i2276, 8
  %977 = and i32 %xor2.i37.i.i2276, 255
  %idxprom.i41.i.i2280 = zext nneg i32 %977 to i64
  %arrayidx.i42.i.i2281 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2280
  %978 = load i32, ptr %arrayidx.i42.i.i2281, align 4, !tbaa !12
  %xor2.i43.i.i2282 = xor i32 %shr.i38.i.i2277, %978
  %shr.i44.i.i2283 = lshr i32 %xor2.i43.i.i2282, 8
  %979 = and i32 %xor2.i43.i.i2282, 255
  %.tr.i45.masked.i.i2284 = zext nneg i32 %979 to i64
  %arrayidx.i48.i.i2286 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2284
  %980 = load i32, ptr %arrayidx.i48.i.i2286, align 4, !tbaa !12
  %xor2.i49.i.i2287 = xor i32 %shr.i44.i.i2283, %980
  store i32 %xor2.i49.i.i2287, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2292, label %if.then.i2289

if.then.i2289:                                    ; preds = %for.end644
  %981 = xor i32 %xor2.i49.i.i2287, -1
  %xor.i2290 = zext i32 %981 to i64
  %call.i2291 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.114, i64 noundef %xor.i2290)
  %.pre3224 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2292

transparent_crc.exit2292:                         ; preds = %for.end644, %if.then.i2289
  %982 = phi i32 [ %xor2.i49.i.i2287, %for.end644 ], [ %.pre3224, %if.then.i2289 ]
  %shr.i.i.i2293 = lshr i32 %982, 8
  %983 = and i32 %982, 255
  %984 = xor i32 %983, 4
  %idxprom.i.i.i2296 = zext nneg i32 %984 to i64
  %arrayidx.i.i.i2297 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2296
  %985 = load i32, ptr %arrayidx.i.i.i2297, align 4, !tbaa !12
  %xor2.i.i.i2298 = xor i32 %shr.i.i.i2293, %985
  %shr.i8.i.i2299 = lshr i32 %xor2.i.i.i2298, 8
  %986 = and i32 %xor2.i.i.i2298, 255
  %idxprom.i11.i.i2302 = zext nneg i32 %986 to i64
  %arrayidx.i12.i.i2303 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2302
  %987 = load i32, ptr %arrayidx.i12.i.i2303, align 4, !tbaa !12
  %xor2.i13.i.i2304 = xor i32 %shr.i8.i.i2299, %987
  %shr.i14.i.i2305 = lshr i32 %xor2.i13.i.i2304, 8
  %988 = and i32 %xor2.i13.i.i2304, 255
  %idxprom.i17.i.i2308 = zext nneg i32 %988 to i64
  %arrayidx.i18.i.i2309 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2308
  %989 = load i32, ptr %arrayidx.i18.i.i2309, align 4, !tbaa !12
  %xor2.i19.i.i2310 = xor i32 %shr.i14.i.i2305, %989
  %shr.i20.i.i2311 = lshr i32 %xor2.i19.i.i2310, 8
  %990 = and i32 %xor2.i19.i.i2310, 255
  %idxprom.i23.i.i2314 = zext nneg i32 %990 to i64
  %arrayidx.i24.i.i2315 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2314
  %991 = load i32, ptr %arrayidx.i24.i.i2315, align 4, !tbaa !12
  %xor2.i25.i.i2316 = xor i32 %shr.i20.i.i2311, %991
  %shr.i26.i.i2317 = lshr i32 %xor2.i25.i.i2316, 8
  %992 = and i32 %xor2.i25.i.i2316, 255
  %idxprom.i29.i.i2320 = zext nneg i32 %992 to i64
  %arrayidx.i30.i.i2321 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2320
  %993 = load i32, ptr %arrayidx.i30.i.i2321, align 4, !tbaa !12
  %xor2.i31.i.i2322 = xor i32 %shr.i26.i.i2317, %993
  %shr.i32.i.i2323 = lshr i32 %xor2.i31.i.i2322, 8
  %994 = and i32 %xor2.i31.i.i2322, 255
  %idxprom.i35.i.i2326 = zext nneg i32 %994 to i64
  %arrayidx.i36.i.i2327 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2326
  %995 = load i32, ptr %arrayidx.i36.i.i2327, align 4, !tbaa !12
  %xor2.i37.i.i2328 = xor i32 %shr.i32.i.i2323, %995
  %shr.i38.i.i2329 = lshr i32 %xor2.i37.i.i2328, 8
  %996 = and i32 %xor2.i37.i.i2328, 255
  %idxprom.i41.i.i2332 = zext nneg i32 %996 to i64
  %arrayidx.i42.i.i2333 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2332
  %997 = load i32, ptr %arrayidx.i42.i.i2333, align 4, !tbaa !12
  %xor2.i43.i.i2334 = xor i32 %shr.i38.i.i2329, %997
  %shr.i44.i.i2335 = lshr i32 %xor2.i43.i.i2334, 8
  %998 = and i32 %xor2.i43.i.i2334, 255
  %.tr.i45.masked.i.i2336 = zext nneg i32 %998 to i64
  %arrayidx.i48.i.i2338 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2336
  %999 = load i32, ptr %arrayidx.i48.i.i2338, align 4, !tbaa !12
  %xor2.i49.i.i2339 = xor i32 %shr.i44.i.i2335, %999
  store i32 %xor2.i49.i.i2339, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2344, label %if.then.i2341

if.then.i2341:                                    ; preds = %transparent_crc.exit2292
  %1000 = xor i32 %xor2.i49.i.i2339, -1
  %xor.i2342 = zext i32 %1000 to i64
  %call.i2343 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.115, i64 noundef %xor.i2342)
  br label %transparent_crc.exit2344

transparent_crc.exit2344:                         ; preds = %transparent_crc.exit2292, %if.then.i2341
  %1001 = load volatile i32, ptr @g_5500, align 4, !tbaa !12
  %conv649 = zext i32 %1001 to i64
  call fastcc void @transparent_crc(i64 noundef %conv649, ptr noundef nonnull @.str.116, i32 noundef %print_hash_value.0)
  %1002 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i2345 = lshr i32 %1002, 8
  %1003 = and i32 %1002, 255
  %idxprom.i.i.i2348 = zext nneg i32 %1003 to i64
  %arrayidx.i.i.i2349 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2348
  %1004 = load i32, ptr %arrayidx.i.i.i2349, align 4, !tbaa !12
  %xor2.i.i.i2350 = xor i32 %shr.i.i.i2345, %1004
  %shr.i8.i.i2351 = lshr i32 %xor2.i.i.i2350, 8
  %1005 = and i32 %xor2.i.i.i2350, 255
  %idxprom.i11.i.i2354 = zext nneg i32 %1005 to i64
  %arrayidx.i12.i.i2355 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2354
  %1006 = load i32, ptr %arrayidx.i12.i.i2355, align 4, !tbaa !12
  %xor2.i13.i.i2356 = xor i32 %shr.i8.i.i2351, %1006
  %shr.i14.i.i2357 = lshr i32 %xor2.i13.i.i2356, 8
  %1007 = and i32 %xor2.i13.i.i2356, 255
  %idxprom.i17.i.i2360 = zext nneg i32 %1007 to i64
  %arrayidx.i18.i.i2361 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2360
  %1008 = load i32, ptr %arrayidx.i18.i.i2361, align 4, !tbaa !12
  %xor2.i19.i.i2362 = xor i32 %shr.i14.i.i2357, %1008
  %shr.i20.i.i2363 = lshr i32 %xor2.i19.i.i2362, 8
  %1009 = and i32 %xor2.i19.i.i2362, 255
  %idxprom.i23.i.i2366 = zext nneg i32 %1009 to i64
  %arrayidx.i24.i.i2367 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2366
  %1010 = load i32, ptr %arrayidx.i24.i.i2367, align 4, !tbaa !12
  %xor2.i25.i.i2368 = xor i32 %shr.i20.i.i2363, %1010
  %shr.i26.i.i2369 = lshr i32 %xor2.i25.i.i2368, 8
  %1011 = and i32 %xor2.i25.i.i2368, 255
  %idxprom.i29.i.i2372 = zext nneg i32 %1011 to i64
  %arrayidx.i30.i.i2373 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2372
  %1012 = load i32, ptr %arrayidx.i30.i.i2373, align 4, !tbaa !12
  %xor2.i31.i.i2374 = xor i32 %shr.i26.i.i2369, %1012
  %shr.i32.i.i2375 = lshr i32 %xor2.i31.i.i2374, 8
  %1013 = and i32 %xor2.i31.i.i2374, 255
  %idxprom.i35.i.i2378 = zext nneg i32 %1013 to i64
  %arrayidx.i36.i.i2379 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2378
  %1014 = load i32, ptr %arrayidx.i36.i.i2379, align 4, !tbaa !12
  %xor2.i37.i.i2380 = xor i32 %shr.i32.i.i2375, %1014
  %shr.i38.i.i2381 = lshr i32 %xor2.i37.i.i2380, 8
  %1015 = and i32 %xor2.i37.i.i2380, 255
  %idxprom.i41.i.i2384 = zext nneg i32 %1015 to i64
  %arrayidx.i42.i.i2385 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2384
  %1016 = load i32, ptr %arrayidx.i42.i.i2385, align 4, !tbaa !12
  %xor2.i43.i.i2386 = xor i32 %shr.i38.i.i2381, %1016
  %shr.i44.i.i2387 = lshr i32 %xor2.i43.i.i2386, 8
  %1017 = and i32 %xor2.i43.i.i2386, 255
  %.tr.i45.masked.i.i2388 = zext nneg i32 %1017 to i64
  %arrayidx.i48.i.i2390 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2388
  %1018 = load i32, ptr %arrayidx.i48.i.i2390, align 4, !tbaa !12
  %xor2.i49.i.i2391 = xor i32 %shr.i44.i.i2387, %1018
  store i32 %xor2.i49.i.i2391, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %for.cond659.preheader.preheader, label %if.then.i2393

if.then.i2393:                                    ; preds = %transparent_crc.exit2344
  %1019 = xor i32 %xor2.i49.i.i2391, -1
  %xor.i2394 = zext i32 %1019 to i64
  %call.i2395 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.117, i64 noundef %xor.i2394)
  br label %for.cond659.preheader.preheader

for.cond659.preheader.preheader:                  ; preds = %transparent_crc.exit2344, %if.then.i2393
  br label %for.cond659.preheader

for.cond659.preheader:                            ; preds = %for.cond659.preheader.preheader, %for.inc677
  %indvars.iv3195 = phi i64 [ %indvars.iv.next3196, %for.inc677 ], [ 0, %for.cond659.preheader.preheader ]
  %1020 = trunc nuw nsw i64 %indvars.iv3195 to i32
  br label %for.body662

for.body662:                                      ; preds = %for.cond659.preheader, %for.inc674
  %indvars.iv3191 = phi i64 [ 0, %for.cond659.preheader ], [ %indvars.iv.next3192, %for.inc674 ]
  %arrayidx668 = getelementptr inbounds nuw [9 x [3 x i8]], ptr @g_5672, i64 0, i64 %indvars.iv3195, i64 %indvars.iv3191
  %1021 = load i8, ptr %arrayidx668, align 1, !tbaa !42
  %conv669 = sext i8 %1021 to i64
  %1022 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i2397 = lshr i32 %1022, 8
  %.tr.i.i.i2398 = zext i32 %1022 to i64
  %xor.narrow.i.i.i2399 = xor i64 %.tr.i.i.i2398, %conv669
  %idxprom.i.i.i2400 = and i64 %xor.narrow.i.i.i2399, 255
  %arrayidx.i.i.i2401 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2400
  %1023 = load i32, ptr %arrayidx.i.i.i2401, align 4, !tbaa !12
  %xor2.i.i.i2402 = xor i32 %shr.i.i.i2397, %1023
  %shr1.i.i2403 = lshr i64 %conv669, 8
  %shr.i8.i.i2404 = lshr i32 %xor2.i.i.i2402, 8
  %.tr.i9.i.i2405 = zext i32 %xor2.i.i.i2402 to i64
  %xor.narrow.i10.i.i2406 = xor i64 %shr1.i.i2403, %.tr.i9.i.i2405
  %idxprom.i11.i.i2407 = and i64 %xor.narrow.i10.i.i2406, 255
  %arrayidx.i12.i.i2408 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2407
  %1024 = load i32, ptr %arrayidx.i12.i.i2408, align 4, !tbaa !12
  %xor2.i13.i.i2409 = xor i32 %shr.i8.i.i2404, %1024
  %shr4.i.i2410 = lshr i64 %conv669, 16
  %shr.i14.i.i2411 = lshr i32 %xor2.i13.i.i2409, 8
  %.tr.i15.i.i2412 = zext i32 %xor2.i13.i.i2409 to i64
  %xor.narrow.i16.i.i2413 = xor i64 %shr4.i.i2410, %.tr.i15.i.i2412
  %idxprom.i17.i.i2414 = and i64 %xor.narrow.i16.i.i2413, 255
  %arrayidx.i18.i.i2415 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2414
  %1025 = load i32, ptr %arrayidx.i18.i.i2415, align 4, !tbaa !12
  %xor2.i19.i.i2416 = xor i32 %shr.i14.i.i2411, %1025
  %shr7.i.i2417 = lshr i64 %conv669, 24
  %shr.i20.i.i2418 = lshr i32 %xor2.i19.i.i2416, 8
  %.tr.i21.i.i2419 = zext i32 %xor2.i19.i.i2416 to i64
  %xor.narrow.i22.i.i2420 = xor i64 %shr7.i.i2417, %.tr.i21.i.i2419
  %idxprom.i23.i.i2421 = and i64 %xor.narrow.i22.i.i2420, 255
  %arrayidx.i24.i.i2422 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2421
  %1026 = load i32, ptr %arrayidx.i24.i.i2422, align 4, !tbaa !12
  %xor2.i25.i.i2423 = xor i32 %shr.i20.i.i2418, %1026
  %shr10.i.i2424 = lshr i64 %conv669, 32
  %shr.i26.i.i2425 = lshr i32 %xor2.i25.i.i2423, 8
  %.tr.i27.i.i2426 = zext i32 %xor2.i25.i.i2423 to i64
  %xor.narrow.i28.i.i2427 = xor i64 %shr10.i.i2424, %.tr.i27.i.i2426
  %idxprom.i29.i.i2428 = and i64 %xor.narrow.i28.i.i2427, 255
  %arrayidx.i30.i.i2429 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2428
  %1027 = load i32, ptr %arrayidx.i30.i.i2429, align 4, !tbaa !12
  %xor2.i31.i.i2430 = xor i32 %shr.i26.i.i2425, %1027
  %shr13.i.i2431 = lshr i64 %conv669, 40
  %shr.i32.i.i2432 = lshr i32 %xor2.i31.i.i2430, 8
  %.tr.i33.i.i2433 = zext i32 %xor2.i31.i.i2430 to i64
  %xor.narrow.i34.i.i2434 = xor i64 %shr13.i.i2431, %.tr.i33.i.i2433
  %idxprom.i35.i.i2435 = and i64 %xor.narrow.i34.i.i2434, 255
  %arrayidx.i36.i.i2436 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2435
  %1028 = load i32, ptr %arrayidx.i36.i.i2436, align 4, !tbaa !12
  %xor2.i37.i.i2437 = xor i32 %shr.i32.i.i2432, %1028
  %shr16.i.i2438 = lshr i64 %conv669, 48
  %shr.i38.i.i2439 = lshr i32 %xor2.i37.i.i2437, 8
  %.tr.i39.i.i2440 = zext i32 %xor2.i37.i.i2437 to i64
  %xor.narrow.i40.i.i2441 = xor i64 %shr16.i.i2438, %.tr.i39.i.i2440
  %idxprom.i41.i.i2442 = and i64 %xor.narrow.i40.i.i2441, 255
  %arrayidx.i42.i.i2443 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2442
  %1029 = load i32, ptr %arrayidx.i42.i.i2443, align 4, !tbaa !12
  %xor2.i43.i.i2444 = xor i32 %shr.i38.i.i2439, %1029
  %shr19.i.i2445 = lshr i64 %conv669, 56
  %shr.i44.i.i2446 = lshr i32 %xor2.i43.i.i2444, 8
  %1030 = and i32 %xor2.i43.i.i2444, 255
  %.tr.i45.masked.i.i2447 = zext nneg i32 %1030 to i64
  %idxprom.i47.i.i2448 = xor i64 %shr19.i.i2445, %.tr.i45.masked.i.i2447
  %arrayidx.i48.i.i2449 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i2448
  %1031 = load i32, ptr %arrayidx.i48.i.i2449, align 4, !tbaa !12
  %xor2.i49.i.i2450 = xor i32 %shr.i44.i.i2446, %1031
  store i32 %xor2.i49.i.i2450, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2455, label %if.then.i2452

if.then.i2452:                                    ; preds = %for.body662
  %1032 = xor i32 %xor2.i49.i.i2450, -1
  %xor.i2453 = zext i32 %1032 to i64
  %call.i2454 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.118, i64 noundef %xor.i2453)
  br label %transparent_crc.exit2455

transparent_crc.exit2455:                         ; preds = %for.body662, %if.then.i2452
  br i1 %tobool748.not, label %for.inc674, label %if.then671

if.then671:                                       ; preds = %transparent_crc.exit2455
  %1033 = trunc nuw nsw i64 %indvars.iv3191 to i32
  %call672 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 0, i32 noundef %1020, i32 noundef %1033)
  br label %for.inc674

for.inc674:                                       ; preds = %transparent_crc.exit2455, %if.then671
  %indvars.iv.next3192 = add nuw nsw i64 %indvars.iv3191, 1
  %exitcond3194.not = icmp eq i64 %indvars.iv.next3192, 3
  br i1 %exitcond3194.not, label %for.inc677, label %for.body662, !llvm.loop !110

for.inc677:                                       ; preds = %for.inc674
  %indvars.iv.next3196 = add nuw nsw i64 %indvars.iv3195, 1
  %exitcond3198.not = icmp eq i64 %indvars.iv.next3196, 9
  br i1 %exitcond3198.not, label %for.end682, label %for.cond659.preheader, !llvm.loop !111

for.end682:                                       ; preds = %for.inc677
  %bf.load683 = load volatile i144, ptr @g_5753, align 16
  %bf.shl684 = shl i144 %bf.load683, 126
  %bf.ashr685 = ashr exact i144 %bf.shl684, 126
  %bf.cast686 = trunc nsw i144 %bf.ashr685 to i64
  call fastcc void @transparent_crc(i64 noundef %bf.cast686, ptr noundef nonnull @.str.119, i32 noundef %print_hash_value.0)
  %bf.load688 = load volatile i144, ptr @g_5753, align 16
  %1034 = trunc i144 %bf.load688 to i64
  %1035 = lshr i64 %1034, 18
  %bf.cast691 = and i64 %1035, 2147483647
  call fastcc void @transparent_crc(i64 noundef %bf.cast691, ptr noundef nonnull @.str.120, i32 noundef %print_hash_value.0)
  %bf.load693 = load volatile i144, ptr @g_5753, align 16
  %bf.shl694 = shl i144 %bf.load693, 90
  %bf.ashr695 = ashr i144 %bf.shl694, 139
  %bf.cast696 = trunc nsw i144 %bf.ashr695 to i64
  call fastcc void @transparent_crc(i64 noundef %bf.cast696, ptr noundef nonnull @.str.121, i32 noundef %print_hash_value.0)
  %bf.load698 = load volatile i144, ptr @g_5753, align 16
  %bf.lshr699 = lshr i144 %bf.load698, 54
  %1036 = trunc i144 %bf.lshr699 to i64
  %bf.cast701 = and i64 %1036, 536870911
  call fastcc void @transparent_crc(i64 noundef %bf.cast701, ptr noundef nonnull @.str.122, i32 noundef %print_hash_value.0)
  %bf.load703 = load volatile i144, ptr @g_5753, align 16
  %bf.lshr704 = lshr i144 %bf.load703, 83
  %1037 = trunc nuw nsw i144 %bf.lshr704 to i64
  %bf.cast706 = and i64 %1037, 16777215
  call fastcc void @transparent_crc(i64 noundef %bf.cast706, ptr noundef nonnull @.str.123, i32 noundef %print_hash_value.0)
  %bf.load708 = load volatile i144, ptr @g_5753, align 16
  %bf.shl709 = shl i144 %bf.load708, 22
  %bf.ashr710 = ashr i144 %bf.shl709, 129
  %bf.cast711 = trunc nsw i144 %bf.ashr710 to i64
  call fastcc void @transparent_crc(i64 noundef %bf.cast711, ptr noundef nonnull @.str.124, i32 noundef %print_hash_value.0)
  %bf.load713 = load volatile i144, ptr @g_5753, align 16
  %bf.shl714 = shl i144 %bf.load713, 5
  %bf.ashr715 = ashr i144 %bf.shl714, 127
  %bf.cast716 = trunc nsw i144 %bf.ashr715 to i64
  call fastcc void @transparent_crc(i64 noundef %bf.cast716, ptr noundef nonnull @.str.125, i32 noundef %print_hash_value.0)
  %1038 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i2456 = lshr i32 %1038, 8
  %1039 = and i32 %1038, 255
  %idxprom.i.i.i2459 = zext nneg i32 %1039 to i64
  %arrayidx.i.i.i2460 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2459
  %1040 = load i32, ptr %arrayidx.i.i.i2460, align 4, !tbaa !12
  %xor2.i.i.i2461 = xor i32 %shr.i.i.i2456, %1040
  %shr.i8.i.i2462 = lshr i32 %xor2.i.i.i2461, 8
  %1041 = and i32 %xor2.i.i.i2461, 255
  %idxprom.i11.i.i2465 = zext nneg i32 %1041 to i64
  %arrayidx.i12.i.i2466 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2465
  %1042 = load i32, ptr %arrayidx.i12.i.i2466, align 4, !tbaa !12
  %xor2.i13.i.i2467 = xor i32 %shr.i8.i.i2462, %1042
  %shr.i14.i.i2468 = lshr i32 %xor2.i13.i.i2467, 8
  %1043 = and i32 %xor2.i13.i.i2467, 255
  %idxprom.i17.i.i2471 = zext nneg i32 %1043 to i64
  %arrayidx.i18.i.i2472 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2471
  %1044 = load i32, ptr %arrayidx.i18.i.i2472, align 4, !tbaa !12
  %xor2.i19.i.i2473 = xor i32 %shr.i14.i.i2468, %1044
  %shr.i20.i.i2474 = lshr i32 %xor2.i19.i.i2473, 8
  %1045 = and i32 %xor2.i19.i.i2473, 255
  %idxprom.i23.i.i2477 = zext nneg i32 %1045 to i64
  %arrayidx.i24.i.i2478 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2477
  %1046 = load i32, ptr %arrayidx.i24.i.i2478, align 4, !tbaa !12
  %xor2.i25.i.i2479 = xor i32 %shr.i20.i.i2474, %1046
  %shr.i26.i.i2480 = lshr i32 %xor2.i25.i.i2479, 8
  %1047 = and i32 %xor2.i25.i.i2479, 255
  %idxprom.i29.i.i2483 = zext nneg i32 %1047 to i64
  %arrayidx.i30.i.i2484 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2483
  %1048 = load i32, ptr %arrayidx.i30.i.i2484, align 4, !tbaa !12
  %xor2.i31.i.i2485 = xor i32 %shr.i26.i.i2480, %1048
  %shr.i32.i.i2486 = lshr i32 %xor2.i31.i.i2485, 8
  %1049 = and i32 %xor2.i31.i.i2485, 255
  %idxprom.i35.i.i2489 = zext nneg i32 %1049 to i64
  %arrayidx.i36.i.i2490 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2489
  %1050 = load i32, ptr %arrayidx.i36.i.i2490, align 4, !tbaa !12
  %xor2.i37.i.i2491 = xor i32 %shr.i32.i.i2486, %1050
  %shr.i38.i.i2492 = lshr i32 %xor2.i37.i.i2491, 8
  %1051 = and i32 %xor2.i37.i.i2491, 255
  %idxprom.i41.i.i2495 = zext nneg i32 %1051 to i64
  %arrayidx.i42.i.i2496 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2495
  %1052 = load i32, ptr %arrayidx.i42.i.i2496, align 4, !tbaa !12
  %xor2.i43.i.i2497 = xor i32 %shr.i38.i.i2492, %1052
  %shr.i44.i.i2498 = lshr i32 %xor2.i43.i.i2497, 8
  %1053 = and i32 %xor2.i43.i.i2497, 255
  %.tr.i45.masked.i.i2499 = zext nneg i32 %1053 to i64
  %arrayidx.i48.i.i2501 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2499
  %1054 = load i32, ptr %arrayidx.i48.i.i2501, align 4, !tbaa !12
  %xor2.i49.i.i2502 = xor i32 %shr.i44.i.i2498, %1054
  store i32 %xor2.i49.i.i2502, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2507, label %if.then.i2504

if.then.i2504:                                    ; preds = %for.end682
  %1055 = xor i32 %xor2.i49.i.i2502, -1
  %xor.i2505 = zext i32 %1055 to i64
  %call.i2506 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.126, i64 noundef %xor.i2505)
  %.pre3225 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2507

transparent_crc.exit2507:                         ; preds = %for.end682, %if.then.i2504
  %1056 = phi i32 [ %xor2.i49.i.i2502, %for.end682 ], [ %.pre3225, %if.then.i2504 ]
  %shr.i.i.i2508 = lshr i32 %1056, 8
  %1057 = and i32 %1056, 255
  %1058 = xor i32 %1057, 228
  %idxprom.i.i.i2511 = zext nneg i32 %1058 to i64
  %arrayidx.i.i.i2512 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2511
  %1059 = load i32, ptr %arrayidx.i.i.i2512, align 4, !tbaa !12
  %xor2.i.i.i2513 = xor i32 %shr.i.i.i2508, %1059
  %shr.i8.i.i2514 = lshr i32 %xor2.i.i.i2513, 8
  %1060 = and i32 %xor2.i.i.i2513, 255
  %1061 = xor i32 %1060, 232
  %idxprom.i11.i.i2517 = zext nneg i32 %1061 to i64
  %arrayidx.i12.i.i2518 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2517
  %1062 = load i32, ptr %arrayidx.i12.i.i2518, align 4, !tbaa !12
  %xor2.i13.i.i2519 = xor i32 %shr.i8.i.i2514, %1062
  %shr.i14.i.i2520 = lshr i32 %xor2.i13.i.i2519, 8
  %1063 = and i32 %xor2.i13.i.i2519, 255
  %1064 = xor i32 %1063, 63
  %idxprom.i17.i.i2523 = zext nneg i32 %1064 to i64
  %arrayidx.i18.i.i2524 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2523
  %1065 = load i32, ptr %arrayidx.i18.i.i2524, align 4, !tbaa !12
  %xor2.i19.i.i2525 = xor i32 %shr.i14.i.i2520, %1065
  %shr.i20.i.i2526 = lshr i32 %xor2.i19.i.i2525, 8
  %1066 = and i32 %xor2.i19.i.i2525, 255
  %1067 = xor i32 %1066, 49
  %idxprom.i23.i.i2529 = zext nneg i32 %1067 to i64
  %arrayidx.i24.i.i2530 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2529
  %1068 = load i32, ptr %arrayidx.i24.i.i2530, align 4, !tbaa !12
  %xor2.i25.i.i2531 = xor i32 %shr.i20.i.i2526, %1068
  %shr.i26.i.i2532 = lshr i32 %xor2.i25.i.i2531, 8
  %1069 = and i32 %xor2.i25.i.i2531, 255
  %idxprom.i29.i.i2535 = zext nneg i32 %1069 to i64
  %arrayidx.i30.i.i2536 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2535
  %1070 = load i32, ptr %arrayidx.i30.i.i2536, align 4, !tbaa !12
  %xor2.i31.i.i2537 = xor i32 %shr.i26.i.i2532, %1070
  %shr.i32.i.i2538 = lshr i32 %xor2.i31.i.i2537, 8
  %1071 = and i32 %xor2.i31.i.i2537, 255
  %idxprom.i35.i.i2541 = zext nneg i32 %1071 to i64
  %arrayidx.i36.i.i2542 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2541
  %1072 = load i32, ptr %arrayidx.i36.i.i2542, align 4, !tbaa !12
  %xor2.i37.i.i2543 = xor i32 %shr.i32.i.i2538, %1072
  %shr.i38.i.i2544 = lshr i32 %xor2.i37.i.i2543, 8
  %1073 = and i32 %xor2.i37.i.i2543, 255
  %idxprom.i41.i.i2547 = zext nneg i32 %1073 to i64
  %arrayidx.i42.i.i2548 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2547
  %1074 = load i32, ptr %arrayidx.i42.i.i2548, align 4, !tbaa !12
  %xor2.i43.i.i2549 = xor i32 %shr.i38.i.i2544, %1074
  %shr.i44.i.i2550 = lshr i32 %xor2.i43.i.i2549, 8
  %1075 = and i32 %xor2.i43.i.i2549, 255
  %.tr.i45.masked.i.i2551 = zext nneg i32 %1075 to i64
  %arrayidx.i48.i.i2553 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2551
  %1076 = load i32, ptr %arrayidx.i48.i.i2553, align 4, !tbaa !12
  %xor2.i49.i.i2554 = xor i32 %shr.i44.i.i2550, %1076
  store i32 %xor2.i49.i.i2554, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2559, label %if.then.i2556

if.then.i2556:                                    ; preds = %transparent_crc.exit2507
  %1077 = xor i32 %xor2.i49.i.i2554, -1
  %xor.i2557 = zext i32 %1077 to i64
  %call.i2558 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.127, i64 noundef %xor.i2557)
  %.pre3226 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2559

transparent_crc.exit2559:                         ; preds = %transparent_crc.exit2507, %if.then.i2556
  %1078 = phi i32 [ %xor2.i49.i.i2554, %transparent_crc.exit2507 ], [ %.pre3226, %if.then.i2556 ]
  %shr.i.i.i2560 = lshr i32 %1078, 8
  %1079 = and i32 %1078, 255
  %1080 = xor i32 %1079, 1
  %idxprom.i.i.i2563 = zext nneg i32 %1080 to i64
  %arrayidx.i.i.i2564 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2563
  %1081 = load i32, ptr %arrayidx.i.i.i2564, align 4, !tbaa !12
  %xor2.i.i.i2565 = xor i32 %shr.i.i.i2560, %1081
  %shr.i8.i.i2566 = lshr i32 %xor2.i.i.i2565, 8
  %1082 = and i32 %xor2.i.i.i2565, 255
  %idxprom.i11.i.i2569 = zext nneg i32 %1082 to i64
  %arrayidx.i12.i.i2570 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2569
  %1083 = load i32, ptr %arrayidx.i12.i.i2570, align 4, !tbaa !12
  %xor2.i13.i.i2571 = xor i32 %shr.i8.i.i2566, %1083
  %shr.i14.i.i2572 = lshr i32 %xor2.i13.i.i2571, 8
  %1084 = and i32 %xor2.i13.i.i2571, 255
  %idxprom.i17.i.i2575 = zext nneg i32 %1084 to i64
  %arrayidx.i18.i.i2576 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2575
  %1085 = load i32, ptr %arrayidx.i18.i.i2576, align 4, !tbaa !12
  %xor2.i19.i.i2577 = xor i32 %shr.i14.i.i2572, %1085
  %shr.i20.i.i2578 = lshr i32 %xor2.i19.i.i2577, 8
  %1086 = and i32 %xor2.i19.i.i2577, 255
  %idxprom.i23.i.i2581 = zext nneg i32 %1086 to i64
  %arrayidx.i24.i.i2582 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2581
  %1087 = load i32, ptr %arrayidx.i24.i.i2582, align 4, !tbaa !12
  %xor2.i25.i.i2583 = xor i32 %shr.i20.i.i2578, %1087
  %shr.i26.i.i2584 = lshr i32 %xor2.i25.i.i2583, 8
  %1088 = and i32 %xor2.i25.i.i2583, 255
  %idxprom.i29.i.i2587 = zext nneg i32 %1088 to i64
  %arrayidx.i30.i.i2588 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2587
  %1089 = load i32, ptr %arrayidx.i30.i.i2588, align 4, !tbaa !12
  %xor2.i31.i.i2589 = xor i32 %shr.i26.i.i2584, %1089
  %shr.i32.i.i2590 = lshr i32 %xor2.i31.i.i2589, 8
  %1090 = and i32 %xor2.i31.i.i2589, 255
  %idxprom.i35.i.i2593 = zext nneg i32 %1090 to i64
  %arrayidx.i36.i.i2594 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2593
  %1091 = load i32, ptr %arrayidx.i36.i.i2594, align 4, !tbaa !12
  %xor2.i37.i.i2595 = xor i32 %shr.i32.i.i2590, %1091
  %shr.i38.i.i2596 = lshr i32 %xor2.i37.i.i2595, 8
  %1092 = and i32 %xor2.i37.i.i2595, 255
  %idxprom.i41.i.i2599 = zext nneg i32 %1092 to i64
  %arrayidx.i42.i.i2600 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2599
  %1093 = load i32, ptr %arrayidx.i42.i.i2600, align 4, !tbaa !12
  %xor2.i43.i.i2601 = xor i32 %shr.i38.i.i2596, %1093
  %shr.i44.i.i2602 = lshr i32 %xor2.i43.i.i2601, 8
  %1094 = and i32 %xor2.i43.i.i2601, 255
  %.tr.i45.masked.i.i2603 = zext nneg i32 %1094 to i64
  %arrayidx.i48.i.i2605 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2603
  %1095 = load i32, ptr %arrayidx.i48.i.i2605, align 4, !tbaa !12
  %xor2.i49.i.i2606 = xor i32 %shr.i44.i.i2602, %1095
  store i32 %xor2.i49.i.i2606, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2611, label %if.then.i2608

if.then.i2608:                                    ; preds = %transparent_crc.exit2559
  %1096 = xor i32 %xor2.i49.i.i2606, -1
  %xor.i2609 = zext i32 %1096 to i64
  %call.i2610 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.128, i64 noundef %xor.i2609)
  %.pre3227 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2611

transparent_crc.exit2611:                         ; preds = %transparent_crc.exit2559, %if.then.i2608
  %1097 = phi i32 [ %xor2.i49.i.i2606, %transparent_crc.exit2559 ], [ %.pre3227, %if.then.i2608 ]
  %shr.i.i.i2612 = lshr i32 %1097, 8
  %1098 = and i32 %1097, 255
  %1099 = xor i32 %1098, 33
  %idxprom.i.i.i2615 = zext nneg i32 %1099 to i64
  %arrayidx.i.i.i2616 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2615
  %1100 = load i32, ptr %arrayidx.i.i.i2616, align 4, !tbaa !12
  %xor2.i.i.i2617 = xor i32 %shr.i.i.i2612, %1100
  %shr.i8.i.i2618 = lshr i32 %xor2.i.i.i2617, 8
  %1101 = and i32 %xor2.i.i.i2617, 255
  %1102 = xor i32 %1101, 71
  %idxprom.i11.i.i2621 = zext nneg i32 %1102 to i64
  %arrayidx.i12.i.i2622 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2621
  %1103 = load i32, ptr %arrayidx.i12.i.i2622, align 4, !tbaa !12
  %xor2.i13.i.i2623 = xor i32 %shr.i8.i.i2618, %1103
  %shr.i14.i.i2624 = lshr i32 %xor2.i13.i.i2623, 8
  %1104 = and i32 %xor2.i13.i.i2623, 255
  %1105 = xor i32 %1104, 115
  %idxprom.i17.i.i2627 = zext nneg i32 %1105 to i64
  %arrayidx.i18.i.i2628 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2627
  %1106 = load i32, ptr %arrayidx.i18.i.i2628, align 4, !tbaa !12
  %xor2.i19.i.i2629 = xor i32 %shr.i14.i.i2624, %1106
  %shr.i20.i.i2630 = lshr i32 %xor2.i19.i.i2629, 8
  %1107 = and i32 %xor2.i19.i.i2629, 255
  %1108 = xor i32 %1107, 182
  %idxprom.i23.i.i2633 = zext nneg i32 %1108 to i64
  %arrayidx.i24.i.i2634 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2633
  %1109 = load i32, ptr %arrayidx.i24.i.i2634, align 4, !tbaa !12
  %xor2.i25.i.i2635 = xor i32 %shr.i20.i.i2630, %1109
  %shr.i26.i.i2636 = lshr i32 %xor2.i25.i.i2635, 8
  %1110 = and i32 %xor2.i25.i.i2635, 255
  %1111 = xor i32 %1110, 255
  %idxprom.i29.i.i2639 = zext nneg i32 %1111 to i64
  %arrayidx.i30.i.i2640 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2639
  %1112 = load i32, ptr %arrayidx.i30.i.i2640, align 4, !tbaa !12
  %xor2.i31.i.i2641 = xor i32 %shr.i26.i.i2636, %1112
  %shr.i32.i.i2642 = lshr i32 %xor2.i31.i.i2641, 8
  %1113 = and i32 %xor2.i31.i.i2641, 255
  %1114 = xor i32 %1113, 255
  %idxprom.i35.i.i2645 = zext nneg i32 %1114 to i64
  %arrayidx.i36.i.i2646 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2645
  %1115 = load i32, ptr %arrayidx.i36.i.i2646, align 4, !tbaa !12
  %xor2.i37.i.i2647 = xor i32 %shr.i32.i.i2642, %1115
  %shr.i38.i.i2648 = lshr i32 %xor2.i37.i.i2647, 8
  %1116 = and i32 %xor2.i37.i.i2647, 255
  %1117 = xor i32 %1116, 255
  %idxprom.i41.i.i2651 = zext nneg i32 %1117 to i64
  %arrayidx.i42.i.i2652 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2651
  %1118 = load i32, ptr %arrayidx.i42.i.i2652, align 4, !tbaa !12
  %xor2.i43.i.i2653 = xor i32 %shr.i38.i.i2648, %1118
  %shr.i44.i.i2654 = lshr i32 %xor2.i43.i.i2653, 8
  %1119 = and i32 %xor2.i43.i.i2653, 255
  %1120 = xor i32 %1119, 255
  %idxprom.i47.i.i2656 = zext nneg i32 %1120 to i64
  %arrayidx.i48.i.i2657 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i2656
  %1121 = load i32, ptr %arrayidx.i48.i.i2657, align 4, !tbaa !12
  %xor2.i49.i.i2658 = xor i32 %shr.i44.i.i2654, %1121
  store i32 %xor2.i49.i.i2658, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2663, label %if.then.i2660

if.then.i2660:                                    ; preds = %transparent_crc.exit2611
  %1122 = xor i32 %xor2.i49.i.i2658, -1
  %xor.i2661 = zext i32 %1122 to i64
  %call.i2662 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.129, i64 noundef %xor.i2661)
  %.pre3228 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2663

transparent_crc.exit2663:                         ; preds = %transparent_crc.exit2611, %if.then.i2660
  %1123 = phi i32 [ %xor2.i49.i.i2658, %transparent_crc.exit2611 ], [ %.pre3228, %if.then.i2660 ]
  %shr.i.i.i2664 = lshr i32 %1123, 8
  %1124 = and i32 %1123, 255
  %1125 = xor i32 %1124, 1
  %idxprom.i.i.i2667 = zext nneg i32 %1125 to i64
  %arrayidx.i.i.i2668 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2667
  %1126 = load i32, ptr %arrayidx.i.i.i2668, align 4, !tbaa !12
  %xor2.i.i.i2669 = xor i32 %shr.i.i.i2664, %1126
  %shr.i8.i.i2670 = lshr i32 %xor2.i.i.i2669, 8
  %1127 = and i32 %xor2.i.i.i2669, 255
  %idxprom.i11.i.i2673 = zext nneg i32 %1127 to i64
  %arrayidx.i12.i.i2674 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2673
  %1128 = load i32, ptr %arrayidx.i12.i.i2674, align 4, !tbaa !12
  %xor2.i13.i.i2675 = xor i32 %shr.i8.i.i2670, %1128
  %shr.i14.i.i2676 = lshr i32 %xor2.i13.i.i2675, 8
  %1129 = and i32 %xor2.i13.i.i2675, 255
  %idxprom.i17.i.i2679 = zext nneg i32 %1129 to i64
  %arrayidx.i18.i.i2680 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2679
  %1130 = load i32, ptr %arrayidx.i18.i.i2680, align 4, !tbaa !12
  %xor2.i19.i.i2681 = xor i32 %shr.i14.i.i2676, %1130
  %shr.i20.i.i2682 = lshr i32 %xor2.i19.i.i2681, 8
  %1131 = and i32 %xor2.i19.i.i2681, 255
  %idxprom.i23.i.i2685 = zext nneg i32 %1131 to i64
  %arrayidx.i24.i.i2686 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2685
  %1132 = load i32, ptr %arrayidx.i24.i.i2686, align 4, !tbaa !12
  %xor2.i25.i.i2687 = xor i32 %shr.i20.i.i2682, %1132
  %shr.i26.i.i2688 = lshr i32 %xor2.i25.i.i2687, 8
  %1133 = and i32 %xor2.i25.i.i2687, 255
  %idxprom.i29.i.i2691 = zext nneg i32 %1133 to i64
  %arrayidx.i30.i.i2692 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2691
  %1134 = load i32, ptr %arrayidx.i30.i.i2692, align 4, !tbaa !12
  %xor2.i31.i.i2693 = xor i32 %shr.i26.i.i2688, %1134
  %shr.i32.i.i2694 = lshr i32 %xor2.i31.i.i2693, 8
  %1135 = and i32 %xor2.i31.i.i2693, 255
  %idxprom.i35.i.i2697 = zext nneg i32 %1135 to i64
  %arrayidx.i36.i.i2698 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2697
  %1136 = load i32, ptr %arrayidx.i36.i.i2698, align 4, !tbaa !12
  %xor2.i37.i.i2699 = xor i32 %shr.i32.i.i2694, %1136
  %shr.i38.i.i2700 = lshr i32 %xor2.i37.i.i2699, 8
  %1137 = and i32 %xor2.i37.i.i2699, 255
  %idxprom.i41.i.i2703 = zext nneg i32 %1137 to i64
  %arrayidx.i42.i.i2704 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2703
  %1138 = load i32, ptr %arrayidx.i42.i.i2704, align 4, !tbaa !12
  %xor2.i43.i.i2705 = xor i32 %shr.i38.i.i2700, %1138
  %shr.i44.i.i2706 = lshr i32 %xor2.i43.i.i2705, 8
  %1139 = and i32 %xor2.i43.i.i2705, 255
  %.tr.i45.masked.i.i2707 = zext nneg i32 %1139 to i64
  %arrayidx.i48.i.i2709 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2707
  %1140 = load i32, ptr %arrayidx.i48.i.i2709, align 4, !tbaa !12
  %xor2.i49.i.i2710 = xor i32 %shr.i44.i.i2706, %1140
  store i32 %xor2.i49.i.i2710, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2715, label %if.then.i2712

if.then.i2712:                                    ; preds = %transparent_crc.exit2663
  %1141 = xor i32 %xor2.i49.i.i2710, -1
  %xor.i2713 = zext i32 %1141 to i64
  %call.i2714 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.130, i64 noundef %xor.i2713)
  %.pre3229 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2715

transparent_crc.exit2715:                         ; preds = %transparent_crc.exit2663, %if.then.i2712
  %1142 = phi i32 [ %xor2.i49.i.i2710, %transparent_crc.exit2663 ], [ %.pre3229, %if.then.i2712 ]
  %shr.i.i.i2716 = lshr i32 %1142, 8
  %1143 = and i32 %1142, 255
  %1144 = xor i32 %1143, 248
  %idxprom.i.i.i2719 = zext nneg i32 %1144 to i64
  %arrayidx.i.i.i2720 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2719
  %1145 = load i32, ptr %arrayidx.i.i.i2720, align 4, !tbaa !12
  %xor2.i.i.i2721 = xor i32 %shr.i.i.i2716, %1145
  %shr.i8.i.i2722 = lshr i32 %xor2.i.i.i2721, 8
  %1146 = and i32 %xor2.i.i.i2721, 255
  %1147 = xor i32 %1146, 255
  %idxprom.i11.i.i2725 = zext nneg i32 %1147 to i64
  %arrayidx.i12.i.i2726 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2725
  %1148 = load i32, ptr %arrayidx.i12.i.i2726, align 4, !tbaa !12
  %xor2.i13.i.i2727 = xor i32 %shr.i8.i.i2722, %1148
  %shr.i14.i.i2728 = lshr i32 %xor2.i13.i.i2727, 8
  %1149 = and i32 %xor2.i13.i.i2727, 255
  %1150 = xor i32 %1149, 255
  %idxprom.i17.i.i2731 = zext nneg i32 %1150 to i64
  %arrayidx.i18.i.i2732 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2731
  %1151 = load i32, ptr %arrayidx.i18.i.i2732, align 4, !tbaa !12
  %xor2.i19.i.i2733 = xor i32 %shr.i14.i.i2728, %1151
  %shr.i20.i.i2734 = lshr i32 %xor2.i19.i.i2733, 8
  %1152 = and i32 %xor2.i19.i.i2733, 255
  %1153 = xor i32 %1152, 255
  %idxprom.i23.i.i2737 = zext nneg i32 %1153 to i64
  %arrayidx.i24.i.i2738 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2737
  %1154 = load i32, ptr %arrayidx.i24.i.i2738, align 4, !tbaa !12
  %xor2.i25.i.i2739 = xor i32 %shr.i20.i.i2734, %1154
  %shr.i26.i.i2740 = lshr i32 %xor2.i25.i.i2739, 8
  %1155 = and i32 %xor2.i25.i.i2739, 255
  %1156 = xor i32 %1155, 255
  %idxprom.i29.i.i2743 = zext nneg i32 %1156 to i64
  %arrayidx.i30.i.i2744 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2743
  %1157 = load i32, ptr %arrayidx.i30.i.i2744, align 4, !tbaa !12
  %xor2.i31.i.i2745 = xor i32 %shr.i26.i.i2740, %1157
  %shr.i32.i.i2746 = lshr i32 %xor2.i31.i.i2745, 8
  %1158 = and i32 %xor2.i31.i.i2745, 255
  %1159 = xor i32 %1158, 255
  %idxprom.i35.i.i2749 = zext nneg i32 %1159 to i64
  %arrayidx.i36.i.i2750 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2749
  %1160 = load i32, ptr %arrayidx.i36.i.i2750, align 4, !tbaa !12
  %xor2.i37.i.i2751 = xor i32 %shr.i32.i.i2746, %1160
  %shr.i38.i.i2752 = lshr i32 %xor2.i37.i.i2751, 8
  %1161 = and i32 %xor2.i37.i.i2751, 255
  %1162 = xor i32 %1161, 255
  %idxprom.i41.i.i2755 = zext nneg i32 %1162 to i64
  %arrayidx.i42.i.i2756 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2755
  %1163 = load i32, ptr %arrayidx.i42.i.i2756, align 4, !tbaa !12
  %xor2.i43.i.i2757 = xor i32 %shr.i38.i.i2752, %1163
  %shr.i44.i.i2758 = lshr i32 %xor2.i43.i.i2757, 8
  %1164 = and i32 %xor2.i43.i.i2757, 255
  %1165 = xor i32 %1164, 255
  %idxprom.i47.i.i2760 = zext nneg i32 %1165 to i64
  %arrayidx.i48.i.i2761 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i2760
  %1166 = load i32, ptr %arrayidx.i48.i.i2761, align 4, !tbaa !12
  %xor2.i49.i.i2762 = xor i32 %shr.i44.i.i2758, %1166
  store i32 %xor2.i49.i.i2762, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2767, label %if.then.i2764

if.then.i2764:                                    ; preds = %transparent_crc.exit2715
  %1167 = xor i32 %xor2.i49.i.i2762, -1
  %xor.i2765 = zext i32 %1167 to i64
  %call.i2766 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.131, i64 noundef %xor.i2765)
  %.pre3230 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2767

transparent_crc.exit2767:                         ; preds = %transparent_crc.exit2715, %if.then.i2764
  %1168 = phi i32 [ %xor2.i49.i.i2762, %transparent_crc.exit2715 ], [ %.pre3230, %if.then.i2764 ]
  %shr.i.i.i2768 = lshr i32 %1168, 8
  %1169 = and i32 %1168, 255
  %1170 = xor i32 %1169, 1
  %idxprom.i.i.i2771 = zext nneg i32 %1170 to i64
  %arrayidx.i.i.i2772 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2771
  %1171 = load i32, ptr %arrayidx.i.i.i2772, align 4, !tbaa !12
  %xor2.i.i.i2773 = xor i32 %shr.i.i.i2768, %1171
  %shr.i8.i.i2774 = lshr i32 %xor2.i.i.i2773, 8
  %1172 = and i32 %xor2.i.i.i2773, 255
  %idxprom.i11.i.i2777 = zext nneg i32 %1172 to i64
  %arrayidx.i12.i.i2778 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2777
  %1173 = load i32, ptr %arrayidx.i12.i.i2778, align 4, !tbaa !12
  %xor2.i13.i.i2779 = xor i32 %shr.i8.i.i2774, %1173
  %shr.i14.i.i2780 = lshr i32 %xor2.i13.i.i2779, 8
  %1174 = and i32 %xor2.i13.i.i2779, 255
  %idxprom.i17.i.i2783 = zext nneg i32 %1174 to i64
  %arrayidx.i18.i.i2784 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2783
  %1175 = load i32, ptr %arrayidx.i18.i.i2784, align 4, !tbaa !12
  %xor2.i19.i.i2785 = xor i32 %shr.i14.i.i2780, %1175
  %shr.i20.i.i2786 = lshr i32 %xor2.i19.i.i2785, 8
  %1176 = and i32 %xor2.i19.i.i2785, 255
  %idxprom.i23.i.i2789 = zext nneg i32 %1176 to i64
  %arrayidx.i24.i.i2790 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2789
  %1177 = load i32, ptr %arrayidx.i24.i.i2790, align 4, !tbaa !12
  %xor2.i25.i.i2791 = xor i32 %shr.i20.i.i2786, %1177
  %shr.i26.i.i2792 = lshr i32 %xor2.i25.i.i2791, 8
  %1178 = and i32 %xor2.i25.i.i2791, 255
  %idxprom.i29.i.i2795 = zext nneg i32 %1178 to i64
  %arrayidx.i30.i.i2796 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2795
  %1179 = load i32, ptr %arrayidx.i30.i.i2796, align 4, !tbaa !12
  %xor2.i31.i.i2797 = xor i32 %shr.i26.i.i2792, %1179
  %shr.i32.i.i2798 = lshr i32 %xor2.i31.i.i2797, 8
  %1180 = and i32 %xor2.i31.i.i2797, 255
  %idxprom.i35.i.i2801 = zext nneg i32 %1180 to i64
  %arrayidx.i36.i.i2802 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2801
  %1181 = load i32, ptr %arrayidx.i36.i.i2802, align 4, !tbaa !12
  %xor2.i37.i.i2803 = xor i32 %shr.i32.i.i2798, %1181
  %shr.i38.i.i2804 = lshr i32 %xor2.i37.i.i2803, 8
  %1182 = and i32 %xor2.i37.i.i2803, 255
  %idxprom.i41.i.i2807 = zext nneg i32 %1182 to i64
  %arrayidx.i42.i.i2808 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2807
  %1183 = load i32, ptr %arrayidx.i42.i.i2808, align 4, !tbaa !12
  %xor2.i43.i.i2809 = xor i32 %shr.i38.i.i2804, %1183
  %shr.i44.i.i2810 = lshr i32 %xor2.i43.i.i2809, 8
  %1184 = and i32 %xor2.i43.i.i2809, 255
  %.tr.i45.masked.i.i2811 = zext nneg i32 %1184 to i64
  %arrayidx.i48.i.i2813 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2811
  %1185 = load i32, ptr %arrayidx.i48.i.i2813, align 4, !tbaa !12
  %xor2.i49.i.i2814 = xor i32 %shr.i44.i.i2810, %1185
  store i32 %xor2.i49.i.i2814, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2819, label %if.then.i2816

if.then.i2816:                                    ; preds = %transparent_crc.exit2767
  %1186 = xor i32 %xor2.i49.i.i2814, -1
  %xor.i2817 = zext i32 %1186 to i64
  %call.i2818 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.132, i64 noundef %xor.i2817)
  %.pre3231 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2819

transparent_crc.exit2819:                         ; preds = %transparent_crc.exit2767, %if.then.i2816
  %1187 = phi i32 [ %xor2.i49.i.i2814, %transparent_crc.exit2767 ], [ %.pre3231, %if.then.i2816 ]
  %shr.i.i.i2820 = lshr i32 %1187, 8
  %1188 = and i32 %1187, 255
  %1189 = xor i32 %1188, 248
  %idxprom.i.i.i2823 = zext nneg i32 %1189 to i64
  %arrayidx.i.i.i2824 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2823
  %1190 = load i32, ptr %arrayidx.i.i.i2824, align 4, !tbaa !12
  %xor2.i.i.i2825 = xor i32 %shr.i.i.i2820, %1190
  %shr.i8.i.i2826 = lshr i32 %xor2.i.i.i2825, 8
  %1191 = and i32 %xor2.i.i.i2825, 255
  %1192 = xor i32 %1191, 255
  %idxprom.i11.i.i2829 = zext nneg i32 %1192 to i64
  %arrayidx.i12.i.i2830 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2829
  %1193 = load i32, ptr %arrayidx.i12.i.i2830, align 4, !tbaa !12
  %xor2.i13.i.i2831 = xor i32 %shr.i8.i.i2826, %1193
  %shr.i14.i.i2832 = lshr i32 %xor2.i13.i.i2831, 8
  %1194 = and i32 %xor2.i13.i.i2831, 255
  %1195 = xor i32 %1194, 255
  %idxprom.i17.i.i2835 = zext nneg i32 %1195 to i64
  %arrayidx.i18.i.i2836 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2835
  %1196 = load i32, ptr %arrayidx.i18.i.i2836, align 4, !tbaa !12
  %xor2.i19.i.i2837 = xor i32 %shr.i14.i.i2832, %1196
  %shr.i20.i.i2838 = lshr i32 %xor2.i19.i.i2837, 8
  %1197 = and i32 %xor2.i19.i.i2837, 255
  %1198 = xor i32 %1197, 255
  %idxprom.i23.i.i2841 = zext nneg i32 %1198 to i64
  %arrayidx.i24.i.i2842 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2841
  %1199 = load i32, ptr %arrayidx.i24.i.i2842, align 4, !tbaa !12
  %xor2.i25.i.i2843 = xor i32 %shr.i20.i.i2838, %1199
  %shr.i26.i.i2844 = lshr i32 %xor2.i25.i.i2843, 8
  %1200 = and i32 %xor2.i25.i.i2843, 255
  %idxprom.i29.i.i2847 = zext nneg i32 %1200 to i64
  %arrayidx.i30.i.i2848 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2847
  %1201 = load i32, ptr %arrayidx.i30.i.i2848, align 4, !tbaa !12
  %xor2.i31.i.i2849 = xor i32 %shr.i26.i.i2844, %1201
  %shr.i32.i.i2850 = lshr i32 %xor2.i31.i.i2849, 8
  %1202 = and i32 %xor2.i31.i.i2849, 255
  %idxprom.i35.i.i2853 = zext nneg i32 %1202 to i64
  %arrayidx.i36.i.i2854 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2853
  %1203 = load i32, ptr %arrayidx.i36.i.i2854, align 4, !tbaa !12
  %xor2.i37.i.i2855 = xor i32 %shr.i32.i.i2850, %1203
  %shr.i38.i.i2856 = lshr i32 %xor2.i37.i.i2855, 8
  %1204 = and i32 %xor2.i37.i.i2855, 255
  %idxprom.i41.i.i2859 = zext nneg i32 %1204 to i64
  %arrayidx.i42.i.i2860 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2859
  %1205 = load i32, ptr %arrayidx.i42.i.i2860, align 4, !tbaa !12
  %xor2.i43.i.i2861 = xor i32 %shr.i38.i.i2856, %1205
  %shr.i44.i.i2862 = lshr i32 %xor2.i43.i.i2861, 8
  %1206 = and i32 %xor2.i43.i.i2861, 255
  %.tr.i45.masked.i.i2863 = zext nneg i32 %1206 to i64
  %arrayidx.i48.i.i2865 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2863
  %1207 = load i32, ptr %arrayidx.i48.i.i2865, align 4, !tbaa !12
  %xor2.i49.i.i2866 = xor i32 %shr.i44.i.i2862, %1207
  store i32 %xor2.i49.i.i2866, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2871, label %if.then.i2868

if.then.i2868:                                    ; preds = %transparent_crc.exit2819
  %1208 = xor i32 %xor2.i49.i.i2866, -1
  %xor.i2869 = zext i32 %1208 to i64
  %call.i2870 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.133, i64 noundef %xor.i2869)
  %.pre3232 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2871

transparent_crc.exit2871:                         ; preds = %transparent_crc.exit2819, %if.then.i2868
  %1209 = phi i32 [ %xor2.i49.i.i2866, %transparent_crc.exit2819 ], [ %.pre3232, %if.then.i2868 ]
  %shr.i.i.i2872 = lshr i32 %1209, 8
  %1210 = and i32 %1209, 255
  %1211 = xor i32 %1210, 41
  %idxprom.i.i.i2875 = zext nneg i32 %1211 to i64
  %arrayidx.i.i.i2876 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2875
  %1212 = load i32, ptr %arrayidx.i.i.i2876, align 4, !tbaa !12
  %xor2.i.i.i2877 = xor i32 %shr.i.i.i2872, %1212
  %shr.i8.i.i2878 = lshr i32 %xor2.i.i.i2877, 8
  %1213 = and i32 %xor2.i.i.i2877, 255
  %idxprom.i11.i.i2881 = zext nneg i32 %1213 to i64
  %arrayidx.i12.i.i2882 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2881
  %1214 = load i32, ptr %arrayidx.i12.i.i2882, align 4, !tbaa !12
  %xor2.i13.i.i2883 = xor i32 %shr.i8.i.i2878, %1214
  %shr.i14.i.i2884 = lshr i32 %xor2.i13.i.i2883, 8
  %1215 = and i32 %xor2.i13.i.i2883, 255
  %idxprom.i17.i.i2887 = zext nneg i32 %1215 to i64
  %arrayidx.i18.i.i2888 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2887
  %1216 = load i32, ptr %arrayidx.i18.i.i2888, align 4, !tbaa !12
  %xor2.i19.i.i2889 = xor i32 %shr.i14.i.i2884, %1216
  %shr.i20.i.i2890 = lshr i32 %xor2.i19.i.i2889, 8
  %1217 = and i32 %xor2.i19.i.i2889, 255
  %idxprom.i23.i.i2893 = zext nneg i32 %1217 to i64
  %arrayidx.i24.i.i2894 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2893
  %1218 = load i32, ptr %arrayidx.i24.i.i2894, align 4, !tbaa !12
  %xor2.i25.i.i2895 = xor i32 %shr.i20.i.i2890, %1218
  %shr.i26.i.i2896 = lshr i32 %xor2.i25.i.i2895, 8
  %1219 = and i32 %xor2.i25.i.i2895, 255
  %idxprom.i29.i.i2899 = zext nneg i32 %1219 to i64
  %arrayidx.i30.i.i2900 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2899
  %1220 = load i32, ptr %arrayidx.i30.i.i2900, align 4, !tbaa !12
  %xor2.i31.i.i2901 = xor i32 %shr.i26.i.i2896, %1220
  %shr.i32.i.i2902 = lshr i32 %xor2.i31.i.i2901, 8
  %1221 = and i32 %xor2.i31.i.i2901, 255
  %idxprom.i35.i.i2905 = zext nneg i32 %1221 to i64
  %arrayidx.i36.i.i2906 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2905
  %1222 = load i32, ptr %arrayidx.i36.i.i2906, align 4, !tbaa !12
  %xor2.i37.i.i2907 = xor i32 %shr.i32.i.i2902, %1222
  %shr.i38.i.i2908 = lshr i32 %xor2.i37.i.i2907, 8
  %1223 = and i32 %xor2.i37.i.i2907, 255
  %idxprom.i41.i.i2911 = zext nneg i32 %1223 to i64
  %arrayidx.i42.i.i2912 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2911
  %1224 = load i32, ptr %arrayidx.i42.i.i2912, align 4, !tbaa !12
  %xor2.i43.i.i2913 = xor i32 %shr.i38.i.i2908, %1224
  %shr.i44.i.i2914 = lshr i32 %xor2.i43.i.i2913, 8
  %1225 = and i32 %xor2.i43.i.i2913, 255
  %.tr.i45.masked.i.i2915 = zext nneg i32 %1225 to i64
  %arrayidx.i48.i.i2917 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %.tr.i45.masked.i.i2915
  %1226 = load i32, ptr %arrayidx.i48.i.i2917, align 4, !tbaa !12
  %xor2.i49.i.i2918 = xor i32 %shr.i44.i.i2914, %1226
  store i32 %xor2.i49.i.i2918, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2923, label %if.then.i2920

if.then.i2920:                                    ; preds = %transparent_crc.exit2871
  %1227 = xor i32 %xor2.i49.i.i2918, -1
  %xor.i2921 = zext i32 %1227 to i64
  %call.i2922 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.134, i64 noundef %xor.i2921)
  br label %transparent_crc.exit2923

transparent_crc.exit2923:                         ; preds = %transparent_crc.exit2871, %if.then.i2920
  %1228 = load volatile i32, ptr @g_6221, align 4, !tbaa !12
  %conv725 = sext i32 %1228 to i64
  call fastcc void @transparent_crc(i64 noundef %conv725, ptr noundef nonnull @.str.135, i32 noundef %print_hash_value.0)
  %1229 = load volatile i8, ptr @g_6404, align 1, !tbaa !42
  %conv726 = sext i8 %1229 to i64
  call fastcc void @transparent_crc(i64 noundef %conv726, ptr noundef nonnull @.str.136, i32 noundef %print_hash_value.0)
  br label %for.body730

for.body730:                                      ; preds = %transparent_crc.exit2923, %for.inc738
  %indvars.iv3199 = phi i64 [ 0, %transparent_crc.exit2923 ], [ %indvars.iv.next3200, %for.inc738 ]
  %arrayidx732 = getelementptr inbounds nuw [5 x i16], ptr @g_6503, i64 0, i64 %indvars.iv3199
  %1230 = load volatile i16, ptr %arrayidx732, align 2, !tbaa !15
  %conv733 = zext i16 %1230 to i64
  call fastcc void @transparent_crc(i64 noundef %conv733, ptr noundef nonnull @.str.137, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc738, label %if.then735

if.then735:                                       ; preds = %for.body730
  %1231 = trunc nuw nsw i64 %indvars.iv3199 to i32
  %call736 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %1231)
  br label %for.inc738

for.inc738:                                       ; preds = %for.body730, %if.then735
  %indvars.iv.next3200 = add nuw nsw i64 %indvars.iv3199, 1
  %exitcond3202.not = icmp eq i64 %indvars.iv.next3200, 5
  br i1 %exitcond3202.not, label %for.body744, label %for.body730, !llvm.loop !112

for.body744:                                      ; preds = %for.inc738, %for.inc752
  %indvars.iv3203 = phi i64 [ %indvars.iv.next3204, %for.inc752 ], [ 0, %for.inc738 ]
  %arrayidx746 = getelementptr inbounds nuw [5 x i16], ptr @g_6516, i64 0, i64 %indvars.iv3203
  %1232 = load volatile i16, ptr %arrayidx746, align 2, !tbaa !15
  %conv747 = sext i16 %1232 to i64
  call fastcc void @transparent_crc(i64 noundef %conv747, ptr noundef nonnull @.str.138, i32 noundef %print_hash_value.0)
  br i1 %tobool748.not, label %for.inc752, label %if.then749

if.then749:                                       ; preds = %for.body744
  %1233 = trunc nuw nsw i64 %indvars.iv3203 to i32
  %call750 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %1233)
  br label %for.inc752

for.inc752:                                       ; preds = %for.body744, %if.then749
  %indvars.iv.next3204 = add nuw nsw i64 %indvars.iv3203, 1
  %exitcond3206.not = icmp eq i64 %indvars.iv.next3204, 5
  br i1 %exitcond3206.not, label %for.end754, label %for.body744, !llvm.loop !113

for.end754:                                       ; preds = %for.inc752
  %1234 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i.i2924 = lshr i32 %1234, 8
  %1235 = and i32 %1234, 255
  %1236 = xor i32 %1235, 157
  %idxprom.i.i.i2927 = zext nneg i32 %1236 to i64
  %arrayidx.i.i.i2928 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i.i2927
  %1237 = load i32, ptr %arrayidx.i.i.i2928, align 4, !tbaa !12
  %xor2.i.i.i2929 = xor i32 %shr.i.i.i2924, %1237
  %shr.i8.i.i2930 = lshr i32 %xor2.i.i.i2929, 8
  %1238 = and i32 %xor2.i.i.i2929, 255
  %1239 = xor i32 %1238, 255
  %idxprom.i11.i.i2933 = zext nneg i32 %1239 to i64
  %arrayidx.i12.i.i2934 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i.i2933
  %1240 = load i32, ptr %arrayidx.i12.i.i2934, align 4, !tbaa !12
  %xor2.i13.i.i2935 = xor i32 %shr.i8.i.i2930, %1240
  %shr.i14.i.i2936 = lshr i32 %xor2.i13.i.i2935, 8
  %1241 = and i32 %xor2.i13.i.i2935, 255
  %1242 = xor i32 %1241, 255
  %idxprom.i17.i.i2939 = zext nneg i32 %1242 to i64
  %arrayidx.i18.i.i2940 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i.i2939
  %1243 = load i32, ptr %arrayidx.i18.i.i2940, align 4, !tbaa !12
  %xor2.i19.i.i2941 = xor i32 %shr.i14.i.i2936, %1243
  %shr.i20.i.i2942 = lshr i32 %xor2.i19.i.i2941, 8
  %1244 = and i32 %xor2.i19.i.i2941, 255
  %1245 = xor i32 %1244, 255
  %idxprom.i23.i.i2945 = zext nneg i32 %1245 to i64
  %arrayidx.i24.i.i2946 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i.i2945
  %1246 = load i32, ptr %arrayidx.i24.i.i2946, align 4, !tbaa !12
  %xor2.i25.i.i2947 = xor i32 %shr.i20.i.i2942, %1246
  %shr.i26.i.i2948 = lshr i32 %xor2.i25.i.i2947, 8
  %1247 = and i32 %xor2.i25.i.i2947, 255
  %1248 = xor i32 %1247, 255
  %idxprom.i29.i.i2951 = zext nneg i32 %1248 to i64
  %arrayidx.i30.i.i2952 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i.i2951
  %1249 = load i32, ptr %arrayidx.i30.i.i2952, align 4, !tbaa !12
  %xor2.i31.i.i2953 = xor i32 %shr.i26.i.i2948, %1249
  %shr.i32.i.i2954 = lshr i32 %xor2.i31.i.i2953, 8
  %1250 = and i32 %xor2.i31.i.i2953, 255
  %1251 = xor i32 %1250, 255
  %idxprom.i35.i.i2957 = zext nneg i32 %1251 to i64
  %arrayidx.i36.i.i2958 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i.i2957
  %1252 = load i32, ptr %arrayidx.i36.i.i2958, align 4, !tbaa !12
  %xor2.i37.i.i2959 = xor i32 %shr.i32.i.i2954, %1252
  %shr.i38.i.i2960 = lshr i32 %xor2.i37.i.i2959, 8
  %1253 = and i32 %xor2.i37.i.i2959, 255
  %1254 = xor i32 %1253, 255
  %idxprom.i41.i.i2963 = zext nneg i32 %1254 to i64
  %arrayidx.i42.i.i2964 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i.i2963
  %1255 = load i32, ptr %arrayidx.i42.i.i2964, align 4, !tbaa !12
  %xor2.i43.i.i2965 = xor i32 %shr.i38.i.i2960, %1255
  %shr.i44.i.i2966 = lshr i32 %xor2.i43.i.i2965, 8
  %1256 = and i32 %xor2.i43.i.i2965, 255
  %1257 = xor i32 %1256, 255
  %idxprom.i47.i.i2968 = zext nneg i32 %1257 to i64
  %arrayidx.i48.i.i2969 = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i.i2968
  %1258 = load i32, ptr %arrayidx.i48.i.i2969, align 4, !tbaa !12
  %xor2.i49.i.i2970 = xor i32 %shr.i44.i.i2966, %1258
  store i32 %xor2.i49.i.i2970, ptr @crc32_context, align 4, !tbaa !12
  br i1 %tobool.not.i359, label %transparent_crc.exit2975, label %if.then.i2972

if.then.i2972:                                    ; preds = %for.end754
  %1259 = xor i32 %xor2.i49.i.i2970, -1
  %xor.i2973 = zext i32 %1259 to i64
  %call.i2974 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef nonnull @.str.139, i64 noundef %xor.i2973)
  %.pre3233 = load i32, ptr @crc32_context, align 4, !tbaa !12
  br label %transparent_crc.exit2975

transparent_crc.exit2975:                         ; preds = %for.end754, %if.then.i2972
  %1260 = phi i32 [ %xor2.i49.i.i2970, %for.end754 ], [ %.pre3233, %if.then.i2972 ]
  %1261 = xor i32 %1260, -1
  %call.i2976 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.240, i32 noundef %1261)
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define internal fastcc void @transparent_crc(i64 noundef %val, ptr noundef %vname, i32 noundef range(i32 0, 2) %flag) unnamed_addr #0 {
entry:
  %0 = load i32, ptr @crc32_context, align 4, !tbaa !12
  %shr.i.i = lshr i32 %0, 8
  %.tr.i.i = zext i32 %0 to i64
  %xor.narrow.i.i = xor i64 %val, %.tr.i.i
  %idxprom.i.i = and i64 %xor.narrow.i.i, 255
  %arrayidx.i.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i.i
  %1 = load i32, ptr %arrayidx.i.i, align 4, !tbaa !12
  %xor2.i.i = xor i32 %shr.i.i, %1
  %shr1.i = lshr i64 %val, 8
  %shr.i8.i = lshr i32 %xor2.i.i, 8
  %.tr.i9.i = zext i32 %xor2.i.i to i64
  %xor.narrow.i10.i = xor i64 %shr1.i, %.tr.i9.i
  %idxprom.i11.i = and i64 %xor.narrow.i10.i, 255
  %arrayidx.i12.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i11.i
  %2 = load i32, ptr %arrayidx.i12.i, align 4, !tbaa !12
  %xor2.i13.i = xor i32 %shr.i8.i, %2
  %shr4.i = lshr i64 %val, 16
  %shr.i14.i = lshr i32 %xor2.i13.i, 8
  %.tr.i15.i = zext i32 %xor2.i13.i to i64
  %xor.narrow.i16.i = xor i64 %shr4.i, %.tr.i15.i
  %idxprom.i17.i = and i64 %xor.narrow.i16.i, 255
  %arrayidx.i18.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i17.i
  %3 = load i32, ptr %arrayidx.i18.i, align 4, !tbaa !12
  %xor2.i19.i = xor i32 %shr.i14.i, %3
  %shr7.i = lshr i64 %val, 24
  %shr.i20.i = lshr i32 %xor2.i19.i, 8
  %.tr.i21.i = zext i32 %xor2.i19.i to i64
  %xor.narrow.i22.i = xor i64 %shr7.i, %.tr.i21.i
  %idxprom.i23.i = and i64 %xor.narrow.i22.i, 255
  %arrayidx.i24.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i23.i
  %4 = load i32, ptr %arrayidx.i24.i, align 4, !tbaa !12
  %xor2.i25.i = xor i32 %shr.i20.i, %4
  %shr10.i = lshr i64 %val, 32
  %shr.i26.i = lshr i32 %xor2.i25.i, 8
  %.tr.i27.i = zext i32 %xor2.i25.i to i64
  %xor.narrow.i28.i = xor i64 %shr10.i, %.tr.i27.i
  %idxprom.i29.i = and i64 %xor.narrow.i28.i, 255
  %arrayidx.i30.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i29.i
  %5 = load i32, ptr %arrayidx.i30.i, align 4, !tbaa !12
  %xor2.i31.i = xor i32 %shr.i26.i, %5
  %shr13.i = lshr i64 %val, 40
  %shr.i32.i = lshr i32 %xor2.i31.i, 8
  %.tr.i33.i = zext i32 %xor2.i31.i to i64
  %xor.narrow.i34.i = xor i64 %shr13.i, %.tr.i33.i
  %idxprom.i35.i = and i64 %xor.narrow.i34.i, 255
  %arrayidx.i36.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i35.i
  %6 = load i32, ptr %arrayidx.i36.i, align 4, !tbaa !12
  %xor2.i37.i = xor i32 %shr.i32.i, %6
  %shr16.i = lshr i64 %val, 48
  %shr.i38.i = lshr i32 %xor2.i37.i, 8
  %.tr.i39.i = zext i32 %xor2.i37.i to i64
  %xor.narrow.i40.i = xor i64 %shr16.i, %.tr.i39.i
  %idxprom.i41.i = and i64 %xor.narrow.i40.i, 255
  %arrayidx.i42.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i41.i
  %7 = load i32, ptr %arrayidx.i42.i, align 4, !tbaa !12
  %xor2.i43.i = xor i32 %shr.i38.i, %7
  %shr19.i = lshr i64 %val, 56
  %shr.i44.i = lshr i32 %xor2.i43.i, 8
  %8 = and i32 %xor2.i43.i, 255
  %.tr.i45.masked.i = zext nneg i32 %8 to i64
  %idxprom.i47.i = xor i64 %shr19.i, %.tr.i45.masked.i
  %arrayidx.i48.i = getelementptr inbounds nuw [256 x i32], ptr @crc32_tab, i64 0, i64 %idxprom.i47.i
  %9 = load i32, ptr %arrayidx.i48.i, align 4, !tbaa !12
  %xor2.i49.i = xor i32 %shr.i44.i, %9
  store i32 %xor2.i49.i, ptr @crc32_context, align 4, !tbaa !12
  %tobool.not = icmp eq i32 %flag, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %10 = xor i32 %xor2.i49.i, -1
  %xor = zext i32 %10 to i64
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.234, ptr noundef %vname, i64 noundef %xor)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

!llvm.ident = !{!0}
!llvm.module.flags = !{!1, !2, !3, !4}

!0 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{!6, !6, i64 0}
!6 = !{!"p1 omnipotent char", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !8, i64 0}
!14 = distinct !{!14, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"short", !8, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"p1 _ZTS2S0", !7, i64 0}
!19 = distinct !{!19, !11, !20, !21}
!20 = !{!"llvm.loop.isvectorized", i32 1}
!21 = !{!"llvm.loop.unroll.runtime.disable"}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"long", !8, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"p1 int", !7, i64 0}
!28 = !{!29, !29, i64 0}
!29 = !{!"p2 int", !30, i64 0}
!30 = !{!"any p2 pointer", !7, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"p3 int", !33, i64 0}
!33 = !{!"any p3 pointer", !30, i64 0}
!34 = distinct !{!34, !11}
!35 = !{!36, !36, i64 0}
!36 = !{!"p2 long", !30, i64 0}
!37 = !{!38, !38, i64 0}
!38 = !{!"p1 long", !7, i64 0}
!39 = !{!40, !40, i64 0}
!40 = !{!"p2 short", !30, i64 0}
!41 = distinct !{!41, !11}
!42 = !{!8, !8, i64 0}
!43 = distinct !{!43, !11, !20, !21}
!44 = !{!45, !45, i64 0}
!45 = !{!"p5 short", !46, i64 0}
!46 = !{!"any p5 pointer", !47, i64 0}
!47 = !{!"any p4 pointer", !33, i64 0}
!48 = distinct !{!48, !11}
!49 = distinct !{!49, !11}
!50 = !{!51, !51, i64 0}
!51 = !{!"p2 _ZTS2S0", !30, i64 0}
!52 = !{!53, !53, i64 0}
!53 = !{!"p3 short", !33, i64 0}
!54 = distinct !{!54, !11}
!55 = distinct !{!55, !11}
!56 = !{!57, !57, i64 0}
!57 = !{!"p1 short", !7, i64 0}
!58 = distinct !{!58, !11, !20, !21}
!59 = !{!60}
!60 = distinct !{!60, !61, !"func_121: %agg.result"}
!61 = distinct !{!61, !"func_121"}
!62 = distinct !{!62, !11}
!63 = distinct !{!63, !11}
!64 = !{!65}
!65 = distinct !{!65, !66, !"func_121: %agg.result"}
!66 = distinct !{!66, !"func_121"}
!67 = distinct !{!67, !11}
!68 = distinct !{!68, !11}
!69 = distinct !{!69, !11}
!70 = !{!71}
!71 = distinct !{!71, !72, !"func_121: %agg.result"}
!72 = distinct !{!72, !"func_121"}
!73 = distinct !{!73, !11}
!74 = distinct !{!74, !11}
!75 = distinct !{!75, !11}
!76 = distinct !{!76, !11}
!77 = distinct !{!77, !11}
!78 = distinct !{!78, !11}
!79 = distinct !{!79, !11}
!80 = distinct !{!80, !11}
!81 = distinct !{!81, !11}
!82 = distinct !{!82, !11}
!83 = distinct !{!83, !11}
!84 = distinct !{!84, !11}
!85 = distinct !{!85, !11}
!86 = distinct !{!86, !11}
!87 = distinct !{!87, !11}
!88 = distinct !{!88, !11}
!89 = distinct !{!89, !11}
!90 = distinct !{!90, !11}
!91 = distinct !{!91, !11}
!92 = distinct !{!92, !11}
!93 = distinct !{!93, !11}
!94 = distinct !{!94, !11}
!95 = distinct !{!95, !11}
!96 = distinct !{!96, !11}
!97 = distinct !{!97, !11}
!98 = distinct !{!98, !11}
!99 = distinct !{!99, !11}
!100 = distinct !{!100, !11}
!101 = distinct !{!101, !11}
!102 = distinct !{!102, !11}
!103 = distinct !{!103, !11}
!104 = distinct !{!104, !11}
!105 = distinct !{!105, !11}
!106 = distinct !{!106, !11}
!107 = distinct !{!107, !11}
!108 = distinct !{!108, !11}
!109 = distinct !{!109, !11}
!110 = distinct !{!110, !11}
!111 = distinct !{!111, !11}
!112 = distinct !{!112, !11}
!113 = distinct !{!113, !11}
