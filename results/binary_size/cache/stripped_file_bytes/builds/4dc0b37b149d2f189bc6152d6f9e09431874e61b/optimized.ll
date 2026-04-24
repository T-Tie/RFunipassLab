; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1ocsqoz9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z4zeroPA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp50 = icmp sgt i32 %n, 0
  br i1 %cmp50, label %for.body.us.us.preheader, label %for.cond.cleanup46

for.body.us.us.preheader:                         ; preds = %entry
  %wide.trip.count108 = zext nneg i32 %n to i64
  %min.iters.check126 = icmp ult i32 %n, 4
  %n.vec129 = and i64 %wide.trip.count108, 2147483644
  %cmp.n137 = icmp eq i64 %n.vec129, %wide.trip.count108
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %wide.trip.count108, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count108
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.inc40.us.us
  %indvars.iv105 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next106, %for.inc40.us.us ]
  %arrayidx.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105
  %0 = load i32, ptr %arrayidx.us.us, align 4, !tbaa !5
  br i1 %min.iters.check126, label %for.body7.us.us.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %for.body.us.us
  %broadcast.splatinsert130 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat131 = shufflevector <4 x i32> %broadcast.splatinsert130, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph127
  %index133 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body132 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat131, %vector.ph127 ], [ %2, %vector.body132 ]
  %1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105, i64 %index133
  %wide.load134 = load <4 x i32>, ptr %1, align 4, !tbaa !5
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load134, <4 x i32> %vec.phi)
  %index.next135 = add nuw i64 %index133, 4
  %3 = icmp eq i64 %index.next135, %n.vec129
  br i1 %3, label %middle.block136, label %vector.body132, !llvm.loop !9

middle.block136:                                  ; preds = %vector.body132
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  br i1 %cmp.n137, label %for.cond4.for.cond.cleanup6_crit_edge.us.us, label %for.body7.us.us.preheader

for.body7.us.us.preheader:                        ; preds = %for.body.us.us, %middle.block136
  %indvars.iv.ph = phi i64 [ 0, %for.body.us.us ], [ %n.vec129, %middle.block136 ]
  %spec.store.select47.us.us.ph = phi i32 [ %0, %for.body.us.us ], [ %4, %middle.block136 ]
  br label %for.body7.us.us

for.body29.us.us:                                 ; preds = %for.body29.us.us.preheader155, %for.body29.us.us
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.body29.us.us ], [ %indvars.iv100.ph, %for.body29.us.us.preheader155 ]
  %arrayidx35.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105, i64 %indvars.iv100
  %5 = load i32, ptr %arrayidx35.us.us, align 4, !tbaa !5
  %sub.us.us = sub nsw i32 %5, %spec.store.select.us.us.lcssa
  store i32 %sub.us.us, ptr %arrayidx35.us.us, align 4, !tbaa !5
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count108
  br i1 %exitcond104.not, label %for.inc40.us.us, label %for.body29.us.us, !llvm.loop !14

for.inc40.us.us:                                  ; preds = %for.body29.us.us, %middle.block, %for.cond4.for.cond.cleanup6_crit_edge.us.us
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  br i1 %exitcond109.not, label %for.body47.lr.ph, label %for.body.us.us, !llvm.loop !15

for.body7.us.us:                                  ; preds = %for.body7.us.us.preheader, %for.body7.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7.us.us ], [ %indvars.iv.ph, %for.body7.us.us.preheader ]
  %spec.store.select47.us.us = phi i32 [ %spec.store.select.us.us, %for.body7.us.us ], [ %spec.store.select47.us.us.ph, %for.body7.us.us.preheader ]
  %arrayidx11.us.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx11.us.us, align 4, !tbaa !5
  %spec.store.select.us.us = tail call i32 @llvm.smin.i32(i32 %6, i32 %spec.store.select47.us.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count108
  br i1 %exitcond.not, label %for.cond4.for.cond.cleanup6_crit_edge.us.us, label %for.body7.us.us, !llvm.loop !16

for.cond4.for.cond.cleanup6_crit_edge.us.us:      ; preds = %for.body7.us.us, %middle.block136
  %spec.store.select.us.us.lcssa = phi i32 [ %4, %middle.block136 ], [ %spec.store.select.us.us, %for.body7.us.us ]
  %cmp23.not.us.us = icmp eq i32 %spec.store.select.us.us.lcssa, 0
  br i1 %cmp23.not.us.us, label %for.inc40.us.us, label %for.body29.us.us.preheader

for.body29.us.us.preheader:                       ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us.us
  br i1 %min.iters.check, label %for.body29.us.us.preheader155, label %vector.ph

vector.ph:                                        ; preds = %for.body29.us.us.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.store.select.us.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %7 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105, i64 %index
  %wide.load = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %8 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %8, ptr %7, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc40.us.us, label %for.body29.us.us.preheader155

for.body29.us.us.preheader155:                    ; preds = %for.body29.us.us.preheader, %middle.block
  %indvars.iv100.ph = phi i64 [ 0, %for.body29.us.us.preheader ], [ %n.vec, %middle.block ]
  br label %for.body29.us.us

for.body47.lr.ph:                                 ; preds = %for.inc40.us.us
  %wide.trip.count123 = zext nneg i32 %n to i64
  %min.iters.check140 = icmp ult i32 %n, 4
  %n.vec143 = and i64 %wide.trip.count108, 2147483644
  %cmp.n151 = icmp eq i64 %n.vec143, %wide.trip.count108
  br label %for.body47.us

for.body47.us:                                    ; preds = %for.inc96.us, %for.body47.lr.ph
  %indvars.iv120 = phi i64 [ %indvars.iv.next121, %for.inc96.us ], [ 0, %for.body47.lr.ph ]
  %arrayidx50.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv120
  %10 = load i32, ptr %arrayidx50.us, align 4, !tbaa !5
  br i1 %min.iters.check140, label %for.body57.us.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %for.body47.us
  %broadcast.splatinsert144 = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat145 = shufflevector <4 x i32> %broadcast.splatinsert144, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph141
  %index147 = phi i64 [ 0, %vector.ph141 ], [ %index.next149, %vector.body146 ]
  %vec.phi148 = phi <4 x i32> [ %broadcast.splat145, %vector.ph141 ], [ %26, %vector.body146 ]
  %11 = or disjoint i64 %index147, 1
  %12 = or disjoint i64 %index147, 2
  %13 = or disjoint i64 %index147, 3
  %14 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %index147, i64 %indvars.iv120
  %15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %11, i64 %indvars.iv120
  %16 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %12, i64 %indvars.iv120
  %17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %13, i64 %indvars.iv120
  %18 = load i32, ptr %14, align 4, !tbaa !5
  %19 = load i32, ptr %15, align 4, !tbaa !5
  %20 = load i32, ptr %16, align 4, !tbaa !5
  %21 = load i32, ptr %17, align 4, !tbaa !5
  %22 = insertelement <4 x i32> poison, i32 %18, i64 0
  %23 = insertelement <4 x i32> %22, i32 %19, i64 1
  %24 = insertelement <4 x i32> %23, i32 %20, i64 2
  %25 = insertelement <4 x i32> %24, i32 %21, i64 3
  %26 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %25, <4 x i32> %vec.phi148)
  %index.next149 = add nuw i64 %index147, 4
  %27 = icmp eq i64 %index.next149, %n.vec143
  br i1 %27, label %middle.block150, label %vector.body146, !llvm.loop !18

middle.block150:                                  ; preds = %vector.body146
  %28 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %26)
  br i1 %cmp.n151, label %for.cond54.for.cond.cleanup56_crit_edge.us, label %for.body57.us.preheader

for.body57.us.preheader:                          ; preds = %for.body47.us, %middle.block150
  %indvars.iv110.ph = phi i64 [ 0, %for.body47.us ], [ %n.vec143, %middle.block150 ]
  %spec.store.select4474.us.ph = phi i32 [ %10, %for.body47.us ], [ %28, %middle.block150 ]
  br label %for.body57.us

for.body84.us:                                    ; preds = %for.cond54.for.cond.cleanup56_crit_edge.us, %for.body84.us
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body84.us ], [ 0, %for.cond54.for.cond.cleanup56_crit_edge.us ]
  %arrayidx90.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv115, i64 %indvars.iv120
  %29 = load i32, ptr %arrayidx90.us, align 4, !tbaa !5
  %sub91.us = sub nsw i32 %29, %spec.store.select44.us.lcssa
  store i32 %sub91.us, ptr %arrayidx90.us, align 4, !tbaa !5
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count123
  br i1 %exitcond119.not, label %for.inc96.us, label %for.body84.us, !llvm.loop !19

for.inc96.us:                                     ; preds = %for.body84.us, %for.cond54.for.cond.cleanup56_crit_edge.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count123
  br i1 %exitcond124.not, label %for.cond.cleanup46, label %for.body47.us, !llvm.loop !20

for.body57.us:                                    ; preds = %for.body57.us.preheader, %for.body57.us
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %for.body57.us ], [ %indvars.iv110.ph, %for.body57.us.preheader ]
  %spec.store.select4474.us = phi i32 [ %spec.store.select44.us, %for.body57.us ], [ %spec.store.select4474.us.ph, %for.body57.us.preheader ]
  %arrayidx61.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv110, i64 %indvars.iv120
  %30 = load i32, ptr %arrayidx61.us, align 4, !tbaa !5
  %spec.store.select44.us = tail call i32 @llvm.smin.i32(i32 %30, i32 %spec.store.select4474.us)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count123
  br i1 %exitcond114.not, label %for.cond54.for.cond.cleanup56_crit_edge.us, label %for.body57.us, !llvm.loop !21

for.cond54.for.cond.cleanup56_crit_edge.us:       ; preds = %for.body57.us, %middle.block150
  %spec.store.select44.us.lcssa = phi i32 [ %28, %middle.block150 ], [ %spec.store.select44.us, %for.body57.us ]
  %cmp78.not.us = icmp eq i32 %spec.store.select44.us.lcssa, 0
  br i1 %cmp78.not.us, label %for.inc96.us, label %for.body84.us

for.cond.cleanup46:                               ; preds = %for.inc96.us, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z10subductionPA100_ii(ptr noundef captures(none) %a, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %sub = add i32 %n, -1
  %cmp19 = icmp sgt i32 %n, 2
  br i1 %cmp19, label %for.body.preheader, label %for.cond.cleanup16

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext nneg i32 %sub to i64
  br label %for.body

for.cond18.preheader.lr.ph:                       ; preds = %for.body
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  %wide.trip.count35 = zext nneg i32 %sub to i64
  %0 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i64 %0, 4
  %n.vec = and i64 %0, -4
  %1 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %0, %n.vec
  br label %for.cond18.preheader.us

for.cond18.preheader.us:                          ; preds = %for.cond18.for.cond.cleanup21_crit_edge.us, %for.cond18.preheader.lr.ph
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.cond18.for.cond.cleanup21_crit_edge.us ], [ 1, %for.cond18.preheader.lr.ph ]
  br i1 %min.iters.check, label %for.body22.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond18.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond18.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %2 = or disjoint i64 %index, 2
  %3 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv32, i64 %2
  %wide.load = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %4 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv32, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %4, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond18.for.cond.cleanup21_crit_edge.us, label %for.body22.us.preheader

for.body22.us.preheader:                          ; preds = %for.cond18.preheader.us, %middle.block
  %indvars.iv27.ph = phi i64 [ 1, %for.cond18.preheader.us ], [ %1, %middle.block ]
  br label %for.body22.us

for.body22.us:                                    ; preds = %for.body22.us.preheader, %for.body22.us
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body22.us ], [ %indvars.iv27.ph, %for.body22.us.preheader ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %arrayidx28.us = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv32, i64 %indvars.iv.next28
  %6 = load i32, ptr %arrayidx28.us, align 4, !tbaa !5
  %arrayidx32.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv32, i64 %indvars.iv27
  store i32 %6, ptr %arrayidx32.us, align 4, !tbaa !5
  %exitcond31.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count35
  br i1 %exitcond31.not, label %for.cond18.for.cond.cleanup21_crit_edge.us, label %for.body22.us, !llvm.loop !23

for.cond18.for.cond.cleanup21_crit_edge.us:       ; preds = %for.body22.us, %middle.block
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %for.cond.cleanup16, label %for.cond18.preheader.us, !llvm.loop !24

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %7 = load i32, ptr %arrayidx1, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %7, ptr %arrayidx4, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv
  store i32 %8, ptr %arrayidx10, align 4, !tbaa !5
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond18.preheader.lr.ph, label %for.body, !llvm.loop !25

for.cond.cleanup16:                               ; preds = %for.cond18.for.cond.cleanup21_crit_edge.us, %entry
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.cond1.preheader.lr.ph, label %for.cond.cleanup

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx1712 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %a, i64 400
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %58, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %t.026 = phi i32 [ 0, %for.cond1.preheader.lr.ph ], [ %inc22, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp220 = icmp sgt i32 %1, 0
  br i1 %cmp220, label %for.cond5.preheader, label %while.body.preheader

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

while.cond.preheader:                             ; preds = %for.cond.cleanup7
  %cmp15.not22 = icmp eq i32 %1, 1
  br i1 %cmp15.not22, label %while.end, label %while.body.preheader

while.body.preheader:                             ; preds = %for.cond1.preheader, %while.cond.preheader
  br label %while.body

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.cond.cleanup7
  %2 = phi i32 [ %3, %for.cond.cleanup7 ], [ %1, %for.cond1.preheader ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.cond.cleanup7 ], [ 0, %for.cond1.preheader ]
  %cmp618 = icmp sgt i32 %2, 0
  br i1 %cmp618, label %for.body8, label %for.cond5.preheader.for.cond.cleanup7_crit_edge

for.cond5.preheader.for.cond.cleanup7_crit_edge:  ; preds = %for.cond5.preheader
  %.pre = sext i32 %2 to i64
  br label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.body8, %for.cond5.preheader.for.cond.cleanup7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %5, %for.body8 ]
  %3 = phi i32 [ %2, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %4, %for.body8 ]
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %cmp2 = icmp slt i64 %indvars.iv.next30, %.pre-phi
  br i1 %cmp2, label %for.cond5.preheader, label %while.cond.preheader, !llvm.loop !26

for.body8:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond5.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv29, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7, !llvm.loop !28

while.body:                                       ; preds = %while.body.preheader, %_Z10subductionPA100_ii.exit
  %indvar = phi i32 [ %indvar.next, %_Z10subductionPA100_ii.exit ], [ 0, %while.body.preheader ]
  %s.024 = phi i32 [ %add16, %_Z10subductionPA100_ii.exit ], [ 0, %while.body.preheader ]
  %m.023 = phi i32 [ %dec17, %_Z10subductionPA100_ii.exit ], [ %1, %while.body.preheader ]
  %6 = zext i32 %m.023 to i64
  %7 = zext i32 %m.023 to i64
  %8 = zext i32 %m.023 to i64
  %9 = xor i32 %indvar, -1
  %10 = add i32 %1, %9
  %11 = zext i32 %10 to i64
  %12 = add nsw i64 %11, -1
  %cmp50.i = icmp sgt i32 %m.023, 0
  br i1 %cmp50.i, label %for.body.us.us.preheader.i, label %_Z4zeroPA100_ii.exit.thread

_Z4zeroPA100_ii.exit.thread:                      ; preds = %while.body
  %13 = load i32, ptr %arrayidx1712, align 4, !tbaa !5
  %dec14 = add i32 %m.023, -1
  br label %_Z10subductionPA100_ii.exit

for.body.us.us.preheader.i:                       ; preds = %while.body
  %wide.trip.count108.i = zext nneg i32 %m.023 to i64
  %min.iters.check62 = icmp ult i32 %m.023, 4
  %n.vec65 = and i64 %6, 2147483644
  %cmp.n74 = icmp eq i64 %n.vec65, %6
  %min.iters.check48 = icmp ult i32 %m.023, 4
  %n.vec51 = and i64 %7, 2147483644
  %cmp.n59 = icmp eq i64 %n.vec51, %7
  br label %for.body.us.us.i

for.body.us.us.i:                                 ; preds = %for.inc40.us.us.i, %for.body.us.us.preheader.i
  %indvars.iv105.i = phi i64 [ 0, %for.body.us.us.preheader.i ], [ %indvars.iv.next106.i, %for.inc40.us.us.i ]
  %arrayidx.us.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105.i
  %14 = load i32, ptr %arrayidx.us.us.i, align 16, !tbaa !5
  br i1 %min.iters.check62, label %for.body7.us.us.i.preheader, label %vector.ph63

vector.ph63:                                      ; preds = %for.body.us.us.i
  %broadcast.splatinsert66 = insertelement <4 x i32> poison, i32 %14, i64 0
  %broadcast.splat67 = shufflevector <4 x i32> %broadcast.splatinsert66, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph63
  %index69 = phi i64 [ 0, %vector.ph63 ], [ %index.next72, %vector.body68 ]
  %vec.phi70 = phi <4 x i32> [ %broadcast.splat67, %vector.ph63 ], [ %16, %vector.body68 ]
  %15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105.i, i64 %index69
  %wide.load71 = load <4 x i32>, ptr %15, align 16, !tbaa !5
  %16 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load71, <4 x i32> %vec.phi70)
  %index.next72 = add nuw i64 %index69, 4
  %17 = icmp eq i64 %index.next72, %n.vec65
  br i1 %17, label %middle.block73, label %vector.body68, !llvm.loop !29

middle.block73:                                   ; preds = %vector.body68
  %18 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %16)
  br i1 %cmp.n74, label %for.cond4.for.cond.cleanup6_crit_edge.us.us.i, label %for.body7.us.us.i.preheader

for.body7.us.us.i.preheader:                      ; preds = %for.body.us.us.i, %middle.block73
  %indvars.iv.i.ph = phi i64 [ 0, %for.body.us.us.i ], [ %n.vec65, %middle.block73 ]
  %spec.store.select47.us.us.i.ph = phi i32 [ %14, %for.body.us.us.i ], [ %18, %middle.block73 ]
  br label %for.body7.us.us.i

for.body29.us.us.i:                               ; preds = %for.body29.us.us.i.preheader77, %for.body29.us.us.i
  %indvars.iv100.i = phi i64 [ %indvars.iv.next101.i, %for.body29.us.us.i ], [ %indvars.iv100.i.ph, %for.body29.us.us.i.preheader77 ]
  %arrayidx35.us.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105.i, i64 %indvars.iv100.i
  %19 = load i32, ptr %arrayidx35.us.us.i, align 4, !tbaa !5
  %sub.us.us.i = sub nsw i32 %19, %spec.store.select.us.us.i.lcssa
  store i32 %sub.us.us.i, ptr %arrayidx35.us.us.i, align 4, !tbaa !5
  %indvars.iv.next101.i = add nuw nsw i64 %indvars.iv100.i, 1
  %exitcond104.not.i = icmp eq i64 %indvars.iv.next101.i, %wide.trip.count108.i
  br i1 %exitcond104.not.i, label %for.inc40.us.us.i, label %for.body29.us.us.i, !llvm.loop !30

for.inc40.us.us.i:                                ; preds = %for.body29.us.us.i, %middle.block58, %for.cond4.for.cond.cleanup6_crit_edge.us.us.i
  %indvars.iv.next106.i = add nuw nsw i64 %indvars.iv105.i, 1
  %exitcond109.not.i = icmp eq i64 %indvars.iv.next106.i, %wide.trip.count108.i
  br i1 %exitcond109.not.i, label %for.body47.us.i.preheader, label %for.body.us.us.i, !llvm.loop !15

for.body47.us.i.preheader:                        ; preds = %for.inc40.us.us.i
  %min.iters.check37 = icmp ult i32 %m.023, 4
  %n.vec40 = and i64 %8, 2147483644
  %cmp.n45 = icmp eq i64 %n.vec40, %8
  br label %for.body47.us.i

for.body7.us.us.i:                                ; preds = %for.body7.us.us.i.preheader, %for.body7.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body7.us.us.i ], [ %indvars.iv.i.ph, %for.body7.us.us.i.preheader ]
  %spec.store.select47.us.us.i = phi i32 [ %spec.store.select.us.us.i, %for.body7.us.us.i ], [ %spec.store.select47.us.us.i.ph, %for.body7.us.us.i.preheader ]
  %arrayidx11.us.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105.i, i64 %indvars.iv.i
  %20 = load i32, ptr %arrayidx11.us.us.i, align 4, !tbaa !5
  %spec.store.select.us.us.i = call i32 @llvm.smin.i32(i32 %20, i32 %spec.store.select47.us.us.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count108.i
  br i1 %exitcond.not.i, label %for.cond4.for.cond.cleanup6_crit_edge.us.us.i, label %for.body7.us.us.i, !llvm.loop !31

for.cond4.for.cond.cleanup6_crit_edge.us.us.i:    ; preds = %for.body7.us.us.i, %middle.block73
  %spec.store.select.us.us.i.lcssa = phi i32 [ %18, %middle.block73 ], [ %spec.store.select.us.us.i, %for.body7.us.us.i ]
  %cmp23.not.us.us.i = icmp eq i32 %spec.store.select.us.us.i.lcssa, 0
  br i1 %cmp23.not.us.us.i, label %for.inc40.us.us.i, label %for.body29.us.us.i.preheader

for.body29.us.us.i.preheader:                     ; preds = %for.cond4.for.cond.cleanup6_crit_edge.us.us.i
  br i1 %min.iters.check48, label %for.body29.us.us.i.preheader77, label %vector.ph49

vector.ph49:                                      ; preds = %for.body29.us.us.i.preheader
  %broadcast.splatinsert52 = insertelement <4 x i32> poison, i32 %spec.store.select.us.us.i.lcssa, i64 0
  %broadcast.splat53 = shufflevector <4 x i32> %broadcast.splatinsert52, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body54

vector.body54:                                    ; preds = %vector.body54, %vector.ph49
  %index55 = phi i64 [ 0, %vector.ph49 ], [ %index.next57, %vector.body54 ]
  %21 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv105.i, i64 %index55
  %wide.load56 = load <4 x i32>, ptr %21, align 16, !tbaa !5
  %22 = sub nsw <4 x i32> %wide.load56, %broadcast.splat53
  store <4 x i32> %22, ptr %21, align 16, !tbaa !5
  %index.next57 = add nuw i64 %index55, 4
  %23 = icmp eq i64 %index.next57, %n.vec51
  br i1 %23, label %middle.block58, label %vector.body54, !llvm.loop !32

middle.block58:                                   ; preds = %vector.body54
  br i1 %cmp.n59, label %for.inc40.us.us.i, label %for.body29.us.us.i.preheader77

for.body29.us.us.i.preheader77:                   ; preds = %for.body29.us.us.i.preheader, %middle.block58
  %indvars.iv100.i.ph = phi i64 [ 0, %for.body29.us.us.i.preheader ], [ %n.vec51, %middle.block58 ]
  br label %for.body29.us.us.i

for.body47.us.i:                                  ; preds = %for.body47.us.i.preheader, %for.inc96.us.i
  %indvars.iv120.i = phi i64 [ %indvars.iv.next121.i, %for.inc96.us.i ], [ 0, %for.body47.us.i.preheader ]
  %arrayidx50.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv120.i
  %24 = load i32, ptr %arrayidx50.us.i, align 4, !tbaa !5
  br i1 %min.iters.check37, label %for.body57.us.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %for.body47.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %24, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body41

vector.body41:                                    ; preds = %vector.body41, %vector.ph38
  %index42 = phi i64 [ 0, %vector.ph38 ], [ %index.next43, %vector.body41 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph38 ], [ %40, %vector.body41 ]
  %25 = or disjoint i64 %index42, 1
  %26 = or disjoint i64 %index42, 2
  %27 = or disjoint i64 %index42, 3
  %28 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %index42, i64 %indvars.iv120.i
  %29 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %25, i64 %indvars.iv120.i
  %30 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %26, i64 %indvars.iv120.i
  %31 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %27, i64 %indvars.iv120.i
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = insertelement <4 x i32> poison, i32 %32, i64 0
  %37 = insertelement <4 x i32> %36, i32 %33, i64 1
  %38 = insertelement <4 x i32> %37, i32 %34, i64 2
  %39 = insertelement <4 x i32> %38, i32 %35, i64 3
  %40 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %39, <4 x i32> %vec.phi)
  %index.next43 = add nuw i64 %index42, 4
  %41 = icmp eq i64 %index.next43, %n.vec40
  br i1 %41, label %middle.block44, label %vector.body41, !llvm.loop !33

middle.block44:                                   ; preds = %vector.body41
  %42 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %40)
  br i1 %cmp.n45, label %for.cond54.for.cond.cleanup56_crit_edge.us.i, label %for.body57.us.i.preheader

for.body57.us.i.preheader:                        ; preds = %for.body47.us.i, %middle.block44
  %indvars.iv110.i.ph = phi i64 [ 0, %for.body47.us.i ], [ %n.vec40, %middle.block44 ]
  %spec.store.select4474.us.i.ph = phi i32 [ %24, %for.body47.us.i ], [ %42, %middle.block44 ]
  br label %for.body57.us.i

for.body84.us.i:                                  ; preds = %for.cond54.for.cond.cleanup56_crit_edge.us.i, %for.body84.us.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i, %for.body84.us.i ], [ 0, %for.cond54.for.cond.cleanup56_crit_edge.us.i ]
  %arrayidx90.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv115.i, i64 %indvars.iv120.i
  %43 = load i32, ptr %arrayidx90.us.i, align 4, !tbaa !5
  %sub91.us.i = sub nsw i32 %43, %spec.store.select44.us.i.lcssa
  store i32 %sub91.us.i, ptr %arrayidx90.us.i, align 4, !tbaa !5
  %indvars.iv.next116.i = add nuw nsw i64 %indvars.iv115.i, 1
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next116.i, %wide.trip.count108.i
  br i1 %exitcond119.not.i, label %for.inc96.us.i, label %for.body84.us.i, !llvm.loop !19

for.inc96.us.i:                                   ; preds = %for.body84.us.i, %for.cond54.for.cond.cleanup56_crit_edge.us.i
  %indvars.iv.next121.i = add nuw nsw i64 %indvars.iv120.i, 1
  %exitcond124.not.i = icmp eq i64 %indvars.iv.next121.i, %wide.trip.count108.i
  br i1 %exitcond124.not.i, label %_Z4zeroPA100_ii.exit, label %for.body47.us.i, !llvm.loop !20

for.body57.us.i:                                  ; preds = %for.body57.us.i.preheader, %for.body57.us.i
  %indvars.iv110.i = phi i64 [ %indvars.iv.next111.i, %for.body57.us.i ], [ %indvars.iv110.i.ph, %for.body57.us.i.preheader ]
  %spec.store.select4474.us.i = phi i32 [ %spec.store.select44.us.i, %for.body57.us.i ], [ %spec.store.select4474.us.i.ph, %for.body57.us.i.preheader ]
  %arrayidx61.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv110.i, i64 %indvars.iv120.i
  %44 = load i32, ptr %arrayidx61.us.i, align 4, !tbaa !5
  %spec.store.select44.us.i = call i32 @llvm.smin.i32(i32 %44, i32 %spec.store.select4474.us.i)
  %indvars.iv.next111.i = add nuw nsw i64 %indvars.iv110.i, 1
  %exitcond114.not.i = icmp eq i64 %indvars.iv.next111.i, %wide.trip.count108.i
  br i1 %exitcond114.not.i, label %for.cond54.for.cond.cleanup56_crit_edge.us.i, label %for.body57.us.i, !llvm.loop !34

for.cond54.for.cond.cleanup56_crit_edge.us.i:     ; preds = %for.body57.us.i, %middle.block44
  %spec.store.select44.us.i.lcssa = phi i32 [ %42, %middle.block44 ], [ %spec.store.select44.us.i, %for.body57.us.i ]
  %cmp78.not.us.i = icmp eq i32 %spec.store.select44.us.i.lcssa, 0
  br i1 %cmp78.not.us.i, label %for.inc96.us.i, label %for.body84.us.i

_Z4zeroPA100_ii.exit:                             ; preds = %for.inc96.us.i
  %45 = load i32, ptr %arrayidx1712, align 4, !tbaa !5
  %dec = add nsw i32 %m.023, -1
  %cmp19.i = icmp sgt i32 %m.023, 2
  br i1 %cmp19.i, label %for.body.preheader.i, label %_Z10subductionPA100_ii.exit

for.body.preheader.i:                             ; preds = %_Z4zeroPA100_ii.exit
  %wide.trip.count.i = zext nneg i32 %dec to i64
  br label %for.body.i

for.cond18.preheader.us.i:                        ; preds = %for.cond18.preheader.us.i.preheader, %for.cond18.for.cond.cleanup21_crit_edge.us.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.cond18.for.cond.cleanup21_crit_edge.us.i ], [ 1, %for.cond18.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %for.body22.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond18.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond18.preheader.us.i ]
  %offset.idx = or disjoint i64 %index, 1
  %46 = or disjoint i64 %index, 2
  %47 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep.i, i64 %indvars.iv32.i, i64 %46
  %wide.load = load <4 x i32>, ptr %47, align 8, !tbaa !5
  %48 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv32.i, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %48, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %49 = icmp eq i64 %index.next, %n.vec
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond18.for.cond.cleanup21_crit_edge.us.i, label %for.body22.us.i.preheader

for.body22.us.i.preheader:                        ; preds = %for.cond18.preheader.us.i, %middle.block
  %indvars.iv27.i.ph = phi i64 [ 1, %for.cond18.preheader.us.i ], [ %53, %middle.block ]
  br label %for.body22.us.i

for.body22.us.i:                                  ; preds = %for.body22.us.i.preheader, %for.body22.us.i
  %indvars.iv27.i = phi i64 [ %indvars.iv.next28.i, %for.body22.us.i ], [ %indvars.iv27.i.ph, %for.body22.us.i.preheader ]
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, 1
  %arrayidx28.us.i = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep.i, i64 %indvars.iv32.i, i64 %indvars.iv.next28.i
  %50 = load i32, ptr %arrayidx28.us.i, align 4, !tbaa !5
  %arrayidx32.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv32.i, i64 %indvars.iv27.i
  store i32 %50, ptr %arrayidx32.us.i, align 4, !tbaa !5
  %exitcond31.not.i = icmp eq i64 %indvars.iv.next28.i, %wide.trip.count.i
  br i1 %exitcond31.not.i, label %for.cond18.for.cond.cleanup21_crit_edge.us.i, label %for.body22.us.i, !llvm.loop !36

for.cond18.for.cond.cleanup21_crit_edge.us.i:     ; preds = %for.body22.us.i, %middle.block
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count.i
  br i1 %exitcond36.not.i, label %_Z10subductionPA100_ii.exit, label %for.cond18.preheader.us.i, !llvm.loop !24

for.body.i:                                       ; preds = %for.body.i, %for.body.preheader.i
  %indvars.iv.i9 = phi i64 [ 1, %for.body.preheader.i ], [ %indvars.iv.next.i10, %for.body.i ]
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.i9, 1
  %arrayidx1.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next.i10
  %51 = load i32, ptr %arrayidx1.i, align 4, !tbaa !5
  %arrayidx4.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.i9
  store i32 %51, ptr %arrayidx4.i, align 4, !tbaa !5
  %arrayidx7.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next.i10
  %52 = load i32, ptr %arrayidx7.i, align 16, !tbaa !5
  %arrayidx10.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.i9
  store i32 %52, ptr %arrayidx10.i, align 16, !tbaa !5
  %exitcond.not.i11 = icmp eq i64 %indvars.iv.next.i10, %wide.trip.count.i
  br i1 %exitcond.not.i11, label %for.cond18.preheader.us.i.preheader, label %for.body.i, !llvm.loop !25

for.cond18.preheader.us.i.preheader:              ; preds = %for.body.i
  %min.iters.check = icmp ult i64 %12, 4
  %n.vec = and i64 %12, -4
  %53 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %12, %n.vec
  br label %for.cond18.preheader.us.i

_Z10subductionPA100_ii.exit:                      ; preds = %for.cond18.for.cond.cleanup21_crit_edge.us.i, %_Z4zeroPA100_ii.exit.thread, %_Z4zeroPA100_ii.exit
  %dec17 = phi i32 [ %dec14, %_Z4zeroPA100_ii.exit.thread ], [ %dec, %_Z4zeroPA100_ii.exit ], [ %dec, %for.cond18.for.cond.cleanup21_crit_edge.us.i ]
  %.pn = phi i32 [ %13, %_Z4zeroPA100_ii.exit.thread ], [ %45, %_Z4zeroPA100_ii.exit ], [ %45, %for.cond18.for.cond.cleanup21_crit_edge.us.i ]
  %add16 = add nsw i32 %.pn, %s.024
  %cmp15.not = icmp eq i32 %dec17, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %cmp15.not, label %while.end, label %while.body, !llvm.loop !37

while.end:                                        ; preds = %_Z10subductionPA100_ii.exit, %while.cond.preheader
  %s.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ %add16, %_Z10subductionPA100_ii.exit ]
  %call19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0.lcssa)
  %vtable.i = load ptr, ptr %call19, align 8, !tbaa !38
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call19, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %54 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !40
  %tobool.not.i.i.i = icmp eq ptr %54, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %54, i64 56
  %55 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !58
  %tobool.not.i1.i.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %54, i64 67
  %56 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !64
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %54)
  %vtable.i.i.i = load ptr, ptr %54, align 8, !tbaa !38
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %57 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %57(ptr noundef nonnull align 8 dereferenceable(570) %54, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %56, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call19, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc22 = add nuw nsw i32 %t.026, 1
  %58 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc22, %58
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.cleanup, !llvm.loop !65
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !12, !13}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11, !12, !13}
!23 = distinct !{!23, !10, !11, !12}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11, !27}
!27 = !{!"llvm.loop.unswitch.partial.disable"}
!28 = distinct !{!28, !10, !11}
!29 = distinct !{!29, !10, !11, !12, !13}
!30 = distinct !{!30, !10, !11, !12}
!31 = distinct !{!31, !10, !11, !12}
!32 = distinct !{!32, !10, !11, !12, !13}
!33 = distinct !{!33, !10, !11, !12, !13}
!34 = distinct !{!34, !10, !11, !12}
!35 = distinct !{!35, !10, !11, !12, !13}
!36 = distinct !{!36, !10, !11, !12}
!37 = distinct !{!37, !10, !11}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !8, i64 0}
!40 = !{!41, !55, i64 240}
!41 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !42, i64 0, !52, i64 216, !7, i64 224, !53, i64 225, !54, i64 232, !55, i64 240, !56, i64 248, !57, i64 256}
!42 = !{!"_ZTSSt8ios_base", !43, i64 8, !43, i64 16, !44, i64 24, !45, i64 28, !45, i64 32, !46, i64 40, !48, i64 48, !7, i64 64, !6, i64 192, !49, i64 200, !50, i64 208}
!43 = !{!"long", !7, i64 0}
!44 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!45 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!46 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !47, i64 0}
!47 = !{!"any pointer", !7, i64 0}
!48 = !{!"_ZTSNSt8ios_base6_WordsE", !47, i64 0, !43, i64 8}
!49 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !47, i64 0}
!50 = !{!"_ZTSSt6locale", !51, i64 0}
!51 = !{!"p1 _ZTSNSt6locale5_ImplE", !47, i64 0}
!52 = !{!"p1 _ZTSSo", !47, i64 0}
!53 = !{!"bool", !7, i64 0}
!54 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !47, i64 0}
!55 = !{!"p1 _ZTSSt5ctypeIcE", !47, i64 0}
!56 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !47, i64 0}
!57 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !47, i64 0}
!58 = !{!59, !7, i64 56}
!59 = !{!"_ZTSSt5ctypeIcE", !60, i64 0, !61, i64 16, !53, i64 24, !62, i64 32, !62, i64 40, !63, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!60 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!61 = !{!"p1 _ZTS15__locale_struct", !47, i64 0}
!62 = !{!"p1 int", !47, i64 0}
!63 = !{!"p1 short", !47, i64 0}
!64 = !{!7, !7, i64 0}
!65 = distinct !{!65, !10, !11}
