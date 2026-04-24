; ModuleID = '<stdin>'
source_filename = "/tmp/tmpclwx5op0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@_ZZ4mainE1a = internal global [300 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %do.body.preheader, label %for.cond5

do.body.preheader:                                ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr @_ZZ4mainE1a, i64 0, i64 %indvars.iv
  br label %do.body

do.body:                                          ; preds = %do.body.preheader, %do.body
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %2, 32
  br i1 %cmp4, label %do.body, label %for.inc, !llvm.loop !9

for.inc:                                          ; preds = %do.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond5:                                        ; preds = %for.cond, %for.inc28
  %.pre20 = phi i32 [ %.pre, %for.inc28 ], [ %0, %for.cond ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc28 ], [ 0, %for.cond ]
  %amount.0 = phi i32 [ %amount.1, %for.inc28 ], [ 0, %for.cond ]
  %3 = sext i32 %.pre20 to i64
  %cmp6 = icmp slt i64 %indvars.iv17, %3
  br i1 %cmp6, label %for.cond8.preheader, label %for.end30

for.cond8.preheader:                              ; preds = %for.cond5
  %arrayidx14 = getelementptr inbounds nuw [300 x i32], ptr @_ZZ4mainE1a, i64 0, i64 %indvars.iv17
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %for.cond8.preheader
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.body10 ], [ 0, %for.cond8.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %indvars.iv17
  br i1 %exitcond.not, label %for.end18, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds nuw [300 x i32], ptr @_ZZ4mainE1a, i64 0, i64 %indvars.iv14
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %4, %5
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br i1 %cmp15, label %for.inc28, label %for.cond8, !llvm.loop !13

for.end18:                                        ; preds = %for.cond8
  %cmp19 = icmp eq i32 %amount.0, 0
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %.str..str.1 = select i1 %cmp19, ptr @.str, ptr @.str.1
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %6)
  %add = add nsw i32 %amount.0, 1
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body10, %for.end18
  %.pre = phi i32 [ %.pre.pre, %for.end18 ], [ %.pre20, %for.body10 ]
  %amount.1 = phi i32 [ %add, %for.end18 ], [ %amount.0, %for.body10 ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  br label %for.cond5, !llvm.loop !14

for.end30:                                        ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
