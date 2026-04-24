; ModuleID = '<stdin>'
source_filename = "/tmp/tmpr9podgn6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%f %f\00", align 1
@str = private unnamed_addr constant [5 x i8] c"same\00", align 1
@str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x float], align 16
  %b = alloca [1000 x float], align 16
  %c = alloca [1000 x float], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x float], ptr %b, i64 0, i64 %indvars.iv
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %2 = load float, ptr %arrayidx4, align 4, !tbaa !12
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %3 = load float, ptr %arrayidx5, align 4, !tbaa !12
  %div = fdiv float %2, %3
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %c, i64 4
  store float %div, ptr %arrayidx6, align 4, !tbaa !12
  br label %for.cond7

for.cond7:                                        ; preds = %for.body9, %for.end
  %4 = phi i32 [ %.pre, %for.body9 ], [ %0, %for.end ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.body9 ], [ 2, %for.end ]
  %5 = sext i32 %4 to i64
  %cmp8.not = icmp sgt i64 %indvars.iv14, %5
  br i1 %cmp8.not, label %for.end35, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx11 = getelementptr inbounds nuw [1000 x float], ptr %b, i64 0, i64 %indvars.iv14
  %6 = load float, ptr %arrayidx11, align 4, !tbaa !12, !invariant.load !14
  %arrayidx13 = getelementptr inbounds nuw [1000 x float], ptr %a, i64 0, i64 %indvars.iv14
  %7 = load float, ptr %arrayidx13, align 4, !tbaa !12, !invariant.load !14
  %div14 = fdiv float %6, %7
  %arrayidx16 = getelementptr inbounds nuw [1000 x float], ptr %c, i64 0, i64 %indvars.iv14
  store float %div14, ptr %arrayidx16, align 4, !tbaa !12
  %8 = load float, ptr %arrayidx6, align 4, !tbaa !12
  %sub = fsub float %div14, %8
  %conv = fpext float %sub to double
  %cmp20 = fcmp ogt double %conv, 5.000000e-02
  %sub25 = fsub float %8, %div14
  %conv26 = fpext float %sub25 to double
  %cmp27 = fcmp ogt double %conv26, 5.000000e-02
  %str.1.str = select i1 %cmp27, ptr @str.1, ptr @str
  %str.2.sink = select i1 %cmp20, ptr @str.2, ptr %str.1.str
  %puts12 = call i32 @puts(ptr noundef nonnull dereferenceable(1) %str.2.sink) #6
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !15

for.end35:                                        ; preds = %for.cond7
  %call36 = call i32 @getchar() #6
  %call37 = call i32 @getchar() #6
  %call38 = call i32 @getchar() #6
  %call39 = call i32 @getchar() #6
  %call40 = call i32 @getchar() #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nofree nounwind uwtable
declare noundef i32 @getchar() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree nounwind willreturn }
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
!13 = !{!"float", !7, i64 0}
!14 = !{}
!15 = distinct !{!15, !10, !11}
