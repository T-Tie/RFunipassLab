; ModuleID = '<stdin>'
source_filename = "/tmp/tmpueub5kws.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [1000 x [1000 x i32]] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3cuti(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp41 = icmp sgt i32 %n, 0
  br i1 %cmp41, label %for.cond1.preheader.us.us.preheader, label %for.end65

for.cond1.preheader.us.us.preheader:              ; preds = %entry
  %wide.trip.count90 = zext nneg i32 %n to i64
  %min.iters.check108 = icmp ult i32 %n, 4
  %n.vec111 = and i64 %wide.trip.count90, 2147483644
  %cmp.n117 = icmp eq i64 %n.vec111, %wide.trip.count90
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %wide.trip.count90, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count90
  br label %for.cond1.preheader.us.us

for.cond1.preheader.us.us:                        ; preds = %for.cond1.preheader.us.us.preheader, %for.cond11.for.end24_crit_edge.us.us
  %indvars.iv87 = phi i64 [ 0, %for.cond1.preheader.us.us.preheader ], [ %indvars.iv.next88, %for.cond11.for.end24_crit_edge.us.us ]
  br i1 %min.iters.check108, label %for.body3.us.us.preheader, label %vector.body112

vector.body112:                                   ; preds = %for.cond1.preheader.us.us, %vector.body112
  %index113 = phi i64 [ %index.next115, %vector.body112 ], [ 0, %for.cond1.preheader.us.us ]
  %vec.phi = phi <4 x i32> [ %1, %vector.body112 ], [ splat (i32 10000), %for.cond1.preheader.us.us ]
  %0 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv87, i64 %index113
  %wide.load114 = load <4 x i32>, ptr %0, align 16, !tbaa !5
  %1 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load114)
  %index.next115 = add nuw i64 %index113, 4
  %2 = icmp eq i64 %index.next115, %n.vec111
  br i1 %2, label %middle.block116, label %vector.body112, !llvm.loop !9

middle.block116:                                  ; preds = %vector.body112
  %3 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %1)
  br i1 %cmp.n117, label %for.cond1.for.cond11.preheader_crit_edge.us.us, label %for.body3.us.us.preheader

for.body3.us.us.preheader:                        ; preds = %for.cond1.preheader.us.us, %middle.block116
  %indvars.iv.ph = phi i64 [ 0, %for.cond1.preheader.us.us ], [ %n.vec111, %middle.block116 ]
  %min.138.us.us.ph = phi i32 [ 10000, %for.cond1.preheader.us.us ], [ %3, %middle.block116 ]
  br label %for.body3.us.us

for.body13.us.us:                                 ; preds = %for.body13.us.us.preheader, %for.body13.us.us
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body13.us.us ], [ %indvars.iv82.ph, %for.body13.us.us.preheader ]
  %arrayidx17.us.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv87, i64 %indvars.iv82
  %4 = load i32, ptr %arrayidx17.us.us, align 4, !tbaa !5
  %sub.us.us = sub nsw i32 %4, %spec.select.us.us.lcssa
  store i32 %sub.us.us, ptr %arrayidx17.us.us, align 4, !tbaa !5
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 1
  %exitcond86.not = icmp eq i64 %indvars.iv.next83, %wide.trip.count90
  br i1 %exitcond86.not, label %for.cond11.for.end24_crit_edge.us.us, label %for.body13.us.us, !llvm.loop !14

for.body3.us.us:                                  ; preds = %for.body3.us.us.preheader, %for.body3.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3.us.us ], [ %indvars.iv.ph, %for.body3.us.us.preheader ]
  %min.138.us.us = phi i32 [ %spec.select.us.us, %for.body3.us.us ], [ %min.138.us.us.ph, %for.body3.us.us.preheader ]
  %arrayidx5.us.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv87, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx5.us.us, align 4, !tbaa !5
  %spec.select.us.us = tail call i32 @llvm.smin.i32(i32 %min.138.us.us, i32 %5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count90
  br i1 %exitcond.not, label %for.cond1.for.cond11.preheader_crit_edge.us.us, label %for.body3.us.us, !llvm.loop !15

for.cond1.for.cond11.preheader_crit_edge.us.us:   ; preds = %for.body3.us.us, %middle.block116
  %spec.select.us.us.lcssa = phi i32 [ %3, %middle.block116 ], [ %spec.select.us.us, %for.body3.us.us ]
  br i1 %min.iters.check, label %for.body13.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond1.for.cond11.preheader_crit_edge.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv87, i64 %index
  %wide.load = load <4 x i32>, ptr %6, align 16, !tbaa !5
  %7 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %7, ptr %6, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond11.for.end24_crit_edge.us.us, label %for.body13.us.us.preheader

for.body13.us.us.preheader:                       ; preds = %for.cond1.for.cond11.preheader_crit_edge.us.us, %middle.block
  %indvars.iv82.ph = phi i64 [ 0, %for.cond1.for.cond11.preheader_crit_edge.us.us ], [ %n.vec, %middle.block ]
  br label %for.body13.us.us

for.cond11.for.end24_crit_edge.us.us:             ; preds = %for.body13.us.us, %middle.block
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %exitcond91.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count90
  br i1 %exitcond91.not, label %for.cond31.preheader.us.us.preheader, label %for.cond1.preheader.us.us, !llvm.loop !17

for.cond31.preheader.us.us.preheader:             ; preds = %for.cond11.for.end24_crit_edge.us.us
  %wide.trip.count105 = zext nneg i32 %n to i64
  %min.iters.check120 = icmp ult i32 %n, 4
  %n.vec123 = and i64 %wide.trip.count90, 2147483644
  %cmp.n129 = icmp eq i64 %n.vec123, %wide.trip.count90
  br label %for.cond31.preheader.us.us

for.cond31.preheader.us.us:                       ; preds = %for.cond31.preheader.us.us.preheader, %for.cond48.for.end62_crit_edge.us.us
  %indvars.iv102 = phi i64 [ 0, %for.cond31.preheader.us.us.preheader ], [ %indvars.iv.next103, %for.cond48.for.end62_crit_edge.us.us ]
  br i1 %min.iters.check120, label %for.body33.us.us.preheader, label %vector.body124

vector.body124:                                   ; preds = %for.cond31.preheader.us.us, %vector.body124
  %index125 = phi i64 [ %index.next127, %vector.body124 ], [ 0, %for.cond31.preheader.us.us ]
  %vec.phi126 = phi <4 x i32> [ %24, %vector.body124 ], [ splat (i32 10000), %for.cond31.preheader.us.us ]
  %9 = or disjoint i64 %index125, 1
  %10 = or disjoint i64 %index125, 2
  %11 = or disjoint i64 %index125, 3
  %12 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %index125, i64 %indvars.iv102
  %13 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %9, i64 %indvars.iv102
  %14 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %10, i64 %indvars.iv102
  %15 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %11, i64 %indvars.iv102
  %16 = load i32, ptr %12, align 4, !tbaa !5
  %17 = load i32, ptr %13, align 4, !tbaa !5
  %18 = load i32, ptr %14, align 4, !tbaa !5
  %19 = load i32, ptr %15, align 4, !tbaa !5
  %20 = insertelement <4 x i32> poison, i32 %16, i64 0
  %21 = insertelement <4 x i32> %20, i32 %17, i64 1
  %22 = insertelement <4 x i32> %21, i32 %18, i64 2
  %23 = insertelement <4 x i32> %22, i32 %19, i64 3
  %24 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi126, <4 x i32> %23)
  %index.next127 = add nuw i64 %index125, 4
  %25 = icmp eq i64 %index.next127, %n.vec123
  br i1 %25, label %middle.block128, label %vector.body124, !llvm.loop !18

middle.block128:                                  ; preds = %vector.body124
  %26 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %24)
  br i1 %cmp.n129, label %for.cond31.for.cond48.preheader_crit_edge.us.us, label %for.body33.us.us.preheader

for.body33.us.us.preheader:                       ; preds = %for.cond31.preheader.us.us, %middle.block128
  %indvars.iv92.ph = phi i64 [ 0, %for.cond31.preheader.us.us ], [ %n.vec123, %middle.block128 ]
  %min.460.us.us.ph = phi i32 [ 10000, %for.cond31.preheader.us.us ], [ %26, %middle.block128 ]
  br label %for.body33.us.us

for.body50.us.us:                                 ; preds = %for.cond31.for.cond48.preheader_crit_edge.us.us, %for.body50.us.us
  %indvars.iv97 = phi i64 [ 0, %for.cond31.for.cond48.preheader_crit_edge.us.us ], [ %indvars.iv.next98, %for.body50.us.us ]
  %arrayidx54.us.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv97, i64 %indvars.iv102
  %27 = load i32, ptr %arrayidx54.us.us, align 4, !tbaa !5
  %sub55.us.us = sub nsw i32 %27, %spec.select35.us.us.lcssa
  store i32 %sub55.us.us, ptr %arrayidx54.us.us, align 4, !tbaa !5
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count105
  br i1 %exitcond101.not, label %for.cond48.for.end62_crit_edge.us.us, label %for.body50.us.us, !llvm.loop !19

for.body33.us.us:                                 ; preds = %for.body33.us.us.preheader, %for.body33.us.us
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.body33.us.us ], [ %indvars.iv92.ph, %for.body33.us.us.preheader ]
  %min.460.us.us = phi i32 [ %spec.select35.us.us, %for.body33.us.us ], [ %min.460.us.us.ph, %for.body33.us.us.preheader ]
  %arrayidx37.us.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv92, i64 %indvars.iv102
  %28 = load i32, ptr %arrayidx37.us.us, align 4, !tbaa !5
  %spec.select35.us.us = tail call i32 @llvm.smin.i32(i32 %min.460.us.us, i32 %28)
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count105
  br i1 %exitcond96.not, label %for.cond31.for.cond48.preheader_crit_edge.us.us, label %for.body33.us.us, !llvm.loop !20

for.cond31.for.cond48.preheader_crit_edge.us.us:  ; preds = %for.body33.us.us, %middle.block128
  %spec.select35.us.us.lcssa = phi i32 [ %26, %middle.block128 ], [ %spec.select35.us.us, %for.body33.us.us ]
  br label %for.body50.us.us

for.cond48.for.end62_crit_edge.us.us:             ; preds = %for.body50.us.us
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %for.end65, label %for.cond31.preheader.us.us, !llvm.loop !21

for.end65:                                        ; preds = %for.cond48.for.end62_crit_edge.us.us, %entry
  %29 = load i32, ptr @sum, align 4, !tbaa !5
  %30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4004), align 4, !tbaa !5
  %add = add nsw i32 %30, %29
  store i32 %add, ptr @sum, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not44 = icmp slt i32 %0, 1
  br i1 %cmp.not44, label %for.end73, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %61, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %i.045 = phi i32 [ %inc72, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %entry ]
  %cmp230 = icmp sgt i32 %1, 0
  br i1 %cmp230, label %for.cond4.preheader, label %for.cond13.preheader.thread

for.cond13.preheader.thread:                      ; preds = %for.cond1.preheader
  %sum.promoted83 = load i32, ptr @sum, align 4
  br label %for.end68

for.cond13.preheader:                             ; preds = %for.inc10
  %sum.promoted = load i32, ptr @sum, align 4
  %cmp1441 = icmp sgt i32 %8, 1
  br i1 %cmp1441, label %for.cond1.preheader.us.us.preheader.i.preheader, label %for.end68

for.cond1.preheader.us.us.preheader.i.preheader:  ; preds = %for.cond13.preheader
  %2 = add nsw i32 %8, -1
  %3 = add nsw i32 %8, -2
  %4 = zext nneg i32 %8 to i64
  %wide.trip.count80 = zext nneg i32 %2 to i64
  br label %for.cond1.preheader.us.us.preheader.i

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %5 = phi i32 [ %8, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp528 = icmp sgt i32 %5, 0
  br i1 %cmp528, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %5 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv49, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !22

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %7, %for.body6 ]
  %8 = phi i32 [ %5, %for.cond4.preheader.for.inc10_crit_edge ], [ %6, %for.body6 ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %cmp2 = icmp slt i64 %indvars.iv.next50, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !23

for.cond1.preheader.us.us.preheader.i:            ; preds = %for.cond1.preheader.us.us.preheader.i.preheader, %for.inc66
  %indvars.iv73 = phi i64 [ 1, %for.cond1.preheader.us.us.preheader.i.preheader ], [ %indvars.iv.next74, %for.inc66 ]
  %indvars.iv71 = phi i64 [ 0, %for.cond1.preheader.us.us.preheader.i.preheader ], [ %indvars.iv.next72, %for.inc66 ]
  %indvars.iv56 = phi i32 [ %2, %for.cond1.preheader.us.us.preheader.i.preheader ], [ %indvars.iv.next57, %for.inc66 ]
  %add.i4042 = phi i32 [ %sum.promoted, %for.cond1.preheader.us.us.preheader.i.preheader ], [ %add.i, %for.inc66 ]
  %9 = sub nsw i64 %4, %indvars.iv71
  %10 = sub nsw i64 %4, %indvars.iv71
  %11 = sub nsw i64 %4, %indvars.iv71
  %12 = zext i32 %indvars.iv56 to i64
  %13 = add nsw i64 %12, -1
  %14 = trunc i64 %indvars.iv71 to i32
  %15 = sub i32 %3, %14
  %16 = zext i32 %15 to i64
  %17 = shl nuw nsw i64 %16, 2
  %18 = sub nsw i64 %4, %indvars.iv73
  %min.iters.check113 = icmp ult i64 %9, 4
  %n.vec116 = and i64 %9, -4
  %cmp.n123 = icmp eq i64 %9, %n.vec116
  %min.iters.check101 = icmp ult i64 %10, 4
  %n.vec104 = and i64 %10, -4
  %cmp.n110 = icmp eq i64 %10, %n.vec104
  br label %for.cond1.preheader.us.us.i

for.cond1.preheader.us.us.i:                      ; preds = %for.cond11.for.end24_crit_edge.us.us.i, %for.cond1.preheader.us.us.preheader.i
  %indvars.iv87.i = phi i64 [ 0, %for.cond1.preheader.us.us.preheader.i ], [ %indvars.iv.next88.i, %for.cond11.for.end24_crit_edge.us.us.i ]
  br i1 %min.iters.check113, label %for.body3.us.us.i.preheader, label %vector.body117

vector.body117:                                   ; preds = %for.cond1.preheader.us.us.i, %vector.body117
  %index118 = phi i64 [ %index.next121, %vector.body117 ], [ 0, %for.cond1.preheader.us.us.i ]
  %vec.phi119 = phi <4 x i32> [ %20, %vector.body117 ], [ splat (i32 10000), %for.cond1.preheader.us.us.i ]
  %19 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv87.i, i64 %index118
  %wide.load120 = load <4 x i32>, ptr %19, align 16, !tbaa !5
  %20 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi119, <4 x i32> %wide.load120)
  %index.next121 = add nuw i64 %index118, 4
  %21 = icmp eq i64 %index.next121, %n.vec116
  br i1 %21, label %middle.block122, label %vector.body117, !llvm.loop !25

middle.block122:                                  ; preds = %vector.body117
  %22 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %20)
  br i1 %cmp.n123, label %for.body13.us.us.i.preheader, label %for.body3.us.us.i.preheader

for.body3.us.us.i.preheader:                      ; preds = %for.cond1.preheader.us.us.i, %middle.block122
  %indvars.iv.i.ph = phi i64 [ 0, %for.cond1.preheader.us.us.i ], [ %n.vec116, %middle.block122 ]
  %min.138.us.us.i.ph = phi i32 [ 10000, %for.cond1.preheader.us.us.i ], [ %22, %middle.block122 ]
  br label %for.body3.us.us.i

for.body13.us.us.i:                               ; preds = %for.body13.us.us.i.preheader126, %for.body13.us.us.i
  %indvars.iv82.i = phi i64 [ %indvars.iv.next83.i, %for.body13.us.us.i ], [ %indvars.iv82.i.ph, %for.body13.us.us.i.preheader126 ]
  %arrayidx17.us.us.i = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv87.i, i64 %indvars.iv82.i
  %23 = load i32, ptr %arrayidx17.us.us.i, align 4, !tbaa !5
  %sub.us.us.i = sub nsw i32 %23, %spec.select.us.us.i.lcssa
  store i32 %sub.us.us.i, ptr %arrayidx17.us.us.i, align 4, !tbaa !5
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 1
  %exitcond86.not.i = icmp eq i64 %indvars.iv82.i, %18
  br i1 %exitcond86.not.i, label %for.cond11.for.end24_crit_edge.us.us.i, label %for.body13.us.us.i, !llvm.loop !26

for.body3.us.us.i:                                ; preds = %for.body3.us.us.i.preheader, %for.body3.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body3.us.us.i ], [ %indvars.iv.i.ph, %for.body3.us.us.i.preheader ]
  %min.138.us.us.i = phi i32 [ %spec.select.us.us.i, %for.body3.us.us.i ], [ %min.138.us.us.i.ph, %for.body3.us.us.i.preheader ]
  %arrayidx5.us.us.i = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv87.i, i64 %indvars.iv.i
  %24 = load i32, ptr %arrayidx5.us.us.i, align 4, !tbaa !5
  %spec.select.us.us.i = call i32 @llvm.smin.i32(i32 %min.138.us.us.i, i32 %24)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.i, %18
  br i1 %exitcond.not.i, label %for.body13.us.us.i.preheader, label %for.body3.us.us.i, !llvm.loop !27

for.body13.us.us.i.preheader:                     ; preds = %for.body3.us.us.i, %middle.block122
  %spec.select.us.us.i.lcssa = phi i32 [ %22, %middle.block122 ], [ %spec.select.us.us.i, %for.body3.us.us.i ]
  br i1 %min.iters.check101, label %for.body13.us.us.i.preheader126, label %vector.ph102

vector.ph102:                                     ; preds = %for.body13.us.us.i.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us.us.i.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index106 = phi i64 [ 0, %vector.ph102 ], [ %index.next108, %vector.body105 ]
  %25 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv87.i, i64 %index106
  %wide.load107 = load <4 x i32>, ptr %25, align 16, !tbaa !5
  %26 = sub nsw <4 x i32> %wide.load107, %broadcast.splat
  store <4 x i32> %26, ptr %25, align 16, !tbaa !5
  %index.next108 = add nuw i64 %index106, 4
  %27 = icmp eq i64 %index.next108, %n.vec104
  br i1 %27, label %middle.block109, label %vector.body105, !llvm.loop !28

middle.block109:                                  ; preds = %vector.body105
  br i1 %cmp.n110, label %for.cond11.for.end24_crit_edge.us.us.i, label %for.body13.us.us.i.preheader126

for.body13.us.us.i.preheader126:                  ; preds = %for.body13.us.us.i.preheader, %middle.block109
  %indvars.iv82.i.ph = phi i64 [ 0, %for.body13.us.us.i.preheader ], [ %n.vec104, %middle.block109 ]
  br label %for.body13.us.us.i

for.cond11.for.end24_crit_edge.us.us.i:           ; preds = %for.body13.us.us.i, %middle.block109
  %indvars.iv.next88.i = add nuw nsw i64 %indvars.iv87.i, 1
  %exitcond91.not.i = icmp eq i64 %indvars.iv87.i, %18
  br i1 %exitcond91.not.i, label %for.cond31.preheader.us.us.i.preheader, label %for.cond1.preheader.us.us.i, !llvm.loop !17

for.cond31.preheader.us.us.i.preheader:           ; preds = %for.cond11.for.end24_crit_edge.us.us.i
  %min.iters.check90 = icmp ult i64 %11, 4
  %n.vec93 = and i64 %11, -4
  %cmp.n98 = icmp eq i64 %11, %n.vec93
  br label %for.cond31.preheader.us.us.i

for.cond31.preheader.us.us.i:                     ; preds = %for.cond31.preheader.us.us.i.preheader, %for.cond48.for.end62_crit_edge.us.us.i
  %indvars.iv102.i = phi i64 [ %indvars.iv.next103.i, %for.cond48.for.end62_crit_edge.us.us.i ], [ 0, %for.cond31.preheader.us.us.i.preheader ]
  br i1 %min.iters.check90, label %for.body33.us.us.i.preheader, label %vector.body94

vector.body94:                                    ; preds = %for.cond31.preheader.us.us.i, %vector.body94
  %index95 = phi i64 [ %index.next96, %vector.body94 ], [ 0, %for.cond31.preheader.us.us.i ]
  %vec.phi = phi <4 x i32> [ %43, %vector.body94 ], [ splat (i32 10000), %for.cond31.preheader.us.us.i ]
  %28 = or disjoint i64 %index95, 1
  %29 = or disjoint i64 %index95, 2
  %30 = or disjoint i64 %index95, 3
  %31 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %index95, i64 %indvars.iv102.i
  %32 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %28, i64 %indvars.iv102.i
  %33 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %29, i64 %indvars.iv102.i
  %34 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %30, i64 %indvars.iv102.i
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = load i32, ptr %32, align 4, !tbaa !5
  %37 = load i32, ptr %33, align 4, !tbaa !5
  %38 = load i32, ptr %34, align 4, !tbaa !5
  %39 = insertelement <4 x i32> poison, i32 %35, i64 0
  %40 = insertelement <4 x i32> %39, i32 %36, i64 1
  %41 = insertelement <4 x i32> %40, i32 %37, i64 2
  %42 = insertelement <4 x i32> %41, i32 %38, i64 3
  %43 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %42)
  %index.next96 = add nuw i64 %index95, 4
  %44 = icmp eq i64 %index.next96, %n.vec93
  br i1 %44, label %middle.block97, label %vector.body94, !llvm.loop !29

middle.block97:                                   ; preds = %vector.body94
  %45 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %43)
  br i1 %cmp.n98, label %for.body50.us.us.i.preheader, label %for.body33.us.us.i.preheader

for.body33.us.us.i.preheader:                     ; preds = %for.cond31.preheader.us.us.i, %middle.block97
  %indvars.iv92.i.ph = phi i64 [ 0, %for.cond31.preheader.us.us.i ], [ %n.vec93, %middle.block97 ]
  %min.460.us.us.i.ph = phi i32 [ 10000, %for.cond31.preheader.us.us.i ], [ %45, %middle.block97 ]
  br label %for.body33.us.us.i

for.body50.us.us.i:                               ; preds = %for.body50.us.us.i.preheader, %for.body50.us.us.i
  %indvars.iv97.i = phi i64 [ %indvars.iv.next98.i, %for.body50.us.us.i ], [ 0, %for.body50.us.us.i.preheader ]
  %arrayidx54.us.us.i = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv97.i, i64 %indvars.iv102.i
  %46 = load i32, ptr %arrayidx54.us.us.i, align 4, !tbaa !5
  %sub55.us.us.i = sub nsw i32 %46, %spec.select35.us.us.i.lcssa
  store i32 %sub55.us.us.i, ptr %arrayidx54.us.us.i, align 4, !tbaa !5
  %indvars.iv.next98.i = add nuw nsw i64 %indvars.iv97.i, 1
  %exitcond101.not.i = icmp eq i64 %indvars.iv97.i, %18
  br i1 %exitcond101.not.i, label %for.cond48.for.end62_crit_edge.us.us.i, label %for.body50.us.us.i, !llvm.loop !19

for.body33.us.us.i:                               ; preds = %for.body33.us.us.i.preheader, %for.body33.us.us.i
  %indvars.iv92.i = phi i64 [ %indvars.iv.next93.i, %for.body33.us.us.i ], [ %indvars.iv92.i.ph, %for.body33.us.us.i.preheader ]
  %min.460.us.us.i = phi i32 [ %spec.select35.us.us.i, %for.body33.us.us.i ], [ %min.460.us.us.i.ph, %for.body33.us.us.i.preheader ]
  %arrayidx37.us.us.i = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv92.i, i64 %indvars.iv102.i
  %47 = load i32, ptr %arrayidx37.us.us.i, align 4, !tbaa !5
  %spec.select35.us.us.i = call i32 @llvm.smin.i32(i32 %min.460.us.us.i, i32 %47)
  %indvars.iv.next93.i = add nuw nsw i64 %indvars.iv92.i, 1
  %exitcond96.not.i = icmp eq i64 %indvars.iv92.i, %18
  br i1 %exitcond96.not.i, label %for.body50.us.us.i.preheader, label %for.body33.us.us.i, !llvm.loop !30

for.body50.us.us.i.preheader:                     ; preds = %for.body33.us.us.i, %middle.block97
  %spec.select35.us.us.i.lcssa = phi i32 [ %45, %middle.block97 ], [ %spec.select35.us.us.i, %for.body33.us.us.i ]
  br label %for.body50.us.us.i

for.cond48.for.end62_crit_edge.us.us.i:           ; preds = %for.body50.us.us.i
  %indvars.iv.next103.i = add nuw nsw i64 %indvars.iv102.i, 1
  %exitcond106.not.i = icmp eq i64 %indvars.iv102.i, %18
  br i1 %exitcond106.not.i, label %_Z3cuti.exit, label %for.cond31.preheader.us.us.i, !llvm.loop !21

_Z3cuti.exit:                                     ; preds = %for.cond48.for.end62_crit_edge.us.us.i
  %48 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 4004), align 4, !tbaa !5
  %add.i = add nsw i32 %48, %add.i4042
  %cmp1834 = icmp sgt i64 %18, 1
  br i1 %cmp1834, label %for.cond20.preheader.us.preheader, label %for.inc66

for.cond20.preheader.us.preheader:                ; preds = %_Z3cuti.exit
  %wide.trip.count61 = zext i32 %indvars.iv56 to i64
  %min.iters.check = icmp ult i64 %13, 4
  %n.vec = and i64 %13, -4
  %49 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %13, %n.vec
  br label %for.cond20.preheader.us

for.cond20.preheader.us:                          ; preds = %for.cond20.preheader.us.preheader, %for.cond20.for.inc37_crit_edge.us
  %indvars.iv58 = phi i64 [ 1, %for.cond20.preheader.us.preheader ], [ %indvars.iv.next59, %for.cond20.for.inc37_crit_edge.us ]
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br i1 %min.iters.check, label %for.body23.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond20.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond20.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %50 = or disjoint i64 %index, 2
  %51 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv.next59, i64 %50
  %wide.load = load <4 x i32>, ptr %51, align 8, !tbaa !5
  %52 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv58, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %52, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %53 = icmp eq i64 %index.next, %n.vec
  br i1 %53, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond20.for.inc37_crit_edge.us, label %for.body23.us.preheader

for.body23.us.preheader:                          ; preds = %for.cond20.preheader.us, %middle.block
  %indvars.iv53.ph = phi i64 [ 1, %for.cond20.preheader.us ], [ %49, %middle.block ]
  br label %for.body23.us

for.body23.us:                                    ; preds = %for.body23.us.preheader, %for.body23.us
  %indvars.iv53 = phi i64 [ %indvars.iv.next54, %for.body23.us ], [ %indvars.iv53.ph, %for.body23.us.preheader ]
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %arrayidx29.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv.next59, i64 %indvars.iv.next54
  %54 = load i32, ptr %arrayidx29.us, align 4, !tbaa !5
  %arrayidx33.us = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv58, i64 %indvars.iv53
  store i32 %54, ptr %arrayidx33.us, align 4, !tbaa !5
  %exitcond.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count61
  br i1 %exitcond.not, label %for.cond20.for.inc37_crit_edge.us, label %for.body23.us, !llvm.loop !32

for.cond20.for.inc37_crit_edge.us:                ; preds = %for.body23.us, %middle.block
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %for.body55.preheader, label %for.cond20.preheader.us, !llvm.loop !33

for.body55.preheader:                             ; preds = %for.cond20.for.inc37_crit_edge.us
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 getelementptr inbounds nuw (i8, ptr @a, i64 4), ptr nonnull align 8 getelementptr inbounds nuw (i8, ptr @a, i64 8), i64 %17, i1 false), !tbaa !5
  %wide.trip.count69 = zext i32 %indvars.iv56 to i64
  br label %for.body55

for.body55:                                       ; preds = %for.body55.preheader, %for.body55
  %indvars.iv66 = phi i64 [ 1, %for.body55.preheader ], [ %indvars.iv.next67, %for.body55 ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %arrayidx58 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv.next67
  %55 = load i32, ptr %arrayidx58, align 16, !tbaa !5
  %arrayidx61 = getelementptr inbounds nuw [1000 x [1000 x i32]], ptr @a, i64 0, i64 %indvars.iv66
  store i32 %55, ptr %arrayidx61, align 16, !tbaa !5
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %wide.trip.count69
  br i1 %exitcond70.not, label %for.inc66, label %for.body55, !llvm.loop !34

for.inc66:                                        ; preds = %for.body55, %_Z3cuti.exit
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  %indvars.iv.next57 = add i32 %indvars.iv56, -1
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond13.for.end68_crit_edge, label %for.cond1.preheader.us.us.preheader.i, !llvm.loop !35

for.cond13.for.end68_crit_edge:                   ; preds = %for.inc66
  store i32 %add.i, ptr @sum, align 4, !tbaa !5
  br label %for.end68

for.end68:                                        ; preds = %for.cond13.preheader.thread, %for.cond13.for.end68_crit_edge, %for.cond13.preheader
  %56 = phi i32 [ %add.i, %for.cond13.for.end68_crit_edge ], [ %sum.promoted, %for.cond13.preheader ], [ %sum.promoted83, %for.cond13.preheader.thread ]
  %call69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %56)
  %vtable.i = load ptr, ptr %call69, align 8, !tbaa !36
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call69, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %57 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !38
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end68
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end68
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %57, i64 56
  %58 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !56
  %tobool.not.i1.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %57, i64 67
  %59 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !62
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %57)
  %vtable.i.i.i = load ptr, ptr %57, align 8, !tbaa !36
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %60 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %60(ptr noundef nonnull align 8 dereferenceable(570) %57, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %59, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call69, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  store i32 0, ptr @sum, align 4, !tbaa !5
  %inc72 = add nuw nsw i32 %i.045, 1
  %61 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.045, %61
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end73, !llvm.loop !63

for.end73:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12, !13}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11, !24}
!24 = !{!"llvm.loop.unswitch.partial.disable"}
!25 = distinct !{!25, !10, !11, !12, !13}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10, !11, !12}
!28 = distinct !{!28, !10, !11, !12, !13}
!29 = distinct !{!29, !10, !11, !12, !13}
!30 = distinct !{!30, !10, !11, !12}
!31 = distinct !{!31, !10, !11, !12, !13}
!32 = distinct !{!32, !10, !11, !12}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10, !11}
!36 = !{!37, !37, i64 0}
!37 = !{!"vtable pointer", !8, i64 0}
!38 = !{!39, !53, i64 240}
!39 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !40, i64 0, !50, i64 216, !7, i64 224, !51, i64 225, !52, i64 232, !53, i64 240, !54, i64 248, !55, i64 256}
!40 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !44, i64 40, !46, i64 48, !7, i64 64, !6, i64 192, !47, i64 200, !48, i64 208}
!41 = !{!"long", !7, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!44 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !45, i64 0}
!45 = !{!"any pointer", !7, i64 0}
!46 = !{!"_ZTSNSt8ios_base6_WordsE", !45, i64 0, !41, i64 8}
!47 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !45, i64 0}
!48 = !{!"_ZTSSt6locale", !49, i64 0}
!49 = !{!"p1 _ZTSNSt6locale5_ImplE", !45, i64 0}
!50 = !{!"p1 _ZTSSo", !45, i64 0}
!51 = !{!"bool", !7, i64 0}
!52 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !45, i64 0}
!53 = !{!"p1 _ZTSSt5ctypeIcE", !45, i64 0}
!54 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !45, i64 0}
!55 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !45, i64 0}
!56 = !{!57, !7, i64 56}
!57 = !{!"_ZTSSt5ctypeIcE", !58, i64 0, !59, i64 16, !51, i64 24, !60, i64 32, !60, i64 40, !61, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!58 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!59 = !{!"p1 _ZTS15__locale_struct", !45, i64 0}
!60 = !{!"p1 int", !45, i64 0}
!61 = !{!"p1 short", !45, i64 0}
!62 = !{!7, !7, i64 0}
!63 = distinct !{!63, !10, !11}
