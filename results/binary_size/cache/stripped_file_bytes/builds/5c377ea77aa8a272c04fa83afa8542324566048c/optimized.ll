; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfbo4wdja.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %b, i8 0, i64 40000, i1 false)
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x1, ptr noundef nonnull %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp.not.not42 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond121 = select i1 %cmp.not.not42, i1 %2, i1 false
  br i1 %or.cond121, label %for.cond1.preheader, label %for.end10

for.cond1.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc8 ], [ 0, %entry ]
  %cmp3.not.not40 = icmp sgt i32 %4, 0
  br i1 %cmp3.not.not40, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond1.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond1.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv77, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp3.not.not, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond1.preheader
  %7 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond1.preheader ]
  %8 = phi i32 [ %5, %for.inc8.loopexit ], [ %4, %for.cond1.preheader ]
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %9 = sext i32 %7 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next78, %9
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14.not.not46 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond123 = select i1 %cmp14.not.not46, i1 %12, i1 false
  br i1 %or.cond123, label %for.cond16.preheader, label %for.cond31.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc28
  %13 = phi i32 [ %22, %for.inc28 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %23, %for.inc28 ], [ %11, %for.end10 ]
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.inc28 ], [ 0, %for.end10 ]
  %cmp18.not.not44 = icmp sgt i32 %14, 0
  br i1 %cmp18.not.not44, label %for.body19, label %for.inc28

for.cond31.preheader:                             ; preds = %for.inc28, %for.end10
  %.lcssa39 = phi i32 [ %10, %for.end10 ], [ %22, %for.inc28 ]
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp33.not.not50 = icmp sgt i32 %15, 0
  br i1 %cmp33.not.not50, label %for.cond35.preheader.lr.ph, label %for.end111

for.cond35.preheader.lr.ph:                       ; preds = %for.cond31.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp37.not.not48 = icmp sgt i32 %16, 0
  br i1 %cmp37.not.not48, label %for.cond35.preheader.us.preheader, label %for.end111

for.cond35.preheader.us.preheader:                ; preds = %for.cond35.preheader.lr.ph
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %wide.trip.count = zext nneg i32 %15 to i64
  br label %for.cond35.preheader.us

for.cond35.preheader.us:                          ; preds = %for.cond35.preheader.us.preheader, %for.cond35.preheader.us
  %indvar = phi i64 [ 0, %for.cond35.preheader.us.preheader ], [ %indvar.next, %for.cond35.preheader.us ]
  %19 = mul nuw nsw i64 %indvar, 400
  %scevgep = getelementptr nuw i8, ptr %c, i64 %19
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %scevgep, i8 0, i64 %18, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond53.preheader.lr.ph, label %for.cond35.preheader.us, !llvm.loop !14

for.body19:                                       ; preds = %for.cond16.preheader, %for.body19
  %indvars.iv80 = phi i64 [ %indvars.iv.next81, %for.body19 ], [ 0, %for.cond16.preheader ]
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv83, i64 %indvars.iv80
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %20 = load i32, ptr %y2, align 4, !tbaa !5
  %21 = sext i32 %20 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv.next81, %21
  br i1 %cmp18.not.not, label %for.body19, label %for.inc28.loopexit, !llvm.loop !15

for.inc28.loopexit:                               ; preds = %for.body19
  %.pre111 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.inc28.loopexit, %for.cond16.preheader
  %22 = phi i32 [ %.pre111, %for.inc28.loopexit ], [ %13, %for.cond16.preheader ]
  %23 = phi i32 [ %20, %for.inc28.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %24 = sext i32 %22 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv.next84, %24
  br i1 %cmp14.not.not, label %for.cond16.preheader, label %for.cond31.preheader, !llvm.loop !16

for.cond53.preheader.lr.ph:                       ; preds = %for.cond35.preheader.us
  %.pr = load i32, ptr %y2, align 4, !tbaa !5
  %cmp55.not.not56 = icmp sgt i32 %.pr, 0
  br i1 %cmp55.not.not56, label %for.cond53.preheader.lr.ph.split.us, label %for.end111

for.cond53.preheader.lr.ph.split.us:              ; preds = %for.cond53.preheader.lr.ph
  %cmp59.not.not54 = icmp sgt i32 %.lcssa39, 0
  br i1 %cmp59.not.not54, label %for.cond53.preheader.us.us.preheader, label %for.cond90.preheader.preheader

for.cond53.preheader.us.us.preheader:             ; preds = %for.cond53.preheader.lr.ph.split.us
  %wide.trip.count103 = zext nneg i32 %15 to i64
  %wide.trip.count98 = zext nneg i32 %.pr to i64
  %wide.trip.count93 = zext nneg i32 %.lcssa39 to i64
  %min.iters.check = icmp ult i32 %.lcssa39, 4
  %n.vec = and i64 %wide.trip.count93, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count93
  br label %for.cond53.preheader.us.us

for.cond53.preheader.us.us:                       ; preds = %for.cond53.preheader.us.us.preheader, %for.cond53.for.inc83_crit_edge.split.us.us.us
  %indvars.iv100 = phi i64 [ 0, %for.cond53.preheader.us.us.preheader ], [ %indvars.iv.next101, %for.cond53.for.inc83_crit_edge.split.us.us.us ]
  br label %for.cond57.preheader.us.us.us

for.cond57.preheader.us.us.us:                    ; preds = %for.cond57.for.inc80_crit_edge.us.us.us, %for.cond53.preheader.us.us
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.cond57.for.inc80_crit_edge.us.us.us ], [ 0, %for.cond53.preheader.us.us ]
  %arrayidx64.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv100, i64 %indvars.iv95
  %arrayidx64.promoted.us.us.us = load i32, ptr %arrayidx64.us.us.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body60.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond57.preheader.us.us.us
  %25 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx64.promoted.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %25, %vector.ph ], [ %43, %vector.body ]
  %26 = or disjoint i64 %index, 1
  %27 = or disjoint i64 %index, 2
  %28 = or disjoint i64 %index, 3
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv100, i64 %index
  %wide.load = load <4 x i32>, ptr %29, align 16, !tbaa !5
  %30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv95
  %31 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %26, i64 %indvars.iv95
  %32 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %27, i64 %indvars.iv95
  %33 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %28, i64 %indvars.iv95
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = insertelement <4 x i32> poison, i32 %34, i64 0
  %39 = insertelement <4 x i32> %38, i32 %35, i64 1
  %40 = insertelement <4 x i32> %39, i32 %36, i64 2
  %41 = insertelement <4 x i32> %40, i32 %37, i64 3
  %42 = mul nsw <4 x i32> %41, %wide.load
  %43 = add <4 x i32> %42, %vec.phi
  %index.next = add nuw i64 %index, 4
  %44 = icmp eq i64 %index.next, %n.vec
  br i1 %44, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %45 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %43)
  br i1 %cmp.n, label %for.cond57.for.inc80_crit_edge.us.us.us, label %for.body60.us.us.us.preheader

for.body60.us.us.us.preheader:                    ; preds = %for.cond57.preheader.us.us.us, %middle.block
  %indvars.iv90.ph = phi i64 [ 0, %for.cond57.preheader.us.us.us ], [ %n.vec, %middle.block ]
  %.ph127 = phi i32 [ %arrayidx64.promoted.us.us.us, %for.cond57.preheader.us.us.us ], [ %45, %middle.block ]
  br label %for.body60.us.us.us

for.body60.us.us.us:                              ; preds = %for.body60.us.us.us.preheader, %for.body60.us.us.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.body60.us.us.us ], [ %indvars.iv90.ph, %for.body60.us.us.us.preheader ]
  %46 = phi i32 [ %add.us.us.us, %for.body60.us.us.us ], [ %.ph127, %for.body60.us.us.us.preheader ]
  %arrayidx68.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv100, i64 %indvars.iv90
  %47 = load i32, ptr %arrayidx68.us.us.us, align 4, !tbaa !5
  %arrayidx72.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv90, i64 %indvars.iv95
  %48 = load i32, ptr %arrayidx72.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %48, %47
  %add.us.us.us = add nsw i32 %mul.us.us.us, %46
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %for.cond57.for.inc80_crit_edge.us.us.us, label %for.body60.us.us.us, !llvm.loop !20

for.cond57.for.inc80_crit_edge.us.us.us:          ; preds = %for.body60.us.us.us, %middle.block
  %add.us.us.us.lcssa = phi i32 [ %45, %middle.block ], [ %add.us.us.us, %for.body60.us.us.us ]
  store i32 %add.us.us.us.lcssa, ptr %arrayidx64.us.us.us, align 4, !tbaa !5
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %for.cond53.for.inc83_crit_edge.split.us.us.us, label %for.cond57.preheader.us.us.us, !llvm.loop !21

for.cond53.for.inc83_crit_edge.split.us.us.us:    ; preds = %for.cond57.for.inc80_crit_edge.us.us.us
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %for.cond86.preheader, label %for.cond53.preheader.us.us, !llvm.loop !22

for.cond86.preheader:                             ; preds = %for.cond53.for.inc83_crit_edge.split.us.us.us
  %.pr115 = load i32, ptr %y2, align 4
  %49 = icmp sgt i32 %.pr115, 0
  br i1 %49, label %for.cond90.preheader.preheader, label %for.end111

for.cond90.preheader.preheader:                   ; preds = %for.cond86.preheader, %for.cond53.preheader.lr.ph.split.us
  %.ph = phi i32 [ %.pr, %for.cond53.preheader.lr.ph.split.us ], [ %.pr115, %for.cond86.preheader ]
  br label %for.cond90.preheader

for.cond90.preheader:                             ; preds = %for.cond90.preheader.preheader, %for.inc109
  %50 = phi i32 [ %57, %for.inc109 ], [ %15, %for.cond90.preheader.preheader ]
  %51 = phi i32 [ %58, %for.inc109 ], [ %.ph, %for.cond90.preheader.preheader ]
  %indvars.iv108 = phi i64 [ %indvars.iv.next109, %for.inc109 ], [ 0, %for.cond90.preheader.preheader ]
  %cmp92.not.not66 = icmp sgt i32 %51, 0
  br i1 %cmp92.not.not66, label %for.body93, label %for.inc109

for.body93:                                       ; preds = %for.cond90.preheader, %for.body93
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body93 ], [ 0, %for.cond90.preheader ]
  %52 = phi i32 [ %55, %for.body93 ], [ %51, %for.cond90.preheader ]
  %sub91 = add nsw i32 %52, -1
  %53 = sext i32 %sub91 to i64
  %cmp95 = icmp slt i64 %indvars.iv105, %53
  %arrayidx99 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv108, i64 %indvars.iv105
  %54 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  %.str.2..str.3 = select i1 %cmp95, ptr @.str.2, ptr @.str.3
  %call100 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.2..str.3, i32 noundef %54)
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %55 = load i32, ptr %y2, align 4, !tbaa !5
  %56 = sext i32 %55 to i64
  %cmp92.not.not = icmp slt i64 %indvars.iv.next106, %56
  br i1 %cmp92.not.not, label %for.body93, label %for.inc109.loopexit, !llvm.loop !23

for.inc109.loopexit:                              ; preds = %for.body93
  %.pre112 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc109

for.inc109:                                       ; preds = %for.inc109.loopexit, %for.cond90.preheader
  %57 = phi i32 [ %.pre112, %for.inc109.loopexit ], [ %50, %for.cond90.preheader ]
  %58 = phi i32 [ %55, %for.inc109.loopexit ], [ %51, %for.cond90.preheader ]
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %59 = sext i32 %57 to i64
  %cmp88.not.not = icmp slt i64 %indvars.iv.next109, %59
  br i1 %cmp88.not.not, label %for.cond90.preheader, label %for.end111, !llvm.loop !24

for.end111:                                       ; preds = %for.inc109, %for.cond53.preheader.lr.ph, %for.cond35.preheader.lr.ph, %for.cond31.preheader, %for.cond86.preheader
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
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
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

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
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !13}
!17 = distinct !{!17, !10, !11, !18, !19}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !10, !11, !18}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11, !13}
