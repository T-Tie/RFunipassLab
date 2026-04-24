; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0cb_cxg9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [26 x i32], align 16
  %d = alloca [26 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %2 = zext i32 %0 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %s, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %add.ptr)
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.end20
  %indvars.iv26 = phi i64 [ %2, %for.cond2.preheader ], [ %3, %for.end20 ]
  %3 = add nsw i64 %indvars.iv26, -1
  %4 = trunc nuw i64 %indvars.iv26 to i32
  %cmp3 = icmp sgt i32 %4, 0
  br i1 %cmp3, label %for.cond5.preheader, label %for.cond26.preheader

for.cond26.preheader:                             ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond26

for.cond5.preheader:                              ; preds = %for.cond2
  %arrayidx12 = getelementptr inbounds nuw [26 x i32], ptr %s, i64 0, i64 %3
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc18
  %indvars.iv28 = phi i64 [ %indvars.iv26, %for.cond5.preheader ], [ %indvars.iv.next29, %for.inc18 ]
  %k.0 = phi i32 [ 0, %for.cond5.preheader ], [ %k.1, %for.inc18 ]
  %5 = trunc nuw i64 %indvars.iv28 to i32
  %cmp6 = icmp sgt i32 %0, %5
  br i1 %cmp6, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %indvars.iv28
  %6 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %k.0, %6
  br i1 %cmp10, label %land.lhs.true, label %for.inc18

land.lhs.true:                                    ; preds = %for.body7
  %7 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw [26 x i32], ptr %s, i64 0, i64 %indvars.iv28
  %8 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15.not = icmp slt i32 %7, %8
  %spec.select = select i1 %cmp15.not, i32 %k.0, i32 %6
  br label %for.inc18

for.inc18:                                        ; preds = %land.lhs.true, %for.body7
  %k.1 = phi i32 [ %k.0, %for.body7 ], [ %spec.select, %land.lhs.true ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond5, !llvm.loop !12

for.end20:                                        ; preds = %for.cond5
  %inc21 = add nuw nsw i32 %k.0, 1
  %arrayidx23 = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %3
  store i32 %inc21, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.cond26:                                       ; preds = %for.cond26.preheader, %for.body28
  %indvars.iv33 = phi i64 [ 0, %for.cond26.preheader ], [ %indvars.iv.next34, %for.body28 ]
  %k.2 = phi i32 [ 0, %for.cond26.preheader ], [ %spec.select23, %for.body28 ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond.not, label %for.end38, label %for.body28

for.body28:                                       ; preds = %for.cond26
  %arrayidx30 = getelementptr inbounds nuw [26 x i32], ptr %d, i64 0, i64 %indvars.iv33
  %9 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %spec.select23 = call i32 @llvm.smax.i32(i32 %9, i32 %k.2)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond26, !llvm.loop !14

for.end38:                                        ; preds = %for.cond26
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %k.2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %s) #5
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
