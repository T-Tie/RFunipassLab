; ModuleID = '<stdin>'
source_filename = "/tmp/tmpto_oqaum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %zfc = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %zfc) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %zfc)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %zfc) #7
  %conv = trunc i64 %call2 to i32
  %cmp414 = icmp sgt i32 %conv, 0
  br i1 %cmp414, label %for.cond3.preheader.us.preheader, label %if.then33

for.cond3.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count = and i64 %call2, 2147483647
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %n.vec = and i64 %call2, 2147483644
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.inc13.us
  %k.017.us = phi i32 [ %inc14.us, %for.inc13.us ], [ 97, %for.cond3.preheader.us.preheader ]
  br i1 %min.iters.check, label %for.body5.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond3.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %k.017.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %0 = getelementptr inbounds nuw [300 x i8], ptr %zfc, i64 0, i64 %index
  %wide.load = load <4 x i8>, ptr %0, align 4, !tbaa !5
  %1 = sext <4 x i8> %wide.load to <4 x i32>
  %2 = icmp eq <4 x i32> %broadcast.splat, %1
  %3 = zext <4 x i1> %2 to <4 x i32>
  %4 = add <4 x i32> %vec.phi, %3
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %6 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %4)
  br i1 %cmp.n, label %for.cond3.for.end_crit_edge.us, label %for.body5.us.preheader

for.body5.us.preheader:                           ; preds = %for.cond3.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.cond3.preheader.us ], [ %n.vec, %middle.block ]
  %sum.116.us.ph = phi i32 [ 0, %for.cond3.preheader.us ], [ %6, %middle.block ]
  br label %for.body5.us

if.then10.us:                                     ; preds = %for.cond3.for.end_crit_edge.us
  %call11.us = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %k.017.us, i32 noundef %spec.select.us.lcssa)
  br label %for.inc13.us

for.inc13.us:                                     ; preds = %if.then10.us, %for.cond3.for.end_crit_edge.us
  %inc14.us = add nuw nsw i32 %k.017.us, 1
  %exitcond23.not = icmp eq i32 %inc14.us, 123
  br i1 %exitcond23.not, label %for.body18.preheader, label %for.cond3.preheader.us, !llvm.loop !13

for.body5.us:                                     ; preds = %for.body5.us.preheader, %for.body5.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5.us ], [ %indvars.iv.ph, %for.body5.us.preheader ]
  %sum.116.us = phi i32 [ %spec.select.us, %for.body5.us ], [ %sum.116.us.ph, %for.body5.us.preheader ]
  %arrayidx.us = getelementptr inbounds nuw [300 x i8], ptr %zfc, i64 0, i64 %indvars.iv
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !5
  %conv6.us = sext i8 %7 to i32
  %cmp7.us = icmp eq i32 %k.017.us, %conv6.us
  %inc.us = zext i1 %cmp7.us to i32
  %spec.select.us = add nuw nsw i32 %sum.116.us, %inc.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond3.for.end_crit_edge.us, label %for.body5.us, !llvm.loop !14

for.cond3.for.end_crit_edge.us:                   ; preds = %for.body5.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %6, %middle.block ], [ %spec.select.us, %for.body5.us ]
  %cmp9.not.us = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %cmp9.not.us, label %for.inc13.us, label %if.then10.us

for.body18.preheader:                             ; preds = %for.inc13.us
  %wide.trip.count27 = and i64 %call2, 2147483647
  %min.iters.check31 = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check31, label %for.body18.preheader46, label %vector.ph32

vector.ph32:                                      ; preds = %for.body18.preheader
  %n.vec34 = and i64 %call2, 2147483644
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph32
  %index36 = phi i64 [ 0, %vector.ph32 ], [ %index.next39, %vector.body35 ]
  %vec.phi37 = phi <4 x i1> [ zeroinitializer, %vector.ph32 ], [ %11, %vector.body35 ]
  %8 = getelementptr inbounds nuw [300 x i8], ptr %zfc, i64 0, i64 %index36
  %wide.load38 = load <4 x i8>, ptr %8, align 4, !tbaa !5
  %wide.load38.fr = freeze <4 x i8> %wide.load38
  %9 = add <4 x i8> %wide.load38.fr, splat (i8 -97)
  %10 = icmp ult <4 x i8> %9, splat (i8 26)
  %11 = or <4 x i1> %vec.phi37, %10
  %index.next39 = add nuw i64 %index36, 4
  %12 = icmp eq i64 %index.next39, %n.vec34
  br i1 %12, label %middle.block40, label %vector.body35, !llvm.loop !15

middle.block40:                                   ; preds = %vector.body35
  %13 = bitcast <4 x i1> %11 to i4
  %.not = icmp ne i4 %13, 0
  %rdx.select = zext i1 %.not to i32
  %cmp.n41 = icmp eq i64 %wide.trip.count, %n.vec34
  br i1 %cmp.n41, label %for.end31, label %for.body18.preheader46

for.body18.preheader46:                           ; preds = %for.body18.preheader, %middle.block40
  %indvars.iv24.ph = phi i64 [ 0, %for.body18.preheader ], [ %n.vec34, %middle.block40 ]
  %sum.420.ph = phi i32 [ 0, %for.body18.preheader ], [ %rdx.select, %middle.block40 ]
  br label %for.body18

for.body18:                                       ; preds = %for.body18.preheader46, %for.body18
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body18 ], [ %indvars.iv24.ph, %for.body18.preheader46 ]
  %sum.420 = phi i32 [ %sum.5, %for.body18 ], [ %sum.420.ph, %for.body18.preheader46 ]
  %arrayidx20 = getelementptr inbounds nuw [300 x i8], ptr %zfc, i64 0, i64 %indvars.iv24
  %14 = load i8, ptr %arrayidx20, align 1, !tbaa !5
  %15 = add i8 %14, -97
  %or.cond = icmp ult i8 %15, 26
  %sum.5 = select i1 %or.cond, i32 1, i32 %sum.420
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %for.end31, label %for.body18, !llvm.loop !16

for.end31:                                        ; preds = %for.body18, %middle.block40
  %sum.5.lcssa = phi i32 [ %rdx.select, %middle.block40 ], [ %sum.5, %for.body18 ]
  %16 = icmp eq i32 %sum.5.lcssa, 0
  br i1 %16, label %if.then33, label %if.end35

if.then33:                                        ; preds = %entry, %for.end31
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end31
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %zfc) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11, !12}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10, !11}
!15 = distinct !{!15, !9, !10, !11, !12}
!16 = distinct !{!16, !9, !10, !11}
