; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfsasrghc.cpp"
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
  %__c.addr.i = alloca i8, align 1
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp38 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %x2, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond101 = select i1 %cmp38, i1 %2, i1 false
  br i1 %or.cond101, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv66 = phi i64 [ %indvars.iv.next67, %for.inc8 ], [ 0, %entry ]
  %cmp336 = icmp sgt i32 %4, 0
  br i1 %cmp336, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv66, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %x2, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3 = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp3, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond2.preheader
  %7 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond2.preheader ]
  %8 = phi i32 [ %5, %for.inc8.loopexit ], [ %4, %for.cond2.preheader ]
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next67, %9
  br i1 %cmp, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp1442 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond103 = select i1 %cmp1442, i1 %12, i1 false
  br i1 %or.cond103, label %for.cond16.preheader, label %for.end29

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %17, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %18, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %for.inc27 ], [ 0, %for.end10 ]
  %cmp1740 = icmp sgt i32 %14, 0
  br i1 %cmp1740, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv69 = phi i64 [ %indvars.iv.next70, %for.body18 ], [ 0, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv72, i64 %indvars.iv69
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next70, %16
  br i1 %cmp17, label %for.body18, label %for.inc27.loopexit, !llvm.loop !14

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre94 = load i32, ptr %y1, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %17 = phi i32 [ %.pre94, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %18 = phi i32 [ %15, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  %19 = sext i32 %17 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next73, %19
  br i1 %cmp14, label %for.cond16.preheader, label %for.end29, !llvm.loop !15

for.end29:                                        ; preds = %for.inc27, %for.end10
  store i32 0, ptr %c, align 16, !tbaa !5
  %20 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3348 = icmp sgt i32 %20, 0
  br i1 %cmp3348, label %for.cond36.preheader.lr.ph, label %for.end95

for.cond36.preheader.lr.ph:                       ; preds = %for.end29
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3746 = icmp sgt i32 %21, 0
  %22 = load i32, ptr %x2, align 4
  br i1 %cmp3746, label %for.cond36.preheader.lr.ph.split.us, label %for.end95

for.cond36.preheader.lr.ph.split.us:              ; preds = %for.cond36.preheader.lr.ph
  %cmp4044 = icmp sgt i32 %22, 0
  br i1 %cmp4044, label %for.cond36.preheader.us.us.preheader, label %for.cond72.preheader.preheader

for.cond36.preheader.us.us.preheader:             ; preds = %for.cond36.preheader.lr.ph.split.us
  %wide.trip.count86 = zext nneg i32 %20 to i64
  %wide.trip.count81 = zext nneg i32 %21 to i64
  %wide.trip.count = zext nneg i32 %22 to i64
  %min.iters.check = icmp ult i32 %22, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond36.preheader.us.us

for.cond36.preheader.us.us:                       ; preds = %for.cond36.preheader.us.us.preheader, %for.cond36.for.cond.cleanup_crit_edge.split.us.us.us
  %indvars.iv83 = phi i64 [ 0, %for.cond36.preheader.us.us.preheader ], [ %indvars.iv.next84, %for.cond36.for.cond.cleanup_crit_edge.split.us.us.us ]
  br label %for.cond39.preheader.us.us.us

for.cond39.preheader.us.us.us:                    ; preds = %for.cond39.for.cond.cleanup41_crit_edge.us.us.us, %for.cond36.preheader.us.us
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.cond39.for.cond.cleanup41_crit_edge.us.us.us ], [ 0, %for.cond36.preheader.us.us ]
  %arrayidx46.us.us.us = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv83, i64 %indvars.iv78
  %arrayidx46.promoted.us.us.us = load i32, ptr %arrayidx46.us.us.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body42.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond39.preheader.us.us.us
  %23 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx46.promoted.us.us.us, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %23, %vector.ph ], [ %41, %vector.body ]
  %24 = or disjoint i64 %index, 1
  %25 = or disjoint i64 %index, 2
  %26 = or disjoint i64 %index, 3
  %27 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %index
  %wide.load = load <4 x i32>, ptr %27, align 4, !tbaa !5
  %28 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv78
  %29 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %24, i64 %indvars.iv78
  %30 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %25, i64 %indvars.iv78
  %31 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %26, i64 %indvars.iv78
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = load i32, ptr %31, align 4, !tbaa !5
  %36 = insertelement <4 x i32> poison, i32 %32, i64 0
  %37 = insertelement <4 x i32> %36, i32 %33, i64 1
  %38 = insertelement <4 x i32> %37, i32 %34, i64 2
  %39 = insertelement <4 x i32> %38, i32 %35, i64 3
  %40 = mul nsw <4 x i32> %39, %wide.load
  %41 = add <4 x i32> %40, %vec.phi
  %index.next = add nuw i64 %index, 4
  %42 = icmp eq i64 %index.next, %n.vec
  br i1 %42, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %43 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %41)
  br i1 %cmp.n, label %for.cond39.for.cond.cleanup41_crit_edge.us.us.us, label %for.body42.us.us.us.preheader

for.body42.us.us.us.preheader:                    ; preds = %for.cond39.preheader.us.us.us, %middle.block
  %indvars.iv75.ph = phi i64 [ 0, %for.cond39.preheader.us.us.us ], [ %n.vec, %middle.block ]
  %.ph106 = phi i32 [ %arrayidx46.promoted.us.us.us, %for.cond39.preheader.us.us.us ], [ %43, %middle.block ]
  br label %for.body42.us.us.us

for.body42.us.us.us:                              ; preds = %for.body42.us.us.us.preheader, %for.body42.us.us.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body42.us.us.us ], [ %indvars.iv75.ph, %for.body42.us.us.us.preheader ]
  %44 = phi i32 [ %add.us.us.us, %for.body42.us.us.us ], [ %.ph106, %for.body42.us.us.us.preheader ]
  %arrayidx50.us.us.us = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv83, i64 %indvars.iv75
  %45 = load i32, ptr %arrayidx50.us.us.us, align 4, !tbaa !5
  %arrayidx54.us.us.us = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv75, i64 %indvars.iv78
  %46 = load i32, ptr %arrayidx54.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %46, %45
  %add.us.us.us = add nsw i32 %mul.us.us.us, %44
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %for.cond39.for.cond.cleanup41_crit_edge.us.us.us, label %for.body42.us.us.us, !llvm.loop !19

for.cond39.for.cond.cleanup41_crit_edge.us.us.us: ; preds = %for.body42.us.us.us, %middle.block
  %add.us.us.us.lcssa = phi i32 [ %43, %middle.block ], [ %add.us.us.us, %for.body42.us.us.us ]
  store i32 %add.us.us.us.lcssa, ptr %arrayidx46.us.us.us, align 4, !tbaa !5
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  %exitcond82.not = icmp eq i64 %indvars.iv.next79, %wide.trip.count81
  br i1 %exitcond82.not, label %for.cond36.for.cond.cleanup_crit_edge.split.us.us.us, label %for.cond39.preheader.us.us.us, !llvm.loop !20

for.cond36.for.cond.cleanup_crit_edge.split.us.us.us: ; preds = %for.cond39.for.cond.cleanup41_crit_edge.us.us.us
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  %exitcond87.not = icmp eq i64 %indvars.iv.next84, %wide.trip.count86
  br i1 %exitcond87.not, label %for.cond68.preheader, label %for.cond36.preheader.us.us, !llvm.loop !21

for.cond68.preheader:                             ; preds = %for.cond36.for.cond.cleanup_crit_edge.split.us.us.us
  %.pr = load i32, ptr %y2, align 4
  %47 = icmp sgt i32 %.pr, 0
  br i1 %47, label %for.cond72.preheader.preheader, label %for.end95

for.cond72.preheader.preheader:                   ; preds = %for.cond68.preheader, %for.cond36.preheader.lr.ph.split.us
  %.ph = phi i32 [ %21, %for.cond36.preheader.lr.ph.split.us ], [ %.pr, %for.cond68.preheader ]
  br label %for.cond72.preheader

for.cond72.preheader:                             ; preds = %for.cond72.preheader.preheader, %for.cond.cleanup74
  %48 = phi i32 [ %50, %for.cond.cleanup74 ], [ %20, %for.cond72.preheader.preheader ]
  %49 = phi i32 [ %51, %for.cond.cleanup74 ], [ %.ph, %for.cond72.preheader.preheader ]
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.cond.cleanup74 ], [ 0, %for.cond72.preheader.preheader ]
  %cmp7356 = icmp sgt i32 %49, 0
  br i1 %cmp7356, label %for.body75, label %for.cond.cleanup74

for.cond.cleanup74.loopexit:                      ; preds = %for.inc90
  %.pre95 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond.cleanup74

for.cond.cleanup74:                               ; preds = %for.cond.cleanup74.loopexit, %for.cond72.preheader
  %50 = phi i32 [ %.pre95, %for.cond.cleanup74.loopexit ], [ %48, %for.cond72.preheader ]
  %51 = phi i32 [ %61, %for.cond.cleanup74.loopexit ], [ %49, %for.cond72.preheader ]
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %52 = sext i32 %50 to i64
  %cmp69 = icmp slt i64 %indvars.iv.next92, %52
  br i1 %cmp69, label %for.cond72.preheader, label %for.end95, !llvm.loop !22

for.body75:                                       ; preds = %for.cond72.preheader, %for.inc90
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.inc90 ], [ 0, %for.cond72.preheader ]
  %53 = phi i32 [ %61, %for.inc90 ], [ %49, %for.cond72.preheader ]
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  %54 = trunc nuw nsw i64 %indvars.iv.next89 to i32
  %rem = srem i32 %54, %53
  %cmp77.not = icmp eq i32 %rem, 0
  %arrayidx87 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv91, i64 %indvars.iv88
  %55 = load i32, ptr %arrayidx87, align 4, !tbaa !5
  %call88 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %55)
  br i1 %cmp77.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body75
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !23
  %vtable.i = load ptr, ptr %call88, align 8, !tbaa !24
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call88, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %56 = load i64, ptr %_M_width.i.i, align 8, !tbaa !26
  %cmp.not.i = icmp eq i64 %56, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call88, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.then
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call88, i8 noundef signext 32)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc90

if.else:                                          ; preds = %for.body75
  %vtable.i31 = load ptr, ptr %call88, align 8, !tbaa !24
  %vbase.offset.ptr.i32 = getelementptr i8, ptr %vtable.i31, i64 -24
  %vbase.offset.i33 = load i64, ptr %vbase.offset.ptr.i32, align 8
  %add.ptr.i34 = getelementptr inbounds i8, ptr %call88, i64 %vbase.offset.i33
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i34, i64 240
  %57 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !37
  %tobool.not.i.i.i = icmp eq ptr %57, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.else
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %57, i64 56
  %58 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !45
  %tobool.not.i1.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %57, i64 67
  %59 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !23
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %57)
  %vtable.i.i.i = load ptr, ptr %57, align 8, !tbaa !24
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %60 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %60(ptr noundef nonnull align 8 dereferenceable(570) %57, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %59, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call88, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i35)
  br label %for.inc90

for.inc90:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %61 = load i32, ptr %y2, align 4, !tbaa !5
  %62 = sext i32 %61 to i64
  %cmp73 = icmp slt i64 %indvars.iv.next89, %62
  br i1 %cmp73, label %for.body75, label %for.cond.cleanup74.loopexit, !llvm.loop !51

for.end95:                                        ; preds = %for.cond.cleanup74, %for.cond36.preheader.lr.ph, %for.end29, %for.cond68.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11, !17}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11, !13}
!23 = !{!7, !7, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !8, i64 0}
!26 = !{!27, !28, i64 16}
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
!37 = !{!38, !42, i64 240}
!38 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !39, i64 216, !7, i64 224, !40, i64 225, !41, i64 232, !42, i64 240, !43, i64 248, !44, i64 256}
!39 = !{!"p1 _ZTSSo", !32, i64 0}
!40 = !{!"bool", !7, i64 0}
!41 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 0}
!42 = !{!"p1 _ZTSSt5ctypeIcE", !32, i64 0}
!43 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!44 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!45 = !{!46, !7, i64 56}
!46 = !{!"_ZTSSt5ctypeIcE", !47, i64 0, !48, i64 16, !40, i64 24, !49, i64 32, !49, i64 40, !50, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!47 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!48 = !{!"p1 _ZTS15__locale_struct", !32, i64 0}
!49 = !{!"p1 int", !32, i64 0}
!50 = !{!"p1 short", !32, i64 0}
!51 = distinct !{!51, !10, !11}
