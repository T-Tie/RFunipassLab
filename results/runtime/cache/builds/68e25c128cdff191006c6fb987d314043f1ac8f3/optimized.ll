; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy45ilikx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [1000 x [2 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 8000, ptr nonnull %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv16, %1
  br i1 %cmp, label %for.cond1, label %for.end9

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 2
  br i1 %exitcond.not, label %for.inc7, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [1000 x [2 x i32]], ptr %sz, i64 0, i64 %indvars.iv16, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %sz, i64 4
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv = sitofp i32 %2 to double
  %3 = load i32, ptr %sz, align 16, !tbaa !5
  %conv14 = sitofp i32 %3 to double
  %div = fdiv double %conv, %conv14
  br label %for.cond15

for.cond15:                                       ; preds = %for.end33, %for.end9
  %4 = phi i32 [ %.pre, %for.end33 ], [ %0, %for.end9 ]
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.end33 ], [ 1, %for.end9 ]
  %y.0 = phi double [ %y.1, %for.end33 ], [ undef, %for.end9 ]
  %5 = sext i32 %4 to i64
  %cmp16 = icmp slt i64 %indvars.iv20, %5
  br i1 %cmp16, label %for.cond18.preheader, label %for.end45

for.cond18.preheader:                             ; preds = %for.cond15
  %arrayidx22 = getelementptr inbounds nuw [1000 x [2 x i32]], ptr %sz, i64 0, i64 %indvars.iv20
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arrayidx22, i64 4
  %6 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %conv24 = sitofp i32 %6 to double
  %7 = load i32, ptr %arrayidx22, align 8, !tbaa !5
  %conv29 = sitofp i32 %7 to double
  %div30 = fdiv double %conv24, %conv29
  br label %for.cond18

for.cond18:                                       ; preds = %for.cond18, %for.cond18.preheader
  %j.1 = phi i32 [ %inc32, %for.cond18 ], [ 0, %for.cond18.preheader ]
  %y.1 = phi double [ %div30, %for.cond18 ], [ %y.0, %for.cond18.preheader ]
  %inc32 = add nuw nsw i32 %j.1, 1
  %exitcond19.not = icmp eq i32 %inc32, 3
  br i1 %exitcond19.not, label %for.end33, label %for.cond18, !llvm.loop !13

for.end33:                                        ; preds = %for.cond18
  %sub = fsub double %y.1, %div
  %cmp34 = fcmp ogt double %sub, 5.000000e-02
  %sub36 = fsub double %div, %y.1
  %cmp37 = fcmp ogt double %sub36, 5.000000e-02
  %str.1.str = select i1 %cmp37, ptr @str.1, ptr @str
  %str.2.sink = select i1 %cmp34, ptr @str.2, ptr %str.1.str
  %puts14 = call i32 @puts(ptr nonnull dereferenceable(1) %str.2.sink)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !14

for.end45:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 8000, ptr nonnull %sz) #4
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
