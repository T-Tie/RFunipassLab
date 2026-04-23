; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9jyiknei.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [501 x i8], align 16
  %str = alloca [500 x [5 x i8]], align 16
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #9
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %s) #9
  call void @llvm.lifetime.start.p0(i64 2500, ptr nonnull %str) #9
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #9
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #10
  %conv = trunc i64 %call3 to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2500) %str, i8 0, i64 2500, i1 false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %cmp.not41 = icmp slt i32 %sub, 0
  br i1 %cmp.not41, label %for.end71.thread, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %1 = add i32 %conv, 1
  %2 = sub i32 %1, %0
  %wide.trip.count = zext i32 %2 to i64
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %for.body.preheader117, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %index
  store <4 x i32> splat (i32 1), ptr %3, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %4 = icmp eq i64 %index.next, %n.vec
  br i1 %4, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond9.preheader.lr.ph, label %for.body.preheader117

for.body.preheader117:                            ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec, %middle.block ]
  br label %for.body

for.cond9.preheader.lr.ph:                        ; preds = %for.body, %middle.block
  %cmp1044 = icmp sgt i32 %0, 0
  br i1 %cmp1044, label %for.cond9.preheader.us.preheader, label %for.cond25.preheader

for.cond9.preheader.us.preheader:                 ; preds = %for.cond9.preheader.lr.ph
  %5 = zext nneg i32 %0 to i64
  %6 = add i32 %conv, 1
  %7 = sub i32 %6, %0
  %wide.trip.count73 = zext i32 %7 to i64
  br label %for.cond9.preheader.us

for.cond9.preheader.us:                           ; preds = %for.cond9.preheader.us.preheader, %for.cond9.preheader.us
  %indvar = phi i64 [ 0, %for.cond9.preheader.us.preheader ], [ %indvar.next, %for.cond9.preheader.us ]
  %8 = mul nuw nsw i64 %indvar, 5
  %scevgep = getelementptr nuw i8, ptr %str, i64 %8
  %scevgep65 = getelementptr nuw i8, ptr %s, i64 %indvar
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %scevgep, ptr nonnull align 1 %scevgep65, i64 %5, i1 false), !tbaa !14
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond74.not = icmp eq i64 %indvar.next, %wide.trip.count73
  br i1 %exitcond74.not, label %for.cond25.preheader, label %for.cond9.preheader.us, !llvm.loop !15

for.body:                                         ; preds = %for.body.preheader117, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader117 ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond9.preheader.lr.ph, label %for.body, !llvm.loop !16

for.cond25.preheader:                             ; preds = %for.cond9.preheader.us, %for.cond9.preheader.lr.ph
  %cmp2753.not = icmp eq i32 %sub, 0
  br i1 %cmp2753.not, label %for.end71.thread, label %for.body28.lr.ph

for.body28.lr.ph:                                 ; preds = %for.cond25.preheader
  %cmp5749 = icmp sgt i32 %0, 0
  %9 = zext i32 %0 to i64
  %wide.trip.count93 = zext nneg i32 %sub to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %str, i64 5
  br label %for.body33.lr.ph

for.cond25.loopexit:                              ; preds = %for.inc66, %for.body33.lr.ph
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %indvars.iv.next89 = add i32 %indvars.iv88, -1
  %exitcond94.not = icmp eq i64 %indvar.next76, %wide.trip.count93
  br i1 %exitcond94.not, label %for.body76.preheader, label %for.body33.lr.ph, !llvm.loop !17

for.body33.lr.ph:                                 ; preds = %for.cond25.loopexit, %for.body28.lr.ph
  %indvars.iv88 = phi i32 [ %sub, %for.body28.lr.ph ], [ %indvars.iv.next89, %for.cond25.loopexit ]
  %indvars.iv83 = phi i64 [ 1, %for.body28.lr.ph ], [ %indvars.iv.next84, %for.cond25.loopexit ]
  %indvar75 = phi i64 [ 0, %for.body28.lr.ph ], [ %indvar.next76, %for.cond25.loopexit ]
  %indvar.next76 = add nuw nsw i64 %indvar75, 1
  %arrayidx35 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvar75
  %arrayidx54 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvar75
  %10 = load i8, ptr %arrayidx35, align 1, !tbaa !14
  %11 = icmp eq i8 %10, 48
  br i1 %11, label %for.cond25.loopexit, label %for.body33.preheader

for.body33.preheader:                             ; preds = %for.body33.lr.ph
  %12 = mul nuw nsw i64 %indvar75, 5
  %wide.trip.count90 = zext i32 %indvars.iv88 to i64
  %gep = getelementptr i8, ptr %invariant.gep, i64 %12
  br label %for.body33

for.body33thread-pre-split:                       ; preds = %for.inc66
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %.pr = load i8, ptr %arrayidx35, align 1, !tbaa !14
  br label %for.body33

for.body33:                                       ; preds = %for.body33thread-pre-split, %for.body33.preheader
  %13 = phi i8 [ %.pr, %for.body33thread-pre-split ], [ %10, %for.body33.preheader ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body33thread-pre-split ], [ %indvars.iv83, %for.body33.preheader ]
  %indvar77 = phi i64 [ %indvar.next78, %for.body33thread-pre-split ], [ 0, %for.body33.preheader ]
  %14 = mul nuw nsw i64 %indvar77, 5
  %scevgep79 = getelementptr i8, ptr %gep, i64 %14
  %cmp38.not = icmp eq i8 %13, 48
  br i1 %cmp38.not, label %for.inc66, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body33
  %arrayidx40 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv85
  %15 = load i8, ptr %arrayidx40, align 1, !tbaa !14
  %cmp43.not = icmp eq i8 %15, 48
  br i1 %cmp43.not, label %for.inc66, label %land.lhs.true44

land.lhs.true44:                                  ; preds = %land.lhs.true
  %call51 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %arrayidx35, ptr noundef nonnull dereferenceable(1) %arrayidx40) #10
  %cmp52 = icmp eq i32 %call51, 0
  br i1 %cmp52, label %if.then, label %for.inc66

if.then:                                          ; preds = %land.lhs.true44
  %16 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %inc55 = add nsw i32 %16, 1
  store i32 %inc55, ptr %arrayidx54, align 4, !tbaa !5
  br i1 %cmp5749, label %for.body58.preheader, label %for.inc66

for.body58.preheader:                             ; preds = %if.then
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep79, i8 48, i64 %9, i1 false), !tbaa !14
  br label %for.inc66

for.inc66:                                        ; preds = %for.body58.preheader, %if.then, %for.body33, %land.lhs.true, %land.lhs.true44
  %indvar.next78 = add nuw nsw i64 %indvar77, 1
  %exitcond91.not = icmp eq i64 %indvar.next78, %wide.trip.count90
  br i1 %exitcond91.not, label %for.cond25.loopexit, label %for.body33thread-pre-split, !llvm.loop !18

for.end71.thread:                                 ; preds = %for.cond25.preheader, %entry
  %17 = load i32, ptr %a, align 16, !tbaa !5
  br label %for.end86

for.body76.preheader:                             ; preds = %for.cond25.loopexit
  %18 = load i32, ptr %a, align 16, !tbaa !5
  %19 = add i32 %conv, 1
  %20 = sub i32 %19, %0
  %wide.trip.count98 = zext i32 %20 to i64
  %21 = add nsw i64 %wide.trip.count, -1
  %min.iters.check106 = icmp ult i64 %21, 4
  br i1 %min.iters.check106, label %for.body76.preheader116, label %vector.ph107

vector.ph107:                                     ; preds = %for.body76.preheader
  %n.vec109 = and i64 %21, -4
  %22 = or disjoint i64 %n.vec109, 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %18, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body110

vector.body110:                                   ; preds = %vector.body110, %vector.ph107
  %index111 = phi i64 [ 0, %vector.ph107 ], [ %index.next112, %vector.body110 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph107 ], [ %24, %vector.body110 ]
  %offset.idx = or disjoint i64 %index111, 1
  %23 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %23, align 4, !tbaa !5
  %24 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load)
  %index.next112 = add nuw i64 %index111, 4
  %25 = icmp eq i64 %index.next112, %n.vec109
  br i1 %25, label %middle.block113, label %vector.body110, !llvm.loop !20

middle.block113:                                  ; preds = %vector.body110
  %26 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %24)
  %cmp.n114 = icmp eq i64 %21, %n.vec109
  br i1 %cmp.n114, label %for.end86, label %for.body76.preheader116

for.body76.preheader116:                          ; preds = %for.body76.preheader, %middle.block113
  %indvars.iv95.ph = phi i64 [ 1, %for.body76.preheader ], [ %22, %middle.block113 ]
  %m.057.ph = phi i32 [ %18, %for.body76.preheader ], [ %26, %middle.block113 ]
  br label %for.body76

for.body76:                                       ; preds = %for.body76.preheader116, %for.body76
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body76 ], [ %indvars.iv95.ph, %for.body76.preheader116 ]
  %m.057 = phi i32 [ %spec.select, %for.body76 ], [ %m.057.ph, %for.body76.preheader116 ]
  %arrayidx78 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv95
  %27 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %m.057, i32 %27)
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %for.end86, label %for.body76, !llvm.loop !21

for.end86:                                        ; preds = %for.body76, %middle.block113, %for.end71.thread
  %m.0.lcssa = phi i32 [ %17, %for.end71.thread ], [ %26, %middle.block113 ], [ %spec.select, %for.body76 ]
  %cmp87 = icmp slt i32 %m.0.lcssa, 2
  br i1 %cmp87, label %if.then88, label %if.else

if.then88:                                        ; preds = %for.end86
  %puts40 = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %cleanup

if.else:                                          ; preds = %for.end86
  %call90 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %m.0.lcssa)
  %28 = load i32, ptr %n, align 4, !tbaa !5
  %cmp93.not60 = icmp sgt i32 %28, %conv
  br i1 %cmp93.not60, label %cleanup, label %for.body94

for.body94:                                       ; preds = %if.else, %for.inc104
  %29 = phi i32 [ %31, %for.inc104 ], [ %28, %if.else ]
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc104 ], [ 0, %if.else ]
  %arrayidx96 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv100
  %30 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %cmp97 = icmp eq i32 %30, %m.0.lcssa
  br i1 %cmp97, label %if.then98, label %for.inc104

if.then98:                                        ; preds = %for.body94
  %arrayidx100 = getelementptr inbounds nuw [500 x [5 x i8]], ptr %str, i64 0, i64 %indvars.iv100
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %arrayidx100)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc104

for.inc104:                                       ; preds = %for.body94, %if.then98
  %31 = phi i32 [ %29, %for.body94 ], [ %.pre, %if.then98 ]
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %sub92 = sub nsw i32 %conv, %31
  %32 = sext i32 %sub92 to i64
  %cmp93.not.not = icmp slt i64 %indvars.iv100, %32
  br i1 %cmp93.not.not, label %for.body94, label %cleanup, !llvm.loop !22

cleanup:                                          ; preds = %for.inc104, %if.else, %if.then88
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 2500, ptr nonnull %str) #9
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %s) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }

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
!14 = !{!7, !7, i64 0}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !19}
!19 = !{!"llvm.loop.unswitch.partial.disable"}
!20 = distinct !{!20, !10, !11, !12, !13}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11}
