; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3reepu6d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"%d\0A%d\0A%d\0A%d\0A%d\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %n.promoted8 = phi i32 [ %n.promoted, %entry ], [ %sub, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp sgt i32 %n.promoted8, 99
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %sub = add nsw i32 %n.promoted8, -100
  store i32 %sub, ptr %n, align 4, !tbaa !5
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc7
  %n.promoted10 = phi i32 [ %sub3, %for.inc7 ], [ %n.promoted8, %for.cond2.preheader ]
  %a.0 = phi i32 [ %inc8, %for.inc7 ], [ 0, %for.cond2.preheader ]
  %cmp4 = icmp sgt i32 %n.promoted10, 49
  br i1 %cmp4, label %for.inc7, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond2
  br label %for.cond10

for.inc7:                                         ; preds = %for.cond2
  %sub3 = add nsw i32 %n.promoted10, -50
  store i32 %sub3, ptr %n, align 4, !tbaa !5
  %inc8 = add nuw nsw i32 %a.0, 1
  br label %for.cond2, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc15
  %n.promoted12 = phi i32 [ %sub11, %for.inc15 ], [ %n.promoted10, %for.cond10.preheader ]
  %b.0 = phi i32 [ %inc16, %for.inc15 ], [ 0, %for.cond10.preheader ]
  %cmp12 = icmp sgt i32 %n.promoted12, 19
  br i1 %cmp12, label %for.inc15, label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.cond10
  br label %for.cond18

for.inc15:                                        ; preds = %for.cond10
  %sub11 = add nsw i32 %n.promoted12, -20
  store i32 %sub11, ptr %n, align 4, !tbaa !5
  %inc16 = add nuw nsw i32 %b.0, 1
  br label %for.cond10, !llvm.loop !13

for.cond18:                                       ; preds = %for.cond18.preheader, %for.inc23
  %n.promoted14 = phi i32 [ %sub19, %for.inc23 ], [ %n.promoted12, %for.cond18.preheader ]
  %c.0 = phi i32 [ %inc24, %for.inc23 ], [ 0, %for.cond18.preheader ]
  %cmp20 = icmp sgt i32 %n.promoted14, 9
  br i1 %cmp20, label %for.inc23, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond18
  br label %for.cond26

for.inc23:                                        ; preds = %for.cond18
  %sub19 = add nsw i32 %n.promoted14, -10
  store i32 %sub19, ptr %n, align 4, !tbaa !5
  %inc24 = add nuw nsw i32 %c.0, 1
  br label %for.cond18, !llvm.loop !14

for.cond26:                                       ; preds = %for.cond26.preheader, %for.inc31
  %n.promoted16 = phi i32 [ %sub27, %for.inc31 ], [ %n.promoted14, %for.cond26.preheader ]
  %d.0 = phi i32 [ %inc32, %for.inc31 ], [ 0, %for.cond26.preheader ]
  %cmp28 = icmp sgt i32 %n.promoted16, 4
  br i1 %cmp28, label %for.inc31, label %for.cond34.preheader

for.cond34.preheader:                             ; preds = %for.cond26
  %smin = call i32 @llvm.smin.i32(i32 %n.promoted16, i32 0)
  %0 = sub i32 %n.promoted16, %smin
  br label %for.cond34

for.inc31:                                        ; preds = %for.cond26
  %sub27 = add nsw i32 %n.promoted16, -5
  store i32 %sub27, ptr %n, align 4, !tbaa !5
  %inc32 = add nuw nsw i32 %d.0, 1
  br label %for.cond26, !llvm.loop !15

for.cond34:                                       ; preds = %for.cond34.preheader, %for.inc39
  %sub3517 = phi i32 [ %sub35, %for.inc39 ], [ %n.promoted16, %for.cond34.preheader ]
  %e.0 = phi i32 [ %inc40, %for.inc39 ], [ 0, %for.cond34.preheader ]
  %exitcond.not = icmp eq i32 %e.0, %0
  br i1 %exitcond.not, label %for.end41, label %for.inc39

for.inc39:                                        ; preds = %for.cond34
  %sub35 = add nsw i32 %sub3517, -1
  store i32 %sub35, ptr %n, align 4, !tbaa !5
  %inc40 = add nuw i32 %e.0, 1
  br label %for.cond34, !llvm.loop !16

for.end41:                                        ; preds = %for.cond34
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.0, i32 noundef %a.0, i32 noundef %b.0, i32 noundef %c.0, i32 noundef %d.0, i32 noundef %0)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

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
