; ModuleID = '<stdin>'
source_filename = "/tmp/tmpc4p_4g8n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc11
  %indvars.iv11 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next12, %for.inc11 ]
  %num.0 = phi i32 [ 0, %for.cond2.preheader ], [ %num.1, %for.inc11 ]
  %exitcond.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv11
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %3 = and i32 %2, 1
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %if.then, label %for.inc11

if.then:                                          ; preds = %for.body4
  store i32 0, ptr %arrayidx6, align 4, !tbaa !5
  %inc10 = add nsw i32 %num.0, 1
  br label %for.inc11

for.inc11:                                        ; preds = %for.body4, %if.then
  %num.1 = phi i32 [ %inc10, %if.then ], [ %num.0, %for.body4 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond2, !llvm.loop !13

for.cond14:                                       ; preds = %for.cond2
  %cmp15 = icmp sgt i32 %0, 0
  br i1 %cmp15, label %if.end34, label %for.cond41.preheader

for.cond41.preheader:                             ; preds = %for.cond14
  %4 = sext i32 %num.0 to i64
  br label %for.cond41

if.end34:                                         ; preds = %for.cond14, %if.end34
  br label %if.end34

for.cond41:                                       ; preds = %for.cond41.preheader, %for.body43
  %5 = phi i32 [ %0, %for.cond41.preheader ], [ %.pre, %for.body43 ]
  %indvars.iv16 = phi i64 [ %4, %for.cond41.preheader ], [ %indvars.iv.next17, %for.body43 ]
  %6 = sext i32 %5 to i64
  %cmp42 = icmp slt i64 %indvars.iv16, %6
  br i1 %cmp42, label %for.body43, label %for.end55

for.body43:                                       ; preds = %for.cond41
  %sub = add nsw i32 %5, -1
  %7 = trunc nsw i64 %indvars.iv16 to i32
  %cmp44 = icmp eq i32 %sub, %7
  %8 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %indvars.iv16
  %9 = load i32, ptr %8, align 4, !tbaa !5, !invariant.load !12
  %.str..str.1 = select i1 %cmp44, ptr @.str, ptr @.str.1
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %9)
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond41

for.end55:                                        ; preds = %for.cond41
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
