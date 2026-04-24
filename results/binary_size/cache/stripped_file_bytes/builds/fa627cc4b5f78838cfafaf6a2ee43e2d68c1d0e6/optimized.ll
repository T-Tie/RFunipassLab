; ModuleID = '/tmp/tmpnxt85rxy.cpp'
source_filename = "/tmp/tmpnxt85rxy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z9isRunNiani(i32 noundef %year) #0 {
entry:
  %year.addr = alloca i32, align 4
  %result = alloca i32, align 4
  store i32 %year, ptr %year.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #4
  %0 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem = srem i32 %0, 400
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem1 = srem i32 %1, 4
  %cmp2 = icmp eq i32 %rem1, 0
  br i1 %cmp2, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false
  %2 = load i32, ptr %year.addr, align 4, !tbaa !5
  %rem3 = srem i32 %2, 100
  %cmp4 = icmp ne i32 %rem3, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true, %entry
  store i32 1, ptr %result, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  store i32 0, ptr %result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %result, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #4
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z8DijiTianiii(i32 noundef %year, i32 noundef %month, i32 noundef %day) #0 {
entry:
  %year.addr = alloca i32, align 4
  %month.addr = alloca i32, align 4
  %day.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 %year, ptr %year.addr, align 4, !tbaa !5
  store i32 %month, ptr %month.addr, align 4, !tbaa !5
  store i32 %day, ptr %day.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #4
  store i32 0, ptr %result, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %month.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %2, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %3, 3
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %4, 5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %5, 7
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %6, 8
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %7, 10
  br i1 %cmp10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %8, 12
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %for.body
  %9 = load i32, ptr %result, align 4, !tbaa !5
  %add = add nsw i32 %9, 31
  store i32 %add, ptr %result, align 4, !tbaa !5
  br label %if.end31

if.else:                                          ; preds = %lor.lhs.false11
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %10, 4
  br i1 %cmp13, label %if.then20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.else
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %11, 6
  br i1 %cmp15, label %if.then20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %12, 9
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %13, 11
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %if.else
  %14 = load i32, ptr %result, align 4, !tbaa !5
  %add21 = add nsw i32 %14, 30
  store i32 %add21, ptr %result, align 4, !tbaa !5
  br label %if.end30

if.else22:                                        ; preds = %lor.lhs.false18
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %cmp23 = icmp eq i32 %15, 2
  br i1 %cmp23, label %if.then24, label %if.end29

if.then24:                                        ; preds = %if.else22
  %16 = load i32, ptr %year.addr, align 4, !tbaa !5
  %call = call noundef i32 @_Z9isRunNiani(i32 noundef %16)
  %tobool = icmp ne i32 %call, 0
  br i1 %tobool, label %if.then25, label %if.else27

if.then25:                                        ; preds = %if.then24
  %17 = load i32, ptr %result, align 4, !tbaa !5
  %add26 = add nsw i32 %17, 29
  store i32 %add26, ptr %result, align 4, !tbaa !5
  br label %if.end

if.else27:                                        ; preds = %if.then24
  %18 = load i32, ptr %result, align 4, !tbaa !5
  %add28 = add nsw i32 %18, 28
  store i32 %add28, ptr %result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else27, %if.then25
  br label %if.end29

if.end29:                                         ; preds = %if.end, %if.else22
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then20
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end31
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %19, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  %20 = load i32, ptr %day.addr, align 4, !tbaa !5
  %21 = load i32, ptr %result, align 4, !tbaa !5
  %add32 = add nsw i32 %21, %20
  store i32 %add32, ptr %result, align 4, !tbaa !5
  %22 = load i32, ptr %result, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #4
  ret i32 %22
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z4swapPiS_(ptr noundef %a, ptr noundef %b) #0 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %e = alloca i32, align 4
  store ptr %a, ptr %a.addr, align 8, !tbaa !12
  store ptr %b, ptr %b.addr, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  %0 = load ptr, ptr %a.addr, align 8, !tbaa !12
  %1 = load i32, ptr %0, align 4, !tbaa !5
  store i32 %1, ptr %e, align 4, !tbaa !5
  %2 = load ptr, ptr %b.addr, align 8, !tbaa !12
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = load ptr, ptr %a.addr, align 8, !tbaa !12
  store i32 %3, ptr %4, align 4, !tbaa !5
  %5 = load i32, ptr %e, align 4, !tbaa !5
  %6 = load ptr, ptr %b.addr, align 8, !tbaa !12
  store i32 %5, ptr %6, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %sz = alloca [200 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %year) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %month1) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %month2) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %month1, ptr noundef %month2)
  %2 = load i32, ptr %month1, align 4, !tbaa !5
  %3 = load i32, ptr %month2, align 4, !tbaa !5
  %cmp2 = icmp sgt i32 %2, %3
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  call void @_Z4swapPiS_(ptr noundef %month1, ptr noundef %month2)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %5 = load i32, ptr %month2, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z8DijiTianiii(i32 noundef %4, i32 noundef %5, i32 noundef 1)
  %6 = load i32, ptr %year, align 4, !tbaa !5
  %7 = load i32, ptr %month1, align 4, !tbaa !5
  %call4 = call noundef i32 @_Z8DijiTianiii(i32 noundef %6, i32 noundef %7, i32 noundef 1)
  %sub = sub nsw i32 %call3, %call4
  store i32 %sub, ptr %a, align 4, !tbaa !5
  %8 = load i32, ptr %a, align 4, !tbaa !5
  %rem = srem i32 %8, 7
  %cmp5 = icmp eq i32 %rem, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end9

if.else:                                          ; preds = %if.end
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then6
  br label %for.inc

for.inc:                                          ; preds = %if.end9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 800, ptr %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %month2) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %month1) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %year) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 int", !14, i64 0}
!14 = !{!"any pointer", !7, i64 0}
!15 = distinct !{!15, !10, !11}
