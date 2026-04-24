; ModuleID = '/tmp/tmpl8gauere.cpp'
source_filename = "/tmp/tmpl8gauere.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@__const.main.month = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.month.2 = private unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str.3 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %leap = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %re = alloca i32, align 4
  %q = alloca i32, align 4
  %tmp = alloca i32, align 4
  %month = alloca [12 x i32], align 16
  %month21 = alloca [12 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %leap) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %re) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc44, %entry
  %0 = load i32, ptr %j, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end46

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %m1, ptr noundef %m2)
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %4, ptr %tmp, align 4, !tbaa !5
  %5 = load i32, ptr %m2, align 4, !tbaa !5
  store i32 %5, ptr %m1, align 4, !tbaa !5
  %6 = load i32, ptr %tmp, align 4, !tbaa !5
  store i32 %6, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %7 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %7, 4
  %cmp3 = icmp eq i32 %rem, 0
  br i1 %cmp3, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.end
  %8 = load i32, ptr %year, align 4, !tbaa !5
  %rem4 = srem i32 %8, 100
  %cmp5 = icmp ne i32 %rem4, 0
  br i1 %cmp5, label %if.then8, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %if.end
  %9 = load i32, ptr %year, align 4, !tbaa !5
  %rem6 = srem i32 %9, 400
  %cmp7 = icmp eq i32 %rem6, 0
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %lor.lhs.false, %land.lhs.true
  store i32 1, ptr %leap, align 4, !tbaa !5
  br label %if.end9

if.else:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %leap, align 4, !tbaa !5
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then8
  store i32 0, ptr %q, align 4, !tbaa !5
  %10 = load i32, ptr %leap, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %10, 1
  br i1 %cmp10, label %if.then11, label %if.else20

if.then11:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 48, ptr %month) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %month, ptr align 16 @__const.main.month, i64 48, i1 false)
  %11 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %11, ptr %k, align 4, !tbaa !5
  br label %for.cond12

for.cond12:                                       ; preds = %for.inc, %if.then11
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %13 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp13 = icmp slt i32 %12, %13
  br i1 %cmp13, label %for.body14, label %for.end

for.body14:                                       ; preds = %for.cond12
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %14, 1
  %idxprom = sext i32 %sub to i64
  %arrayidx = getelementptr inbounds [12 x i32], ptr %month, i64 0, i64 %idxprom
  %15 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %16 = load i32, ptr %q, align 4, !tbaa !5
  %add = add nsw i32 %16, %15
  store i32 %add, ptr %q, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body14
  %17 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %17, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond12, !llvm.loop !9

for.end:                                          ; preds = %for.cond12
  %18 = load i32, ptr %q, align 4, !tbaa !5
  %rem15 = srem i32 %18, 7
  %cmp16 = icmp eq i32 %rem15, 0
  br i1 %cmp16, label %if.then17, label %if.else18

if.then17:                                        ; preds = %for.end
  store i32 1, ptr %re, align 4, !tbaa !5
  br label %if.end19

if.else18:                                        ; preds = %for.end
  store i32 0, ptr %re, align 4, !tbaa !5
  br label %if.end19

if.end19:                                         ; preds = %if.else18, %if.then17
  call void @llvm.lifetime.end.p0(i64 48, ptr %month) #4
  br label %if.end37

if.else20:                                        ; preds = %if.end9
  call void @llvm.lifetime.start.p0(i64 48, ptr %month21) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %month21, ptr align 16 @__const.main.month.2, i64 48, i1 false)
  %19 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %19, ptr %k, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc29, %if.else20
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %21 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %20, %21
  br i1 %cmp23, label %for.body24, label %for.end31

for.body24:                                       ; preds = %for.cond22
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %sub25 = sub nsw i32 %22, 1
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [12 x i32], ptr %month21, i64 0, i64 %idxprom26
  %23 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %24 = load i32, ptr %q, align 4, !tbaa !5
  %add28 = add nsw i32 %24, %23
  store i32 %add28, ptr %q, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body24
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, ptr %k, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !12

for.end31:                                        ; preds = %for.cond22
  %26 = load i32, ptr %q, align 4, !tbaa !5
  %rem32 = srem i32 %26, 7
  %cmp33 = icmp eq i32 %rem32, 0
  br i1 %cmp33, label %if.then34, label %if.else35

if.then34:                                        ; preds = %for.end31
  store i32 1, ptr %re, align 4, !tbaa !5
  br label %if.end36

if.else35:                                        ; preds = %for.end31
  store i32 0, ptr %re, align 4, !tbaa !5
  br label %if.end36

if.end36:                                         ; preds = %if.else35, %if.then34
  call void @llvm.lifetime.end.p0(i64 48, ptr %month21) #4
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.end19
  %27 = load i32, ptr %re, align 4, !tbaa !5
  %cmp38 = icmp eq i32 %27, 1
  br i1 %cmp38, label %if.then39, label %if.else41

if.then39:                                        ; preds = %if.end37
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end43

if.else41:                                        ; preds = %if.end37
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end43

if.end43:                                         ; preds = %if.else41, %if.then39
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %inc45 = add nsw i32 %28, 1
  store i32 %inc45, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end46:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %re) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %m1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %leap) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind }

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
