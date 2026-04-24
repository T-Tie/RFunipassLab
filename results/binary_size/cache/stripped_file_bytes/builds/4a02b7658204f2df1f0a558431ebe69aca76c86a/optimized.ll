; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgss5p183.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %0, 1
  br i1 %cmp13, label %for.body, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.body, %entry
  %.lcssa = phi i32 [ %0, %entry ], [ %8, %for.body ]
  %cmp815 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp815, label %for.body9.preheader, label %for.end19

for.body9.preheader:                              ; preds = %for.cond7.preheader
  %wide.trip.count = zext nneg i32 %.lcssa to i64
  %min.iters.check = icmp eq i32 %.lcssa, 1
  br i1 %min.iters.check, label %for.body9.preheader32, label %vector.ph

vector.ph:                                        ; preds = %for.body9.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %index
  %wide.load = load <2 x i32>, ptr %1, align 8, !tbaa !5
  %2 = sitofp <2 x i32> %wide.load to <2 x double>
  %3 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %index
  %wide.load31 = load <2 x i32>, ptr %3, align 8, !tbaa !5
  %4 = sitofp <2 x i32> %wide.load31 to <2 x double>
  %5 = fdiv <2 x double> %2, %4
  %6 = getelementptr inbounds nuw [100 x double], ptr %c, i64 0, i64 %index
  store <2 x double> %5, ptr %6, align 16, !tbaa !9
  %index.next = add nuw i64 %index, 2
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end19.loopexit, label %for.body9.preheader32

for.body9.preheader32:                            ; preds = %for.body9.preheader, %middle.block
  %indvars.iv21.ph = phi i64 [ 0, %for.body9.preheader ], [ %n.vec, %middle.block ]
  br label %for.body9

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx3 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx3, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp, label %for.body, label %for.cond7.preheader, !llvm.loop !16

for.body9:                                        ; preds = %for.body9.preheader32, %for.body9
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body9 ], [ %indvars.iv21.ph, %for.body9.preheader32 ]
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv21
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv = sitofp i32 %10 to double
  %arrayidx13 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %conv14 = sitofp i32 %11 to double
  %div = fdiv double %conv, %conv14
  %arrayidx16 = getelementptr inbounds nuw [100 x double], ptr %c, i64 0, i64 %indvars.iv21
  store double %div, ptr %arrayidx16, align 8, !tbaa !9
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next22, %wide.trip.count
  br i1 %exitcond.not, label %for.end19.loopexit, label %for.body9, !llvm.loop !17

for.end19.loopexit:                               ; preds = %for.body9, %middle.block
  %arrayidx20.phi.trans.insert = getelementptr inbounds nuw i8, ptr %c, i64 8
  %.pre = load double, ptr %arrayidx20.phi.trans.insert, align 8, !tbaa !9
  %.pre27 = load double, ptr %c, align 16, !tbaa !9
  br label %for.end19

for.end19:                                        ; preds = %for.end19.loopexit, %for.cond7.preheader
  %12 = phi double [ %.pre27, %for.end19.loopexit ], [ undef, %for.cond7.preheader ]
  %13 = phi double [ %.pre, %for.end19.loopexit ], [ undef, %for.cond7.preheader ]
  %sub = fsub double %13, %12
  %cmp22 = fcmp ogt double %sub, 5.000000e-02
  %sub26 = fsub double %12, %13
  %cmp27 = fcmp ogt double %sub26, 5.000000e-02
  %.str.3..str.4 = select i1 %cmp27, ptr @.str.3, ptr @.str.4
  %.str.3.sink = select i1 %cmp22, ptr @.str.2, ptr %.str.3..str.4
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink)
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3417 = icmp sgt i32 %14, 2
  br i1 %cmp3417, label %for.body35, label %for.end58

for.body35:                                       ; preds = %for.end19, %for.body35
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body35 ], [ 2, %for.end19 ]
  %putchar = call i32 @putchar(i32 10)
  %arrayidx38 = getelementptr inbounds nuw [100 x double], ptr %c, i64 0, i64 %indvars.iv24
  %15 = load double, ptr %arrayidx38, align 8, !tbaa !9
  %sub40 = fsub double %15, %12
  %cmp41 = fcmp ogt double %sub40, 5.000000e-02
  %sub48 = fsub double %12, %15
  %cmp49 = fcmp ogt double %sub48, 5.000000e-02
  %.str.3..str.429 = select i1 %cmp49, ptr @.str.3, ptr @.str.4
  %.str.2.sink = select i1 %cmp41, ptr @.str.2, ptr %.str.3..str.429
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2.sink)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp34 = icmp slt i64 %indvars.iv.next25, %17
  br i1 %cmp34, label %for.body35, label %for.end58, !llvm.loop !18

for.end58:                                        ; preds = %for.body35, %for.end19
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13, !14, !15}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13, !14}
!18 = distinct !{!18, !12, !13}
