; ModuleID = '<stdin>'
source_filename = "/tmp/tmpiu21qn6z.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4hangi(i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.cond.cleanup11

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = sext i32 %m to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 10000), %vector.ph ], [ %2, %vector.body ]
  %1 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.body12.lr.ph, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %min.010.ph = phi i32 [ 10000, %for.body.lr.ph ], [ %4, %middle.block ]
  br label %for.body

for.body12.lr.ph:                                 ; preds = %for.body, %middle.block
  %spec.select.lcssa = phi i32 [ %4, %middle.block ], [ %spec.select, %for.body ]
  %idxprom13 = sext i32 %m to i64
  %wide.trip.count19 = zext nneg i32 %0 to i64
  %min.iters.check24 = icmp ult i32 %0, 4
  br i1 %min.iters.check24, label %for.body12.preheader, label %vector.ph25

vector.ph25:                                      ; preds = %for.body12.lr.ph
  %n.vec27 = and i64 %wide.trip.count, 2147483644
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body28

vector.body28:                                    ; preds = %vector.body28, %vector.ph25
  %index29 = phi i64 [ 0, %vector.ph25 ], [ %index.next31, %vector.body28 ]
  %5 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom13, i64 %index29
  %wide.load30 = load <4 x i32>, ptr %5, align 16, !tbaa !5
  %6 = sub nsw <4 x i32> %wide.load30, %broadcast.splat
  store <4 x i32> %6, ptr %5, align 16, !tbaa !5
  %index.next31 = add nuw i64 %index29, 4
  %7 = icmp eq i64 %index.next31, %n.vec27
  br i1 %7, label %middle.block32, label %vector.body28, !llvm.loop !14

middle.block32:                                   ; preds = %vector.body28
  %cmp.n33 = icmp eq i64 %n.vec27, %wide.trip.count
  br i1 %cmp.n33, label %for.cond.cleanup11, label %for.body12.preheader

for.body12.preheader:                             ; preds = %for.body12.lr.ph, %middle.block32
  %indvars.iv16.ph = phi i64 [ 0, %for.body12.lr.ph ], [ %n.vec27, %middle.block32 ]
  br label %for.body12

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %min.010 = phi i32 [ %spec.select, %for.body ], [ %min.010.ph, %for.body.preheader ]
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %indvars.iv
  %8 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %8, i32 %min.010)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body12.lr.ph, label %for.body, !llvm.loop !15

for.cond.cleanup11:                               ; preds = %for.body12, %middle.block32, %entry
  ret void

for.body12:                                       ; preds = %for.body12.preheader, %for.body12
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.body12 ], [ %indvars.iv16.ph, %for.body12.preheader ]
  %arrayidx16 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom13, i64 %indvars.iv16
  %9 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx16, align 4, !tbaa !5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond20.not = icmp eq i64 %indvars.iv.next17, %wide.trip.count19
  br i1 %exitcond20.not, label %for.cond.cleanup11, label %for.body12, !llvm.loop !16
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3liei(i32 noundef %m) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %0, 0
  br i1 %cmp9, label %for.body.lr.ph, label %for.cond.cleanup11

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %m to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ splat (i32 10000), %vector.ph ], [ %16, %vector.body ]
  %1 = or disjoint i64 %index, 1
  %2 = or disjoint i64 %index, 2
  %3 = or disjoint i64 %index, 3
  %4 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %index, i64 %idxprom1
  %5 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %1, i64 %idxprom1
  %6 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %2, i64 %idxprom1
  %7 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %3, i64 %idxprom1
  %8 = load i32, ptr %4, align 4, !tbaa !5
  %9 = load i32, ptr %5, align 4, !tbaa !5
  %10 = load i32, ptr %6, align 4, !tbaa !5
  %11 = load i32, ptr %7, align 4, !tbaa !5
  %12 = insertelement <4 x i32> poison, i32 %8, i64 0
  %13 = insertelement <4 x i32> %12, i32 %9, i64 1
  %14 = insertelement <4 x i32> %13, i32 %10, i64 2
  %15 = insertelement <4 x i32> %14, i32 %11, i64 3
  %16 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %15, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %17 = icmp eq i64 %index.next, %n.vec
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %18 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %16)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.body12.lr.ph, label %for.body.preheader

for.body.preheader:                               ; preds = %for.body.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  %min.010.ph = phi i32 [ 10000, %for.body.lr.ph ], [ %18, %middle.block ]
  br label %for.body

for.body12.lr.ph:                                 ; preds = %for.body, %middle.block
  %spec.select.lcssa = phi i32 [ %18, %middle.block ], [ %spec.select, %for.body ]
  %idxprom15 = sext i32 %m to i64
  %wide.trip.count19 = zext nneg i32 %0 to i64
  br label %for.body12

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %min.010 = phi i32 [ %spec.select, %for.body ], [ %min.010.ph, %for.body.preheader ]
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %idxprom1
  %19 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %19, i32 %min.010)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body12.lr.ph, label %for.body, !llvm.loop !18

for.cond.cleanup11:                               ; preds = %for.body12, %entry
  ret void

for.body12:                                       ; preds = %for.body12.lr.ph, %for.body12
  %indvars.iv16 = phi i64 [ 0, %for.body12.lr.ph ], [ %indvars.iv.next17, %for.body12 ]
  %arrayidx16 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv16, i64 %idxprom15
  %20 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx16, align 4, !tbaa !5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %exitcond20.not = icmp eq i64 %indvars.iv.next17, %wide.trip.count19
  br i1 %exitcond20.not, label %for.cond.cleanup11, label %for.body12, !llvm.loop !19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_Z3delPA100_i(ptr noundef captures(none) %a) local_unnamed_addr #1 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %0, 2
  br i1 %cmp21, label %for.cond1.preheader.preheader, label %for.end34

for.cond1.preheader.preheader:                    ; preds = %entry
  %invariant.gep = getelementptr inbounds nuw i8, ptr %a, i64 400
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.preheader, %for.inc10
  %1 = phi i32 [ %0, %for.cond1.preheader.preheader ], [ %5, %for.inc10 ]
  %indvars.iv31 = phi i64 [ 1, %for.cond1.preheader.preheader ], [ %indvars.iv.next32, %for.inc10 ]
  %cmp218 = icmp sgt i32 %1, 0
  br i1 %cmp218, label %for.body3, label %for.inc10

for.cond13.preheader:                             ; preds = %for.inc10
  %cmp1526 = icmp sgt i32 %5, 2
  br i1 %cmp1526, label %for.cond17.preheader, label %for.end34

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond1.preheader ]
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr %invariant.gep, i64 %indvars.iv31, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31, i64 %indvars.iv
  store i32 %2, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp2, label %for.body3, label %for.inc10, !llvm.loop !20

for.inc10:                                        ; preds = %for.body3, %for.cond1.preheader
  %5 = phi i32 [ %1, %for.cond1.preheader ], [ %3, %for.body3 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %sub = add nsw i32 %5, -1
  %6 = sext i32 %sub to i64
  %cmp = icmp slt i64 %indvars.iv.next32, %6
  br i1 %cmp, label %for.cond1.preheader, label %for.cond13.preheader, !llvm.loop !21

for.cond17.preheader:                             ; preds = %for.cond13.preheader, %for.inc32
  %7 = phi i32 [ %12, %for.inc32 ], [ %5, %for.cond13.preheader ]
  %indvars.iv37 = phi i64 [ %8, %for.inc32 ], [ 1, %for.cond13.preheader ]
  %cmp1823 = icmp sgt i32 %7, 0
  %8 = add nuw nsw i64 %indvars.iv37, 1
  br i1 %cmp1823, label %for.body19, label %for.inc32

for.body19:                                       ; preds = %for.cond17.preheader, %for.body19
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %for.body19 ], [ 0, %for.cond17.preheader ]
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv34, i64 %8
  %9 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %arrayidx28 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv34, i64 %indvars.iv37
  store i32 %9, ptr %arrayidx28, align 4, !tbaa !5
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %10 = load i32, ptr @n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp18 = icmp slt i64 %indvars.iv.next35, %11
  br i1 %cmp18, label %for.body19, label %for.inc32, !llvm.loop !23

for.inc32:                                        ; preds = %for.body19, %for.cond17.preheader
  %12 = phi i32 [ %7, %for.cond17.preheader ], [ %10, %for.body19 ]
  %sub14 = add nsw i32 %12, -1
  %13 = sext i32 %sub14 to i64
  %cmp15 = icmp slt i64 %8, %13
  br i1 %cmp15, label %for.cond17.preheader, label %for.end34, !llvm.loop !24

for.end34:                                        ; preds = %for.inc32, %entry, %for.cond13.preheader
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp48 = icmp sgt i32 %0, 0
  br i1 %cmp48, label %for.cond2.preheader, label %for.cond.cleanup

for.cond2.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %47, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %l.049 = phi i32 [ %inc33, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  %cmp337 = icmp sgt i32 %1, 0
  br i1 %cmp337, label %for.cond6.preheader, label %while.end

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  ret i32 0

while.cond.preheader:                             ; preds = %for.cond.cleanup8
  %cmp1644 = icmp sgt i32 %4, 1
  br i1 %cmp1644, label %for.cond17.preheader.lr.ph, label %while.end

for.cond17.preheader.lr.ph:                       ; preds = %while.cond.preheader
  %wide.trip.count.i = zext nneg i32 %4 to i64
  %cmp21.i.not = icmp eq i32 %4, 2
  %sub.i31 = add nsw i32 %4, -1
  %2 = tail call i32 @llvm.umax.i32(i32 %sub.i31, i32 2)
  %smax = zext nneg i32 %2 to i64
  %min.iters.check100 = icmp ult i32 %4, 4
  %n.vec103 = and i64 %wide.trip.count.i, 2147483644
  %cmp.n110 = icmp eq i64 %n.vec103, %wide.trip.count.i
  %min.iters.check88 = icmp ult i32 %4, 4
  %n.vec91 = and i64 %wide.trip.count.i, 2147483644
  %cmp.n97 = icmp eq i64 %n.vec91, %wide.trip.count.i
  %min.iters.check77 = icmp ult i32 %4, 4
  %n.vec80 = and i64 %wide.trip.count.i, 2147483644
  %cmp.n85 = icmp eq i64 %n.vec80, %wide.trip.count.i
  %min.iters.check = icmp ult i32 %4, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br label %for.body19.us.preheader

for.cond6.preheader:                              ; preds = %for.cond2.preheader, %for.cond.cleanup8
  %3 = phi i32 [ %4, %for.cond.cleanup8 ], [ %1, %for.cond2.preheader ]
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.cond.cleanup8 ], [ 0, %for.cond2.preheader ]
  %cmp735 = icmp sgt i32 %3, 0
  br i1 %cmp735, label %for.body9, label %for.cond6.preheader.for.cond.cleanup8_crit_edge

for.cond6.preheader.for.cond.cleanup8_crit_edge:  ; preds = %for.cond6.preheader
  %.pre = sext i32 %3 to i64
  br label %for.cond.cleanup8

for.cond.cleanup8:                                ; preds = %for.body9, %for.cond6.preheader.for.cond.cleanup8_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond6.preheader.for.cond.cleanup8_crit_edge ], [ %6, %for.body9 ]
  %4 = phi i32 [ %3, %for.cond6.preheader.for.cond.cleanup8_crit_edge ], [ %5, %for.body9 ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %cmp3 = icmp slt i64 %indvars.iv.next54, %.pre-phi
  br i1 %cmp3, label %for.cond6.preheader, label %while.cond.preheader, !llvm.loop !25

for.body9:                                        ; preds = %for.cond6.preheader, %for.body9
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body9 ], [ 0, %for.cond6.preheader ]
  %arrayidx11 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv53, i64 %indvars.iv
  %call12 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx11)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp7 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8, !llvm.loop !26

for.body19.us.preheader:                          ; preds = %_Z3delPA100_i.exit, %for.cond17.preheader.lr.ph
  %sum.046 = phi i32 [ 0, %for.cond17.preheader.lr.ph ], [ %add, %_Z3delPA100_i.exit ]
  %k.045 = phi i32 [ 0, %for.cond17.preheader.lr.ph ], [ %inc29, %_Z3delPA100_i.exit ]
  br label %for.body19.us

for.body19.us:                                    ; preds = %for.body19.us.preheader, %_Z4hangi.exit.loopexit.us
  %indvars.iv56 = phi i64 [ 0, %for.body19.us.preheader ], [ %indvars.iv.next57, %_Z4hangi.exit.loopexit.us ]
  br i1 %min.iters.check100, label %for.body.i.us.preheader, label %vector.body104

vector.body104:                                   ; preds = %for.body19.us, %vector.body104
  %index105 = phi i64 [ %index.next108, %vector.body104 ], [ 0, %for.body19.us ]
  %vec.phi106 = phi <4 x i32> [ %8, %vector.body104 ], [ splat (i32 10000), %for.body19.us ]
  %7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv56, i64 %index105
  %wide.load107 = load <4 x i32>, ptr %7, align 16, !tbaa !5
  %8 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load107, <4 x i32> %vec.phi106)
  %index.next108 = add nuw i64 %index105, 4
  %9 = icmp eq i64 %index.next108, %n.vec103
  br i1 %9, label %middle.block109, label %vector.body104, !llvm.loop !27

middle.block109:                                  ; preds = %vector.body104
  %10 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %8)
  br i1 %cmp.n110, label %for.body12.i.preheader.us, label %for.body.i.us.preheader

for.body.i.us.preheader:                          ; preds = %for.body19.us, %middle.block109
  %indvars.iv.i.us.ph = phi i64 [ 0, %for.body19.us ], [ %n.vec103, %middle.block109 ]
  %min.010.i.us.ph = phi i32 [ 10000, %for.body19.us ], [ %10, %middle.block109 ]
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us.preheader, %for.body.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %for.body.i.us ], [ %indvars.iv.i.us.ph, %for.body.i.us.preheader ]
  %min.010.i.us = phi i32 [ %spec.select.i.us, %for.body.i.us ], [ %min.010.i.us.ph, %for.body.i.us.preheader ]
  %arrayidx2.i.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv56, i64 %indvars.iv.i.us
  %11 = load i32, ptr %arrayidx2.i.us, align 4, !tbaa !5
  %spec.select.i.us = tail call i32 @llvm.smin.i32(i32 %11, i32 %min.010.i.us)
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %for.body12.i.preheader.us, label %for.body.i.us, !llvm.loop !28

for.body12.i.us:                                  ; preds = %for.body12.i.us.preheader, %for.body12.i.us
  %indvars.iv16.i.us = phi i64 [ %indvars.iv.next17.i.us, %for.body12.i.us ], [ %indvars.iv16.i.us.ph, %for.body12.i.us.preheader ]
  %arrayidx16.i.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv56, i64 %indvars.iv16.i.us
  %12 = load i32, ptr %arrayidx16.i.us, align 4, !tbaa !5
  %sub.i.us = sub nsw i32 %12, %spec.select.i.us.lcssa
  store i32 %sub.i.us, ptr %arrayidx16.i.us, align 4, !tbaa !5
  %indvars.iv.next17.i.us = add nuw nsw i64 %indvars.iv16.i.us, 1
  %exitcond20.not.i.us = icmp eq i64 %indvars.iv.next17.i.us, %wide.trip.count.i
  br i1 %exitcond20.not.i.us, label %_Z4hangi.exit.loopexit.us, label %for.body12.i.us, !llvm.loop !29

for.body12.i.preheader.us:                        ; preds = %for.body.i.us, %middle.block109
  %spec.select.i.us.lcssa = phi i32 [ %10, %middle.block109 ], [ %spec.select.i.us, %for.body.i.us ]
  br i1 %min.iters.check88, label %for.body12.i.us.preheader, label %vector.ph89

vector.ph89:                                      ; preds = %for.body12.i.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.i.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph89
  %index93 = phi i64 [ 0, %vector.ph89 ], [ %index.next95, %vector.body92 ]
  %13 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv56, i64 %index93
  %wide.load94 = load <4 x i32>, ptr %13, align 16, !tbaa !5
  %14 = sub nsw <4 x i32> %wide.load94, %broadcast.splat
  store <4 x i32> %14, ptr %13, align 16, !tbaa !5
  %index.next95 = add nuw i64 %index93, 4
  %15 = icmp eq i64 %index.next95, %n.vec91
  br i1 %15, label %middle.block96, label %vector.body92, !llvm.loop !30

middle.block96:                                   ; preds = %vector.body92
  br i1 %cmp.n97, label %_Z4hangi.exit.loopexit.us, label %for.body12.i.us.preheader

for.body12.i.us.preheader:                        ; preds = %for.body12.i.preheader.us, %middle.block96
  %indvars.iv16.i.us.ph = phi i64 [ 0, %for.body12.i.preheader.us ], [ %n.vec91, %middle.block96 ]
  br label %for.body12.i.us

_Z4hangi.exit.loopexit.us:                        ; preds = %for.body12.i.us, %middle.block96
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count.i
  br i1 %exitcond.not, label %for.body25.us, label %for.body19.us, !llvm.loop !31

for.body25.us:                                    ; preds = %_Z4hangi.exit.loopexit.us, %_Z3liei.exit.loopexit.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %_Z3liei.exit.loopexit.us ], [ 0, %_Z4hangi.exit.loopexit.us ]
  br i1 %min.iters.check77, label %for.body.i16.us.preheader, label %vector.body81

vector.body81:                                    ; preds = %for.body25.us, %vector.body81
  %index82 = phi i64 [ %index.next83, %vector.body81 ], [ 0, %for.body25.us ]
  %vec.phi = phi <4 x i32> [ %31, %vector.body81 ], [ splat (i32 10000), %for.body25.us ]
  %16 = or disjoint i64 %index82, 1
  %17 = or disjoint i64 %index82, 2
  %18 = or disjoint i64 %index82, 3
  %19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %index82, i64 %indvars.iv59
  %20 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %16, i64 %indvars.iv59
  %21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %17, i64 %indvars.iv59
  %22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %18, i64 %indvars.iv59
  %23 = load i32, ptr %19, align 4, !tbaa !5
  %24 = load i32, ptr %20, align 4, !tbaa !5
  %25 = load i32, ptr %21, align 4, !tbaa !5
  %26 = load i32, ptr %22, align 4, !tbaa !5
  %27 = insertelement <4 x i32> poison, i32 %23, i64 0
  %28 = insertelement <4 x i32> %27, i32 %24, i64 1
  %29 = insertelement <4 x i32> %28, i32 %25, i64 2
  %30 = insertelement <4 x i32> %29, i32 %26, i64 3
  %31 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %30, <4 x i32> %vec.phi)
  %index.next83 = add nuw i64 %index82, 4
  %32 = icmp eq i64 %index.next83, %n.vec80
  br i1 %32, label %middle.block84, label %vector.body81, !llvm.loop !32

middle.block84:                                   ; preds = %vector.body81
  %33 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %31)
  br i1 %cmp.n85, label %for.body12.i25.preheader.us, label %for.body.i16.us.preheader

for.body.i16.us.preheader:                        ; preds = %for.body25.us, %middle.block84
  %indvars.iv.i17.us.ph = phi i64 [ 0, %for.body25.us ], [ %n.vec80, %middle.block84 ]
  %min.010.i18.us.ph = phi i32 [ 10000, %for.body25.us ], [ %33, %middle.block84 ]
  br label %for.body.i16.us

for.body.i16.us:                                  ; preds = %for.body.i16.us.preheader, %for.body.i16.us
  %indvars.iv.i17.us = phi i64 [ %indvars.iv.next.i21.us, %for.body.i16.us ], [ %indvars.iv.i17.us.ph, %for.body.i16.us.preheader ]
  %min.010.i18.us = phi i32 [ %spec.select.i20.us, %for.body.i16.us ], [ %min.010.i18.us.ph, %for.body.i16.us.preheader ]
  %arrayidx2.i19.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.i17.us, i64 %indvars.iv59
  %34 = load i32, ptr %arrayidx2.i19.us, align 4, !tbaa !5
  %spec.select.i20.us = tail call i32 @llvm.smin.i32(i32 %34, i32 %min.010.i18.us)
  %indvars.iv.next.i21.us = add nuw nsw i64 %indvars.iv.i17.us, 1
  %exitcond.not.i22.us = icmp eq i64 %indvars.iv.next.i21.us, %wide.trip.count.i
  br i1 %exitcond.not.i22.us, label %for.body12.i25.preheader.us, label %for.body.i16.us, !llvm.loop !33

for.body12.i25.us:                                ; preds = %for.body12.i25.preheader.us, %for.body12.i25.us
  %indvars.iv16.i26.us = phi i64 [ %indvars.iv.next17.i29.us, %for.body12.i25.us ], [ 0, %for.body12.i25.preheader.us ]
  %arrayidx16.i27.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv16.i26.us, i64 %indvars.iv59
  %35 = load i32, ptr %arrayidx16.i27.us, align 4, !tbaa !5
  %sub.i28.us = sub nsw i32 %35, %spec.select.i20.us.lcssa
  store i32 %sub.i28.us, ptr %arrayidx16.i27.us, align 4, !tbaa !5
  %indvars.iv.next17.i29.us = add nuw nsw i64 %indvars.iv16.i26.us, 1
  %exitcond20.not.i30.us = icmp eq i64 %indvars.iv.next17.i29.us, %wide.trip.count.i
  br i1 %exitcond20.not.i30.us, label %_Z3liei.exit.loopexit.us, label %for.body12.i25.us, !llvm.loop !19

for.body12.i25.preheader.us:                      ; preds = %for.body.i16.us, %middle.block84
  %spec.select.i20.us.lcssa = phi i32 [ %33, %middle.block84 ], [ %spec.select.i20.us, %for.body.i16.us ]
  br label %for.body12.i25.us

_Z3liei.exit.loopexit.us:                         ; preds = %for.body12.i25.us
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count.i
  br i1 %exitcond63.not, label %for.end28, label %for.body25.us, !llvm.loop !34

for.end28:                                        ; preds = %_Z3liei.exit.loopexit.us
  %36 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %add = add nsw i32 %36, %sum.046
  br i1 %cmp21.i.not, label %_Z3delPA100_i.exit, label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end28, %for.inc10.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.inc10.i ], [ 1, %for.end28 ]
  br i1 %min.iters.check, label %for.body3.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.i ]
  %37 = getelementptr inbounds nuw [100 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 400), i64 %indvars.iv31.i, i64 %index
  %wide.load = load <4 x i32>, ptr %37, align 16, !tbaa !5
  %38 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 %indvars.iv31.i, i64 %index
  store <4 x i32> %wide.load, ptr %38, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %39 = icmp eq i64 %index.next, %n.vec
  br i1 %39, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc10.i, label %for.body3.i.preheader

for.body3.i.preheader:                            ; preds = %for.cond1.preheader.i, %middle.block
  %indvars.iv.i32.ph = phi i64 [ 0, %for.cond1.preheader.i ], [ %n.vec, %middle.block ]
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.body3.i.preheader, %for.body3.i
  %indvars.iv.i32 = phi i64 [ %indvars.iv.next.i33, %for.body3.i ], [ %indvars.iv.i32.ph, %for.body3.i.preheader ]
  %arrayidx5.i = getelementptr inbounds nuw [100 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 400), i64 %indvars.iv31.i, i64 %indvars.iv.i32
  %40 = load i32, ptr %arrayidx5.i, align 4, !tbaa !5
  %arrayidx9.i = getelementptr inbounds nuw [100 x i32], ptr @a, i64 %indvars.iv31.i, i64 %indvars.iv.i32
  store i32 %40, ptr %arrayidx9.i, align 4, !tbaa !5
  %indvars.iv.next.i33 = add nuw nsw i64 %indvars.iv.i32, 1
  %exitcond65.not = icmp eq i64 %indvars.iv.next.i33, %wide.trip.count.i
  br i1 %exitcond65.not, label %for.inc10.i, label %for.body3.i, !llvm.loop !36

for.inc10.i:                                      ; preds = %for.body3.i, %middle.block
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next32.i, %smax
  br i1 %exitcond66.not, label %for.cond17.preheader.i, label %for.cond1.preheader.i, !llvm.loop !21

for.cond17.preheader.i:                           ; preds = %for.inc10.i, %for.inc32.i
  %indvars.iv37.i = phi i64 [ %41, %for.inc32.i ], [ 1, %for.inc10.i ]
  %41 = add nuw nsw i64 %indvars.iv37.i, 1
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.cond17.preheader.i, %for.body19.i
  %indvars.iv34.i = phi i64 [ %indvars.iv.next35.i, %for.body19.i ], [ 0, %for.cond17.preheader.i ]
  %arrayidx24.i = getelementptr inbounds nuw [100 x i32], ptr @a, i64 %indvars.iv34.i, i64 %41
  %42 = load i32, ptr %arrayidx24.i, align 4, !tbaa !5
  %arrayidx28.i = getelementptr inbounds nuw [100 x i32], ptr @a, i64 %indvars.iv34.i, i64 %indvars.iv37.i
  store i32 %42, ptr %arrayidx28.i, align 4, !tbaa !5
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1
  %exitcond67.not = icmp eq i64 %indvars.iv.next35.i, %wide.trip.count.i
  br i1 %exitcond67.not, label %for.inc32.i, label %for.body19.i, !llvm.loop !23

for.inc32.i:                                      ; preds = %for.body19.i
  %exitcond68.not = icmp eq i64 %41, %smax
  br i1 %exitcond68.not, label %_Z3delPA100_i.exit, label %for.cond17.preheader.i, !llvm.loop !24

_Z3delPA100_i.exit:                               ; preds = %for.inc32.i, %for.end28
  %inc29 = add nuw nsw i32 %k.045, 1
  %exitcond69.not = icmp eq i32 %inc29, %sub.i31
  br i1 %exitcond69.not, label %while.end, label %for.body19.us.preheader, !llvm.loop !37

while.end:                                        ; preds = %_Z3delPA100_i.exit, %for.cond2.preheader, %while.cond.preheader
  %sum.0.lcssa = phi i32 [ 0, %while.cond.preheader ], [ 0, %for.cond2.preheader ], [ %add, %_Z3delPA100_i.exit ]
  %call30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call30, align 8, !tbaa !38
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call30, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %43 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !40
  %tobool.not.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  tail call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 56
  %44 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !58
  %tobool.not.i1.i.i = icmp eq i8 %44, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %43, i64 67
  %45 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !64
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %43)
  %vtable.i.i.i = load ptr, ptr %43, align 8, !tbaa !38
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %46 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %46(ptr noundef nonnull align 8 dereferenceable(570) %43, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %45, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call30, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc33 = add nuw nsw i32 %l.049, 1
  %47 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc33, %47
  br i1 %cmp, label %for.cond2.preheader, label %for.cond.cleanup, !llvm.loop !65
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
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { noreturn }

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
!14 = distinct !{!14, !10, !11, !12, !13}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !11, !12, !13}
!18 = distinct !{!18, !10, !11, !12}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !22}
!22 = !{!"llvm.loop.unswitch.partial.disable"}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11, !22}
!25 = distinct !{!25, !10, !11, !22}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11, !12, !13}
!28 = distinct !{!28, !10, !11, !12}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !11, !12, !13}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11, !12, !13}
!33 = distinct !{!33, !10, !11, !12}
!34 = distinct !{!34, !10, !11}
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
