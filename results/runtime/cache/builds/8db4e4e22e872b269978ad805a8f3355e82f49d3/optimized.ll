; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw0obuhph.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %j2 = alloca i8, i32 0, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %year) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %m2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %year, ptr noundef %m1, ptr noundef %m2)
  %2 = load i32, ptr %year, align 4, !tbaa !5
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %call2 = call noundef i32 @_Z8DiJiTianii(i32 noundef %2, i32 noundef %3) #6
  %4 = load i32, ptr %year, align 4, !tbaa !5
  %5 = load i32, ptr %m2, align 4, !tbaa !5
  %call3 = call noundef i32 @_Z8DiJiTianii(i32 noundef %4, i32 noundef %5) #6
  %sub = sub nsw i32 %call2, %call3
  %6 = call i32 @llvm.abs.i32(i32 %sub, i1 noundef true)
  %rem = srem i32 %6, 7
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %call5 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else:                                          ; preds = %for.body
  %call6 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %m1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %year) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(none) uwtable
define dso_local noundef i32 @_Z8DiJiTianii(i32 noundef %year, i32 noundef %month) local_unnamed_addr #3 {
entry:
  %i = alloca i32, align 4
  %result = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %result) #5
  store i32 1, ptr %result, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %month
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %cmp1 = icmp eq i32 %0, 1
  br i1 %cmp1, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %cmp2 = icmp eq i32 %0, 3
  br i1 %cmp2, label %if.then, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp4 = icmp eq i32 %0, 5
  br i1 %cmp4, label %if.then, label %lor.lhs.false5

lor.lhs.false5:                                   ; preds = %lor.lhs.false3
  %cmp6 = icmp eq i32 %0, 7
  br i1 %cmp6, label %if.then, label %lor.lhs.false7

lor.lhs.false7:                                   ; preds = %lor.lhs.false5
  %cmp8 = icmp eq i32 %0, 8
  br i1 %cmp8, label %if.then, label %lor.lhs.false9

lor.lhs.false9:                                   ; preds = %lor.lhs.false7
  %cmp10 = icmp eq i32 %0, 10
  br i1 %cmp10, label %if.then, label %lor.lhs.false11

lor.lhs.false11:                                  ; preds = %lor.lhs.false9
  %cmp12 = icmp eq i32 %0, 12
  br i1 %cmp12, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false11, %lor.lhs.false9, %lor.lhs.false7, %lor.lhs.false5, %lor.lhs.false3, %lor.lhs.false, %for.body
  %1 = load i32, ptr %result, align 4, !tbaa !5
  %add = add nsw i32 %1, 31
  store i32 %add, ptr %result, align 4, !tbaa !5
  br label %if.end37

if.else:                                          ; preds = %lor.lhs.false11
  %cmp13 = icmp eq i32 %0, 4
  br i1 %cmp13, label %if.then20, label %lor.lhs.false14

lor.lhs.false14:                                  ; preds = %if.else
  %cmp15 = icmp eq i32 %0, 6
  br i1 %cmp15, label %if.then20, label %lor.lhs.false16

lor.lhs.false16:                                  ; preds = %lor.lhs.false14
  %cmp17 = icmp eq i32 %0, 9
  br i1 %cmp17, label %if.then20, label %lor.lhs.false18

lor.lhs.false18:                                  ; preds = %lor.lhs.false16
  %cmp19 = icmp eq i32 %0, 11
  br i1 %cmp19, label %if.then20, label %if.else22

if.then20:                                        ; preds = %lor.lhs.false18, %lor.lhs.false16, %lor.lhs.false14, %if.else
  %2 = load i32, ptr %result, align 4, !tbaa !5
  %add21 = add nsw i32 %2, 30
  store i32 %add21, ptr %result, align 4, !tbaa !5
  br label %if.end36

if.else22:                                        ; preds = %lor.lhs.false18
  %cmp23 = icmp eq i32 %0, 2
  br i1 %cmp23, label %if.then24, label %if.end35

if.then24:                                        ; preds = %if.else22
  %rem = srem i32 %year, 400
  %cmp25 = icmp eq i32 %rem, 0
  br i1 %cmp25, label %if.then31, label %lor.lhs.false26

lor.lhs.false26:                                  ; preds = %if.then24
  %rem27 = srem i32 %year, 100
  %cmp28 = icmp ne i32 %rem27, 0
  br i1 %cmp28, label %land.lhs.true, label %if.else33

land.lhs.true:                                    ; preds = %lor.lhs.false26
  %rem29 = srem i32 %year, 4
  %cmp30 = icmp eq i32 %rem29, 0
  br i1 %cmp30, label %if.then31, label %if.else33

if.then31:                                        ; preds = %land.lhs.true, %if.then24
  %3 = load i32, ptr %result, align 4, !tbaa !5
  %add32 = add nsw i32 %3, 29
  store i32 %add32, ptr %result, align 4, !tbaa !5
  br label %if.end

if.else33:                                        ; preds = %land.lhs.true, %lor.lhs.false26
  %4 = load i32, ptr %result, align 4, !tbaa !5
  %add34 = add nsw i32 %4, 28
  store i32 %add34, ptr %result, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else33, %if.then31
  br label %if.end35

if.end35:                                         ; preds = %if.end, %if.else22
  br label %if.end36

if.end36:                                         ; preds = %if.end35, %if.then20
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end37
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %result, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %result) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  ret i32 %5
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind memory(none) }
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
