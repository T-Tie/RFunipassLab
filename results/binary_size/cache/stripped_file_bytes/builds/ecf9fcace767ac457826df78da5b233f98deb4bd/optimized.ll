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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %a, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %b, i8 0, i64 2000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.body, label %for.end56

for.cond10.preheader:                             ; preds = %for.inc
  %sub = add i32 %t.1, -1
  %cmp1130 = icmp sgt i32 %t.1, 1
  br i1 %cmp1130, label %for.cond13.preheader, label %for.cond41.preheader

for.body:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %t.026 = phi i32 [ %t.1, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = and i32 %1, 1
  %cmp4.not = icmp eq i32 %2, 0
  br i1 %cmp4.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %t.026 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %t.026, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %t.1 = phi i32 [ %inc, %if.then ], [ %t.026, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond10.preheader, !llvm.loop !9

for.cond13.preheader:                             ; preds = %for.cond10.preheader, %for.inc38
  %indvars.iv39 = phi i32 [ %indvars.iv.next40, %for.inc38 ], [ %sub, %for.cond10.preheader ]
  %i.131 = phi i32 [ %inc39, %for.inc38 ], [ 0, %for.cond10.preheader ]
  %cmp1628 = icmp sgt i32 %sub, %i.131
  br i1 %cmp1628, label %for.body17.preheader, label %for.inc38

for.body17.preheader:                             ; preds = %for.cond13.preheader
  %wide.trip.count = zext i32 %indvars.iv39 to i64
  %.pre = load i32, ptr %b, align 16, !tbaa !5
  br label %for.body17

for.cond41.preheader:                             ; preds = %for.inc38, %for.cond10.preheader
  %cmp4232 = icmp sgt i32 %t.1, 0
  br i1 %cmp4232, label %for.body43.preheader, label %for.end56

for.body43.preheader:                             ; preds = %for.cond41.preheader
  %wide.trip.count47 = zext nneg i32 %t.1 to i64
  br label %for.body43

for.body17:                                       ; preds = %for.body17.preheader, %for.inc35
  %5 = phi i32 [ %.pre, %for.body17.preheader ], [ %7, %for.inc35 ]
  %indvars.iv36 = phi i64 [ 0, %for.body17.preheader ], [ %indvars.iv.next37, %for.inc35 ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %arrayidx21 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next37
  %6 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %5, %6
  br i1 %cmp22, label %if.then23, label %for.inc35

if.then23:                                        ; preds = %for.body17
  %arrayidx19 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv36
  store i32 %6, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body17, %if.then23
  %7 = phi i32 [ %6, %for.body17 ], [ %5, %if.then23 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count
  br i1 %exitcond.not, label %for.inc38, label %for.body17, !llvm.loop !12

for.inc38:                                        ; preds = %for.inc35, %for.cond13.preheader
  %inc39 = add nuw nsw i32 %i.131, 1
  %indvars.iv.next40 = add i32 %indvars.iv39, -1
  %exitcond41.not = icmp eq i32 %inc39, %sub
  br i1 %exitcond41.not, label %for.cond41.preheader, label %for.cond13.preheader, !llvm.loop !13

for.body43:                                       ; preds = %for.body43.preheader, %for.body43
  %indvars.iv42 = phi i64 [ 0, %for.body43.preheader ], [ %indvars.iv.next43, %for.body43 ]
  %8 = and i64 %indvars.iv42, 4294967295
  %cmp44 = icmp eq i64 %8, 0
  %arrayidx47 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv42
  %9 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %.str..str.1 = select i1 %cmp44, ptr @.str, ptr @.str.1
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %9)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond48.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count47
  br i1 %exitcond48.not, label %for.end56, label %for.body43, !llvm.loop !14

for.end56:                                        ; preds = %for.body43, %entry, %for.cond41.preheader
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
