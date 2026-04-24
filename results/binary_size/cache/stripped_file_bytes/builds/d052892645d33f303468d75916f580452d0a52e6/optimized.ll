; ModuleID = '<stdin>'
source_filename = "/tmp/tmp58lbywnm.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  %c = alloca [110 x [110 x i32]], align 16
  %num = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 48400, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp38 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond101 = select i1 %cmp38, i1 %2, i1 false
  br i1 %or.cond101, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %8, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %9, %for.inc8 ], [ %1, %entry ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc8 ], [ 0, %entry ]
  %cmp335 = icmp sgt i32 %4, 0
  br i1 %cmp335, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %5 = load i32, ptr %num, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv66, i64 %indvars.iv
  store i32 %5, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %y1, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp3, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond2.preheader
  %8 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond2.preheader ]
  %9 = phi i32 [ %6, %for.inc8.loopexit ], [ %4, %for.cond2.preheader ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %10 = sext i32 %8 to i64
  %cmp = icmp slt i64 %indvars.iv.next67, %10
  br i1 %cmp, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %11 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1442 = icmp sgt i32 %11, 0
  %12 = load i32, ptr %y2, align 4
  %13 = icmp sgt i32 %12, 0
  %or.cond103 = select i1 %cmp1442, i1 %13, i1 false
  br i1 %or.cond103, label %for.cond16.preheader, label %for.cond30.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %14 = phi i32 [ %46, %for.inc27 ], [ %11, %for.end10 ]
  %15 = phi i32 [ %47, %for.inc27 ], [ %12, %for.end10 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc27 ], [ 0, %for.end10 ]
  %cmp1740 = icmp sgt i32 %15, 0
  br i1 %cmp1740, label %for.body18, label %for.inc27

for.cond30.preheader:                             ; preds = %for.inc27, %for.end10
  %16 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3148 = icmp sgt i32 %16, 0
  br i1 %cmp3148, label %for.cond33.preheader.lr.ph, label %for.end88

for.cond33.preheader.lr.ph:                       ; preds = %for.cond30.preheader
  %17 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3446 = icmp sgt i32 %17, 0
  %18 = load i32, ptr %y1, align 4
  br i1 %cmp3446, label %for.cond33.preheader.lr.ph.split.us, label %for.end88

for.cond33.preheader.lr.ph.split.us:              ; preds = %for.cond33.preheader.lr.ph
  %cmp3744 = icmp sgt i32 %18, 0
  br i1 %cmp3744, label %for.cond33.preheader.us.us.preheader, label %for.cond67.preheader.preheader

for.cond33.preheader.us.us.preheader:             ; preds = %for.cond33.preheader.lr.ph.split.us
  %wide.trip.count86 = zext nneg i32 %16 to i64
  %wide.trip.count81 = zext nneg i32 %17 to i64
  %wide.trip.count = zext nneg i32 %18 to i64
  %min.iters.check = icmp ult i32 %18, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond33.preheader.us.us

for.cond33.preheader.us.us:                       ; preds = %for.cond33.preheader.us.us.preheader, %for.cond33.for.inc61_crit_edge.split.us.us.us
  %indvars.iv83 = phi i64 [ 0, %for.cond33.preheader.us.us.preheader ], [ %indvars.iv.next84, %for.cond33.for.inc61_crit_edge.split.us.us.us ]
  br label %for.cond36.preheader.us.us.us

for.cond36.preheader.us.us.us:                    ; preds = %for.cond36.for.inc58_crit_edge.us.us.us, %for.cond33.preheader.us.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.cond36.for.inc58_crit_edge.us.us.us ], [ 0, %for.cond33.preheader.us.us ]
  %arrayidx50.us.us.us = getelementptr inbounds nuw [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv83, i64 %indvars.iv78
  %arrayidx50.promoted.us.us.us = load i32, ptr %arrayidx50.us.us.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body38.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond36.preheader.us.us.us
  %19 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx50.promoted.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %19, %vector.ph ], [ %37, %vector.body ]
  %20 = or disjoint i64 %index, 1
  %21 = or disjoint i64 %index, 2
  %22 = or disjoint i64 %index, 3
  %23 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %index
  %wide.load = load <4 x i32>, ptr %23, align 8, !tbaa !5
  %24 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv78
  %25 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %20, i64 %indvars.iv78
  %26 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %21, i64 %indvars.iv78
  %27 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %22, i64 %indvars.iv78
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = insertelement <4 x i32> poison, i32 %28, i64 0
  %33 = insertelement <4 x i32> %32, i32 %29, i64 1
  %34 = insertelement <4 x i32> %33, i32 %30, i64 2
  %35 = insertelement <4 x i32> %34, i32 %31, i64 3
  %36 = mul nsw <4 x i32> %35, %wide.load
  %37 = add <4 x i32> %36, %vec.phi
  %index.next = add nuw i64 %index, 4
  %38 = icmp eq i64 %index.next, %n.vec
  br i1 %38, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %37)
  br i1 %cmp.n, label %for.cond36.for.inc58_crit_edge.us.us.us, label %for.body38.us.us.us.preheader

for.body38.us.us.us.preheader:                    ; preds = %for.cond36.preheader.us.us.us, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %for.cond36.preheader.us.us.us ], [ %n.vec, %middle.block ]
  %.ph106 = phi i32 [ %arrayidx50.promoted.us.us.us, %for.cond36.preheader.us.us.us ], [ %39, %middle.block ]
  br label %for.body38.us.us.us

for.body38.us.us.us:                              ; preds = %for.body38.us.us.us.preheader, %for.body38.us.us.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body38.us.us.us ], [ %indvars.iv75.ph, %for.body38.us.us.us.preheader ]
  %40 = phi i32 [ %add.us.us.us, %for.body38.us.us.us ], [ %.ph106, %for.body38.us.us.us.preheader ]
  %arrayidx42.us.us.us = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv75
  %41 = load i32, ptr %arrayidx42.us.us.us, align 4, !tbaa !5
  %arrayidx46.us.us.us = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv75, i64 %indvars.iv78
  %42 = load i32, ptr %arrayidx46.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %42, %41
  %add.us.us.us = add nsw i32 %mul.us.us.us, %40
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %for.cond36.for.inc58_crit_edge.us.us.us, label %for.body38.us.us.us, !llvm.loop !17

for.cond36.for.inc58_crit_edge.us.us.us:          ; preds = %for.body38.us.us.us, %middle.block
  %add.us.us.us.lcssa = phi i32 [ %39, %middle.block ], [ %add.us.us.us, %for.body38.us.us.us ]
  store i32 %add.us.us.us.lcssa, ptr %arrayidx50.us.us.us, align 4, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond33.for.inc61_crit_edge.split.us.us.us, label %for.cond36.preheader.us.us.us, !llvm.loop !18

for.cond33.for.inc61_crit_edge.split.us.us.us:    ; preds = %for.cond36.for.inc58_crit_edge.us.us.us
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %for.cond64.preheader, label %for.cond33.preheader.us.us, !llvm.loop !19

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body18 ], [ 0, %for.cond16.preheader ]
  %call19 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %43 = load i32, ptr %num, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv72, i64 %indvars.iv69
  store i32 %43, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %44 = load i32, ptr %y2, align 4, !tbaa !5
  %45 = sext i32 %44 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next70, %45
  br i1 %cmp17, label %for.body18, label %for.inc27.loopexit, !llvm.loop !20

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre94 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %46 = phi i32 [ %.pre94, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %47 = phi i32 [ %44, %for.inc27.loopexit ], [ %15, %for.cond16.preheader ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %48 = sext i32 %46 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next73, %48
  br i1 %cmp14, label %for.cond16.preheader, label %for.cond30.preheader, !llvm.loop !21

for.cond64.preheader:                             ; preds = %for.cond33.for.inc61_crit_edge.split.us.us.us
  %.pr = load i32, ptr %y2, align 4
  %49 = icmp sgt i32 %.pr, 0
  br i1 %49, label %for.cond67.preheader.preheader, label %for.end88

for.cond67.preheader.preheader:                   ; preds = %for.cond64.preheader, %for.cond33.preheader.lr.ph.split.us
  %.ph = phi i32 [ %17, %for.cond33.preheader.lr.ph.split.us ], [ %.pr, %for.cond64.preheader ]
  br label %for.cond67.preheader

for.cond67.preheader:                             ; preds = %for.cond67.preheader.preheader, %for.inc86
  %50 = phi i32 [ %61, %for.inc86 ], [ %16, %for.cond67.preheader.preheader ]
  %51 = phi i32 [ %62, %for.inc86 ], [ %.ph, %for.cond67.preheader.preheader ]
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc86 ], [ 0, %for.cond67.preheader.preheader ]
  %cmp6856 = icmp sgt i32 %51, 0
  br i1 %cmp6856, label %for.body69, label %for.inc86

for.body69:                                       ; preds = %for.cond67.preheader, %for.inc83
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.inc83 ], [ 0, %for.cond67.preheader ]
  %52 = phi i32 [ %59, %for.inc83 ], [ %51, %for.cond67.preheader ]
  %sub = add nsw i32 %52, -1
  %53 = sext i32 %sub to i64
  %cmp70 = icmp slt i64 %indvars.iv88, %53
  %arrayidx74 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %c, i64 0, i64 %indvars.iv91, i64 %indvars.iv88
  %54 = load i32, ptr %arrayidx74, align 4, !tbaa !5
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %54)
  br i1 %cmp70, label %if.then, label %if.else

if.then:                                          ; preds = %for.body69
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc83

if.else:                                          ; preds = %for.body69
  %vtable.i = load ptr, ptr %call75, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call75, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %55 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %55, i64 56
  %56 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !42
  %tobool.not.i1.i.i = icmp eq i8 %56, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %55, i64 67
  %57 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !48
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %55)
  %vtable.i.i.i = load ptr, ptr %55, align 8, !tbaa !22
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %58 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %58(ptr noundef nonnull align 8 dereferenceable(570) %55, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %57, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call75, i8 noundef signext %retval.0.i.i.i)
  %call.i.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i33)
  br label %for.inc83

for.inc83:                                        ; preds = %if.then, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %59 = load i32, ptr %y2, align 4, !tbaa !5
  %60 = sext i32 %59 to i64
  %cmp68 = icmp slt i64 %indvars.iv.next89, %60
  br i1 %cmp68, label %for.body69, label %for.inc86.loopexit, !llvm.loop !49

for.inc86.loopexit:                               ; preds = %for.inc83
  %.pre95 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc86

for.inc86:                                        ; preds = %for.inc86.loopexit, %for.cond67.preheader
  %61 = phi i32 [ %.pre95, %for.inc86.loopexit ], [ %50, %for.cond67.preheader ]
  %62 = phi i32 [ %59, %for.inc86.loopexit ], [ %51, %for.cond67.preheader ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %63 = sext i32 %61 to i64
  %cmp65 = icmp slt i64 %indvars.iv.next92, %63
  br i1 %cmp65, label %for.cond67.preheader, label %for.end88, !llvm.loop !50

for.end88:                                        ; preds = %for.inc86, %for.cond33.preheader.lr.ph, %for.cond30.preheader, %for.cond64.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 48400, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11, !13}
!13 = !{!"llvm.loop.unswitch.partial.disable"}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11, !15}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11, !13}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{!25, !39, i64 240}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !26, i64 0, !36, i64 216, !7, i64 224, !37, i64 225, !38, i64 232, !39, i64 240, !40, i64 248, !41, i64 256}
!26 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !30, i64 40, !32, i64 48, !7, i64 64, !6, i64 192, !33, i64 200, !34, i64 208}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !31, i64 0}
!31 = !{!"any pointer", !7, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !31, i64 0, !27, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !31, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !31, i64 0}
!36 = !{!"p1 _ZTSSo", !31, i64 0}
!37 = !{!"bool", !7, i64 0}
!38 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !31, i64 0}
!39 = !{!"p1 _ZTSSt5ctypeIcE", !31, i64 0}
!40 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!41 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !31, i64 0}
!42 = !{!43, !7, i64 56}
!43 = !{!"_ZTSSt5ctypeIcE", !44, i64 0, !45, i64 16, !37, i64 24, !46, i64 32, !46, i64 40, !47, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!44 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!45 = !{!"p1 _ZTS15__locale_struct", !31, i64 0}
!46 = !{!"p1 int", !31, i64 0}
!47 = !{!"p1 short", !31, i64 0}
!48 = !{!7, !7, i64 0}
!49 = distinct !{!49, !10, !11}
!50 = distinct !{!50, !10, !11, !13}
