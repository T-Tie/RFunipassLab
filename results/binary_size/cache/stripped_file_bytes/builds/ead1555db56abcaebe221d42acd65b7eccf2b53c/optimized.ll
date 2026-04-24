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
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %0, 0
  br i1 %cmp14, label %for.cond1.preheader, label %for.end47

for.cond1.preheader:                              ; preds = %entry, %for.cond1.preheader
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.cond1.preheader ], [ 0, %entry ]
  %arrayidx5 = getelementptr inbounds nuw [100 x [2 x double]], ptr %sz, i64 0, i64 %indvars.iv19, i64 0
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %arrayidx5.c = getelementptr inbounds nuw [100 x [2 x double]], ptr %sz, i64 0, i64 %indvars.iv19, i64 1
  %call6.c = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5.c)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next20, %2
  br i1 %cmp, label %for.cond1.preheader, label %for.cond10.preheader, !llvm.loop !9

for.cond10.preheader:                             ; preds = %for.cond1.preheader
  %3 = icmp sgt i32 %1, 1
  br i1 %3, label %for.body12.lr.ph, label %for.end47

for.body12.lr.ph:                                 ; preds = %for.cond10.preheader
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %sz, i64 8
  br label %for.body12

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %indvars.iv22 = phi i64 [ 1, %for.body12.lr.ph ], [ %indvars.iv.next23, %for.body12 ]
  %4 = load double, ptr %arrayidx14, align 8, !tbaa !12
  %5 = load double, ptr %sz, align 16, !tbaa !12
  %arrayidx18 = getelementptr inbounds nuw [100 x [2 x double]], ptr %sz, i64 0, i64 %indvars.iv22
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 8
  %6 = load double, ptr %arrayidx19, align 8, !tbaa !12
  %7 = load double, ptr %arrayidx18, align 16, !tbaa !12
  %8 = insertelement <2 x double> poison, double %6, i64 0
  %9 = insertelement <2 x double> %8, double %4, i64 1
  %10 = insertelement <2 x double> poison, double %7, i64 0
  %11 = insertelement <2 x double> %10, double %5, i64 1
  %12 = fdiv <2 x double> %9, %11
  %13 = extractelement <2 x double> %12, i64 0
  %14 = extractelement <2 x double> %12, i64 1
  %sub = fsub double %14, %13
  %cmp24 = fcmp ogt double %sub, 5.000000e-02
  %sub38 = fsub double %13, %14
  %cmp39 = fcmp ogt double %sub38, 5.000000e-02
  %str.1.str = select i1 %cmp39, ptr @str.1, ptr @str
  %str.2.sink = select i1 %cmp24, ptr @str.2, ptr %str.1.str
  %puts12 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %cmp11 = icmp slt i64 %indvars.iv.next23, %16
  br i1 %cmp11, label %for.body12, label %for.end47, !llvm.loop !14

for.end47:                                        ; preds = %for.body12, %entry, %for.cond10.preheader
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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
