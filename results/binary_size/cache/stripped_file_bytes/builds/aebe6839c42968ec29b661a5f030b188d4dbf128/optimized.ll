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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a, ptr noundef nonnull %b)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond7

for.body:                                         ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx3, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond7:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv14 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next15, %for.body9 ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %wide.trip.count
  br i1 %exitcond.not, label %for.end19, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv14
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv = sitofp i32 %2 to double
  %arrayidx13 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv14
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %conv14 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv14
  %arrayidx16 = getelementptr inbounds nuw [100 x double], ptr %c, i64 0, i64 %indvars.iv14
  store double %div, ptr %arrayidx16, align 8, !tbaa !12
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond7, !llvm.loop !14

for.end19:                                        ; preds = %for.cond7
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %c, i64 8
  %4 = load double, ptr %arrayidx20, align 8, !tbaa !12
  %5 = load double, ptr %c, align 16, !tbaa !12
  %sub = fsub double %4, %5
  %cmp22 = fcmp ogt double %sub, 5.000000e-02
  %sub26 = fsub double %5, %4
  %cmp27 = fcmp ogt double %sub26, 5.000000e-02
  %.str.3..str.4 = select i1 %cmp27, ptr @.str.3, ptr @.str.4
  %.str.3.sink = select i1 %cmp22, ptr @.str.2, ptr %.str.3..str.4
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.3.sink)
  br label %for.cond33

for.cond33:                                       ; preds = %for.body35, %for.end19
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body35 ], [ 2, %for.end19 ]
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp34 = icmp slt i64 %indvars.iv18, %7
  br i1 %cmp34, label %for.body35, label %for.end58

for.body35:                                       ; preds = %for.cond33
  %putchar = call i32 @putchar(i32 10)
  %arrayidx38 = getelementptr inbounds nuw [100 x double], ptr %c, i64 0, i64 %indvars.iv18
  %8 = load double, ptr %arrayidx38, align 8, !tbaa !12
  %sub40 = fsub double %8, %5
  %cmp41 = fcmp ogt double %sub40, 5.000000e-02
  %sub48 = fsub double %5, %8
  %cmp49 = fcmp ogt double %sub48, 5.000000e-02
  %.str.3..str.421 = select i1 %cmp49, ptr @.str.3, ptr @.str.4
  %.str.2.sink = select i1 %cmp41, ptr @.str.2, ptr %.str.3..str.421
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2.sink)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond33, !llvm.loop !15

for.end58:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
