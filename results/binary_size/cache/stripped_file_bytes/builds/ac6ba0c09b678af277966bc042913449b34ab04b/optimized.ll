; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_e3aejg3.cpp"
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

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %board = alloca [105 x [105 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp92 = icmp sgt i32 %0, 0
  br i1 %cmp92, label %for.body, label %for.end145

for.body:                                         ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %59, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %k.093 = phi i32 [ %inc144, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  call void @llvm.lifetime.start.p0(i64 44100, ptr nonnull %board) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(44100) %board, i8 0, i64 44100, i1 false)
  %cmp267 = icmp sgt i32 %1, 0
  br i1 %cmp267, label %for.cond4.preheader, label %for.end140

for.cond13.preheader:                             ; preds = %for.inc10
  %cmp1488 = icmp sgt i32 %6, 0
  br i1 %cmp1488, label %for.cond16.preheader.preheader, label %for.end140

for.cond16.preheader.preheader:                   ; preds = %for.cond13.preheader
  %wide.trip.count145 = zext nneg i32 %6 to i64
  %2 = add nsw i64 %wide.trip.count145, -2
  br label %for.cond16.preheader

for.cond4.preheader:                              ; preds = %for.body, %for.inc10
  %3 = phi i32 [ %6, %for.inc10 ], [ %1, %for.body ]
  %indvars.iv97 = phi i64 [ %indvars.iv.next98, %for.inc10 ], [ 0, %for.body ]
  %cmp565 = icmp sgt i32 %3, 0
  br i1 %cmp565, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %3 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv97, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %5
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %5, %for.body6 ]
  %6 = phi i32 [ %3, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %cmp2 = icmp slt i64 %indvars.iv.next98, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond13.preheader, !llvm.loop !12

for.cond13.loopexit:                              ; preds = %for.body125, %for.end89
  %indvars.iv.next132 = add nuw nsw i64 %indvars.iv131, 1
  %exitcond146.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count145
  br i1 %exitcond146.not, label %for.end140, label %for.cond16.preheader, !llvm.loop !14

for.cond16.preheader:                             ; preds = %for.cond16.preheader.preheader, %for.cond13.loopexit
  %indvars.iv131 = phi i64 [ 2, %for.cond16.preheader.preheader ], [ %indvars.iv.next132, %for.cond13.loopexit ]
  %indvars.iv100 = phi i64 [ 0, %for.cond16.preheader.preheader ], [ %indvars.iv.next101, %for.cond13.loopexit ]
  %sum.090 = phi i32 [ 0, %for.cond16.preheader.preheader ], [ %add95, %for.cond13.loopexit ]
  %7 = sub nsw i64 %wide.trip.count145, %indvars.iv100
  %8 = sub nsw i64 %wide.trip.count145, %indvars.iv100
  %9 = sub nsw i64 %wide.trip.count145, %indvars.iv100
  %10 = sub i64 %2, %indvars.iv100
  %min.iters.check181 = icmp ult i64 %7, 4
  %n.vec184 = and i64 %7, -4
  %11 = add i64 %indvars.iv100, %n.vec184
  %cmp.n194 = icmp eq i64 %7, %n.vec184
  %min.iters.check166 = icmp ult i64 %8, 4
  %n.vec169 = and i64 %8, -4
  %12 = add i64 %indvars.iv100, %n.vec169
  %cmp.n178 = icmp eq i64 %8, %n.vec169
  br label %for.body18

for.body18:                                       ; preds = %for.cond16.preheader, %for.end47
  %indvars.iv110 = phi i64 [ %indvars.iv100, %for.cond16.preheader ], [ %indvars.iv.next111, %for.end47 ]
  %arrayidx22 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv110, i64 %indvars.iv100
  %13 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  br i1 %min.iters.check181, label %for.body25.preheader, label %vector.ph182

vector.ph182:                                     ; preds = %for.body18
  %broadcast.splatinsert185 = insertelement <4 x i32> poison, i32 %13, i64 0
  %broadcast.splat186 = shufflevector <4 x i32> %broadcast.splatinsert185, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body187

vector.body187:                                   ; preds = %vector.body187, %vector.ph182
  %index188 = phi i64 [ 0, %vector.ph182 ], [ %index.next192, %vector.body187 ]
  %vec.phi189 = phi <4 x i32> [ %broadcast.splat186, %vector.ph182 ], [ %15, %vector.body187 ]
  %offset.idx190 = add i64 %indvars.iv100, %index188
  %14 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv110, i64 %offset.idx190
  %wide.load191 = load <4 x i32>, ptr %14, align 4, !tbaa !5
  %15 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load191, <4 x i32> %vec.phi189)
  %index.next192 = add nuw i64 %index188, 4
  %16 = icmp eq i64 %index.next192, %n.vec184
  br i1 %16, label %middle.block193, label %vector.body187, !llvm.loop !15

middle.block193:                                  ; preds = %vector.body187
  %17 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %15)
  br i1 %cmp.n194, label %for.body40.lr.ph, label %for.body25.preheader

for.body25.preheader:                             ; preds = %for.body18, %middle.block193
  %indvars.iv102.ph = phi i64 [ %indvars.iv100, %for.body18 ], [ %11, %middle.block193 ]
  %min.071.ph = phi i32 [ %13, %for.body18 ], [ %17, %middle.block193 ]
  br label %for.body25

for.body40.lr.ph:                                 ; preds = %for.body25, %middle.block193
  %spec.select.lcssa = phi i32 [ %17, %middle.block193 ], [ %spec.select, %for.body25 ]
  br i1 %min.iters.check166, label %for.body40.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %for.body40.lr.ph
  %broadcast.splatinsert170 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat171 = shufflevector <4 x i32> %broadcast.splatinsert170, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body172

vector.body172:                                   ; preds = %vector.body172, %vector.ph167
  %index173 = phi i64 [ 0, %vector.ph167 ], [ %index.next176, %vector.body172 ]
  %offset.idx174 = add i64 %indvars.iv100, %index173
  %18 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv110, i64 %offset.idx174
  %wide.load175 = load <4 x i32>, ptr %18, align 4, !tbaa !5
  %19 = sub nsw <4 x i32> %wide.load175, %broadcast.splat171
  store <4 x i32> %19, ptr %18, align 4, !tbaa !5
  %index.next176 = add nuw i64 %index173, 4
  %20 = icmp eq i64 %index.next176, %n.vec169
  br i1 %20, label %middle.block177, label %vector.body172, !llvm.loop !18

middle.block177:                                  ; preds = %vector.body172
  br i1 %cmp.n178, label %for.end47, label %for.body40.preheader

for.body40.preheader:                             ; preds = %for.body40.lr.ph, %middle.block177
  %indvars.iv105.ph = phi i64 [ %indvars.iv100, %for.body40.lr.ph ], [ %12, %middle.block177 ]
  br label %for.body40

for.body25:                                       ; preds = %for.body25.preheader, %for.body25
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.body25 ], [ %indvars.iv102.ph, %for.body25.preheader ]
  %min.071 = phi i32 [ %spec.select, %for.body25 ], [ %min.071.ph, %for.body25.preheader ]
  %arrayidx29 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv110, i64 %indvars.iv102
  %21 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %21, i32 %min.071)
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count145
  br i1 %exitcond.not, label %for.body40.lr.ph, label %for.body25, !llvm.loop !19

for.body40:                                       ; preds = %for.body40.preheader, %for.body40
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.body40 ], [ %indvars.iv105.ph, %for.body40.preheader ]
  %arrayidx44 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv110, i64 %indvars.iv105
  %22 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %sub = sub nsw i32 %22, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx44, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  %exitcond109.not = icmp eq i64 %indvars.iv.next106, %wide.trip.count145
  br i1 %exitcond109.not, label %for.end47, label %for.body40, !llvm.loop !20

for.end47:                                        ; preds = %for.body40, %middle.block177
  %indvars.iv.next111 = add nuw nsw i64 %indvars.iv110, 1
  %exitcond114.not = icmp eq i64 %indvars.iv.next111, %wide.trip.count145
  br i1 %exitcond114.not, label %for.body53.preheader, label %for.body18, !llvm.loop !21

for.body53.preheader:                             ; preds = %for.end47
  %min.iters.check154 = icmp ult i64 %9, 4
  %n.vec157 = and i64 %9, -4
  %23 = add i64 %indvars.iv100, %n.vec157
  %cmp.n163 = icmp eq i64 %9, %n.vec157
  br label %for.body53

for.body53:                                       ; preds = %for.body53.preheader, %for.end86
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.end86 ], [ %indvars.iv100, %for.body53.preheader ]
  %arrayidx58 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv100, i64 %indvars.iv125
  %24 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  br i1 %min.iters.check154, label %for.body61.preheader, label %vector.ph155

vector.ph155:                                     ; preds = %for.body53
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %24, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body158

vector.body158:                                   ; preds = %vector.body158, %vector.ph155
  %index159 = phi i64 [ 0, %vector.ph155 ], [ %index.next161, %vector.body158 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph155 ], [ %40, %vector.body158 ]
  %offset.idx160 = add i64 %indvars.iv100, %index159
  %25 = add i64 %offset.idx160, 1
  %26 = add i64 %offset.idx160, 2
  %27 = add i64 %offset.idx160, 3
  %28 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %offset.idx160, i64 %indvars.iv125
  %29 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %25, i64 %indvars.iv125
  %30 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %26, i64 %indvars.iv125
  %31 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %27, i64 %indvars.iv125
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = insertelement <4 x i32> poison, i32 %32, i64 0
  %37 = insertelement <4 x i32> %36, i32 %33, i64 1
  %38 = insertelement <4 x i32> %37, i32 %34, i64 2
  %39 = insertelement <4 x i32> %38, i32 %35, i64 3
  %40 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %39, <4 x i32> %vec.phi)
  %index.next161 = add nuw i64 %index159, 4
  %41 = icmp eq i64 %index.next161, %n.vec157
  br i1 %41, label %middle.block162, label %vector.body158, !llvm.loop !22

middle.block162:                                  ; preds = %vector.body158
  %42 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %40)
  br i1 %cmp.n163, label %for.body78.lr.ph, label %for.body61.preheader

for.body61.preheader:                             ; preds = %for.body53, %middle.block162
  %indvars.iv115.ph = phi i64 [ %indvars.iv100, %for.body53 ], [ %23, %middle.block162 ]
  %min54.078.ph = phi i32 [ %24, %for.body53 ], [ %42, %middle.block162 ]
  br label %for.body61

for.body78.lr.ph:                                 ; preds = %for.body61, %middle.block162
  %spec.select64.lcssa = phi i32 [ %42, %middle.block162 ], [ %spec.select64, %for.body61 ]
  br label %for.body78

for.body61:                                       ; preds = %for.body61.preheader, %for.body61
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body61 ], [ %indvars.iv115.ph, %for.body61.preheader ]
  %min54.078 = phi i32 [ %spec.select64, %for.body61 ], [ %min54.078.ph, %for.body61.preheader ]
  %arrayidx65 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv115, i64 %indvars.iv125
  %43 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  %spec.select64 = call i32 @llvm.smin.i32(i32 %43, i32 %min54.078)
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %exitcond119.not = icmp eq i64 %indvars.iv.next116, %wide.trip.count145
  br i1 %exitcond119.not, label %for.body78.lr.ph, label %for.body61, !llvm.loop !23

for.body78:                                       ; preds = %for.body78.lr.ph, %for.body78
  %indvars.iv120 = phi i64 [ %indvars.iv100, %for.body78.lr.ph ], [ %indvars.iv.next121, %for.body78 ]
  %arrayidx82 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv120, i64 %indvars.iv125
  %44 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %sub83 = sub nsw i32 %44, %spec.select64.lcssa
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond124.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count145
  br i1 %exitcond124.not, label %for.end86, label %for.body78, !llvm.loop !24

for.end86:                                        ; preds = %for.body78
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count145
  br i1 %exitcond129.not, label %for.end89, label %for.body53, !llvm.loop !25

for.end89:                                        ; preds = %for.end86
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %arrayidx94 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv.next101, i64 %indvars.iv.next101
  %45 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %add95 = add nsw i32 %45, %sum.090
  %arrayidx99 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv100, i64 %indvars.iv100
  %46 = load i32, ptr %arrayidx99, align 4, !tbaa !5
  store i32 %46, ptr %arrayidx94, align 4, !tbaa !5
  %47 = trunc i64 %indvars.iv100 to i32
  %48 = add i32 %47, 2
  %cmp10884 = icmp slt i32 %48, %6
  br i1 %cmp10884, label %for.body109.preheader, label %for.cond13.loopexit

for.body109.preheader:                            ; preds = %for.end89
  %min.iters.check = icmp ult i64 %10, 2
  br i1 %min.iters.check, label %for.body109.preheader197, label %vector.ph

vector.ph:                                        ; preds = %for.body109.preheader
  %n.vec = and i64 %10, -2
  %49 = add i64 %indvars.iv131, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %indvars.iv131, %index
  %50 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv100, i64 %offset.idx
  %wide.load = load <2 x i32>, ptr %50, align 4, !tbaa !5
  %51 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv.next101, i64 %offset.idx
  store <2 x i32> %wide.load, ptr %51, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 2
  %52 = icmp eq i64 %index.next, %n.vec
  br i1 %52, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %10, %n.vec
  br i1 %cmp.n, label %for.body125.preheader, label %for.body109.preheader197

for.body109.preheader197:                         ; preds = %for.body109.preheader, %middle.block
  %indvars.iv133.ph = phi i64 [ %indvars.iv131, %for.body109.preheader ], [ %49, %middle.block ]
  br label %for.body109

for.body109:                                      ; preds = %for.body109.preheader197, %for.body109
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %for.body109 ], [ %indvars.iv133.ph, %for.body109.preheader197 ]
  %arrayidx113 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv100, i64 %indvars.iv133
  %53 = load i32, ptr %arrayidx113, align 4, !tbaa !5
  %arrayidx118 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv.next101, i64 %indvars.iv133
  store i32 %53, ptr %arrayidx118, align 4, !tbaa !5
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count145
  br i1 %exitcond137.not, label %for.body125.preheader, label %for.body109, !llvm.loop !27

for.body125.preheader:                            ; preds = %for.body109, %middle.block
  br label %for.body125

for.body125:                                      ; preds = %for.body125.preheader, %for.body125
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %for.body125 ], [ %indvars.iv131, %for.body125.preheader ]
  %arrayidx129 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv138, i64 %indvars.iv100
  %54 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %arrayidx134 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %board, i64 0, i64 %indvars.iv138, i64 %indvars.iv.next101
  store i32 %54, ptr %arrayidx134, align 4, !tbaa !5
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count145
  br i1 %exitcond142.not, label %for.cond13.loopexit, label %for.body125, !llvm.loop !28

for.end140:                                       ; preds = %for.cond13.loopexit, %for.body, %for.cond13.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond13.preheader ], [ 0, %for.body ], [ %add95, %for.cond13.loopexit ]
  %call141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call141, align 8, !tbaa !29
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call141, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %55 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !31
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end140
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end140
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %55, i64 56
  %56 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !49
  %tobool.not.i1.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %55, i64 67
  %57 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %55)
  %vtable.i.i.i = load ptr, ptr %55, align 8, !tbaa !29
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %58 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %58(ptr noundef nonnull align 8 dereferenceable(570) %55, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %57, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call141, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 44100, ptr nonnull %board) #6
  %inc144 = add nuw nsw i32 %k.093, 1
  %59 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc144, %59
  br i1 %cmp, label %for.body, label %for.end145, !llvm.loop !56

for.end145:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !16, !17}
!16 = !{!"llvm.loop.isvectorized", i32 1}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !10, !11, !16, !17}
!19 = distinct !{!19, !10, !11, !16}
!20 = distinct !{!20, !10, !11, !16}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !16, !17}
!23 = distinct !{!23, !10, !11, !16}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11, !16, !17}
!27 = distinct !{!27, !10, !11, !16}
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
