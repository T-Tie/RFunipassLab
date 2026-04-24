; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4tlus25y.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp35, i1 %2, i1 false
  br i1 %or.cond, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.inc8 ], [ 0, %entry ]
  %cmp333 = icmp sgt i32 %4, 0
  br i1 %cmp333, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv65, i64 %indvars.iv
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
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next66, %9
  br i1 %cmp, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1439 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond107 = select i1 %cmp1439, i1 %12, i1 false
  br i1 %or.cond107, label %for.cond16.preheader, label %for.cond30.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %45, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %46, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.inc27 ], [ 0, %for.end10 ]
  %cmp1737 = icmp sgt i32 %14, 0
  br i1 %cmp1737, label %for.body18, label %for.inc27

for.cond30.preheader:                             ; preds = %for.inc27, %for.end10
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3146 = icmp sgt i32 %15, 0
  br i1 %cmp3146, label %for.cond33.preheader.lr.ph, label %for.end86

for.cond33.preheader.lr.ph:                       ; preds = %for.cond30.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3444 = icmp sgt i32 %16, 0
  %17 = load i32, ptr %y1, align 4
  br i1 %cmp3444, label %for.cond33.preheader.lr.ph.split.us, label %for.body66.preheader

for.body66.preheader:                             ; preds = %for.cond33.preheader.us, %for.cond33.for.inc61_crit_edge.split.us.us.us, %for.cond33.preheader.lr.ph
  br label %for.body66

for.cond33.preheader.lr.ph.split.us:              ; preds = %for.cond33.preheader.lr.ph
  %cmp4141 = icmp sgt i32 %17, 0
  br i1 %cmp4141, label %for.cond33.preheader.us.us.preheader, label %for.cond33.preheader.us.preheader

for.cond33.preheader.us.preheader:                ; preds = %for.cond33.preheader.lr.ph.split.us
  %18 = zext nneg i32 %16 to i64
  %19 = shl nuw nsw i64 %18, 2
  %wide.trip.count = zext nneg i32 %15 to i64
  br label %for.cond33.preheader.us

for.cond33.preheader.us.us.preheader:             ; preds = %for.cond33.preheader.lr.ph.split.us
  %wide.trip.count94 = zext nneg i32 %15 to i64
  %wide.trip.count89 = zext nneg i32 %16 to i64
  %wide.trip.count81 = zext nneg i32 %17 to i64
  %min.iters.check = icmp ult i32 %17, 4
  %n.vec = and i64 %wide.trip.count81, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count81
  br label %for.cond33.preheader.us.us

for.cond33.preheader.us.us:                       ; preds = %for.cond33.preheader.us.us.preheader, %for.cond33.for.inc61_crit_edge.split.us.us.us
  %indvars.iv91 = phi i64 [ 0, %for.cond33.preheader.us.us.preheader ], [ %indvars.iv.next92, %for.cond33.for.inc61_crit_edge.split.us.us.us ]
  br label %for.body35.us.us.us

for.body35.us.us.us:                              ; preds = %for.cond40.for.inc58_crit_edge.us.us.us, %for.cond33.preheader.us.us
  %indvars.iv86 = phi i64 [ %indvars.iv.next87, %for.cond40.for.inc58_crit_edge.us.us.us ], [ 0, %for.cond33.preheader.us.us ]
  %arrayidx39.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv91, i64 %indvars.iv86
  br i1 %min.iters.check, label %for.body42.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.body35.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body35.us.us.us ]
  %vec.phi = phi <4 x i32> [ %37, %vector.body ], [ zeroinitializer, %for.body35.us.us.us ]
  %20 = or disjoint i64 %index, 1
  %21 = or disjoint i64 %index, 2
  %22 = or disjoint i64 %index, 3
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv91, i64 %index
  %wide.load = load <4 x i32>, ptr %23, align 16, !tbaa !5
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv86
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %20, i64 %indvars.iv86
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %21, i64 %indvars.iv86
  %27 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %22, i64 %indvars.iv86
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = insertelement <4 x i32> poison, i32 %28, i64 0
  %33 = insertelement <4 x i32> %32, i32 %29, i64 1
  %34 = insertelement <4 x i32> %33, i32 %30, i64 2
  %35 = insertelement <4 x i32> %34, i32 %31, i64 3
  %36 = mul nsw <4 x i32> %35, %wide.load
  %37 = add <4 x i32> %vec.phi, %36
  %index.next = add nuw i64 %index, 4
  %38 = icmp eq i64 %index.next, %n.vec
  br i1 %38, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %37)
  br i1 %cmp.n, label %for.cond40.for.inc58_crit_edge.us.us.us, label %for.body42.us.us.us.preheader

for.body42.us.us.us.preheader:                    ; preds = %for.body35.us.us.us, %middle.block
  %indvars.iv78.ph = phi i64 [ 0, %for.body35.us.us.us ], [ %n.vec, %middle.block ]
  %add43.us.us.us.ph = phi i32 [ 0, %for.body35.us.us.us ], [ %39, %middle.block ]
  br label %for.body42.us.us.us

for.body42.us.us.us:                              ; preds = %for.body42.us.us.us.preheader, %for.body42.us.us.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.body42.us.us.us ], [ %indvars.iv78.ph, %for.body42.us.us.us.preheader ]
  %add43.us.us.us = phi i32 [ %add.us.us.us, %for.body42.us.us.us ], [ %add43.us.us.us.ph, %for.body42.us.us.us.preheader ]
  %arrayidx46.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv91, i64 %indvars.iv78
  %40 = load i32, ptr %arrayidx46.us.us.us, align 4, !tbaa !5
  %arrayidx50.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv78, i64 %indvars.iv86
  %41 = load i32, ptr %arrayidx50.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %41, %40
  %add.us.us.us = add nsw i32 %add43.us.us.us, %mul.us.us.us
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond40.for.inc58_crit_edge.us.us.us, label %for.body42.us.us.us, !llvm.loop !17

for.cond40.for.inc58_crit_edge.us.us.us:          ; preds = %for.body42.us.us.us, %middle.block
  %add.us.us.us.lcssa = phi i32 [ %39, %middle.block ], [ %add.us.us.us, %for.body42.us.us.us ]
  store i32 %add.us.us.us.lcssa, ptr %arrayidx39.us.us.us, align 4, !tbaa !5
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %for.cond33.for.inc61_crit_edge.split.us.us.us, label %for.body35.us.us.us, !llvm.loop !18

for.cond33.for.inc61_crit_edge.split.us.us.us:    ; preds = %for.cond40.for.inc58_crit_edge.us.us.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %exitcond95.not = icmp eq i64 %indvars.iv.next92, %wide.trip.count94
  br i1 %exitcond95.not, label %for.body66.preheader, label %for.cond33.preheader.us.us, !llvm.loop !19

for.cond33.preheader.us:                          ; preds = %for.cond33.preheader.us.preheader, %for.cond33.preheader.us
  %indvar = phi i64 [ 0, %for.cond33.preheader.us.preheader ], [ %indvar.next, %for.cond33.preheader.us ]
  %42 = mul nuw nsw i64 %indvar, 400
  %scevgep = getelementptr nuw i8, ptr %c, i64 %42
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %scevgep, i8 0, i64 %19, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body66.preheader, label %for.cond33.preheader.us, !llvm.loop !19

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.body18 ], [ 0, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv71, i64 %indvars.iv68
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %43 = load i32, ptr %y2, align 4, !tbaa !5
  %44 = sext i32 %43 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next69, %44
  br i1 %cmp17, label %for.body18, label %for.inc27.loopexit, !llvm.loop !20

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre102 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %45 = phi i32 [ %.pre102, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %46 = phi i32 [ %43, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %47 = sext i32 %45 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next72, %47
  br i1 %cmp14, label %for.cond16.preheader, label %for.cond30.preheader, !llvm.loop !21

for.body66:                                       ; preds = %for.body66.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %for.body66.preheader ]
  %arrayidx68 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv99
  %48 = load i32, ptr %arrayidx68, align 16, !tbaa !5
  %call70 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %48)
  %49 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp7256 = icmp sgt i32 %49, 1
  br i1 %cmp7256, label %for.body73, label %for.end82

for.body73:                                       ; preds = %for.body66, %for.body73
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.body73 ], [ 1, %for.body66 ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %arrayidx78 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv99, i64 %indvars.iv96
  %50 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %call79 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %50)
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  %51 = load i32, ptr %y2, align 4, !tbaa !5
  %52 = sext i32 %51 to i64
  %cmp72 = icmp slt i64 %indvars.iv.next97, %52
  br i1 %cmp72, label %for.body73, label %for.end82, !llvm.loop !22

for.end82:                                        ; preds = %for.body73, %for.body66
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %53 = load ptr, ptr %gep, align 8, !tbaa !25
  %tobool.not.i.i.i = icmp eq ptr %53, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end82
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end82
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %53, i64 56
  %54 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !43
  %tobool.not.i1.i.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %53, i64 67
  %55 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !49
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %53)
  %vtable.i.i.i = load ptr, ptr %53, align 8, !tbaa !23
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %56 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %56(ptr noundef nonnull align 8 dereferenceable(570) %53, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %55, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i31)
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %57 = load i32, ptr %x1, align 4, !tbaa !5
  %58 = sext i32 %57 to i64
  %cmp65 = icmp slt i64 %indvars.iv.next100, %58
  br i1 %cmp65, label %for.body66, label %for.end86, !llvm.loop !50

for.end86:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.cond30.preheader
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
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
