; ModuleID = '/tmp/tmp9w25ksfz.cpp'
source_filename = "/tmp/tmp9w25ksfz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3runi(i32 noundef %x) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !5
  %0 = load i32, ptr %x.addr, align 4, !tbaa !5
  %rem = srem i32 %0, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %x.addr, align 4, !tbaa !5
  %rem1 = srem i32 %1, 4
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, ptr %x.addr, align 4, !tbaa !5
  %rem3 = srem i32 %2, 100
  %cmp4 = icmp ne i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 1, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  %day = alloca i32, align 4
  %year = alloca i32, align 4
  %mona = alloca i32, align 4
  %monb = alloca i32, align 4
  %max = alloca i32, align 4
  %min = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %day) #4
  store i32 0, ptr %day, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc58, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end60

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %mona) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %monb) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %min) #4
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %mona, ptr noundef %monb)
  %2 = load i32, ptr %mona, align 4, !tbaa !5
  %3 = load i32, ptr %monb, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %mona, align 4, !tbaa !5
  store i32 %4, ptr %max, align 4, !tbaa !5
  %5 = load i32, ptr %monb, align 4, !tbaa !5
  store i32 %5, ptr %min, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %for.body
  %6 = load i32, ptr %monb, align 4, !tbaa !5
  store i32 %6, ptr %max, align 4, !tbaa !5
  %7 = load i32, ptr %mona, align 4, !tbaa !5
  store i32 %7, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i32, ptr %year, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z3runi(i32 noundef %8)
  %cmp4 = icmp eq i32 %call3, 0
  br i1 %cmp4, label %if.then5, label %if.end24

if.then5:                                         ; preds = %if.end
  %9 = load i32, ptr %min, align 4, !tbaa !5
  store i32 %9, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %if.then5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %max, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %10, %11
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %12, 2
  br i1 %cmp9, label %if.then10, label %if.else11

if.then10:                                        ; preds = %for.body8
  %13 = load i32, ptr %day, align 4, !tbaa !5
  %add = add nsw i32 %13, 29
  store i32 %add, ptr %day, align 4, !tbaa !5
  br label %if.end23

if.else11:                                        ; preds = %for.body8
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %14, 4
  br i1 %cmp12, label %if.then18, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else11
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %15, 6
  br i1 %cmp13, label %if.then18, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %lor.lhs.false
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %16, 9
  br i1 %cmp15, label %if.then18, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %17, 11
  br i1 %cmp17, label %if.then18, label %if.else20

if.then18:                                        ; preds = %lor.lhs.false16, %lor.lhs.false14, %lor.lhs.false, %if.else11
  %18 = load i32, ptr %day, align 4, !tbaa !5
  %add19 = add nsw i32 %18, 30
  store i32 %add19, ptr %day, align 4, !tbaa !5
  br label %if.end22

if.else20:                                        ; preds = %lor.lhs.false16
  %19 = load i32, ptr %day, align 4, !tbaa !5
  %add21 = add nsw i32 %19, 31
  store i32 %add21, ptr %day, align 4, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.else20, %if.then18
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then10
  br label %for.inc

for.inc:                                          ; preds = %if.end23
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %20, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  br label %if.end24

if.end24:                                         ; preds = %for.end, %if.end
  %21 = load i32, ptr %year, align 4, !tbaa !5
  %call25 = call noundef i32 @_Z3runi(i32 noundef %21)
  %cmp26 = icmp eq i32 %call25, 1
  br i1 %cmp26, label %if.then27, label %if.end51

if.then27:                                        ; preds = %if.end24
  %22 = load i32, ptr %min, align 4, !tbaa !5
  store i32 %22, ptr %j, align 4, !tbaa !5
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc48, %if.then27
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %24 = load i32, ptr %max, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %23, %24
  br i1 %cmp29, label %for.body30, label %for.end50

for.body30:                                       ; preds = %for.cond28
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %cmp31 = icmp eq i32 %25, 2
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %for.body30
  %26 = load i32, ptr %day, align 4, !tbaa !5
  %add33 = add nsw i32 %26, 28
  store i32 %add33, ptr %day, align 4, !tbaa !5
  br label %if.end47

if.else34:                                        ; preds = %for.body30
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %cmp35 = icmp eq i32 %27, 4
  br i1 %cmp35, label %if.then42, label %lor.lhs.false36

lor.lhs.false36:                                  ; preds = %if.else34
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %cmp37 = icmp eq i32 %28, 6
  br i1 %cmp37, label %if.then42, label %lor.lhs.false38

lor.lhs.false38:                                  ; preds = %lor.lhs.false36
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %cmp39 = icmp eq i32 %29, 9
  br i1 %cmp39, label %if.then42, label %lor.lhs.false40

lor.lhs.false40:                                  ; preds = %lor.lhs.false38
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %30, 11
  br i1 %cmp41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %lor.lhs.false40, %lor.lhs.false38, %lor.lhs.false36, %if.else34
  %31 = load i32, ptr %day, align 4, !tbaa !5
  %add43 = add nsw i32 %31, 30
  store i32 %add43, ptr %day, align 4, !tbaa !5
  br label %if.end46

if.else44:                                        ; preds = %lor.lhs.false40
  %32 = load i32, ptr %day, align 4, !tbaa !5
  %add45 = add nsw i32 %32, 31
  store i32 %add45, ptr %day, align 4, !tbaa !5
  br label %if.end46

if.end46:                                         ; preds = %if.else44, %if.then42
  br label %if.end47

if.end47:                                         ; preds = %if.end46, %if.then32
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %33 = load i32, ptr %j, align 4, !tbaa !5
  %inc49 = add nsw i32 %33, 1
  store i32 %inc49, ptr %j, align 4, !tbaa !5
  br label %for.cond28, !llvm.loop !12

for.end50:                                        ; preds = %for.cond28
  br label %if.end51

if.end51:                                         ; preds = %for.end50, %if.end24
  %34 = load i32, ptr %day, align 4, !tbaa !5
  %rem = srem i32 %34, 7
  %cmp52 = icmp eq i32 %rem, 0
  br i1 %cmp52, label %if.then53, label %if.else55

if.then53:                                        ; preds = %if.end51
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end57

if.else55:                                        ; preds = %if.end51
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end57

if.end57:                                         ; preds = %if.else55, %if.then53
  store i32 0, ptr %day, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %min) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %monb) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %mona) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #4
  br label %for.inc58

for.inc58:                                        ; preds = %if.end57
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc59 = add nsw i32 %35, 1
  store i32 %inc59, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end60:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %day) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
