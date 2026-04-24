; ModuleID = '<stdin>'
source_filename = "/tmp/tmp5zpjmr38.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [100 x [100 x i32]] zeroinitializer, align 16
@n = dso_local global i32 0, align 4
@s = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %0, 0
  br i1 %cmp17, label %for.cond1.preheader, label %for.end25

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %16, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %i.018 = phi i32 [ %inc24, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  %cmp212 = icmp sgt i32 %1, 0
  br i1 %cmp212, label %for.cond4.preheader, label %for.end12

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc10
  %2 = phi i32 [ %5, %for.inc10 ], [ %1, %for.cond1.preheader ]
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.inc10 ], [ 0, %for.cond1.preheader ]
  %cmp510 = icmp sgt i32 %2, 0
  br i1 %cmp510, label %for.body6, label %for.cond4.preheader.for.inc10_crit_edge

for.cond4.preheader.for.inc10_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %2 to i64
  br label %for.inc10

for.body6:                                        ; preds = %for.cond4.preheader, %for.body6
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6 ], [ 0, %for.cond4.preheader ]
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv21, i64 %indvars.iv
  %call9 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp5, label %for.body6, label %for.inc10, !llvm.loop !9

for.inc10:                                        ; preds = %for.body6, %for.cond4.preheader.for.inc10_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc10_crit_edge ], [ %4, %for.body6 ]
  %5 = phi i32 [ %2, %for.cond4.preheader.for.inc10_crit_edge ], [ %3, %for.body6 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %cmp2 = icmp slt i64 %indvars.iv.next22, %.pre-phi
  br i1 %cmp2, label %for.cond4.preheader, label %for.end12, !llvm.loop !12

for.end12:                                        ; preds = %for.inc10, %for.cond1.preheader
  tail call void @_Z3Tryi(i32 noundef 0)
  %6 = load i32, ptr @n, align 4, !tbaa !5
  %cmp1414 = icmp sgt i32 %6, 1
  br i1 %cmp1414, label %for.body15.preheader, label %for.end20

for.body15.preheader:                             ; preds = %for.end12
  %sub = add nsw i32 %6, -1
  %wide.trip.count = zext nneg i32 %sub to i64
  %min.iters.check = icmp ult i32 %6, 5
  br i1 %min.iters.check, label %for.body15.preheader29, label %vector.ph

vector.ph:                                        ; preds = %for.body15.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %8, %vector.body ]
  %7 = getelementptr inbounds nuw [100 x i32], ptr @s, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %7, align 16, !tbaa !5
  %8 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %10 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %8)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end20, label %for.body15.preheader29

for.body15.preheader29:                           ; preds = %for.body15.preheader, %middle.block
  %indvars.iv24.ph = phi i64 [ 0, %for.body15.preheader ], [ %n.vec, %middle.block ]
  %sum.016.ph = phi i32 [ 0, %for.body15.preheader ], [ %10, %middle.block ]
  br label %for.body15

for.body15:                                       ; preds = %for.body15.preheader29, %for.body15
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body15 ], [ %indvars.iv24.ph, %for.body15.preheader29 ]
  %sum.016 = phi i32 [ %add, %for.body15 ], [ %sum.016.ph, %for.body15.preheader29 ]
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr @s, i64 0, i64 %indvars.iv24
  %11 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add = add nsw i32 %11, %sum.016
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count
  br i1 %exitcond.not, label %for.end20, label %for.body15, !llvm.loop !17

for.end20:                                        ; preds = %for.body15, %middle.block, %for.end12
  %sum.0.lcssa = phi i32 [ 0, %for.end12 ], [ %10, %middle.block ], [ %add, %for.body15 ]
  %call21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call21, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call21, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %12 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !20
  %tobool.not.i.i.i = icmp eq ptr %12, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end20
  tail call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end20
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 56
  %13 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !38
  %tobool.not.i1.i.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 67
  %14 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %12)
  %vtable.i.i.i = load ptr, ptr %12, align 8, !tbaa !18
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %15 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %15(ptr noundef nonnull align 8 dereferenceable(570) %12, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %14, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call21, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc24 = add nuw nsw i32 %i.018, 1
  %16 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc24, %16
  br i1 %cmp, label %for.cond1.preheader, label %for.end25, !llvm.loop !45

for.end25:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3Tryi(i32 noundef %i) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %sub3 = add i32 %0, -1
  %1 = sext i32 %i to i64
  %2 = sext i32 %0 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i, i32 %sub3)
  %3 = add i32 %smax, 1
  %4 = add nsw i64 %2, -2
  %5 = sub nsw i64 %2, %1
  br label %tailrecurse

tailrecurse:                                      ; preds = %_Z3funi.exit, %entry
  %indvar = phi i64 [ %indvar.next, %_Z3funi.exit ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %_Z3funi.exit ], [ %1, %entry ]
  %6 = sub i64 %5, %indvar
  %7 = sub i64 %5, %indvar
  %8 = sub i64 %5, %indvar
  %9 = add i64 %indvar, %1
  %10 = sub i64 %4, %9
  %11 = sub nsw i64 %2, %indvars.iv
  %cmp22.i = icmp sgt i64 %11, 0
  br i1 %cmp22.i, label %for.body.us.us.i.preheader, label %_Z1li.exit.thread

for.body.us.us.i.preheader:                       ; preds = %tailrecurse
  %min.iters.check59 = icmp ult i64 %6, 4
  %n.vec62 = and i64 %6, -4
  %cmp.n71 = icmp eq i64 %6, %n.vec62
  %min.iters.check45 = icmp ult i64 %7, 4
  %n.vec48 = and i64 %7, -4
  %cmp.n56 = icmp eq i64 %7, %n.vec48
  br label %for.body.us.us.i

for.body.us.us.i:                                 ; preds = %for.body.us.us.i.preheader, %for.cond14.for.inc28_crit_edge.us.us.i
  %indvars.iv46.i = phi i64 [ %indvars.iv.next47.i, %for.cond14.for.inc28_crit_edge.us.us.i ], [ 0, %for.body.us.us.i.preheader ]
  %arrayidx.us.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46.i
  %12 = load i32, ptr %arrayidx.us.us.i, align 16, !tbaa !5
  br i1 %min.iters.check59, label %for.body4.us.us.i.preheader, label %vector.ph60

vector.ph60:                                      ; preds = %for.body.us.us.i
  %broadcast.splatinsert63 = insertelement <4 x i32> poison, i32 %12, i64 0
  %broadcast.splat64 = shufflevector <4 x i32> %broadcast.splatinsert63, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body65

vector.body65:                                    ; preds = %vector.body65, %vector.ph60
  %index66 = phi i64 [ 0, %vector.ph60 ], [ %index.next69, %vector.body65 ]
  %vec.phi67 = phi <4 x i32> [ %broadcast.splat64, %vector.ph60 ], [ %14, %vector.body65 ]
  %13 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46.i, i64 %index66
  %wide.load68 = load <4 x i32>, ptr %13, align 16, !tbaa !5
  %14 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load68, <4 x i32> %vec.phi67)
  %index.next69 = add nuw i64 %index66, 4
  %15 = icmp eq i64 %index.next69, %n.vec62
  br i1 %15, label %middle.block70, label %vector.body65, !llvm.loop !46

middle.block70:                                   ; preds = %vector.body65
  %16 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %14)
  br i1 %cmp.n71, label %for.body16.us.us.i.preheader, label %for.body4.us.us.i.preheader

for.body4.us.us.i.preheader:                      ; preds = %for.body.us.us.i, %middle.block70
  %indvars.iv.i.ph = phi i64 [ 0, %for.body.us.us.i ], [ %n.vec62, %middle.block70 ]
  %min.019.us.us.i.ph = phi i32 [ %12, %for.body.us.us.i ], [ %16, %middle.block70 ]
  br label %for.body4.us.us.i

for.body16.us.us.i:                               ; preds = %for.body16.us.us.i.preheader74, %for.body16.us.us.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.body16.us.us.i ], [ %indvars.iv41.i.ph, %for.body16.us.us.i.preheader74 ]
  %arrayidx20.us.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46.i, i64 %indvars.iv41.i
  %17 = load i32, ptr %arrayidx20.us.us.i, align 4, !tbaa !5
  %sub.us.us.i = sub nsw i32 %17, %spec.select.us.us.i.lcssa
  store i32 %sub.us.us.i, ptr %arrayidx20.us.us.i, align 4, !tbaa !5
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %11
  br i1 %exitcond45.not.i, label %for.cond14.for.inc28_crit_edge.us.us.i, label %for.body16.us.us.i, !llvm.loop !47

for.body4.us.us.i:                                ; preds = %for.body4.us.us.i.preheader, %for.body4.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body4.us.us.i ], [ %indvars.iv.i.ph, %for.body4.us.us.i.preheader ]
  %min.019.us.us.i = phi i32 [ %spec.select.us.us.i, %for.body4.us.us.i ], [ %min.019.us.us.i.ph, %for.body4.us.us.i.preheader ]
  %arrayidx8.us.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46.i, i64 %indvars.iv.i
  %18 = load i32, ptr %arrayidx8.us.us.i, align 4, !tbaa !5
  %spec.select.us.us.i = tail call i32 @llvm.smin.i32(i32 %18, i32 %min.019.us.us.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %11
  br i1 %exitcond.not.i, label %for.body16.us.us.i.preheader, label %for.body4.us.us.i, !llvm.loop !48

for.body16.us.us.i.preheader:                     ; preds = %for.body4.us.us.i, %middle.block70
  %spec.select.us.us.i.lcssa = phi i32 [ %16, %middle.block70 ], [ %spec.select.us.us.i, %for.body4.us.us.i ]
  br i1 %min.iters.check45, label %for.body16.us.us.i.preheader74, label %vector.ph46

vector.ph46:                                      ; preds = %for.body16.us.us.i.preheader
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %spec.select.us.us.i.lcssa, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph46
  %index52 = phi i64 [ 0, %vector.ph46 ], [ %index.next54, %vector.body51 ]
  %19 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46.i, i64 %index52
  %wide.load53 = load <4 x i32>, ptr %19, align 16, !tbaa !5
  %20 = sub nsw <4 x i32> %wide.load53, %broadcast.splat50
  store <4 x i32> %20, ptr %19, align 16, !tbaa !5
  %index.next54 = add nuw i64 %index52, 4
  %21 = icmp eq i64 %index.next54, %n.vec48
  br i1 %21, label %middle.block55, label %vector.body51, !llvm.loop !49

middle.block55:                                   ; preds = %vector.body51
  br i1 %cmp.n56, label %for.cond14.for.inc28_crit_edge.us.us.i, label %for.body16.us.us.i.preheader74

for.body16.us.us.i.preheader74:                   ; preds = %for.body16.us.us.i.preheader, %middle.block55
  %indvars.iv41.i.ph = phi i64 [ 0, %for.body16.us.us.i.preheader ], [ %n.vec48, %middle.block55 ]
  br label %for.body16.us.us.i

for.cond14.for.inc28_crit_edge.us.us.i:           ; preds = %for.body16.us.us.i, %middle.block55
  %indvars.iv.next47.i = add nuw nsw i64 %indvars.iv46.i, 1
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next47.i, %11
  br i1 %exitcond50.not.i, label %for.body.us.us.i9.preheader, label %for.body.us.us.i, !llvm.loop !50

for.body.us.us.i9.preheader:                      ; preds = %for.cond14.for.inc28_crit_edge.us.us.i
  %min.iters.check34 = icmp ult i64 %8, 4
  %n.vec37 = and i64 %8, -4
  %cmp.n42 = icmp eq i64 %8, %n.vec37
  br label %for.body.us.us.i9

for.body.us.us.i9:                                ; preds = %for.body.us.us.i9.preheader, %for.cond13.for.inc27_crit_edge.us.us.i
  %indvars.iv46.i10 = phi i64 [ %indvars.iv.next47.i21, %for.cond13.for.inc27_crit_edge.us.us.i ], [ 0, %for.body.us.us.i9.preheader ]
  %arrayidx.us.us.i11 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv46.i10
  %22 = load i32, ptr %arrayidx.us.us.i11, align 4, !tbaa !5
  br i1 %min.iters.check34, label %for.body3.us.us.i.preheader, label %vector.ph35

vector.ph35:                                      ; preds = %for.body.us.us.i9
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %22, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph35
  %index39 = phi i64 [ 0, %vector.ph35 ], [ %index.next40, %vector.body38 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph35 ], [ %38, %vector.body38 ]
  %23 = or disjoint i64 %index39, 1
  %24 = or disjoint i64 %index39, 2
  %25 = or disjoint i64 %index39, 3
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %index39, i64 %indvars.iv46.i10
  %27 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %23, i64 %indvars.iv46.i10
  %28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %24, i64 %indvars.iv46.i10
  %29 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %25, i64 %indvars.iv46.i10
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = insertelement <4 x i32> poison, i32 %30, i64 0
  %35 = insertelement <4 x i32> %34, i32 %31, i64 1
  %36 = insertelement <4 x i32> %35, i32 %32, i64 2
  %37 = insertelement <4 x i32> %36, i32 %33, i64 3
  %38 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %37, <4 x i32> %vec.phi)
  %index.next40 = add nuw i64 %index39, 4
  %39 = icmp eq i64 %index.next40, %n.vec37
  br i1 %39, label %middle.block41, label %vector.body38, !llvm.loop !51

middle.block41:                                   ; preds = %vector.body38
  %40 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %38)
  br i1 %cmp.n42, label %for.body15.us.us.i.preheader, label %for.body3.us.us.i.preheader

for.body3.us.us.i.preheader:                      ; preds = %for.body.us.us.i9, %middle.block41
  %indvars.iv.i12.ph = phi i64 [ 0, %for.body.us.us.i9 ], [ %n.vec37, %middle.block41 ]
  %min.019.us.us.i13.ph = phi i32 [ %22, %for.body.us.us.i9 ], [ %40, %middle.block41 ]
  br label %for.body3.us.us.i

for.body15.us.us.i:                               ; preds = %for.body15.us.us.i.preheader, %for.body15.us.us.i
  %indvars.iv41.i17 = phi i64 [ %indvars.iv.next42.i19, %for.body15.us.us.i ], [ 0, %for.body15.us.us.i.preheader ]
  %arrayidx19.us.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv41.i17, i64 %indvars.iv46.i10
  %41 = load i32, ptr %arrayidx19.us.us.i, align 4, !tbaa !5
  %sub.us.us.i18 = sub nsw i32 %41, %spec.select.us.us.i14.lcssa
  store i32 %sub.us.us.i18, ptr %arrayidx19.us.us.i, align 4, !tbaa !5
  %indvars.iv.next42.i19 = add nuw nsw i64 %indvars.iv41.i17, 1
  %exitcond45.not.i20 = icmp eq i64 %indvars.iv.next42.i19, %11
  br i1 %exitcond45.not.i20, label %for.cond13.for.inc27_crit_edge.us.us.i, label %for.body15.us.us.i, !llvm.loop !52

for.body3.us.us.i:                                ; preds = %for.body3.us.us.i.preheader, %for.body3.us.us.i
  %indvars.iv.i12 = phi i64 [ %indvars.iv.next.i15, %for.body3.us.us.i ], [ %indvars.iv.i12.ph, %for.body3.us.us.i.preheader ]
  %min.019.us.us.i13 = phi i32 [ %spec.select.us.us.i14, %for.body3.us.us.i ], [ %min.019.us.us.i13.ph, %for.body3.us.us.i.preheader ]
  %arrayidx7.us.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.i12, i64 %indvars.iv46.i10
  %42 = load i32, ptr %arrayidx7.us.us.i, align 4, !tbaa !5
  %spec.select.us.us.i14 = tail call i32 @llvm.smin.i32(i32 %42, i32 %min.019.us.us.i13)
  %indvars.iv.next.i15 = add nuw nsw i64 %indvars.iv.i12, 1
  %exitcond.not.i16 = icmp eq i64 %indvars.iv.next.i15, %11
  br i1 %exitcond.not.i16, label %for.body15.us.us.i.preheader, label %for.body3.us.us.i, !llvm.loop !53

for.body15.us.us.i.preheader:                     ; preds = %for.body3.us.us.i, %middle.block41
  %spec.select.us.us.i14.lcssa = phi i32 [ %40, %middle.block41 ], [ %spec.select.us.us.i14, %for.body3.us.us.i ]
  br label %for.body15.us.us.i

for.cond13.for.inc27_crit_edge.us.us.i:           ; preds = %for.body15.us.us.i
  %indvars.iv.next47.i21 = add nuw nsw i64 %indvars.iv46.i10, 1
  %exitcond50.not.i22 = icmp eq i64 %indvars.iv.next47.i21, %11
  br i1 %exitcond50.not.i22, label %_Z1li.exit, label %for.body.us.us.i9, !llvm.loop !54

_Z1li.exit.thread:                                ; preds = %tailrecurse
  %43 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr @s, i64 0, i64 %indvars.iv
  store i32 %43, ptr %arrayidx27, align 4, !tbaa !5
  br label %_Z3funi.exit

_Z1li.exit:                                       ; preds = %for.cond13.for.inc27_crit_edge.us.us.i
  %44 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 404), align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [100 x i32], ptr @s, i64 0, i64 %indvars.iv
  store i32 %44, ptr %arrayidx, align 4, !tbaa !5
  %cmp218.i = icmp samesign ugt i64 %11, 2
  br i1 %cmp218.i, label %for.cond1.preheader.us.i.preheader, label %_Z3funi.exit

for.cond1.preheader.us.i.preheader:               ; preds = %_Z1li.exit
  %min.iters.check = icmp ult i64 %10, 4
  %n.vec = and i64 %10, -4
  %45 = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %10, %n.vec
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.inc10_crit_edge.us.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.cond1.for.inc10_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %for.body3.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us.i ]
  %offset.idx = or disjoint i64 %index, 2
  %46 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv31.i, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %46, align 8, !tbaa !5
  %47 = or disjoint i64 %index, 1
  %48 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv31.i, i64 %47
  store <4 x i32> %wide.load, ptr %48, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %49 = icmp eq i64 %index.next, %n.vec
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i.preheader

for.body3.us.i.preheader:                         ; preds = %for.cond1.preheader.us.i, %middle.block
  %indvars.iv.i23.ph = phi i64 [ 2, %for.cond1.preheader.us.i ], [ %45, %middle.block ]
  br label %for.body3.us.i

for.body3.us.i:                                   ; preds = %for.body3.us.i.preheader, %for.body3.us.i
  %indvars.iv.i23 = phi i64 [ %indvars.iv.next.i24, %for.body3.us.i ], [ %indvars.iv.i23.ph, %for.body3.us.i.preheader ]
  %arrayidx5.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv31.i, i64 %indvars.iv.i23
  %50 = load i32, ptr %arrayidx5.us.i, align 4, !tbaa !5
  %51 = add nsw i64 %indvars.iv.i23, -1
  %arrayidx9.us.i = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv31.i, i64 %51
  store i32 %50, ptr %arrayidx9.us.i, align 4, !tbaa !5
  %indvars.iv.next.i24 = add nuw nsw i64 %indvars.iv.i23, 1
  %exitcond.not.i25 = icmp eq i64 %indvars.iv.next.i24, %11
  br i1 %exitcond.not.i25, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i, !llvm.loop !56

for.cond1.for.inc10_crit_edge.us.i:               ; preds = %for.body3.us.i, %middle.block
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %11
  br i1 %exitcond35.not.i, label %for.cond17.preheader.us.preheader.i, label %for.cond1.preheader.us.i, !llvm.loop !57

for.cond17.preheader.us.preheader.i:              ; preds = %for.cond1.for.inc10_crit_edge.us.i
  %52 = add nsw i64 %11, -2
  br label %for.cond17.preheader.us.i

for.cond17.preheader.us.i:                        ; preds = %for.cond17.for.inc32_crit_edge.us.i, %for.cond17.preheader.us.preheader.i
  %indvars.iv42.i = phi i64 [ 0, %for.cond17.preheader.us.preheader.i ], [ %indvars.iv.next43.i, %for.cond17.for.inc32_crit_edge.us.i ]
  br label %for.body19.us.i

for.body19.us.i:                                  ; preds = %for.body19.us.i, %for.cond17.preheader.us.i
  %indvars.iv36.i = phi i64 [ 2, %for.cond17.preheader.us.i ], [ %indvars.iv.next37.i, %for.body19.us.i ]
  %arrayidx23.us.i = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv36.i, i64 %indvars.iv42.i
  %53 = load i32, ptr %arrayidx23.us.i, align 4, !tbaa !5
  %54 = add nsw i64 %indvars.iv36.i, -1
  %arrayidx28.us.i = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %54, i64 %indvars.iv42.i
  store i32 %53, ptr %arrayidx28.us.i, align 4, !tbaa !5
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next37.i, %11
  br i1 %exitcond41.not.i, label %for.cond17.for.inc32_crit_edge.us.i, label %for.body19.us.i, !llvm.loop !58

for.cond17.for.inc32_crit_edge.us.i:              ; preds = %for.body19.us.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1
  %exitcond46.not.i = icmp eq i64 %indvars.iv42.i, %52
  br i1 %exitcond46.not.i, label %_Z3funi.exit, label %for.cond17.preheader.us.i, !llvm.loop !59

_Z3funi.exit:                                     ; preds = %for.cond17.for.inc32_crit_edge.us.i, %_Z1li.exit.thread, %_Z1li.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %3, %lftr.wideiv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %if.end, label %tailrecurse

if.end:                                           ; preds = %_Z3funi.exit
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z1ri(i32 noundef %m) local_unnamed_addr #2 {
entry:
  %cmp22 = icmp sgt i32 %m, 0
  br i1 %cmp22, label %for.body.us.us.preheader, label %for.end30

for.body.us.us.preheader:                         ; preds = %entry
  %wide.trip.count49 = zext nneg i32 %m to i64
  %min.iters.check52 = icmp ult i32 %m, 4
  %n.vec55 = and i64 %wide.trip.count49, 2147483644
  %cmp.n63 = icmp eq i64 %n.vec55, %wide.trip.count49
  %min.iters.check = icmp ult i32 %m, 4
  %n.vec = and i64 %wide.trip.count49, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count49
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.cond14.for.inc28_crit_edge.us.us
  %indvars.iv46 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next47, %for.cond14.for.inc28_crit_edge.us.us ]
  %arrayidx.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46
  %0 = load i32, ptr %arrayidx.us.us, align 16, !tbaa !5
  br i1 %min.iters.check52, label %for.body4.us.us.preheader, label %vector.ph53

vector.ph53:                                      ; preds = %for.body.us.us
  %broadcast.splatinsert56 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat57 = shufflevector <4 x i32> %broadcast.splatinsert56, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body58

vector.body58:                                    ; preds = %vector.body58, %vector.ph53
  %index59 = phi i64 [ 0, %vector.ph53 ], [ %index.next61, %vector.body58 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat57, %vector.ph53 ], [ %2, %vector.body58 ]
  %1 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46, i64 %index59
  %wide.load60 = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load60, <4 x i32> %vec.phi)
  %index.next61 = add nuw i64 %index59, 4
  %3 = icmp eq i64 %index.next61, %n.vec55
  br i1 %3, label %middle.block62, label %vector.body58, !llvm.loop !60

middle.block62:                                   ; preds = %vector.body58
  %4 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %2)
  br i1 %cmp.n63, label %for.cond2.for.cond14.preheader_crit_edge.us.us, label %for.body4.us.us.preheader

for.body4.us.us.preheader:                        ; preds = %for.body.us.us, %middle.block62
  %indvars.iv.ph = phi i64 [ 0, %for.body.us.us ], [ %n.vec55, %middle.block62 ]
  %min.019.us.us.ph = phi i32 [ %0, %for.body.us.us ], [ %4, %middle.block62 ]
  br label %for.body4.us.us

for.body16.us.us:                                 ; preds = %for.body16.us.us.preheader, %for.body16.us.us
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.body16.us.us ], [ %indvars.iv41.ph, %for.body16.us.us.preheader ]
  %arrayidx20.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46, i64 %indvars.iv41
  %5 = load i32, ptr %arrayidx20.us.us, align 4, !tbaa !5
  %sub.us.us = sub nsw i32 %5, %spec.select.us.us.lcssa
  store i32 %sub.us.us, ptr %arrayidx20.us.us, align 4, !tbaa !5
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count49
  br i1 %exitcond45.not, label %for.cond14.for.inc28_crit_edge.us.us, label %for.body16.us.us, !llvm.loop !61

for.body4.us.us:                                  ; preds = %for.body4.us.us.preheader, %for.body4.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4.us.us ], [ %indvars.iv.ph, %for.body4.us.us.preheader ]
  %min.019.us.us = phi i32 [ %spec.select.us.us, %for.body4.us.us ], [ %min.019.us.us.ph, %for.body4.us.us.preheader ]
  %arrayidx8.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx8.us.us, align 4, !tbaa !5
  %spec.select.us.us = tail call i32 @llvm.smin.i32(i32 %6, i32 %min.019.us.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count49
  br i1 %exitcond.not, label %for.cond2.for.cond14.preheader_crit_edge.us.us, label %for.body4.us.us, !llvm.loop !62

for.cond2.for.cond14.preheader_crit_edge.us.us:   ; preds = %for.body4.us.us, %middle.block62
  %spec.select.us.us.lcssa = phi i32 [ %4, %middle.block62 ], [ %spec.select.us.us, %for.body4.us.us ]
  br i1 %min.iters.check, label %for.body16.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond2.for.cond14.preheader_crit_edge.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.us.us.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv46, i64 %index
  %wide.load = load <4 x i32>, ptr %7, align 16, !tbaa !5
  %8 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %8, ptr %7, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !63

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond14.for.inc28_crit_edge.us.us, label %for.body16.us.us.preheader

for.body16.us.us.preheader:                       ; preds = %for.cond2.for.cond14.preheader_crit_edge.us.us, %middle.block
  %indvars.iv41.ph = phi i64 [ 0, %for.cond2.for.cond14.preheader_crit_edge.us.us ], [ %n.vec, %middle.block ]
  br label %for.body16.us.us

for.cond14.for.inc28_crit_edge.us.us:             ; preds = %for.body16.us.us, %middle.block
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end30, label %for.body.us.us, !llvm.loop !50

for.end30:                                        ; preds = %for.cond14.for.inc28_crit_edge.us.us, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z1li(i32 noundef %m) local_unnamed_addr #2 {
entry:
  %cmp22 = icmp sgt i32 %m, 0
  br i1 %cmp22, label %for.body.us.us.preheader, label %for.end29

for.body.us.us.preheader:                         ; preds = %entry
  %wide.trip.count49 = zext nneg i32 %m to i64
  %min.iters.check = icmp ult i32 %m, 4
  %n.vec = and i64 %wide.trip.count49, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count49
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.cond13.for.inc27_crit_edge.us.us
  %indvars.iv46 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next47, %for.cond13.for.inc27_crit_edge.us.us ]
  %arrayidx.us.us = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv46
  %0 = load i32, ptr %arrayidx.us.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body3.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %16, %vector.body ]
  %1 = or disjoint i64 %index, 1
  %2 = or disjoint i64 %index, 2
  %3 = or disjoint i64 %index, 3
  %4 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %index, i64 %indvars.iv46
  %5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %1, i64 %indvars.iv46
  %6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %2, i64 %indvars.iv46
  %7 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %3, i64 %indvars.iv46
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
  br i1 %17, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %18 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %16)
  br i1 %cmp.n, label %for.cond1.for.cond13.preheader_crit_edge.us.us, label %for.body3.us.us.preheader

for.body3.us.us.preheader:                        ; preds = %for.body.us.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body.us.us ], [ %n.vec, %middle.block ]
  %min.019.us.us.ph = phi i32 [ %0, %for.body.us.us ], [ %18, %middle.block ]
  br label %for.body3.us.us

for.body15.us.us:                                 ; preds = %for.cond1.for.cond13.preheader_crit_edge.us.us, %for.body15.us.us
  %indvars.iv41 = phi i64 [ 0, %for.cond1.for.cond13.preheader_crit_edge.us.us ], [ %indvars.iv.next42, %for.body15.us.us ]
  %arrayidx19.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv41, i64 %indvars.iv46
  %19 = load i32, ptr %arrayidx19.us.us, align 4, !tbaa !5
  %sub.us.us = sub nsw i32 %19, %spec.select.us.us.lcssa
  store i32 %sub.us.us, ptr %arrayidx19.us.us, align 4, !tbaa !5
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count49
  br i1 %exitcond45.not, label %for.cond13.for.inc27_crit_edge.us.us, label %for.body15.us.us, !llvm.loop !52

for.body3.us.us:                                  ; preds = %for.body3.us.us.preheader, %for.body3.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3.us.us ], [ %indvars.iv.ph, %for.body3.us.us.preheader ]
  %min.019.us.us = phi i32 [ %spec.select.us.us, %for.body3.us.us ], [ %min.019.us.us.ph, %for.body3.us.us.preheader ]
  %arrayidx7.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %indvars.iv46
  %20 = load i32, ptr %arrayidx7.us.us, align 4, !tbaa !5
  %spec.select.us.us = tail call i32 @llvm.smin.i32(i32 %20, i32 %min.019.us.us)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count49
  br i1 %exitcond.not, label %for.cond1.for.cond13.preheader_crit_edge.us.us, label %for.body3.us.us, !llvm.loop !65

for.cond1.for.cond13.preheader_crit_edge.us.us:   ; preds = %for.body3.us.us, %middle.block
  %spec.select.us.us.lcssa = phi i32 [ %18, %middle.block ], [ %spec.select.us.us, %for.body3.us.us ]
  br label %for.body15.us.us

for.cond13.for.inc27_crit_edge.us.us:             ; preds = %for.body15.us.us
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end29, label %for.body.us.us, !llvm.loop !54

for.end29:                                        ; preds = %for.cond13.for.inc27_crit_edge.us.us, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3funi(i32 noundef %m) local_unnamed_addr #2 {
entry:
  %cmp20 = icmp sgt i32 %m, 0
  br i1 %cmp20, label %for.cond1.preheader.lr.ph, label %for.end34

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp218 = icmp samesign ugt i32 %m, 2
  br i1 %cmp218, label %for.cond1.preheader.us.preheader, label %for.cond13.preheader

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %wide.trip.count34 = zext nneg i32 %m to i64
  %0 = add nsw i64 %wide.trip.count34, -2
  %min.iters.check = icmp ult i64 %0, 4
  %n.vec = and i64 %0, -4
  %1 = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %0, %n.vec
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc10_crit_edge.us
  %indvars.iv31 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next32, %for.cond1.for.inc10_crit_edge.us ]
  br i1 %min.iters.check, label %for.body3.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us ]
  %offset.idx = or disjoint i64 %index, 2
  %2 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %2, align 8, !tbaa !5
  %3 = or disjoint i64 %index, 1
  %4 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 %3
  store <4 x i32> %wide.load, ptr %4, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc10_crit_edge.us, label %for.body3.us.preheader

for.body3.us.preheader:                           ; preds = %for.cond1.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 2, %for.cond1.preheader.us ], [ %1, %middle.block ]
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.body3.us.preheader, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3.us ], [ %indvars.iv.ph, %for.body3.us.preheader ]
  %arrayidx5.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx5.us, align 4, !tbaa !5
  %7 = add nsw i64 %indvars.iv, -1
  %arrayidx9.us = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv31, i64 %7
  store i32 %6, ptr %arrayidx9.us, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count34
  br i1 %exitcond.not, label %for.cond1.for.inc10_crit_edge.us, label %for.body3.us, !llvm.loop !67

for.cond1.for.inc10_crit_edge.us:                 ; preds = %for.body3.us, %middle.block
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %for.cond13.preheader, label %for.cond1.preheader.us, !llvm.loop !57

for.cond13.preheader:                             ; preds = %for.cond1.for.inc10_crit_edge.us, %for.cond1.preheader.lr.ph
  %or.cond = icmp ult i32 %m, 3
  br i1 %or.cond, label %for.end34, label %for.cond17.preheader.us.preheader

for.cond17.preheader.us.preheader:                ; preds = %for.cond13.preheader
  %sub14 = add nsw i32 %m, -1
  %wide.trip.count45 = zext nneg i32 %sub14 to i64
  %wide.trip.count40 = zext nneg i32 %m to i64
  br label %for.cond17.preheader.us

for.cond17.preheader.us:                          ; preds = %for.cond17.preheader.us.preheader, %for.cond17.for.inc32_crit_edge.us
  %indvars.iv42 = phi i64 [ 0, %for.cond17.preheader.us.preheader ], [ %indvars.iv.next43, %for.cond17.for.inc32_crit_edge.us ]
  br label %for.body19.us

for.body19.us:                                    ; preds = %for.cond17.preheader.us, %for.body19.us
  %indvars.iv36 = phi i64 [ 2, %for.cond17.preheader.us ], [ %indvars.iv.next37, %for.body19.us ]
  %arrayidx23.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv36, i64 %indvars.iv42
  %8 = load i32, ptr %arrayidx23.us, align 4, !tbaa !5
  %9 = add nsw i64 %indvars.iv36, -1
  %arrayidx28.us = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %9, i64 %indvars.iv42
  store i32 %8, ptr %arrayidx28.us, align 4, !tbaa !5
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count40
  br i1 %exitcond41.not, label %for.cond17.for.inc32_crit_edge.us, label %for.body19.us, !llvm.loop !58

for.cond17.for.inc32_crit_edge.us:                ; preds = %for.body19.us
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %wide.trip.count45
  br i1 %exitcond46.not, label %for.end34, label %for.cond17.preheader.us, !llvm.loop !59

for.end34:                                        ; preds = %for.cond17.for.inc32_crit_edge.us, %entry, %for.cond13.preheader
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!21, !35, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !32, i64 216, !7, i64 224, !33, i64 225, !34, i64 232, !35, i64 240, !36, i64 248, !37, i64 256}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !28, i64 48, !7, i64 64, !6, i64 192, !29, i64 200, !30, i64 208}
!23 = !{!"long", !7, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !23, i64 8}
!29 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!30 = !{!"_ZTSSt6locale", !31, i64 0}
!31 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!32 = !{!"p1 _ZTSSo", !27, i64 0}
!33 = !{!"bool", !7, i64 0}
!34 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!35 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!36 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!37 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!38 = !{!39, !7, i64 56}
!39 = !{!"_ZTSSt5ctypeIcE", !40, i64 0, !41, i64 16, !33, i64 24, !42, i64 32, !42, i64 40, !43, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!40 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!41 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!42 = !{!"p1 int", !27, i64 0}
!43 = !{!"p1 short", !27, i64 0}
!44 = !{!7, !7, i64 0}
!45 = distinct !{!45, !10, !11}
!46 = distinct !{!46, !10, !11, !15, !16}
!47 = distinct !{!47, !10, !11, !15}
!48 = distinct !{!48, !10, !11, !15}
!49 = distinct !{!49, !10, !11, !15, !16}
!50 = distinct !{!50, !10, !11}
!51 = distinct !{!51, !10, !11, !15, !16}
!52 = distinct !{!52, !10, !11}
!53 = distinct !{!53, !10, !11, !15}
!54 = distinct !{!54, !10, !11}
!55 = distinct !{!55, !10, !11, !15, !16}
!56 = distinct !{!56, !10, !11, !15}
!57 = distinct !{!57, !10, !11}
!58 = distinct !{!58, !10, !11}
!59 = distinct !{!59, !10, !11}
!60 = distinct !{!60, !10, !11, !15, !16}
!61 = distinct !{!61, !10, !11, !15}
!62 = distinct !{!62, !10, !11, !15}
!63 = distinct !{!63, !10, !11, !15, !16}
!64 = distinct !{!64, !10, !11, !15, !16}
!65 = distinct !{!65, !10, !11, !15}
!66 = distinct !{!66, !10, !11, !15, !16}
!67 = distinct !{!67, !10, !11, !15}
