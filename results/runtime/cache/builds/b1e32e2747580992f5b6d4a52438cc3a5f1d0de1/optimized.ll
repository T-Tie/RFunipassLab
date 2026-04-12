; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe_52ltit.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@_ZL1a = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZL1b = internal unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z6is_runi(i32 noundef %x) local_unnamed_addr #0 {
entry:
  %retval = alloca i32, align 4
  %rem = srem i32 %x, 100
  %cmp = icmp ne i32 %rem, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %rem1 = srem i32 %x, 4
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %entry
  %rem3 = srem i32 %x, 400
  %cmp4 = icmp eq i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %0 = load i32, ptr %retval, align 4
  ret i32 %0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %f1 = alloca [13 x [13 x i32]], align 16
  %f2 = alloca [13 x [13 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mon1 = alloca i32, align 4
  %mon2 = alloca i32, align 4
  %sum = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 676, ptr noundef %f1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 676, ptr noundef %f2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %mon1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %mon2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %f1, i8 noundef 0, i64 noundef 676, i1 noundef false) #6
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %f2, i8 noundef 0, i64 noundef 676, i1 noundef false) #6
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc17, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 12
  br i1 %cmp, label %for.body, label %for.end19

for.body:                                         ; preds = %for.cond
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc14, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %1, 12
  br i1 %cmp3, label %for.body4, label %for.end16

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 %0, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp6 = icmp sle i32 %2, %sub
  br i1 %cmp6, label %for.body7, label %for.end

for.body7:                                        ; preds = %for.cond5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [13 x i32], ptr @_ZL1a, i64 0, i64 %idxprom
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %4 = load i32, ptr %sum, align 4, !tbaa !5
  %add8 = add nsw i32 %4, %3
  store i32 %add8, ptr %sum, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body7
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  %5 = load i32, ptr %sum, align 4, !tbaa !5
  %rem = srem i32 %5, 7
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %idxprom10 = sext i32 %0 to i64
  %arrayidx11 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom10
  %idxprom12 = sext i32 %1 to i64
  %arrayidx13 = getelementptr inbounds [13 x i32], ptr %arrayidx11, i64 0, i64 %idxprom12
  store i32 1, ptr %arrayidx13, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end
  br label %for.inc14

for.inc14:                                        ; preds = %if.end
  %inc15 = add nsw i32 %1, 1
  store i32 %inc15, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end16:                                        ; preds = %for.cond2
  br label %for.inc17

for.inc17:                                        ; preds = %for.end16
  store i32 %add, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end19:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc27, %for.end19
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp21 = icmp sle i32 %6, 12
  br i1 %cmp21, label %for.body22, label %for.end29

for.body22:                                       ; preds = %for.cond20
  %idxprom23 = sext i32 %6 to i64
  %arrayidx24 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom23
  %arrayidx26 = getelementptr inbounds [13 x i32], ptr %arrayidx24, i64 0, i64 %idxprom23
  store i32 1, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body22
  %inc28 = add nsw i32 %6, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !14

for.end29:                                        ; preds = %for.cond20
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc48, %for.end29
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp31 = icmp sle i32 %7, 12
  br i1 %cmp31, label %for.body32, label %for.end50

for.body32:                                       ; preds = %for.cond30
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc45, %for.body32
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %sub34 = sub nsw i32 %7, 1
  %cmp35 = icmp sle i32 %8, %sub34
  br i1 %cmp35, label %for.body36, label %for.end47

for.body36:                                       ; preds = %for.cond33
  %idxprom37 = sext i32 %8 to i64
  %arrayidx38 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom37
  %idxprom39 = sext i32 %7 to i64
  %arrayidx40 = getelementptr inbounds [13 x i32], ptr %arrayidx38, i64 0, i64 %idxprom39
  %9 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom39
  %arrayidx44 = getelementptr inbounds [13 x i32], ptr %arrayidx42, i64 0, i64 %idxprom37
  store i32 %9, ptr %arrayidx44, align 4, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %for.body36
  %inc46 = add nsw i32 %8, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end47:                                        ; preds = %for.cond33
  br label %for.inc48

for.inc48:                                        ; preds = %for.end47
  %inc49 = add nsw i32 %7, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !16

for.end50:                                        ; preds = %for.cond30
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc79, %for.end50
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %cmp52 = icmp sle i32 %10, 12
  br i1 %cmp52, label %for.body53, label %for.end81

for.body53:                                       ; preds = %for.cond51
  %add54 = add nsw i32 %10, 1
  store i32 %add54, ptr %j, align 4, !tbaa !5
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc76, %for.body53
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp56 = icmp sle i32 %11, 12
  br i1 %cmp56, label %for.body57, label %for.end78

for.body57:                                       ; preds = %for.cond55
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 %10, ptr %k, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.inc65, %for.body57
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %sub59 = sub nsw i32 %11, 1
  %cmp60 = icmp sle i32 %12, %sub59
  br i1 %cmp60, label %for.body61, label %for.end67

for.body61:                                       ; preds = %for.cond58
  %idxprom62 = sext i32 %12 to i64
  %arrayidx63 = getelementptr inbounds [13 x i32], ptr @_ZL1b, i64 0, i64 %idxprom62
  %13 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %14 = load i32, ptr %sum, align 4, !tbaa !5
  %add64 = add nsw i32 %14, %13
  store i32 %add64, ptr %sum, align 4, !tbaa !5
  br label %for.inc65

for.inc65:                                        ; preds = %for.body61
  %inc66 = add nsw i32 %12, 1
  store i32 %inc66, ptr %k, align 4, !tbaa !5
  br label %for.cond58, !llvm.loop !17

for.end67:                                        ; preds = %for.cond58
  %15 = load i32, ptr %sum, align 4, !tbaa !5
  %rem68 = srem i32 %15, 7
  %cmp69 = icmp eq i32 %rem68, 0
  br i1 %cmp69, label %if.then70, label %if.end75

if.then70:                                        ; preds = %for.end67
  %idxprom71 = sext i32 %10 to i64
  %arrayidx72 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom71
  %idxprom73 = sext i32 %11 to i64
  %arrayidx74 = getelementptr inbounds [13 x i32], ptr %arrayidx72, i64 0, i64 %idxprom73
  store i32 1, ptr %arrayidx74, align 4, !tbaa !5
  br label %if.end75

if.end75:                                         ; preds = %if.then70, %for.end67
  br label %for.inc76

for.inc76:                                        ; preds = %if.end75
  %inc77 = add nsw i32 %11, 1
  store i32 %inc77, ptr %j, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !18

for.end78:                                        ; preds = %for.cond55
  br label %for.inc79

for.inc79:                                        ; preds = %for.end78
  store i32 %add54, ptr %i, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !19

for.end81:                                        ; preds = %for.cond51
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond82

for.cond82:                                       ; preds = %for.inc89, %for.end81
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %cmp83 = icmp sle i32 %16, 12
  br i1 %cmp83, label %for.body84, label %for.end91

for.body84:                                       ; preds = %for.cond82
  %idxprom85 = sext i32 %16 to i64
  %arrayidx86 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom85
  %arrayidx88 = getelementptr inbounds [13 x i32], ptr %arrayidx86, i64 0, i64 %idxprom85
  store i32 1, ptr %arrayidx88, align 4, !tbaa !5
  br label %for.inc89

for.inc89:                                        ; preds = %for.body84
  %inc90 = add nsw i32 %16, 1
  store i32 %inc90, ptr %i, align 4, !tbaa !5
  br label %for.cond82, !llvm.loop !20

for.end91:                                        ; preds = %for.cond82
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc110, %for.end91
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %cmp93 = icmp sle i32 %17, 12
  br i1 %cmp93, label %for.body94, label %for.end112

for.body94:                                       ; preds = %for.cond92
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc107, %for.body94
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %sub96 = sub nsw i32 %17, 1
  %cmp97 = icmp sle i32 %18, %sub96
  br i1 %cmp97, label %for.body98, label %for.end109

for.body98:                                       ; preds = %for.cond95
  %idxprom99 = sext i32 %18 to i64
  %arrayidx100 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom99
  %idxprom101 = sext i32 %17 to i64
  %arrayidx102 = getelementptr inbounds [13 x i32], ptr %arrayidx100, i64 0, i64 %idxprom101
  %19 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom101
  %arrayidx106 = getelementptr inbounds [13 x i32], ptr %arrayidx104, i64 0, i64 %idxprom99
  store i32 %19, ptr %arrayidx106, align 4, !tbaa !5
  br label %for.inc107

for.inc107:                                       ; preds = %for.body98
  %inc108 = add nsw i32 %18, 1
  store i32 %inc108, ptr %j, align 4, !tbaa !5
  br label %for.cond95, !llvm.loop !21

for.end109:                                       ; preds = %for.cond95
  br label %for.inc110

for.inc110:                                       ; preds = %for.end109
  %inc111 = add nsw i32 %17, 1
  store i32 %inc111, ptr %i, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !22

for.end112:                                       ; preds = %for.cond92
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc141, %for.end112
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %cmp114 = icmp sle i32 %20, %21
  br i1 %cmp114, label %for.body115, label %for.end143

for.body115:                                      ; preds = %for.cond113
  %call116 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %mon1, ptr noundef %mon2)
  %22 = load i32, ptr %year, align 4, !tbaa !5
  %call117 = call noundef i32 @_Z6is_runi(i32 noundef %22)
  %cmp118 = icmp eq i32 %call117, 1
  br i1 %cmp118, label %if.then119, label %if.else129

if.then119:                                       ; preds = %for.body115
  %23 = load i32, ptr %mon1, align 4, !tbaa !5
  %idxprom120 = sext i32 %23 to i64
  %arrayidx121 = getelementptr inbounds [13 x [13 x i32]], ptr %f2, i64 0, i64 %idxprom120
  %24 = load i32, ptr %mon2, align 4, !tbaa !5
  %idxprom122 = sext i32 %24 to i64
  %arrayidx123 = getelementptr inbounds [13 x i32], ptr %arrayidx121, i64 0, i64 %idxprom122
  %25 = load i32, ptr %arrayidx123, align 4, !tbaa !5
  %cmp124 = icmp eq i32 %25, 1
  br i1 %cmp124, label %if.then125, label %if.else

if.then125:                                       ; preds = %if.then119
  %call126 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end128

if.else:                                          ; preds = %if.then119
  %call127 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end128

if.end128:                                        ; preds = %if.else, %if.then125
  br label %if.end140

if.else129:                                       ; preds = %for.body115
  %26 = load i32, ptr %mon1, align 4, !tbaa !5
  %idxprom130 = sext i32 %26 to i64
  %arrayidx131 = getelementptr inbounds [13 x [13 x i32]], ptr %f1, i64 0, i64 %idxprom130
  %27 = load i32, ptr %mon2, align 4, !tbaa !5
  %idxprom132 = sext i32 %27 to i64
  %arrayidx133 = getelementptr inbounds [13 x i32], ptr %arrayidx131, i64 0, i64 %idxprom132
  %28 = load i32, ptr %arrayidx133, align 4, !tbaa !5
  %cmp134 = icmp eq i32 %28, 1
  br i1 %cmp134, label %if.then135, label %if.else137

if.then135:                                       ; preds = %if.else129
  %call136 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end139

if.else137:                                       ; preds = %if.else129
  %call138 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.then135
  br label %if.end140

if.end140:                                        ; preds = %if.end139, %if.end128
  br label %for.inc141

for.inc141:                                       ; preds = %if.end140
  %inc142 = add nsw i32 %20, 1
  store i32 %inc142, ptr %i, align 4, !tbaa !5
  br label %for.cond113, !llvm.loop !23

for.end143:                                       ; preds = %for.cond113
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %mon2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %mon1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #7
  call void @llvm.lifetime.end.p0(i64 676, ptr %f2) #7
  call void @llvm.lifetime.end.p0(i64 676, ptr %f1) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
