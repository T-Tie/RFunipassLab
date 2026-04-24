; ModuleID = '<stdin>'
source_filename = "/tmp/tmpslc6poj8.cpp"
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %c, i8 0, i64 40000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp33 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp33, i1 %2, i1 false
  br i1 %or.cond, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.inc8 ], [ 0, %entry ]
  %cmp330 = icmp sgt i32 %4, 0
  br i1 %cmp330, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv62, i64 %indvars.iv
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
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next63, %9
  br i1 %cmp, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1437 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond102 = select i1 %cmp1437, i1 %12, i1 false
  br i1 %or.cond102, label %for.cond16.preheader, label %for.end29

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %17, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %18, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc27 ], [ 0, %for.end10 ]
  %cmp1735 = icmp sgt i32 %14, 0
  br i1 %cmp1735, label %for.body18, label %for.inc27

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %for.body18 ], [ 0, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv68, i64 %indvars.iv65
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %15 = load i32, ptr %y2, align 4, !tbaa !5
  %16 = sext i32 %15 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next66, %16
  br i1 %cmp17, label %for.body18, label %for.inc27.loopexit, !llvm.loop !14

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre90 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %17 = phi i32 [ %.pre90, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %18 = phi i32 [ %15, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %19 = sext i32 %17 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next69, %19
  br i1 %cmp14, label %for.cond16.preheader, label %for.end29, !llvm.loop !15

for.end29:                                        ; preds = %for.inc27, %for.end10
  %.lcssa = phi i32 [ %10, %for.end10 ], [ %17, %for.inc27 ]
  %20 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %20, %.lcssa
  %.pre91 = load i32, ptr %x1, align 4, !tbaa !5
  br i1 %cmp30, label %for.cond31.preheader, label %if.end

for.cond31.preheader:                             ; preds = %for.end29
  %cmp3243 = icmp sgt i32 %.pre91, 0
  br i1 %cmp3243, label %for.cond34.preheader.lr.ph, label %for.end87

for.cond34.preheader.lr.ph:                       ; preds = %for.cond31.preheader
  %cmp3541 = icmp sgt i32 %.lcssa, 0
  %21 = load i32, ptr %y2, align 4
  br i1 %cmp3541, label %for.cond34.preheader.lr.ph.split.us, label %for.cond64.preheader.lr.ph

for.cond34.preheader.lr.ph.split.us:              ; preds = %for.cond34.preheader.lr.ph
  %cmp3839 = icmp sgt i32 %21, 0
  br i1 %cmp3839, label %for.cond34.preheader.us.us.preheader, label %for.end87

for.cond34.preheader.us.us.preheader:             ; preds = %for.cond34.preheader.lr.ph.split.us
  %wide.trip.count82 = zext nneg i32 %.pre91 to i64
  %wide.trip.count77 = zext nneg i32 %.lcssa to i64
  %wide.trip.count = zext nneg i32 %21 to i64
  %min.iters.check = icmp ult i32 %21, 4
  %n.vec = and i64 %wide.trip.count, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br label %for.cond34.preheader.us.us

for.cond34.preheader.us.us:                       ; preds = %for.cond34.preheader.us.us.preheader, %for.cond34.for.inc58_crit_edge.split.us.us.us
  %indvars.iv79 = phi i64 [ 0, %for.cond34.preheader.us.us.preheader ], [ %indvars.iv.next80, %for.cond34.for.inc58_crit_edge.split.us.us.us ]
  br label %for.cond37.preheader.us.us.us

for.cond37.preheader.us.us.us:                    ; preds = %for.cond37.for.inc55_crit_edge.us.us.us, %for.cond34.preheader.us.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %for.cond37.for.inc55_crit_edge.us.us.us ], [ 0, %for.cond34.preheader.us.us ]
  %arrayidx43.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv79, i64 %indvars.iv74
  %22 = load i32, ptr %arrayidx43.us.us.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body39.us.us.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond37.preheader.us.us.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %22, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv74, i64 %index
  %wide.load = load <4 x i32>, ptr %23, align 16, !tbaa !5
  %24 = mul nsw <4 x i32> %wide.load, %broadcast.splat
  %25 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv79, i64 %index
  %wide.load107 = load <4 x i32>, ptr %25, align 16, !tbaa !5
  %26 = add nsw <4 x i32> %wide.load107, %24
  store <4 x i32> %26, ptr %25, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %27 = icmp eq i64 %index.next, %n.vec
  br i1 %27, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond37.for.inc55_crit_edge.us.us.us, label %for.body39.us.us.us.preheader

for.body39.us.us.us.preheader:                    ; preds = %for.cond37.preheader.us.us.us, %middle.block
  %indvars.iv71.ph = phi i64 [ 0, %for.cond37.preheader.us.us.us ], [ %n.vec, %middle.block ]
  br label %for.body39.us.us.us

for.body39.us.us.us:                              ; preds = %for.body39.us.us.us.preheader, %for.body39.us.us.us
  %indvars.iv71 = phi i64 [ %indvars.iv.next72, %for.body39.us.us.us ], [ %indvars.iv71.ph, %for.body39.us.us.us.preheader ]
  %arrayidx47.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %b, i64 0, i64 %indvars.iv74, i64 %indvars.iv71
  %28 = load i32, ptr %arrayidx47.us.us.us, align 4, !tbaa !5
  %mul.us.us.us = mul nsw i32 %28, %22
  %arrayidx51.us.us.us = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv79, i64 %indvars.iv71
  %29 = load i32, ptr %arrayidx51.us.us.us, align 4, !tbaa !5
  %add.us.us.us = add nsw i32 %29, %mul.us.us.us
  store i32 %add.us.us.us, ptr %arrayidx51.us.us.us, align 4, !tbaa !5
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count
  br i1 %exitcond.not, label %for.cond37.for.inc55_crit_edge.us.us.us, label %for.body39.us.us.us, !llvm.loop !19

for.cond37.for.inc55_crit_edge.us.us.us:          ; preds = %for.body39.us.us.us, %middle.block
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %for.cond34.for.inc58_crit_edge.split.us.us.us, label %for.cond37.preheader.us.us.us, !llvm.loop !20

for.cond34.for.inc58_crit_edge.split.us.us.us:    ; preds = %for.cond37.for.inc55_crit_edge.us.us.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %if.end, label %for.cond34.preheader.us.us, !llvm.loop !21

if.end:                                           ; preds = %for.cond34.for.inc58_crit_edge.split.us.us.us, %for.end29
  %cmp6253 = icmp sgt i32 %.pre91, 0
  br i1 %cmp6253, label %for.cond64.preheader.lr.phthread-pre-split, label %for.end87

for.cond64.preheader.lr.phthread-pre-split:       ; preds = %if.end
  %.pr = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond64.preheader.lr.ph

for.cond64.preheader.lr.ph:                       ; preds = %for.cond64.preheader.lr.phthread-pre-split, %for.cond34.preheader.lr.ph
  %30 = phi i32 [ %.pr, %for.cond64.preheader.lr.phthread-pre-split ], [ %21, %for.cond34.preheader.lr.ph ]
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %for.cond64.preheader, label %for.end87

for.cond64.preheader:                             ; preds = %for.cond64.preheader.lr.ph, %for.inc85
  %32 = phi i32 [ %43, %for.inc85 ], [ %.pre91, %for.cond64.preheader.lr.ph ]
  %33 = phi i32 [ %44, %for.inc85 ], [ %30, %for.cond64.preheader.lr.ph ]
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.inc85 ], [ 0, %for.cond64.preheader.lr.ph ]
  %cmp6551 = icmp sgt i32 %33, 0
  br i1 %cmp6551, label %for.body66, label %for.inc85

for.body66:                                       ; preds = %for.cond64.preheader, %for.inc82
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc82 ], [ 0, %for.cond64.preheader ]
  %34 = phi i32 [ %41, %for.inc82 ], [ %33, %for.cond64.preheader ]
  %sub = add nsw i32 %34, -1
  %35 = zext i32 %sub to i64
  %cmp67 = icmp eq i64 %indvars.iv84, %35
  %arrayidx72 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %c, i64 0, i64 %indvars.iv87, i64 %indvars.iv84
  %36 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %36)
  br i1 %cmp67, label %if.then68, label %if.else

if.then68:                                        ; preds = %for.body66
  %vtable.i = load ptr, ptr %call73, align 8, !tbaa !22
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call73, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %37 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then68
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then68
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %37, i64 56
  %38 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !42
  %tobool.not.i1.i.i = icmp eq i8 %38, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %37, i64 67
  %39 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !48
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %37)
  %vtable.i.i.i = load ptr, ptr %37, align 8, !tbaa !22
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %40 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %40(ptr noundef nonnull align 8 dereferenceable(570) %37, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %39, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call73, i8 noundef signext %retval.0.i.i.i)
  %call.i.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i28)
  br label %for.inc82

if.else:                                          ; preds = %for.body66
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call73, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc82

for.inc82:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %if.else
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %41 = load i32, ptr %y2, align 4, !tbaa !5
  %42 = sext i32 %41 to i64
  %cmp65 = icmp slt i64 %indvars.iv.next85, %42
  br i1 %cmp65, label %for.body66, label %for.inc85.loopexit, !llvm.loop !49

for.inc85.loopexit:                               ; preds = %for.inc82
  %.pre92 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc85

for.inc85:                                        ; preds = %for.inc85.loopexit, %for.cond64.preheader
  %43 = phi i32 [ %.pre92, %for.inc85.loopexit ], [ %32, %for.cond64.preheader ]
  %44 = phi i32 [ %41, %for.inc85.loopexit ], [ %33, %for.cond64.preheader ]
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  %45 = sext i32 %43 to i64
  %cmp62 = icmp slt i64 %indvars.iv.next88, %45
  br i1 %cmp62, label %for.cond64.preheader, label %for.end87, !llvm.loop !50

for.end87:                                        ; preds = %for.inc85, %for.cond34.preheader.lr.ph.split.us, %for.cond31.preheader, %for.cond64.preheader.lr.ph, %if.end
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
