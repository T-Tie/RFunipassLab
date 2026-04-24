; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb382xlmd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [200 x [200 x i32]] zeroinitializer, align 16
@sum = dso_local local_unnamed_addr global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z2xji(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %for.cond2.preheader.us.preheader, label %if.end

for.cond2.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count31 = zext nneg i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %wide.trip.count31, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count31
  br label %for.cond2.preheader.us

for.cond2.preheader.us:                           ; preds = %for.cond2.preheader.us.preheader, %for.cond2.for.inc11_crit_edge.us
  %indvars.iv28 = phi i64 [ 1, %for.cond2.preheader.us.preheader ], [ %indvars.iv.next29, %for.cond2.for.inc11_crit_edge.us ]
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br i1 %min.iters.check, label %for.body4.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond2.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond2.preheader.us ]
  %0 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv.next29, i64 %index
  %wide.load = load <4 x i32>, ptr %0, align 16, !tbaa !5
  %1 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv28, i64 %index
  store <4 x i32> %wide.load, ptr %1, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %2 = icmp eq i64 %index.next, %n.vec
  br i1 %2, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond2.for.inc11_crit_edge.us, label %for.body4.us.preheader

for.body4.us.preheader:                           ; preds = %for.cond2.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.cond2.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body4.us.preheader, %for.body4.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4.us ], [ %indvars.iv.ph, %for.body4.us.preheader ]
  %arrayidx6.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv.next29, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx6.us, align 4, !tbaa !5
  %arrayidx10.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv28, i64 %indvars.iv
  store i32 %3, ptr %arrayidx10.us, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count31
  br i1 %exitcond.not, label %for.cond2.for.inc11_crit_edge.us, label %for.body4.us, !llvm.loop !14

for.cond2.for.inc11_crit_edge.us:                 ; preds = %for.body4.us, %middle.block
  %exitcond32.not = icmp eq i64 %indvars.iv.next29, %wide.trip.count31
  br i1 %exitcond32.not, label %for.cond17.preheader.us, label %for.cond2.preheader.us, !llvm.loop !15

for.cond17.preheader.us:                          ; preds = %for.cond2.for.inc11_crit_edge.us, %for.cond17.for.inc32_crit_edge.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.cond17.for.inc32_crit_edge.us ], [ 1, %for.cond2.for.inc11_crit_edge.us ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.body19.us

for.body19.us:                                    ; preds = %for.cond17.preheader.us, %for.body19.us
  %indvars.iv33 = phi i64 [ 0, %for.cond17.preheader.us ], [ %indvars.iv.next34, %for.body19.us ]
  %arrayidx24.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv33, i64 %indvars.iv.next39
  %4 = load i32, ptr %arrayidx24.us, align 4, !tbaa !5
  %arrayidx28.us = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv33, i64 %indvars.iv38
  store i32 %4, ptr %arrayidx28.us, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count31
  br i1 %exitcond37.not, label %for.cond17.for.inc32_crit_edge.us, label %for.body19.us, !llvm.loop !16

for.cond17.for.inc32_crit_edge.us:                ; preds = %for.body19.us
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count31
  br i1 %exitcond42.not, label %if.end, label %for.cond17.preheader.us, !llvm.loop !17

if.end:                                           ; preds = %for.cond17.for.inc32_crit_edge.us, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z2gli(i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp52 = icmp sgt i32 %n, 1
  br i1 %cmp52, label %for.cond.preheader.preheader, label %cleanup

for.cond.preheader.preheader:                     ; preds = %entry
  %sum.promoted = load i32, ptr @sum, align 4
  %0 = zext nneg i32 %n to i64
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond.preheader.preheader, %_Z2xji.exit
  %indvar = phi i64 [ 0, %for.cond.preheader.preheader ], [ %indvar.next, %_Z2xji.exit ]
  %indvars.iv82 = phi i64 [ %0, %for.cond.preheader.preheader ], [ %indvars.iv.next83, %_Z2xji.exit ]
  %add5153 = phi i32 [ %sum.promoted, %for.cond.preheader.preheader ], [ %add, %_Z2xji.exit ]
  %1 = xor i64 %indvar, -1
  %2 = add i64 %1, %0
  %3 = xor i64 %indvar, -1
  %4 = add i64 %3, %0
  %min.iters.check111 = icmp ult i64 %2, 4
  %n.vec114 = and i64 %2, -4
  %5 = or disjoint i64 %n.vec114, 1
  %cmp.n124 = icmp eq i64 %2, %n.vec114
  %min.iters.check97 = icmp ult i64 %indvars.iv82, 4
  %n.vec100 = and i64 %indvars.iv82, -4
  %cmp.n108 = icmp eq i64 %indvars.iv82, %n.vec100
  br label %for.body

for.body:                                         ; preds = %for.cond.preheader, %for.end25
  %indvars.iv61 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next62, %for.end25 ]
  %arrayidx = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv61
  %6 = load i32, ptr %arrayidx, align 16, !tbaa !5
  br i1 %min.iters.check111, label %for.body5.preheader, label %vector.ph112

vector.ph112:                                     ; preds = %for.body
  %broadcast.splatinsert115 = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat116 = shufflevector <4 x i32> %broadcast.splatinsert115, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph112
  %index118 = phi i64 [ 0, %vector.ph112 ], [ %index.next122, %vector.body117 ]
  %vec.phi119 = phi <4 x i32> [ %broadcast.splat116, %vector.ph112 ], [ %8, %vector.body117 ]
  %offset.idx120 = or disjoint i64 %index118, 1
  %7 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv61, i64 %offset.idx120
  %wide.load121 = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %8 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load121, <4 x i32> %vec.phi119)
  %index.next122 = add nuw i64 %index118, 4
  %9 = icmp eq i64 %index.next122, %n.vec114
  br i1 %9, label %middle.block123, label %vector.body117, !llvm.loop !18

middle.block123:                                  ; preds = %vector.body117
  %10 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %8)
  br i1 %cmp.n124, label %for.body18.lr.ph, label %for.body5.preheader

for.body5.preheader:                              ; preds = %for.body, %middle.block123
  %indvars.iv.ph = phi i64 [ 1, %for.body ], [ %5, %middle.block123 ]
  %min.039.ph = phi i32 [ %6, %for.body ], [ %10, %middle.block123 ]
  br label %for.body5

for.body18.lr.ph:                                 ; preds = %for.body5, %middle.block123
  %spec.select.lcssa = phi i32 [ %10, %middle.block123 ], [ %spec.select, %for.body5 ]
  br i1 %min.iters.check97, label %for.body18.preheader, label %vector.ph98

vector.ph98:                                      ; preds = %for.body18.lr.ph
  %broadcast.splatinsert101 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat102 = shufflevector <4 x i32> %broadcast.splatinsert101, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph98
  %index104 = phi i64 [ 0, %vector.ph98 ], [ %index.next106, %vector.body103 ]
  %11 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv61, i64 %index104
  %wide.load105 = load <4 x i32>, ptr %11, align 16, !tbaa !5
  %12 = sub nsw <4 x i32> %wide.load105, %broadcast.splat102
  store <4 x i32> %12, ptr %11, align 16, !tbaa !5
  %index.next106 = add nuw i64 %index104, 4
  %13 = icmp eq i64 %index.next106, %n.vec100
  br i1 %13, label %middle.block107, label %vector.body103, !llvm.loop !19

middle.block107:                                  ; preds = %vector.body103
  br i1 %cmp.n108, label %for.end25, label %for.body18.preheader

for.body18.preheader:                             ; preds = %for.body18.lr.ph, %middle.block107
  %indvars.iv56.ph = phi i64 [ 0, %for.body18.lr.ph ], [ %n.vec100, %middle.block107 ]
  br label %for.body18

for.body5:                                        ; preds = %for.body5.preheader, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ %indvars.iv.ph, %for.body5.preheader ]
  %min.039 = phi i32 [ %spec.select, %for.body5 ], [ %min.039.ph, %for.body5.preheader ]
  %arrayidx9 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv61, i64 %indvars.iv
  %14 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %14, i32 %min.039)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv82
  br i1 %exitcond.not, label %for.body18.lr.ph, label %for.body5, !llvm.loop !20

for.body18:                                       ; preds = %for.body18.preheader, %for.body18
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.body18 ], [ %indvars.iv56.ph, %for.body18.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv61, i64 %indvars.iv56
  %15 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %sub = sub nsw i32 %15, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx22, align 4, !tbaa !5
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond60.not = icmp eq i64 %indvars.iv.next57, %indvars.iv82
  br i1 %exitcond60.not, label %for.end25, label %for.body18, !llvm.loop !21

for.end25:                                        ; preds = %for.body18, %middle.block107
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %exitcond65.not = icmp eq i64 %indvars.iv.next62, %indvars.iv82
  br i1 %exitcond65.not, label %for.body37.preheader.preheader, label %for.body, !llvm.loop !22

for.body37.preheader.preheader:                   ; preds = %for.end25
  %min.iters.check86 = icmp ult i64 %4, 4
  %n.vec89 = and i64 %4, -4
  %16 = or disjoint i64 %n.vec89, 1
  %cmp.n94 = icmp eq i64 %4, %n.vec89
  br label %for.body37.preheader

for.body37.preheader:                             ; preds = %for.body37.preheader.preheader, %for.end62
  %indvars.iv76 = phi i64 [ %indvars.iv.next77, %for.end62 ], [ 0, %for.body37.preheader.preheader ]
  %arrayidx34 = getelementptr inbounds nuw [200 x i32], ptr @a, i64 0, i64 %indvars.iv76
  %17 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  br i1 %min.iters.check86, label %for.body37.preheader127, label %vector.ph87

vector.ph87:                                      ; preds = %for.body37.preheader
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %17, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph87
  %index91 = phi i64 [ 0, %vector.ph87 ], [ %index.next92, %vector.body90 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph87 ], [ %33, %vector.body90 ]
  %offset.idx = or disjoint i64 %index91, 1
  %18 = or disjoint i64 %index91, 2
  %19 = or disjoint i64 %index91, 3
  %20 = add i64 %index91, 4
  %21 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %offset.idx, i64 %indvars.iv76
  %22 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %18, i64 %indvars.iv76
  %23 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %19, i64 %indvars.iv76
  %24 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %20, i64 %indvars.iv76
  %25 = load i32, ptr %21, align 4, !tbaa !5
  %26 = load i32, ptr %22, align 4, !tbaa !5
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = insertelement <4 x i32> poison, i32 %25, i64 0
  %30 = insertelement <4 x i32> %29, i32 %26, i64 1
  %31 = insertelement <4 x i32> %30, i32 %27, i64 2
  %32 = insertelement <4 x i32> %31, i32 %28, i64 3
  %33 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %32, <4 x i32> %vec.phi)
  %index.next92 = add nuw i64 %index91, 4
  %34 = icmp eq i64 %index.next92, %n.vec89
  br i1 %34, label %middle.block93, label %vector.body90, !llvm.loop !23

middle.block93:                                   ; preds = %vector.body90
  %35 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %33)
  br i1 %cmp.n94, label %for.body54.lr.ph, label %for.body37.preheader127

for.body37.preheader127:                          ; preds = %for.body37.preheader, %middle.block93
  %indvars.iv66.ph = phi i64 [ 1, %for.body37.preheader ], [ %16, %middle.block93 ]
  %min32.045.ph = phi i32 [ %17, %for.body37.preheader ], [ %35, %middle.block93 ]
  br label %for.body37

for.body54.lr.ph:                                 ; preds = %for.body37, %middle.block93
  %spec.select36.lcssa = phi i32 [ %35, %middle.block93 ], [ %spec.select36, %for.body37 ]
  br label %for.body54

for.body37:                                       ; preds = %for.body37.preheader127, %for.body37
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body37 ], [ %indvars.iv66.ph, %for.body37.preheader127 ]
  %min32.045 = phi i32 [ %spec.select36, %for.body37 ], [ %min32.045.ph, %for.body37.preheader127 ]
  %arrayidx41 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv66, i64 %indvars.iv76
  %36 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %spec.select36 = tail call i32 @llvm.smin.i32(i32 %36, i32 %min32.045)
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %exitcond70.not = icmp eq i64 %indvars.iv.next67, %indvars.iv82
  br i1 %exitcond70.not, label %for.body54.lr.ph, label %for.body37, !llvm.loop !24

for.body54:                                       ; preds = %for.body54.lr.ph, %for.body54
  %indvars.iv71 = phi i64 [ 0, %for.body54.lr.ph ], [ %indvars.iv.next72, %for.body54 ]
  %arrayidx58 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv71, i64 %indvars.iv76
  %37 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %sub59 = sub nsw i32 %37, %spec.select36.lcssa
  store i32 %sub59, ptr %arrayidx58, align 4, !tbaa !5
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %indvars.iv82
  br i1 %exitcond75.not, label %for.end62, label %for.body54, !llvm.loop !25

for.end62:                                        ; preds = %for.body54
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  %exitcond80.not = icmp eq i64 %indvars.iv.next77, %indvars.iv82
  br i1 %exitcond80.not, label %for.end65, label %for.body37.preheader, !llvm.loop !26

for.end65:                                        ; preds = %for.end62
  %38 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 804), align 4, !tbaa !5
  %min.iters.check = icmp ult i64 %indvars.iv82, 4
  %n.vec = and i64 %indvars.iv82, -4
  %cmp.n = icmp eq i64 %indvars.iv82, %n.vec
  br label %for.cond2.preheader.us.i

for.cond2.preheader.us.i:                         ; preds = %for.cond2.for.inc11_crit_edge.us.i, %for.end65
  %indvars.iv28.i = phi i64 [ 1, %for.end65 ], [ %indvars.iv.next29.i, %for.cond2.for.inc11_crit_edge.us.i ]
  %indvars.iv.next29.i = add nuw nsw i64 %indvars.iv28.i, 1
  br i1 %min.iters.check, label %for.body4.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond2.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond2.preheader.us.i ]
  %39 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv.next29.i, i64 %index
  %wide.load = load <4 x i32>, ptr %39, align 16, !tbaa !5
  %40 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv28.i, i64 %index
  store <4 x i32> %wide.load, ptr %40, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %41 = icmp eq i64 %index.next, %n.vec
  br i1 %41, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond2.for.inc11_crit_edge.us.i, label %for.body4.us.i.preheader

for.body4.us.i.preheader:                         ; preds = %for.cond2.preheader.us.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %for.cond2.preheader.us.i ], [ %n.vec, %middle.block ]
  br label %for.body4.us.i

for.body4.us.i:                                   ; preds = %for.body4.us.i.preheader, %for.body4.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body4.us.i ], [ %indvars.iv.i.ph, %for.body4.us.i.preheader ]
  %arrayidx6.us.i = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv.next29.i, i64 %indvars.iv.i
  %42 = load i32, ptr %arrayidx6.us.i, align 4, !tbaa !5
  %arrayidx10.us.i = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv28.i, i64 %indvars.iv.i
  store i32 %42, ptr %arrayidx10.us.i, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv82
  br i1 %exitcond.not.i, label %for.cond2.for.inc11_crit_edge.us.i, label %for.body4.us.i, !llvm.loop !28

for.cond2.for.inc11_crit_edge.us.i:               ; preds = %for.body4.us.i, %middle.block
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next29.i, %indvars.iv82
  br i1 %exitcond32.not.i, label %for.cond17.preheader.us.i, label %for.cond2.preheader.us.i, !llvm.loop !15

for.cond17.preheader.us.i:                        ; preds = %for.cond2.for.inc11_crit_edge.us.i, %for.cond17.for.inc32_crit_edge.us.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.cond17.for.inc32_crit_edge.us.i ], [ 1, %for.cond2.for.inc11_crit_edge.us.i ]
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  br label %for.body19.us.i

for.body19.us.i:                                  ; preds = %for.body19.us.i, %for.cond17.preheader.us.i
  %indvars.iv33.i = phi i64 [ 0, %for.cond17.preheader.us.i ], [ %indvars.iv.next34.i, %for.body19.us.i ]
  %arrayidx24.us.i = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv33.i, i64 %indvars.iv.next39.i
  %43 = load i32, ptr %arrayidx24.us.i, align 4, !tbaa !5
  %arrayidx28.us.i = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv33.i, i64 %indvars.iv38.i
  store i32 %43, ptr %arrayidx28.us.i, align 4, !tbaa !5
  %indvars.iv.next34.i = add nuw nsw i64 %indvars.iv33.i, 1
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next34.i, %indvars.iv82
  br i1 %exitcond37.not.i, label %for.cond17.for.inc32_crit_edge.us.i, label %for.body19.us.i, !llvm.loop !16

for.cond17.for.inc32_crit_edge.us.i:              ; preds = %for.body19.us.i
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, %indvars.iv82
  br i1 %exitcond42.not.i, label %_Z2xji.exit, label %for.cond17.preheader.us.i, !llvm.loop !17

_Z2xji.exit:                                      ; preds = %for.cond17.for.inc32_crit_edge.us.i
  %add = add nsw i32 %add5153, %38
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, -1
  %cmp = icmp sgt i64 %indvars.iv82, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp, label %for.cond.preheader, label %tailrecurse.cleanup_crit_edge

tailrecurse.cleanup_crit_edge:                    ; preds = %_Z2xji.exit
  store i32 %add, ptr @sum, align 4, !tbaa !5
  br label %cleanup

cleanup:                                          ; preds = %tailrecurse.cleanup_crit_edge, %entry
  ret void
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp sgt i32 %0, 0
  br i1 %cmp10, label %for.body, label %for.end18

for.body:                                         ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %8, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %k.011 = phi i32 [ %inc17, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  store i32 0, ptr @sum, align 4, !tbaa !5
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.cond4.preheader, label %for.cond.cleanup

for.cond4.preheader:                              ; preds = %for.body, %for.cond.cleanup6
  %2 = phi i32 [ %9, %for.cond.cleanup6 ], [ %1, %for.body ]
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.cond.cleanup6 ], [ 0, %for.body ]
  %cmp56 = icmp sgt i32 %2, 0
  br i1 %cmp56, label %for.body7, label %for.cond4.preheader.for.cond.cleanup6_crit_edge

for.cond4.preheader.for.cond.cleanup6_crit_edge:  ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.cond.cleanup6

for.cond.cleanup:                                 ; preds = %for.cond.cleanup6, %for.body
  %.lcssa = phi i32 [ %1, %for.body ], [ %9, %for.cond.cleanup6 ]
  call void @_Z2gli(i32 noundef %.lcssa)
  %3 = load i32, ptr @sum, align 4, !tbaa !5
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %3)
  %vtable.i = load ptr, ptr %call14, align 8, !tbaa !29
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call14, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %4 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !31
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %5 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !49
  %tobool.not.i1.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 67
  %6 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !55
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4)
  %vtable.i.i.i = load ptr, ptr %4, align 8, !tbaa !29
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %7 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %7(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %6, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call14, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc17 = add nuw nsw i32 %k.011, 1
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc17, %8
  br i1 %cmp, label %for.body, label %for.end18, !llvm.loop !56

for.cond.cleanup6:                                ; preds = %for.body7, %for.cond4.preheader.for.cond.cleanup6_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.cond.cleanup6_crit_edge ], [ %11, %for.body7 ]
  %9 = phi i32 [ %2, %for.cond4.preheader.for.cond.cleanup6_crit_edge ], [ %10, %for.body7 ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  %cmp2 = icmp slt i64 %indvars.iv.next16, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.cond.cleanup, !llvm.loop !57

for.body7:                                        ; preds = %for.cond4.preheader, %for.body7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond4.preheader ]
  %arrayidx9 = getelementptr inbounds nuw [200 x [200 x i32]], ptr @a, i64 0, i64 %indvars.iv15, i64 %indvars.iv
  %call10 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp5, label %for.body7, label %for.cond.cleanup6, !llvm.loop !59

for.end18:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11, !12, !13}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11, !12}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11, !12, !13}
!24 = distinct !{!24, !10, !11, !12}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = distinct !{!27, !10, !11, !12, !13}
!28 = distinct !{!28, !10, !11, !12}
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
!57 = distinct !{!57, !10, !11, !58}
!58 = !{!"llvm.loop.unswitch.partial.disable"}
!59 = distinct !{!59, !10, !11}
