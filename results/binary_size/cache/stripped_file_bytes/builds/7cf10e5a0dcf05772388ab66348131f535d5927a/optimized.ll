; ModuleID = '<stdin>'
source_filename = "/tmp/tmpytywz7sd.cpp"
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
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %a, i8 0, i64 40804, i1 false)
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %b, i8 0, i64 40804, i1 false)
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %c, i8 0, i64 40804, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond99 = select i1 %cmp32, i1 %2, i1 false
  br i1 %or.cond99, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv63 = phi i64 [ %indvars.iv.next64, %for.inc8 ], [ 0, %entry ]
  %cmp329 = icmp sgt i32 %4, 0
  br i1 %cmp329, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv63, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp3, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond2.preheader
  %7 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond2.preheader ]
  %8 = phi i32 [ %5, %for.inc8.loopexit ], [ %4, %for.cond2.preheader ]
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next64, %9
  br i1 %cmp, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1436 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond101 = select i1 %cmp1436, i1 %12, i1 false
  br i1 %or.cond101, label %for.cond16.preheader, label %for.cond30.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %43, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %44, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.inc27 ], [ 0, %for.end10 ]
  %cmp1734 = icmp sgt i32 %14, 0
  br i1 %cmp1734, label %for.body18, label %for.inc27

for.cond30.preheader:                             ; preds = %for.inc27, %for.end10
  %.lcssa = phi i32 [ %10, %for.end10 ], [ %43, %for.inc27 ]
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3142 = icmp sgt i32 %15, 0
  br i1 %cmp3142, label %for.cond33.preheader.lr.ph, label %for.end84

for.cond33.preheader.lr.ph:                       ; preds = %for.cond30.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3440 = icmp sgt i32 %16, 0
  %cmp3738 = icmp sgt i32 %.lcssa, 0
  %or.cond = and i1 %cmp3440, %cmp3738
  br i1 %or.cond, label %for.cond33.preheader.us.us.preheader, label %for.cond63.preheader.preheader

for.cond63.preheader.preheader:                   ; preds = %for.cond33.for.inc57_crit_edge.split.us.us.us, %for.cond33.preheader.lr.ph
  br label %for.cond63.preheader

for.cond33.preheader.us.us.preheader:             ; preds = %for.cond33.preheader.lr.ph
  %wide.trip.count83 = zext nneg i32 %15 to i64
  %wide.trip.count78 = zext nneg i32 %16 to i64
  %wide.trip.count = zext nneg i32 %.lcssa to i64
  %min.iters.check = icmp ult i32 %.lcssa, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond33.preheader.us.us

for.cond33.preheader.us.us:                       ; preds = %for.cond33.preheader.us.us.preheader, %for.cond33.for.inc57_crit_edge.split.us.us.us
  %indvars.iv80 = phi i64 [ 0, %for.cond33.preheader.us.us.preheader ], [ %indvars.iv.next81, %for.cond33.for.inc57_crit_edge.split.us.us.us ]
  br label %for.cond36.preheader.us.us.us

for.cond36.preheader.us.us.us:                    ; preds = %for.cond36.for.inc54_crit_edge.us.us.us, %for.cond33.preheader.us.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.cond36.for.inc54_crit_edge.us.us.us ], [ 0, %for.cond33.preheader.us.us ]
  %arrayidx50.us.us.us = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv80, i64 %indvars.iv75
  %arrayidx50.promoted.us.us.us = load i32, ptr %arrayidx50.us.us.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body38.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond36.preheader.us.us.us
  %17 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx50.promoted.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %17, %vector.ph ], [ %35, %vector.body ]
  %18 = or disjoint i64 %index, 1
  %19 = or disjoint i64 %index, 2
  %20 = or disjoint i64 %index, 3
  %21 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv80, i64 %index
  %wide.load = load <4 x i32>, ptr %21, align 4, !tbaa !5
  %22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv75
  %23 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %18, i64 %indvars.iv75
  %24 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %19, i64 %indvars.iv75
  %25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %20, i64 %indvars.iv75
  %26 = load i32, ptr %22, align 4, !tbaa !5
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = insertelement <4 x i32> poison, i32 %26, i64 0
  %31 = insertelement <4 x i32> %30, i32 %27, i64 1
  %32 = insertelement <4 x i32> %31, i32 %28, i64 2
  %33 = insertelement <4 x i32> %32, i32 %29, i64 3
  %34 = mul nsw <4 x i32> %33, %wide.load
  %35 = add <4 x i32> %vec.phi, %34
  %index.next = add nuw i64 %index, 4
  %36 = icmp eq i64 %index.next, %n.vec
  br i1 %36, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %37 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %35)
  br i1 %cmp.n, label %for.cond36.for.inc54_crit_edge.us.us.us, label %for.body38.us.us.us.preheader

for.body38.us.us.us.preheader:                    ; preds = %for.cond36.preheader.us.us.us, %middle.block
  %indvars.iv72.ph = phi i64 [ 0, %for.cond36.preheader.us.us.us ], [ %n.vec, %middle.block ]
  %.ph = phi i32 [ %arrayidx50.promoted.us.us.us, %for.cond36.preheader.us.us.us ], [ %37, %middle.block ]
  br label %for.body38.us.us.us

for.body38.us.us.us:                              ; preds = %for.body38.us.us.us.preheader, %for.body38.us.us.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.body38.us.us.us ], [ %indvars.iv72.ph, %for.body38.us.us.us.preheader ]
  %38 = phi i32 [ %add.us.us.us, %for.body38.us.us.us ], [ %.ph, %for.body38.us.us.us.preheader ]
  %arrayidx42.us.us.us = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv80, i64 %indvars.iv72
  %39 = load i32, ptr %arrayidx42.us.us.us, align 4, !tbaa !5
  %arrayidx46.us.us.us = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv72, i64 %indvars.iv75
  %40 = load i32, ptr %arrayidx46.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %40, %39
  %add.us.us.us = add nsw i32 %38, %mul.us.us.us
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count
  br i1 %exitcond.not, label %for.cond36.for.inc54_crit_edge.us.us.us, label %for.body38.us.us.us, !llvm.loop !17

for.cond36.for.inc54_crit_edge.us.us.us:          ; preds = %for.body38.us.us.us, %middle.block
  %add.us.us.us.lcssa = phi i32 [ %37, %middle.block ], [ %add.us.us.us, %for.body38.us.us.us ]
  store i32 %add.us.us.us.lcssa, ptr %arrayidx50.us.us.us, align 4, !tbaa !5
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond79.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count78
  br i1 %exitcond79.not, label %for.cond33.for.inc57_crit_edge.split.us.us.us, label %for.cond36.preheader.us.us.us, !llvm.loop !18

for.cond33.for.inc57_crit_edge.split.us.us.us:    ; preds = %for.cond36.for.inc54_crit_edge.us.us.us
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond63.preheader.preheader, label %for.cond33.preheader.us.us, !llvm.loop !19

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.body18 ], [ 0, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv69, i64 %indvars.iv66
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %41 = load i32, ptr %y2, align 4, !tbaa !5
  %42 = sext i32 %41 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next67, %42
  br i1 %cmp17, label %for.body18, label %for.inc27.loopexit, !llvm.loop !20

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre91 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %43 = phi i32 [ %.pre91, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %44 = phi i32 [ %41, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %45 = sext i32 %43 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next70, %45
  br i1 %cmp14, label %for.cond16.preheader, label %for.cond30.preheader, !llvm.loop !21

for.cond63.preheader:                             ; preds = %for.cond63.preheader.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %for.cond63.preheader.preheader ]
  %46 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp6451 = icmp sgt i32 %46, 1
  br i1 %cmp6451, label %for.body65, label %for.cond63.preheader.for.end74_crit_edge

for.cond63.preheader.for.end74_crit_edge:         ; preds = %for.cond63.preheader
  %sub50 = add nsw i32 %46, -1
  %.pre92 = sext i32 %sub50 to i64
  br label %for.end74

for.body65:                                       ; preds = %for.cond63.preheader, %for.body65
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %for.body65 ], [ 0, %for.cond63.preheader ]
  %arrayidx69 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv88, i64 %indvars.iv85
  %47 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %47)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call70, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  %48 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %48, -1
  %49 = sext i32 %sub to i64
  %cmp64 = icmp slt i64 %indvars.iv.next86, %49
  br i1 %cmp64, label %for.body65, label %for.end74, !llvm.loop !22

for.end74:                                        ; preds = %for.body65, %for.cond63.preheader.for.end74_crit_edge
  %idxprom78.pre-phi = phi i64 [ %.pre92, %for.cond63.preheader.for.end74_crit_edge ], [ %49, %for.body65 ]
  %arrayidx79 = getelementptr inbounds [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv88, i64 %idxprom78.pre-phi
  %50 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %call80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %50)
  %vtable.i = load ptr, ptr %call80, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call80, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %51 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !25
  %tobool.not.i.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end74
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end74
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 56
  %52 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !43
  %tobool.not.i1.i.i = icmp eq i8 %52, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %51, i64 67
  %53 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !49
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %51)
  %vtable.i.i.i = load ptr, ptr %51, align 8, !tbaa !23
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %54 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %54(ptr noundef nonnull align 8 dereferenceable(570) %51, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %53, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i27 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call80, i8 noundef signext %retval.0.i.i.i)
  %call.i.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i27)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %55 = load i32, ptr %x1, align 4, !tbaa !5
  %56 = sext i32 %55 to i64
  %cmp61 = icmp slt i64 %indvars.iv.next89, %56
  br i1 %cmp61, label %for.cond63.preheader, label %for.end84, !llvm.loop !50

for.end84:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.cond30.preheader
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
!22 = distinct !{!22, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !8, i64 0}
!25 = !{!26, !40, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !37, i64 216, !7, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !33, i64 48, !7, i64 64, !6, i64 192, !34, i64 200, !35, i64 208}
!28 = !{!"long", !7, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !32, i64 0}
!32 = !{!"any pointer", !7, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !32, i64 0, !28, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !32, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !32, i64 0}
!37 = !{!"p1 _ZTSSo", !32, i64 0}
!38 = !{!"bool", !7, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !32, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!43 = !{!44, !7, i64 56}
!44 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !38, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!45 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !32, i64 0}
!47 = !{!"p1 int", !32, i64 0}
!48 = !{!"p1 short", !32, i64 0}
!49 = !{!7, !7, i64 0}
!50 = distinct !{!50, !10, !11}
