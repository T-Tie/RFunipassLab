; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2o21wjq8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [26 x i32], align 16
  %g = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %g) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp.not28 = icmp slt i32 %0, 1
  br i1 %cmp.not28, label %for.end64, label %for.body

for.cond2.preheader:                              ; preds = %for.body
  %cmp3.not30 = icmp slt i32 %6, 1
  br i1 %cmp3.not30, label %for.end64, label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %1 = add nuw i32 %6, 1
  %wide.trip.count = zext i32 %1 to i64
  %2 = zext nneg i32 %6 to i64
  %min.iters.check = icmp ult i32 %6, 4
  br i1 %min.iters.check, label %for.body4.preheader75, label %vector.ph

vector.ph:                                        ; preds = %for.body4.preheader
  %n.vec = and i64 %2, 2147483644
  %3 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %4 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %offset.idx
  store <4 x i32> splat (i32 1), ptr %4, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %2
  br i1 %cmp.n, label %for.cond10.preheader, label %for.body4.preheader75

for.body4.preheader75:                            ; preds = %for.body4.preheader, %middle.block
  %indvars.iv44.ph = phi i64 [ 1, %for.body4.preheader ], [ %3, %middle.block ]
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %7
  br i1 %cmp.not.not, label %for.body, label %for.cond2.preheader, !llvm.loop !14

for.cond10.preheader:                             ; preds = %for.body4, %middle.block
  %cmp1135.not = icmp eq i32 %6, 1
  br i1 %cmp1135.not, label %for.end64, label %for.cond13.preheader.preheader

for.cond13.preheader.preheader:                   ; preds = %for.cond10.preheader
  %8 = zext nneg i32 %6 to i64
  %9 = zext nneg i32 %6 to i64
  br label %for.cond13.preheader

for.body4:                                        ; preds = %for.body4.preheader75, %for.body4
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body4 ], [ %indvars.iv44.ph, %for.body4.preheader75 ]
  %arrayidx6 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %indvars.iv44
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body4, !llvm.loop !15

for.cond10.loopexit:                              ; preds = %for.inc32, %for.cond13.preheader
  %cmp11 = icmp sgt i64 %indvars.iv47, 2
  br i1 %cmp11, label %for.cond13.preheader, label %for.body39.preheader, !llvm.loop !16

for.cond13.preheader:                             ; preds = %for.cond13.preheader.preheader, %for.cond10.loopexit
  %indvars.iv47 = phi i64 [ %8, %for.cond13.preheader.preheader ], [ %indvars.iv.next48, %for.cond10.loopexit ]
  %indvars.iv.next48 = add nsw i64 %indvars.iv47, -1
  %cmp14.not32 = icmp sgt i64 %indvars.iv47, %9
  br i1 %cmp14.not32, label %for.cond10.loopexit, label %for.body15.lr.ph

for.body15.lr.ph:                                 ; preds = %for.cond13.preheader
  %arrayidx17 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv.next48
  %10 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %arrayidx22 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %indvars.iv.next48
  br label %for.body15

for.body39.preheader:                             ; preds = %for.cond10.loopexit
  %11 = add nuw i32 %6, 1
  %wide.trip.count63 = zext nneg i32 %6 to i64
  %wide.trip.count58 = zext i32 %11 to i64
  br label %for.body43.lr.ph

for.body15:                                       ; preds = %for.body15.lr.ph, %for.inc32
  %indvars.iv49 = phi i64 [ %indvars.iv47, %for.body15.lr.ph ], [ %indvars.iv.next50, %for.inc32 ]
  %arrayidx19 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv49
  %12 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20.not = icmp slt i32 %10, %12
  br i1 %cmp20.not, label %for.inc32, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body15
  %13 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %arrayidx25 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %indvars.iv49
  %14 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26.not = icmp sgt i32 %13, %14
  br i1 %cmp26.not, label %for.inc32, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add29 = add nsw i32 %14, 1
  store i32 %add29, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body15, %land.lhs.true, %if.then
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %15 = trunc nuw i64 %indvars.iv49 to i32
  %cmp14.not.not = icmp sgt i32 %6, %15
  br i1 %cmp14.not.not, label %for.body15, label %for.cond10.loopexit, !llvm.loop !17

for.cond37.loopexit:                              ; preds = %for.inc59
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %for.end64, label %for.body43.lr.ph, !llvm.loop !18

for.body43.lr.ph:                                 ; preds = %for.cond37.loopexit, %for.body39.preheader
  %indvars.iv60 = phi i64 [ 1, %for.body39.preheader ], [ %indvars.iv.next61, %for.cond37.loopexit ]
  %indvars.iv53 = phi i64 [ 2, %for.body39.preheader ], [ %indvars.iv.next54, %for.cond37.loopexit ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %arrayidx45 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %indvars.iv60
  br label %for.body43

for.body43:                                       ; preds = %for.body43.lr.ph, %for.inc59
  %indvars.iv55 = phi i64 [ %indvars.iv53, %for.body43.lr.ph ], [ %indvars.iv.next56, %for.inc59 ]
  %16 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %arrayidx47 = getelementptr inbounds nuw [26 x i32], ptr %g, i64 0, i64 %indvars.iv55
  %17 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %16, %17
  br i1 %cmp48, label %if.then49, label %for.inc59

if.then49:                                        ; preds = %for.body43
  store i32 %17, ptr %arrayidx45, align 4, !tbaa !5
  store i32 %16, ptr %arrayidx47, align 4, !tbaa !5
  br label %for.inc59

for.inc59:                                        ; preds = %for.body43, %if.then49
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %for.cond37.loopexit, label %for.body43, !llvm.loop !19

for.end64:                                        ; preds = %for.cond37.loopexit, %for.cond10.preheader, %entry, %for.cond2.preheader
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %g, i64 4
  %18 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %call66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %18)
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %g) #4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
