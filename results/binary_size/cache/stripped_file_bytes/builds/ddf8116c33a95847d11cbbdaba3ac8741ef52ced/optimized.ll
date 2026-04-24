; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7m1pkppq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %h = alloca [26 x i32], align 16
  %q = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %h) #5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not26 = icmp slt i32 %0, 1
  br i1 %cmp.not26, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %q) #5
  br label %for.end50

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %h, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %q) #5
  %cmp3.not28 = icmp slt i32 %1, 1
  br i1 %cmp3.not28, label %for.end50, label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.end
  %3 = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %3 to i64
  %4 = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %for.body4.preheader86, label %vector.ph

vector.ph:                                        ; preds = %for.body4.preheader
  %n.vec = and i64 %4, 2147483644
  %5 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %6 = getelementptr inbounds nuw [26 x i32], ptr %q, i64 0, i64 %offset.idx
  store <4 x i32> splat (i32 1), ptr %6, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %4
  br i1 %cmp.n, label %for.cond10.preheader, label %for.body4.preheader86

for.body4.preheader86:                            ; preds = %for.body4.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ 1, %for.body4.preheader ], [ %5, %middle.block ]
  br label %for.body4

for.cond10.preheader:                             ; preds = %for.body4, %middle.block
  %cmp1135.not = icmp eq i32 %1, 1
  br i1 %cmp1135.not, label %for.body40.preheader, label %for.cond13.preheader.preheader

for.cond13.preheader.preheader:                   ; preds = %for.cond10.preheader
  %8 = zext nneg i32 %1 to i64
  %9 = zext nneg i32 %1 to i64
  br label %for.cond13.preheader

for.body4:                                        ; preds = %for.body4.preheader86, %for.body4
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body4 ], [ %indvars.iv44.ph, %for.body4.preheader86 ]
  %arrayidx6 = getelementptr inbounds nuw [26 x i32], ptr %q, i64 0, i64 %indvars.iv44
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body4, !llvm.loop !15

for.cond13.preheader:                             ; preds = %for.cond13.preheader.preheader, %for.end30
  %indvars.iv47 = phi i64 [ %8, %for.cond13.preheader.preheader ], [ %indvars.iv.next48, %for.end30 ]
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  %cmp14.not30 = icmp sgt i64 %indvars.iv47, %9
  br i1 %cmp14.not30, label %for.end30, label %for.body15.lr.ph

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %arrayidx19 = getelementptr inbounds nuw [26 x i32], ptr %h, i64 0, i64 %indvars.iv.next48
  %10 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.body15

for.body40.preheader:                             ; preds = %for.end30, %for.cond10.preheader
  %.lcssa606672 = phi i32 [ 1, %for.cond10.preheader ], [ %1, %for.end30 ]
  %11 = add nuw i32 %.lcssa606672, 1
  %wide.trip.count56 = zext i32 %11 to i64
  %12 = zext nneg i32 %.lcssa606672 to i64
  %min.iters.check74 = icmp ult i32 %.lcssa606672, 4
  br i1 %min.iters.check74, label %for.body40.preheader85, label %vector.ph75

vector.ph75:                                      ; preds = %for.body40.preheader
  %n.vec77 = and i64 %12, 2147483644
  %13 = or disjoint i64 %n.vec77, 1
  br label %vector.body78

vector.body78:                                    ; preds = %vector.body78, %vector.ph75
  %index79 = phi i64 [ 0, %vector.ph75 ], [ %index.next81, %vector.body78 ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph75 ], [ %15, %vector.body78 ]
  %offset.idx80 = or disjoint i64 %index79, 1
  %14 = getelementptr inbounds nuw [26 x i32], ptr %q, i64 0, i64 %offset.idx80
  %wide.load = load <4 x i32>, ptr %14, align 4, !tbaa !5
  %15 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %index.next81 = add nuw i64 %index79, 4
  %16 = icmp eq i64 %index.next81, %n.vec77
  br i1 %16, label %middle.block82, label %vector.body78, !llvm.loop !16

middle.block82:                                   ; preds = %vector.body78
  %17 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %15)
  %cmp.n83 = icmp eq i64 %n.vec77, %12
  br i1 %cmp.n83, label %for.end50, label %for.body40.preheader85

for.body40.preheader85:                           ; preds = %for.body40.preheader, %middle.block82
  %indvars.iv53.ph = phi i64 [ 1, %for.body40.preheader ], [ %13, %middle.block82 ]
  %m.239.ph = phi i32 [ 0, %for.body40.preheader ], [ %17, %middle.block82 ]
  br label %for.body40

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc28
  %indvars.iv49 = phi i64 [ %indvars.iv47, %for.body15.lr.ph ], [ %indvars.iv.next50, %for.inc28 ]
  %m.032 = phi i32 [ 0, %for.body15.lr.ph ], [ %m.1, %for.inc28 ]
  %arrayidx17 = getelementptr inbounds nuw [26 x i32], ptr %h, i64 0, i64 %indvars.iv49
  %18 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp20.not = icmp sgt i32 %18, %10
  br i1 %cmp20.not, label %for.inc28, label %if.then

if.then:                                          ; preds = %for.body15
  %arrayidx22 = getelementptr inbounds nuw [26 x i32], ptr %q, i64 0, i64 %indvars.iv49
  %19 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %m.032, i32 %19)
  br label %for.inc28

for.inc28:                                        ; preds = %if.then, %for.body15
  %m.1 = phi i32 [ %m.032, %for.body15 ], [ %spec.select, %if.then ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %20 = trunc nuw i64 %indvars.iv49 to i32
  %cmp14.not.not = icmp sgt i32 %1, %20
  br i1 %cmp14.not.not, label %for.body15, label %for.end30, !llvm.loop !17

for.end30:                                        ; preds = %for.inc28, %for.cond13.preheader
  %m.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ %m.1, %for.inc28 ]
  %arrayidx32 = getelementptr inbounds nuw [26 x i32], ptr %q, i64 0, i64 %indvars.iv.next48
  %21 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %add33 = add nsw i32 %21, %m.0.lcssa
  store i32 %add33, ptr %arrayidx32, align 4, !tbaa !5
  %cmp11 = icmp sgt i64 %indvars.iv47, 2
  br i1 %cmp11, label %for.cond13.preheader, label %for.body40.preheader, !llvm.loop !18

for.body40:                                       ; preds = %for.body40.preheader85, %for.body40
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body40 ], [ %indvars.iv53.ph, %for.body40.preheader85 ]
  %m.239 = phi i32 [ %spec.select25, %for.body40 ], [ %m.239.ph, %for.body40.preheader85 ]
  %arrayidx42 = getelementptr inbounds nuw [26 x i32], ptr %q, i64 0, i64 %indvars.iv53
  %22 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %spec.select25 = call i32 @llvm.smax.i32(i32 %m.239, i32 %22)
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end50, label %for.body40, !llvm.loop !19

for.end50:                                        ; preds = %for.body40, %middle.block82, %for.end.thread, %for.end
  %m.2.lcssa = phi i32 [ 0, %for.end ], [ 0, %for.end.thread ], [ %17, %middle.block82 ], [ %spec.select25, %for.body40 ]
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %m.2.lcssa)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %q) #5
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %h) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11, !13, !14}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !13}
