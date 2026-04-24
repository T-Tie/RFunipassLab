; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7zcrb8gy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [500 x i32], align 16
  %ss = alloca [500 x i32], align 16
  %a = alloca [501 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #8
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %s) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %s, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %ss) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2000) %ss, i8 0, i64 2000, i1 false)
  call void @llvm.lifetime.start.p0(i64 501, ptr nonnull %a) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %a)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #9
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %.fr = freeze i32 %0
  %sub = sub nsw i32 %conv, %.fr
  %cmp.not45 = icmp slt i32 %sub, 0
  br i1 %cmp.not45, label %for.cond.cleanup.thread, label %for.body.lr.ph

for.cond.cleanup.thread:                          ; preds = %entry
  %1 = load i32, ptr %s, align 16, !tbaa !5
  br label %for.cond.cleanup56

for.body.lr.ph:                                   ; preds = %entry
  %cmp1232 = icmp sgt i32 %.fr, 0
  br i1 %cmp1232, label %for.body.us.preheader, label %for.body.lr.ph.split

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %2 = add i32 %conv, 1
  %3 = sub i32 %2, %.fr
  %4 = zext nneg i32 %sub to i64
  %wide.trip.count91 = zext i32 %3 to i64
  %wide.trip.count80 = zext nneg i32 %.fr to i64
  %min.iters.check = icmp ult i32 %.fr, 4
  %n.vec = and i64 %wide.trip.count80, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count80
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond.loopexit.us
  %indvars.iv88 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next89, %for.cond.loopexit.us ]
  %indvars.iv82 = phi i64 [ 1, %for.body.us.preheader ], [ %indvars.iv.next83, %for.cond.loopexit.us ]
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %cmp8.not35.us.not = icmp samesign ult i64 %indvars.iv88, %4
  br i1 %cmp8.not35.us.not, label %for.cond11.preheader.lr.ph.us, label %for.cond.loopexit.us

for.cond.loopexit.us:                             ; preds = %if.end28.us.us, %for.body.us
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond92.not = icmp eq i64 %indvars.iv.next89, %wide.trip.count91
  br i1 %exitcond92.not, label %for.body41.preheader, label %for.body.us, !llvm.loop !9

for.cond11.preheader.lr.ph.us:                    ; preds = %for.body.us
  %arrayidx26.us = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv88
  br label %for.cond11.preheader.us.us

for.cond11.preheader.us.us:                       ; preds = %if.end28.us.us, %for.cond11.preheader.lr.ph.us
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %if.end28.us.us ], [ %indvars.iv82, %for.cond11.preheader.lr.ph.us ]
  br i1 %min.iters.check, label %for.body14.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond11.preheader.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond11.preheader.us.us ]
  %vec.phi = phi <4 x i32> [ %11, %vector.body ], [ zeroinitializer, %for.cond11.preheader.us.us ]
  %5 = add nuw nsw i64 %index, %indvars.iv88
  %6 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %5
  %wide.load = load <4 x i8>, ptr %6, align 1, !tbaa !12
  %7 = add nuw nsw i64 %index, %indvars.iv84
  %8 = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %7
  %wide.load117 = load <4 x i8>, ptr %8, align 1, !tbaa !12
  %9 = icmp eq <4 x i8> %wide.load, %wide.load117
  %10 = zext <4 x i1> %9 to <4 x i32>
  %11 = add <4 x i32> %vec.phi, %10
  %index.next = add nuw i64 %index, 4
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  br i1 %cmp.n, label %for.cond11.for.cond.cleanup13_crit_edge.us.us, label %for.body14.us.us.preheader

for.body14.us.us.preheader:                       ; preds = %for.cond11.preheader.us.us, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %for.cond11.preheader.us.us ], [ %n.vec, %middle.block ]
  %e.233.us.us.ph = phi i32 [ 0, %for.cond11.preheader.us.us ], [ %13, %middle.block ]
  br label %for.body14.us.us

if.then24.us.us:                                  ; preds = %for.cond11.for.cond.cleanup13_crit_edge.us.us
  %14 = load i32, ptr %arrayidx26.us, align 4, !tbaa !5
  %inc27.us.us = add nsw i32 %14, 1
  store i32 %inc27.us.us, ptr %arrayidx26.us, align 4, !tbaa !5
  br label %if.end28.us.us

if.end28.us.us:                                   ; preds = %for.cond11.for.cond.cleanup13_crit_edge.us.us, %if.then24.us.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next85 to i32
  %exitcond87.not = icmp eq i32 %3, %lftr.wideiv
  br i1 %exitcond87.not, label %for.cond.loopexit.us, label %for.cond11.preheader.us.us, !llvm.loop !16

for.body14.us.us:                                 ; preds = %for.body14.us.us.preheader, %for.body14.us.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body14.us.us ], [ %indvars.iv75.ph, %for.body14.us.us.preheader ]
  %e.233.us.us = phi i32 [ %spec.select.us.us, %for.body14.us.us ], [ %e.233.us.us.ph, %for.body14.us.us.preheader ]
  %15 = add nuw nsw i64 %indvars.iv75, %indvars.iv88
  %arrayidx.us.us = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %15
  %16 = load i8, ptr %arrayidx.us.us, align 1, !tbaa !12
  %17 = add nuw nsw i64 %indvars.iv75, %indvars.iv84
  %arrayidx19.us.us = getelementptr inbounds nuw [501 x i8], ptr %a, i64 0, i64 %17
  %18 = load i8, ptr %arrayidx19.us.us, align 1, !tbaa !12
  %cmp21.us.us = icmp eq i8 %16, %18
  %inc.us.us = zext i1 %cmp21.us.us to i32
  %spec.select.us.us = add nuw nsw i32 %e.233.us.us, %inc.us.us
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond11.for.cond.cleanup13_crit_edge.us.us, label %for.body14.us.us, !llvm.loop !17

for.cond11.for.cond.cleanup13_crit_edge.us.us:    ; preds = %for.body14.us.us, %middle.block
  %spec.select.us.us.lcssa = phi i32 [ %13, %middle.block ], [ %spec.select.us.us, %for.body14.us.us ]
  %cmp23.us.us = icmp eq i32 %spec.select.us.us.lcssa, %.fr
  br i1 %cmp23.us.us, label %if.then24.us.us, label %if.end28.us.us

for.body.lr.ph.split:                             ; preds = %for.body.lr.ph
  %cmp23 = icmp eq i32 %.fr, 0
  br i1 %cmp23, label %for.body.us48.preheader, label %for.body41.preheader

for.body.us48.preheader:                          ; preds = %for.body.lr.ph.split
  %19 = zext nneg i32 %sub to i64
  %20 = add i64 %call3, 1
  %wide.trip.count = and i64 %20, 4294967295
  br label %for.body.us48

for.body.us48:                                    ; preds = %for.body.us48.preheader, %for.cond.loopexit.us52
  %indvars.iv72 = phi i64 [ 0, %for.body.us48.preheader ], [ %indvars.iv.next73, %for.cond.loopexit.us52 ]
  %indvars.iv = phi i32 [ %sub, %for.body.us48.preheader ], [ %indvars.iv.next, %for.cond.loopexit.us52 ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %cmp8.not35.us51.not = icmp samesign ult i64 %indvars.iv72, %19
  br i1 %cmp8.not35.us51.not, label %for.cond11.preheader.lr.ph.us54, label %for.cond.loopexit.us52

for.cond.loopexit.us52:                           ; preds = %for.cond11.preheader.lr.ph.us54, %for.body.us48
  %indvars.iv.next = add i32 %indvars.iv, -1
  %exitcond.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count
  br i1 %exitcond.not, label %for.body41.preheader, label %for.body.us48, !llvm.loop !9

for.cond11.preheader.lr.ph.us54:                  ; preds = %for.body.us48
  %arrayidx26.us56 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv72
  %arrayidx26.promoted.us = load i32, ptr %arrayidx26.us56, align 4, !tbaa !5
  %21 = add i32 %arrayidx26.promoted.us, %indvars.iv
  store i32 %21, ptr %arrayidx26.us56, align 4, !tbaa !5
  br label %for.cond.loopexit.us52

for.body41.preheader:                             ; preds = %for.cond.loopexit.us52, %for.cond.loopexit.us, %for.body.lr.ph.split
  %22 = load i32, ptr %s, align 16, !tbaa !5
  %23 = add i32 %conv, 1
  %24 = sub i32 %23, %.fr
  %wide.trip.count96 = zext i32 %24 to i64
  %min.iters.check119 = icmp ult i32 %24, 4
  br i1 %min.iters.check119, label %for.body41.preheader132, label %vector.ph120

vector.ph120:                                     ; preds = %for.body41.preheader
  %n.vec122 = and i64 %wide.trip.count96, 4294967292
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %22, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph120
  %index124 = phi i64 [ 0, %vector.ph120 ], [ %index.next127, %vector.body123 ]
  %vec.phi125 = phi <4 x i32> [ %broadcast.splat, %vector.ph120 ], [ %26, %vector.body123 ]
  %25 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %index124
  %wide.load126 = load <4 x i32>, ptr %25, align 16, !tbaa !5
  %26 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %vec.phi125, <4 x i32> %wide.load126)
  %index.next127 = add nuw i64 %index124, 4
  %27 = icmp eq i64 %index.next127, %n.vec122
  br i1 %27, label %middle.block128, label %vector.body123, !llvm.loop !18

middle.block128:                                  ; preds = %vector.body123
  %28 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %26)
  %cmp.n129 = icmp eq i64 %n.vec122, %wide.trip.count96
  br i1 %cmp.n129, label %for.body57.preheader, label %for.body41.preheader132

for.body41.preheader132:                          ; preds = %for.body41.preheader, %middle.block128
  %indvars.iv93.ph = phi i64 [ 0, %for.body41.preheader ], [ %n.vec122, %middle.block128 ]
  %max.059.ph = phi i32 [ %22, %for.body41.preheader ], [ %28, %middle.block128 ]
  br label %for.body41

for.body57.preheader:                             ; preds = %for.body41, %middle.block128
  %spec.select31.lcssa = phi i32 [ %28, %middle.block128 ], [ %spec.select31, %for.body41 ]
  %29 = add i32 %conv, 1
  %30 = sub i32 %29, %.fr
  %wide.trip.count101 = zext i32 %30 to i64
  br label %for.body57

for.body41:                                       ; preds = %for.body41.preheader132, %for.body41
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.body41 ], [ %indvars.iv93.ph, %for.body41.preheader132 ]
  %max.059 = phi i32 [ %spec.select31, %for.body41 ], [ %max.059.ph, %for.body41.preheader132 ]
  %arrayidx43 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv93
  %31 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %spec.select31 = call i32 @llvm.smax.i32(i32 %max.059, i32 %31)
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond97.not = icmp eq i64 %indvars.iv.next94, %wide.trip.count96
  br i1 %exitcond97.not, label %for.body57.preheader, label %for.body41, !llvm.loop !19

for.cond.cleanup56:                               ; preds = %for.inc66, %for.cond.cleanup.thread
  %max.0.lcssa114 = phi i32 [ %1, %for.cond.cleanup.thread ], [ %spec.select31.lcssa, %for.inc66 ]
  %ee.0.lcssa = phi i32 [ 0, %for.cond.cleanup.thread ], [ %ee.1, %for.inc66 ]
  %cmp69.not = icmp eq i32 %max.0.lcssa114, 0
  br i1 %cmp69.not, label %if.else, label %if.then70

for.body57:                                       ; preds = %for.body57.preheader, %for.inc66
  %indvars.iv98 = phi i64 [ 0, %for.body57.preheader ], [ %indvars.iv.next99, %for.inc66 ]
  %ee.063 = phi i32 [ 0, %for.body57.preheader ], [ %ee.1, %for.inc66 ]
  %arrayidx59 = getelementptr inbounds nuw [500 x i32], ptr %s, i64 0, i64 %indvars.iv98
  %32 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %cmp60 = icmp eq i32 %spec.select31.lcssa, %32
  br i1 %cmp60, label %if.then61, label %for.inc66

if.then61:                                        ; preds = %for.body57
  %idxprom62 = sext i32 %ee.063 to i64
  %arrayidx63 = getelementptr inbounds [500 x i32], ptr %ss, i64 0, i64 %idxprom62
  %33 = trunc nuw nsw i64 %indvars.iv98 to i32
  store i32 %33, ptr %arrayidx63, align 4, !tbaa !5
  %inc64 = add nsw i32 %ee.063, 1
  br label %for.inc66

for.inc66:                                        ; preds = %for.body57, %if.then61
  %ee.1 = phi i32 [ %inc64, %if.then61 ], [ %ee.063, %for.body57 ]
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  %exitcond102.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count101
  br i1 %exitcond102.not, label %for.cond.cleanup56, label %for.body57, !llvm.loop !20

if.then70:                                        ; preds = %for.cond.cleanup56
  %add71 = add nsw i32 %max.0.lcssa114, 1
  %call72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %add71)
  %cmp7468 = icmp sgt i32 %ee.0.lcssa, 0
  br i1 %cmp7468, label %for.body76.preheader, label %if.end96

for.body76.preheader:                             ; preds = %if.then70
  %wide.trip.count110 = zext nneg i32 %ee.0.lcssa to i64
  br label %for.body76

for.body76:                                       ; preds = %for.body76.preheader, %for.cond.cleanup80
  %indvars.iv107 = phi i64 [ 0, %for.body76.preheader ], [ %indvars.iv.next108, %for.cond.cleanup80 ]
  %putchar = call i32 @putchar(i32 10)
  %34 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7966 = icmp sgt i32 %34, 0
  br i1 %cmp7966, label %for.body81.lr.ph, label %for.cond.cleanup80

for.body81.lr.ph:                                 ; preds = %for.body76
  %arrayidx83 = getelementptr inbounds nuw [500 x i32], ptr %ss, i64 0, i64 %indvars.iv107
  %35 = load i32, ptr %arrayidx83, align 4, !tbaa !5
  %36 = sext i32 %35 to i64
  br label %for.body81

for.cond.cleanup80:                               ; preds = %for.body81, %for.body76
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count110
  br i1 %exitcond111.not, label %if.end96, label %for.body76, !llvm.loop !21

for.body81:                                       ; preds = %for.body81.lr.ph, %for.body81
  %indvars.iv103 = phi i64 [ 0, %for.body81.lr.ph ], [ %indvars.iv.next104, %for.body81 ]
  %37 = add nsw i64 %indvars.iv103, %36
  %arrayidx86 = getelementptr inbounds [501 x i8], ptr %a, i64 0, i64 %37
  %38 = load i8, ptr %arrayidx86, align 1, !tbaa !12
  %conv87 = sext i8 %38 to i32
  %putchar30 = call i32 @putchar(i32 %conv87)
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  %39 = load i32, ptr %n, align 4, !tbaa !5
  %40 = sext i32 %39 to i64
  %cmp79 = icmp slt i64 %indvars.iv.next104, %40
  br i1 %cmp79, label %for.body81, label %for.cond.cleanup80, !llvm.loop !22

if.else:                                          ; preds = %for.cond.cleanup56
  %call95 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4)
  br label %if.end96

if.end96:                                         ; preds = %for.cond.cleanup80, %if.then70, %if.else
  call void @llvm.lifetime.end.p0(i64 501, ptr nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %ss) #8
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %s) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #7

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(read) }

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !14}
!18 = distinct !{!18, !10, !11, !14, !15}
!19 = distinct !{!19, !10, !11, !14}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
