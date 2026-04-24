; ModuleID = '<stdin>'
source_filename = "/tmp/tmplrz7d65j.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@__const._Z3dayii.days = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %days.i3 = alloca [13 x i32], align 16
  %days.i = alloca [13 x i32], align 16
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month1) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month2) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not26 = icmp slt i32 %0, 1
  br i1 %cmp.not26, label %for.end, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx.i = getelementptr inbounds nuw i8, ptr %days.i, i64 8
  %arrayidx.i24 = getelementptr inbounds nuw i8, ptr %days.i3, i64 8
  br label %for.body

for.body:                                         ; preds = %for.body.lr.ph, %_Z3dayii.exit25
  %i.027 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %_Z3dayii.exit25 ]
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %month1, ptr noundef nonnull %month2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = load i32, ptr %month1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %days.i) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %days.i, ptr noundef nonnull align 16 dereferenceable(52) @__const._Z3dayii.days, i64 52, i1 false)
  %3 = and i32 %1, 3
  %cmp.i = icmp eq i32 %3, 0
  %rem1.i = srem i32 %1, 100
  %cmp2.not.i = icmp ne i32 %rem1.i, 0
  %or.cond.not7.i = and i1 %cmp.i, %cmp2.not.i
  %rem3.i = srem i32 %1, 400
  %cmp4.i = icmp eq i32 %rem3.i, 0
  %or.cond6.i = or i1 %cmp4.i, %or.cond.not7.i
  br i1 %or.cond6.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %for.body
  store i32 29, ptr %arrayidx.i, align 8, !tbaa !5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body
  %cmp58.i = icmp sgt i32 %2, 1
  br i1 %cmp58.i, label %for.body.preheader.i, label %_Z3dayii.exit

for.body.preheader.i:                             ; preds = %if.end.i
  %wide.trip.count.i = zext nneg i32 %2 to i64
  %4 = add nsw i64 %wide.trip.count.i, -1
  %min.iters.check29 = icmp ult i32 %2, 5
  br i1 %min.iters.check29, label %for.body.i.preheader, label %vector.ph30

vector.ph30:                                      ; preds = %for.body.preheader.i
  %n.vec32 = and i64 %4, -4
  %5 = or disjoint i64 %n.vec32, 1
  br label %vector.body33

vector.body33:                                    ; preds = %vector.body33, %vector.ph30
  %index34 = phi i64 [ 0, %vector.ph30 ], [ %index.next38, %vector.body33 ]
  %vec.phi35 = phi <4 x i32> [ zeroinitializer, %vector.ph30 ], [ %7, %vector.body33 ]
  %offset.idx36 = or disjoint i64 %index34, 1
  %6 = getelementptr inbounds nuw [13 x i32], ptr %days.i, i64 0, i64 %offset.idx36
  %wide.load37 = load <4 x i32>, ptr %6, align 4, !tbaa !5
  %7 = add <4 x i32> %wide.load37, %vec.phi35
  %index.next38 = add nuw i64 %index34, 4
  %8 = icmp eq i64 %index.next38, %n.vec32
  br i1 %8, label %middle.block39, label %vector.body33, !llvm.loop !9

middle.block39:                                   ; preds = %vector.body33
  %9 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %7)
  %cmp.n40 = icmp eq i64 %4, %n.vec32
  br i1 %cmp.n40, label %_Z3dayii.exit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body.preheader.i, %middle.block39
  %indvars.iv.i.ph = phi i64 [ 1, %for.body.preheader.i ], [ %5, %middle.block39 ]
  %c.010.i.ph = phi i32 [ 0, %for.body.preheader.i ], [ %9, %middle.block39 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader ]
  %c.010.i = phi i32 [ %add.i, %for.body.i ], [ %c.010.i.ph, %for.body.i.preheader ]
  %arrayidx6.i = getelementptr inbounds nuw [13 x i32], ptr %days.i, i64 0, i64 %indvars.iv.i
  %10 = load i32, ptr %arrayidx6.i, align 4, !tbaa !5
  %add.i = add nsw i32 %10, %c.010.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z3dayii.exit, label %for.body.i, !llvm.loop !14

_Z3dayii.exit:                                    ; preds = %for.body.i, %middle.block39, %if.end.i
  %c.0.lcssa.i = phi i32 [ 0, %if.end.i ], [ %9, %middle.block39 ], [ %add.i, %for.body.i ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %days.i) #7
  %11 = load i32, ptr %month2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %days.i3) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %days.i3, ptr noundef nonnull align 16 dereferenceable(52) @__const._Z3dayii.days, i64 52, i1 false)
  br i1 %or.cond6.i, label %if.then.i23, label %if.end.i11

if.then.i23:                                      ; preds = %_Z3dayii.exit
  store i32 29, ptr %arrayidx.i24, align 8, !tbaa !5
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.then.i23, %_Z3dayii.exit
  %cmp58.i12 = icmp sgt i32 %11, 1
  br i1 %cmp58.i12, label %for.body.preheader.i14, label %_Z3dayii.exit25

for.body.preheader.i14:                           ; preds = %if.end.i11
  %wide.trip.count.i15 = zext nneg i32 %11 to i64
  %12 = add nsw i64 %wide.trip.count.i15, -1
  %min.iters.check = icmp ult i32 %11, 5
  br i1 %min.iters.check, label %for.body.i16.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader.i14
  %n.vec = and i64 %12, -4
  %13 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %15, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %14 = getelementptr inbounds nuw [13 x i32], ptr %days.i3, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %14, align 4, !tbaa !5
  %15 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %16 = icmp eq i64 %index.next, %n.vec
  br i1 %16, label %middle.block, label %vector.body, !llvm.loop !15

middle.block:                                     ; preds = %vector.body
  %17 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %15)
  %cmp.n = icmp eq i64 %12, %n.vec
  br i1 %cmp.n, label %_Z3dayii.exit25, label %for.body.i16.preheader

for.body.i16.preheader:                           ; preds = %for.body.preheader.i14, %middle.block
  %indvars.iv.i17.ph = phi i64 [ 1, %for.body.preheader.i14 ], [ %13, %middle.block ]
  %c.010.i18.ph = phi i32 [ 0, %for.body.preheader.i14 ], [ %17, %middle.block ]
  br label %for.body.i16

for.body.i16:                                     ; preds = %for.body.i16.preheader, %for.body.i16
  %indvars.iv.i17 = phi i64 [ %indvars.iv.next.i21, %for.body.i16 ], [ %indvars.iv.i17.ph, %for.body.i16.preheader ]
  %c.010.i18 = phi i32 [ %add.i20, %for.body.i16 ], [ %c.010.i18.ph, %for.body.i16.preheader ]
  %arrayidx6.i19 = getelementptr inbounds nuw [13 x i32], ptr %days.i3, i64 0, i64 %indvars.iv.i17
  %18 = load i32, ptr %arrayidx6.i19, align 4, !tbaa !5
  %add.i20 = add nsw i32 %18, %c.010.i18
  %indvars.iv.next.i21 = add nuw nsw i64 %indvars.iv.i17, 1
  %exitcond.not.i22 = icmp eq i64 %indvars.iv.next.i21, %wide.trip.count.i15
  br i1 %exitcond.not.i22, label %_Z3dayii.exit25, label %for.body.i16, !llvm.loop !16

_Z3dayii.exit25:                                  ; preds = %for.body.i16, %middle.block, %if.end.i11
  %c.0.lcssa.i13 = phi i32 [ 0, %if.end.i11 ], [ %17, %middle.block ], [ %add.i20, %for.body.i16 ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %days.i3) #7
  %sub = sub nsw i32 %c.0.lcssa.i, %c.0.lcssa.i13
  %rem = srem i32 %sub, 7
  %cmp4 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp4, ptr @str.1, ptr @str
  %puts2 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %inc = add nuw nsw i32 %i.027, 1
  %19 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.027, %19
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !17

for.end:                                          ; preds = %_Z3dayii.exit25, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month2) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month1) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_Z3dayii(i32 noundef %year, i32 noundef %month) local_unnamed_addr #3 {
entry:
  %days = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %days) #7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %days, ptr noundef nonnull align 16 dereferenceable(52) @__const._Z3dayii.days, i64 52, i1 false)
  %0 = and i32 %year, 3
  %cmp = icmp eq i32 %0, 0
  %rem1 = srem i32 %year, 100
  %cmp2.not = icmp ne i32 %rem1, 0
  %or.cond.not7 = and i1 %cmp, %cmp2.not
  %rem3 = srem i32 %year, 400
  %cmp4 = icmp eq i32 %rem3, 0
  %or.cond6 = or i1 %cmp4, %or.cond.not7
  br i1 %or.cond6, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %days, i64 8
  store i32 29, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %entry, %if.then
  %cmp58 = icmp sgt i32 %month, 1
  br i1 %cmp58, label %for.body.preheader, label %for.end

for.body.preheader:                               ; preds = %if.end
  %wide.trip.count = zext nneg i32 %month to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %month, 5
  br i1 %min.iters.check, label %for.body.preheader12, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %1, -4
  %2 = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %3 = getelementptr inbounds nuw [13 x i32], ptr %days, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %4 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %6 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %for.end, label %for.body.preheader12

for.body.preheader12:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %for.body.preheader ], [ %2, %middle.block ]
  %c.010.ph = phi i32 [ 0, %for.body.preheader ], [ %6, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader12, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader12 ]
  %c.010 = phi i32 [ %add, %for.body ], [ %c.010.ph, %for.body.preheader12 ]
  %arrayidx6 = getelementptr inbounds nuw [13 x i32], ptr %days, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add = add nsw i32 %7, %c.010
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body, !llvm.loop !19

for.end:                                          ; preds = %for.body, %middle.block, %if.end
  %c.0.lcssa = phi i32 [ 0, %if.end ], [ %6, %middle.block ], [ %add, %for.body ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %days) #7
  ret i32 %c.0.lcssa
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11, !12, !13}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11, !12}
