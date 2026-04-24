; ModuleID = '<stdin>'
source_filename = "/tmp/tmppfrdbz8t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %sz = alloca [100 x double], align 16
  %zong = alloca [100 x i32], align 16
  %xiao = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %x, ptr noundef nonnull %y)
  %0 = load i32, ptr %y, align 4, !tbaa !5
  %1 = load i32, ptr %x, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %zong) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %xiao) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %sub = add nsw i32 %2, -1
  %3 = sext i32 %sub to i64
  %cmp = icmp slt i64 %indvars.iv, %3
  br i1 %cmp, label %for.body, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.cond
  %conv = sitofp i32 %0 to double
  %conv2 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv2
  br label %for.cond16

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %zong, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %xiao, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx4)
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %conv8 = sitofp i32 %4 to double
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %conv12 = sitofp i32 %5 to double
  %div13 = fdiv double %conv8, %conv12
  %arrayidx15 = getelementptr inbounds nuw [100 x double], ptr %sz, i64 0, i64 %indvars.iv
  store double %div13, ptr %arrayidx15, align 8, !tbaa !10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond16:                                       ; preds = %for.cond16.preheader, %for.body19
  %6 = phi double [ undef, %for.cond16.preheader ], [ %.pre10, %for.body19 ]
  %7 = phi i32 [ %2, %for.cond16.preheader ], [ %.pre, %for.body19 ]
  %indvars.iv7 = phi i64 [ 0, %for.cond16.preheader ], [ %indvars.iv.next8, %for.body19 ]
  %sub17 = add nsw i32 %7, -2
  %8 = sext i32 %sub17 to i64
  %cmp18 = icmp slt i64 %indvars.iv7, %8
  %sub39 = fsub double %6, %div
  %cmp40 = fcmp ogt double %sub39, 5.000000e-02
  %sub27 = fsub double %div, %6
  %cmp28 = fcmp ogt double %sub27, 5.000000e-02
  br i1 %cmp18, label %for.body19, label %for.end36

for.body19:                                       ; preds = %for.cond16
  %str.1.str = select i1 %cmp28, ptr @str.1, ptr @str
  %str.1.sink = select i1 %cmp40, ptr @str.2, ptr %str.1.str
  %puts4 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.1.sink) #5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  %.phi.trans.insert = getelementptr inbounds nuw [100 x double], ptr %sz, i64 0, i64 %indvars.iv.next8
  %.pre10 = load double, ptr %.phi.trans.insert, align 8, !tbaa !10, !invariant.load !9
  br label %for.cond16, !llvm.loop !15

for.end36:                                        ; preds = %for.cond16
  %.str.6..str.7 = select i1 %cmp28, ptr @.str.6, ptr @.str.7
  %.str.6.sink = select i1 %cmp40, ptr @.str.5, ptr %.str.6..str.7
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.6.sink)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %xiao) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %zong) #5
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nofree nounwind willreturn }
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
!9 = !{}
!10 = !{!11, !11, i64 0}
!11 = !{!"double", !7, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
