; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuhu4tefw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [500 x i8], align 16
  %b = alloca [501 x [6 x i8]], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 500, ptr noundef %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 3006, ptr noundef align 16 %b) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %b, i8 noundef 0, i64 noundef 3006, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %l) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %z) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a)
  %call3 = call i64 @strlen(ptr noundef %a) #7
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr %k, align 4, !tbaa !5
  store i32 1, ptr %l, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %4 to i64
  %arrayidx6 = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 %idxprom5
  store i8 %3, ptr %arrayidx6, align 1, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  %arrayidx8 = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 4
  store i8 1, ptr %arrayidx8, align 4, !tbaa !9
  %arrayidx10 = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 5
  store i8 0, ptr %arrayidx10, align 1, !tbaa !9
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc68, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %8
  %cmp12 = icmp sle i32 %6, %sub
  br i1 %cmp12, label %for.body13, label %for.end70

for.body13:                                       ; preds = %for.cond11
  store i32 0, ptr %y, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc41, %for.body13
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %l, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %9, %10
  br i1 %cmp15, label %for.body16, label %for.end43

for.body16:                                       ; preds = %for.cond14
  store i32 0, ptr %x, align 4, !tbaa !5
  store i32 0, ptr %m, align 4, !tbaa !5
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc30, %for.body16
  %11 = load i32, ptr %m, align 4, !tbaa !5
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18 = icmp slt i32 %11, %12
  br i1 %cmp18, label %for.body19, label %for.end32

for.body19:                                       ; preds = %for.cond17
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %m, align 4, !tbaa !5
  %add = add nsw i32 %13, %14
  %idxprom20 = sext i32 %add to i64
  %arrayidx21 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom20
  %15 = load i8, ptr %arrayidx21, align 1, !tbaa !9, !invariant.load !10
  %conv22 = sext i8 %15 to i32
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %16 to i64
  %arrayidx24 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom23
  %17 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom25 = sext i32 %17 to i64
  %arrayidx26 = getelementptr inbounds [6 x i8], ptr %arrayidx24, i64 0, i64 %idxprom25
  %18 = load i8, ptr %arrayidx26, align 1, !tbaa !9, !invariant.load !10
  %conv27 = sext i8 %18 to i32
  %cmp28 = icmp ne i32 %conv22, %conv27
  br i1 %cmp28, label %if.then, label %for.inc30

if.then:                                          ; preds = %for.body19
  %19 = load i32, ptr %x, align 4, !tbaa !5
  %inc29 = add nsw i32 %19, 1
  store i32 %inc29, ptr %x, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body19, %if.then
  %20 = load i32, ptr %m, align 4, !tbaa !5
  %inc31 = add nsw i32 %20, 1
  store i32 %inc31, ptr %m, align 4, !tbaa !5
  br label %for.cond17, !llvm.loop !14

for.end32:                                        ; preds = %for.cond17
  %21 = load i32, ptr %x, align 4, !tbaa !5
  %cmp33 = icmp eq i32 %21, 0
  br i1 %cmp33, label %if.then34, label %for.inc41

if.then34:                                        ; preds = %for.end32
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom35 = sext i32 %22 to i64
  %arrayidx36 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom35
  %arrayidx37 = getelementptr inbounds [6 x i8], ptr %arrayidx36, i64 0, i64 4
  %23 = load i8, ptr %arrayidx37, align 2, !tbaa !9, !invariant.load !10
  %inc38 = add i8 %23, 1
  store i8 %inc38, ptr %arrayidx37, align 2, !tbaa !9
  %24 = load i32, ptr %y, align 4, !tbaa !5
  %inc39 = add nsw i32 %24, 1
  store i32 %inc39, ptr %y, align 4, !tbaa !5
  br label %for.inc41

for.inc41:                                        ; preds = %for.end32, %if.then34
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %inc42 = add nsw i32 %25, 1
  store i32 %inc42, ptr %j, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !15

for.end43:                                        ; preds = %for.cond14
  %26 = load i32, ptr %y, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %26, 0
  br i1 %cmp44, label %if.then45, label %for.inc68

if.then45:                                        ; preds = %for.end43
  store i32 0, ptr %m, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc56, %if.then45
  %27 = load i32, ptr %m, align 4, !tbaa !5
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %cmp47 = icmp slt i32 %27, %28
  br i1 %cmp47, label %for.inc56, label %for.end58

for.inc56:                                        ; preds = %for.cond46
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %30 = load i32, ptr %m, align 4, !tbaa !5
  %add49 = add nsw i32 %29, %30
  %idxprom50 = sext i32 %add49 to i64
  %arrayidx51 = getelementptr inbounds [500 x i8], ptr %a, i64 0, i64 %idxprom50
  %31 = load i8, ptr %arrayidx51, align 1, !tbaa !9, !invariant.load !10
  %32 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom52 = sext i32 %32 to i64
  %arrayidx53 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom52
  %33 = load i32, ptr %m, align 4, !tbaa !5
  %idxprom54 = sext i32 %33 to i64
  %arrayidx55 = getelementptr inbounds [6 x i8], ptr %arrayidx53, i64 0, i64 %idxprom54
  store i8 %31, ptr %arrayidx55, align 1, !tbaa !9
  %34 = load i32, ptr %m, align 4, !tbaa !5
  %inc57 = add nsw i32 %34, 1
  store i32 %inc57, ptr %m, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !16

for.end58:                                        ; preds = %for.cond46
  %35 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom59 = sext i32 %35 to i64
  %arrayidx60 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom59
  %arrayidx61 = getelementptr inbounds [6 x i8], ptr %arrayidx60, i64 0, i64 4
  store i8 1, ptr %arrayidx61, align 2, !tbaa !9
  %36 = load i32, ptr %l, align 4, !tbaa !5
  %conv62 = trunc i32 %36 to i8
  %37 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom63 = sext i32 %37 to i64
  %arrayidx64 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom63
  %arrayidx65 = getelementptr inbounds [6 x i8], ptr %arrayidx64, i64 0, i64 5
  store i8 %conv62, ptr %arrayidx65, align 1, !tbaa !9
  %38 = load i32, ptr %l, align 4, !tbaa !5
  %inc66 = add nsw i32 %38, 1
  store i32 %inc66, ptr %l, align 4, !tbaa !5
  br label %for.inc68

for.inc68:                                        ; preds = %for.end43, %for.end58
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %inc69 = add nsw i32 %39, 1
  store i32 %inc69, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !17

for.end70:                                        ; preds = %for.cond11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc121, %for.end70
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %41 = load i32, ptr %l, align 4, !tbaa !5
  %sub72 = sub nsw i32 %41, 1
  %cmp73 = icmp slt i32 %40, %sub72
  br i1 %cmp73, label %for.body74, label %for.end123

for.body74:                                       ; preds = %for.cond71
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %add75 = add nsw i32 %42, 1
  store i32 %add75, ptr %j, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc118, %for.body74
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %44 = load i32, ptr %l, align 4, !tbaa !5
  %cmp77 = icmp slt i32 %43, %44
  br i1 %cmp77, label %for.body78, label %for.inc121

for.body78:                                       ; preds = %for.cond76
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom79 = sext i32 %45 to i64
  %arrayidx80 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom79
  %arrayidx81 = getelementptr inbounds [6 x i8], ptr %arrayidx80, i64 0, i64 4
  %46 = load i8, ptr %arrayidx81, align 2, !tbaa !9
  %conv82 = sext i8 %46 to i32
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom83 = sext i32 %47 to i64
  %arrayidx84 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom83
  %arrayidx85 = getelementptr inbounds [6 x i8], ptr %arrayidx84, i64 0, i64 4
  %48 = load i8, ptr %arrayidx85, align 2, !tbaa !9
  %conv86 = sext i8 %48 to i32
  %cmp87 = icmp sgt i32 %conv82, %conv86
  br i1 %cmp87, label %if.then88, label %for.inc118

if.then88:                                        ; preds = %for.body78
  store i32 0, ptr %z, align 4, !tbaa !5
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc114, %if.then88
  %49 = phi i32 [ %inc115, %for.inc114 ], [ 0, %if.then88 ]
  %cmp90 = icmp slt i32 %49, 6
  br i1 %cmp90, label %for.inc114, label %for.inc118

for.inc114:                                       ; preds = %for.cond89
  %50 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom92 = sext i32 %50 to i64
  %arrayidx93 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom92
  %51 = load i32, ptr %z, align 4, !tbaa !5
  %idxprom94 = sext i32 %51 to i64
  %arrayidx95 = getelementptr inbounds [6 x i8], ptr %arrayidx93, i64 0, i64 %idxprom94
  %52 = load i8, ptr %arrayidx95, align 1, !tbaa !9
  %arrayidx96 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 500
  %53 = load i32, ptr %z, align 4, !tbaa !5
  %idxprom97 = sext i32 %53 to i64
  %arrayidx98 = getelementptr inbounds [6 x i8], ptr %arrayidx96, i64 0, i64 %idxprom97
  store i8 %52, ptr %arrayidx98, align 1, !tbaa !9
  %54 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom99 = sext i32 %54 to i64
  %arrayidx100 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom99
  %55 = load i32, ptr %z, align 4, !tbaa !5
  %idxprom101 = sext i32 %55 to i64
  %arrayidx102 = getelementptr inbounds [6 x i8], ptr %arrayidx100, i64 0, i64 %idxprom101
  %56 = load i8, ptr %arrayidx102, align 1, !tbaa !9
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom103 = sext i32 %57 to i64
  %arrayidx104 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom103
  %58 = load i32, ptr %z, align 4, !tbaa !5
  %idxprom105 = sext i32 %58 to i64
  %arrayidx106 = getelementptr inbounds [6 x i8], ptr %arrayidx104, i64 0, i64 %idxprom105
  store i8 %56, ptr %arrayidx106, align 1, !tbaa !9
  %arrayidx107 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 500
  %59 = load i32, ptr %z, align 4, !tbaa !5
  %idxprom108 = sext i32 %59 to i64
  %arrayidx109 = getelementptr inbounds [6 x i8], ptr %arrayidx107, i64 0, i64 %idxprom108
  %60 = load i8, ptr %arrayidx109, align 1, !tbaa !9
  %61 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom110 = sext i32 %61 to i64
  %arrayidx111 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom110
  %62 = load i32, ptr %z, align 4, !tbaa !5
  %idxprom112 = sext i32 %62 to i64
  %arrayidx113 = getelementptr inbounds [6 x i8], ptr %arrayidx111, i64 0, i64 %idxprom112
  store i8 %60, ptr %arrayidx113, align 1, !tbaa !9
  %63 = load i32, ptr %z, align 4, !tbaa !5
  %inc115 = add nsw i32 %63, 1
  store i32 %inc115, ptr %z, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !18

for.inc118:                                       ; preds = %for.body78, %for.cond89
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %inc119 = add nsw i32 %64, 1
  store i32 %inc119, ptr %j, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !19

for.inc121:                                       ; preds = %for.cond76
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %inc122 = add nsw i32 %65, 1
  store i32 %inc122, ptr %i, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !20

for.end123:                                       ; preds = %for.cond71
  %arrayidx125 = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 4
  %66 = load i8, ptr %arrayidx125, align 4, !tbaa !9
  %conv126 = sext i8 %66 to i32
  %cmp127 = icmp eq i32 %conv126, 1
  br i1 %cmp127, label %if.then128, label %if.else

if.then128:                                       ; preds = %for.end123
  %call129 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end226

if.else:                                          ; preds = %for.end123
  %arrayidx131 = getelementptr inbounds [6 x i8], ptr %b, i64 0, i64 4
  %67 = load i8, ptr %arrayidx131, align 4, !tbaa !9
  %conv132 = sext i8 %67 to i32
  %call133 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %conv132)
  store i32 1, ptr %z, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond134

for.cond134:                                      ; preds = %for.inc151, %if.else
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %69 = load i32, ptr %l, align 4, !tbaa !5
  %cmp135 = icmp slt i32 %68, %69
  br i1 %cmp135, label %for.body136, label %for.end153

for.body136:                                      ; preds = %for.cond134
  %70 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom137 = sext i32 %70 to i64
  %arrayidx138 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom137
  %arrayidx139 = getelementptr inbounds [6 x i8], ptr %arrayidx138, i64 0, i64 4
  %71 = load i8, ptr %arrayidx139, align 2, !tbaa !9
  %conv140 = sext i8 %71 to i32
  %72 = load i32, ptr %i, align 4, !tbaa !5
  %sub141 = sub nsw i32 %72, 1
  %idxprom142 = sext i32 %sub141 to i64
  %arrayidx143 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom142
  %arrayidx144 = getelementptr inbounds [6 x i8], ptr %arrayidx143, i64 0, i64 4
  %73 = load i8, ptr %arrayidx144, align 2, !tbaa !9
  %conv145 = sext i8 %73 to i32
  %cmp146 = icmp eq i32 %conv140, %conv145
  br i1 %cmp146, label %for.inc151, label %for.end153

for.inc151:                                       ; preds = %for.body136
  %74 = load i32, ptr %z, align 4, !tbaa !5
  %inc148 = add nsw i32 %74, 1
  store i32 %inc148, ptr %z, align 4, !tbaa !5
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %inc152 = add nsw i32 %75, 1
  store i32 %inc152, ptr %i, align 4, !tbaa !5
  br label %for.cond134, !llvm.loop !21

for.end153:                                       ; preds = %for.body136, %for.cond134
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond154

for.cond154:                                      ; preds = %for.inc204, %for.end153
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %77 = load i32, ptr %z, align 4, !tbaa !5
  %sub155 = sub nsw i32 %77, 1
  %cmp156 = icmp slt i32 %76, %sub155
  br i1 %cmp156, label %for.body157, label %for.end206

for.body157:                                      ; preds = %for.cond154
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %add158 = add nsw i32 %78, 1
  store i32 %add158, ptr %j, align 4, !tbaa !5
  br label %for.cond159

for.cond159:                                      ; preds = %for.inc201, %for.body157
  %79 = load i32, ptr %j, align 4, !tbaa !5
  %80 = load i32, ptr %z, align 4, !tbaa !5
  %cmp160 = icmp slt i32 %79, %80
  br i1 %cmp160, label %for.body161, label %for.inc204

for.body161:                                      ; preds = %for.cond159
  %81 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom162 = sext i32 %81 to i64
  %arrayidx163 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom162
  %arrayidx164 = getelementptr inbounds [6 x i8], ptr %arrayidx163, i64 0, i64 5
  %82 = load i8, ptr %arrayidx164, align 1, !tbaa !9
  %conv165 = sext i8 %82 to i32
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom166 = sext i32 %83 to i64
  %arrayidx167 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom166
  %arrayidx168 = getelementptr inbounds [6 x i8], ptr %arrayidx167, i64 0, i64 5
  %84 = load i8, ptr %arrayidx168, align 1, !tbaa !9
  %conv169 = sext i8 %84 to i32
  %cmp170 = icmp slt i32 %conv165, %conv169
  br i1 %cmp170, label %if.then171, label %for.inc201

if.then171:                                       ; preds = %for.body161
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond172

for.cond172:                                      ; preds = %for.inc197, %if.then171
  %85 = phi i32 [ %inc198, %for.inc197 ], [ 0, %if.then171 ]
  %cmp173 = icmp slt i32 %85, 6
  br i1 %cmp173, label %for.inc197, label %for.inc201

for.inc197:                                       ; preds = %for.cond172
  %86 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom175 = sext i32 %86 to i64
  %arrayidx176 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom175
  %87 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom177 = sext i32 %87 to i64
  %arrayidx178 = getelementptr inbounds [6 x i8], ptr %arrayidx176, i64 0, i64 %idxprom177
  %88 = load i8, ptr %arrayidx178, align 1, !tbaa !9
  %arrayidx179 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 500
  %89 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom180 = sext i32 %89 to i64
  %arrayidx181 = getelementptr inbounds [6 x i8], ptr %arrayidx179, i64 0, i64 %idxprom180
  store i8 %88, ptr %arrayidx181, align 1, !tbaa !9
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom182 = sext i32 %90 to i64
  %arrayidx183 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom182
  %91 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom184 = sext i32 %91 to i64
  %arrayidx185 = getelementptr inbounds [6 x i8], ptr %arrayidx183, i64 0, i64 %idxprom184
  %92 = load i8, ptr %arrayidx185, align 1, !tbaa !9
  %93 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom186 = sext i32 %93 to i64
  %arrayidx187 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom186
  %94 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom188 = sext i32 %94 to i64
  %arrayidx189 = getelementptr inbounds [6 x i8], ptr %arrayidx187, i64 0, i64 %idxprom188
  store i8 %92, ptr %arrayidx189, align 1, !tbaa !9
  %arrayidx190 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 500
  %95 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom191 = sext i32 %95 to i64
  %arrayidx192 = getelementptr inbounds [6 x i8], ptr %arrayidx190, i64 0, i64 %idxprom191
  %96 = load i8, ptr %arrayidx192, align 1, !tbaa !9
  %97 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom193 = sext i32 %97 to i64
  %arrayidx194 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom193
  %98 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom195 = sext i32 %98 to i64
  %arrayidx196 = getelementptr inbounds [6 x i8], ptr %arrayidx194, i64 0, i64 %idxprom195
  store i8 %96, ptr %arrayidx196, align 1, !tbaa !9
  %99 = load i32, ptr %k, align 4, !tbaa !5
  %inc198 = add nsw i32 %99, 1
  store i32 %inc198, ptr %k, align 4, !tbaa !5
  br label %for.cond172, !llvm.loop !22

for.inc201:                                       ; preds = %for.body161, %for.cond172
  %100 = load i32, ptr %j, align 4, !tbaa !5
  %inc202 = add nsw i32 %100, 1
  store i32 %inc202, ptr %j, align 4, !tbaa !5
  br label %for.cond159, !llvm.loop !23

for.inc204:                                       ; preds = %for.cond159
  %101 = load i32, ptr %i, align 4, !tbaa !5
  %inc205 = add nsw i32 %101, 1
  store i32 %inc205, ptr %i, align 4, !tbaa !5
  br label %for.cond154, !llvm.loop !24

for.end206:                                       ; preds = %for.cond154
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond207

for.cond207:                                      ; preds = %for.inc223, %for.end206
  %102 = load i32, ptr %i, align 4, !tbaa !5
  %103 = load i32, ptr %z, align 4, !tbaa !5
  %cmp208 = icmp slt i32 %102, %103
  br i1 %cmp208, label %for.body209, label %if.end226

for.body209:                                      ; preds = %for.cond207
  %call210 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond211

for.cond211:                                      ; preds = %for.inc220, %for.body209
  %104 = load i32, ptr %j, align 4, !tbaa !5
  %105 = load i32, ptr %n, align 4, !tbaa !5
  %cmp212 = icmp slt i32 %104, %105
  br i1 %cmp212, label %for.inc220, label %for.inc223

for.inc220:                                       ; preds = %for.cond211
  %106 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom214 = sext i32 %106 to i64
  %arrayidx215 = getelementptr inbounds [501 x [6 x i8]], ptr %b, i64 0, i64 %idxprom214
  %107 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom216 = sext i32 %107 to i64
  %arrayidx217 = getelementptr inbounds [6 x i8], ptr %arrayidx215, i64 0, i64 %idxprom216
  %108 = load i8, ptr %arrayidx217, align 1, !tbaa !9
  %conv218 = sext i8 %108 to i32
  %call219 = call i32 (ptr, ...) @printf(ptr noundef @.str.4, i32 noundef %conv218)
  %109 = load i32, ptr %j, align 4, !tbaa !5
  %inc221 = add nsw i32 %109, 1
  store i32 %inc221, ptr %j, align 4, !tbaa !5
  br label %for.cond211, !llvm.loop !25

for.inc223:                                       ; preds = %for.cond211
  %110 = load i32, ptr %i, align 4, !tbaa !5
  %inc224 = add nsw i32 %110, 1
  store i32 %inc224, ptr %i, align 4, !tbaa !5
  br label %for.cond207, !llvm.loop !26

if.end226:                                        ; preds = %for.cond207, %if.then128
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %z) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #8
  call void @llvm.lifetime.end.p0(i64 noundef 3006, ptr noundef %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 500, ptr noundef %a) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13}
!20 = distinct !{!20, !12, !13}
!21 = distinct !{!21, !12, !13}
!22 = distinct !{!22, !12, !13}
!23 = distinct !{!23, !12, !13}
!24 = distinct !{!24, !12, !13}
!25 = distinct !{!25, !12, !13}
!26 = distinct !{!26, !12, !13}
