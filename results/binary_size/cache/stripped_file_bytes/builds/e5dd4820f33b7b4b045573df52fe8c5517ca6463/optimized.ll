; ModuleID = '<stdin>'
source_filename = "/tmp/tmplofgx5q9.cpp"
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
  %__c.addr.i38 = alloca i8, align 1
  %__c.addr.i = alloca i8, align 1
  %a = alloca [100 x [100 x i32]], align 16
  %b = alloca [100 x [100 x i32]], align 16
  %c = alloca [100 x [100 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp78 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp78, i1 %2, i1 false
  br i1 %or.cond, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv112 = phi i64 [ %indvars.iv.next113, %for.inc8 ], [ 0, %entry ]
  %cmp376 = icmp sgt i32 %4, 0
  br i1 %cmp376, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv112, i64 %indvars.iv
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
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next113, %9
  br i1 %cmp, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1482 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond155 = select i1 %cmp1482, i1 %12, i1 false
  br i1 %or.cond155, label %for.cond16.preheader, label %for.cond30.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %44, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %45, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv118 = phi i64 [ %indvars.iv.next119, %for.inc27 ], [ 0, %for.end10 ]
  %cmp1780 = icmp sgt i32 %14, 0
  br i1 %cmp1780, label %for.body18, label %for.inc27

for.cond30.preheader:                             ; preds = %for.inc27, %for.end10
  %.lcssa = phi i32 [ %10, %for.end10 ], [ %44, %for.inc27 ]
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3190 = icmp sgt i32 %15, 0
  br i1 %cmp3190, label %for.cond33.preheader.lr.ph, label %for.end104

for.cond33.preheader.lr.ph:                       ; preds = %for.cond30.preheader
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3488 = icmp sgt i32 %16, 0
  br i1 %cmp3488, label %for.cond33.preheader.lr.ph.split.us, label %for.end104

for.cond33.preheader.lr.ph.split.us:              ; preds = %for.cond33.preheader.lr.ph
  %cmp3784 = icmp sgt i32 %.lcssa, 0
  br i1 %cmp3784, label %for.cond33.preheader.us.us.preheader, label %for.cond33.preheader.us.preheader

for.cond33.preheader.us.preheader:                ; preds = %for.cond33.preheader.lr.ph.split.us
  %17 = zext nneg i32 %16 to i64
  %18 = shl nuw nsw i64 %17, 2
  %wide.trip.count = zext nneg i32 %15 to i64
  br label %for.cond33.preheader.us

for.cond33.preheader.us.us.preheader:             ; preds = %for.cond33.preheader.lr.ph.split.us
  %wide.trip.count138 = zext nneg i32 %15 to i64
  %wide.trip.count133 = zext nneg i32 %16 to i64
  %wide.trip.count128 = zext nneg i32 %.lcssa to i64
  %min.iters.check = icmp ult i32 %.lcssa, 4
  %n.vec = and i64 %wide.trip.count128, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count128
  br label %for.cond33.preheader.us.us

for.cond33.preheader.us.us:                       ; preds = %for.cond33.preheader.us.us.preheader, %for.cond33.for.inc57_crit_edge.split.us.us.us
  %indvars.iv135 = phi i64 [ 0, %for.cond33.preheader.us.us.preheader ], [ %indvars.iv.next136, %for.cond33.for.inc57_crit_edge.split.us.us.us ]
  br label %for.cond36.preheader.us.us.us

for.cond36.preheader.us.us.us:                    ; preds = %for.cond36.for.end49_crit_edge.us.us.us, %for.cond33.preheader.us.us
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.cond36.for.end49_crit_edge.us.us.us ], [ 0, %for.cond33.preheader.us.us ]
  br i1 %min.iters.check, label %for.body38.us.us.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond36.preheader.us.us.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond36.preheader.us.us.us ]
  %vec.phi = phi <4 x i32> [ %36, %vector.body ], [ zeroinitializer, %for.cond36.preheader.us.us.us ]
  %19 = or disjoint i64 %index, 1
  %20 = or disjoint i64 %index, 2
  %21 = or disjoint i64 %index, 3
  %22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv135, i64 %index
  %wide.load = load <4 x i32>, ptr %22, align 16, !tbaa !5
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv130
  %24 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %19, i64 %indvars.iv130
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %20, i64 %indvars.iv130
  %26 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %21, i64 %indvars.iv130
  %27 = load i32, ptr %23, align 4, !tbaa !5
  %28 = load i32, ptr %24, align 4, !tbaa !5
  %29 = load i32, ptr %25, align 4, !tbaa !5
  %30 = load i32, ptr %26, align 4, !tbaa !5
  %31 = insertelement <4 x i32> poison, i32 %27, i64 0
  %32 = insertelement <4 x i32> %31, i32 %28, i64 1
  %33 = insertelement <4 x i32> %32, i32 %29, i64 2
  %34 = insertelement <4 x i32> %33, i32 %30, i64 3
  %35 = mul nsw <4 x i32> %34, %wide.load
  %36 = add <4 x i32> %35, %vec.phi
  %index.next = add nuw i64 %index, 4
  %37 = icmp eq i64 %index.next, %n.vec
  br i1 %37, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %38 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %36)
  br i1 %cmp.n, label %for.cond36.for.end49_crit_edge.us.us.us, label %for.body38.us.us.us.preheader

for.body38.us.us.us.preheader:                    ; preds = %for.cond36.preheader.us.us.us, %middle.block
  %indvars.iv125.ph = phi i64 [ 0, %for.cond36.preheader.us.us.us ], [ %n.vec, %middle.block ]
  %sum.285.us.us.us.ph = phi i32 [ 0, %for.cond36.preheader.us.us.us ], [ %38, %middle.block ]
  br label %for.body38.us.us.us

for.body38.us.us.us:                              ; preds = %for.body38.us.us.us.preheader, %for.body38.us.us.us
  %indvars.iv125 = phi i64 [ %indvars.iv.next126, %for.body38.us.us.us ], [ %indvars.iv125.ph, %for.body38.us.us.us.preheader ]
  %sum.285.us.us.us = phi i32 [ %add.us.us.us, %for.body38.us.us.us ], [ %sum.285.us.us.us.ph, %for.body38.us.us.us.preheader ]
  %arrayidx42.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv135, i64 %indvars.iv125
  %39 = load i32, ptr %arrayidx42.us.us.us, align 4, !tbaa !5
  %arrayidx46.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv125, i64 %indvars.iv130
  %40 = load i32, ptr %arrayidx46.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %40, %39
  %add.us.us.us = add nsw i32 %mul.us.us.us, %sum.285.us.us.us
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond129.not = icmp eq i64 %indvars.iv.next126, %wide.trip.count128
  br i1 %exitcond129.not, label %for.cond36.for.end49_crit_edge.us.us.us, label %for.body38.us.us.us, !llvm.loop !17

for.cond36.for.end49_crit_edge.us.us.us:          ; preds = %for.body38.us.us.us, %middle.block
  %add.us.us.us.lcssa = phi i32 [ %38, %middle.block ], [ %add.us.us.us, %for.body38.us.us.us ]
  %arrayidx53.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv135, i64 %indvars.iv130
  store i32 %add.us.us.us.lcssa, ptr %arrayidx53.us.us.us, align 4, !tbaa !5
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next131, %wide.trip.count133
  br i1 %exitcond134.not, label %for.cond33.for.inc57_crit_edge.split.us.us.us, label %for.cond36.preheader.us.us.us, !llvm.loop !18

for.cond33.for.inc57_crit_edge.split.us.us.us:    ; preds = %for.cond36.for.end49_crit_edge.us.us.us
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %for.cond60.preheader, label %for.cond33.preheader.us.us, !llvm.loop !19

for.cond33.preheader.us:                          ; preds = %for.cond33.preheader.us.preheader, %for.cond33.preheader.us
  %indvar = phi i64 [ 0, %for.cond33.preheader.us.preheader ], [ %indvar.next, %for.cond33.preheader.us ]
  %41 = mul nuw nsw i64 %indvar, 400
  %scevgep = getelementptr nuw i8, ptr %c, i64 %41
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %scevgep, i8 0, i64 %18, i1 false), !tbaa !5
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond.not = icmp eq i64 %indvar.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond63.preheader.lr.ph, label %for.cond33.preheader.us, !llvm.loop !19

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %for.body18 ], [ 0, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv118, i64 %indvars.iv115
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  %42 = load i32, ptr %y2, align 4, !tbaa !5
  %43 = sext i32 %42 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next116, %43
  br i1 %cmp17, label %for.body18, label %for.inc27.loopexit, !llvm.loop !20

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre146 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %44 = phi i32 [ %.pre146, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %45 = phi i32 [ %42, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next119 = add nuw nsw i64 %indvars.iv118, 1
  %46 = sext i32 %44 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next119, %46
  br i1 %cmp14, label %for.cond16.preheader, label %for.cond30.preheader, !llvm.loop !21

for.cond60.preheader:                             ; preds = %for.cond33.for.inc57_crit_edge.split.us.us.us
  %.pr = load i32, ptr %y2, align 4
  %47 = icmp sgt i32 %.pr, 0
  br i1 %47, label %for.cond63.preheader.preheader, label %for.end104

for.cond63.preheader.lr.ph:                       ; preds = %for.cond33.preheader.us
  %.pr.old = load i32, ptr %y2, align 4, !tbaa !5
  %.old = icmp sgt i32 %.pr.old, 0
  br i1 %.old, label %for.cond63.preheader.preheader, label %for.end104

for.cond63.preheader.preheader:                   ; preds = %for.cond63.preheader.lr.ph, %for.cond60.preheader
  %.ph = phi i32 [ %.pr, %for.cond60.preheader ], [ %.pr.old, %for.cond63.preheader.lr.ph ]
  br label %for.cond63.preheader

for.cond63.preheader:                             ; preds = %for.cond63.preheader.preheader, %for.inc102
  %48 = phi i32 [ %67, %for.inc102 ], [ %15, %for.cond63.preheader.preheader ]
  %49 = phi i32 [ %68, %for.inc102 ], [ %.ph, %for.cond63.preheader.preheader ]
  %indvars.iv143 = phi i64 [ %indvars.iv.next144, %for.inc102 ], [ 0, %for.cond63.preheader.preheader ]
  %cmp64101 = icmp sgt i32 %49, 0
  br i1 %cmp64101, label %for.body65.lr.ph, label %for.inc102

for.body65.lr.ph:                                 ; preds = %for.cond63.preheader
  %arrayidx76 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv143
  br label %for.body65

for.body65:                                       ; preds = %for.body65.lr.ph, %for.inc99
  %indvars.iv140 = phi i64 [ 0, %for.body65.lr.ph ], [ %indvars.iv.next141, %for.inc99 ]
  %50 = phi i32 [ %49, %for.body65.lr.ph ], [ %65, %for.inc99 ]
  %cmp66 = icmp eq i64 %indvars.iv140, 0
  br i1 %cmp66, label %if.then, label %if.else80

if.then:                                          ; preds = %for.body65
  %cmp67 = icmp eq i32 %50, 1
  %51 = load i32, ptr %arrayidx76, align 16, !tbaa !5
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %51)
  br i1 %cmp67, label %if.then68, label %for.inc99

if.then68:                                        ; preds = %if.then
  %vtable.i51 = load ptr, ptr %call73, align 8, !tbaa !22
  %vbase.offset.ptr.i52 = getelementptr i8, ptr %vtable.i51, i64 -24
  %vbase.offset.i53 = load i64, ptr %vbase.offset.ptr.i52, align 8
  %add.ptr.i54 = getelementptr inbounds i8, ptr %call73, i64 %vbase.offset.i53
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i54, i64 240
  %52 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then68
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then68
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %52, i64 56
  %53 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !42
  %tobool.not.i1.i.i = icmp eq i8 %53, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %52, i64 67
  %54 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !48
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %52)
  %vtable.i.i.i = load ptr, ptr %52, align 8, !tbaa !22
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %55 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %55(ptr noundef nonnull align 8 dereferenceable(570) %52, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %54, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call73, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i55)
  br label %for.inc99

if.else80:                                        ; preds = %for.body65
  %sub = add nsw i32 %50, -1
  %56 = zext i32 %sub to i64
  %cmp81 = icmp eq i64 %indvars.iv140, %56
  br i1 %cmp81, label %if.then82, label %if.else90

if.then82:                                        ; preds = %if.else80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !48
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep100 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %57 = load i64, ptr %gep100, align 8, !tbaa !49
  %cmp.not.i = icmp eq i64 %57, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then82
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then82
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %arrayidx87 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv143, i64 %indvars.iv140
  %58 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %58)
  %vtable.i56 = load ptr, ptr %call88, align 8, !tbaa !22
  %vbase.offset.ptr.i57 = getelementptr i8, ptr %vtable.i56, i64 -24
  %vbase.offset.i58 = load i64, ptr %vbase.offset.ptr.i57, align 8
  %add.ptr.i59 = getelementptr inbounds i8, ptr %call88, i64 %vbase.offset.i58
  %_M_ctype.i.i60 = getelementptr inbounds nuw i8, ptr %add.ptr.i59, i64 240
  %59 = load ptr, ptr %_M_ctype.i.i60, align 8, !tbaa !24
  %tobool.not.i.i.i61 = icmp eq ptr %59, null
  br i1 %tobool.not.i.i.i61, label %if.then.i.i.i74, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62

if.then.i.i.i74:                                  ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62: ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %_M_widen_ok.i.i.i63 = getelementptr inbounds nuw i8, ptr %59, i64 56
  %60 = load i8, ptr %_M_widen_ok.i.i.i63, align 8, !tbaa !42
  %tobool.not.i1.i.i64 = icmp eq i8 %60, 0
  br i1 %tobool.not.i1.i.i64, label %if.end.i.i.i70, label %if.then.i2.i.i65

if.then.i2.i.i65:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62
  %arrayidx.i.i.i66 = getelementptr inbounds nuw i8, ptr %59, i64 67
  %61 = load i8, ptr %arrayidx.i.i.i66, align 1, !tbaa !48
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit75

if.end.i.i.i70:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i62
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %59)
  %vtable.i.i.i71 = load ptr, ptr %59, align 8, !tbaa !22
  %vfn.i.i.i72 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i71, i64 48
  %62 = load ptr, ptr %vfn.i.i.i72, align 8
  %call.i.i.i73 = call noundef signext i8 %62(ptr noundef nonnull align 8 dereferenceable(570) %59, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit75

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit75: ; preds = %if.then.i2.i.i65, %if.end.i.i.i70
  %retval.0.i.i.i67 = phi i8 [ %61, %if.then.i2.i.i65 ], [ %call.i.i.i73, %if.end.i.i.i70 ]
  %call1.i68 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call88, i8 noundef signext %retval.0.i.i.i67)
  %call.i.i69 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i68)
  br label %for.inc99

if.else90:                                        ; preds = %if.else80
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i38)
  store i8 32, ptr %__c.addr.i38, align 1, !tbaa !48
  %vtable.i39 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !22
  %vbase.offset.ptr.i40 = getelementptr i8, ptr %vtable.i39, i64 -24
  %vbase.offset.i41 = load i64, ptr %vbase.offset.ptr.i40, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i41
  %63 = load i64, ptr %gep, align 8, !tbaa !49
  %cmp.not.i44 = icmp eq i64 %63, 0
  br i1 %cmp.not.i44, label %if.end.i48, label %if.then.i45

if.then.i45:                                      ; preds = %if.else90
  %call1.i46 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i38, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

if.end.i48:                                       ; preds = %if.else90
  %call2.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50: ; preds = %if.then.i45, %if.end.i48
  %retval.0.i47 = phi ptr [ %call1.i46, %if.then.i45 ], [ @_ZSt4cout, %if.end.i48 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i38)
  %arrayidx95 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv143, i64 %indvars.iv140
  %64 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %call96 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i47, i32 noundef %64)
  br label %for.inc99

for.inc99:                                        ; preds = %if.then, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit75
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %65 = load i32, ptr %y2, align 4, !tbaa !5
  %66 = sext i32 %65 to i64
  %cmp64 = icmp slt i64 %indvars.iv.next141, %66
  br i1 %cmp64, label %for.body65, label %for.inc102.loopexit, !llvm.loop !50

for.inc102.loopexit:                              ; preds = %for.inc99
  %.pre147 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc102

for.inc102:                                       ; preds = %for.inc102.loopexit, %for.cond63.preheader
  %67 = phi i32 [ %.pre147, %for.inc102.loopexit ], [ %48, %for.cond63.preheader ]
  %68 = phi i32 [ %65, %for.inc102.loopexit ], [ %49, %for.cond63.preheader ]
  %indvars.iv.next144 = add nuw nsw i64 %indvars.iv143, 1
  %69 = sext i32 %67 to i64
  %cmp61 = icmp slt i64 %indvars.iv.next144, %69
  br i1 %cmp61, label %for.cond63.preheader, label %for.end104, !llvm.loop !51

for.end104:                                       ; preds = %for.inc102, %for.cond33.preheader.lr.ph, %for.cond30.preheader, %for.cond63.preheader.lr.ph, %for.cond60.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

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
!49 = !{!26, !27, i64 16}
!50 = distinct !{!50, !10, !11}
!51 = distinct !{!51, !10, !11, !13}
