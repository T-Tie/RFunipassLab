; ModuleID = '<stdin>'
source_filename = "/tmp/tmph87e372d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x [100 x i32]]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z3SumiPA100_i(i32 noundef %n, ptr noundef captures(none) %t) local_unnamed_addr #0 {
entry:
  %arrayidx65 = getelementptr inbounds nuw i8, ptr %t, i64 404
  br label %tailrecurse

tailrecurse:                                      ; preds = %for.end98, %entry
  %indvars.iv129.in = phi i32 [ %indvars.iv129, %for.end98 ], [ %n, %entry ]
  %accumulator.tr = phi i32 [ %add100, %for.end98 ], [ 0, %entry ]
  %n.tr = phi i32 [ %sub70141, %for.end98 ], [ %n, %entry ]
  %0 = zext i32 %n.tr to i64
  %1 = zext i32 %n.tr to i64
  %2 = zext i32 %n.tr to i64
  %indvars.iv129 = add i32 %indvars.iv129.in, -1
  %cmp69 = icmp sgt i32 %n.tr, 0
  br i1 %cmp69, label %for.body.preheader, label %for.cond69.preheader.thread

for.body.preheader:                               ; preds = %tailrecurse
  %wide.trip.count109 = zext nneg i32 %n.tr to i64
  %min.iters.check156 = icmp ult i32 %n.tr, 4
  %n.vec159 = and i64 %0, 2147483644
  %cmp.n168 = icmp eq i64 %n.vec159, %0
  %min.iters.check143 = icmp ult i32 %n.tr, 4
  %n.vec146 = and i64 %1, 2147483644
  %cmp.n153 = icmp eq i64 %n.vec146, %1
  br label %for.body

for.body29.us.preheader:                          ; preds = %for.inc24
  %wide.trip.count124 = zext nneg i32 %n.tr to i64
  %min.iters.check = icmp ult i32 %n.tr, 4
  %n.vec = and i64 %2, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %2
  br label %for.body29.us

for.body29.us:                                    ; preds = %for.body29.us.preheader, %for.cond50.for.inc61_crit_edge.us
  %indvars.iv121 = phi i64 [ 0, %for.body29.us.preheader ], [ %indvars.iv.next122, %for.cond50.for.inc61_crit_edge.us ]
  %arrayidx32.us = getelementptr inbounds nuw [100 x i32], ptr %t, i64 0, i64 %indvars.iv121
  %3 = load i32, ptr %arrayidx32.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body35.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body29.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %19, %vector.body ]
  %4 = or disjoint i64 %index, 1
  %5 = or disjoint i64 %index, 2
  %6 = or disjoint i64 %index, 3
  %7 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %index, i64 %indvars.iv121
  %8 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %4, i64 %indvars.iv121
  %9 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %5, i64 %indvars.iv121
  %10 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %6, i64 %indvars.iv121
  %11 = load i32, ptr %7, align 4, !tbaa !5
  %12 = load i32, ptr %8, align 4, !tbaa !5
  %13 = load i32, ptr %9, align 4, !tbaa !5
  %14 = load i32, ptr %10, align 4, !tbaa !5
  %15 = insertelement <4 x i32> poison, i32 %11, i64 0
  %16 = insertelement <4 x i32> %15, i32 %12, i64 1
  %17 = insertelement <4 x i32> %16, i32 %13, i64 2
  %18 = insertelement <4 x i32> %17, i32 %14, i64 3
  %19 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %18, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %21 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %19)
  br i1 %cmp.n, label %for.body52.lr.ph.us, label %for.body35.us.preheader

for.body35.us.preheader:                          ; preds = %for.body29.us, %middle.block
  %indvars.iv111.ph = phi i64 [ 0, %for.body29.us ], [ %n.vec, %middle.block ]
  %min.272.us.ph = phi i32 [ %3, %for.body29.us ], [ %21, %middle.block ]
  br label %for.body35.us

for.body52.us:                                    ; preds = %for.body52.lr.ph.us, %for.body52.us
  %indvars.iv116 = phi i64 [ 0, %for.body52.lr.ph.us ], [ %indvars.iv.next117, %for.body52.us ]
  %arrayidx56.us = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv116, i64 %indvars.iv121
  %22 = load i32, ptr %arrayidx56.us, align 4, !tbaa !5
  %sub57.us = sub nsw i32 %22, %spec.select62.us.lcssa
  store i32 %sub57.us, ptr %arrayidx56.us, align 4, !tbaa !5
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1
  %exitcond120.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count124
  br i1 %exitcond120.not, label %for.cond50.for.inc61_crit_edge.us, label %for.body52.us, !llvm.loop !14

for.body35.us:                                    ; preds = %for.body35.us.preheader, %for.body35.us
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %for.body35.us ], [ %indvars.iv111.ph, %for.body35.us.preheader ]
  %min.272.us = phi i32 [ %spec.select62.us, %for.body35.us ], [ %min.272.us.ph, %for.body35.us.preheader ]
  %arrayidx39.us = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv111, i64 %indvars.iv121
  %23 = load i32, ptr %arrayidx39.us, align 4, !tbaa !5
  %spec.select62.us = tail call i32 @llvm.smin.i32(i32 %23, i32 %min.272.us)
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1
  %exitcond115.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count124
  br i1 %exitcond115.not, label %for.body52.lr.ph.us, label %for.body35.us, !llvm.loop !15

for.body52.lr.ph.us:                              ; preds = %for.body35.us, %middle.block
  %spec.select62.us.lcssa = phi i32 [ %21, %middle.block ], [ %spec.select62.us, %for.body35.us ]
  br label %for.body52.us

for.cond50.for.inc61_crit_edge.us:                ; preds = %for.body52.us
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1
  %exitcond125.not = icmp eq i64 %indvars.iv.next122, %wide.trip.count124
  br i1 %exitcond125.not, label %for.end63, label %for.body29.us, !llvm.loop !16

for.body:                                         ; preds = %for.body.preheader, %for.inc24
  %indvars.iv106 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next107, %for.inc24 ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv106
  %24 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br i1 %min.iters.check156, label %for.body4.preheader, label %vector.ph157

vector.ph157:                                     ; preds = %for.body
  %broadcast.splatinsert160 = insertelement <4 x i32> poison, i32 %24, i64 0
  %broadcast.splat161 = shufflevector <4 x i32> %broadcast.splatinsert160, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph157
  %index163 = phi i64 [ 0, %vector.ph157 ], [ %index.next166, %vector.body162 ]
  %vec.phi164 = phi <4 x i32> [ %broadcast.splat161, %vector.ph157 ], [ %26, %vector.body162 ]
  %25 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv106, i64 %index163
  %wide.load165 = load <4 x i32>, ptr %25, align 4, !tbaa !5
  %26 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load165, <4 x i32> %vec.phi164)
  %index.next166 = add nuw i64 %index163, 4
  %27 = icmp eq i64 %index.next166, %n.vec159
  br i1 %27, label %middle.block167, label %vector.body162, !llvm.loop !17

middle.block167:                                  ; preds = %vector.body162
  %28 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %26)
  br i1 %cmp.n168, label %for.body16.lr.ph, label %for.body4.preheader

for.body4.preheader:                              ; preds = %for.body, %middle.block167
  %indvars.iv.ph = phi i64 [ 0, %for.body ], [ %n.vec159, %middle.block167 ]
  %min.065.ph = phi i32 [ %24, %for.body ], [ %28, %middle.block167 ]
  br label %for.body4

for.body16.lr.ph:                                 ; preds = %for.body4, %middle.block167
  %spec.select.lcssa = phi i32 [ %28, %middle.block167 ], [ %spec.select, %for.body4 ]
  br i1 %min.iters.check143, label %for.body16.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %for.body16.lr.ph
  %broadcast.splatinsert147 = insertelement <4 x i32> poison, i32 %spec.select.lcssa, i64 0
  %broadcast.splat148 = shufflevector <4 x i32> %broadcast.splatinsert147, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph144
  %index150 = phi i64 [ 0, %vector.ph144 ], [ %index.next151, %vector.body149 ]
  %29 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv106, i64 %index150
  %wide.load = load <4 x i32>, ptr %29, align 4, !tbaa !5
  %30 = sub nsw <4 x i32> %wide.load, %broadcast.splat148
  store <4 x i32> %30, ptr %29, align 4, !tbaa !5
  %index.next151 = add nuw i64 %index150, 4
  %31 = icmp eq i64 %index.next151, %n.vec146
  br i1 %31, label %middle.block152, label %vector.body149, !llvm.loop !18

middle.block152:                                  ; preds = %vector.body149
  br i1 %cmp.n153, label %for.inc24, label %for.body16.preheader

for.body16.preheader:                             ; preds = %for.body16.lr.ph, %middle.block152
  %indvars.iv101.ph = phi i64 [ 0, %for.body16.lr.ph ], [ %n.vec146, %middle.block152 ]
  br label %for.body16

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %min.065 = phi i32 [ %spec.select, %for.body4 ], [ %min.065.ph, %for.body4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv106, i64 %indvars.iv
  %32 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %32, i32 %min.065)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count109
  br i1 %exitcond.not, label %for.body16.lr.ph, label %for.body4, !llvm.loop !19

for.body16:                                       ; preds = %for.body16.preheader, %for.body16
  %indvars.iv101 = phi i64 [ %indvars.iv.next102, %for.body16 ], [ %indvars.iv101.ph, %for.body16.preheader ]
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv106, i64 %indvars.iv101
  %33 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %sub = sub nsw i32 %33, %spec.select.lcssa
  store i32 %sub, ptr %arrayidx20, align 4, !tbaa !5
  %indvars.iv.next102 = add nuw nsw i64 %indvars.iv101, 1
  %exitcond105.not = icmp eq i64 %indvars.iv.next102, %wide.trip.count109
  br i1 %exitcond105.not, label %for.inc24, label %for.body16, !llvm.loop !20

for.inc24:                                        ; preds = %for.body16, %middle.block152
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %wide.trip.count109
  br i1 %exitcond110.not, label %for.body29.us.preheader, label %for.body, !llvm.loop !21

for.cond69.preheader.thread:                      ; preds = %tailrecurse
  %34 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  br label %for.end98

for.end63:                                        ; preds = %for.cond50.for.inc61_crit_edge.us
  %35 = load i32, ptr %arrayidx65, align 4, !tbaa !5
  switch i32 %n.tr, label %for.cond73.preheader.us.preheader [
    i32 2, label %cleanup
    i32 1, label %for.end98
  ]

for.cond73.preheader.us.preheader:                ; preds = %for.end63
  %wide.trip.count136 = zext i32 %indvars.iv129 to i64
  br label %for.cond73.preheader.us

for.cond73.preheader.us:                          ; preds = %for.cond73.preheader.us.preheader, %for.cond73.for.inc96_crit_edge.us
  %indvars.iv133 = phi i64 [ 0, %for.cond73.preheader.us.preheader ], [ %indvars.iv.next134, %for.cond73.for.inc96_crit_edge.us ]
  %cmp80.us = icmp eq i64 %indvars.iv133, 0
  %indvars.iv.next134 = add nuw nsw i64 %indvars.iv133, 1
  %36 = and i64 %indvars.iv.next134, 4294967295
  %tempi.0.us = select i1 %cmp80.us, i64 0, i64 %36
  br label %for.body76.us

for.body76.us:                                    ; preds = %for.cond73.preheader.us, %for.body76.us
  %indvars.iv126 = phi i64 [ 0, %for.cond73.preheader.us ], [ %indvars.iv.next127, %for.body76.us ]
  %cmp77.us = icmp eq i64 %indvars.iv126, 0
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1
  %37 = and i64 %indvars.iv.next127, 4294967295
  %tempj.0.us = select i1 %cmp77.us, i64 0, i64 %37
  %arrayidx88.us = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %tempi.0.us, i64 %tempj.0.us
  %38 = load i32, ptr %arrayidx88.us, align 4, !tbaa !5
  %arrayidx92.us = getelementptr inbounds nuw [100 x i32], ptr %t, i64 %indvars.iv133, i64 %indvars.iv126
  store i32 %38, ptr %arrayidx92.us, align 4, !tbaa !5
  %exitcond132.not = icmp eq i64 %indvars.iv.next127, %wide.trip.count136
  br i1 %exitcond132.not, label %for.cond73.for.inc96_crit_edge.us, label %for.body76.us, !llvm.loop !22

for.cond73.for.inc96_crit_edge.us:                ; preds = %for.body76.us
  %exitcond137.not = icmp eq i64 %indvars.iv.next134, %wide.trip.count136
  br i1 %exitcond137.not, label %for.end98, label %for.cond73.preheader.us, !llvm.loop !23

for.end98:                                        ; preds = %for.cond73.for.inc96_crit_edge.us, %for.end63, %for.cond69.preheader.thread
  %39 = phi i32 [ %34, %for.cond69.preheader.thread ], [ %35, %for.end63 ], [ %35, %for.cond73.for.inc96_crit_edge.us ]
  %sub70141 = add nsw i32 %n.tr, -1
  %add100 = add nsw i32 %39, %accumulator.tr
  br label %tailrecurse

cleanup:                                          ; preds = %for.end63
  %accumulator.ret.tr = add nsw i32 %35, %accumulator.tr
  ret i32 %accumulator.ret.tr
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000000) @a, i8 0, i64 4000000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %0, 0
  br i1 %cmp12, label %for.cond1.preheader, label %for.cond.cleanup

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %7, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  %cmp210 = icmp sgt i32 %1, 0
  br i1 %cmp210, label %for.cond5.preheader, label %for.cond.cleanup3

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.cond.cleanup7
  %2 = phi i32 [ %9, %for.cond.cleanup7 ], [ %1, %for.cond1.preheader ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.cond.cleanup7 ], [ 0, %for.cond1.preheader ]
  %cmp68 = icmp sgt i32 %2, 0
  br i1 %cmp68, label %for.body8, label %for.cond5.preheader.for.cond.cleanup7_crit_edge

for.cond5.preheader.for.cond.cleanup7_crit_edge:  ; preds = %for.cond5.preheader
  %.pre = sext i32 %2 to i64
  br label %for.cond.cleanup7

for.cond.cleanup3:                                ; preds = %for.cond.cleanup7, %for.cond1.preheader
  %.lcssa = phi i32 [ %1, %for.cond1.preheader ], [ %9, %for.cond.cleanup7 ]
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x [100 x i32]]], ptr @a, i64 0, i64 %indvars.iv20
  %call19 = call noundef i32 @_Z3SumiPA100_i(i32 noundef %.lcssa, ptr noundef nonnull %arrayidx18)
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call19)
  %vtable.i = load ptr, ptr %call20, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call20, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %3 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !26
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup3
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup3
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %4 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !44
  %tobool.not.i1.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 67
  %5 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !50
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %3)
  %vtable.i.i.i = load ptr, ptr %3, align 8, !tbaa !24
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %6 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %6(ptr noundef nonnull align 8 dereferenceable(570) %3, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %5, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call20, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next21, %8
  br i1 %cmp, label %for.cond1.preheader, label %for.cond.cleanup, !llvm.loop !51

for.cond.cleanup7:                                ; preds = %for.body8, %for.cond5.preheader.for.cond.cleanup7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %11, %for.body8 ]
  %9 = phi i32 [ %2, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %10, %for.body8 ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %cmp2 = icmp slt i64 %indvars.iv.next18, %.pre-phi
  br i1 %cmp2, label %for.cond5.preheader, label %for.cond.cleanup3, !llvm.loop !52

for.body8:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond5.preheader ]
  %arrayidx12 = getelementptr inbounds nuw [100 x [100 x [100 x i32]]], ptr @a, i64 0, i64 %indvars.iv20, i64 %indvars.iv17, i64 %indvars.iv
  %call13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx12)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %11 = sext i32 %10 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next, %11
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7, !llvm.loop !54
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11, !12, !13}
!18 = distinct !{!18, !10, !11, !12, !13}
!19 = distinct !{!19, !10, !11, !12}
!20 = distinct !{!20, !10, !11, !12}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!27, !41, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !28, i64 0, !38, i64 216, !7, i64 224, !39, i64 225, !40, i64 232, !41, i64 240, !42, i64 248, !43, i64 256}
!28 = !{!"_ZTSSt8ios_base", !29, i64 8, !29, i64 16, !30, i64 24, !31, i64 28, !31, i64 32, !32, i64 40, !34, i64 48, !7, i64 64, !6, i64 192, !35, i64 200, !36, i64 208}
!29 = !{!"long", !7, i64 0}
!30 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!31 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!32 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !33, i64 0}
!33 = !{!"any pointer", !7, i64 0}
!34 = !{!"_ZTSNSt8ios_base6_WordsE", !33, i64 0, !29, i64 8}
!35 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !33, i64 0}
!36 = !{!"_ZTSSt6locale", !37, i64 0}
!37 = !{!"p1 _ZTSNSt6locale5_ImplE", !33, i64 0}
!38 = !{!"p1 _ZTSSo", !33, i64 0}
!39 = !{!"bool", !7, i64 0}
!40 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !33, i64 0}
!41 = !{!"p1 _ZTSSt5ctypeIcE", !33, i64 0}
!42 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !33, i64 0}
!43 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !33, i64 0}
!44 = !{!45, !7, i64 56}
!45 = !{!"_ZTSSt5ctypeIcE", !46, i64 0, !47, i64 16, !39, i64 24, !48, i64 32, !48, i64 40, !49, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!46 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!47 = !{!"p1 _ZTS15__locale_struct", !33, i64 0}
!48 = !{!"p1 int", !33, i64 0}
!49 = !{!"p1 short", !33, i64 0}
!50 = !{!7, !7, i64 0}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11, !53}
!53 = !{!"llvm.loop.unswitch.partial.disable"}
!54 = distinct !{!54, !10, !11}
