; ModuleID = '/tmp/tmpfd2pw882.cpp'
source_filename = "/tmp/tmpfd2pw882.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"\0A%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [501 x i8], align 16
  %b = alloca [501 x [501 x i8]], align 16
  %d = alloca [501 x [501 x i8]], align 16
  %str = alloca [501 x i8], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  %c = alloca [501 x i32], align 16
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %s = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 501, ptr %a) #5
  call void @llvm.lifetime.start.p0(i64 251001, ptr %b) #5
  call void @llvm.lifetime.start.p0(i64 251001, ptr %d) #5
  call void @llvm.lifetime.start.p0(i64 501, ptr %str) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #5
  store i32 0, ptr %p, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #5
  store i32 0, ptr %q, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 2004, ptr %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arraydecay = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arraydecay)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 501
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc23, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %conv = sext i32 %3 to i64
  %arraydecay3 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 0
  %call4 = call i64 @strlen(ptr noundef %arraydecay3) #6
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %conv5 = sext i32 %4 to i64
  %sub = sub i64 %call4, %conv5
  %add = add i64 %sub, 1
  %cmp6 = icmp ult i64 %conv, %add
  br i1 %cmp6, label %for.body7, label %for.end25

for.body7:                                        ; preds = %for.cond2
  %5 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %5, ptr %j, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc19, %for.body7
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %add9 = add nsw i32 %7, %8
  %cmp10 = icmp slt i32 %6, %add9
  br i1 %cmp10, label %for.body11, label %for.end21

for.body11:                                       ; preds = %for.cond8
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %idxprom12
  %10 = load i8, ptr %arrayidx13, align 1, !tbaa !12
  %11 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [501 x [501 x i8]], ptr %b, i64 0, i64 %idxprom14
  %12 = load i32, ptr %q, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [501 x i8], ptr %arrayidx15, i64 0, i64 %idxprom16
  store i8 %10, ptr %arrayidx17, align 1, !tbaa !12
  %13 = load i32, ptr %q, align 4, !tbaa !5
  %inc18 = add nsw i32 %13, 1
  store i32 %inc18, ptr %q, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.body11
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc20 = add nsw i32 %14, 1
  store i32 %inc20, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !13

for.end21:                                        ; preds = %for.cond8
  %15 = load i32, ptr %p, align 4, !tbaa !5
  %inc22 = add nsw i32 %15, 1
  store i32 %inc22, ptr %p, align 4, !tbaa !5
  store i32 0, ptr %q, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.end21
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc24 = add nsw i32 %16, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end25:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc70, %for.end25
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %p, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %17, %18
  br i1 %cmp27, label %for.body28, label %for.end72

for.body28:                                       ; preds = %for.cond26
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %add29 = add nsw i32 %19, 1
  store i32 %add29, ptr %j, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc66, %for.body28
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %21 = load i32, ptr %p, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %20, %21
  br i1 %cmp31, label %for.body32, label %for.end68

for.body32:                                       ; preds = %for.cond30
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %22 to i64
  %arrayidx34 = getelementptr inbounds [501 x [501 x i8]], ptr %b, i64 0, i64 %idxprom33
  %arraydecay35 = getelementptr inbounds [501 x i8], ptr %arrayidx34, i64 0, i64 0
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [501 x [501 x i8]], ptr %b, i64 0, i64 %idxprom36
  %arraydecay38 = getelementptr inbounds [501 x i8], ptr %arrayidx37, i64 0, i64 0
  %call39 = call i32 @strcmp(ptr noundef %arraydecay35, ptr noundef %arraydecay38) #6
  %cmp40 = icmp eq i32 %call39, 0
  br i1 %cmp40, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body32
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %24 to i64
  %arrayidx42 = getelementptr inbounds [501 x [501 x i8]], ptr %b, i64 0, i64 %idxprom41
  %arrayidx43 = getelementptr inbounds [501 x i8], ptr %arrayidx42, i64 0, i64 0
  %25 = load i8, ptr %arrayidx43, align 1, !tbaa !12
  %conv44 = sext i8 %25 to i32
  %cmp45 = icmp ne i32 %conv44, 38
  br i1 %cmp45, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %26 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom46 = sext i32 %26 to i64
  %arrayidx47 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom46
  %27 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %add48 = add nsw i32 %27, 1
  store i32 %add48, ptr %arrayidx47, align 4, !tbaa !5
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond49

for.cond49:                                       ; preds = %for.inc56, %if.then
  %28 = load i32, ptr %s, align 4, !tbaa !5
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %cmp50 = icmp slt i32 %28, %29
  br i1 %cmp50, label %for.body51, label %for.end58

for.body51:                                       ; preds = %for.cond49
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom52 = sext i32 %30 to i64
  %arrayidx53 = getelementptr inbounds [501 x [501 x i8]], ptr %b, i64 0, i64 %idxprom52
  %31 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom54 = sext i32 %31 to i64
  %arrayidx55 = getelementptr inbounds [501 x i8], ptr %arrayidx53, i64 0, i64 %idxprom54
  store i8 38, ptr %arrayidx55, align 1, !tbaa !12
  br label %for.inc56

for.inc56:                                        ; preds = %for.body51
  %32 = load i32, ptr %s, align 4, !tbaa !5
  %inc57 = add nsw i32 %32, 1
  store i32 %inc57, ptr %s, align 4, !tbaa !5
  br label %for.cond49, !llvm.loop !15

for.end58:                                        ; preds = %for.cond49
  %33 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom59 = sext i32 %33 to i64
  %arrayidx60 = getelementptr inbounds [501 x [501 x i8]], ptr %d, i64 0, i64 %idxprom59
  %arraydecay61 = getelementptr inbounds [501 x i8], ptr %arrayidx60, i64 0, i64 0
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %34 to i64
  %arrayidx63 = getelementptr inbounds [501 x [501 x i8]], ptr %b, i64 0, i64 %idxprom62
  %arraydecay64 = getelementptr inbounds [501 x i8], ptr %arrayidx63, i64 0, i64 0
  %call65 = call ptr @strcpy(ptr noundef %arraydecay61, ptr noundef %arraydecay64) #5
  br label %if.end

if.end:                                           ; preds = %for.end58, %land.lhs.true, %for.body32
  br label %for.inc66

for.inc66:                                        ; preds = %if.end
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc67 = add nsw i32 %35, 1
  store i32 %inc67, ptr %j, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !16

for.end68:                                        ; preds = %for.cond30
  %36 = load i32, ptr %k, align 4, !tbaa !5
  %inc69 = add nsw i32 %36, 1
  store i32 %inc69, ptr %k, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %for.end68
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %inc71 = add nsw i32 %37, 1
  store i32 %inc71, ptr %i, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !17

for.end72:                                        ; preds = %for.cond26
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond73

for.cond73:                                       ; preds = %for.inc120, %for.end72
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %39 = load i32, ptr %k, align 4, !tbaa !5
  %cmp74 = icmp slt i32 %38, %39
  br i1 %cmp74, label %for.body75, label %for.end122

for.body75:                                       ; preds = %for.cond73
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond76

for.cond76:                                       ; preds = %for.inc117, %for.body75
  %40 = load i32, ptr %j, align 4, !tbaa !5
  %41 = load i32, ptr %k, align 4, !tbaa !5
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %sub77 = sub nsw i32 %41, %42
  %cmp78 = icmp slt i32 %40, %sub77
  br i1 %cmp78, label %for.body79, label %for.end119

for.body79:                                       ; preds = %for.cond76
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom80 = sext i32 %43 to i64
  %arrayidx81 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom80
  %44 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %add82 = add nsw i32 %45, 1
  %idxprom83 = sext i32 %add82 to i64
  %arrayidx84 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom83
  %46 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %cmp85 = icmp slt i32 %44, %46
  br i1 %cmp85, label %if.then86, label %if.end116

if.then86:                                        ; preds = %for.body79
  %47 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom87 = sext i32 %47 to i64
  %arrayidx88 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom87
  %48 = load i32, ptr %arrayidx88, align 4, !tbaa !5
  store i32 %48, ptr %l, align 4, !tbaa !5
  %49 = load i32, ptr %j, align 4, !tbaa !5
  %add89 = add nsw i32 %49, 1
  %idxprom90 = sext i32 %add89 to i64
  %arrayidx91 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom90
  %50 = load i32, ptr %arrayidx91, align 4, !tbaa !5
  %51 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom92 = sext i32 %51 to i64
  %arrayidx93 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom92
  store i32 %50, ptr %arrayidx93, align 4, !tbaa !5
  %52 = load i32, ptr %l, align 4, !tbaa !5
  %53 = load i32, ptr %j, align 4, !tbaa !5
  %add94 = add nsw i32 %53, 1
  %idxprom95 = sext i32 %add94 to i64
  %arrayidx96 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom95
  store i32 %52, ptr %arrayidx96, align 4, !tbaa !5
  %arraydecay97 = getelementptr inbounds [501 x i8], ptr %str, i64 0, i64 0
  %54 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom98 = sext i32 %54 to i64
  %arrayidx99 = getelementptr inbounds [501 x [501 x i8]], ptr %d, i64 0, i64 %idxprom98
  %arraydecay100 = getelementptr inbounds [501 x i8], ptr %arrayidx99, i64 0, i64 0
  %call101 = call ptr @strcpy(ptr noundef %arraydecay97, ptr noundef %arraydecay100) #5
  %55 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom102 = sext i32 %55 to i64
  %arrayidx103 = getelementptr inbounds [501 x [501 x i8]], ptr %d, i64 0, i64 %idxprom102
  %arraydecay104 = getelementptr inbounds [501 x i8], ptr %arrayidx103, i64 0, i64 0
  %56 = load i32, ptr %j, align 4, !tbaa !5
  %add105 = add nsw i32 %56, 1
  %idxprom106 = sext i32 %add105 to i64
  %arrayidx107 = getelementptr inbounds [501 x [501 x i8]], ptr %d, i64 0, i64 %idxprom106
  %arraydecay108 = getelementptr inbounds [501 x i8], ptr %arrayidx107, i64 0, i64 0
  %call109 = call ptr @strcpy(ptr noundef %arraydecay104, ptr noundef %arraydecay108) #5
  %57 = load i32, ptr %j, align 4, !tbaa !5
  %add110 = add nsw i32 %57, 1
  %idxprom111 = sext i32 %add110 to i64
  %arrayidx112 = getelementptr inbounds [501 x [501 x i8]], ptr %d, i64 0, i64 %idxprom111
  %arraydecay113 = getelementptr inbounds [501 x i8], ptr %arrayidx112, i64 0, i64 0
  %arraydecay114 = getelementptr inbounds [501 x i8], ptr %str, i64 0, i64 0
  %call115 = call ptr @strcpy(ptr noundef %arraydecay113, ptr noundef %arraydecay114) #5
  br label %if.end116

if.end116:                                        ; preds = %if.then86, %for.body79
  br label %for.inc117

for.inc117:                                       ; preds = %if.end116
  %58 = load i32, ptr %j, align 4, !tbaa !5
  %inc118 = add nsw i32 %58, 1
  store i32 %inc118, ptr %j, align 4, !tbaa !5
  br label %for.cond76, !llvm.loop !18

for.end119:                                       ; preds = %for.cond76
  br label %for.inc120

for.inc120:                                       ; preds = %for.end119
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %inc121 = add nsw i32 %59, 1
  store i32 %inc121, ptr %i, align 4, !tbaa !5
  br label %for.cond73, !llvm.loop !19

for.end122:                                       ; preds = %for.cond73
  %arrayidx123 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 0
  %60 = load i32, ptr %arrayidx123, align 16, !tbaa !5
  %cmp124 = icmp sgt i32 %60, 1
  br i1 %cmp124, label %if.then125, label %if.else144

if.then125:                                       ; preds = %for.end122
  %arrayidx126 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 0
  %61 = load i32, ptr %arrayidx126, align 16, !tbaa !5
  %call127 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %61)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond128

for.cond128:                                      ; preds = %for.inc141, %if.then125
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %63 = load i32, ptr %k, align 4, !tbaa !5
  %cmp129 = icmp slt i32 %62, %63
  br i1 %cmp129, label %for.body130, label %for.end143

for.body130:                                      ; preds = %for.cond128
  %64 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom131 = sext i32 %64 to i64
  %arrayidx132 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 %idxprom131
  %65 = load i32, ptr %arrayidx132, align 4, !tbaa !5
  %arrayidx133 = getelementptr inbounds [501 x i32], ptr %c, i64 0, i64 0
  %66 = load i32, ptr %arrayidx133, align 16, !tbaa !5
  %cmp134 = icmp eq i32 %65, %66
  br i1 %cmp134, label %if.then135, label %if.else

if.then135:                                       ; preds = %for.body130
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom136 = sext i32 %67 to i64
  %arrayidx137 = getelementptr inbounds [501 x [501 x i8]], ptr %d, i64 0, i64 %idxprom136
  %arraydecay138 = getelementptr inbounds [501 x i8], ptr %arrayidx137, i64 0, i64 0
  %call139 = call i32 (ptr, ...) @printf(ptr noundef @.str.3, ptr noundef %arraydecay138)
  br label %if.end140

if.else:                                          ; preds = %for.body130
  br label %for.end143

if.end140:                                        ; preds = %if.then135
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %68 = load i32, ptr %i, align 4, !tbaa !5
  %inc142 = add nsw i32 %68, 1
  store i32 %inc142, ptr %i, align 4, !tbaa !5
  br label %for.cond128, !llvm.loop !20

for.end143:                                       ; preds = %if.else, %for.cond128
  br label %if.end146

if.else144:                                       ; preds = %for.end122
  %call145 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end146

if.end146:                                        ; preds = %if.else144, %for.end143
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  call void @llvm.lifetime.end.p0(i64 2004, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 501, ptr %str) #5
  call void @llvm.lifetime.end.p0(i64 251001, ptr %d) #5
  call void @llvm.lifetime.end.p0(i64 251001, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 501, ptr %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
