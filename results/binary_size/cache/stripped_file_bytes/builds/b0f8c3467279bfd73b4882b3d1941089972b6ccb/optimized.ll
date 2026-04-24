; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqgqmp_si.cpp"
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
@str = dso_local global [501 x i8] zeroinitializer, align 16
@sumstr = dso_local local_unnamed_addr global [499 x i32] zeroinitializer, align 16
@flagstr = dso_local local_unnamed_addr global [499 x i32] zeroinitializer, align 16
@len = dso_local local_unnamed_addr global i32 0, align 4
@maximum = dso_local local_unnamed_addr global i32 -2147483648, align 4
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %call1 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i1.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67
  %2 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !34
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %0)
  %vtable.i.i.i = load ptr, ptr %0, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %3 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %3(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %2, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull @str, i64 noundef 501, i8 noundef signext %retval.0.i.i.i)
  %call3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @str) #9
  %conv = trunc i64 %call3 to i32
  store i32 %conv, ptr @len, align 4, !tbaa !35
  %4 = load i32, ptr @n, align 4, !tbaa !35
  %.fr.i = freeze i32 %4
  %sub.i = sub nsw i32 %conv, %.fr.i
  %maximum.promoted.i = load i32, ptr @maximum, align 4
  %cmp29.i = icmp eq i32 %sub.i, -1
  br i1 %cmp29.i, label %_Z3expi.exit, label %if.end.lr.ph.i

if.end.lr.ph.i:                                   ; preds = %_ZNSi7getlineEPcl.exit
  %cmp5.not.not14.i = icmp sgt i32 %.fr.i, 0
  br i1 %cmp5.not.not14.i, label %if.end.us.preheader.i, label %if.end.lr.ph.split.i

if.end.us.preheader.i:                            ; preds = %if.end.lr.ph.i
  %5 = sext i32 %sub.i to i64
  %wide.trip.count.i = zext nneg i32 %.fr.i to i64
  %sext = shl i64 %call3, 32
  %6 = ashr exact i64 %sext, 32
  %7 = add nsw i64 %6, 1
  %8 = zext nneg i32 %.fr.i to i64
  %9 = sub nsw i64 %7, %8
  br label %if.end.us.i

if.end.us.i:                                      ; preds = %for.cond.cleanup.us.i, %if.end.us.preheader.i
  %indvars.iv61.i = phi i64 [ 0, %if.end.us.preheader.i ], [ %indvars.iv.next62.i, %for.cond.cleanup.us.i ]
  %.2830.us.i = phi i32 [ %maximum.promoted.i, %if.end.us.preheader.i ], [ %..us.i, %for.cond.cleanup.us.i ]
  %add.ptr.us.i = getelementptr inbounds nuw i32, ptr @sumstr, i64 %indvars.iv61.i
  %cmp2.not18.us.i = icmp sgt i64 %indvars.iv61.i, %5
  br i1 %cmp2.not18.us.i, label %for.cond.cleanup.us.i, label %for.cond3.preheader.lr.ph.us.i

for.cond.cleanup.us.i:                            ; preds = %for.inc25.us.us.i, %if.end.us.i
  %10 = load i32, ptr %add.ptr.us.i, align 4, !tbaa !35
  %..us.i = tail call i32 @llvm.smax.i32(i32 %10, i32 %.2830.us.i)
  %indvars.iv.next62.i = add nuw nsw i64 %indvars.iv61.i, 1
  %11 = icmp eq i64 %indvars.iv61.i, %5
  br i1 %11, label %tailrecurse.return_crit_edge.i, label %if.end.us.i

for.cond3.preheader.lr.ph.us.i:                   ; preds = %if.end.us.i
  %add.ptr13.us.i = getelementptr inbounds nuw i8, ptr @str, i64 %indvars.iv61.i
  br label %for.cond3.preheader.us.us.i

for.cond3.preheader.us.us.i:                      ; preds = %for.inc25.us.us.i, %for.cond3.preheader.lr.ph.us.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %for.inc25.us.us.i ], [ %indvars.iv61.i, %for.cond3.preheader.lr.ph.us.i ]
  %add.ptr9.us.us.i = getelementptr inbounds nuw i8, ptr @str, i64 %indvars.iv63.i
  br label %for.body7.us.us.i

for.body7.us.us.i:                                ; preds = %if.then18.us.us.i, %for.cond3.preheader.us.us.i
  %indvars.iv56.i = phi i64 [ %indvars.iv.next57.i, %if.then18.us.us.i ], [ 0, %for.cond3.preheader.us.us.i ]
  %add.ptr11.us.us.i = getelementptr inbounds nuw i8, ptr %add.ptr9.us.us.i, i64 %indvars.iv56.i
  %12 = load i8, ptr %add.ptr11.us.us.i, align 1, !tbaa !34
  %add.ptr15.us.us.i = getelementptr inbounds nuw i8, ptr %add.ptr13.us.i, i64 %indvars.iv56.i
  %13 = load i8, ptr %add.ptr15.us.us.i, align 1, !tbaa !34
  %cmp17.us.us.i = icmp eq i8 %12, %13
  br i1 %cmp17.us.us.i, label %if.then18.us.us.i, label %cleanup.us.us.i

cleanup.us.us.i:                                  ; preds = %for.body7.us.us.i
  %indvars60.le.i = trunc i64 %indvars.iv56.i to i32
  %cmp21.us.us.i = icmp eq i32 %.fr.i, %indvars60.le.i
  br i1 %cmp21.us.us.i, label %if.then22.us.us.i, label %for.inc25.us.us.i

if.then22.us.us.i:                                ; preds = %if.then18.us.us.i, %cleanup.us.us.i
  %14 = load i32, ptr %add.ptr.us.i, align 4, !tbaa !35
  %inc23.us.us.i = add nsw i32 %14, 1
  store i32 %inc23.us.us.i, ptr %add.ptr.us.i, align 4, !tbaa !35
  br label %for.inc25.us.us.i

for.inc25.us.us.i:                                ; preds = %if.then22.us.us.i, %cleanup.us.us.i
  %indvars.iv.next64.i = add nuw i64 %indvars.iv63.i, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next64.i, %9
  br i1 %exitcond.not, label %for.cond.cleanup.us.i, label %for.cond3.preheader.us.us.i, !llvm.loop !36

if.then18.us.us.i:                                ; preds = %for.body7.us.us.i
  %indvars.iv.next57.i = add nuw nsw i64 %indvars.iv56.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %if.then22.us.us.i, label %for.body7.us.us.i, !llvm.loop !39

if.end.lr.ph.split.i:                             ; preds = %if.end.lr.ph.i
  %cmp21.i = icmp eq i32 %.fr.i, 0
  br i1 %cmp21.i, label %if.end.us34.preheader.i, label %if.end.preheader.i

if.end.preheader.i:                               ; preds = %if.end.lr.ph.split.i
  %15 = sext i32 %sub.i to i64
  %sext78 = shl i64 %call3, 32
  %16 = ashr exact i64 %sext78, 32
  %17 = add nsw i64 %16, 1
  %18 = sext i32 %.fr.i to i64
  %19 = sub nsw i64 %17, %18
  %min.iters.check = icmp ult i64 %19, 8
  br i1 %min.iters.check, label %if.end.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %if.end.preheader.i
  %n.vec = and i64 %19, -8
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %maximum.promoted.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %22, %vector.body ]
  %vec.phi34 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %23, %vector.body ]
  %20 = getelementptr inbounds nuw i32, ptr @sumstr, i64 %index
  %21 = getelementptr inbounds nuw i8, ptr %20, i64 16
  %wide.load = load <4 x i32>, ptr %20, align 16, !tbaa !35
  %wide.load35 = load <4 x i32>, ptr %21, align 16, !tbaa !35
  %22 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %23 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load35, <4 x i32> %vec.phi34)
  %index.next = add nuw i64 %index, 8
  %24 = icmp eq i64 %index.next, %n.vec
  br i1 %24, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %22, <4 x i32> %23)
  %25 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %cmp.n = icmp eq i64 %19, %n.vec
  br i1 %cmp.n, label %tailrecurse.return_crit_edge.i, label %if.end.i.preheader

if.end.i.preheader:                               ; preds = %if.end.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %if.end.preheader.i ], [ %n.vec, %middle.block ]
  %.2830.i.ph = phi i32 [ %maximum.promoted.i, %if.end.preheader.i ], [ %25, %middle.block ]
  br label %if.end.i

if.end.us34.preheader.i:                          ; preds = %if.end.lr.ph.split.i
  %26 = add i32 %conv, 1
  %27 = sext i32 %sub.i to i64
  %sext79 = shl i64 %call3, 32
  %28 = ashr exact i64 %sext79, 32
  %29 = add nsw i64 %28, 1
  %30 = zext nneg i32 %.fr.i to i64
  %31 = sub nuw nsw i64 %29, %30
  %min.iters.check37 = icmp ult i64 %31, 8
  br i1 %min.iters.check37, label %if.end.us34.i.preheader, label %vector.ph38

vector.ph38:                                      ; preds = %if.end.us34.preheader.i
  %n.mod.vf39 = and i64 %29, 7
  %n.vec40 = sub nuw nsw i64 %31, %n.mod.vf39
  %.cast = trunc i64 %n.vec40 to i32
  %32 = sub i32 %26, %.cast
  %broadcast.splatinsert41 = insertelement <4 x i64> poison, i64 %27, i64 0
  %broadcast.splat42 = shufflevector <4 x i64> %broadcast.splatinsert41, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert43 = insertelement <4 x i32> poison, i32 %maximum.promoted.i, i64 0
  %broadcast.splat44 = shufflevector <4 x i32> %broadcast.splatinsert43, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert45 = insertelement <4 x i32> poison, i32 %26, i64 0
  %broadcast.splat46 = shufflevector <4 x i32> %broadcast.splatinsert45, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat46, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body47

vector.body47:                                    ; preds = %pred.store.continue68, %vector.ph38
  %index48 = phi i64 [ 0, %vector.ph38 ], [ %index.next70, %pred.store.continue68 ]
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph38 ], [ %vec.ind.next, %pred.store.continue68 ]
  %vec.ind49 = phi <4 x i32> [ %induction, %vector.ph38 ], [ %vec.ind.next71, %pred.store.continue68 ]
  %vec.phi50 = phi <4 x i32> [ %broadcast.splat44, %vector.ph38 ], [ %56, %pred.store.continue68 ]
  %vec.phi51 = phi <4 x i32> [ %broadcast.splat44, %vector.ph38 ], [ %57, %pred.store.continue68 ]
  %step.add = add <4 x i64> %vec.ind, splat (i64 4)
  %step.add52 = add <4 x i32> %vec.ind49, splat (i32 -4)
  %33 = getelementptr inbounds nuw i32, ptr @sumstr, i64 %index48
  %34 = icmp sle <4 x i64> %vec.ind, %broadcast.splat42
  %35 = icmp sle <4 x i64> %step.add, %broadcast.splat42
  %36 = getelementptr inbounds nuw i8, ptr %33, i64 16
  %wide.load53 = load <4 x i32>, ptr %33, align 16, !tbaa !35
  %wide.load54 = load <4 x i32>, ptr %36, align 16, !tbaa !35
  %37 = add <4 x i32> %wide.load53, %vec.ind49
  %38 = add <4 x i32> %wide.load54, %step.add52
  %39 = extractelement <4 x i1> %34, i64 0
  br i1 %39, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body47
  %40 = getelementptr inbounds nuw i32, ptr @sumstr, i64 %index48
  %41 = extractelement <4 x i32> %37, i64 0
  store i32 %41, ptr %40, align 16, !tbaa !35
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body47
  %42 = extractelement <4 x i1> %34, i64 1
  br i1 %42, label %pred.store.if55, label %pred.store.continue56

pred.store.if55:                                  ; preds = %pred.store.continue
  %gep = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 4), i64 %index48
  %43 = extractelement <4 x i32> %37, i64 1
  store i32 %43, ptr %gep, align 4, !tbaa !35
  br label %pred.store.continue56

pred.store.continue56:                            ; preds = %pred.store.if55, %pred.store.continue
  %44 = extractelement <4 x i1> %34, i64 2
  br i1 %44, label %pred.store.if57, label %pred.store.continue58

pred.store.if57:                                  ; preds = %pred.store.continue56
  %gep90 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 8), i64 %index48
  %45 = extractelement <4 x i32> %37, i64 2
  store i32 %45, ptr %gep90, align 8, !tbaa !35
  br label %pred.store.continue58

pred.store.continue58:                            ; preds = %pred.store.if57, %pred.store.continue56
  %46 = extractelement <4 x i1> %34, i64 3
  br i1 %46, label %pred.store.if59, label %pred.store.continue60

pred.store.if59:                                  ; preds = %pred.store.continue58
  %gep91 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 12), i64 %index48
  %47 = extractelement <4 x i32> %37, i64 3
  store i32 %47, ptr %gep91, align 4, !tbaa !35
  br label %pred.store.continue60

pred.store.continue60:                            ; preds = %pred.store.if59, %pred.store.continue58
  %48 = extractelement <4 x i1> %35, i64 0
  br i1 %48, label %pred.store.if61, label %pred.store.continue62

pred.store.if61:                                  ; preds = %pred.store.continue60
  %gep92 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 16), i64 %index48
  %49 = extractelement <4 x i32> %38, i64 0
  store i32 %49, ptr %gep92, align 16, !tbaa !35
  br label %pred.store.continue62

pred.store.continue62:                            ; preds = %pred.store.if61, %pred.store.continue60
  %50 = extractelement <4 x i1> %35, i64 1
  br i1 %50, label %pred.store.if63, label %pred.store.continue64

pred.store.if63:                                  ; preds = %pred.store.continue62
  %gep93 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 20), i64 %index48
  %51 = extractelement <4 x i32> %38, i64 1
  store i32 %51, ptr %gep93, align 4, !tbaa !35
  br label %pred.store.continue64

pred.store.continue64:                            ; preds = %pred.store.if63, %pred.store.continue62
  %52 = extractelement <4 x i1> %35, i64 2
  br i1 %52, label %pred.store.if65, label %pred.store.continue66

pred.store.if65:                                  ; preds = %pred.store.continue64
  %gep94 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 24), i64 %index48
  %53 = extractelement <4 x i32> %38, i64 2
  store i32 %53, ptr %gep94, align 8, !tbaa !35
  br label %pred.store.continue66

pred.store.continue66:                            ; preds = %pred.store.if65, %pred.store.continue64
  %54 = extractelement <4 x i1> %35, i64 3
  br i1 %54, label %pred.store.if67, label %pred.store.continue68

pred.store.if67:                                  ; preds = %pred.store.continue66
  %gep95 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 28), i64 %index48
  %55 = extractelement <4 x i32> %38, i64 3
  store i32 %55, ptr %gep95, align 4, !tbaa !35
  br label %pred.store.continue68

pred.store.continue68:                            ; preds = %pred.store.if67, %pred.store.continue66
  %predphi = select <4 x i1> %34, <4 x i32> %37, <4 x i32> %wide.load53
  %predphi69 = select <4 x i1> %35, <4 x i32> %38, <4 x i32> %wide.load54
  %56 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi, <4 x i32> %vec.phi50)
  %57 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi69, <4 x i32> %vec.phi51)
  %index.next70 = add nuw i64 %index48, 8
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next71 = add <4 x i32> %vec.ind49, splat (i32 -8)
  %58 = icmp eq i64 %index.next70, %n.vec40
  br i1 %58, label %middle.block72, label %vector.body47, !llvm.loop !43

middle.block72:                                   ; preds = %pred.store.continue68
  %rdx.minmax73 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %56, <4 x i32> %57)
  %59 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax73)
  %cmp.n74 = icmp eq i64 %n.mod.vf39, 0
  br i1 %cmp.n74, label %tailrecurse.return_crit_edge.i, label %if.end.us34.i.preheader

if.end.us34.i.preheader:                          ; preds = %if.end.us34.preheader.i, %middle.block72
  %indvars.iv52.i.ph = phi i64 [ 0, %if.end.us34.preheader.i ], [ %n.vec40, %middle.block72 ]
  %indvars.iv50.i.ph = phi i32 [ %26, %if.end.us34.preheader.i ], [ %32, %middle.block72 ]
  %.2830.us36.i.ph = phi i32 [ %maximum.promoted.i, %if.end.us34.preheader.i ], [ %59, %middle.block72 ]
  br label %if.end.us34.i

if.end.us34.i:                                    ; preds = %if.end.us34.i.preheader, %for.cond.cleanup.us40.i
  %indvars.iv52.i = phi i64 [ %indvars.iv.next53.i, %for.cond.cleanup.us40.i ], [ %indvars.iv52.i.ph, %if.end.us34.i.preheader ]
  %indvars.iv50.i = phi i32 [ %indvars.iv.next51.i, %for.cond.cleanup.us40.i ], [ %indvars.iv50.i.ph, %if.end.us34.i.preheader ]
  %.2830.us36.i = phi i32 [ %..us41.i, %for.cond.cleanup.us40.i ], [ %.2830.us36.i.ph, %if.end.us34.i.preheader ]
  %add.ptr.us38.i = getelementptr inbounds nuw i32, ptr @sumstr, i64 %indvars.iv52.i
  %cmp2.not18.us39.i = icmp sgt i64 %indvars.iv52.i, %27
  %.pre.i = load i32, ptr %add.ptr.us38.i, align 4, !tbaa !35
  br i1 %cmp2.not18.us39.i, label %for.cond.cleanup.us40.i, label %for.cond3.preheader.lr.ph.us44.i

for.cond.cleanup.us40.i:                          ; preds = %for.cond3.preheader.lr.ph.us44.i, %if.end.us34.i
  %60 = phi i32 [ %62, %for.cond3.preheader.lr.ph.us44.i ], [ %.pre.i, %if.end.us34.i ]
  %..us41.i = tail call i32 @llvm.smax.i32(i32 %60, i32 %.2830.us36.i)
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1
  %61 = icmp eq i64 %indvars.iv52.i, %27
  %indvars.iv.next51.i = add i32 %indvars.iv50.i, -1
  br i1 %61, label %tailrecurse.return_crit_edge.i, label %if.end.us34.i, !llvm.loop !44

for.cond3.preheader.lr.ph.us44.i:                 ; preds = %if.end.us34.i
  %62 = add i32 %.pre.i, %indvars.iv50.i
  store i32 %62, ptr %add.ptr.us38.i, align 4, !tbaa !35
  br label %for.cond.cleanup.us40.i

if.end.i:                                         ; preds = %if.end.i.preheader, %if.end.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %if.end.i ], [ %indvars.iv.i.ph, %if.end.i.preheader ]
  %.2830.i = phi i32 [ %..i, %if.end.i ], [ %.2830.i.ph, %if.end.i.preheader ]
  %add.ptr.i1 = getelementptr inbounds nuw i32, ptr @sumstr, i64 %indvars.iv.i
  %63 = load i32, ptr %add.ptr.i1, align 4, !tbaa !35
  %..i = tail call i32 @llvm.smax.i32(i32 %63, i32 %.2830.i)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %64 = icmp eq i64 %indvars.iv.i, %15
  br i1 %64, label %tailrecurse.return_crit_edge.i, label %if.end.i, !llvm.loop !45

tailrecurse.return_crit_edge.i:                   ; preds = %if.end.i, %for.cond.cleanup.us40.i, %for.cond.cleanup.us.i, %middle.block, %middle.block72
  %.us-phi.i = phi i32 [ %59, %middle.block72 ], [ %25, %middle.block ], [ %..us.i, %for.cond.cleanup.us.i ], [ %..us41.i, %for.cond.cleanup.us40.i ], [ %..i, %if.end.i ]
  store i32 %.us-phi.i, ptr @maximum, align 4, !tbaa !35
  br label %_Z3expi.exit

_Z3expi.exit:                                     ; preds = %_ZNSi7getlineEPcl.exit, %tailrecurse.return_crit_edge.i
  %65 = phi i32 [ %maximum.promoted.i, %_ZNSi7getlineEPcl.exit ], [ %.us-phi.i, %tailrecurse.return_crit_edge.i ]
  %cmp = icmp slt i32 %65, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %_Z3expi.exit
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i3 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i4 = getelementptr i8, ptr %vtable.i3, i64 -24
  %vbase.offset.i5 = load i64, ptr %vbase.offset.ptr.i4, align 8
  %add.ptr.i6 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i5
  %_M_ctype.i.i7 = getelementptr inbounds nuw i8, ptr %add.ptr.i6, i64 240
  %66 = load ptr, ptr %_M_ctype.i.i7, align 8, !tbaa !8
  %tobool.not.i.i.i8 = icmp eq ptr %66, null
  br i1 %tobool.not.i.i.i8, label %if.then.i.i.i21, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9

if.then.i.i.i21:                                  ; preds = %if.then
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9: ; preds = %if.then
  %_M_widen_ok.i.i.i10 = getelementptr inbounds nuw i8, ptr %66, i64 56
  %67 = load i8, ptr %_M_widen_ok.i.i.i10, align 8, !tbaa !28
  %tobool.not.i1.i.i11 = icmp eq i8 %67, 0
  br i1 %tobool.not.i1.i.i11, label %if.end.i.i.i17, label %if.then.i2.i.i12

if.then.i2.i.i12:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9
  %arrayidx.i.i.i13 = getelementptr inbounds nuw i8, ptr %66, i64 67
  %68 = load i8, ptr %arrayidx.i.i.i13, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i17:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i9
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %66)
  %vtable.i.i.i18 = load ptr, ptr %66, align 8, !tbaa !5
  %vfn.i.i.i19 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i18, i64 48
  %69 = load ptr, ptr %vfn.i.i.i19, align 8
  %call.i.i.i20 = tail call noundef signext i8 %69(ptr noundef nonnull align 8 dereferenceable(570) %66, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i12, %if.end.i.i.i17
  %retval.0.i.i.i14 = phi i8 [ %68, %if.then.i2.i.i12 ], [ %call.i.i.i20, %if.end.i.i.i17 ]
  %call1.i15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i14)
  %call.i.i16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i15)
  br label %if.end

if.else:                                          ; preds = %_Z3expi.exit
  tail call void @_Z4pickv()
  br label %if.end

if.end:                                           ; preds = %if.else, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3expi(i32 noundef %a) local_unnamed_addr #3 {
entry:
  %0 = load i32, ptr @len, align 4, !tbaa !35
  %1 = load i32, ptr @n, align 4, !tbaa !35
  %.fr = freeze i32 %1
  %sub = sub nsw i32 %0, %.fr
  %add = add nsw i32 %sub, 1
  %maximum.promoted = load i32, ptr @maximum, align 4
  %cmp29 = icmp eq i32 %a, %add
  br i1 %cmp29, label %return, label %if.end.lr.ph

if.end.lr.ph:                                     ; preds = %entry
  %cmp5.not.not14 = icmp sgt i32 %.fr, 0
  br i1 %cmp5.not.not14, label %if.end.us.preheader, label %if.end.lr.ph.split

if.end.us.preheader:                              ; preds = %if.end.lr.ph
  %2 = sext i32 %a to i64
  %3 = sext i32 %sub to i64
  %wide.trip.count = zext nneg i32 %.fr to i64
  br label %if.end.us

if.end.us:                                        ; preds = %if.end.us.preheader, %for.cond.cleanup.us
  %indvars.iv61 = phi i64 [ %2, %if.end.us.preheader ], [ %indvars.iv.next62, %for.cond.cleanup.us ]
  %.2830.us = phi i32 [ %maximum.promoted, %if.end.us.preheader ], [ %..us, %for.cond.cleanup.us ]
  %add.ptr.us = getelementptr inbounds i32, ptr @sumstr, i64 %indvars.iv61
  %cmp2.not18.us = icmp sgt i64 %indvars.iv61, %3
  br i1 %cmp2.not18.us, label %for.cond.cleanup.us, label %for.cond3.preheader.lr.ph.us

for.cond.cleanup.us:                              ; preds = %for.inc25.us.us, %if.end.us
  %4 = load i32, ptr %add.ptr.us, align 4, !tbaa !35
  %..us = tail call i32 @llvm.smax.i32(i32 %4, i32 %.2830.us)
  %indvars.iv.next62 = add nsw i64 %indvars.iv61, 1
  %5 = icmp eq i64 %indvars.iv61, %3
  br i1 %5, label %tailrecurse.return_crit_edge, label %if.end.us

for.cond3.preheader.lr.ph.us:                     ; preds = %if.end.us
  %add.ptr13.us = getelementptr inbounds i8, ptr @str, i64 %indvars.iv61
  br label %for.cond3.preheader.us.us

for.cond3.preheader.us.us:                        ; preds = %for.inc25.us.us, %for.cond3.preheader.lr.ph.us
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.inc25.us.us ], [ %indvars.iv61, %for.cond3.preheader.lr.ph.us ]
  %add.ptr9.us.us = getelementptr inbounds i8, ptr @str, i64 %indvars.iv63
  br label %for.body7.us.us

for.body7.us.us:                                  ; preds = %if.then18.us.us, %for.cond3.preheader.us.us
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %if.then18.us.us ], [ 0, %for.cond3.preheader.us.us ]
  %add.ptr11.us.us = getelementptr inbounds nuw i8, ptr %add.ptr9.us.us, i64 %indvars.iv56
  %6 = load i8, ptr %add.ptr11.us.us, align 1, !tbaa !34
  %add.ptr15.us.us = getelementptr inbounds nuw i8, ptr %add.ptr13.us, i64 %indvars.iv56
  %7 = load i8, ptr %add.ptr15.us.us, align 1, !tbaa !34
  %cmp17.us.us = icmp eq i8 %6, %7
  br i1 %cmp17.us.us, label %if.then18.us.us, label %cleanup.us.us

cleanup.us.us:                                    ; preds = %for.body7.us.us
  %indvars60.le = trunc i64 %indvars.iv56 to i32
  %cmp21.us.us = icmp eq i32 %.fr, %indvars60.le
  br i1 %cmp21.us.us, label %if.then22.us.us, label %for.inc25.us.us

if.then22.us.us:                                  ; preds = %if.then18.us.us, %cleanup.us.us
  %8 = load i32, ptr %add.ptr.us, align 4, !tbaa !35
  %inc23.us.us = add nsw i32 %8, 1
  store i32 %inc23.us.us, ptr %add.ptr.us, align 4, !tbaa !35
  br label %for.inc25.us.us

for.inc25.us.us:                                  ; preds = %if.then22.us.us, %cleanup.us.us
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, 1
  %cmp2.not.us.us.not = icmp slt i64 %indvars.iv63, %3
  br i1 %cmp2.not.us.us.not, label %for.cond3.preheader.us.us, label %for.cond.cleanup.us, !llvm.loop !36

if.then18.us.us:                                  ; preds = %for.body7.us.us
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count
  br i1 %exitcond.not, label %if.then22.us.us, label %for.body7.us.us, !llvm.loop !39

if.end.lr.ph.split:                               ; preds = %if.end.lr.ph
  %cmp21 = icmp eq i32 %.fr, 0
  br i1 %cmp21, label %if.end.us34.preheader, label %if.end.preheader

if.end.preheader:                                 ; preds = %if.end.lr.ph.split
  %9 = sext i32 %a to i64
  %10 = sext i32 %sub to i64
  %11 = sext i32 %0 to i64
  %12 = add nsw i64 %11, 1
  %13 = sext i32 %.fr to i64
  %14 = add nsw i64 %13, %9
  %15 = sub nsw i64 %12, %14
  %min.iters.check = icmp ult i64 %15, 8
  br i1 %min.iters.check, label %if.end.preheader128, label %vector.ph

vector.ph:                                        ; preds = %if.end.preheader
  %n.vec = and i64 %15, -8
  %16 = add nsw i64 %n.vec, %9
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %maximum.promoted, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %invariant.gep = getelementptr i32, ptr @sumstr, i64 %9
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %18, %vector.body ]
  %vec.phi76 = phi <4 x i32> [ %broadcast.splat, %vector.ph ], [ %19, %vector.body ]
  %gep = getelementptr i32, ptr %invariant.gep, i64 %index
  %17 = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !35
  %wide.load77 = load <4 x i32>, ptr %17, align 4, !tbaa !35
  %18 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %19 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load77, <4 x i32> %vec.phi76)
  %index.next = add nuw i64 %index, 8
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %rdx.minmax = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %18, <4 x i32> %19)
  %21 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax)
  %cmp.n = icmp eq i64 %15, %n.vec
  br i1 %cmp.n, label %tailrecurse.return_crit_edge, label %if.end.preheader128

if.end.preheader128:                              ; preds = %if.end.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %9, %if.end.preheader ], [ %16, %middle.block ]
  %.2830.ph = phi i32 [ %maximum.promoted, %if.end.preheader ], [ %21, %middle.block ]
  br label %if.end

if.end.us34.preheader:                            ; preds = %if.end.lr.ph.split
  %22 = add i32 %0, 1
  %23 = sub i32 %22, %a
  %24 = sext i32 %a to i64
  %25 = sext i32 %sub to i64
  %26 = sext i32 %0 to i64
  %27 = add nsw i64 %26, 1
  %28 = sub nsw i64 %27, %24
  %min.iters.check79 = icmp ult i64 %28, 8
  br i1 %min.iters.check79, label %if.end.us34.preheader125, label %vector.ph80

vector.ph80:                                      ; preds = %if.end.us34.preheader
  %n.vec82 = and i64 %28, -8
  %29 = add nsw i64 %n.vec82, %24
  %.cast = trunc i64 %n.vec82 to i32
  %30 = sub i32 %23, %.cast
  %broadcast.splatinsert83 = insertelement <4 x i64> poison, i64 %25, i64 0
  %broadcast.splat84 = shufflevector <4 x i64> %broadcast.splatinsert83, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert85 = insertelement <4 x i32> poison, i32 %maximum.promoted, i64 0
  %broadcast.splat86 = shufflevector <4 x i32> %broadcast.splatinsert85, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert87 = insertelement <4 x i64> poison, i64 %24, i64 0
  %broadcast.splat88 = shufflevector <4 x i64> %broadcast.splatinsert87, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i64> %broadcast.splat88, <i64 0, i64 1, i64 2, i64 3>
  %broadcast.splatinsert89 = insertelement <4 x i32> poison, i32 %23, i64 0
  %broadcast.splat90 = shufflevector <4 x i32> %broadcast.splatinsert89, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction91 = add <4 x i32> %broadcast.splat90, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body92

vector.body92:                                    ; preds = %pred.store.continue114, %vector.ph80
  %index93 = phi i64 [ 0, %vector.ph80 ], [ %index.next116, %pred.store.continue114 ]
  %vec.ind = phi <4 x i64> [ %induction, %vector.ph80 ], [ %vec.ind.next, %pred.store.continue114 ]
  %vec.ind94 = phi <4 x i32> [ %induction91, %vector.ph80 ], [ %vec.ind.next117, %pred.store.continue114 ]
  %vec.phi95 = phi <4 x i32> [ %broadcast.splat86, %vector.ph80 ], [ %54, %pred.store.continue114 ]
  %vec.phi96 = phi <4 x i32> [ %broadcast.splat86, %vector.ph80 ], [ %55, %pred.store.continue114 ]
  %step.add = add <4 x i64> %vec.ind, splat (i64 4)
  %step.add97 = add <4 x i32> %vec.ind94, splat (i32 -4)
  %offset.idx98 = add i64 %index93, %24
  %31 = getelementptr inbounds i32, ptr @sumstr, i64 %offset.idx98
  %32 = icmp sle <4 x i64> %vec.ind, %broadcast.splat84
  %33 = icmp sle <4 x i64> %step.add, %broadcast.splat84
  %34 = getelementptr inbounds nuw i8, ptr %31, i64 16
  %wide.load99 = load <4 x i32>, ptr %31, align 4, !tbaa !35
  %wide.load100 = load <4 x i32>, ptr %34, align 4, !tbaa !35
  %35 = add <4 x i32> %wide.load99, %vec.ind94
  %36 = add <4 x i32> %wide.load100, %step.add97
  %37 = extractelement <4 x i1> %32, i64 0
  br i1 %37, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body92
  %38 = getelementptr inbounds i32, ptr @sumstr, i64 %offset.idx98
  %39 = extractelement <4 x i32> %35, i64 0
  store i32 %39, ptr %38, align 4, !tbaa !35
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body92
  %40 = extractelement <4 x i1> %32, i64 1
  br i1 %40, label %pred.store.if101, label %pred.store.continue102

pred.store.if101:                                 ; preds = %pred.store.continue
  %gep136 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 4), i64 %offset.idx98
  %41 = extractelement <4 x i32> %35, i64 1
  store i32 %41, ptr %gep136, align 4, !tbaa !35
  br label %pred.store.continue102

pred.store.continue102:                           ; preds = %pred.store.if101, %pred.store.continue
  %42 = extractelement <4 x i1> %32, i64 2
  br i1 %42, label %pred.store.if103, label %pred.store.continue104

pred.store.if103:                                 ; preds = %pred.store.continue102
  %gep137 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 8), i64 %offset.idx98
  %43 = extractelement <4 x i32> %35, i64 2
  store i32 %43, ptr %gep137, align 4, !tbaa !35
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue102
  %44 = extractelement <4 x i1> %32, i64 3
  br i1 %44, label %pred.store.if105, label %pred.store.continue106

pred.store.if105:                                 ; preds = %pred.store.continue104
  %gep138 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 12), i64 %offset.idx98
  %45 = extractelement <4 x i32> %35, i64 3
  store i32 %45, ptr %gep138, align 4, !tbaa !35
  br label %pred.store.continue106

pred.store.continue106:                           ; preds = %pred.store.if105, %pred.store.continue104
  %46 = extractelement <4 x i1> %33, i64 0
  br i1 %46, label %pred.store.if107, label %pred.store.continue108

pred.store.if107:                                 ; preds = %pred.store.continue106
  %gep139 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 16), i64 %offset.idx98
  %47 = extractelement <4 x i32> %36, i64 0
  store i32 %47, ptr %gep139, align 4, !tbaa !35
  br label %pred.store.continue108

pred.store.continue108:                           ; preds = %pred.store.if107, %pred.store.continue106
  %48 = extractelement <4 x i1> %33, i64 1
  br i1 %48, label %pred.store.if109, label %pred.store.continue110

pred.store.if109:                                 ; preds = %pred.store.continue108
  %gep140 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 20), i64 %offset.idx98
  %49 = extractelement <4 x i32> %36, i64 1
  store i32 %49, ptr %gep140, align 4, !tbaa !35
  br label %pred.store.continue110

pred.store.continue110:                           ; preds = %pred.store.if109, %pred.store.continue108
  %50 = extractelement <4 x i1> %33, i64 2
  br i1 %50, label %pred.store.if111, label %pred.store.continue112

pred.store.if111:                                 ; preds = %pred.store.continue110
  %gep141 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 24), i64 %offset.idx98
  %51 = extractelement <4 x i32> %36, i64 2
  store i32 %51, ptr %gep141, align 4, !tbaa !35
  br label %pred.store.continue112

pred.store.continue112:                           ; preds = %pred.store.if111, %pred.store.continue110
  %52 = extractelement <4 x i1> %33, i64 3
  br i1 %52, label %pred.store.if113, label %pred.store.continue114

pred.store.if113:                                 ; preds = %pred.store.continue112
  %gep142 = getelementptr i32, ptr getelementptr (i8, ptr @sumstr, i64 28), i64 %offset.idx98
  %53 = extractelement <4 x i32> %36, i64 3
  store i32 %53, ptr %gep142, align 4, !tbaa !35
  br label %pred.store.continue114

pred.store.continue114:                           ; preds = %pred.store.if113, %pred.store.continue112
  %predphi = select <4 x i1> %32, <4 x i32> %35, <4 x i32> %wide.load99
  %predphi115 = select <4 x i1> %33, <4 x i32> %36, <4 x i32> %wide.load100
  %54 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi, <4 x i32> %vec.phi95)
  %55 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %predphi115, <4 x i32> %vec.phi96)
  %index.next116 = add nuw i64 %index93, 8
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 8)
  %vec.ind.next117 = add <4 x i32> %vec.ind94, splat (i32 -8)
  %56 = icmp eq i64 %index.next116, %n.vec82
  br i1 %56, label %middle.block118, label %vector.body92, !llvm.loop !47

middle.block118:                                  ; preds = %pred.store.continue114
  %rdx.minmax119 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %54, <4 x i32> %55)
  %57 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %rdx.minmax119)
  %cmp.n120 = icmp eq i64 %28, %n.vec82
  br i1 %cmp.n120, label %tailrecurse.return_crit_edge, label %if.end.us34.preheader125

if.end.us34.preheader125:                         ; preds = %if.end.us34.preheader, %middle.block118
  %indvars.iv52.ph = phi i64 [ %24, %if.end.us34.preheader ], [ %29, %middle.block118 ]
  %indvars.iv50.ph = phi i32 [ %23, %if.end.us34.preheader ], [ %30, %middle.block118 ]
  %.2830.us36.ph = phi i32 [ %maximum.promoted, %if.end.us34.preheader ], [ %57, %middle.block118 ]
  br label %if.end.us34

if.end.us34:                                      ; preds = %if.end.us34.preheader125, %for.cond.cleanup.us40
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.cond.cleanup.us40 ], [ %indvars.iv52.ph, %if.end.us34.preheader125 ]
  %indvars.iv50 = phi i32 [ %indvars.iv.next51, %for.cond.cleanup.us40 ], [ %indvars.iv50.ph, %if.end.us34.preheader125 ]
  %.2830.us36 = phi i32 [ %..us41, %for.cond.cleanup.us40 ], [ %.2830.us36.ph, %if.end.us34.preheader125 ]
  %add.ptr.us38 = getelementptr inbounds i32, ptr @sumstr, i64 %indvars.iv52
  %cmp2.not18.us39 = icmp sgt i64 %indvars.iv52, %25
  %.pre = load i32, ptr %add.ptr.us38, align 4, !tbaa !35
  br i1 %cmp2.not18.us39, label %for.cond.cleanup.us40, label %for.cond3.preheader.lr.ph.us44

for.cond.cleanup.us40:                            ; preds = %for.cond3.preheader.lr.ph.us44, %if.end.us34
  %58 = phi i32 [ %60, %for.cond3.preheader.lr.ph.us44 ], [ %.pre, %if.end.us34 ]
  %..us41 = tail call i32 @llvm.smax.i32(i32 %58, i32 %.2830.us36)
  %indvars.iv.next53 = add nsw i64 %indvars.iv52, 1
  %59 = icmp eq i64 %indvars.iv52, %25
  %indvars.iv.next51 = add i32 %indvars.iv50, -1
  br i1 %59, label %tailrecurse.return_crit_edge, label %if.end.us34, !llvm.loop !48

for.cond3.preheader.lr.ph.us44:                   ; preds = %if.end.us34
  %60 = add i32 %.pre, %indvars.iv50
  store i32 %60, ptr %add.ptr.us38, align 4, !tbaa !35
  br label %for.cond.cleanup.us40

if.end:                                           ; preds = %if.end.preheader128, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ %indvars.iv.ph, %if.end.preheader128 ]
  %.2830 = phi i32 [ %., %if.end ], [ %.2830.ph, %if.end.preheader128 ]
  %add.ptr = getelementptr inbounds i32, ptr @sumstr, i64 %indvars.iv
  %61 = load i32, ptr %add.ptr, align 4, !tbaa !35
  %. = tail call i32 @llvm.smax.i32(i32 %61, i32 %.2830)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %62 = icmp eq i64 %indvars.iv, %10
  br i1 %62, label %tailrecurse.return_crit_edge, label %if.end, !llvm.loop !49

tailrecurse.return_crit_edge:                     ; preds = %if.end, %for.cond.cleanup.us40, %for.cond.cleanup.us, %middle.block, %middle.block118
  %.us-phi = phi i32 [ %57, %middle.block118 ], [ %21, %middle.block ], [ %..us, %for.cond.cleanup.us ], [ %..us41, %for.cond.cleanup.us40 ], [ %., %if.end ]
  store i32 %.us-phi, ptr @maximum, align 4, !tbaa !35
  br label %return

return:                                           ; preds = %tailrecurse.return_crit_edge, %entry
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4pickv() local_unnamed_addr #4 {
entry:
  %__c.addr.i = alloca i8, align 1
  %0 = load i32, ptr @maximum, align 4, !tbaa !35
  %call = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %0)
  %vtable.i7 = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr.i8 = getelementptr i8, ptr %vtable.i7, i64 -24
  %vbase.offset.i9 = load i64, ptr %vbase.offset.ptr.i8, align 8
  %add.ptr.i10 = getelementptr inbounds i8, ptr %call, i64 %vbase.offset.i9
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i10, i64 240
  %1 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 56
  %2 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i1.i.i = icmp eq i8 %2, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 67
  %3 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %1)
  %vtable.i.i.i = load ptr, ptr %1, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %4 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %4(ptr noundef nonnull align 8 dereferenceable(570) %1, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %3, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i11)
  %5 = load i32, ptr @len, align 4, !tbaa !35
  %6 = load i32, ptr @n, align 4, !tbaa !35
  %cmp.not36 = icmp slt i32 %5, %6
  br i1 %cmp.not36, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %.pre42 = load i32, ptr @maximum, align 4, !tbaa !35
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.inc14, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.inc14
  %7 = phi i32 [ %6, %for.body.preheader ], [ %19, %for.inc14 ]
  %8 = phi i32 [ %5, %for.body.preheader ], [ %20, %for.inc14 ]
  %9 = phi i32 [ %.pre42, %for.body.preheader ], [ %21, %for.inc14 ]
  %indvars.iv39 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next40, %for.inc14 ]
  %add.ptr = getelementptr inbounds nuw i32, ptr @sumstr, i64 %indvars.iv39
  %10 = load i32, ptr %add.ptr, align 4, !tbaa !35
  %cmp2 = icmp eq i32 %10, %9
  br i1 %cmp2, label %for.cond3.preheader, label %for.inc14

for.cond3.preheader:                              ; preds = %for.body
  %cmp5.not.not32 = icmp sgt i32 %7, 0
  br i1 %cmp5.not.not32, label %for.body7.lr.ph, label %for.cond.cleanup6

for.body7.lr.ph:                                  ; preds = %for.cond3.preheader
  %add.ptr9 = getelementptr inbounds nuw i8, ptr @str, i64 %indvars.iv39
  br label %for.body7

for.cond.cleanup6:                                ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond3.preheader
  %vtable.i12 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i13 = getelementptr i8, ptr %vtable.i12, i64 -24
  %vbase.offset.i14 = load i64, ptr %vbase.offset.ptr.i13, align 8
  %gep34 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i14
  %11 = load ptr, ptr %gep34, align 8, !tbaa !8
  %tobool.not.i.i.i17 = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i17, label %if.then.i.i.i30, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18

if.then.i.i.i30:                                  ; preds = %for.cond.cleanup6
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18: ; preds = %for.cond.cleanup6
  %_M_widen_ok.i.i.i19 = getelementptr inbounds nuw i8, ptr %11, i64 56
  %12 = load i8, ptr %_M_widen_ok.i.i.i19, align 8, !tbaa !28
  %tobool.not.i1.i.i20 = icmp eq i8 %12, 0
  br i1 %tobool.not.i1.i.i20, label %if.end.i.i.i26, label %if.then.i2.i.i21

if.then.i2.i.i21:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
  %arrayidx.i.i.i22 = getelementptr inbounds nuw i8, ptr %11, i64 67
  %13 = load i8, ptr %arrayidx.i.i.i22, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31

if.end.i.i.i26:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i18
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %11)
  %vtable.i.i.i27 = load ptr, ptr %11, align 8, !tbaa !5
  %vfn.i.i.i28 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i27, i64 48
  %14 = load ptr, ptr %vfn.i.i.i28, align 8
  %call.i.i.i29 = call noundef signext i8 %14(ptr noundef nonnull align 8 dereferenceable(570) %11, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31: ; preds = %if.then.i2.i.i21, %if.end.i.i.i26
  %retval.0.i.i.i23 = phi i8 [ %13, %if.then.i2.i.i21 ], [ %call.i.i.i29, %if.end.i.i.i26 ]
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i23)
  %call.i.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i24)
  %.pre = load i32, ptr @maximum, align 4, !tbaa !35
  %.pre43 = load i32, ptr @len, align 4, !tbaa !35
  %.pre44 = load i32, ptr @n, align 4, !tbaa !35
  br label %for.inc14

for.body7:                                        ; preds = %for.body7.lr.ph, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %add.ptr11 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 %indvars.iv
  %15 = load i8, ptr %add.ptr11, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %15, ptr %__c.addr.i, align 1, !tbaa !34
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %16 = load i64, ptr %gep, align 8, !tbaa !50
  %cmp.not.i = icmp eq i64 %16, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body7
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body7
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %15)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %17 = load i32, ptr @n, align 4, !tbaa !35
  %18 = sext i32 %17 to i64
  %cmp5.not.not = icmp slt i64 %indvars.iv.next, %18
  br i1 %cmp5.not.not, label %for.body7, label %for.cond.cleanup6, !llvm.loop !51

for.inc14:                                        ; preds = %for.body, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31
  %19 = phi i32 [ %7, %for.body ], [ %.pre44, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31 ]
  %20 = phi i32 [ %8, %for.body ], [ %.pre43, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31 ]
  %21 = phi i32 [ %9, %for.body ], [ %.pre, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit31 ]
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %sub = sub nsw i32 %20, %19
  %22 = sext i32 %sub to i64
  %cmp.not.not = icmp slt i64 %indvars.iv39, %22
  br i1 %cmp.not.not, label %for.body, label %for.cond.cleanup, !llvm.loop !52
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn }
attributes #9 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !25, i64 240}
!9 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !22, i64 216, !12, i64 224, !23, i64 225, !24, i64 232, !25, i64 240, !26, i64 248, !27, i64 256}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!"p1 _ZTSSo", !16, i64 0}
!23 = !{!"bool", !12, i64 0}
!24 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!25 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!26 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!28 = !{!29, !12, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !30, i64 0, !31, i64 16, !23, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!30 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!31 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!32 = !{!"p1 int", !16, i64 0}
!33 = !{!"p1 short", !16, i64 0}
!34 = !{!12, !12, i64 0}
!35 = !{!18, !18, i64 0}
!36 = distinct !{!36, !37, !38}
!37 = !{!"llvm.loop.mustprogress"}
!38 = !{!"llvm.loop.unroll.disable"}
!39 = distinct !{!39, !37, !38}
!40 = distinct !{!40, !41, !42}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !41, !42}
!44 = distinct !{!44, !42, !41}
!45 = distinct !{!45, !42, !41}
!46 = distinct !{!46, !41, !42}
!47 = distinct !{!47, !41, !42}
!48 = distinct !{!48, !42, !41}
!49 = distinct !{!49, !42, !41}
!50 = !{!10, !11, i64 16}
!51 = distinct !{!51, !37, !38}
!52 = distinct !{!52, !37, !38}
