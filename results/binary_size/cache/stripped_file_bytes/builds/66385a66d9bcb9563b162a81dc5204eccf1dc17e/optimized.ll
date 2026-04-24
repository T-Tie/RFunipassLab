; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9ku5irjp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %zong = alloca [1000 x i32], align 16
  %youxiao = alloca [1000 x i32], align 16
  %c = alloca [1000 x double], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %zong) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %youxiao) #5
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %zong, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr %youxiao, i64 0, i64 %indvars.iv
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %youxiao, align 16, !tbaa !5
  %conv = sitofp i32 %2 to double
  %3 = load i32, ptr %zong, align 16, !tbaa !5
  %conv6 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv6
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond7

for.cond7:                                        ; preds = %for.body9, %for.end
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.body9 ], [ 1, %for.end ]
  %exitcond.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond.not, label %for.cond23, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds nuw [1000 x i32], ptr %youxiao, i64 0, i64 %indvars.iv16
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv12 = sitofp i32 %4 to double
  %arrayidx15 = getelementptr inbounds nuw [1000 x i32], ptr %zong, i64 0, i64 %indvars.iv16
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %conv16 = sitofp i32 %5 to double
  %div17 = fdiv double %conv12, %conv16
  %sub = fsub double %div17, %div
  %arrayidx19 = getelementptr inbounds nuw [1000 x double], ptr %c, i64 0, i64 %indvars.iv16
  store double %sub, ptr %arrayidx19, align 8, !tbaa !12
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond7, !llvm.loop !14

for.cond23:                                       ; preds = %for.cond7, %for.body25
  %6 = phi i32 [ %.pre, %for.body25 ], [ %0, %for.cond7 ]
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body25 ], [ 1, %for.cond7 ]
  %7 = sext i32 %6 to i64
  %cmp24 = icmp slt i64 %indvars.iv20, %7
  br i1 %cmp24, label %for.body25, label %for.end40

for.body25:                                       ; preds = %for.cond23
  %arrayidx27 = getelementptr inbounds nuw [1000 x double], ptr %c, i64 0, i64 %indvars.iv20
  %8 = load double, ptr %arrayidx27, align 8, !tbaa !12
  %cmp28 = fcmp ogt double %8, 5.000000e-02
  %cmp32 = fcmp olt double %8, -5.000000e-02
  %str.1.str = select i1 %cmp32, ptr @str.1, ptr @str
  %str.2.sink = select i1 %cmp28, ptr @str.2, ptr %str.1.str
  %puts14 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !15

for.end40:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %youxiao) #5
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %zong) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
