; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzg4b0svh.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [15 x i32]], align 16
  %b = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 6000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %b, i8 0, i64 400, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv40 = phi i32 [ %indvars.iv.next41, %for.end ], [ 0, %entry ]
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.end ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x [15 x i32]], ptr %a, i64 0, i64 %indvars.iv24
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %for.cond25.preheader, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv24
  %arrayidx7.promoted = load i32, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.cond5

for.cond25.preheader:                             ; preds = %for.cond
  %wide.trip.count42 = zext i32 %indvars.iv40 to i64
  br label %for.cond25

for.cond5:                                        ; preds = %for.cond5, %for.cond5.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond5 ], [ 1, %for.cond5.preheader ]
  %inc22 = phi i32 [ %inc, %for.cond5 ], [ %arrayidx7.promoted, %for.cond5.preheader ]
  %inc = add nsw i32 %inc22, 1
  %arrayidx11 = getelementptr inbounds nuw [100 x [15 x i32]], ptr %a, i64 0, i64 %indvars.iv24, i64 %indvars.iv
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx11)
  %1 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %1, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp17, label %for.end, label %for.cond5, !llvm.loop !9

for.end:                                          ; preds = %for.cond5
  store i32 %inc, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %indvars.iv.next41 = add nuw i32 %indvars.iv40, 1
  br label %for.cond, !llvm.loop !12

for.cond25:                                       ; preds = %for.cond25.preheader, %for.end54
  %indvars.iv37 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next38, %for.end54 ]
  %exitcond43.not = icmp eq i64 %indvars.iv37, %wide.trip.count42
  br i1 %exitcond43.not, label %for.end58, label %for.cond27.preheader

for.cond27.preheader:                             ; preds = %for.cond25
  %arrayidx29 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv37
  %2 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %wide.trip.count35 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond27

for.cond27:                                       ; preds = %for.cond27.preheader, %for.end50
  %indvars.iv32 = phi i64 [ 0, %for.cond27.preheader ], [ %indvars.iv.next33, %for.end50 ]
  %x.0 = phi i32 [ 0, %for.cond27.preheader ], [ %add51, %for.end50 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count35
  br i1 %exitcond36.not, label %for.end54, label %for.cond32.preheader

for.cond32.preheader:                             ; preds = %for.cond27
  %arrayidx44 = getelementptr inbounds nuw [100 x [15 x i32]], ptr %a, i64 0, i64 %indvars.iv37, i64 %indvars.iv32
  br label %for.cond32

for.cond32:                                       ; preds = %for.cond32.preheader, %for.body36
  %indvars.iv29 = phi i64 [ 0, %for.cond32.preheader ], [ %indvars.iv.next30, %for.body36 ]
  %s.0 = phi i32 [ 0, %for.cond32.preheader ], [ %spec.select, %for.body36 ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.end50, label %for.body36

for.body36:                                       ; preds = %for.cond32
  %arrayidx40 = getelementptr inbounds nuw [100 x [15 x i32]], ptr %a, i64 0, i64 %indvars.iv37, i64 %indvars.iv29
  %3 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %4 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %mul, %4
  %add = zext i1 %cmp45 to i32
  %spec.select = add nuw nsw i32 %s.0, %add
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond32, !llvm.loop !13

for.end50:                                        ; preds = %for.cond32
  %add51 = add nuw nsw i32 %s.0, %x.0
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond27, !llvm.loop !14

for.end54:                                        ; preds = %for.cond27
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %x.0)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond25, !llvm.loop !15

for.end58:                                        ; preds = %for.cond25
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 6000, ptr nonnull %a) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
