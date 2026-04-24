; ModuleID = '/tmp/tmpvm425bdv.cpp'
source_filename = "/tmp/tmpvm425bdv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [500 x i8], align 16
  %c = alloca [500 x i8], align 16
  %p = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %o = alloca i32, align 4
  %y = alloca [1005 x i32], align 16
  %a = alloca [1005 x i32], align 16
  %b = alloca [10005 x i32], align 16
  %e = alloca i32, align 4
  %h = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 500, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %o) #3
  call void @llvm.lifetime.start.p0(i64 4020, ptr %y) #3
  call void @llvm.lifetime.start.p0(i64 4020, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 40020, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  store i32 0, ptr %e, align 4, !tbaa !5
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #3
  store i32 0, ptr %h, align 4, !tbaa !5
  %arraydecay = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 0
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arraydecay)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv = sext i8 %1 to i32
  %cmp = icmp ne i32 %conv, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %2, ptr %n, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %4, 1003
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [10005 x i32], ptr %b, i64 0, i64 %idxprom4
  store i32 0, ptr %arrayidx5, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [1005 x i32], ptr %a, i64 0, i64 %idxprom6
  store i32 0, ptr %arrayidx7, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom8 = sext i32 %7 to i64
  %arrayidx9 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom8
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc10

for.inc10:                                        ; preds = %for.body3
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %8, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !13

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc86, %for.end12
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %9 to i64
  %arrayidx15 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom14
  %10 = load i8, ptr %arrayidx15, align 1, !tbaa !9
  %conv16 = sext i8 %10 to i32
  %cmp17 = icmp ne i32 %conv16, 0
  br i1 %cmp17, label %for.body18, label %for.end88

for.body18:                                       ; preds = %for.cond13
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %11 to i64
  %arrayidx20 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom19
  %12 = load i8, ptr %arrayidx20, align 1, !tbaa !9
  %conv21 = sext i8 %12 to i32
  %cmp22 = icmp sge i32 %conv21, 65
  br i1 %cmp22, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %for.body18
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom23
  %14 = load i8, ptr %arrayidx24, align 1, !tbaa !9
  %conv25 = sext i8 %14 to i32
  %cmp26 = icmp sle i32 %conv25, 90
  br i1 %cmp26, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %for.body18
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %15 to i64
  %arrayidx28 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom27
  %16 = load i8, ptr %arrayidx28, align 1, !tbaa !9
  %conv29 = sext i8 %16 to i32
  %cmp30 = icmp sge i32 %conv29, 97
  br i1 %cmp30, label %land.lhs.true31, label %if.end85

land.lhs.true31:                                  ; preds = %lor.lhs.false
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom32 = sext i32 %17 to i64
  %arrayidx33 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom32
  %18 = load i8, ptr %arrayidx33, align 1, !tbaa !9
  %conv34 = sext i8 %18 to i32
  %cmp35 = icmp sle i32 %conv34, 122
  br i1 %cmp35, label %if.then, label %if.end85

if.then:                                          ; preds = %land.lhs.true31, %land.lhs.true
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %19 to i64
  %arrayidx37 = getelementptr inbounds [1005 x i32], ptr %a, i64 0, i64 %idxprom36
  %20 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %inc38 = add nsw i32 %20, 1
  store i32 %inc38, ptr %arrayidx37, align 4, !tbaa !5
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond39

for.cond39:                                       ; preds = %for.inc55, %if.then
  %21 = load i32, ptr %l, align 4, !tbaa !5
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %cmp40 = icmp sle i32 %21, %22
  br i1 %cmp40, label %for.body41, label %for.end57

for.body41:                                       ; preds = %for.cond39
  %23 = load i32, ptr %l, align 4, !tbaa !5
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %23, %24
  br i1 %cmp42, label %land.lhs.true43, label %if.end

land.lhs.true43:                                  ; preds = %for.body41
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %25 to i64
  %arrayidx45 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom44
  %26 = load i8, ptr %arrayidx45, align 1, !tbaa !9
  %conv46 = sext i8 %26 to i32
  %27 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom47 = sext i32 %27 to i64
  %arrayidx48 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom47
  %28 = load i8, ptr %arrayidx48, align 1, !tbaa !9
  %conv49 = sext i8 %28 to i32
  %cmp50 = icmp eq i32 %conv46, %conv49
  br i1 %cmp50, label %if.then51, label %if.end

if.then51:                                        ; preds = %land.lhs.true43
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom52 = sext i32 %29 to i64
  %arrayidx53 = getelementptr inbounds [10005 x i32], ptr %b, i64 0, i64 %idxprom52
  %30 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %inc54 = add nsw i32 %30, 1
  store i32 %inc54, ptr %arrayidx53, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then51, %land.lhs.true43, %for.body41
  br label %for.inc55

for.inc55:                                        ; preds = %if.end
  %31 = load i32, ptr %l, align 4, !tbaa !5
  %inc56 = add nsw i32 %31, 1
  store i32 %inc56, ptr %l, align 4, !tbaa !5
  br label %for.cond39, !llvm.loop !14

for.end57:                                        ; preds = %for.cond39
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %32 to i64
  %arrayidx59 = getelementptr inbounds [10005 x i32], ptr %b, i64 0, i64 %idxprom58
  %33 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %cmp60 = icmp sgt i32 %33, 0
  br i1 %cmp60, label %if.then61, label %if.else

if.then61:                                        ; preds = %for.end57
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %34 to i64
  %arrayidx63 = getelementptr inbounds [1005 x i32], ptr %a, i64 0, i64 %idxprom62
  %35 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %dec = add nsw i32 %35, -1
  store i32 %dec, ptr %arrayidx63, align 4, !tbaa !5
  br label %if.end84

if.else:                                          ; preds = %for.end57
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc81, %if.else
  %36 = load i32, ptr %l, align 4, !tbaa !5
  %37 = load i32, ptr %n, align 4, !tbaa !5
  %cmp65 = icmp sle i32 %36, %37
  br i1 %cmp65, label %for.body66, label %for.end83

for.body66:                                       ; preds = %for.cond64
  %38 = load i32, ptr %l, align 4, !tbaa !5
  %39 = load i32, ptr %i, align 4, !tbaa !5
  %cmp67 = icmp sgt i32 %38, %39
  br i1 %cmp67, label %land.lhs.true68, label %if.end80

land.lhs.true68:                                  ; preds = %for.body66
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom69 = sext i32 %40 to i64
  %arrayidx70 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom69
  %41 = load i8, ptr %arrayidx70, align 1, !tbaa !9
  %conv71 = sext i8 %41 to i32
  %42 = load i32, ptr %l, align 4, !tbaa !5
  %idxprom72 = sext i32 %42 to i64
  %arrayidx73 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom72
  %43 = load i8, ptr %arrayidx73, align 1, !tbaa !9
  %conv74 = sext i8 %43 to i32
  %cmp75 = icmp eq i32 %conv71, %conv74
  br i1 %cmp75, label %if.then76, label %if.end80

if.then76:                                        ; preds = %land.lhs.true68
  %44 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom77 = sext i32 %44 to i64
  %arrayidx78 = getelementptr inbounds [1005 x i32], ptr %a, i64 0, i64 %idxprom77
  %45 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %inc79 = add nsw i32 %45, 1
  store i32 %inc79, ptr %arrayidx78, align 4, !tbaa !5
  br label %if.end80

if.end80:                                         ; preds = %if.then76, %land.lhs.true68, %for.body66
  br label %for.inc81

for.inc81:                                        ; preds = %if.end80
  %46 = load i32, ptr %l, align 4, !tbaa !5
  %inc82 = add nsw i32 %46, 1
  store i32 %inc82, ptr %l, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !15

for.end83:                                        ; preds = %for.cond64
  br label %if.end84

if.end84:                                         ; preds = %for.end83, %if.then61
  br label %if.end85

if.end85:                                         ; preds = %if.end84, %land.lhs.true31, %lor.lhs.false
  br label %for.inc86

for.inc86:                                        ; preds = %if.end85
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %inc87 = add nsw i32 %47, 1
  store i32 %inc87, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !16

for.end88:                                        ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond89

for.cond89:                                       ; preds = %for.inc105, %for.end88
  %48 = load i32, ptr %i, align 4, !tbaa !5
  %49 = load i32, ptr %n, align 4, !tbaa !5
  %cmp90 = icmp sle i32 %48, %49
  br i1 %cmp90, label %for.body91, label %for.end107

for.body91:                                       ; preds = %for.cond89
  %50 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom92 = sext i32 %50 to i64
  %arrayidx93 = getelementptr inbounds [1005 x i32], ptr %a, i64 0, i64 %idxprom92
  %51 = load i32, ptr %arrayidx93, align 4, !tbaa !5
  %cmp94 = icmp ne i32 %51, 0
  br i1 %cmp94, label %if.then95, label %if.end104

if.then95:                                        ; preds = %for.body91
  %52 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom96 = sext i32 %52 to i64
  %arrayidx97 = getelementptr inbounds [1005 x i32], ptr %a, i64 0, i64 %idxprom96
  %53 = load i32, ptr %arrayidx97, align 4, !tbaa !5
  %54 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom98 = sext i32 %54 to i64
  %arrayidx99 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom98
  store i32 %53, ptr %arrayidx99, align 4, !tbaa !5
  %55 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom100 = sext i32 %55 to i64
  %arrayidx101 = getelementptr inbounds [500 x i8], ptr %s, i64 0, i64 %idxprom100
  %56 = load i8, ptr %arrayidx101, align 1, !tbaa !9
  %57 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom102 = sext i32 %57 to i64
  %arrayidx103 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom102
  store i8 %56, ptr %arrayidx103, align 1, !tbaa !9
  %58 = load i32, ptr %k, align 4, !tbaa !5
  %add = add nsw i32 %58, 1
  store i32 %add, ptr %k, align 4, !tbaa !5
  br label %if.end104

if.end104:                                        ; preds = %if.then95, %for.body91
  br label %for.inc105

for.inc105:                                       ; preds = %if.end104
  %59 = load i32, ptr %i, align 4, !tbaa !5
  %inc106 = add nsw i32 %59, 1
  store i32 %inc106, ptr %i, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !17

for.end107:                                       ; preds = %for.cond89
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc149, %for.end107
  %60 = load i32, ptr %j, align 4, !tbaa !5
  %61 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %61, 1
  %cmp109 = icmp slt i32 %60, %sub
  br i1 %cmp109, label %for.body110, label %for.end151

for.body110:                                      ; preds = %for.cond108
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond111

for.cond111:                                      ; preds = %for.inc146, %for.body110
  %62 = load i32, ptr %i, align 4, !tbaa !5
  %63 = load i32, ptr %k, align 4, !tbaa !5
  %sub112 = sub nsw i32 %63, 1
  %64 = load i32, ptr %j, align 4, !tbaa !5
  %sub113 = sub nsw i32 %sub112, %64
  %cmp114 = icmp slt i32 %62, %sub113
  br i1 %cmp114, label %for.body115, label %for.end148

for.body115:                                      ; preds = %for.cond111
  %65 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom116 = sext i32 %65 to i64
  %arrayidx117 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom116
  %66 = load i8, ptr %arrayidx117, align 1, !tbaa !9
  %conv118 = sext i8 %66 to i32
  %67 = load i32, ptr %i, align 4, !tbaa !5
  %add119 = add nsw i32 %67, 1
  %idxprom120 = sext i32 %add119 to i64
  %arrayidx121 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom120
  %68 = load i8, ptr %arrayidx121, align 1, !tbaa !9
  %conv122 = sext i8 %68 to i32
  %cmp123 = icmp sgt i32 %conv118, %conv122
  br i1 %cmp123, label %if.then124, label %if.end145

if.then124:                                       ; preds = %for.body115
  %69 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom125 = sext i32 %69 to i64
  %arrayidx126 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom125
  %70 = load i32, ptr %arrayidx126, align 4, !tbaa !5
  store i32 %70, ptr %o, align 4, !tbaa !5
  %71 = load i32, ptr %i, align 4, !tbaa !5
  %add127 = add nsw i32 %71, 1
  %idxprom128 = sext i32 %add127 to i64
  %arrayidx129 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom128
  %72 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %73 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom130 = sext i32 %73 to i64
  %arrayidx131 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom130
  store i32 %72, ptr %arrayidx131, align 4, !tbaa !5
  %74 = load i32, ptr %o, align 4, !tbaa !5
  %75 = load i32, ptr %i, align 4, !tbaa !5
  %add132 = add nsw i32 %75, 1
  %idxprom133 = sext i32 %add132 to i64
  %arrayidx134 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom133
  store i32 %74, ptr %arrayidx134, align 4, !tbaa !5
  %76 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom135 = sext i32 %76 to i64
  %arrayidx136 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom135
  %77 = load i8, ptr %arrayidx136, align 1, !tbaa !9
  store i8 %77, ptr %p, align 1, !tbaa !9
  %78 = load i32, ptr %i, align 4, !tbaa !5
  %add137 = add nsw i32 %78, 1
  %idxprom138 = sext i32 %add137 to i64
  %arrayidx139 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom138
  %79 = load i8, ptr %arrayidx139, align 1, !tbaa !9
  %80 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom140 = sext i32 %80 to i64
  %arrayidx141 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom140
  store i8 %79, ptr %arrayidx141, align 1, !tbaa !9
  %81 = load i8, ptr %p, align 1, !tbaa !9
  %82 = load i32, ptr %i, align 4, !tbaa !5
  %add142 = add nsw i32 %82, 1
  %idxprom143 = sext i32 %add142 to i64
  %arrayidx144 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom143
  store i8 %81, ptr %arrayidx144, align 1, !tbaa !9
  br label %if.end145

if.end145:                                        ; preds = %if.then124, %for.body115
  br label %for.inc146

for.inc146:                                       ; preds = %if.end145
  %83 = load i32, ptr %i, align 4, !tbaa !5
  %inc147 = add nsw i32 %83, 1
  store i32 %inc147, ptr %i, align 4, !tbaa !5
  br label %for.cond111, !llvm.loop !18

for.end148:                                       ; preds = %for.cond111
  br label %for.inc149

for.inc149:                                       ; preds = %for.end148
  %84 = load i32, ptr %j, align 4, !tbaa !5
  %inc150 = add nsw i32 %84, 1
  store i32 %inc150, ptr %j, align 4, !tbaa !5
  br label %for.cond108, !llvm.loop !19

for.end151:                                       ; preds = %for.cond108
  %85 = load i32, ptr %k, align 4, !tbaa !5
  %cmp152 = icmp eq i32 %85, 0
  br i1 %cmp152, label %if.then153, label %if.end155

if.then153:                                       ; preds = %for.end151
  %call154 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end155

if.end155:                                        ; preds = %if.then153, %for.end151
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond156

for.cond156:                                      ; preds = %for.inc165, %if.end155
  %86 = load i32, ptr %i, align 4, !tbaa !5
  %87 = load i32, ptr %k, align 4, !tbaa !5
  %cmp157 = icmp slt i32 %86, %87
  br i1 %cmp157, label %for.body158, label %for.end167

for.body158:                                      ; preds = %for.cond156
  %88 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom159 = sext i32 %88 to i64
  %arrayidx160 = getelementptr inbounds [500 x i8], ptr %c, i64 0, i64 %idxprom159
  %89 = load i8, ptr %arrayidx160, align 1, !tbaa !9
  %conv161 = sext i8 %89 to i32
  %90 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom162 = sext i32 %90 to i64
  %arrayidx163 = getelementptr inbounds [1005 x i32], ptr %y, i64 0, i64 %idxprom162
  %91 = load i32, ptr %arrayidx163, align 4, !tbaa !5
  %call164 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv161, i32 noundef %91)
  br label %for.inc165

for.inc165:                                       ; preds = %for.body158
  %92 = load i32, ptr %i, align 4, !tbaa !5
  %inc166 = add nsw i32 %92, 1
  store i32 %inc166, ptr %i, align 4, !tbaa !5
  br label %for.cond156, !llvm.loop !20

for.end167:                                       ; preds = %for.cond156
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  call void @llvm.lifetime.end.p0(i64 40020, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4020, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4020, ptr %y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %o) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %l) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 500, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 500, ptr %s) #3
  %93 = load i32, ptr %retval, align 4
  ret i32 %93
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
