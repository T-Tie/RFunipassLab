; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiv13bkd2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@str.2 = private unnamed_addr constant [6 x i8] c"worse\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [100 x [2 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv14, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sz, i64 8
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2
  br i1 %exitcond.not, label %for.inc7, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [2 x double]], ptr %sz, i64 0, i64 %indvars.iv14, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.body12
  %2 = phi i32 [ %0, %for.cond10.preheader ], [ %.pre, %for.body12 ]
  %indvars.iv17 = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next18, %for.body12 ]
  %3 = sext i32 %2 to i64
  %cmp11 = icmp slt i64 %indvars.iv17, %3
  br i1 %cmp11, label %for.body12, label %for.end47

for.body12:                                       ; preds = %for.cond10
  %4 = load double, ptr %arrayidx14, align 8, !tbaa !13
  %5 = load double, ptr %sz, align 16, !tbaa !13
  %div = fdiv double %4, %5
  %arrayidx18 = getelementptr inbounds nuw [100 x [2 x double]], ptr %sz, i64 0, i64 %indvars.iv17
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 8
  %6 = load double, ptr %arrayidx19, align 8, !tbaa !13
  %7 = load double, ptr %arrayidx18, align 16, !tbaa !13
  %div23 = fdiv double %6, %7
  %sub = fsub double %div, %div23
  %cmp24 = fcmp ogt double %sub, 5.000000e-02
  %sub38 = fsub double %div23, %div
  %cmp39 = fcmp ogt double %sub38, 5.000000e-02
  %str.1.str = select i1 %cmp39, ptr @str.1, ptr @str
  %str.2.sink = select i1 %cmp24, ptr @str.2, ptr %str.1.str
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !15

for.end47:                                        ; preds = %for.cond10
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = distinct !{!15, !10, !11}
