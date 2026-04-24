; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxum3al6n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@b = dso_local local_unnamed_addr global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z1fv() local_unnamed_addr #0 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp94 = icmp sgt i32 %0, 1
  br i1 %cmp94, label %for.cond.preheader.preheader, label %while.end

for.cond.preheader.preheader:                     ; preds = %entry
  %1 = add nuw i32 %0, 1
  %2 = add nsw i32 %0, -2
  %3 = zext nneg i32 %2 to i64
  %4 = shl nuw nsw i64 %3, 2
  %5 = add nsw i32 %0, -1
  %6 = zext nneg i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 2
  %8 = zext i32 %1 to i64
  %9 = zext nneg i32 %0 to i64
  %10 = zext nneg i32 %0 to i64
  %11 = zext nneg i32 %0 to i64
  %12 = zext nneg i32 %0 to i64
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.preheader, %for.end135
  %indvars.iv161 = phi i64 [ %9, %for.cond.preheader.preheader ], [ %indvars.iv.next162, %for.end135 ]
  %indvars.iv159 = phi i64 [ %8, %for.cond.preheader.preheader ], [ %indvars.iv.next160, %for.end135 ]
  %indvars.iv157 = phi i64 [ %3, %for.cond.preheader.preheader ], [ %indvars.iv.next158, %for.end135 ]
  %indvars.iv155 = phi i64 [ %6, %for.cond.preheader.preheader ], [ %indvars.iv.next156, %for.end135 ]
  %indvar = phi i64 [ 0, %for.cond.preheader.preheader ], [ %indvar.next, %for.end135 ]
  %ans.096 = phi i32 [ 0, %for.cond.preheader.preheader ], [ %add, %for.end135 ]
  %13 = sub nsw i64 %12, %indvar
  %14 = sub nsw i64 %11, %indvar
  %15 = sub nsw i64 %10, %indvar
  %16 = mul nsw i64 %indvar, -4
  %17 = add nsw i64 %7, %16
  %18 = add nsw i64 %4, %16
  %min.iters.check188 = icmp ult i64 %13, 4
  %n.vec191 = and i64 %13, -4
  %19 = or disjoint i64 %n.vec191, 1
  %cmp.n201 = icmp eq i64 %13, %n.vec191
  %min.iters.check174 = icmp ult i64 %14, 4
  %n.vec177 = and i64 %14, -4
  %20 = or disjoint i64 %n.vec177, 1
  %cmp.n185 = icmp eq i64 %14, %n.vec177
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.inc25
  %indvars.iv106 = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next107, %for.inc25 ]
  %arrayidx2 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv106, i64 1
  %21 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  br i1 %min.iters.check188, label %for.body5.preheader, label %vector.ph189

vector.ph189:                                     ; preds = %for.body
  %broadcast.splatinsert192 = insertelement <4 x i32> poison, i32 %21, i64 0
  %broadcast.splat193 = shufflevector <4 x i32> %broadcast.splatinsert192, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %vector.ph189
  %index195 = phi i64 [ 0, %vector.ph189 ], [ %index.next199, %vector.body194 ]
  %vec.phi196 = phi <4 x i32> [ %broadcast.splat193, %vector.ph189 ], [ %23, %vector.body194 ]
  %offset.idx197 = or disjoint i64 %index195, 1
  %22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv106, i64 %offset.idx197
  %wide.load198 = load <4 x i32>, ptr %22, align 4, !tbaa !5
  %23 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load198, <4 x i32> %vec.phi196)
  %index.next199 = add nuw i64 %index195, 4
  %24 = icmp eq i64 %index.next199, %n.vec191
  br i1 %24, label %middle.block200, label %vector.body194, !llvm.loop !9

middle.block200:                                  ; preds = %vector.body194
  %25 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %23)
  br i1 %cmp.n201, label %for.body17.lr.ph, label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.body, %middle.block200
  %indvars.iv.ph = phi i64 [ 1, %for.body ], [ %19, %middle.block200 ]
  %min.070.ph = phi i32 [ %21, %for.body ], [ %25, %middle.block200 ]
  br label %for.body5

for.body17.lr.ph:                                 ; preds = %for.body5, %middle.block200
  %spec.select.lcssa = phi i32 [ %25, %middle.block200 ], [ %spec.select, %for.body5 ]
  br i1 %min.iters.check174, label %for.body17.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %for.body17.lr.ph
  %broadcast.splatinsert178 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat179 = shufflevector <4 x i32> %broadcast.splatinsert178, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body180

vector.body180:                                   ; preds = %vector.body180, %vector.ph175
  %index181 = phi i64 [ 0, %vector.ph175 ], [ %index.next183, %vector.body180 ]
  %offset.idx182 = or disjoint i64 %index181, 1
  %26 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv106, i64 %offset.idx182
  %wide.load = load <4 x i32>, ptr %26, align 4, !tbaa !5
  %27 = sub nsw <4 x i32> %wide.load, %broadcast.splat179
  store <4 x i32> %27, ptr %26, align 4, !tbaa !5
  %index.next183 = add nuw i64 %index181, 4
  %28 = icmp eq i64 %index.next183, %n.vec177
  br i1 %28, label %middle.block184, label %vector.body180, !llvm.loop !14

middle.block184:                                  ; preds = %vector.body180
  br i1 %cmp.n185, label %for.inc25, label %for.body17.preheader

for.body17.preheader:                             ; preds = %for.body17.lr.ph, %middle.block184
  %indvars.iv101.ph = phi i64 [ 1, %for.body17.lr.ph ], [ %20, %middle.block184 ]
  br label %for.body17

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ %indvars.iv.ph, %for.body5.preheader ]
  %min.070 = phi i32 [ %spec.select, %for.body5 ], [ %min.070.ph, %for.body5.preheader ]
  %arrayidx9 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv106, i64 %indvars.iv
  %29 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %29, i32 %min.070)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv159
  br i1 %exitcond.not, label %for.body17.lr.ph, label %for.body5, !llvm.loop !15

for.body17:                                       ; preds = %for.body17.preheader, %for.body17
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.body17 ], [ %indvars.iv101.ph, %for.body17.preheader ]
  %arrayidx21 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv106, i64 %indvars.iv101
  %30 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %sub = sub nsw i32 %30, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx21, align 4, !tbaa !5
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %indvars.iv159
  br i1 %exitcond105.not, label %for.inc25, label %for.body17, !llvm.loop !16

for.inc25:                                        ; preds = %for.body17, %middle.block184
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %indvars.iv159
  br i1 %exitcond110.not, label %for.body30.preheader, label %for.body, !llvm.loop !17

for.body30.preheader:                             ; preds = %for.inc25
  %min.iters.check = icmp ult i64 %15, 4
  %n.vec = and i64 %15, -4
  %31 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %15, %n.vec
  br label %for.body30

for.body30:                                       ; preds = %for.body30.preheader, %for.inc61
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %for.inc61 ], [ 1, %for.body30.preheader ]
  %arrayidx32 = getelementptr inbounds nuw [101 x i32], ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), i64 0, i64 %indvars.iv121
  %32 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body35.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body30
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %32, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %48, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %33 = or disjoint i64 %index, 2
  %34 = or disjoint i64 %index, 3
  %35 = add i64 %index, 4
  %36 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %offset.idx, i64 %indvars.iv121
  %37 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %33, i64 %indvars.iv121
  %38 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %34, i64 %indvars.iv121
  %39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %35, i64 %indvars.iv121
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = load i32, ptr %37, align 4, !tbaa !5
  %42 = load i32, ptr %38, align 4, !tbaa !5
  %43 = load i32, ptr %39, align 4, !tbaa !5
  %44 = insertelement <4 x i32> poison, i32 %40, i64 0
  %45 = insertelement <4 x i32> %44, i32 %41, i64 1
  %46 = insertelement <4 x i32> %45, i32 %42, i64 2
  %47 = insertelement <4 x i32> %46, i32 %43, i64 3
  %48 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %47, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %49 = icmp eq i64 %index.next, %n.vec
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %50 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %48)
  br i1 %cmp.n, label %for.body52.lr.ph, label %for.body35.preheader

for.body35.preheader:                             ; preds = %for.body30, %middle.block
  %indvars.iv111.ph = phi i64 [ 1, %for.body30 ], [ %31, %middle.block ]
  %min.276.ph = phi i32 [ %32, %for.body30 ], [ %50, %middle.block ]
  br label %for.body35

for.body52.lr.ph:                                 ; preds = %for.body35, %middle.block
  %spec.select67.lcssa = phi i32 [ %50, %middle.block ], [ %spec.select67, %for.body35 ]
  br label %for.body52

for.body35:                                       ; preds = %for.body35.preheader, %for.body35
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body35 ], [ %indvars.iv111.ph, %for.body35.preheader ]
  %min.276 = phi i32 [ %spec.select67, %for.body35 ], [ %min.276.ph, %for.body35.preheader ]
  %arrayidx39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv111, i64 %indvars.iv121
  %51 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %spec.select67 = tail call i32 @llvm.smin.i32(i32 %51, i32 %min.276)
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %indvars.iv159
  br i1 %exitcond115.not, label %for.body52.lr.ph, label %for.body35, !llvm.loop !19

for.body52:                                       ; preds = %for.body52.lr.ph, %for.body52
  %indvars.iv116 = phi i64 [ 1, %for.body52.lr.ph ], [ %indvars.iv.next117, %for.body52 ]
  %arrayidx56 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv116, i64 %indvars.iv121
  %52 = load i32, ptr %arrayidx56, align 4, !tbaa !5
  %sub57 = sub nsw i32 %52, %spec.select67.lcssa
  store i32 %sub57, ptr %arrayidx56, align 4, !tbaa !5
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %indvars.iv159
  br i1 %exitcond120.not, label %for.inc61, label %for.body52, !llvm.loop !20

for.inc61:                                        ; preds = %for.body52
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %indvars.iv159
  br i1 %exitcond125.not, label %for.end63, label %for.body30, !llvm.loop !21

for.end63:                                        ; preds = %for.inc61
  %53 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 816), align 16, !tbaa !5
  %add = add nsw i32 %53, %ans.096
  %54 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 408), align 8, !tbaa !5
  store i32 %54, ptr getelementptr inbounds nuw (i8, ptr @b, i64 408), align 8, !tbaa !5
  %cmp66.not.not82 = icmp samesign ugt i64 %indvars.iv161, 2
  br i1 %cmp66.not.not82, label %for.body67, label %for.cond118.preheader.us.preheader

for.body67:                                       ; preds = %for.end63, %for.body67
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %for.body67 ], [ 2, %for.end63 ]
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %arrayidx71 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv.next127, i64 1
  %55 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %arrayidx74 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @b, i64 0, i64 %indvars.iv126, i64 1
  store i32 %55, ptr %arrayidx74, align 4, !tbaa !5
  %exitcond130.not = icmp eq i64 %indvars.iv.next127, %indvars.iv161
  br i1 %exitcond130.not, label %for.cond94.preheader.us.preheader, label %for.body67, !llvm.loop !22

for.cond94.preheader.us.preheader:                ; preds = %for.body67
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 getelementptr inbounds nuw (i8, ptr @b, i64 412), ptr nonnull align 16 getelementptr inbounds nuw (i8, ptr @a, i64 416), i64 %18, i1 false), !tbaa !5
  br label %for.cond94.preheader.us

for.cond94.preheader.us:                          ; preds = %for.cond94.preheader.us.preheader, %for.cond94.preheader.us
  %indvar134 = phi i64 [ 0, %for.cond94.preheader.us.preheader ], [ %indvar.next135, %for.cond94.preheader.us ]
  %56 = mul nuw nsw i64 %indvar134, 404
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @b, i64 816), i64 %56
  %gep172 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @a, i64 1224), i64 %56
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %gep, ptr nonnull align 4 %gep172, i64 %18, i1 false), !tbaa !5
  %indvar.next135 = add nuw nsw i64 %indvar134, 1
  %exitcond143.not = icmp eq i64 %indvar.next135, %indvars.iv157
  br i1 %exitcond143.not, label %for.cond118.preheader.us.preheader, label %for.cond94.preheader.us, !llvm.loop !23

for.cond118.preheader.us.preheader:               ; preds = %for.cond94.preheader.us, %for.end63
  br label %for.cond118.preheader.us

for.cond118.preheader.us:                         ; preds = %for.cond118.preheader.us.preheader, %for.cond118.preheader.us
  %indvar144 = phi i64 [ %indvar.next145, %for.cond118.preheader.us ], [ 0, %for.cond118.preheader.us.preheader ]
  %57 = mul nuw nsw i64 %indvar144, 404
  %58 = add nuw nsw i64 %57, 408
  %scevgep146 = getelementptr nuw i8, ptr @a, i64 %58
  %scevgep147 = getelementptr nuw i8, ptr @b, i64 %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %scevgep146, ptr nonnull align 4 %scevgep147, i64 %17, i1 false), !tbaa !5
  %indvar.next145 = add nuw nsw i64 %indvar144, 1
  %exitcond154.not = icmp eq i64 %indvar.next145, %indvars.iv155
  br i1 %exitcond154.not, label %for.end135, label %for.cond118.preheader.us, !llvm.loop !24

for.end135:                                       ; preds = %for.cond118.preheader.us
  %indvars.iv.next162 = add nsw i64 %indvars.iv161, -1
  %indvars.iv.next160 = add nsw i64 %indvars.iv159, -1
  %indvar.next = add nuw nsw i64 %indvar, 1
  %indvars.iv.next158 = add nsw i64 %indvars.iv157, -1
  %indvars.iv.next156 = add nsw i64 %indvars.iv155, -1
  %exitcond171.not = icmp eq i64 %indvar.next, %6
  br i1 %exitcond171.not, label %while.end, label %for.cond.preheader, !llvm.loop !25

while.end:                                        ; preds = %for.end135, %entry
  %ans.0.lcssa = phi i32 [ 0, %entry ], [ %add, %for.end135 ]
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %ans.0.lcssa)
  %vtable.i = load ptr, ptr %call, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %59 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !28
  %tobool.not.i.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %while.end
  tail call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %while.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %59, i64 56
  %60 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !46
  %tobool.not.i1.i.i = icmp eq i8 %60, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %59, i64 67
  %61 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !52
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %59)
  %vtable.i.i.i = load ptr, ptr %59, align 8, !tbaa !26
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %62 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %62(ptr noundef nonnull align 8 dereferenceable(570) %59, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %61, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp.not10 = icmp slt i32 %0, 1
  br i1 %cmp.not10, label %for.end15, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.end12
  %1 = phi i32 [ %6, %for.end12 ], [ %0, %entry ]
  %k.011 = phi i32 [ %inc14, %for.end12 ], [ 1, %entry ]
  %cmp2.not8 = icmp slt i32 %1, 1
  br i1 %cmp2.not8, label %for.end12, label %for.cond4.preheader

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %2 = phi i32 [ %5, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc10 ], [ 1, %for.cond1.preheader ]
  %cmp5.not6 = icmp slt i32 %2, 1
  br i1 %cmp5.not6, label %for.cond4.preheader.for.inc10_crit_edge, label %for.body6

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 1, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [101 x [101 x i32]], ptr @a, i64 0, i64 %indvars.iv14, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp5.not.not = icmp slt i64 %indvars.iv, %4
  br i1 %cmp5.not.not, label %for.body6, label %for.inc10, !llvm.loop !53

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %5 = phi i32 [ %2, %for.cond4.preheader.for.inc10_crit_edge ], [ %3, %for.body6 ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %cmp2.not.not = icmp slt i64 %indvars.iv14, %.pre-phi
  br i1 %cmp2.not.not, label %for.cond4.preheader, label %for.end12, !llvm.loop !54

for.end12:                                        ; preds = %for.inc10, %for.cond1.preheader
  tail call void @_Z1fv()
  %inc14 = add nuw nsw i32 %k.011, 1
  %6 = load i32, ptr @n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %k.011, %6
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end15, !llvm.loop !56

for.end15:                                        ; preds = %for.end12, %entry
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
!28 = !{!29, !43, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !30, i64 0, !40, i64 216, !7, i64 224, !41, i64 225, !42, i64 232, !43, i64 240, !44, i64 248, !45, i64 256}
!30 = !{!"_ZTSSt8ios_base", !31, i64 8, !31, i64 16, !32, i64 24, !33, i64 28, !33, i64 32, !34, i64 40, !36, i64 48, !7, i64 64, !6, i64 192, !37, i64 200, !38, i64 208}
!31 = !{!"long", !7, i64 0}
!32 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!33 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!34 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !35, i64 0}
!35 = !{!"any pointer", !7, i64 0}
!36 = !{!"_ZTSNSt8ios_base6_WordsE", !35, i64 0, !31, i64 8}
!37 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !35, i64 0}
!38 = !{!"_ZTSSt6locale", !39, i64 0}
!39 = !{!"p1 _ZTSNSt6locale5_ImplE", !35, i64 0}
!40 = !{!"p1 _ZTSSo", !35, i64 0}
!41 = !{!"bool", !7, i64 0}
!42 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !35, i64 0}
!43 = !{!"p1 _ZTSSt5ctypeIcE", !35, i64 0}
!44 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !35, i64 0}
!45 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !35, i64 0}
!46 = !{!47, !7, i64 56}
!47 = !{!"_ZTSSt5ctypeIcE", !48, i64 0, !49, i64 16, !41, i64 24, !50, i64 32, !50, i64 40, !51, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!48 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!49 = !{!"p1 _ZTS15__locale_struct", !35, i64 0}
!50 = !{!"p1 int", !35, i64 0}
!51 = !{!"p1 short", !35, i64 0}
!52 = !{!7, !7, i64 0}
!53 = distinct !{!53, !10, !11}
!54 = distinct !{!54, !10, !11, !55}
!55 = !{!"llvm.loop.unswitch.partial.disable"}
!56 = distinct !{!56, !10, !11}
