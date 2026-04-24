; ModuleID = '<stdin>'
source_filename = "/tmp/tmpo0jhhppi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress nofree norecurse nounwind uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  %b = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %b) #5
  %0 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i = tail call i32 @getc(ptr noundef %0)
  %sext40 = shl i32 %call.i, 24
  %cmp.not42 = icmp eq i32 %sext40, 167772160
  br i1 %cmp.not42, label %if.then63, label %while.body

for.cond.preheader:                               ; preds = %if.end17
  %1 = icmp eq i32 %l.2, 0
  %cmp2250 = icmp sgt i32 %i.138, 0
  br i1 %cmp2250, label %for.cond21.preheader.us.preheader, label %for.cond39.preheader

for.cond21.preheader.us.preheader:                ; preds = %for.cond.preheader
  %wide.trip.count = zext nneg i32 %i.138 to i64
  %min.iters.check = icmp ult i32 %i.138, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond21.preheader.us

for.cond21.preheader.us:                          ; preds = %for.cond21.preheader.us.preheader, %for.inc36.us
  %i.254.us = phi i32 [ %inc37.us, %for.inc36.us ], [ 65, %for.cond21.preheader.us.preheader ]
  br i1 %min.iters.check, label %for.body23.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond21.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.254.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %6, %vector.body ]
  %2 = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %2, align 4, !tbaa !10
  %3 = sext <4 x i8> %wide.load to <4 x i32>
  %4 = icmp eq <4 x i32> %broadcast.splat, %3
  %5 = zext <4 x i1> %4 to <4 x i32>
  %6 = add <4 x i32> %vec.phi, %5
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !11

middle.block:                                     ; preds = %vector.body
  %8 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %6)
  br i1 %cmp.n, label %for.cond21.for.end_crit_edge.us, label %for.body23.us.preheader

for.body23.us.preheader:                          ; preds = %for.cond21.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.cond21.preheader.us ], [ %n.vec, %middle.block ]
  %k.052.us.ph = phi i32 [ 0, %for.cond21.preheader.us ], [ %8, %middle.block ]
  br label %for.body23.us

if.then33.us:                                     ; preds = %for.cond21.for.end_crit_edge.us
  %call34.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.254.us, i32 noundef %spec.select.us.lcssa)
  br label %for.inc36.us

for.inc36.us:                                     ; preds = %if.then33.us, %for.cond21.for.end_crit_edge.us
  %inc37.us = add nuw nsw i32 %i.254.us, 1
  %exitcond64.not = icmp eq i32 %inc37.us, 91
  br i1 %exitcond64.not, label %for.cond39.preheader, label %for.cond21.preheader.us, !llvm.loop !16

for.body23.us:                                    ; preds = %for.body23.us.preheader, %for.body23.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body23.us ], [ %indvars.iv.ph, %for.body23.us.preheader ]
  %k.052.us = phi i32 [ %spec.select.us, %for.body23.us ], [ %k.052.us.ph, %for.body23.us.preheader ]
  %arrayidx25.us = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv
  %9 = load i8, ptr %arrayidx25.us, align 1, !tbaa !10
  %conv26.us = sext i8 %9 to i32
  %cmp27.us = icmp eq i32 %i.254.us, %conv26.us
  %inc29.us = zext i1 %cmp27.us to i32
  %spec.select.us = add nuw nsw i32 %k.052.us, %inc29.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond21.for.end_crit_edge.us, label %for.body23.us, !llvm.loop !17

for.cond21.for.end_crit_edge.us:                  ; preds = %for.body23.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %8, %middle.block ], [ %spec.select.us, %for.body23.us ]
  %cmp32.not.us = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %cmp32.not.us, label %for.inc36.us, label %if.then33.us

while.body:                                       ; preds = %entry, %if.end17
  %conv147.in = phi i32 [ %sext, %if.end17 ], [ %sext40, %entry ]
  %c.046.in = phi i32 [ %call.i34, %if.end17 ], [ %call.i, %entry ]
  %l.045 = phi i32 [ %l.2, %if.end17 ], [ 0, %entry ]
  %i.044 = phi i32 [ %i.138, %if.end17 ], [ 0, %entry ]
  %j.043 = phi i32 [ %j.1, %if.end17 ], [ 0, %entry ]
  %c.046 = trunc i32 %c.046.in to i8
  %conv147 = ashr exact i32 %conv147.in, 24
  %10 = add nsw i32 %conv147, -65
  %or.cond = icmp ult i32 %10, 26
  br i1 %or.cond, label %if.end.thread, label %if.end

if.end.thread:                                    ; preds = %while.body
  %idxprom = sext i32 %i.044 to i64
  %arrayidx = getelementptr inbounds [300 x i8], ptr %a, i64 0, i64 %idxprom
  store i8 %c.046, ptr %arrayidx, align 1, !tbaa !10
  %inc = add nsw i32 %i.044, 1
  %inc6 = add nsw i32 %l.045, 1
  br label %if.end17

if.end:                                           ; preds = %while.body
  %11 = add nsw i32 %conv147, -97
  %or.cond1 = icmp ult i32 %11, 26
  br i1 %or.cond1, label %if.then12, label %if.end17

if.then12:                                        ; preds = %if.end
  %idxprom13 = sext i32 %j.043 to i64
  %arrayidx14 = getelementptr inbounds [300 x i8], ptr %b, i64 0, i64 %idxprom13
  store i8 %c.046, ptr %arrayidx14, align 1, !tbaa !10
  %inc15 = add nsw i32 %j.043, 1
  %inc16 = add nsw i32 %l.045, 1
  br label %if.end17

if.end17:                                         ; preds = %if.end.thread, %if.then12, %if.end
  %i.138 = phi i32 [ %i.044, %if.then12 ], [ %i.044, %if.end ], [ %inc, %if.end.thread ]
  %j.1 = phi i32 [ %inc15, %if.then12 ], [ %j.043, %if.end ], [ %j.043, %if.end.thread ]
  %l.2 = phi i32 [ %inc16, %if.then12 ], [ %l.045, %if.end ], [ %inc6, %if.end.thread ]
  %12 = load ptr, ptr @stdin, align 8, !tbaa !5
  %call.i34 = tail call i32 @getc(ptr noundef %12)
  %sext = shl i32 %call.i34, 24
  %cmp.not = icmp eq i32 %sext, 167772160
  br i1 %cmp.not, label %for.cond.preheader, label %while.body, !llvm.loop !18

for.cond39.preheader:                             ; preds = %for.inc36.us, %for.cond.preheader
  %cmp4355 = icmp sgt i32 %j.1, 0
  br i1 %cmp4355, label %for.cond42.preheader.us.preheader, label %for.end61

for.cond42.preheader.us.preheader:                ; preds = %for.cond39.preheader
  %wide.trip.count68 = zext nneg i32 %j.1 to i64
  %min.iters.check86 = icmp ult i32 %j.1, 4
  %n.vec89 = and i64 %wide.trip.count68, 2147483644
  %cmp.n98 = icmp eq i64 %n.vec89, %wide.trip.count68
  br label %for.cond42.preheader.us

for.cond42.preheader.us:                          ; preds = %for.cond42.preheader.us.preheader, %for.inc59.us
  %i.359.us = phi i32 [ %inc60.us, %for.inc59.us ], [ 97, %for.cond42.preheader.us.preheader ]
  br i1 %min.iters.check86, label %for.body44.us.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %for.cond42.preheader.us
  %broadcast.splatinsert90 = insertelement <4 x i32> poison, i32 %i.359.us, i64 0
  %broadcast.splat91 = shufflevector <4 x i32> %broadcast.splatinsert90, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph87
  %index93 = phi i64 [ 0, %vector.ph87 ], [ %index.next96, %vector.body92 ]
  %vec.phi94 = phi <4 x i32> [ zeroinitializer, %vector.ph87 ], [ %17, %vector.body92 ]
  %13 = getelementptr inbounds nuw [300 x i8], ptr %b, i64 0, i64 %index93
  %wide.load95 = load <4 x i8>, ptr %13, align 4, !tbaa !10
  %14 = sext <4 x i8> %wide.load95 to <4 x i32>
  %15 = icmp eq <4 x i32> %broadcast.splat91, %14
  %16 = zext <4 x i1> %15 to <4 x i32>
  %17 = add <4 x i32> %vec.phi94, %16
  %index.next96 = add nuw i64 %index93, 4
  %18 = icmp eq i64 %index.next96, %n.vec89
  br i1 %18, label %middle.block97, label %vector.body92, !llvm.loop !19

middle.block97:                                   ; preds = %vector.body92
  %19 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %17)
  br i1 %cmp.n98, label %for.cond42.for.end54_crit_edge.us, label %for.body44.us.preheader

for.body44.us.preheader:                          ; preds = %for.cond42.preheader.us, %middle.block97
  %indvars.iv65.ph = phi i64 [ 0, %for.cond42.preheader.us ], [ %n.vec89, %middle.block97 ]
  %k.257.us.ph = phi i32 [ 0, %for.cond42.preheader.us ], [ %19, %middle.block97 ]
  br label %for.body44.us

if.then56.us:                                     ; preds = %for.cond42.for.end54_crit_edge.us
  %call57.us = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.359.us, i32 noundef %spec.select33.us.lcssa)
  br label %for.inc59.us

for.inc59.us:                                     ; preds = %if.then56.us, %for.cond42.for.end54_crit_edge.us
  %inc60.us = add nuw nsw i32 %i.359.us, 1
  %exitcond70.not = icmp eq i32 %inc60.us, 123
  br i1 %exitcond70.not, label %for.end61, label %for.cond42.preheader.us, !llvm.loop !20

for.body44.us:                                    ; preds = %for.body44.us.preheader, %for.body44.us
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body44.us ], [ %indvars.iv65.ph, %for.body44.us.preheader ]
  %k.257.us = phi i32 [ %spec.select33.us, %for.body44.us ], [ %k.257.us.ph, %for.body44.us.preheader ]
  %arrayidx46.us = getelementptr inbounds nuw [300 x i8], ptr %b, i64 0, i64 %indvars.iv65
  %20 = load i8, ptr %arrayidx46.us, align 1, !tbaa !10
  %conv47.us = sext i8 %20 to i32
  %cmp48.us = icmp eq i32 %i.359.us, %conv47.us
  %inc50.us = zext i1 %cmp48.us to i32
  %spec.select33.us = add nuw nsw i32 %k.257.us, %inc50.us
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %for.cond42.for.end54_crit_edge.us, label %for.body44.us, !llvm.loop !21

for.cond42.for.end54_crit_edge.us:                ; preds = %for.body44.us, %middle.block97
  %spec.select33.us.lcssa = phi i32 [ %19, %middle.block97 ], [ %spec.select33.us, %for.body44.us ]
  %cmp55.not.us = icmp eq i32 %spec.select33.us.lcssa, 0
  br i1 %cmp55.not.us, label %for.inc59.us, label %if.then56.us

for.end61:                                        ; preds = %for.inc59.us, %for.cond39.preheader
  br i1 %1, label %if.then63, label %if.end65

if.then63:                                        ; preds = %entry, %for.end61
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %for.end61
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!6 = !{!"p1 _ZTS8_IO_FILE", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!8, !8, i64 0}
!11 = distinct !{!11, !12, !13, !14, !15}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13, !14}
!18 = distinct !{!18, !12, !13}
!19 = distinct !{!19, !12, !13, !14, !15}
!20 = distinct !{!20, !12, !13}
!21 = distinct !{!21, !12, !13, !14}
