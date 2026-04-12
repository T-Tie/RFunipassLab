; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3reepu6d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %e = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %e) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 100
  %cmp = icmp sge i32 %sub, 0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %a, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub3 = sub nsw i32 %2, 50
  %cmp4 = icmp sge i32 %sub3, 0
  br i1 %cmp4, label %for.body5, label %for.end9

for.body5:                                        ; preds = %for.cond2
  store i32 %sub3, ptr %n, align 4, !tbaa !5
  br label %for.inc7

for.inc7:                                         ; preds = %for.body5
  %3 = load i32, ptr %a, align 4, !tbaa !5
  %inc8 = add nsw i32 %3, 1
  store i32 %inc8, ptr %a, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end9:                                         ; preds = %for.cond2
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end9
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %sub11 = sub nsw i32 %4, 20
  %cmp12 = icmp sge i32 %sub11, 0
  br i1 %cmp12, label %for.body13, label %for.end17

for.body13:                                       ; preds = %for.cond10
  store i32 %sub11, ptr %n, align 4, !tbaa !5
  br label %for.inc15

for.inc15:                                        ; preds = %for.body13
  %5 = load i32, ptr %b, align 4, !tbaa !5
  %inc16 = add nsw i32 %5, 1
  store i32 %inc16, ptr %b, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !13

for.end17:                                        ; preds = %for.cond10
  store i32 0, ptr %c, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc23, %for.end17
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub19 = sub nsw i32 %6, 10
  %cmp20 = icmp sge i32 %sub19, 0
  br i1 %cmp20, label %for.body21, label %for.end25

for.body21:                                       ; preds = %for.cond18
  store i32 %sub19, ptr %n, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body21
  %7 = load i32, ptr %c, align 4, !tbaa !5
  %inc24 = add nsw i32 %7, 1
  store i32 %inc24, ptr %c, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !14

for.end25:                                        ; preds = %for.cond18
  store i32 0, ptr %d, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc31, %for.end25
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %sub27 = sub nsw i32 %8, 5
  %cmp28 = icmp sge i32 %sub27, 0
  br i1 %cmp28, label %for.body29, label %for.end33

for.body29:                                       ; preds = %for.cond26
  store i32 %sub27, ptr %n, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body29
  %9 = load i32, ptr %d, align 4, !tbaa !5
  %inc32 = add nsw i32 %9, 1
  store i32 %inc32, ptr %d, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !15

for.end33:                                        ; preds = %for.cond26
  store i32 0, ptr %e, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc39, %for.end33
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %sub35 = sub nsw i32 %10, 1
  %cmp36 = icmp sge i32 %sub35, 0
  br i1 %cmp36, label %for.body37, label %for.end41

for.body37:                                       ; preds = %for.cond34
  store i32 %sub35, ptr %n, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.body37
  %11 = load i32, ptr %e, align 4, !tbaa !5
  %inc40 = add nsw i32 %11, 1
  store i32 %inc40, ptr %e, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !16

for.end41:                                        ; preds = %for.cond34
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %a, align 4, !tbaa !5
  %14 = load i32, ptr %b, align 4, !tbaa !5
  %15 = load i32, ptr %c, align 4, !tbaa !5
  %16 = load i32, ptr %d, align 4, !tbaa !5
  %17 = load i32, ptr %e, align 4, !tbaa !5
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12, i32 noundef %13, i32 noundef %14, i32 noundef %15, i32 noundef %16, i32 noundef %17)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
