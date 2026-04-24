; ModuleID = '<stdin>'
source_filename = "/tmp/tmpumja0oed.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not22 = icmp slt i32 %0, 1
  br i1 %cmp.not22, label %for.cond.cleanup, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %a, i64 404
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond1.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %0, %for.cond1.preheader.lr.ph ], [ %12, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %i.023 = phi i32 [ 1, %for.cond1.preheader.lr.ph ], [ %inc27, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %cmp216 = icmp sgt i32 %1, 0
  br i1 %cmp216, label %for.cond5.preheader, label %for.cond.cleanup17

for.cond.cleanup:                                 ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0

for.cond15.preheader:                             ; preds = %for.cond.cleanup7
  %cmp1618 = icmp sgt i32 %5, 1
  br i1 %cmp1618, label %for.body.lr.ph.i.preheader, label %for.cond.cleanup17

for.body.lr.ph.i.preheader:                       ; preds = %for.cond15.preheader
  %2 = zext nneg i32 %5 to i64
  %3 = add nsw i64 %2, -2
  br label %for.body.lr.ph.i

for.cond5.preheader:                              ; preds = %for.cond1.preheader, %for.cond.cleanup7
  %4 = phi i32 [ %5, %for.cond.cleanup7 ], [ %1, %for.cond1.preheader ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.cond.cleanup7 ], [ 0, %for.cond1.preheader ]
  %cmp614 = icmp sgt i32 %4, 0
  br i1 %cmp614, label %for.body8, label %for.cond5.preheader.for.cond.cleanup7_crit_edge

for.cond5.preheader.for.cond.cleanup7_crit_edge:  ; preds = %for.cond5.preheader
  %.pre = sext i32 %4 to i64
  br label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.body8, %for.cond5.preheader.for.cond.cleanup7_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %7, %for.body8 ]
  %5 = phi i32 [ %4, %for.cond5.preheader.for.cond.cleanup7_crit_edge ], [ %6, %for.body8 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %cmp2 = icmp slt i64 %indvars.iv.next28, %.pre-phi
  br i1 %cmp2, label %for.cond5.preheader, label %for.cond15.preheader, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.cond5.preheader ]
  %arrayidx10 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv27, i64 %indvars.iv
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp6 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7, !llvm.loop !13

for.cond.cleanup17:                               ; preds = %for.cond1.preheader.lr.ph.i, %_Z6reducePA100_ii.exit, %for.cond1.preheader, %for.cond15.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond15.preheader ], [ 0, %for.cond1.preheader ], [ %add, %_Z6reducePA100_ii.exit ], [ %add, %for.cond1.preheader.lr.ph.i ]
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %8 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup17
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup17
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  %9 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 67
  %10 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %8)
  %vtable.i.i.i = load ptr, ptr %8, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %11 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %11(ptr noundef nonnull align 8 dereferenceable(570) %8, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %10, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc27 = add nuw nsw i32 %i.023, 1
  %12 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.023, %12
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.cond.cleanup, !llvm.loop !41

for.body.lr.ph.i:                                 ; preds = %for.body.lr.ph.i.preheader, %_Z6reducePA100_ii.exit
  %indvar = phi i64 [ 0, %for.body.lr.ph.i.preheader ], [ %indvar.next, %_Z6reducePA100_ii.exit ]
  %indvars.iv31 = phi i64 [ %2, %for.body.lr.ph.i.preheader ], [ %indvars.iv.next32, %_Z6reducePA100_ii.exit ]
  %sum.019 = phi i32 [ 0, %for.body.lr.ph.i.preheader ], [ %add, %_Z6reducePA100_ii.exit ]
  %13 = sub i64 %3, %indvar
  %min.iters.check67 = icmp ult i64 %indvars.iv31, 4
  %n.vec70 = and i64 %indvars.iv31, -4
  %cmp.n79 = icmp eq i64 %indvars.iv31, %n.vec70
  %min.iters.check53 = icmp ult i64 %indvars.iv31, 4
  %n.vec56 = and i64 %indvars.iv31, -4
  %cmp.n64 = icmp eq i64 %indvars.iv31, %n.vec56
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond1.for.cond.cleanup3_crit_edge.i, %for.body.lr.ph.i
  %indvars.iv48.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next49.i, %for.cond1.for.cond.cleanup3_crit_edge.i ]
  %arrayidx.i.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48.i
  %14 = load i32, ptr %arrayidx.i.i, align 16, !tbaa !5
  br i1 %min.iters.check67, label %for.body.i.i.preheader, label %vector.ph68

vector.ph68:                                      ; preds = %for.body.i
  %broadcast.splatinsert71 = insertelement <4 x i32> poison, i32 %14, i64 0
  %broadcast.splat72 = shufflevector <4 x i32> %broadcast.splatinsert71, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body73

vector.body73:                                    ; preds = %vector.body73, %vector.ph68
  %index74 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body73 ]
  %vec.phi75 = phi <4 x i32> [ %broadcast.splat72, %vector.ph68 ], [ %16, %vector.body73 ]
  %15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48.i, i64 %index74
  %wide.load76 = load <4 x i32>, ptr %15, align 16, !tbaa !5
  %16 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load76, <4 x i32> %vec.phi75)
  %index.next77 = add nuw i64 %index74, 4
  %17 = icmp eq i64 %index.next77, %n.vec70
  br i1 %17, label %middle.block78, label %vector.body73, !llvm.loop !42

middle.block78:                                   ; preds = %vector.body73
  %18 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %16)
  br i1 %cmp.n79, label %for.body4.i.preheader, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %for.body.i, %middle.block78
  %indvars.iv32.i.i.ph = phi i64 [ 0, %for.body.i ], [ %n.vec70, %middle.block78 ]
  %t.027.i.i.ph = phi i32 [ %14, %for.body.i ], [ %18, %middle.block78 ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader, %for.body.i.i
  %indvars.iv32.i.i = phi i64 [ %indvars.iv.next33.i.i, %for.body.i.i ], [ %indvars.iv32.i.i.ph, %for.body.i.i.preheader ]
  %t.027.i.i = phi i32 [ %spec.select.i.i, %for.body.i.i ], [ %t.027.i.i.ph, %for.body.i.i.preheader ]
  %arrayidx6.i.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48.i, i64 %indvars.iv32.i.i
  %19 = load i32, ptr %arrayidx6.i.i, align 4, !tbaa !5
  %spec.select.i.i = call i32 @llvm.smin.i32(i32 %19, i32 %t.027.i.i)
  %indvars.iv.next33.i.i = add nuw nsw i64 %indvars.iv32.i.i, 1
  %exitcond36.not.i.i = icmp eq i64 %indvars.iv.next33.i.i, %indvars.iv31
  br i1 %exitcond36.not.i.i, label %for.body4.i.preheader, label %for.body.i.i, !llvm.loop !45

for.body4.i.preheader:                            ; preds = %for.body.i.i, %middle.block78
  %spec.select.i.i.lcssa = phi i32 [ %18, %middle.block78 ], [ %spec.select.i.i, %for.body.i.i ]
  br i1 %min.iters.check53, label %for.body4.i.preheader82, label %vector.ph54

vector.ph54:                                      ; preds = %for.body4.i.preheader
  %broadcast.splatinsert57 = insertelement <4 x i32> poison, i32 %spec.select.i.i.lcssa, i64 0
  %broadcast.splat58 = shufflevector <4 x i32> %broadcast.splatinsert57, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body59

vector.body59:                                    ; preds = %vector.body59, %vector.ph54
  %index60 = phi i64 [ 0, %vector.ph54 ], [ %index.next62, %vector.body59 ]
  %20 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48.i, i64 %index60
  %wide.load61 = load <4 x i32>, ptr %20, align 16, !tbaa !5
  %21 = sub nsw <4 x i32> %wide.load61, %broadcast.splat58
  store <4 x i32> %21, ptr %20, align 16, !tbaa !5
  %index.next62 = add nuw i64 %index60, 4
  %22 = icmp eq i64 %index.next62, %n.vec56
  br i1 %22, label %middle.block63, label %vector.body59, !llvm.loop !46

middle.block63:                                   ; preds = %vector.body59
  br i1 %cmp.n64, label %for.cond1.for.cond.cleanup3_crit_edge.i, label %for.body4.i.preheader82

for.body4.i.preheader82:                          ; preds = %for.body4.i.preheader, %middle.block63
  %indvars.iv.i.ph = phi i64 [ 0, %for.body4.i.preheader ], [ %n.vec56, %middle.block63 ]
  br label %for.body4.i

for.cond1.for.cond.cleanup3_crit_edge.i:          ; preds = %for.body4.i, %middle.block63
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %indvars.iv31
  br i1 %exitcond52.not.i, label %for.body13.i.preheader, label %for.body.i, !llvm.loop !47

for.body13.i.preheader:                           ; preds = %for.cond1.for.cond.cleanup3_crit_edge.i
  %min.iters.check42 = icmp ult i64 %indvars.iv31, 4
  %n.vec45 = and i64 %indvars.iv31, -4
  %cmp.n50 = icmp eq i64 %indvars.iv31, %n.vec45
  br label %for.body13.i

for.body4.i:                                      ; preds = %for.body4.i.preheader82, %for.body4.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body4.i ], [ %indvars.iv.i.ph, %for.body4.i.preheader82 ]
  %arrayidx6.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48.i, i64 %indvars.iv.i
  %23 = load i32, ptr %arrayidx6.i, align 4, !tbaa !5
  %sub.i = sub nsw i32 %23, %spec.select.i.i.lcssa
  store i32 %sub.i, ptr %arrayidx6.i, align 4, !tbaa !5
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv31
  br i1 %exitcond.not.i, label %for.cond1.for.cond.cleanup3_crit_edge.i, label %for.body4.i, !llvm.loop !48

for.body13.i:                                     ; preds = %for.body13.i.preheader, %for.cond16.for.cond.cleanup18_crit_edge.i
  %indvars.iv58.i = phi i64 [ %indvars.iv.next59.i, %for.cond16.for.cond.cleanup18_crit_edge.i ], [ 0, %for.body13.i.preheader ]
  %arrayidx15.i.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv58.i
  %24 = load i32, ptr %arrayidx15.i.i, align 4, !tbaa !5
  br i1 %min.iters.check42, label %for.body20.i.i.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %for.body13.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %24, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph43
  %index47 = phi i64 [ 0, %vector.ph43 ], [ %index.next48, %vector.body46 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph43 ], [ %40, %vector.body46 ]
  %25 = or disjoint i64 %index47, 1
  %26 = or disjoint i64 %index47, 2
  %27 = or disjoint i64 %index47, 3
  %28 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %index47, i64 %indvars.iv58.i
  %29 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %25, i64 %indvars.iv58.i
  %30 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %26, i64 %indvars.iv58.i
  %31 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %27, i64 %indvars.iv58.i
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = insertelement <4 x i32> poison, i32 %32, i64 0
  %37 = insertelement <4 x i32> %36, i32 %33, i64 1
  %38 = insertelement <4 x i32> %37, i32 %34, i64 2
  %39 = insertelement <4 x i32> %38, i32 %35, i64 3
  %40 = call <4 x i32> @llvm.smin.v4i32(<4 x i32> %39, <4 x i32> %vec.phi)
  %index.next48 = add nuw i64 %index47, 4
  %41 = icmp eq i64 %index.next48, %n.vec45
  br i1 %41, label %middle.block49, label %vector.body46, !llvm.loop !49

middle.block49:                                   ; preds = %vector.body46
  %42 = call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %40)
  br i1 %cmp.n50, label %for.body19.i.preheader, label %for.body20.i.i.preheader

for.body20.i.i.preheader:                         ; preds = %for.body13.i, %middle.block49
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body13.i ], [ %n.vec45, %middle.block49 ]
  %t.324.i.i.ph = phi i32 [ %24, %for.body13.i ], [ %42, %middle.block49 ]
  br label %for.body20.i.i

for.body20.i.i:                                   ; preds = %for.body20.i.i.preheader, %for.body20.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body20.i.i ], [ %indvars.iv.i.i.ph, %for.body20.i.i.preheader ]
  %t.324.i.i = phi i32 [ %spec.select21.i.i, %for.body20.i.i ], [ %t.324.i.i.ph, %for.body20.i.i.preheader ]
  %arrayidx24.i.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.i.i, i64 %indvars.iv58.i
  %43 = load i32, ptr %arrayidx24.i.i, align 4, !tbaa !5
  %spec.select21.i.i = call i32 @llvm.smin.i32(i32 %43, i32 %t.324.i.i)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %indvars.iv31
  br i1 %exitcond.not.i.i, label %for.body19.i.preheader, label %for.body20.i.i, !llvm.loop !50

for.body19.i.preheader:                           ; preds = %for.body20.i.i, %middle.block49
  %spec.select21.i.i.lcssa = phi i32 [ %42, %middle.block49 ], [ %spec.select21.i.i, %for.body20.i.i ]
  br label %for.body19.i

for.cond16.for.cond.cleanup18_crit_edge.i:        ; preds = %for.body19.i
  %indvars.iv.next59.i = add nuw nsw i64 %indvars.iv58.i, 1
  %exitcond62.not.i = icmp eq i64 %indvars.iv.next59.i, %indvars.iv31
  br i1 %exitcond62.not.i, label %for.cond1.preheader.lr.ph.i, label %for.body13.i, !llvm.loop !51

for.body19.i:                                     ; preds = %for.body19.i.preheader, %for.body19.i
  %indvars.iv53.i = phi i64 [ %indvars.iv.next54.i, %for.body19.i ], [ 0, %for.body19.i.preheader ]
  %arrayidx23.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv53.i, i64 %indvars.iv58.i
  %44 = load i32, ptr %arrayidx23.i, align 4, !tbaa !5
  %sub24.i = sub nsw i32 %44, %spec.select21.i.i.lcssa
  store i32 %sub24.i, ptr %arrayidx23.i, align 4, !tbaa !5
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1
  %exitcond57.not.i = icmp eq i64 %indvars.iv.next54.i, %indvars.iv31
  br i1 %exitcond57.not.i, label %for.cond16.for.cond.cleanup18_crit_edge.i, label %for.body19.i, !llvm.loop !52

for.cond1.preheader.lr.ph.i:                      ; preds = %for.cond16.for.cond.cleanup18_crit_edge.i
  %indvars.iv.next32 = add nsw i64 %indvars.iv31, -1
  %45 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %add = add nsw i32 %45, %sum.019
  %cmp219.i = icmp samesign ugt i64 %indvars.iv.next32, 1
  br i1 %cmp219.i, label %for.cond1.preheader.us.i.preheader, label %for.cond.cleanup17

for.cond1.preheader.us.i.preheader:               ; preds = %for.cond1.preheader.lr.ph.i
  %min.iters.check = icmp ult i64 %13, 4
  %n.vec = and i64 %13, -4
  %46 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %13, %n.vec
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.cond.cleanup3_crit_edge.us.i
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %for.cond1.for.cond.cleanup3_crit_edge.us.i ], [ 0, %for.cond1.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %for.body4.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us.i ]
  %offset.idx = or disjoint i64 %index, 1
  %47 = or disjoint i64 %index, 2
  %48 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31.i, i64 %47
  %wide.load = load <4 x i32>, ptr %48, align 8, !tbaa !5
  %49 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31.i, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %49, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %50 = icmp eq i64 %index.next, %n.vec
  br i1 %50, label %middle.block, label %vector.body, !llvm.loop !53

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i.preheader

for.body4.us.i.preheader:                         ; preds = %for.cond1.preheader.us.i, %middle.block
  %indvars.iv.i10.ph = phi i64 [ 1, %for.cond1.preheader.us.i ], [ %46, %middle.block ]
  br label %for.body4.us.i

for.body4.us.i:                                   ; preds = %for.body4.us.i.preheader, %for.body4.us.i
  %indvars.iv.i10 = phi i64 [ %indvars.iv.next.i11, %for.body4.us.i ], [ %indvars.iv.i10.ph, %for.body4.us.i.preheader ]
  %indvars.iv.next.i11 = add nuw nsw i64 %indvars.iv.i10, 1
  %arrayidx6.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31.i, i64 %indvars.iv.next.i11
  %51 = load i32, ptr %arrayidx6.us.i, align 4, !tbaa !5
  %arrayidx10.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31.i, i64 %indvars.iv.i10
  store i32 %51, ptr %arrayidx10.us.i, align 4, !tbaa !5
  %exitcond.not.i12 = icmp eq i64 %indvars.iv.next.i11, %indvars.iv.next32
  br i1 %exitcond.not.i12, label %for.cond1.for.cond.cleanup3_crit_edge.us.i, label %for.body4.us.i, !llvm.loop !54

for.cond1.for.cond.cleanup3_crit_edge.us.i:       ; preds = %for.body4.us.i, %middle.block
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %indvars.iv31
  br i1 %exitcond35.not.i, label %for.cond19.preheader.us.i, label %for.cond1.preheader.us.i, !llvm.loop !55

for.cond19.preheader.us.i:                        ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us.i, %for.cond19.for.cond.cleanup21_crit_edge.us.i
  %indvars.iv41.i = phi i64 [ %indvars.iv.next42.i, %for.cond19.for.cond.cleanup21_crit_edge.us.i ], [ 0, %for.cond1.for.cond.cleanup3_crit_edge.us.i ]
  br label %for.body22.us.i

for.body22.us.i:                                  ; preds = %for.body22.us.i, %for.cond19.preheader.us.i
  %indvars.iv36.i = phi i64 [ 1, %for.cond19.preheader.us.i ], [ %indvars.iv.next37.i, %for.body22.us.i ]
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1
  %arrayidx27.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next37.i, i64 %indvars.iv41.i
  %52 = load i32, ptr %arrayidx27.us.i, align 4, !tbaa !5
  %arrayidx31.us.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv36.i, i64 %indvars.iv41.i
  store i32 %52, ptr %arrayidx31.us.i, align 4, !tbaa !5
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %indvars.iv.next32
  br i1 %exitcond40.not.i, label %for.cond19.for.cond.cleanup21_crit_edge.us.i, label %for.body22.us.i, !llvm.loop !56

for.cond19.for.cond.cleanup21_crit_edge.us.i:     ; preds = %for.body22.us.i
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %indvars.iv.next32
  br i1 %exitcond45.not.i, label %_Z6reducePA100_ii.exit, label %for.cond19.preheader.us.i, !llvm.loop !57

_Z6reducePA100_ii.exit:                           ; preds = %for.cond19.for.cond.cleanup21_crit_edge.us.i
  %cmp16 = icmp sgt i64 %indvars.iv31, 2
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp16, label %for.body.lr.ph.i, label %for.cond.cleanup17, !llvm.loop !58
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z9make_zeroPA100_ii(ptr noundef captures(none) %a, i32 noundef %p) local_unnamed_addr #3 {
entry:
  %cmp.not27 = icmp slt i32 %p, 0
  br i1 %cmp.not27, label %for.cond.cleanup12, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = add nuw i32 %p, 1
  %wide.trip.count35.i = zext i32 %0 to i64
  %min.iters.check64 = icmp ult i32 %p, 3
  %n.vec67 = and i64 %wide.trip.count35.i, 4294967292
  %cmp.n75 = icmp eq i64 %n.vec67, %wide.trip.count35.i
  %min.iters.check = icmp ult i32 %p, 3
  %n.vec = and i64 %wide.trip.count35.i, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count35.i
  br label %for.body

for.body13.lr.ph:                                 ; preds = %for.cond1.for.cond.cleanup3_crit_edge
  %1 = add nuw nsw i32 %p, 1
  %wide.trip.count.i = zext nneg i32 %1 to i64
  %min.iters.check78 = icmp ult i32 %p, 3
  %n.vec81 = and i64 %wide.trip.count35.i, 4294967292
  %cmp.n89 = icmp eq i64 %n.vec81, %wide.trip.count35.i
  br label %for.body13

for.body:                                         ; preds = %for.body.lr.ph, %for.cond1.for.cond.cleanup3_crit_edge
  %indvars.iv48 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next49, %for.cond1.for.cond.cleanup3_crit_edge ]
  %arrayidx.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48
  %2 = load i32, ptr %arrayidx.i, align 4, !tbaa !5
  br i1 %min.iters.check64, label %for.body.i.preheader, label %vector.ph65

vector.ph65:                                      ; preds = %for.body
  %broadcast.splatinsert68 = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat69 = shufflevector <4 x i32> %broadcast.splatinsert68, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body70

vector.body70:                                    ; preds = %vector.body70, %vector.ph65
  %index71 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body70 ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat69, %vector.ph65 ], [ %4, %vector.body70 ]
  %3 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48, i64 %index71
  %wide.load72 = load <4 x i32>, ptr %3, align 4, !tbaa !5
  %4 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load72, <4 x i32> %vec.phi)
  %index.next73 = add nuw i64 %index71, 4
  %5 = icmp eq i64 %index.next73, %n.vec67
  br i1 %5, label %middle.block74, label %vector.body70, !llvm.loop !59

middle.block74:                                   ; preds = %vector.body70
  %6 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %4)
  br i1 %cmp.n75, label %_Z3minPA100_iiii.exit.loopexit, label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %for.body, %middle.block74
  %indvars.iv32.i.ph = phi i64 [ 0, %for.body ], [ %n.vec67, %middle.block74 ]
  %t.027.i.ph = phi i32 [ %2, %for.body ], [ %6, %middle.block74 ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.preheader, %for.body.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.body.i ], [ %indvars.iv32.i.ph, %for.body.i.preheader ]
  %t.027.i = phi i32 [ %spec.select.i, %for.body.i ], [ %t.027.i.ph, %for.body.i.preheader ]
  %arrayidx6.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48, i64 %indvars.iv32.i
  %7 = load i32, ptr %arrayidx6.i, align 4, !tbaa !5
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %7, i32 %t.027.i)
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %_Z3minPA100_iiii.exit.loopexit, label %for.body.i, !llvm.loop !60

_Z3minPA100_iiii.exit.loopexit:                   ; preds = %for.body.i, %middle.block74
  %spec.select.i.lcssa = phi i32 [ %6, %middle.block74 ], [ %spec.select.i, %for.body.i ]
  br i1 %min.iters.check, label %for.body4.preheader, label %vector.ph

vector.ph:                                        ; preds = %_Z3minPA100_iiii.exit.loopexit
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %spec.select.i.lcssa, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %8 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48, i64 %index
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %9, ptr %8, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %10 = icmp eq i64 %index.next, %n.vec
  br i1 %10, label %middle.block, label %vector.body, !llvm.loop !61

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.cond.cleanup3_crit_edge, label %for.body4.preheader

for.body4.preheader:                              ; preds = %_Z3minPA100_iiii.exit.loopexit, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_Z3minPA100_iiii.exit.loopexit ], [ %n.vec, %middle.block ]
  br label %for.body4

for.cond1.for.cond.cleanup3_crit_edge:            ; preds = %for.body4, %middle.block
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond52.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count35.i
  br i1 %exitcond52.not, label %for.body13.lr.ph, label %for.body, !llvm.loop !47

for.body4:                                        ; preds = %for.body4.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ %indvars.iv.ph, %for.body4.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv48, i64 %indvars.iv
  %11 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %spec.select.i.lcssa
  store i32 %sub, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count35.i
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge, label %for.body4, !llvm.loop !62

for.cond.cleanup12:                               ; preds = %for.cond16.for.cond.cleanup18_crit_edge, %entry
  ret void

for.body13:                                       ; preds = %for.body13.lr.ph, %for.cond16.for.cond.cleanup18_crit_edge
  %indvars.iv58 = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next59, %for.cond16.for.cond.cleanup18_crit_edge ]
  %arrayidx15.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv58
  %12 = load i32, ptr %arrayidx15.i, align 4, !tbaa !5
  br i1 %min.iters.check78, label %for.body20.i.preheader, label %vector.ph79

vector.ph79:                                      ; preds = %for.body13
  %broadcast.splatinsert82 = insertelement <4 x i32> poison, i32 %12, i64 0
  %broadcast.splat83 = shufflevector <4 x i32> %broadcast.splatinsert82, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body84

vector.body84:                                    ; preds = %vector.body84, %vector.ph79
  %index85 = phi i64 [ 0, %vector.ph79 ], [ %index.next87, %vector.body84 ]
  %vec.phi86 = phi <4 x i32> [ %broadcast.splat83, %vector.ph79 ], [ %28, %vector.body84 ]
  %13 = or disjoint i64 %index85, 1
  %14 = or disjoint i64 %index85, 2
  %15 = or disjoint i64 %index85, 3
  %16 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %index85, i64 %indvars.iv58
  %17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %13, i64 %indvars.iv58
  %18 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %14, i64 %indvars.iv58
  %19 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %15, i64 %indvars.iv58
  %20 = load i32, ptr %16, align 4, !tbaa !5
  %21 = load i32, ptr %17, align 4, !tbaa !5
  %22 = load i32, ptr %18, align 4, !tbaa !5
  %23 = load i32, ptr %19, align 4, !tbaa !5
  %24 = insertelement <4 x i32> poison, i32 %20, i64 0
  %25 = insertelement <4 x i32> %24, i32 %21, i64 1
  %26 = insertelement <4 x i32> %25, i32 %22, i64 2
  %27 = insertelement <4 x i32> %26, i32 %23, i64 3
  %28 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %27, <4 x i32> %vec.phi86)
  %index.next87 = add nuw i64 %index85, 4
  %29 = icmp eq i64 %index.next87, %n.vec81
  br i1 %29, label %middle.block88, label %vector.body84, !llvm.loop !63

middle.block88:                                   ; preds = %vector.body84
  %30 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %28)
  br i1 %cmp.n89, label %_Z3minPA100_iiii.exit24.loopexit, label %for.body20.i.preheader

for.body20.i.preheader:                           ; preds = %for.body13, %middle.block88
  %indvars.iv.i.ph = phi i64 [ 0, %for.body13 ], [ %n.vec81, %middle.block88 ]
  %t.324.i.ph = phi i32 [ %12, %for.body13 ], [ %30, %middle.block88 ]
  br label %for.body20.i

for.body20.i:                                     ; preds = %for.body20.i.preheader, %for.body20.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body20.i ], [ %indvars.iv.i.ph, %for.body20.i.preheader ]
  %t.324.i = phi i32 [ %spec.select21.i, %for.body20.i ], [ %t.324.i.ph, %for.body20.i.preheader ]
  %arrayidx24.i = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.i, i64 %indvars.iv58
  %31 = load i32, ptr %arrayidx24.i, align 4, !tbaa !5
  %spec.select21.i = tail call i32 @llvm.smin.i32(i32 %31, i32 %t.324.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z3minPA100_iiii.exit24.loopexit, label %for.body20.i, !llvm.loop !64

_Z3minPA100_iiii.exit24.loopexit:                 ; preds = %for.body20.i, %middle.block88
  %spec.select21.i.lcssa = phi i32 [ %30, %middle.block88 ], [ %spec.select21.i, %for.body20.i ]
  br label %for.body19

for.cond16.for.cond.cleanup18_crit_edge:          ; preds = %for.body19
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count.i
  br i1 %exitcond62.not, label %for.cond.cleanup12, label %for.body13, !llvm.loop !51

for.body19:                                       ; preds = %_Z3minPA100_iiii.exit24.loopexit, %for.body19
  %indvars.iv53 = phi i64 [ 0, %_Z3minPA100_iiii.exit24.loopexit ], [ %indvars.iv.next54, %for.body19 ]
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv53, i64 %indvars.iv58
  %32 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub24 = sub nsw i32 %32, %spec.select21.i.lcssa
  store i32 %sub24, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count.i
  br i1 %exitcond57.not, label %for.cond16.for.cond.cleanup18_crit_edge, label %for.body19, !llvm.loop !52
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z6reducePA100_ii(ptr noundef captures(none) %a, i32 noundef %p) local_unnamed_addr #3 {
entry:
  %cmp.not21 = icmp slt i32 %p, 0
  br i1 %cmp.not21, label %for.cond.cleanup16, label %for.cond1.preheader.lr.ph

for.cond1.preheader.lr.ph:                        ; preds = %entry
  %cmp219 = icmp samesign ugt i32 %p, 1
  br i1 %cmp219, label %for.cond1.preheader.us.preheader, label %for.cond14.preheader

for.cond1.preheader.us.preheader:                 ; preds = %for.cond1.preheader.lr.ph
  %0 = add nuw i32 %p, 1
  %wide.trip.count34 = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %p to i64
  %1 = add nsw i64 %wide.trip.count, -1
  %min.iters.check = icmp ult i32 %p, 5
  %n.vec = and i64 %1, -4
  %2 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %1, %n.vec
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.cond.cleanup3_crit_edge.us
  %indvars.iv31 = phi i64 [ 0, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next32, %for.cond1.for.cond.cleanup3_crit_edge.us ]
  br i1 %min.iters.check, label %for.body4.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us ]
  %offset.idx = or disjoint i64 %index, 1
  %3 = or disjoint i64 %index, 2
  %4 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31, i64 %3
  %wide.load = load <4 x i32>, ptr %4, align 4, !tbaa !5
  %5 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31, i64 %offset.idx
  store <4 x i32> %wide.load, ptr %5, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us.preheader

for.body4.us.preheader:                           ; preds = %for.cond1.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %for.cond1.preheader.us ], [ %2, %middle.block ]
  br label %for.body4.us

for.body4.us:                                     ; preds = %for.body4.us.preheader, %for.body4.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4.us ], [ %indvars.iv.ph, %for.body4.us.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx6.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31, i64 %indvars.iv.next
  %7 = load i32, ptr %arrayidx6.us, align 4, !tbaa !5
  %arrayidx10.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv31, i64 %indvars.iv
  store i32 %7, ptr %arrayidx10.us, align 4, !tbaa !5
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1.for.cond.cleanup3_crit_edge.us, label %for.body4.us, !llvm.loop !66

for.cond1.for.cond.cleanup3_crit_edge.us:         ; preds = %for.body4.us, %middle.block
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond35.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count34
  br i1 %exitcond35.not, label %for.cond14.preheader, label %for.cond1.preheader.us, !llvm.loop !55

for.cond14.preheader:                             ; preds = %for.cond1.for.cond.cleanup3_crit_edge.us, %for.cond1.preheader.lr.ph
  %or.cond = icmp ult i32 %p, 2
  br i1 %or.cond, label %for.cond.cleanup16, label %for.cond19.preheader.us.preheader

for.cond19.preheader.us.preheader:                ; preds = %for.cond14.preheader
  %wide.trip.count44 = zext nneg i32 %p to i64
  br label %for.cond19.preheader.us

for.cond19.preheader.us:                          ; preds = %for.cond19.preheader.us.preheader, %for.cond19.for.cond.cleanup21_crit_edge.us
  %indvars.iv41 = phi i64 [ 0, %for.cond19.preheader.us.preheader ], [ %indvars.iv.next42, %for.cond19.for.cond.cleanup21_crit_edge.us ]
  br label %for.body22.us

for.body22.us:                                    ; preds = %for.cond19.preheader.us, %for.body22.us
  %indvars.iv36 = phi i64 [ 1, %for.cond19.preheader.us ], [ %indvars.iv.next37, %for.body22.us ]
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  %arrayidx27.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv.next37, i64 %indvars.iv41
  %8 = load i32, ptr %arrayidx27.us, align 4, !tbaa !5
  %arrayidx31.us = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv36, i64 %indvars.iv41
  store i32 %8, ptr %arrayidx31.us, align 4, !tbaa !5
  %exitcond40.not = icmp eq i64 %indvars.iv.next37, %wide.trip.count44
  br i1 %exitcond40.not, label %for.cond19.for.cond.cleanup21_crit_edge.us, label %for.body22.us, !llvm.loop !56

for.cond19.for.cond.cleanup21_crit_edge.us:       ; preds = %for.body22.us
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count44
  br i1 %exitcond45.not, label %for.cond.cleanup16, label %for.cond19.preheader.us, !llvm.loop !57

for.cond.cleanup16:                               ; preds = %for.cond19.for.cond.cleanup21_crit_edge.us, %entry, %for.cond14.preheader
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z3minPA100_iiii(ptr noundef readonly captures(none) %a, i32 noundef %i, i32 noundef %p, i32 noundef %flag) local_unnamed_addr #4 {
entry:
  %cmp = icmp eq i32 %flag, 0
  %idxprom = sext i32 %i to i64
  %cmp2.not26 = icmp slt i32 %p, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  br i1 %cmp2.not26, label %if.end35, label %for.body.preheader

for.body.preheader:                               ; preds = %if.then
  %1 = add nuw i32 %p, 1
  %wide.trip.count35 = zext i32 %1 to i64
  %min.iters.check40 = icmp ult i32 %p, 3
  br i1 %min.iters.check40, label %for.body.preheader54, label %vector.ph41

vector.ph41:                                      ; preds = %for.body.preheader
  %n.vec43 = and i64 %wide.trip.count35, 4294967292
  %broadcast.splatinsert44 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat45 = shufflevector <4 x i32> %broadcast.splatinsert44, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph41
  %index47 = phi i64 [ 0, %vector.ph41 ], [ %index.next49, %vector.body46 ]
  %vec.phi48 = phi <4 x i32> [ %broadcast.splat45, %vector.ph41 ], [ %3, %vector.body46 ]
  %2 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom, i64 %index47
  %wide.load = load <4 x i32>, ptr %2, align 4, !tbaa !5
  %3 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi48)
  %index.next49 = add nuw i64 %index47, 4
  %4 = icmp eq i64 %index.next49, %n.vec43
  br i1 %4, label %middle.block50, label %vector.body46, !llvm.loop !67

middle.block50:                                   ; preds = %vector.body46
  %5 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %3)
  %cmp.n51 = icmp eq i64 %n.vec43, %wide.trip.count35
  br i1 %cmp.n51, label %if.end35, label %for.body.preheader54

for.body.preheader54:                             ; preds = %for.body.preheader, %middle.block50
  %indvars.iv32.ph = phi i64 [ 0, %for.body.preheader ], [ %n.vec43, %middle.block50 ]
  %t.027.ph = phi i32 [ %0, %for.body.preheader ], [ %5, %middle.block50 ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader54, %for.body
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body ], [ %indvars.iv32.ph, %for.body.preheader54 ]
  %t.027 = phi i32 [ %spec.select, %for.body ], [ %t.027.ph, %for.body.preheader54 ]
  %arrayidx6 = getelementptr inbounds [100 x i32], ptr %a, i64 %idxprom, i64 %indvars.iv32
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smin.i32(i32 %6, i32 %t.027)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %if.end35, label %for.body, !llvm.loop !68

if.else:                                          ; preds = %entry
  %arrayidx15 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %7 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  br i1 %cmp2.not26, label %if.end35, label %for.body20.preheader

for.body20.preheader:                             ; preds = %if.else
  %8 = add nuw i32 %p, 1
  %wide.trip.count = zext i32 %8 to i64
  %min.iters.check = icmp ult i32 %p, 3
  br i1 %min.iters.check, label %for.body20.preheader55, label %vector.ph

vector.ph:                                        ; preds = %for.body20.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %7, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %24, %vector.body ]
  %9 = or disjoint i64 %index, 1
  %10 = or disjoint i64 %index, 2
  %11 = or disjoint i64 %index, 3
  %12 = getelementptr inbounds [100 x i32], ptr %a, i64 %index, i64 %idxprom
  %13 = getelementptr inbounds [100 x i32], ptr %a, i64 %9, i64 %idxprom
  %14 = getelementptr inbounds [100 x i32], ptr %a, i64 %10, i64 %idxprom
  %15 = getelementptr inbounds [100 x i32], ptr %a, i64 %11, i64 %idxprom
  %16 = load i32, ptr %12, align 4, !tbaa !5
  %17 = load i32, ptr %13, align 4, !tbaa !5
  %18 = load i32, ptr %14, align 4, !tbaa !5
  %19 = load i32, ptr %15, align 4, !tbaa !5
  %20 = insertelement <4 x i32> poison, i32 %16, i64 0
  %21 = insertelement <4 x i32> %20, i32 %17, i64 1
  %22 = insertelement <4 x i32> %21, i32 %18, i64 2
  %23 = insertelement <4 x i32> %22, i32 %19, i64 3
  %24 = tail call <4 x i32> @llvm.smin.v4i32(<4 x i32> %23, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %25 = icmp eq i64 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !69

middle.block:                                     ; preds = %vector.body
  %26 = tail call i32 @llvm.vector.reduce.smin.v4i32(<4 x i32> %24)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %if.end35, label %for.body20.preheader55

for.body20.preheader55:                           ; preds = %for.body20.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body20.preheader ], [ %n.vec, %middle.block ]
  %t.324.ph = phi i32 [ %7, %for.body20.preheader ], [ %26, %middle.block ]
  br label %for.body20

for.body20:                                       ; preds = %for.body20.preheader55, %for.body20
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body20 ], [ %indvars.iv.ph, %for.body20.preheader55 ]
  %t.324 = phi i32 [ %spec.select21, %for.body20 ], [ %t.324.ph, %for.body20.preheader55 ]
  %arrayidx24 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv, i64 %idxprom
  %27 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %spec.select21 = tail call i32 @llvm.smin.i32(i32 %27, i32 %t.324)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end35, label %for.body20, !llvm.loop !70

if.end35:                                         ; preds = %for.body20, %for.body, %middle.block, %middle.block50, %if.else, %if.then
  %t.2 = phi i32 [ %0, %if.then ], [ %7, %if.else ], [ %5, %middle.block50 ], [ %26, %middle.block ], [ %spec.select, %for.body ], [ %spec.select21, %for.body20 ]
  ret i32 %t.2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smin.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smin.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11, !12}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.unswitch.partial.disable"}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !31, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!"p1 _ZTSSo", !23, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!34 = !{!35, !7, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!38 = !{!"p1 int", !23, i64 0}
!39 = !{!"p1 short", !23, i64 0}
!40 = !{!7, !7, i64 0}
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !10, !11, !43}
!46 = distinct !{!46, !10, !11, !43, !44}
!47 = distinct !{!47, !10, !11}
!48 = distinct !{!48, !10, !11, !43}
!49 = distinct !{!49, !10, !11, !43, !44}
!50 = distinct !{!50, !10, !11, !43}
!51 = distinct !{!51, !10, !11}
!52 = distinct !{!52, !10, !11}
!53 = distinct !{!53, !10, !11, !43, !44}
!54 = distinct !{!54, !10, !11, !43}
!55 = distinct !{!55, !10, !11}
!56 = distinct !{!56, !10, !11}
!57 = distinct !{!57, !10, !11}
!58 = distinct !{!58, !10, !11}
!59 = distinct !{!59, !10, !11, !43, !44}
!60 = distinct !{!60, !10, !11, !43}
!61 = distinct !{!61, !10, !11, !43, !44}
!62 = distinct !{!62, !10, !11, !43}
!63 = distinct !{!63, !10, !11, !43, !44}
!64 = distinct !{!64, !10, !11, !43}
!65 = distinct !{!65, !10, !11, !43, !44}
!66 = distinct !{!66, !10, !11, !43}
!67 = distinct !{!67, !10, !11, !43, !44}
!68 = distinct !{!68, !10, !11, !43}
!69 = distinct !{!69, !10, !11, !43, !44}
!70 = distinct !{!70, !10, !11, !43}
