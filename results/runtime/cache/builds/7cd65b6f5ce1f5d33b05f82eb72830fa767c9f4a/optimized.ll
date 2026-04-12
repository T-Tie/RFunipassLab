; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyk6rmdkn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef nonnull %s) #4
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.cond1, %entry
  %0 = phi i32 [ %.pre, %entry ], [ %5, %for.cond1 ]
  %indvars.iv26 = phi i64 [ 0, %entry ], [ %indvars.iv.next27, %for.cond1 ]
  %star1.0 = phi i32 [ undef, %entry ], [ %star1.1, %for.cond1 ]
  %star2.0 = phi i32 [ undef, %entry ], [ %star2.1, %for.cond1 ]
  %end1.0 = phi i32 [ undef, %entry ], [ %end1.1, %for.cond1 ]
  %end2.0 = phi i32 [ undef, %entry ], [ %end2.1, %for.cond1 ]
  %f.0 = phi i32 [ -1, %entry ], [ %f.1, %for.cond1 ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp, label %for.cond1.preheader, label %for.end24

for.cond1.preheader:                              ; preds = %for.cond
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %2 = trunc i64 %indvars.iv26 to i32
  %3 = add i32 %2, -1
  %4 = trunc nuw i64 %indvars.iv.next27 to i32
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %5 = phi i32 [ %0, %for.cond1.preheader ], [ %.pre30, %for.inc ]
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next.pre-phi, %for.inc ]
  %star1.1 = phi i32 [ %star1.0, %for.cond1.preheader ], [ %star1.216, %for.inc ]
  %star2.1 = phi i32 [ %star2.0, %for.cond1.preheader ], [ %star2.218, %for.inc ]
  %end1.1 = phi i32 [ %end1.0, %for.cond1.preheader ], [ %end1.2, %for.inc ]
  %end2.1 = phi i32 [ %end2.0, %for.cond1.preheader ], [ %end2.2, %for.inc ]
  %f.1 = phi i32 [ %f.0, %for.cond1.preheader ], [ %f.220, %for.inc ]
  %6 = sext i32 %5 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %6
  br i1 %cmp2, label %for.body3, label %for.cond, !llvm.loop !9

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr %s, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %7 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %land.lhs.true, label %for.body3.for.inc_crit_edge

for.body3.for.inc_crit_edge:                      ; preds = %for.body3
  %.pre31 = add nuw nsw i64 %indvars.iv, 1
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body3
  %cmp12 = icmp eq i32 %f.1, -1
  %8 = add nuw nsw i64 %indvars.iv, 1
  %star1.2.ph = select i1 %cmp12, i32 %4, i32 %star1.1
  %9 = trunc nuw i64 %8 to i32
  %star2.2.ph = select i1 %cmp12, i32 %9, i32 %star2.1
  %f.2.ph = select i1 %cmp12, i32 1, i32 %f.1
  %10 = trunc i64 %indvars.iv to i32
  %11 = add i32 %10, -1
  br label %for.inc

for.inc:                                          ; preds = %for.body3.for.inc_crit_edge, %land.lhs.true
  %indvars.iv.next.pre-phi = phi i64 [ %.pre31, %for.body3.for.inc_crit_edge ], [ %8, %land.lhs.true ]
  %f.220 = phi i32 [ %f.1, %for.body3.for.inc_crit_edge ], [ %f.2.ph, %land.lhs.true ]
  %star2.218 = phi i32 [ %star2.1, %for.body3.for.inc_crit_edge ], [ %star2.2.ph, %land.lhs.true ]
  %star1.216 = phi i32 [ %star1.1, %for.body3.for.inc_crit_edge ], [ %star1.2.ph, %land.lhs.true ]
  %end1.2 = phi i32 [ %end1.1, %for.body3.for.inc_crit_edge ], [ %3, %land.lhs.true ]
  %end2.2 = phi i32 [ %end2.1, %for.body3.for.inc_crit_edge ], [ %11, %land.lhs.true ]
  %.pre30 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end24:                                        ; preds = %for.cond
  %reass.sub = sub i32 %end1.0, %star1.0
  %add26 = add i32 %reass.sub, 1
  %reass.sub22 = sub i32 %end2.0, %star2.0
  %add28 = add i32 %reass.sub22, 1
  %mul = mul nsw i32 %add28, %add26
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef nonnull %s) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #4
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
attributes #3 = { nofree nounwind willreturn }
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
