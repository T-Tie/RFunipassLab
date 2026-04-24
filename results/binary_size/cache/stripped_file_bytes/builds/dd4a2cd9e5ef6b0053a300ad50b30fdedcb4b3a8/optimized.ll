; ModuleID = '<stdin>'
source_filename = "/tmp/tmpts2hjnp6.cpp"
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
@a = dso_local global [200 x [200 x i32]] zeroinitializer, align 16
@temp = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global [200 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4zeroi(i32 noundef %i) local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp.not42 = icmp sgt i32 %i, %0
  br i1 %cmp.not42, label %for.cond.cleanup31, label %for.cond1.preheader.preheader

for.cond1.preheader.preheader:                    ; preds = %entry
  %1 = sext i32 %i to i64
  %2 = add i32 %0, 1
  %3 = sub i32 %0, %i
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 1
  %min.iters.check95 = icmp ult i32 %3, 3
  %n.vec98 = and i64 %5, 8589934588
  %6 = add nsw i64 %n.vec98, %1
  %cmp.n105 = icmp eq i64 %5, %n.vec98
  %min.iters.check = icmp ult i32 %3, 3
  %n.vec = and i64 %5, 8589934588
  %7 = add nsw i64 %n.vec, %1
  %cmp.n = icmp eq i64 %5, %n.vec
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.preheader, %for.cond8.for.cond.cleanup10_crit_edge
  %indvars.iv74 = phi i64 [ %1, %for.cond1.preheader.preheader ], [ %indvars.iv.next75, %for.cond8.for.cond.cleanup10_crit_edge ]
  %add.ptr = getelementptr inbounds [200 x i32], ptr @a, i64 %indvars.iv74
  br i1 %min.iters.check95, label %for.body4.preheader, label %vector.ph96

vector.ph96:                                      ; preds = %for.cond1.preheader
  %invariant.gep127 = getelementptr i32, ptr %add.ptr, i64 %1
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph96
  %index100 = phi i64 [ 0, %vector.ph96 ], [ %index.next103, %vector.body99 ]
  %vec.phi = phi <4 x i32> [ splat (i32 1000), %vector.ph96 ], [ %8, %vector.body99 ]
  %gep128 = getelementptr i32, ptr %invariant.gep127, i64 %index100
  %wide.load102 = load <4 x i32>, ptr %gep128, align 4, !tbaa !5
  %8 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %wide.load102)
  %index.next103 = add nuw i64 %index100, 4
  %9 = icmp eq i64 %index.next103, %n.vec98
  br i1 %9, label %middle.block104, label %vector.body99, !llvm.loop !9

middle.block104:                                  ; preds = %vector.body99
  %10 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %8)
  br i1 %cmp.n105, label %for.cond1.for.cond8.preheader_crit_edge, label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.cond1.preheader, %middle.block104
  %indvars.iv.ph = phi i64 [ %1, %for.cond1.preheader ], [ %6, %middle.block104 ]
  %mi.138.ph = phi i32 [ 1000, %for.cond1.preheader ], [ %10, %middle.block104 ]
  br label %for.body4

for.cond34.preheader.preheader:                   ; preds = %for.cond8.for.cond.cleanup10_crit_edge
  %11 = sext i32 %i to i64
  %12 = add i32 %0, 1
  %min.iters.check108 = icmp ult i32 %3, 3
  %n.vec111 = and i64 %5, 8589934588
  %13 = add nsw i64 %n.vec111, %11
  %cmp.n118 = icmp eq i64 %5, %n.vec111
  br label %for.cond34.preheader

for.cond1.for.cond8.preheader_crit_edge:          ; preds = %for.body4, %middle.block104
  %.sroa.speculated31.lcssa = phi i32 [ %10, %middle.block104 ], [ %.sroa.speculated31, %for.body4 ]
  br i1 %min.iters.check, label %for.body11.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond1.for.cond8.preheader_crit_edge
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.speculated31.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep129 = getelementptr i32, ptr %add.ptr, i64 %1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %gep130 = getelementptr i32, ptr %invariant.gep129, i64 %index
  %wide.load = load <4 x i32>, ptr %gep130, align 4, !tbaa !5
  %14 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %14, ptr %gep130, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond8.for.cond.cleanup10_crit_edge, label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.cond1.for.cond8.preheader_crit_edge, %middle.block
  %indvars.iv69.ph = phi i64 [ %1, %for.cond1.for.cond8.preheader_crit_edge ], [ %7, %middle.block ]
  br label %for.body11

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %mi.138 = phi i32 [ %.sroa.speculated31, %for.body4 ], [ %mi.138.ph, %for.body4.preheader ]
  %add.ptr6 = getelementptr inbounds i32, ptr %add.ptr, i64 %indvars.iv
  %16 = load i32, ptr %add.ptr6, align 4, !tbaa !5
  %.sroa.speculated31 = tail call i32 @llvm.smin.i32(i32 %mi.138, i32 %16)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %for.cond1.for.cond8.preheader_crit_edge, label %for.body4, !llvm.loop !15

for.cond8.for.cond.cleanup10_crit_edge:           ; preds = %for.body11, %middle.block
  %indvars.iv.next75 = add nsw i64 %indvars.iv74, 1
  %lftr.wideiv77 = trunc i64 %indvars.iv.next75 to i32
  %exitcond78.not = icmp eq i32 %2, %lftr.wideiv77
  br i1 %exitcond78.not, label %for.cond34.preheader.preheader, label %for.cond1.preheader, !llvm.loop !16

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body11 ], [ %indvars.iv69.ph, %for.body11.preheader ]
  %add.ptr16 = getelementptr inbounds i32, ptr %add.ptr, i64 %indvars.iv69
  %17 = load i32, ptr %add.ptr16, align 4, !tbaa !5
  %sub = sub nsw i32 %17, %.sroa.speculated31.lcssa
  store i32 %sub, ptr %add.ptr16, align 4, !tbaa !5
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, 1
  %lftr.wideiv72 = trunc i64 %indvars.iv.next70 to i32
  %exitcond73.not = icmp eq i32 %2, %lftr.wideiv72
  br i1 %exitcond73.not, label %for.cond8.for.cond.cleanup10_crit_edge, label %for.body11, !llvm.loop !17

for.cond34.preheader:                             ; preds = %for.cond34.preheader.preheader, %for.cond48.for.cond.cleanup50_crit_edge
  %indvars.iv89 = phi i64 [ %11, %for.cond34.preheader.preheader ], [ %indvars.iv.next90, %for.cond48.for.cond.cleanup50_crit_edge ]
  %invariant.gep = getelementptr i32, ptr @a, i64 %indvars.iv89
  br i1 %min.iters.check108, label %for.body37.preheader, label %vector.ph109

vector.ph109:                                     ; preds = %for.cond34.preheader
  %invariant.gep131 = getelementptr i8, ptr %invariant.gep, i64 800
  %invariant.gep133 = getelementptr i8, ptr %invariant.gep, i64 1600
  %invariant.gep135 = getelementptr i8, ptr %invariant.gep, i64 2400
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph109
  %index113 = phi i64 [ 0, %vector.ph109 ], [ %index.next116, %vector.body112 ]
  %vec.phi114 = phi <4 x i32> [ splat (i32 1000), %vector.ph109 ], [ %27, %vector.body112 ]
  %offset.idx115 = add i64 %index113, %11
  %18 = getelementptr [200 x i32], ptr %invariant.gep, i64 %offset.idx115
  %gep132 = getelementptr [200 x i32], ptr %invariant.gep131, i64 %offset.idx115
  %gep134 = getelementptr [200 x i32], ptr %invariant.gep133, i64 %offset.idx115
  %gep136 = getelementptr [200 x i32], ptr %invariant.gep135, i64 %offset.idx115
  %19 = load i32, ptr %18, align 4, !tbaa !5
  %20 = load i32, ptr %gep132, align 4, !tbaa !5
  %21 = load i32, ptr %gep134, align 4, !tbaa !5
  %22 = load i32, ptr %gep136, align 4, !tbaa !5
  %23 = insertelement <4 x i32> poison, i32 %19, i64 0
  %24 = insertelement <4 x i32> %23, i32 %20, i64 1
  %25 = insertelement <4 x i32> %24, i32 %21, i64 2
  %26 = insertelement <4 x i32> %25, i32 %22, i64 3
  %27 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi114, <4 x i32> %26)
  %index.next116 = add nuw i64 %index113, 4
  %28 = icmp eq i64 %index.next116, %n.vec111
  br i1 %28, label %middle.block117, label %vector.body112, !llvm.loop !18

middle.block117:                                  ; preds = %vector.body112
  %29 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %27)
  br i1 %cmp.n118, label %for.cond34.for.cond48.preheader_crit_edge, label %for.body37.preheader

for.body37.preheader:                             ; preds = %for.cond34.preheader, %middle.block117
  %indvars.iv79.ph = phi i64 [ %11, %for.cond34.preheader ], [ %13, %middle.block117 ]
  %mi.354.ph = phi i32 [ 1000, %for.cond34.preheader ], [ %29, %middle.block117 ]
  br label %for.body37

for.cond.cleanup31:                               ; preds = %for.cond48.for.cond.cleanup50_crit_edge, %entry
  ret void

for.cond34.for.cond48.preheader_crit_edge:        ; preds = %for.body37, %middle.block117
  %.sroa.speculated.lcssa = phi i32 [ %29, %middle.block117 ], [ %.sroa.speculated, %for.body37 ]
  br label %for.body51

for.body37:                                       ; preds = %for.body37.preheader, %for.body37
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %for.body37 ], [ %indvars.iv79.ph, %for.body37.preheader ]
  %mi.354 = phi i32 [ %.sroa.speculated, %for.body37 ], [ %mi.354.ph, %for.body37.preheader ]
  %gep = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv79
  %30 = load i32, ptr %gep, align 4, !tbaa !5
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %mi.354, i32 %30)
  %indvars.iv.next80 = add nsw i64 %indvars.iv79, 1
  %lftr.wideiv82 = trunc i64 %indvars.iv.next80 to i32
  %exitcond83.not = icmp eq i32 %12, %lftr.wideiv82
  br i1 %exitcond83.not, label %for.cond34.for.cond48.preheader_crit_edge, label %for.body37, !llvm.loop !19

for.cond48.for.cond.cleanup50_crit_edge:          ; preds = %for.body51
  %indvars.iv.next90 = add nsw i64 %indvars.iv89, 1
  %lftr.wideiv92 = trunc i64 %indvars.iv.next90 to i32
  %exitcond93.not = icmp eq i32 %12, %lftr.wideiv92
  br i1 %exitcond93.not, label %for.cond.cleanup31, label %for.cond34.preheader, !llvm.loop !20

for.body51:                                       ; preds = %for.cond34.for.cond48.preheader_crit_edge, %for.body51
  %indvars.iv84 = phi i64 [ %11, %for.cond34.for.cond48.preheader_crit_edge ], [ %indvars.iv.next85, %for.body51 ]
  %gep60 = getelementptr [200 x i32], ptr %invariant.gep, i64 %indvars.iv84
  %31 = load i32, ptr %gep60, align 4, !tbaa !5
  %sub57 = sub nsw i32 %31, %.sroa.speculated.lcssa
  store i32 %sub57, ptr %gep60, align 4, !tbaa !5
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1
  %lftr.wideiv87 = trunc i64 %indvars.iv.next85 to i32
  %exitcond88.not = icmp eq i32 %12, %lftr.wideiv87
  br i1 %exitcond88.not, label %for.cond48.for.cond.cleanup50_crit_edge, label %for.body51, !llvm.loop !21
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #1 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp.not62 = icmp slt i32 %0, 1
  br i1 %cmp.not62, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  ret i32 0

for.body:                                         ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %25, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %indvars.iv110 = phi i64 [ %indvars.iv.next111, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr @sum, i64 0, i64 %indvars.iv110
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %cmp2.not46 = icmp slt i32 %1, 1
  br i1 %cmp2.not46, label %for.cond55.preheader.thread, label %for.cond5.preheader

for.cond15.preheader:                             ; preds = %for.cond.cleanup7
  %cmp16.not48 = icmp slt i32 %9, 1
  br i1 %cmp16.not48, label %for.cond55.preheader.thread, label %for.body18.preheader

for.body18.preheader:                             ; preds = %for.cond15.preheader
  %2 = add nuw i32 %9, 1
  %wide.trip.count = zext i32 %2 to i64
  %3 = zext nneg i32 %9 to i64
  %min.iters.check175 = icmp ult i32 %9, 4
  br i1 %min.iters.check175, label %for.body18.preheader189, label %vector.ph176

vector.ph176:                                     ; preds = %for.body18.preheader
  %n.vec178 = and i64 %3, 2147483644
  %4 = or disjoint i64 %n.vec178, 1
  br label %vector.body179

vector.body179:                                   ; preds = %vector.body179, %vector.ph176
  %index180 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body179 ]
  %offset.idx181 = or disjoint i64 %index180, 1
  %5 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 800), i64 %offset.idx181
  %wide.load182 = load <4 x i32>, ptr %5, align 4, !tbaa !5
  %6 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 1600), i64 %offset.idx181
  %wide.load183 = load <4 x i32>, ptr %6, align 4, !tbaa !5
  store <4 x i32> %wide.load183, ptr %5, align 4, !tbaa !5
  store <4 x i32> %wide.load182, ptr %6, align 4, !tbaa !5
  %index.next184 = add nuw i64 %index180, 4
  %7 = icmp eq i64 %index.next184, %n.vec178
  br i1 %7, label %middle.block185, label %vector.body179, !llvm.loop !22

middle.block185:                                  ; preds = %vector.body179
  %cmp.n186 = icmp eq i64 %n.vec178, %3
  br i1 %cmp.n186, label %for.body34.preheader, label %for.body18.preheader189

for.body18.preheader189:                          ; preds = %for.body18.preheader, %middle.block185
  %indvars.iv74.ph = phi i64 [ 1, %for.body18.preheader ], [ %4, %middle.block185 ]
  br label %for.body18

for.cond5.preheader:                              ; preds = %for.body, %for.cond.cleanup7
  %8 = phi i32 [ %9, %for.cond.cleanup7 ], [ %1, %for.body ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.cond.cleanup7 ], [ 1, %for.body ]
  %cmp6.not44 = icmp slt i32 %8, 1
  br i1 %cmp6.not44, label %for.cond5.preheader.for.cond.cleanup7_crit_edge, label %for.body8.lr.ph

for.cond5.preheader.for.cond.cleanup7_crit_edge:  ; preds = %for.cond5.preheader
  %.pre113 = sext i32 %8 to i64
  br label %for.cond.cleanup7

for.body8.lr.ph:                                  ; preds = %for.cond5.preheader
  %add.ptr = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv71
  br label %for.body8

for.cond.cleanup7:                                ; preds = %for.body8, %for.cond5.preheader.for.cond.cleanup7_crit_edge
  %.pre-phi = phi i64 [ %.pre113, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %11, %for.body8 ]
  %9 = phi i32 [ %8, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %10, %for.body8 ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %cmp2.not.not = icmp slt i64 %indvars.iv71, %.pre-phi
  br i1 %cmp2.not.not, label %for.cond5.preheader, label %for.cond15.preheader, !llvm.loop !23

for.body8:                                        ; preds = %for.body8.lr.ph, %for.body8
  %indvars.iv = phi i64 [ 1, %for.body8.lr.ph ], [ %indvars.iv.next, %for.body8 ]
  %add.ptr10 = getelementptr inbounds nuw i32, ptr %add.ptr, i64 %indvars.iv
  %call11 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %add.ptr10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, ptr @n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv, %11
  br i1 %cmp6.not.not, label %for.body8, label %for.cond.cleanup7, !llvm.loop !25

for.cond55.preheader.thread:                      ; preds = %for.body, %for.cond15.preheader
  %.pre123 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond.cleanup57

for.body34.preheader:                             ; preds = %for.body18, %middle.block185
  %12 = add nuw i32 %9, 1
  %wide.trip.count80 = zext i32 %12 to i64
  br label %for.body34

for.body18:                                       ; preds = %for.body18.preheader189, %for.body18
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.body18 ], [ %indvars.iv74.ph, %for.body18.preheader189 ]
  %add.ptr20 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 800), i64 %indvars.iv74
  %13 = load i32, ptr %add.ptr20, align 4, !tbaa !5
  %add.ptr22 = getelementptr inbounds nuw i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 1600), i64 %indvars.iv74
  %14 = load i32, ptr %add.ptr22, align 4, !tbaa !5
  store i32 %14, ptr %add.ptr20, align 4, !tbaa !5
  store i32 %13, ptr %add.ptr22, align 4, !tbaa !5
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count
  br i1 %exitcond.not, label %for.body34.preheader, label %for.body18, !llvm.loop !26

for.cond55.preheader:                             ; preds = %for.body34
  store i32 %18, ptr @temp, align 4, !tbaa !5
  %cmp56.not.not60.not = icmp eq i32 %9, 1
  %.pre = load i32, ptr %arrayidx, align 4, !tbaa !5
  br i1 %cmp56.not.not60.not, label %for.cond.cleanup57, label %for.cond1.preheader.preheader.i.lr.ph

for.cond1.preheader.preheader.i.lr.ph:            ; preds = %for.cond55.preheader
  %15 = add nuw nsw i32 %9, 1
  %wide.trip.count108 = zext nneg i32 %9 to i64
  %wide.trip.count98 = zext nneg i32 %15 to i64
  %wide.trip.count103 = zext nneg i32 %15 to i64
  %16 = add nsw i64 %wide.trip.count, -2
  %17 = add nsw i32 %9, -1
  br label %for.cond1.preheader.preheader.i

for.body34:                                       ; preds = %for.body34.preheader, %for.body34
  %indvars.iv77 = phi i64 [ 1, %for.body34.preheader ], [ %indvars.iv.next78, %for.body34 ]
  %add.ptr36 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv77
  %add.ptr38 = getelementptr inbounds nuw i8, ptr %add.ptr36, i64 4
  %18 = load i32, ptr %add.ptr38, align 4, !tbaa !5
  %add.ptr42 = getelementptr inbounds nuw i8, ptr %add.ptr36, i64 8
  %19 = load i32, ptr %add.ptr42, align 8, !tbaa !5
  store i32 %19, ptr %add.ptr38, align 4, !tbaa !5
  store i32 %18, ptr %add.ptr42, align 8, !tbaa !5
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %for.cond55.preheader, label %for.body34, !llvm.loop !27

for.cond55.loopexit:                              ; preds = %for.body104
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count108
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond109.not, label %for.cond55.for.cond.cleanup57_crit_edge, label %for.cond1.preheader.preheader.i, !llvm.loop !28

for.cond55.for.cond.cleanup57_crit_edge:          ; preds = %for.cond55.loopexit
  store i32 %76, ptr @temp, align 4, !tbaa !5
  store i32 %add, ptr %arrayidx, align 4, !tbaa !5
  br label %for.cond.cleanup57

for.cond.cleanup57:                               ; preds = %for.cond55.preheader.thread, %for.cond55.for.cond.cleanup57_crit_edge, %for.cond55.preheader
  %20 = phi i32 [ %add, %for.cond55.for.cond.cleanup57_crit_edge ], [ %.pre, %for.cond55.preheader ], [ %.pre123, %for.cond55.preheader.thread ]
  %call137 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %20)
  %vtable.i = load ptr, ptr %call137, align 8, !tbaa !29
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i43 = getelementptr inbounds i8, ptr %call137, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i43, i64 240
  %21 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !31
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup57
  tail call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup57
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 56
  %22 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !49
  %tobool.not.i1.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 67
  %23 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %21)
  %vtable.i.i.i = load ptr, ptr %21, align 8, !tbaa !29
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %24 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %21, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %23, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call137, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %25 = load i32, ptr @n, align 4, !tbaa !5
  %26 = sext i32 %25 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv110, %26
  br i1 %cmp.not.not, label %for.body, label %for.cond.cleanup, !llvm.loop !56

for.cond1.preheader.preheader.i:                  ; preds = %for.cond1.preheader.preheader.i.lr.ph, %for.cond55.loopexit
  %indvar = phi i64 [ 0, %for.cond1.preheader.preheader.i.lr.ph ], [ %indvar.next, %for.cond55.loopexit ]
  %indvars.iv105 = phi i64 [ 1, %for.cond1.preheader.preheader.i.lr.ph ], [ %indvars.iv.next106, %for.cond55.loopexit ]
  %indvars.iv93 = phi i64 [ 2, %for.cond1.preheader.preheader.i.lr.ph ], [ %indvars.iv.next94, %for.cond55.loopexit ]
  %27 = phi i32 [ %.pre, %for.cond1.preheader.preheader.i.lr.ph ], [ %add, %for.cond55.loopexit ]
  %28 = trunc i64 %indvar to i32
  %29 = sub i32 %17, %28
  %30 = zext i32 %29 to i64
  %31 = add nuw nsw i64 %30, 1
  %32 = trunc i64 %indvar to i32
  %33 = sub i32 %17, %32
  %34 = zext i32 %33 to i64
  %35 = add nuw nsw i64 %34, 1
  %36 = trunc i64 %indvar to i32
  %37 = sub i32 %17, %36
  %38 = zext i32 %37 to i64
  %39 = add nuw nsw i64 %38, 1
  %40 = sub i64 %16, %indvar
  %min.iters.check160 = icmp ult i32 %29, 3
  %n.vec163 = and i64 %31, 8589934588
  %41 = add nuw i64 %indvars.iv105, %n.vec163
  %cmp.n171 = icmp eq i64 %31, %n.vec163
  %min.iters.check147 = icmp ult i32 %33, 3
  %n.vec150 = and i64 %35, 8589934588
  %42 = add nuw i64 %indvars.iv105, %n.vec150
  %cmp.n157 = icmp eq i64 %35, %n.vec150
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond8.for.cond.cleanup10_crit_edge.i, %for.cond1.preheader.preheader.i
  %indvars.iv74.i = phi i64 [ %indvars.iv105, %for.cond1.preheader.preheader.i ], [ %indvars.iv.next75.i, %for.cond8.for.cond.cleanup10_crit_edge.i ]
  %add.ptr.i = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv74.i
  br i1 %min.iters.check160, label %for.body4.i.preheader, label %vector.ph161

vector.ph161:                                     ; preds = %for.cond1.preheader.i
  %43 = getelementptr i32, ptr %add.ptr.i, i64 %indvars.iv105
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph161
  %index165 = phi i64 [ 0, %vector.ph161 ], [ %index.next169, %vector.body164 ]
  %vec.phi166 = phi <4 x i32> [ splat (i32 1000), %vector.ph161 ], [ %45, %vector.body164 ]
  %44 = getelementptr i32, ptr %43, i64 %index165
  %wide.load168 = load <4 x i32>, ptr %44, align 4, !tbaa !5
  %45 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi166, <4 x i32> %wide.load168)
  %index.next169 = add nuw i64 %index165, 4
  %46 = icmp eq i64 %index.next169, %n.vec163
  br i1 %46, label %middle.block170, label %vector.body164, !llvm.loop !57

middle.block170:                                  ; preds = %vector.body164
  %47 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %45)
  br i1 %cmp.n171, label %for.body11.i.preheader, label %for.body4.i.preheader

for.body4.i.preheader:                            ; preds = %for.cond1.preheader.i, %middle.block170
  %indvars.iv.i.ph = phi i64 [ %indvars.iv105, %for.cond1.preheader.i ], [ %41, %middle.block170 ]
  %mi.138.i.ph = phi i32 [ 1000, %for.cond1.preheader.i ], [ %47, %middle.block170 ]
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.body4.i.preheader, %for.body4.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body4.i ], [ %indvars.iv.i.ph, %for.body4.i.preheader ]
  %mi.138.i = phi i32 [ %.sroa.speculated31.i, %for.body4.i ], [ %mi.138.i.ph, %for.body4.i.preheader ]
  %add.ptr6.i = getelementptr inbounds nuw i32, ptr %add.ptr.i, i64 %indvars.iv.i
  %48 = load i32, ptr %add.ptr6.i, align 4, !tbaa !5
  %.sroa.speculated31.i = tail call i32 @llvm.smin.i32(i32 %mi.138.i, i32 %48)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond82 = icmp eq i32 %15, %lftr.wideiv
  br i1 %exitcond82, label %for.body11.i.preheader, label %for.body4.i, !llvm.loop !58

for.body11.i.preheader:                           ; preds = %for.body4.i, %middle.block170
  %.sroa.speculated31.i.lcssa = phi i32 [ %47, %middle.block170 ], [ %.sroa.speculated31.i, %for.body4.i ]
  br i1 %min.iters.check147, label %for.body11.i.preheader188, label %vector.ph148

vector.ph148:                                     ; preds = %for.body11.i.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.speculated31.i.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %49 = getelementptr i32, ptr %add.ptr.i, i64 %indvars.iv105
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph148
  %index152 = phi i64 [ 0, %vector.ph148 ], [ %index.next155, %vector.body151 ]
  %50 = getelementptr i32, ptr %49, i64 %index152
  %wide.load154 = load <4 x i32>, ptr %50, align 4, !tbaa !5
  %51 = sub nsw <4 x i32> %wide.load154, %broadcast.splat
  store <4 x i32> %51, ptr %50, align 4, !tbaa !5
  %index.next155 = add nuw i64 %index152, 4
  %52 = icmp eq i64 %index.next155, %n.vec150
  br i1 %52, label %middle.block156, label %vector.body151, !llvm.loop !59

middle.block156:                                  ; preds = %vector.body151
  br i1 %cmp.n157, label %for.cond8.for.cond.cleanup10_crit_edge.i, label %for.body11.i.preheader188

for.body11.i.preheader188:                        ; preds = %for.body11.i.preheader, %middle.block156
  %indvars.iv69.i.ph = phi i64 [ %indvars.iv105, %for.body11.i.preheader ], [ %42, %middle.block156 ]
  br label %for.body11.i

for.cond8.for.cond.cleanup10_crit_edge.i:         ; preds = %for.body11.i, %middle.block156
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1
  %lftr.wideiv85 = trunc i64 %indvars.iv.next75.i to i32
  %exitcond86 = icmp eq i32 %15, %lftr.wideiv85
  br i1 %exitcond86, label %for.cond34.preheader.i.preheader, label %for.cond1.preheader.i, !llvm.loop !16

for.cond34.preheader.i.preheader:                 ; preds = %for.cond8.for.cond.cleanup10_crit_edge.i
  %min.iters.check135 = icmp ult i32 %37, 3
  %n.vec138 = and i64 %39, 8589934588
  %53 = add nuw i64 %indvars.iv105, %n.vec138
  %cmp.n144 = icmp eq i64 %39, %n.vec138
  br label %for.cond34.preheader.i

for.body11.i:                                     ; preds = %for.body11.i.preheader188, %for.body11.i
  %indvars.iv69.i = phi i64 [ %indvars.iv.next70.i, %for.body11.i ], [ %indvars.iv69.i.ph, %for.body11.i.preheader188 ]
  %add.ptr16.i = getelementptr inbounds nuw i32, ptr %add.ptr.i, i64 %indvars.iv69.i
  %54 = load i32, ptr %add.ptr16.i, align 4, !tbaa !5
  %sub.i = sub nsw i32 %54, %.sroa.speculated31.i.lcssa
  store i32 %sub.i, ptr %add.ptr16.i, align 4, !tbaa !5
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1
  %lftr.wideiv83 = trunc i64 %indvars.iv.next70.i to i32
  %exitcond84 = icmp eq i32 %15, %lftr.wideiv83
  br i1 %exitcond84, label %for.cond8.for.cond.cleanup10_crit_edge.i, label %for.body11.i, !llvm.loop !60

for.cond34.preheader.i:                           ; preds = %for.cond34.preheader.i.preheader, %for.cond48.for.cond.cleanup50_crit_edge.i
  %indvars.iv89.i = phi i64 [ %indvars.iv.next90.i, %for.cond48.for.cond.cleanup50_crit_edge.i ], [ %indvars.iv105, %for.cond34.preheader.i.preheader ]
  %invariant.gep.i = getelementptr i32, ptr @a, i64 %indvars.iv89.i
  br i1 %min.iters.check135, label %for.body37.i.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %for.cond34.preheader.i
  %invariant.gep206 = getelementptr i8, ptr %invariant.gep.i, i64 800
  %invariant.gep208 = getelementptr i8, ptr %invariant.gep.i, i64 1600
  %invariant.gep210 = getelementptr i8, ptr %invariant.gep.i, i64 2400
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next142, %vector.body139 ]
  %vec.phi = phi <4 x i32> [ splat (i32 1000), %vector.ph136 ], [ %64, %vector.body139 ]
  %offset.idx141 = add i64 %indvars.iv105, %index140
  %55 = getelementptr [200 x i32], ptr %invariant.gep.i, i64 %offset.idx141
  %gep207 = getelementptr [200 x i32], ptr %invariant.gep206, i64 %offset.idx141
  %gep209 = getelementptr [200 x i32], ptr %invariant.gep208, i64 %offset.idx141
  %gep211 = getelementptr [200 x i32], ptr %invariant.gep210, i64 %offset.idx141
  %56 = load i32, ptr %55, align 4, !tbaa !5
  %57 = load i32, ptr %gep207, align 4, !tbaa !5
  %58 = load i32, ptr %gep209, align 4, !tbaa !5
  %59 = load i32, ptr %gep211, align 4, !tbaa !5
  %60 = insertelement <4 x i32> poison, i32 %56, i64 0
  %61 = insertelement <4 x i32> %60, i32 %57, i64 1
  %62 = insertelement <4 x i32> %61, i32 %58, i64 2
  %63 = insertelement <4 x i32> %62, i32 %59, i64 3
  %64 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %vec.phi, <4 x i32> %63)
  %index.next142 = add nuw i64 %index140, 4
  %65 = icmp eq i64 %index.next142, %n.vec138
  br i1 %65, label %middle.block143, label %vector.body139, !llvm.loop !61

middle.block143:                                  ; preds = %vector.body139
  %66 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %64)
  br i1 %cmp.n144, label %for.body51.i.preheader, label %for.body37.i.preheader

for.body37.i.preheader:                           ; preds = %for.cond34.preheader.i, %middle.block143
  %indvars.iv79.i.ph = phi i64 [ %indvars.iv105, %for.cond34.preheader.i ], [ %53, %middle.block143 ]
  %mi.354.i.ph = phi i32 [ 1000, %for.cond34.preheader.i ], [ %66, %middle.block143 ]
  br label %for.body37.i

for.body37.i:                                     ; preds = %for.body37.i.preheader, %for.body37.i
  %indvars.iv79.i = phi i64 [ %indvars.iv.next80.i, %for.body37.i ], [ %indvars.iv79.i.ph, %for.body37.i.preheader ]
  %mi.354.i = phi i32 [ %.sroa.speculated.i, %for.body37.i ], [ %mi.354.i.ph, %for.body37.i.preheader ]
  %gep.i = getelementptr [200 x i32], ptr %invariant.gep.i, i64 %indvars.iv79.i
  %67 = load i32, ptr %gep.i, align 4, !tbaa !5
  %.sroa.speculated.i = tail call i32 @llvm.smin.i32(i32 %mi.354.i, i32 %67)
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %lftr.wideiv87 = trunc i64 %indvars.iv.next80.i to i32
  %exitcond88 = icmp eq i32 %15, %lftr.wideiv87
  br i1 %exitcond88, label %for.body51.i.preheader, label %for.body37.i, !llvm.loop !62

for.body51.i.preheader:                           ; preds = %for.body37.i, %middle.block143
  %.sroa.speculated.i.lcssa = phi i32 [ %66, %middle.block143 ], [ %.sroa.speculated.i, %for.body37.i ]
  br label %for.body51.i

for.cond48.for.cond.cleanup50_crit_edge.i:        ; preds = %for.body51.i
  %indvars.iv.next90.i = add nuw nsw i64 %indvars.iv89.i, 1
  %lftr.wideiv91 = trunc i64 %indvars.iv.next90.i to i32
  %exitcond92 = icmp eq i32 %15, %lftr.wideiv91
  br i1 %exitcond92, label %for.body71.lr.ph, label %for.cond34.preheader.i, !llvm.loop !20

for.body51.i:                                     ; preds = %for.body51.i.preheader, %for.body51.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %for.body51.i ], [ %indvars.iv105, %for.body51.i.preheader ]
  %gep60.i = getelementptr [200 x i32], ptr %invariant.gep.i, i64 %indvars.iv84.i
  %68 = load i32, ptr %gep60.i, align 4, !tbaa !5
  %sub57.i = sub nsw i32 %68, %.sroa.speculated.i.lcssa
  store i32 %sub57.i, ptr %gep60.i, align 4, !tbaa !5
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1
  %lftr.wideiv89 = trunc i64 %indvars.iv.next85.i to i32
  %exitcond90 = icmp eq i32 %15, %lftr.wideiv89
  br i1 %exitcond90, label %for.cond48.for.cond.cleanup50_crit_edge.i, label %for.body51.i, !llvm.loop !21

for.body71.lr.ph:                                 ; preds = %for.cond48.for.cond.cleanup50_crit_edge.i
  %add.ptr60 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 %indvars.iv105
  %add.ptr63 = getelementptr inbounds nuw i32, ptr %add.ptr60, i64 %indvars.iv105
  %69 = load i32, ptr %add.ptr63, align 4, !tbaa !5
  %add = add nsw i32 %27, %69
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %add.ptr74 = getelementptr inbounds nuw i8, ptr %add.ptr60, i64 800
  %add.ptr80 = getelementptr inbounds nuw i8, ptr %add.ptr60, i64 1600
  %min.iters.check = icmp ult i64 %40, 4
  br i1 %min.iters.check, label %for.body71.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body71.lr.ph
  %n.vec = and i64 %40, -4
  %70 = add i64 %indvars.iv93, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %indvars.iv93, %index
  %71 = getelementptr inbounds nuw i32, ptr %add.ptr74, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %71, align 4, !tbaa !5
  %72 = getelementptr inbounds nuw i32, ptr %add.ptr80, i64 %offset.idx
  %wide.load132 = load <4 x i32>, ptr %72, align 4, !tbaa !5
  store <4 x i32> %wide.load132, ptr %71, align 4, !tbaa !5
  store <4 x i32> %wide.load, ptr %72, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %73 = icmp eq i64 %index.next, %n.vec
  br i1 %73, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %40, %n.vec
  br i1 %cmp.n, label %for.body104.preheader, label %for.body71.preheader

for.body71.preheader:                             ; preds = %for.body71.lr.ph, %middle.block
  %indvars.iv95.ph = phi i64 [ %indvars.iv93, %for.body71.lr.ph ], [ %70, %middle.block ]
  br label %for.body71

for.body104.preheader:                            ; preds = %for.body71, %middle.block
  %invariant.gep = getelementptr inbounds nuw i32, ptr @a, i64 %indvars.iv105
  br label %for.body104

for.body71:                                       ; preds = %for.body71.preheader, %for.body71
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %for.body71 ], [ %indvars.iv95.ph, %for.body71.preheader ]
  %add.ptr77 = getelementptr inbounds nuw i32, ptr %add.ptr74, i64 %indvars.iv95
  %74 = load i32, ptr %add.ptr77, align 4, !tbaa !5
  %add.ptr83 = getelementptr inbounds nuw i32, ptr %add.ptr80, i64 %indvars.iv95
  %75 = load i32, ptr %add.ptr83, align 4, !tbaa !5
  store i32 %75, ptr %add.ptr77, align 4, !tbaa !5
  store i32 %74, ptr %add.ptr83, align 4, !tbaa !5
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %for.body104.preheader, label %for.body71, !llvm.loop !64

for.body104:                                      ; preds = %for.body104.preheader, %for.body104
  %indvars.iv100 = phi i64 [ %indvars.iv93, %for.body104.preheader ], [ %indvars.iv.next101, %for.body104 ]
  %gep = getelementptr inbounds nuw [200 x i32], ptr %invariant.gep, i64 %indvars.iv100
  %add.ptr110 = getelementptr inbounds nuw i8, ptr %gep, i64 4
  %76 = load i32, ptr %add.ptr110, align 4, !tbaa !5
  %add.ptr116 = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %77 = load i32, ptr %add.ptr116, align 4, !tbaa !5
  store i32 %77, ptr %add.ptr110, align 4, !tbaa !5
  store i32 %76, ptr %add.ptr116, align 4, !tbaa !5
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %for.cond55.loopexit, label %for.body104, !llvm.loop !65
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { noreturn }

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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !12}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !12, !13}
!23 = distinct !{!23, !10, !11, !24}
!24 = !{!"llvm.loop.unswitch.partial.disable"}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11, !12}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11}
!29 = !{!30, !30, i64 0}
!30 = !{!"vtable pointer", !8, i64 0}
!31 = !{!32, !46, i64 240}
!32 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !33, i64 0, !43, i64 216, !7, i64 224, !44, i64 225, !45, i64 232, !46, i64 240, !47, i64 248, !48, i64 256}
!33 = !{!"_ZTSSt8ios_base", !34, i64 8, !34, i64 16, !35, i64 24, !36, i64 28, !36, i64 32, !37, i64 40, !39, i64 48, !7, i64 64, !6, i64 192, !40, i64 200, !41, i64 208}
!34 = !{!"long", !7, i64 0}
!35 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!36 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!37 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !38, i64 0}
!38 = !{!"any pointer", !7, i64 0}
!39 = !{!"_ZTSNSt8ios_base6_WordsE", !38, i64 0, !34, i64 8}
!40 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !38, i64 0}
!41 = !{!"_ZTSSt6locale", !42, i64 0}
!42 = !{!"p1 _ZTSNSt6locale5_ImplE", !38, i64 0}
!43 = !{!"p1 _ZTSSo", !38, i64 0}
!44 = !{!"bool", !7, i64 0}
!45 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !38, i64 0}
!46 = !{!"p1 _ZTSSt5ctypeIcE", !38, i64 0}
!47 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !38, i64 0}
!48 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !38, i64 0}
!49 = !{!50, !7, i64 56}
!50 = !{!"_ZTSSt5ctypeIcE", !51, i64 0, !52, i64 16, !44, i64 24, !53, i64 32, !53, i64 40, !54, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!51 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!52 = !{!"p1 _ZTS15__locale_struct", !38, i64 0}
!53 = !{!"p1 int", !38, i64 0}
!54 = !{!"p1 short", !38, i64 0}
!55 = !{!7, !7, i64 0}
!56 = distinct !{!56, !10, !11}
!57 = distinct !{!57, !10, !11, !12, !13}
!58 = distinct !{!58, !10, !11, !12}
!59 = distinct !{!59, !10, !11, !12, !13}
!60 = distinct !{!60, !10, !11, !12}
!61 = distinct !{!61, !10, !11, !12, !13}
!62 = distinct !{!62, !10, !11, !12}
!63 = distinct !{!63, !10, !11, !12, !13}
!64 = distinct !{!64, !10, !11, !12}
!65 = distinct !{!65, !10, !11}
