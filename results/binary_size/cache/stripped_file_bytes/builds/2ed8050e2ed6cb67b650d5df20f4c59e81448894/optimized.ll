; ModuleID = '/tmp/tmpmwjjrk8r.cpp'
source_filename = "/tmp/tmpmwjjrk8r.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %p = alloca i32, align 4
  %m = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc59, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end61

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %p, align 4, !tbaa !5
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %a, ptr noundef %b, ptr noundef %c)
  %2 = load i32, ptr %b, align 4, !tbaa !5
  %3 = load i32, ptr %c, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %cond.true, label %cond.false

cond.true:                                        ; preds = %for.body
  %4 = load i32, ptr %b, align 4, !tbaa !5
  br label %cond.end

cond.false:                                       ; preds = %for.body
  %5 = load i32, ptr %c, align 4, !tbaa !5
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %5, %cond.false ]
  store i32 %cond, ptr %m, align 4, !tbaa !5
  %6 = load i32, ptr %b, align 4, !tbaa !5
  %7 = load i32, ptr %c, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %6, %7
  br i1 %cmp3, label %cond.true4, label %cond.false5

cond.true4:                                       ; preds = %cond.end
  %8 = load i32, ptr %b, align 4, !tbaa !5
  br label %cond.end6

cond.false5:                                      ; preds = %cond.end
  %9 = load i32, ptr %c, align 4, !tbaa !5
  br label %cond.end6

cond.end6:                                        ; preds = %cond.false5, %cond.true4
  %cond7 = phi i32 [ %8, %cond.true4 ], [ %9, %cond.false5 ]
  store i32 %cond7, ptr %q, align 4, !tbaa !5
  %10 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %10, 4
  %cmp8 = icmp eq i32 %rem, 0
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false

land.lhs.true:                                    ; preds = %cond.end6
  %11 = load i32, ptr %a, align 4, !tbaa !5
  %rem9 = srem i32 %11, 100
  %cmp10 = icmp ne i32 %rem9, 0
  br i1 %cmp10, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true, %cond.end6
  %12 = load i32, ptr %a, align 4, !tbaa !5
  %rem11 = srem i32 %12, 400
  %cmp12 = icmp eq i32 %rem11, 0
  br i1 %cmp12, label %if.then, label %if.end17

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %13 = load i32, ptr %q, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %13, 2
  br i1 %cmp13, label %land.lhs.true14, label %if.end

land.lhs.true14:                                  ; preds = %if.then
  %14 = load i32, ptr %m, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %14, 2
  br i1 %cmp15, label %if.then16, label %if.end

if.then16:                                        ; preds = %land.lhs.true14
  %15 = load i32, ptr %p, align 4, !tbaa !5
  %add = add nsw i32 %15, 1
  store i32 %add, ptr %p, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then16, %land.lhs.true14, %if.then
  br label %if.end17

if.end17:                                         ; preds = %if.end, %lor.lhs.false
  %16 = load i32, ptr %q, align 4, !tbaa !5
  store i32 %16, ptr %j, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc, %if.end17
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %18 = load i32, ptr %m, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %17, %18
  br i1 %cmp19, label %for.body20, label %for.end

for.body20:                                       ; preds = %for.cond18
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %19, 1
  br i1 %cmp21, label %if.then32, label %lor.lhs.false22

lor.lhs.false22:                                  ; preds = %for.body20
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %20, 3
  br i1 %cmp23, label %if.then32, label %lor.lhs.false24

lor.lhs.false24:                                  ; preds = %lor.lhs.false22
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %cmp25 = icmp eq i32 %21, 5
  br i1 %cmp25, label %if.then32, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %lor.lhs.false24
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %cmp27 = icmp eq i32 %22, 7
  br i1 %cmp27, label %if.then32, label %lor.lhs.false28

lor.lhs.false28:                                  ; preds = %lor.lhs.false26
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %23, 8
  br i1 %cmp29, label %if.then32, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %lor.lhs.false28
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %24, 10
  br i1 %cmp31, label %if.then32, label %if.end34

if.then32:                                        ; preds = %lor.lhs.false30, %lor.lhs.false28, %lor.lhs.false26, %lor.lhs.false24, %lor.lhs.false22, %for.body20
  %25 = load i32, ptr %p, align 4, !tbaa !5
  %add33 = add nsw i32 %25, 31
  store i32 %add33, ptr %p, align 4, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %lor.lhs.false30
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %26, 2
  br i1 %cmp35, label %if.then36, label %if.end38

if.then36:                                        ; preds = %if.end34
  %27 = load i32, ptr %p, align 4, !tbaa !5
  %add37 = add nsw i32 %27, 28
  store i32 %add37, ptr %p, align 4, !tbaa !5
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end34
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %28, 4
  br i1 %cmp39, label %if.then46, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %if.end38
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %29, 6
  br i1 %cmp41, label %if.then46, label %lor.lhs.false42

lor.lhs.false42:                                  ; preds = %lor.lhs.false40
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %cmp43 = icmp eq i32 %30, 9
  br i1 %cmp43, label %if.then46, label %lor.lhs.false44

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %31, 11
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %lor.lhs.false44, %lor.lhs.false42, %lor.lhs.false40, %if.end38
  %32 = load i32, ptr %p, align 4, !tbaa !5
  %add47 = add nsw i32 %32, 30
  store i32 %add47, ptr %p, align 4, !tbaa !5
  br label %if.end48

if.end48:                                         ; preds = %if.then46, %lor.lhs.false44
  br label %for.inc

for.inc:                                          ; preds = %if.end48
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %33, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !9

for.end:                                          ; preds = %for.cond18
  %34 = load i32, ptr %p, align 4, !tbaa !5
  %rem49 = srem i32 %34, 7
  %cmp50 = icmp eq i32 %rem49, 0
  br i1 %cmp50, label %if.then51, label %if.end53

if.then51:                                        ; preds = %for.end
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end53

if.end53:                                         ; preds = %if.then51, %for.end
  %35 = load i32, ptr %p, align 4, !tbaa !5
  %rem54 = srem i32 %35, 7
  %cmp55 = icmp ne i32 %rem54, 0
  br i1 %cmp55, label %if.then56, label %if.end58

if.then56:                                        ; preds = %if.end53
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.end53
  br label %for.inc59

for.inc59:                                        ; preds = %if.end58
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc60 = add nsw i32 %36, 1
  store i32 %inc60, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end61:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  %37 = load i32, ptr %retval, align 4
  ret i32 %37
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
