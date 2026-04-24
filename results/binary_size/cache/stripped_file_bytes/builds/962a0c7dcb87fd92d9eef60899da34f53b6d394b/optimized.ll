; ModuleID = '<stdin>'
source_filename = "/tmp/tmp44yhpujf.cpp"
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
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp.not58 = icmp slt i32 %0, 1
  %1 = load i32, ptr %y1, align 4
  %2 = icmp slt i32 %1, 1
  %or.cond = select i1 %cmp.not58, i1 true, i1 %2
  br i1 %or.cond, label %for.end10, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.inc8 ], [ 1, %entry ]
  %cmp3.not56 = icmp slt i32 %4, 1
  br i1 %cmp3.not56, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv85, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp3.not.not, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond2.preheader
  %7 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond2.preheader ]
  %8 = phi i32 [ %5, %for.inc8.loopexit ], [ %4, %for.cond2.preheader ]
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %9 = sext i32 %7 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv85, %9
  br i1 %cmp.not.not, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %11 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp13.not = icmp eq i32 %10, %11
  br i1 %cmp13.not, label %for.cond16.preheader, label %if.then

for.cond16.preheader:                             ; preds = %for.end10
  %cmp17.not62 = icmp slt i32 %10, 1
  %12 = load i32, ptr %y2, align 4
  %13 = icmp slt i32 %12, 1
  %or.cond126 = select i1 %cmp17.not62, i1 true, i1 %13
  br i1 %or.cond126, label %for.cond33.preheader, label %for.cond19.preheader

if.then:                                          ; preds = %for.end10
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 5)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %14 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 67
  %16 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %14)
  %vtable.i.i.i = load ptr, ptr %14, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %17 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %17(ptr noundef nonnull align 8 dereferenceable(570) %14, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %16, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i34)
  br label %cleanup

for.cond19.preheader:                             ; preds = %for.cond16.preheader, %for.inc30
  %18 = phi i32 [ %32, %for.inc30 ], [ %10, %for.cond16.preheader ]
  %19 = phi i32 [ %33, %for.inc30 ], [ %12, %for.cond16.preheader ]
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc30 ], [ 1, %for.cond16.preheader ]
  %cmp20.not60 = icmp slt i32 %19, 1
  br i1 %cmp20.not60, label %for.inc30, label %for.body21

for.cond33.preheader:                             ; preds = %for.inc30, %for.cond16.preheader
  %.lcssa = phi i32 [ %10, %for.cond16.preheader ], [ %32, %for.inc30 ]
  %20 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp34.not69 = icmp slt i32 %20, 1
  br i1 %cmp34.not69, label %cleanup, label %for.cond36.preheader.lr.ph

for.cond36.preheader.lr.ph:                       ; preds = %for.cond33.preheader
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp37.not67 = icmp slt i32 %21, 1
  br i1 %cmp37.not67, label %for.body69.preheader, label %for.cond36.preheader.lr.ph.split

for.cond36.preheader.lr.ph.split:                 ; preds = %for.cond36.preheader.lr.ph
  %cmp44.not64 = icmp slt i32 %.lcssa, 1
  br i1 %cmp44.not64, label %for.cond36.preheader.us71.preheader, label %for.cond36.preheader.preheader

for.cond36.preheader.preheader:                   ; preds = %for.cond36.preheader.lr.ph.split
  %22 = add nuw i32 %.lcssa, 1
  %23 = add nuw i32 %21, 1
  %24 = add nuw i32 %20, 1
  %wide.trip.count105 = zext i32 %24 to i64
  %wide.trip.count100 = zext i32 %23 to i64
  %wide.trip.count = zext i32 %22 to i64
  %25 = zext nneg i32 %.lcssa to i64
  %min.iters.check = icmp ult i32 %.lcssa, 4
  %n.vec = and i64 %25, 2147483644
  %26 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %n.vec, %25
  br label %for.cond36.preheader

for.cond36.preheader.us71.preheader:              ; preds = %for.cond36.preheader.lr.ph.split
  %27 = zext nneg i32 %21 to i64
  %28 = shl nuw nsw i64 %27, 2
  %wide.trip.count110 = zext nneg i32 %20 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %c, i64 408
  br label %for.cond36.preheader.us71

for.cond36.preheader.us71:                        ; preds = %for.cond36.preheader.us71.preheader, %for.cond36.preheader.us71
  %indvar = phi i64 [ 0, %for.cond36.preheader.us71.preheader ], [ %indvar.next, %for.cond36.preheader.us71 ]
  %29 = mul nuw nsw i64 %indvar, 404
  %gep123 = getelementptr i8, ptr %invariant.gep, i64 %29
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %gep123, i8 0, i64 %28, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond111.not = icmp eq i64 %indvar.next, %wide.trip.count110
  br i1 %exitcond111.not, label %for.body69.preheader, label %for.cond36.preheader.us71, !llvm.loop !41

for.body21:                                       ; preds = %for.cond19.preheader, %for.body21
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body21 ], [ 1, %for.cond19.preheader ]
  %arrayidx25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv91, i64 %indvars.iv88
  %call26 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx25)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %30 = load i32, ptr %y2, align 4, !tbaa !5
  %31 = sext i32 %30 to i64
  %cmp20.not.not = icmp slt i64 %indvars.iv88, %31
  br i1 %cmp20.not.not, label %for.body21, label %for.inc30.loopexit, !llvm.loop !42

for.inc30.loopexit:                               ; preds = %for.body21
  %.pre118 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.inc30.loopexit, %for.cond19.preheader
  %32 = phi i32 [ %.pre118, %for.inc30.loopexit ], [ %18, %for.cond19.preheader ]
  %33 = phi i32 [ %30, %for.inc30.loopexit ], [ %19, %for.cond19.preheader ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %34 = sext i32 %32 to i64
  %cmp17.not.not = icmp slt i64 %indvars.iv91, %34
  br i1 %cmp17.not.not, label %for.cond19.preheader, label %for.cond33.preheader, !llvm.loop !43

for.cond36.preheader:                             ; preds = %for.cond36.preheader.preheader, %for.cond36.for.inc64_crit_edge.split
  %indvars.iv102 = phi i64 [ 1, %for.cond36.preheader.preheader ], [ %indvars.iv.next103, %for.cond36.for.inc64_crit_edge.split ]
  br label %for.body38

for.body38:                                       ; preds = %for.cond36.preheader, %for.cond43.for.inc61_crit_edge
  %indvars.iv97 = phi i64 [ 1, %for.cond36.preheader ], [ %indvars.iv.next98, %for.cond43.for.inc61_crit_edge ]
  %arrayidx42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv102, i64 %indvars.iv97
  br i1 %min.iters.check, label %for.body45.preheader, label %vector.body

vector.body:                                      ; preds = %for.body38, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body38 ]
  %vec.phi = phi <4 x i32> [ %52, %vector.body ], [ zeroinitializer, %for.body38 ]
  %offset.idx = or disjoint i64 %index, 1
  %35 = or disjoint i64 %index, 2
  %36 = or disjoint i64 %index, 3
  %37 = add i64 %index, 4
  %38 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %38, align 4, !tbaa !5
  %39 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %offset.idx, i64 %indvars.iv97
  %40 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %35, i64 %indvars.iv97
  %41 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %36, i64 %indvars.iv97
  %42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %37, i64 %indvars.iv97
  %43 = load i32, ptr %39, align 4, !tbaa !5
  %44 = load i32, ptr %40, align 4, !tbaa !5
  %45 = load i32, ptr %41, align 4, !tbaa !5
  %46 = load i32, ptr %42, align 4, !tbaa !5
  %47 = insertelement <4 x i32> poison, i32 %43, i64 0
  %48 = insertelement <4 x i32> %47, i32 %44, i64 1
  %49 = insertelement <4 x i32> %48, i32 %45, i64 2
  %50 = insertelement <4 x i32> %49, i32 %46, i64 3
  %51 = mul nsw <4 x i32> %50, %wide.load
  %52 = add <4 x i32> %vec.phi, %51
  %index.next = add nuw i64 %index, 4
  %53 = icmp eq i64 %index.next, %n.vec
  br i1 %53, label %middle.block, label %vector.body, !llvm.loop !44

middle.block:                                     ; preds = %vector.body
  %54 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %52)
  br i1 %cmp.n, label %for.cond43.for.inc61_crit_edge, label %for.body45.preheader

for.body45.preheader:                             ; preds = %for.body38, %middle.block
  %indvars.iv94.ph = phi i64 [ 1, %for.body38 ], [ %26, %middle.block ]
  %add66.ph = phi i32 [ 0, %for.body38 ], [ %54, %middle.block ]
  br label %for.body45

for.body45:                                       ; preds = %for.body45.preheader, %for.body45
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.body45 ], [ %indvars.iv94.ph, %for.body45.preheader ]
  %add66 = phi i32 [ %add, %for.body45 ], [ %add66.ph, %for.body45.preheader ]
  %arrayidx49 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %indvars.iv94
  %55 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %arrayidx53 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv94, i64 %indvars.iv97
  %56 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %mul = mul nsw i32 %56, %55
  %add = add nsw i32 %add66, %mul
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next95, %wide.trip.count
  br i1 %exitcond.not, label %for.cond43.for.inc61_crit_edge, label %for.body45, !llvm.loop !47

for.cond43.for.inc61_crit_edge:                   ; preds = %for.body45, %middle.block
  %add.lcssa = phi i32 [ %54, %middle.block ], [ %add, %for.body45 ]
  store i32 %add.lcssa, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next98 = add nuw nsw i64 %indvars.iv97, 1
  %exitcond101.not = icmp eq i64 %indvars.iv.next98, %wide.trip.count100
  br i1 %exitcond101.not, label %for.cond36.for.inc64_crit_edge.split, label %for.body38, !llvm.loop !48

for.cond36.for.inc64_crit_edge.split:             ; preds = %for.cond43.for.inc61_crit_edge
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  %exitcond106.not = icmp eq i64 %indvars.iv.next103, %wide.trip.count105
  br i1 %exitcond106.not, label %for.body69.preheader, label %for.cond36.preheader, !llvm.loop !41

for.body69.preheader:                             ; preds = %for.cond36.for.inc64_crit_edge.split, %for.cond36.preheader.us71, %for.cond36.preheader.lr.ph
  br label %for.body69

for.body69:                                       ; preds = %for.body69.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit55
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit55 ], [ 1, %for.body69.preheader ]
  %arrayidx72 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv115, i64 1
  %57 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %57)
  %58 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp75.not75 = icmp slt i32 %58, 2
  br i1 %cmp75.not75, label %for.end85, label %for.body76

for.body76:                                       ; preds = %for.body69, %for.body76
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.body76 ], [ 2, %for.body69 ]
  %call1.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %arrayidx81 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv115, i64 %indvars.iv112
  %59 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %59)
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %60 = load i32, ptr %y2, align 4, !tbaa !5
  %61 = sext i32 %60 to i64
  %cmp75.not.not = icmp slt i64 %indvars.iv112, %61
  br i1 %cmp75.not.not, label %for.body76, label %for.end85, !llvm.loop !49

for.end85:                                        ; preds = %for.body76, %for.body69
  %vtable.i36 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !14
  %vbase.offset.ptr.i37 = getelementptr i8, ptr %vtable.i36, i64 -24
  %vbase.offset.i38 = load i64, ptr %vbase.offset.ptr.i37, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i38
  %62 = load ptr, ptr %gep, align 8, !tbaa !16
  %tobool.not.i.i.i41 = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i41, label %if.then.i.i.i54, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42

if.then.i.i.i54:                                  ; preds = %for.end85
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42: ; preds = %for.end85
  %_M_widen_ok.i.i.i43 = getelementptr inbounds nuw i8, ptr %62, i64 56
  %63 = load i8, ptr %_M_widen_ok.i.i.i43, align 8, !tbaa !34
  %tobool.not.i1.i.i44 = icmp eq i8 %63, 0
  br i1 %tobool.not.i1.i.i44, label %if.end.i.i.i50, label %if.then.i2.i.i45

if.then.i2.i.i45:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  %arrayidx.i.i.i46 = getelementptr inbounds nuw i8, ptr %62, i64 67
  %64 = load i8, ptr %arrayidx.i.i.i46, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit55

if.end.i.i.i50:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i42
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %62)
  %vtable.i.i.i51 = load ptr, ptr %62, align 8, !tbaa !14
  %vfn.i.i.i52 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i51, i64 48
  %65 = load ptr, ptr %vfn.i.i.i52, align 8
  %call.i.i.i53 = call noundef signext i8 %65(ptr noundef nonnull align 8 dereferenceable(570) %62, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit55

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit55: ; preds = %if.then.i2.i.i45, %if.end.i.i.i50
  %retval.0.i.i.i47 = phi i8 [ %64, %if.then.i2.i.i45 ], [ %call.i.i.i53, %if.end.i.i.i50 ]
  %call1.i48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i47)
  %call.i.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i48)
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %66 = load i32, ptr %x1, align 4, !tbaa !5
  %67 = sext i32 %66 to i64
  %cmp68.not.not = icmp slt i64 %indvars.iv115, %67
  br i1 %cmp68.not.not, label %for.body69, label %cleanup, !llvm.loop !50

cleanup:                                          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit55, %for.cond33.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!42 = distinct !{!42, !10, !11}
!43 = distinct !{!43, !10, !11, !13}
!44 = distinct !{!44, !10, !11, !45, !46}
!45 = !{!"llvm.loop.isvectorized", i32 1}
!46 = !{!"llvm.loop.unroll.runtime.disable"}
!47 = distinct !{!47, !10, !11, !45}
!48 = distinct !{!48, !10, !11}
!49 = distinct !{!49, !10, !11}
!50 = distinct !{!50, !10, !11}
