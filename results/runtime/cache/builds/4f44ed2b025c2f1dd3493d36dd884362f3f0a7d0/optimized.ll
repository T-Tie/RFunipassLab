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
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %0, 100
  %cmp = icmp sge i32 %sub, 0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %a.0 = phi i32 [ 0, %for.end ], [ %inc8, %for.inc7 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub3 = sub nsw i32 %1, 50
  %cmp4 = icmp sge i32 %sub3, 0
  br i1 %cmp4, label %for.inc7, label %for.end9

for.inc7:                                         ; preds = %for.cond2
  store i32 %sub3, ptr %n, align 4, !tbaa !5
  %inc8 = add nsw i32 %a.0, 1
  br label %for.cond2, !llvm.loop !12

for.end9:                                         ; preds = %for.cond2
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc15, %for.end9
  %b.0 = phi i32 [ 0, %for.end9 ], [ %inc16, %for.inc15 ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub11 = sub nsw i32 %2, 20
  %cmp12 = icmp sge i32 %sub11, 0
  br i1 %cmp12, label %for.inc15, label %for.end17

for.inc15:                                        ; preds = %for.cond10
  store i32 %sub11, ptr %n, align 4, !tbaa !5
  %inc16 = add nsw i32 %b.0, 1
  br label %for.cond10, !llvm.loop !13

for.end17:                                        ; preds = %for.cond10
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc23, %for.end17
  %c.0 = phi i32 [ 0, %for.end17 ], [ %inc24, %for.inc23 ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %sub19 = sub nsw i32 %3, 10
  %cmp20 = icmp sge i32 %sub19, 0
  br i1 %cmp20, label %for.inc23, label %for.end25

for.inc23:                                        ; preds = %for.cond18
  store i32 %sub19, ptr %n, align 4, !tbaa !5
  %inc24 = add nsw i32 %c.0, 1
  br label %for.cond18, !llvm.loop !14

for.end25:                                        ; preds = %for.cond18
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc31, %for.end25
  %d.0 = phi i32 [ 0, %for.end25 ], [ %inc32, %for.inc31 ]
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %sub27 = sub nsw i32 %4, 5
  %cmp28 = icmp sge i32 %sub27, 0
  br i1 %cmp28, label %for.inc31, label %for.end33

for.inc31:                                        ; preds = %for.cond26
  store i32 %sub27, ptr %n, align 4, !tbaa !5
  %inc32 = add nsw i32 %d.0, 1
  br label %for.cond26, !llvm.loop !15

for.end33:                                        ; preds = %for.cond26
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc39, %for.end33
  %e.0 = phi i32 [ 0, %for.end33 ], [ %inc40, %for.inc39 ]
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub35 = sub nsw i32 %5, 1
  %cmp36 = icmp sge i32 %sub35, 0
  br i1 %cmp36, label %for.inc39, label %for.end41

for.inc39:                                        ; preds = %for.cond34
  store i32 %sub35, ptr %n, align 4, !tbaa !5
  %inc40 = add nsw i32 %e.0, 1
  br label %for.cond34, !llvm.loop !16

for.end41:                                        ; preds = %for.cond34
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %i.0, i32 noundef %a.0, i32 noundef %b.0, i32 noundef %c.0, i32 noundef %d.0, i32 noundef %e.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
