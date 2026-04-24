; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1d057wds.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %input = alloca [20000 x i32], align 16
  %output = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %input) #5
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull %output) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count32 = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %input, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end24
  %indvars.iv28 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next29, %if.end24 ]
  %k.0 = phi i32 [ 0, %for.cond2.preheader ], [ %k.1, %if.end24 ]
  %exitcond33.not = icmp eq i64 %indvars.iv28, %wide.trip.count32
  br i1 %exitcond33.not, label %for.cond28.preheader, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [20000 x i32], ptr %input, i64 0, i64 %indvars.iv28
  br label %for.cond5

for.cond28.preheader:                             ; preds = %for.cond2
  %smax38 = call i32 @llvm.smax.i32(i32 %k.0, i32 1)
  %wide.trip.count = zext nneg i32 %smax38 to i64
  br label %for.cond28

for.cond5:                                        ; preds = %for.body7, %for.cond5.preheader
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body7 ], [ 0, %for.cond5.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %indvars.iv28
  br i1 %exitcond.not, label %if.then18, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %input, i64 0, i64 %indvars.iv25
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %cmp12 = icmp eq i32 %2, %3
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br i1 %cmp12, label %if.end24, label %for.cond5, !llvm.loop !13

if.then18:                                        ; preds = %for.cond5
  %inc19 = add nsw i32 %k.0, 1
  %4 = load i32, ptr %arrayidx9, align 4, !tbaa !5, !invariant.load !12
  %idxprom22 = sext i32 %inc19 to i64
  %arrayidx23 = getelementptr inbounds [20000 x i32], ptr %output, i64 0, i64 %idxprom22
  store i32 %4, ptr %arrayidx23, align 4, !tbaa !5
  br label %if.end24

if.end24:                                         ; preds = %for.body7, %if.then18
  %k.1 = phi i32 [ %inc19, %if.then18 ], [ %k.0, %for.body7 ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond2, !llvm.loop !14

for.cond28:                                       ; preds = %for.cond28.preheader, %for.body30
  %indvars.iv34 = phi i64 [ 1, %for.cond28.preheader ], [ %indvars.iv.next35, %for.body30 ]
  %exitcond39.not = icmp eq i64 %indvars.iv34, %wide.trip.count
  br i1 %exitcond39.not, label %for.end36, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw [20000 x i32], ptr %output, i64 0, i64 %indvars.iv34
  %5 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !12
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %5) #6
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond28, !llvm.loop !15

for.end36:                                        ; preds = %for.cond28
  %cmp37 = icmp sgt i32 %k.0, 0
  br i1 %cmp37, label %if.then38, label %if.end42

if.then38:                                        ; preds = %for.end36
  %idxprom39 = zext nneg i32 %k.0 to i64
  %arrayidx40 = getelementptr inbounds nuw [20000 x i32], ptr %output, i64 0, i64 %idxprom39
  %6 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !12
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %6) #6
  br label %if.end42

if.end42:                                         ; preds = %if.then38, %for.end36
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %output) #6
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %input) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
