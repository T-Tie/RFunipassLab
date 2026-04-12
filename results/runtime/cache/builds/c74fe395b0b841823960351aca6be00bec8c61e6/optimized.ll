; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1wf3izjd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %total = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %total) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc52, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end54

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %m1, ptr noundef %m2)
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 %3, ptr %m1, align 4, !tbaa !5
  store i32 %2, ptr %m2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  store i32 0, ptr %total, align 4, !tbaa !5
  %4 = load i32, ptr %m1, align 4, !tbaa !5
  store i32 %4, ptr %j, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %if.end
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %cmp6 = icmp eq i32 %5, 1
  br i1 %cmp6, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body5
  %cmp7 = icmp eq i32 %5, 3
  br i1 %cmp7, label %if.then18, label %lor.lhs.false8

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %cmp9 = icmp eq i32 %5, 5
  br i1 %cmp9, label %if.then18, label %lor.lhs.false10

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %cmp11 = icmp eq i32 %5, 7
  br i1 %cmp11, label %if.then18, label %lor.lhs.false12

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %cmp13 = icmp eq i32 %5, 8
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false12
  %cmp15 = icmp eq i32 %5, 10
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %cmp17 = icmp eq i32 %5, 12
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false12, %lor.lhs.false10, %lor.lhs.false8, %lor.lhs.false, %for.body5
  %7 = load i32, ptr %total, align 4, !tbaa !5
  %add = add nsw i32 %7, 31
  store i32 %add, ptr %total, align 4, !tbaa !5
  br label %if.end44

if.else:                                          ; preds = %lor.lhs.false16
  %cmp19 = icmp eq i32 %5, 4
  br i1 %cmp19, label %if.then26, label %lor.lhs.false20

lor.lhs.false20:                                  ; preds = %if.else
  %cmp21 = icmp eq i32 %5, 6
  br i1 %cmp21, label %if.then26, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %lor.lhs.false20
  %cmp23 = icmp eq i32 %5, 9
  br i1 %cmp23, label %if.then26, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %cmp25 = icmp eq i32 %5, 11
  br i1 %cmp25, label %if.then26, label %if.else28

if.then26:                                        ; preds = %lor.lhs.false24, %lor.lhs.false22, %lor.lhs.false20, %if.else
  %8 = load i32, ptr %total, align 4, !tbaa !5
  %add27 = add nsw i32 %8, 30
  store i32 %add27, ptr %total, align 4, !tbaa !5
  br label %if.end43

if.else28:                                        ; preds = %lor.lhs.false24
  %cmp29 = icmp eq i32 %5, 2
  br i1 %cmp29, label %if.then30, label %if.end42

if.then30:                                        ; preds = %if.else28
  %9 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %9, 4
  %cmp31 = icmp eq i32 %rem, 0
  br i1 %cmp31, label %land.lhs.true, label %lor.lhs.false34

land.lhs.true:                                    ; preds = %if.then30
  %rem32 = srem i32 %9, 100
  %cmp33 = icmp ne i32 %rem32, 0
  br i1 %cmp33, label %if.then37, label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true, %if.then30
  %rem35 = srem i32 %9, 400
  %cmp36 = icmp eq i32 %rem35, 0
  br i1 %cmp36, label %if.then37, label %if.else39

if.then37:                                        ; preds = %lor.lhs.false34, %land.lhs.true
  %10 = load i32, ptr %total, align 4, !tbaa !5
  %add38 = add nsw i32 %10, 29
  store i32 %add38, ptr %total, align 4, !tbaa !5
  br label %if.end41

if.else39:                                        ; preds = %lor.lhs.false34
  %11 = load i32, ptr %total, align 4, !tbaa !5
  %add40 = add nsw i32 %11, 28
  store i32 %add40, ptr %total, align 4, !tbaa !5
  br label %if.end41

if.end41:                                         ; preds = %if.else39, %if.then37
  br label %if.end42

if.end42:                                         ; preds = %if.end41, %if.else28
  br label %if.end43

if.end43:                                         ; preds = %if.end42, %if.then26
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then18
  br label %for.inc

for.inc:                                          ; preds = %if.end44
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %12 = load i32, ptr %total, align 4, !tbaa !5
  %rem45 = srem i32 %12, 7
  %cmp46 = icmp eq i32 %rem45, 0
  br i1 %cmp46, label %if.then47, label %if.else49

if.then47:                                        ; preds = %for.end
  %call48 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end51

if.else49:                                        ; preds = %for.end
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end51

if.end51:                                         ; preds = %if.else49, %if.then47
  br label %for.inc52

for.inc52:                                        ; preds = %if.end51
  %inc53 = add nsw i32 %0, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end54:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %total) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
