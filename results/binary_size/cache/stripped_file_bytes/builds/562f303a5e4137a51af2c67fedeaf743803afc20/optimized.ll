; ModuleID = '<stdin>'
source_filename = "/tmp/tmps6o55l58.cpp"
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
@g_n = dso_local global i32 0, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @g_n)
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %cmp.not34 = icmp slt i32 %0, 1
  br i1 %cmp.not34, label %for.end32, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %23, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %i.035 = phi i32 [ %inc31, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 1, %entry ]
  %cmp2.not.not22 = icmp sgt i32 %1, 0
  br i1 %cmp2.not.not22, label %for.cond4.preheader, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.inc11, %for.cond1.preheader
  %.lcssa19 = phi i32 [ %1, %for.cond1.preheader ], [ %18, %for.inc11 ]
  %sub15 = add nsw i32 %.lcssa19, -1
  %idxprom16 = sext i32 %sub15 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %idxprom16
  %2 = load i32, ptr %arrayidx17, align 16, !tbaa !5
  %cmp1925 = icmp sgt i32 %2, -1
  br i1 %cmp1925, label %for.body20.lr.ph, label %for.end27

for.body20.lr.ph:                                 ; preds = %for.cond14.preheader
  %cmp.not.not77.i = icmp sgt i32 %.lcssa19, 0
  %wide.trip.count163.i = zext nneg i32 %.lcssa19 to i64
  %3 = shl nuw nsw i64 %wide.trip.count163.i, 2
  tail call void @llvm.assume(i1 %cmp.not.not77.i)
  %min.iters.check = icmp samesign ult i32 %.lcssa19, 4
  %n.vec = and i64 %wide.trip.count163.i, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count163.i
  br label %for.body20.us

for.body20.us:                                    ; preds = %for.body20.lr.ph, %for.body6.lr.ph.i.us
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.body6.lr.ph.i.us ], [ 1, %for.body20.lr.ph ]
  %sum.027.us = phi i32 [ %add.us, %for.body6.lr.ph.i.us ], [ 0, %for.body20.lr.ph ]
  br label %for.body.us.us.i.us

for.body.us.us.i.us:                              ; preds = %for.inc115.us.us.i.us, %for.body20.us
  %indvars.iv160.i.us = phi i64 [ 0, %for.body20.us ], [ %indvars.iv.next161.i.us, %for.inc115.us.us.i.us ]
  %arrayidx.us.us.i.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv160.i.us
  %4 = load i32, ptr %arrayidx.us.us.i.us, align 16, !tbaa !5
  %cmp2.us.us.i.us = icmp sgt i32 %4, -1
  br i1 %cmp2.us.us.i.us, label %for.cond7.preheader.us.us.us.i.us, label %for.inc115.us.us.i.us

for.cond7.preheader.us.us.us.i.us:                ; preds = %for.body.us.us.i.us, %for.inc53.us.us.us.i.us
  %indvars.iv140.i.us = phi i64 [ %indvars.iv.next141.i.us, %for.inc53.us.us.us.i.us ], [ 0, %for.body.us.us.i.us ]
  br label %for.body10.us.us.us.i.us

for.body10.us.us.us.i.us:                         ; preds = %for.inc.us.us.us.i.us, %for.cond7.preheader.us.us.us.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %for.inc.us.us.us.i.us ], [ 0, %for.cond7.preheader.us.us.us.i.us ]
  %min.048.us.us.us.i.us = phi i32 [ %min.1.us.us.us.i.us, %for.inc.us.us.us.i.us ], [ 1000, %for.cond7.preheader.us.us.us.i.us ]
  %arrayidx14.us.us.us.i.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv140.i.us, i64 %indvars.iv.i.us
  %5 = load i32, ptr %arrayidx14.us.us.us.i.us, align 4, !tbaa !5
  %cmp15.us.us.us.i.us = icmp slt i32 %5, 0
  br i1 %cmp15.us.us.us.i.us, label %for.inc.us.us.us.i.us, label %if.end.us.us.us.i.us

if.end.us.us.us.i.us:                             ; preds = %for.body10.us.us.us.i.us
  %cmp21.us.us.us.i.us = icmp eq i32 %5, 0
  br i1 %cmp21.us.us.us.i.us, label %for.inc53.us.us.us.i.us, label %if.end23.us.us.us.i.us

if.end23.us.us.us.i.us:                           ; preds = %if.end.us.us.us.i.us
  %spec.select.us.us.us.i.us = tail call i32 @llvm.smin.i32(i32 %5, i32 %min.048.us.us.us.i.us)
  br label %for.inc.us.us.us.i.us

for.inc.us.us.us.i.us:                            ; preds = %if.end23.us.us.us.i.us, %for.body10.us.us.us.i.us
  %min.1.us.us.us.i.us = phi i32 [ %min.048.us.us.us.i.us, %for.body10.us.us.us.i.us ], [ %spec.select.us.us.us.i.us, %if.end23.us.us.us.i.us ]
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count163.i
  br i1 %exitcond.not.i.us, label %for.body39.us.us.us.i.preheader.us, label %for.body10.us.us.us.i.us, !llvm.loop !9

for.body39.us.us.us.i.us:                         ; preds = %for.body39.us.us.us.i.us.preheader, %for.body39.us.us.us.i.us
  %indvars.iv135.i.us = phi i64 [ %indvars.iv.next136.i.us, %for.body39.us.us.us.i.us ], [ %indvars.iv135.i.us.ph, %for.body39.us.us.us.i.us.preheader ]
  %arrayidx43.us.us.us.i.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv140.i.us, i64 %indvars.iv135.i.us
  %6 = load i32, ptr %arrayidx43.us.us.us.i.us, align 4, !tbaa !5
  %sub44.us.us.us.i.us = sub nsw i32 %6, %min.1.us.us.us.i.us
  store i32 %sub44.us.us.us.i.us, ptr %arrayidx43.us.us.us.i.us, align 4, !tbaa !5
  %indvars.iv.next136.i.us = add nuw nsw i64 %indvars.iv135.i.us, 1
  %exitcond139.not.i.us = icmp eq i64 %indvars.iv.next136.i.us, %wide.trip.count163.i
  br i1 %exitcond139.not.i.us, label %for.inc53.us.us.us.i.us, label %for.body39.us.us.us.i.us, !llvm.loop !12

for.inc53.us.us.us.i.us:                          ; preds = %if.end.us.us.us.i.us, %for.body39.us.us.us.i.us, %middle.block
  %indvars.iv.next141.i.us = add nuw nsw i64 %indvars.iv140.i.us, 1
  %exitcond144.not.i.us = icmp eq i64 %indvars.iv.next141.i.us, %wide.trip.count163.i
  br i1 %exitcond144.not.i.us, label %for.cond60.preheader.us.us.i.us, label %for.cond7.preheader.us.us.us.i.us, !llvm.loop !14

for.cond60.preheader.us.us.i.us:                  ; preds = %for.inc53.us.us.us.i.us, %for.inc111.us.us.i.us
  %indvars.iv155.i.us = phi i64 [ %indvars.iv.next156.i.us, %for.inc111.us.us.i.us ], [ 0, %for.inc53.us.us.us.i.us ]
  br label %for.body63.us.us.i.us

for.body63.us.us.i.us:                            ; preds = %for.inc89.us.us.i.us, %for.cond60.preheader.us.us.i.us
  %indvars.iv145.i.us = phi i64 [ 0, %for.cond60.preheader.us.us.i.us ], [ %indvars.iv.next146.i.us, %for.inc89.us.us.i.us ]
  %min.271.us.us.i.us = phi i32 [ 1000, %for.cond60.preheader.us.us.i.us ], [ %min.3.us.us.i.us, %for.inc89.us.us.i.us ]
  %arrayidx67.us.us.i.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv145.i.us, i64 %indvars.iv155.i.us
  %7 = load i32, ptr %arrayidx67.us.us.i.us, align 4, !tbaa !5
  %cmp68.us.us.i.us = icmp slt i32 %7, 0
  br i1 %cmp68.us.us.i.us, label %for.inc89.us.us.i.us, label %if.end70.us.us.i.us

if.end70.us.us.i.us:                              ; preds = %for.body63.us.us.i.us
  %cmp75.us.us.i.us = icmp eq i32 %7, 0
  br i1 %cmp75.us.us.i.us, label %for.inc111.us.us.i.us, label %if.end77.us.us.i.us

if.end77.us.us.i.us:                              ; preds = %if.end70.us.us.i.us
  %spec.select41.us.us.i.us = tail call i32 @llvm.smin.i32(i32 %7, i32 %min.271.us.us.i.us)
  br label %for.inc89.us.us.i.us

for.inc89.us.us.i.us:                             ; preds = %if.end77.us.us.i.us, %for.body63.us.us.i.us
  %min.3.us.us.i.us = phi i32 [ %min.271.us.us.i.us, %for.body63.us.us.i.us ], [ %spec.select41.us.us.i.us, %if.end77.us.us.i.us ]
  %indvars.iv.next146.i.us = add nuw nsw i64 %indvars.iv145.i.us, 1
  %exitcond149.not.i.us = icmp eq i64 %indvars.iv.next146.i.us, %wide.trip.count163.i
  br i1 %exitcond149.not.i.us, label %for.body97.us.us.i.us, label %for.body63.us.us.i.us, !llvm.loop !15

for.body97.us.us.i.us:                            ; preds = %for.inc89.us.us.i.us, %for.body97.us.us.i.us
  %indvars.iv150.i.us = phi i64 [ %indvars.iv.next151.i.us, %for.body97.us.us.i.us ], [ 0, %for.inc89.us.us.i.us ]
  %arrayidx101.us.us.i.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv150.i.us, i64 %indvars.iv155.i.us
  %8 = load i32, ptr %arrayidx101.us.us.i.us, align 4, !tbaa !5
  %sub102.us.us.i.us = sub nsw i32 %8, %min.3.us.us.i.us
  store i32 %sub102.us.us.i.us, ptr %arrayidx101.us.us.i.us, align 4, !tbaa !5
  %indvars.iv.next151.i.us = add nuw nsw i64 %indvars.iv150.i.us, 1
  %exitcond154.not.i.us = icmp eq i64 %indvars.iv.next151.i.us, %wide.trip.count163.i
  br i1 %exitcond154.not.i.us, label %for.inc111.us.us.i.us, label %for.body97.us.us.i.us, !llvm.loop !16

for.inc111.us.us.i.us:                            ; preds = %if.end70.us.us.i.us, %for.body97.us.us.i.us
  %indvars.iv.next156.i.us = add nuw nsw i64 %indvars.iv155.i.us, 1
  %exitcond159.not.i.us = icmp eq i64 %indvars.iv.next156.i.us, %wide.trip.count163.i
  br i1 %exitcond159.not.i.us, label %for.inc115.us.us.i.us, label %for.cond60.preheader.us.us.i.us, !llvm.loop !17

for.inc115.us.us.i.us:                            ; preds = %for.inc111.us.us.i.us, %for.body.us.us.i.us
  %indvars.iv.next161.i.us = add nuw nsw i64 %indvars.iv160.i.us, 1
  %exitcond164.not.i.us = icmp eq i64 %indvars.iv.next161.i.us, %wide.trip.count163.i
  br i1 %exitcond164.not.i.us, label %_Z7guilingv.exit.us, label %for.body.us.us.i.us, !llvm.loop !18

_Z7guilingv.exit.us:                              ; preds = %for.inc115.us.us.i.us
  %arrayidx24.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv44, i64 %indvars.iv44
  %9 = load i32, ptr %arrayidx24.us, align 4, !tbaa !5
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.body.i.us, %_Z7guilingv.exit.us
  %indvars.iv.i10.us = phi i64 [ 0, %_Z7guilingv.exit.us ], [ %indvars.iv.next.i11.us, %for.body.i.us ]
  %arrayidx2.i.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv.i10.us, i64 %indvars.iv44
  store i32 -1, ptr %arrayidx2.i.us, align 4, !tbaa !5
  %indvars.iv.next.i11.us = add nuw nsw i64 %indvars.iv.i10.us, 1
  %exitcond.not.i12.us = icmp eq i64 %indvars.iv.next.i11.us, %wide.trip.count163.i
  br i1 %exitcond.not.i12.us, label %for.body6.lr.ph.i.us, label %for.body.i.us, !llvm.loop !19

for.body6.lr.ph.i.us:                             ; preds = %for.body.i.us
  %add.us = add nsw i32 %9, %sum.027.us
  %10 = mul nuw nsw i64 %indvars.iv44, 400
  %scevgep.i.us = getelementptr i8, ptr @a, i64 %10
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i.us, i8 -1, i64 %3, i1 false), !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %11 = load i32, ptr %arrayidx17, align 16, !tbaa !5
  %cmp19.us = icmp sgt i32 %11, -1
  br i1 %cmp19.us, label %for.body20.us, label %for.end27, !llvm.loop !20

for.body39.us.us.us.i.preheader.us:               ; preds = %for.inc.us.us.us.i.us
  br i1 %min.iters.check, label %for.body39.us.us.us.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body39.us.us.us.i.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %min.1.us.us.us.i.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %12 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv140.i.us, i64 %index
  %wide.load = load <4 x i32>, ptr %12, align 16, !tbaa !5
  %13 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %13, ptr %12, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %14 = icmp eq i64 %index.next, %n.vec
  br i1 %14, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc53.us.us.us.i.us, label %for.body39.us.us.us.i.us.preheader

for.body39.us.us.us.i.us.preheader:               ; preds = %for.body39.us.us.us.i.preheader.us, %middle.block
  %indvars.iv135.i.us.ph = phi i64 [ 0, %for.body39.us.us.us.i.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body39.us.us.us.i.us

for.cond4.preheader:                              ; preds = %for.cond1.preheader, %for.inc11
  %15 = phi i32 [ %18, %for.inc11 ], [ %1, %for.cond1.preheader ]
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc11 ], [ 0, %for.cond1.preheader ]
  %cmp6.not.not20 = icmp sgt i32 %15, 0
  br i1 %cmp6.not.not20, label %for.body7, label %for.cond4.preheader.for.inc11_crit_edge

for.cond4.preheader.for.inc11_crit_edge:          ; preds = %for.cond4.preheader
  %.pre = sext i32 %15 to i64
  br label %for.inc11

for.body7:                                        ; preds = %for.cond4.preheader, %for.body7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 0, %for.cond4.preheader ]
  %arrayidx9 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv41, i64 %indvars.iv
  %call10 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx9)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %16 = load i32, ptr @g_n, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv.next, %17
  br i1 %cmp6.not.not, label %for.body7, label %for.inc11, !llvm.loop !23

for.inc11:                                        ; preds = %for.body7, %for.cond4.preheader.for.inc11_crit_edge
  %.pre-phi = phi i64 [ %.pre, %for.cond4.preheader.for.inc11_crit_edge ], [ %17, %for.body7 ]
  %18 = phi i32 [ %15, %for.cond4.preheader.for.inc11_crit_edge ], [ %16, %for.body7 ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %cmp2.not.not = icmp slt i64 %indvars.iv.next42, %.pre-phi
  br i1 %cmp2.not.not, label %for.cond4.preheader, label %for.cond14.preheader, !llvm.loop !24

for.end27:                                        ; preds = %for.body6.lr.ph.i.us, %for.cond14.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond14.preheader ], [ %add.us, %for.body6.lr.ph.i.us ]
  %call28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call28, align 8, !tbaa !26
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call28, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %19 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !28
  %tobool.not.i.i.i = icmp eq ptr %19, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end27
  tail call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end27
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 56
  %20 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !46
  %tobool.not.i1.i.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %19, i64 67
  %21 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !52
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %19)
  %vtable.i.i.i = load ptr, ptr %19, align 8, !tbaa !26
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %22 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %22(ptr noundef nonnull align 8 dereferenceable(570) %19, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %21, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call28, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc31 = add nuw nsw i32 %i.035, 1
  %23 = load i32, ptr @g_n, align 4, !tbaa !5
  %cmp.not.not = icmp slt i32 %i.035, %23
  br i1 %cmp.not.not, label %for.cond1.preheader, label %for.end32, !llvm.loop !53

for.end32:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z7guilingv() local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %cmp.not.not77 = icmp sgt i32 %0, 0
  br i1 %cmp.not.not77, label %for.body.us.us.preheader, label %for.end117

for.body.us.us.preheader:                         ; preds = %entry
  %wide.trip.count163 = zext nneg i32 %0 to i64
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count163, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count163
  br label %for.body.us.us

for.body.us.us:                                   ; preds = %for.body.us.us.preheader, %for.inc115.us.us
  %indvars.iv160 = phi i64 [ 0, %for.body.us.us.preheader ], [ %indvars.iv.next161, %for.inc115.us.us ]
  %arrayidx.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv160
  %1 = load i32, ptr %arrayidx.us.us, align 16, !tbaa !5
  %cmp2.us.us = icmp sgt i32 %1, -1
  br i1 %cmp2.us.us, label %for.cond7.preheader.us.us.us, label %for.inc115.us.us

for.inc115.us.us:                                 ; preds = %for.inc111.us.us, %for.body.us.us
  %indvars.iv.next161 = add nuw nsw i64 %indvars.iv160, 1
  %exitcond164.not = icmp eq i64 %indvars.iv.next161, %wide.trip.count163
  br i1 %exitcond164.not, label %for.end117, label %for.body.us.us, !llvm.loop !18

for.body97.us.us:                                 ; preds = %for.inc89.us.us, %for.body97.us.us
  %indvars.iv150 = phi i64 [ %indvars.iv.next151, %for.body97.us.us ], [ 0, %for.inc89.us.us ]
  %arrayidx101.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv150, i64 %indvars.iv155
  %2 = load i32, ptr %arrayidx101.us.us, align 4, !tbaa !5
  %sub102.us.us = sub nsw i32 %2, %min.3.us.us
  store i32 %sub102.us.us, ptr %arrayidx101.us.us, align 4, !tbaa !5
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond154.not = icmp eq i64 %indvars.iv.next151, %wide.trip.count163
  br i1 %exitcond154.not, label %for.inc111.us.us, label %for.body97.us.us, !llvm.loop !16

for.body63.us.us:                                 ; preds = %for.cond60.preheader.us.us, %for.inc89.us.us
  %indvars.iv145 = phi i64 [ 0, %for.cond60.preheader.us.us ], [ %indvars.iv.next146, %for.inc89.us.us ]
  %min.271.us.us = phi i32 [ 1000, %for.cond60.preheader.us.us ], [ %min.3.us.us, %for.inc89.us.us ]
  %arrayidx67.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv145, i64 %indvars.iv155
  %3 = load i32, ptr %arrayidx67.us.us, align 4, !tbaa !5
  %cmp68.us.us = icmp slt i32 %3, 0
  br i1 %cmp68.us.us, label %for.inc89.us.us, label %if.end70.us.us

if.end70.us.us:                                   ; preds = %for.body63.us.us
  %cmp75.us.us = icmp eq i32 %3, 0
  br i1 %cmp75.us.us, label %for.inc111.us.us, label %if.end77.us.us

if.end77.us.us:                                   ; preds = %if.end70.us.us
  %spec.select41.us.us = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.271.us.us)
  br label %for.inc89.us.us

for.inc111.us.us:                                 ; preds = %if.end70.us.us, %for.body97.us.us
  %indvars.iv.next156 = add nuw nsw i64 %indvars.iv155, 1
  %exitcond159.not = icmp eq i64 %indvars.iv.next156, %wide.trip.count163
  br i1 %exitcond159.not, label %for.inc115.us.us, label %for.cond60.preheader.us.us, !llvm.loop !17

for.inc89.us.us:                                  ; preds = %if.end77.us.us, %for.body63.us.us
  %min.3.us.us = phi i32 [ %min.271.us.us, %for.body63.us.us ], [ %spec.select41.us.us, %if.end77.us.us ]
  %indvars.iv.next146 = add nuw nsw i64 %indvars.iv145, 1
  %exitcond149.not = icmp eq i64 %indvars.iv.next146, %wide.trip.count163
  br i1 %exitcond149.not, label %for.body97.us.us, label %for.body63.us.us, !llvm.loop !15

for.cond60.preheader.us.us:                       ; preds = %for.inc53.us.us.us, %for.inc111.us.us
  %indvars.iv155 = phi i64 [ %indvars.iv.next156, %for.inc111.us.us ], [ 0, %for.inc53.us.us.us ]
  br label %for.body63.us.us

for.cond7.preheader.us.us.us:                     ; preds = %for.body.us.us, %for.inc53.us.us.us
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %for.inc53.us.us.us ], [ 0, %for.body.us.us ]
  br label %for.body10.us.us.us

for.body39.us.us.us:                              ; preds = %for.body39.us.us.us.preheader, %for.body39.us.us.us
  %indvars.iv135 = phi i64 [ %indvars.iv.next136, %for.body39.us.us.us ], [ %indvars.iv135.ph, %for.body39.us.us.us.preheader ]
  %arrayidx43.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv140, i64 %indvars.iv135
  %4 = load i32, ptr %arrayidx43.us.us.us, align 4, !tbaa !5
  %sub44.us.us.us = sub nsw i32 %4, %min.1.us.us.us
  store i32 %sub44.us.us.us, ptr %arrayidx43.us.us.us, align 4, !tbaa !5
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count163
  br i1 %exitcond139.not, label %for.inc53.us.us.us, label %for.body39.us.us.us, !llvm.loop !54

for.body10.us.us.us:                              ; preds = %for.inc.us.us.us, %for.cond7.preheader.us.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc.us.us.us ], [ 0, %for.cond7.preheader.us.us.us ]
  %min.048.us.us.us = phi i32 [ %min.1.us.us.us, %for.inc.us.us.us ], [ 1000, %for.cond7.preheader.us.us.us ]
  %arrayidx14.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv140, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx14.us.us.us, align 4, !tbaa !5
  %cmp15.us.us.us = icmp slt i32 %5, 0
  br i1 %cmp15.us.us.us, label %for.inc.us.us.us, label %if.end.us.us.us

if.end.us.us.us:                                  ; preds = %for.body10.us.us.us
  %cmp21.us.us.us = icmp eq i32 %5, 0
  br i1 %cmp21.us.us.us, label %for.inc53.us.us.us, label %if.end23.us.us.us

if.end23.us.us.us:                                ; preds = %if.end.us.us.us
  %spec.select.us.us.us = tail call i32 @llvm.smin.i32(i32 %5, i32 %min.048.us.us.us)
  br label %for.inc.us.us.us

for.inc53.us.us.us:                               ; preds = %if.end.us.us.us, %for.body39.us.us.us, %middle.block
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count163
  br i1 %exitcond144.not, label %for.cond60.preheader.us.us, label %for.cond7.preheader.us.us.us, !llvm.loop !14

for.inc.us.us.us:                                 ; preds = %if.end23.us.us.us, %for.body10.us.us.us
  %min.1.us.us.us = phi i32 [ %min.048.us.us.us, %for.body10.us.us.us ], [ %spec.select.us.us.us, %if.end23.us.us.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count163
  br i1 %exitcond.not, label %for.cond7.for.cond36.preheader_crit_edge.us.us.us, label %for.body10.us.us.us, !llvm.loop !9

for.cond7.for.cond36.preheader_crit_edge.us.us.us: ; preds = %for.inc.us.us.us
  br i1 %min.iters.check, label %for.body39.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond7.for.cond36.preheader_crit_edge.us.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %min.1.us.us.us, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv140, i64 %index
  %wide.load = load <4 x i32>, ptr %6, align 16, !tbaa !5
  %7 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %7, ptr %6, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %8 = icmp eq i64 %index.next, %n.vec
  br i1 %8, label %middle.block, label %vector.body, !llvm.loop !55

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.inc53.us.us.us, label %for.body39.us.us.us.preheader

for.body39.us.us.us.preheader:                    ; preds = %for.cond7.for.cond36.preheader_crit_edge.us.us.us, %middle.block
  %indvars.iv135.ph = phi i64 [ 0, %for.cond7.for.cond36.preheader_crit_edge.us.us.us ], [ %n.vec, %middle.block ]
  br label %for.body39.us.us.us

for.end117:                                       ; preds = %for.inc115.us.us, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z8xiaojiani(i32 noundef %cishu) local_unnamed_addr #2 {
entry:
  %0 = load i32, ptr @g_n, align 4, !tbaa !5
  %cmp.not.not6 = icmp sgt i32 %0, 0
  br i1 %cmp.not.not6, label %for.body.lr.ph, label %for.end13

for.body.lr.ph:                                   ; preds = %entry
  %idxprom1 = sext i32 %cishu to i64
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %for.body

for.body6.lr.ph:                                  ; preds = %for.body
  %idxprom7 = sext i32 %cishu to i64
  %1 = mul nsw i64 %idxprom7, 400
  %scevgep = getelementptr i8, ptr @a, i64 %1
  %2 = zext nneg i32 %0 to i64
  %3 = shl nuw nsw i64 %2, 2
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep, i8 -1, i64 %3, i1 false), !tbaa !5
  br label %for.end13

for.body:                                         ; preds = %for.body.lr.ph, %for.body
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx2 = getelementptr inbounds [100 x [100 x i32]], ptr @a, i64 0, i64 %indvars.iv, i64 %idxprom1
  store i32 -1, ptr %arrayidx2, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body6.lr.ph, label %for.body, !llvm.loop !19

for.end13:                                        ; preds = %entry, %for.body6.lr.ph
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !13, !22}
!22 = !{!"llvm.loop.unroll.runtime.disable"}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11, !25}
!25 = !{!"llvm.loop.unswitch.partial.disable"}
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
!54 = distinct !{!54, !10, !11, !13}
!55 = distinct !{!55, !10, !11, !13, !22}
