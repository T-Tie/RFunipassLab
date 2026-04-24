; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgqmbzjsw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@matrix = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z6changeii(i32 noundef %k, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %idxprom = sext i32 %k to i64
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom, i64 %idxprom
  %0 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %add = add nsw i32 %k, 1
  %idxprom3 = sext i32 %add to i64
  %arrayidx7 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom3, i64 %idxprom3
  store i32 %0, ptr %arrayidx7, align 4, !tbaa !5
  %add8 = add nsw i32 %k, 2
  %cmp.not.not = icmp sgt i32 %n, %add8
  br i1 %cmp.not.not, label %for.body.preheader, label %if.end

for.body.preheader:                               ; preds = %entry
  %1 = add nsw i64 %idxprom, 2
  %2 = add i32 %n, -3
  %3 = sub i32 %2, %k
  %4 = zext i32 %3 to i64
  %5 = add nuw nsw i64 %4, 1
  %min.iters.check = icmp ult i32 %3, 3
  br i1 %min.iters.check, label %for.body.preheader30, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %5, 8589934588
  %6 = add nsw i64 %1, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %1, %index
  %7 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %8 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom3, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %8, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %5, %n.vec
  br i1 %cmp.n, label %for.body25.preheader, label %for.body.preheader30

for.body.preheader30:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %1, %for.body.preheader ], [ %6, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader30, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader30 ]
  %arrayidx15 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom, i64 %indvars.iv
  %10 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %idxprom3, i64 %indvars.iv
  store i32 %10, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %n, %lftr.wideiv
  br i1 %exitcond.not, label %for.body25.preheader, label %for.body, !llvm.loop !14

for.body25.preheader:                             ; preds = %for.body, %middle.block
  br label %for.body25

for.body25:                                       ; preds = %for.body25.preheader, %for.body25
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body25 ], [ %1, %for.body25.preheader ]
  %arrayidx29 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv25, i64 %idxprom
  %11 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx34 = getelementptr inbounds [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv25, i64 %idxprom3
  store i32 %11, ptr %arrayidx34, align 4, !tbaa !5
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, 1
  %lftr.wideiv28 = trunc i64 %indvars.iv.next26 to i32
  %exitcond29.not = icmp eq i32 %n, %lftr.wideiv28
  br i1 %exitcond29.not, label %if.end, label %for.body25, !llvm.loop !15

if.end:                                           ; preds = %for.body25, %entry
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
  %sum = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %sum) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %sum, i8 0, i64 400, i1 false)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not77 = icmp sgt i32 %0, 0
  br i1 %cmp.not.not77, label %for.cond1.preheader, label %for.end125

for.cond1.preheader:                              ; preds = %entry, %for.end111
  %1 = phi i32 [ %61, %for.end111 ], [ %0, %entry ]
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.end111 ], [ 0, %entry ]
  %cmp3.not.not56 = icmp sgt i32 %1, 0
  br i1 %cmp3.not.not56, label %for.cond5.preheader, label %for.end111

for.cond115.preheader:                            ; preds = %for.end111
  %2 = icmp sgt i32 %61, 0
  br i1 %2, label %for.body118, label %for.end125

for.cond15.preheader:                             ; preds = %for.inc12
  %cmp17.not74 = icmp slt i32 %11, 2
  br i1 %cmp17.not74, label %for.end111, label %for.cond19.preheader.lr.ph

for.cond19.preheader.lr.ph:                       ; preds = %for.cond15.preheader
  %arrayidx100 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv125
  %arrayidx100.promoted = load i32, ptr %arrayidx100, align 4, !tbaa !5
  %3 = zext nneg i32 %11 to i64
  %4 = add nsw i32 %11, -1
  %wide.trip.count123 = zext nneg i32 %4 to i64
  %wide.trip.count100 = zext nneg i32 %11 to i64
  %wide.trip.count115 = zext nneg i32 %11 to i64
  %5 = add nsw i32 %11, -3
  br label %for.cond19.preheader

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.inc12
  %6 = phi i32 [ %10, %for.inc12 ], [ %1, %for.cond1.preheader ]
  %7 = phi i32 [ %11, %for.inc12 ], [ %1, %for.cond1.preheader ]
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc12 ], [ 0, %for.cond1.preheader ]
  %cmp7.not.not54 = icmp sgt i32 %7, 0
  br i1 %cmp7.not.not54, label %for.body8, label %for.cond5.preheader.for.inc12_crit_edge

for.cond5.preheader.for.inc12_crit_edge:          ; preds = %for.cond5.preheader
  %.pre = sext i32 %7 to i64
  br label %for.inc12

for.body8:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond5.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv84, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp7.not.not = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp7.not.not, label %for.body8, label %for.inc12, !llvm.loop !16

for.inc12:                                        ; preds = %for.body8, %for.cond5.preheader.for.inc12_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.inc12_crit_edge ], [ %9, %for.body8 ]
  %10 = phi i32 [ %6, %for.cond5.preheader.for.inc12_crit_edge ], [ %8, %for.body8 ]
  %11 = phi i32 [ %7, %for.cond5.preheader.for.inc12_crit_edge ], [ %8, %for.body8 ]
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %cmp3.not.not = icmp slt i64 %indvars.iv.next85, %.pre-phi
  br i1 %cmp3.not.not, label %for.cond5.preheader, label %for.cond15.preheader, !llvm.loop !17

for.cond19.preheader:                             ; preds = %for.cond19.preheader.lr.ph, %_Z6changeii.exit
  %indvars.iv87 = phi i64 [ 0, %for.cond19.preheader.lr.ph ], [ %indvars.iv.next88, %_Z6changeii.exit ]
  %add10676 = phi i32 [ %arrayidx100.promoted, %for.cond19.preheader.lr.ph ], [ %add106, %_Z6changeii.exit ]
  %12 = sub nsw i64 %wide.trip.count100, %indvars.iv87
  %13 = sub nsw i64 %wide.trip.count100, %indvars.iv87
  %14 = sub nsw i64 %wide.trip.count100, %indvars.iv87
  %15 = trunc i64 %indvars.iv87 to i32
  %16 = sub i32 %5, %15
  %17 = zext i32 %16 to i64
  %18 = add nuw nsw i64 %17, 1
  %cmp21.not.not64 = icmp samesign ult i64 %indvars.iv87, %3
  br i1 %cmp21.not.not64, label %for.cond23.preheader.preheader, label %for.end98

for.cond23.preheader.preheader:                   ; preds = %for.cond19.preheader
  %min.iters.check169 = icmp ult i64 %12, 4
  %n.vec172 = and i64 %12, -4
  %19 = add i64 %indvars.iv87, %n.vec172
  %cmp.n180 = icmp eq i64 %12, %n.vec172
  %min.iters.check156 = icmp ult i64 %13, 4
  %n.vec159 = and i64 %13, -4
  %20 = add i64 %indvars.iv87, %n.vec159
  %cmp.n166 = icmp eq i64 %13, %n.vec159
  br label %for.cond23.preheader

for.cond23.preheader:                             ; preds = %for.cond23.preheader.preheader, %for.inc55
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.inc55 ], [ %indvars.iv87, %for.cond23.preheader.preheader ]
  br i1 %min.iters.check169, label %for.body26.preheader, label %vector.body173

vector.body173:                                   ; preds = %for.cond23.preheader, %vector.body173
  %index174 = phi i64 [ %index.next178, %vector.body173 ], [ 0, %for.cond23.preheader ]
  %vec.phi175 = phi <4 x i32> [ %22, %vector.body173 ], [ splat (i32 10000), %for.cond23.preheader ]
  %offset.idx176 = add i64 %indvars.iv87, %index174
  %21 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv97, i64 %offset.idx176
  %wide.load177 = load <4 x i32>, ptr %21, align 4, !tbaa !5
  %22 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load177, <4 x i32> %vec.phi175)
  %index.next178 = add nuw i64 %index174, 4
  %23 = icmp eq i64 %index.next178, %n.vec172
  br i1 %23, label %middle.block179, label %vector.body173, !llvm.loop !19

middle.block179:                                  ; preds = %vector.body173
  %24 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %22)
  br i1 %cmp.n180, label %for.body42.lr.ph, label %for.body26.preheader

for.body26.preheader:                             ; preds = %for.cond23.preheader, %middle.block179
  %indvars.iv89.ph = phi i64 [ %indvars.iv87, %for.cond23.preheader ], [ %19, %middle.block179 ]
  %min.060.ph = phi i32 [ 10000, %for.cond23.preheader ], [ %24, %middle.block179 ]
  br label %for.body26

for.body42.lr.ph:                                 ; preds = %for.body26, %middle.block179
  %spec.select.lcssa = phi i32 [ %24, %middle.block179 ], [ %spec.select, %for.body26 ]
  br i1 %min.iters.check156, label %for.body42.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %for.body42.lr.ph
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %vector.ph157
  %index161 = phi i64 [ 0, %vector.ph157 ], [ %index.next164, %vector.body160 ]
  %offset.idx162 = add i64 %indvars.iv87, %index161
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv97, i64 %offset.idx162
  %wide.load163 = load <4 x i32>, ptr %25, align 4, !tbaa !5
  %26 = sub nsw <4 x i32> %wide.load163, %broadcast.splat
  store <4 x i32> %26, ptr %25, align 4, !tbaa !5
  %index.next164 = add nuw i64 %index161, 4
  %27 = icmp eq i64 %index.next164, %n.vec159
  br i1 %27, label %middle.block165, label %vector.body160, !llvm.loop !20

middle.block165:                                  ; preds = %vector.body160
  br i1 %cmp.n166, label %for.inc55, label %for.body42.preheader

for.body42.preheader:                             ; preds = %for.body42.lr.ph, %middle.block165
  %indvars.iv92.ph = phi i64 [ %indvars.iv87, %for.body42.lr.ph ], [ %20, %middle.block165 ]
  br label %for.body42

for.body26:                                       ; preds = %for.body26.preheader, %for.body26
  %indvars.iv89 = phi i64 [ %indvars.iv.next90, %for.body26 ], [ %indvars.iv89.ph, %for.body26.preheader ]
  %min.060 = phi i32 [ %spec.select, %for.body26 ], [ %min.060.ph, %for.body26.preheader ]
  %arrayidx30 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv97, i64 %indvars.iv89
  %28 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %28, i32 %min.060)
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next90, %wide.trip.count100
  br i1 %exitcond.not, label %for.body42.lr.ph, label %for.body26, !llvm.loop !21

for.body42:                                       ; preds = %for.body42.preheader, %for.body42
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %for.body42 ], [ %indvars.iv92.ph, %for.body42.preheader ]
  %arrayidx46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv97, i64 %indvars.iv92
  %29 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %sub47 = sub nsw i32 %29, %spec.select.lcssa
  store i32 %sub47, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1
  %exitcond96.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count100
  br i1 %exitcond96.not, label %for.inc55, label %for.body42, !llvm.loop !22

for.inc55:                                        ; preds = %for.body42, %middle.block165
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %for.cond62.preheader.preheader, label %for.cond23.preheader, !llvm.loop !23

for.cond62.preheader.preheader:                   ; preds = %for.inc55
  %min.iters.check144 = icmp ult i64 %14, 4
  %n.vec147 = and i64 %14, -4
  %30 = add i64 %indvars.iv87, %n.vec147
  %cmp.n153 = icmp eq i64 %14, %n.vec147
  br label %for.cond62.preheader

for.cond62.preheader:                             ; preds = %for.cond62.preheader.preheader, %for.inc96
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.inc96 ], [ %indvars.iv87, %for.cond62.preheader.preheader ]
  br i1 %min.iters.check144, label %for.body65.preheader, label %vector.body148

vector.body148:                                   ; preds = %for.cond62.preheader, %vector.body148
  %index149 = phi i64 [ %index.next151, %vector.body148 ], [ 0, %for.cond62.preheader ]
  %vec.phi = phi <4 x i32> [ %46, %vector.body148 ], [ splat (i32 10000), %for.cond62.preheader ]
  %offset.idx150 = add i64 %indvars.iv87, %index149
  %31 = add i64 %offset.idx150, 1
  %32 = add i64 %offset.idx150, 2
  %33 = add i64 %offset.idx150, 3
  %34 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %offset.idx150, i64 %indvars.iv112
  %35 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %31, i64 %indvars.iv112
  %36 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %32, i64 %indvars.iv112
  %37 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %33, i64 %indvars.iv112
  %38 = load i32, ptr %34, align 4, !tbaa !5
  %39 = load i32, ptr %35, align 4, !tbaa !5
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = load i32, ptr %37, align 4, !tbaa !5
  %42 = insertelement <4 x i32> poison, i32 %38, i64 0
  %43 = insertelement <4 x i32> %42, i32 %39, i64 1
  %44 = insertelement <4 x i32> %43, i32 %40, i64 2
  %45 = insertelement <4 x i32> %44, i32 %41, i64 3
  %46 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %45, <4 x i32> %vec.phi)
  %index.next151 = add nuw i64 %index149, 4
  %47 = icmp eq i64 %index.next151, %n.vec147
  br i1 %47, label %middle.block152, label %vector.body148, !llvm.loop !24

middle.block152:                                  ; preds = %vector.body148
  %48 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %46)
  br i1 %cmp.n153, label %for.body83.lr.ph, label %for.body65.preheader

for.body65.preheader:                             ; preds = %for.cond62.preheader, %middle.block152
  %indvars.iv102.ph = phi i64 [ %indvars.iv87, %for.cond62.preheader ], [ %30, %middle.block152 ]
  %min.268.ph = phi i32 [ 10000, %for.cond62.preheader ], [ %48, %middle.block152 ]
  br label %for.body65

for.body83.lr.ph:                                 ; preds = %for.body65, %middle.block152
  %spec.select53.lcssa = phi i32 [ %48, %middle.block152 ], [ %spec.select53, %for.body65 ]
  br label %for.body83

for.body65:                                       ; preds = %for.body65.preheader, %for.body65
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body65 ], [ %indvars.iv102.ph, %for.body65.preheader ]
  %min.268 = phi i32 [ %spec.select53, %for.body65 ], [ %min.268.ph, %for.body65.preheader ]
  %arrayidx69 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv102, i64 %indvars.iv112
  %49 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %spec.select53 = call i32 @llvm.smin.i32(i32 %49, i32 %min.268)
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count115
  br i1 %exitcond106.not, label %for.body83.lr.ph, label %for.body65, !llvm.loop !25

for.body83:                                       ; preds = %for.body83.lr.ph, %for.body83
  %indvars.iv107 = phi i64 [ %indvars.iv87, %for.body83.lr.ph ], [ %indvars.iv.next108, %for.body83 ]
  %arrayidx87 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv107, i64 %indvars.iv112
  %50 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %sub88 = sub nsw i32 %50, %spec.select53.lcssa
  store i32 %sub88, ptr %arrayidx87, align 4, !tbaa !5
  %indvars.iv.next108 = add nuw nsw i64 %indvars.iv107, 1
  %exitcond111.not = icmp eq i64 %indvars.iv.next108, %wide.trip.count115
  br i1 %exitcond111.not, label %for.inc96, label %for.body83, !llvm.loop !26

for.inc96:                                        ; preds = %for.body83
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %for.end98, label %for.cond62.preheader, !llvm.loop !27

for.end98:                                        ; preds = %for.inc96, %for.cond19.preheader
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %arrayidx105 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv.next88, i64 %indvars.iv.next88
  %51 = load i32, ptr %arrayidx105, align 4, !tbaa !5
  %add106 = add nsw i32 %51, %add10676
  %arrayidx2.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv87, i64 %indvars.iv87
  %52 = load i32, ptr %arrayidx2.i, align 4, !tbaa !5
  store i32 %52, ptr %arrayidx105, align 4, !tbaa !5
  %53 = add nuw nsw i64 %indvars.iv87, 2
  %54 = trunc nuw i64 %53 to i32
  %cmp.not.not.i = icmp sgt i32 %11, %54
  br i1 %cmp.not.not.i, label %for.body.i.preheader, label %_Z6changeii.exit

for.body.i.preheader:                             ; preds = %for.end98
  %min.iters.check = icmp ult i32 %16, 3
  br i1 %min.iters.check, label %for.body.i.preheader183, label %vector.ph

vector.ph:                                        ; preds = %for.body.i.preheader
  %n.vec = and i64 %18, 8589934588
  %55 = add nuw i64 %53, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %53, %index
  %56 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv87, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %56, align 4, !tbaa !5
  %57 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv.next88, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %57, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %58 = icmp eq i64 %index.next, %n.vec
  br i1 %58, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %18, %n.vec
  br i1 %cmp.n, label %for.body25.i.preheader, label %for.body.i.preheader183

for.body.i.preheader183:                          ; preds = %for.body.i.preheader, %middle.block
  %indvars.iv.i.ph = phi i64 [ %53, %for.body.i.preheader ], [ %55, %middle.block ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader183, %for.body.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i ], [ %indvars.iv.i.ph, %for.body.i.preheader183 ]
  %arrayidx15.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv87, i64 %indvars.iv.i
  %59 = load i32, ptr %arrayidx15.i, align 4, !tbaa !5
  %arrayidx20.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv.next88, i64 %indvars.iv.i
  store i32 %59, ptr %arrayidx20.i, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next.i to i32
  %exitcond118 = icmp eq i32 %11, %lftr.wideiv
  br i1 %exitcond118, label %for.body25.i.preheader, label %for.body.i, !llvm.loop !29

for.body25.i.preheader:                           ; preds = %for.body.i, %middle.block
  br label %for.body25.i

for.body25.i:                                     ; preds = %for.body25.i.preheader, %for.body25.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %for.body25.i ], [ %53, %for.body25.i.preheader ]
  %arrayidx29.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv25.i, i64 %indvars.iv87
  %60 = load i32, ptr %arrayidx29.i, align 4, !tbaa !5
  %arrayidx34.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @matrix, i64 0, i64 %indvars.iv25.i, i64 %indvars.iv.next88
  store i32 %60, ptr %arrayidx34.i, align 4, !tbaa !5
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %lftr.wideiv119 = trunc i64 %indvars.iv.next26.i to i32
  %exitcond120 = icmp eq i32 %11, %lftr.wideiv119
  br i1 %exitcond120, label %_Z6changeii.exit, label %for.body25.i, !llvm.loop !15

_Z6changeii.exit:                                 ; preds = %for.body25.i, %for.end98
  %exitcond124.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count123
  br i1 %exitcond124.not, label %for.cond15.for.end111_crit_edge, label %for.cond19.preheader, !llvm.loop !30

for.cond15.for.end111_crit_edge:                  ; preds = %_Z6changeii.exit
  store i32 %add106, ptr %arrayidx100, align 4, !tbaa !5
  br label %for.end111

for.end111:                                       ; preds = %for.cond1.preheader, %for.cond15.for.end111_crit_edge, %for.cond15.preheader
  %61 = phi i32 [ %10, %for.cond15.for.end111_crit_edge ], [ %10, %for.cond15.preheader ], [ %1, %for.cond1.preheader ]
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %62 = sext i32 %61 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next126, %62
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond115.preheader, !llvm.loop !31

for.body118:                                      ; preds = %for.cond115.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %for.cond115.preheader ]
  %arrayidx120 = getelementptr inbounds nuw [100 x i32], ptr %sum, i64 0, i64 %indvars.iv128
  %63 = load i32, ptr %arrayidx120, align 4, !tbaa !5
  %call121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %63)
  %vtable.i = load ptr, ptr %call121, align 8, !tbaa !32
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call121, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %64 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !34
  %tobool.not.i.i.i = icmp eq ptr %64, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body118
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.body118
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %64, i64 56
  %65 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !52
  %tobool.not.i1.i.i = icmp eq i8 %65, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %64, i64 67
  %66 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !58
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %64)
  %vtable.i.i.i = load ptr, ptr %64, align 8, !tbaa !32
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %67 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %67(ptr noundef nonnull align 8 dereferenceable(570) %64, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %66, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call121, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1
  %68 = load i32, ptr %n, align 4, !tbaa !5
  %69 = sext i32 %68 to i64
  %cmp117.not.not = icmp slt i64 %indvars.iv.next129, %69
  br i1 %cmp117.not.not, label %for.body118, label %for.end125, !llvm.loop !59

for.end125:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry, %for.cond115.preheader
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %sum) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !18}
!18 = !{!"llvm.loop.unswitch.partial.disable"}
!19 = distinct !{!19, !10, !11, !12, !13}
!20 = distinct !{!20, !10, !11, !12, !13}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11, !12}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11, !12, !13}
!25 = distinct !{!25, !10, !11, !12}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11, !12, !13}
!29 = distinct !{!29, !10, !11, !12}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !8, i64 0}
!34 = !{!35, !49, i64 240}
!35 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !46, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!36 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!37 = !{!"long", !7, i64 0}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !41, i64 0}
!41 = !{!"any pointer", !7, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !41, i64 0, !37, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !41, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !41, i64 0}
!46 = !{!"p1 _ZTSSo", !41, i64 0}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !41, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !41, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !41, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !41, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !47, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !41, i64 0}
!56 = !{!"p1 int", !41, i64 0}
!57 = !{!"p1 short", !41, i64 0}
!58 = !{!7, !7, i64 0}
!59 = distinct !{!59, !10, !11}
