; ModuleID = '<stdin>'
source_filename = "/tmp/tmp42n7it7c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(2000) %a, i8 noundef 0, i64 noundef 2000, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %N)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %t.0 = phi i32 [ %t.1, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %sub = add nsw i32 %t.0, -1
  %smax34 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  br label %for.cond10

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %3 = and i32 %2, 1
  %cmp4.not = icmp eq i32 %3, 0
  br i1 %cmp4.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %t.0 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %2, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %t.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %t.1 = phi i32 [ %inc, %if.then ], [ %t.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc38
  %indvars.iv32 = phi i32 [ %sub, %for.cond10.preheader ], [ %indvars.iv.next33, %for.inc38 ]
  %i.1 = phi i32 [ 0, %for.cond10.preheader ], [ %inc39, %for.inc38 ]
  %exitcond35.not = icmp eq i32 %i.1, %smax34
  br i1 %exitcond35.not, label %for.cond41.preheader, label %for.cond13.preheader

for.cond41.preheader:                             ; preds = %for.cond10
  %smax42 = call i32 @llvm.smax.i32(i32 %t.0, i32 noundef 0)
  %wide.trip.count43 = zext nneg i32 %smax42 to i64
  br label %for.cond41

for.cond13.preheader:                             ; preds = %for.cond10
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv32, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc35
  %indvars.iv29 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next30, %for.inc35 ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.inc38, label %for.body17

for.body17:                                       ; preds = %for.cond13
  %arrayidx19 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv29
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %arrayidx21 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next30
  %5 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !9
  %cmp22 = icmp sgt i32 %4, %5
  br i1 %cmp22, label %if.then23, label %for.inc35

if.then23:                                        ; preds = %for.body17
  store i32 %5, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body17, %if.then23
  br label %for.cond13, !llvm.loop !13

for.inc38:                                        ; preds = %for.cond13
  %inc39 = add nuw i32 %i.1, 1
  %indvars.iv.next33 = add i32 %indvars.iv32, -1
  br label %for.cond10, !llvm.loop !14

for.cond41:                                       ; preds = %for.cond41.preheader, %for.body43
  %indvars.iv36 = phi i64 [ 0, %for.cond41.preheader ], [ %indvars.iv.next37, %for.body43 ]
  %exitcond44.not = icmp eq i64 %indvars.iv36, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end56, label %for.body43

for.body43:                                       ; preds = %for.cond41
  %cmp44 = icmp eq i64 %indvars.iv36, 0
  %arrayidx47 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv36
  %6 = load i32, ptr %arrayidx47, align 4, !tbaa !5, !invariant.load !9
  %.str..str.1 = select i1 %cmp44, ptr @.str, ptr @.str.1
  %call48 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %6)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond41, !llvm.loop !15

for.end56:                                        ; preds = %for.cond41
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nofree willreturn }
attributes #7 = { nounwind }

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
