; ModuleID = '<stdin>'
source_filename = "/tmp/tmpowec55e5.cpp"
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
@a = dso_local global [201 x [201 x i32]] zeroinitializer, align 16
@i = dso_local local_unnamed_addr global i32 0, align 4
@j = dso_local local_unnamed_addr global i32 0, align 4
@sum = dso_local local_unnamed_addr global i32 0, align 4
@min1 = dso_local local_unnamed_addr global [201 x i32] zeroinitializer, align 16
@min2 = dso_local local_unnamed_addr global [201 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %0, 0
  br i1 %cmp16, label %for.body, label %for.end10

for.body:                                         ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %1 = phi i32 [ %48, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %0, %entry ]
  %i.017 = phi i32 [ %inc9, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %entry ]
  store i32 0, ptr @i, align 4, !tbaa !5
  %cmp4.i = icmp sgt i32 %1, 0
  br i1 %cmp4.i, label %for.cond1.preheader.i, label %for.end.sink.split

for.cond1.preheader.i:                            ; preds = %for.body, %for.inc6.i
  %2 = phi i32 [ %7, %for.inc6.i ], [ %1, %for.body ]
  %3 = phi i32 [ %inc7.i, %for.inc6.i ], [ 0, %for.body ]
  store i32 0, ptr @j, align 4, !tbaa !5
  %cmp22.i = icmp sgt i32 %2, 0
  br i1 %cmp22.i, label %for.body3.i, label %for.inc6.i

for.body3.i:                                      ; preds = %for.cond1.preheader.i, %for.body3.i
  %storemerge13.i = phi i32 [ %inc.i, %for.body3.i ], [ 0, %for.cond1.preheader.i ]
  %4 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom.i = sext i32 %4 to i64
  %idxprom4.i = sext i32 %storemerge13.i to i64
  %arrayidx5.i = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom.i, i64 %idxprom4.i
  %call.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5.i)
  %5 = load i32, ptr @j, align 4, !tbaa !5
  %inc.i = add nsw i32 %5, 1
  store i32 %inc.i, ptr @j, align 4, !tbaa !5
  %6 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2.i = icmp slt i32 %inc.i, %6
  br i1 %cmp2.i, label %for.body3.i, label %for.inc6.loopexit.i, !llvm.loop !9

for.inc6.loopexit.i:                              ; preds = %for.body3.i
  %.pre.i = load i32, ptr @i, align 4, !tbaa !5
  br label %for.inc6.i

for.inc6.i:                                       ; preds = %for.inc6.loopexit.i, %for.cond1.preheader.i
  %7 = phi i32 [ %6, %for.inc6.loopexit.i ], [ %2, %for.cond1.preheader.i ]
  %8 = phi i32 [ %.pre.i, %for.inc6.loopexit.i ], [ %3, %for.cond1.preheader.i ]
  %inc7.i = add nsw i32 %8, 1
  store i32 %inc7.i, ptr @i, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %inc7.i, %7
  br i1 %cmp.i, label %for.cond1.preheader.i, label %_Z4readv.exit, !llvm.loop !12

_Z4readv.exit:                                    ; preds = %for.inc6.i
  store i32 0, ptr @sum, align 4, !tbaa !5
  %cmp213 = icmp sgt i32 %7, 1
  br i1 %cmp213, label %for.body3.preheader, label %for.end

for.body3.preheader:                              ; preds = %_Z4readv.exit
  %sub = add nsw i32 %7, -1
  %9 = zext nneg i32 %7 to i64
  %wide.trip.count = zext nneg i32 %sub to i64
  %10 = add nsw i64 %9, -2
  br label %for.body3

for.body3:                                        ; preds = %for.body3.preheader, %for.cond13.for.end33_crit_edge.i
  %indvars.iv = phi i64 [ 0, %for.body3.preheader ], [ %indvars.iv.next, %for.cond13.for.end33_crit_edge.i ]
  %add1214 = phi i32 [ 0, %for.body3.preheader ], [ %add, %for.cond13.for.end33_crit_edge.i ]
  %11 = sub nsw i64 %9, %indvars.iv
  %12 = sub nsw i64 %9, %indvars.iv
  %13 = sub i64 %10, %indvars.iv
  %14 = sub nsw i64 %9, %indvars.iv
  br label %for.body.us.i

for.body.us.i:                                    ; preds = %for.cond4.for.inc20_crit_edge.us.i, %for.body3
  %indvars.iv54.i = phi i64 [ 0, %for.body3 ], [ %indvars.iv.next55.i, %for.cond4.for.inc20_crit_edge.us.i ]
  %arrayidx.us.i = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv54.i
  %15 = load i32, ptr %arrayidx.us.i, align 4, !tbaa !5
  %arrayidx3.us.i = getelementptr inbounds nuw [201 x i32], ptr @min1, i64 0, i64 %indvars.iv54.i
  store i32 %15, ptr %arrayidx3.us.i, align 4, !tbaa !5
  br label %for.body6.us.i

for.body6.us.i:                                   ; preds = %for.inc.us.i, %for.body.us.i
  %indvars.iv.i = phi i64 [ 0, %for.body.us.i ], [ %indvars.iv.next.i, %for.inc.us.i ]
  %16 = phi i32 [ %15, %for.body.us.i ], [ %18, %for.inc.us.i ]
  %arrayidx10.us.i = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv54.i, i64 %indvars.iv.i
  %17 = load i32, ptr %arrayidx10.us.i, align 4, !tbaa !5
  %cmp13.us.i = icmp slt i32 %17, %16
  br i1 %cmp13.us.i, label %if.then.us.i, label %for.inc.us.i

if.then.us.i:                                     ; preds = %for.body6.us.i
  store i32 %17, ptr %arrayidx3.us.i, align 4, !tbaa !5
  br label %for.inc.us.i

for.inc.us.i:                                     ; preds = %if.then.us.i, %for.body6.us.i
  %18 = phi i32 [ %16, %for.body6.us.i ], [ %17, %if.then.us.i ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %14
  br i1 %exitcond.not.i, label %for.cond4.for.inc20_crit_edge.us.i, label %for.body6.us.i, !llvm.loop !14

for.cond4.for.inc20_crit_edge.us.i:               ; preds = %for.inc.us.i
  %indvars.iv.next55.i = add nuw nsw i64 %indvars.iv54.i, 1
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next55.i, %14
  br i1 %exitcond58.not.i, label %for.cond26.preheader.us.i.preheader, label %for.body.us.i, !llvm.loop !15

for.cond26.preheader.us.i.preheader:              ; preds = %for.cond4.for.inc20_crit_edge.us.i
  %min.iters.check38 = icmp ult i64 %11, 4
  %n.vec41 = and i64 %11, -4
  %cmp.n47 = icmp eq i64 %11, %n.vec41
  br label %for.cond26.preheader.us.i

for.cond26.preheader.us.i:                        ; preds = %for.cond26.preheader.us.i.preheader, %for.cond26.for.inc42_crit_edge.us.i
  %indvars.iv64.i = phi i64 [ %indvars.iv.next65.i, %for.cond26.for.inc42_crit_edge.us.i ], [ 0, %for.cond26.preheader.us.i.preheader ]
  %arrayidx34.us.i = getelementptr inbounds nuw [201 x i32], ptr @min1, i64 0, i64 %indvars.iv64.i
  %19 = load i32, ptr %arrayidx34.us.i, align 4, !tbaa !5
  br i1 %min.iters.check38, label %for.body28.us.i.preheader, label %vector.ph39

vector.ph39:                                      ; preds = %for.cond26.preheader.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %19, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body42

vector.body42:                                    ; preds = %vector.body42, %vector.ph39
  %index43 = phi i64 [ 0, %vector.ph39 ], [ %index.next45, %vector.body42 ]
  %20 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv64.i, i64 %index43
  %wide.load44 = load <4 x i32>, ptr %20, align 4, !tbaa !5
  %21 = sub nsw <4 x i32> %wide.load44, %broadcast.splat
  store <4 x i32> %21, ptr %20, align 4, !tbaa !5
  %index.next45 = add nuw i64 %index43, 4
  %22 = icmp eq i64 %index.next45, %n.vec41
  br i1 %22, label %middle.block46, label %vector.body42, !llvm.loop !16

middle.block46:                                   ; preds = %vector.body42
  br i1 %cmp.n47, label %for.cond26.for.inc42_crit_edge.us.i, label %for.body28.us.i.preheader

for.body28.us.i.preheader:                        ; preds = %for.cond26.preheader.us.i, %middle.block46
  %indvars.iv59.i.ph = phi i64 [ 0, %for.cond26.preheader.us.i ], [ %n.vec41, %middle.block46 ]
  br label %for.body28.us.i

for.body28.us.i:                                  ; preds = %for.body28.us.i.preheader, %for.body28.us.i
  %indvars.iv59.i = phi i64 [ %indvars.iv.next60.i, %for.body28.us.i ], [ %indvars.iv59.i.ph, %for.body28.us.i.preheader ]
  %arrayidx32.us.i = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv64.i, i64 %indvars.iv59.i
  %23 = load i32, ptr %arrayidx32.us.i, align 4, !tbaa !5
  %sub.us.i = sub nsw i32 %23, %19
  store i32 %sub.us.i, ptr %arrayidx32.us.i, align 4, !tbaa !5
  %indvars.iv.next60.i = add nuw nsw i64 %indvars.iv59.i, 1
  %exitcond63.not.i = icmp eq i64 %indvars.iv.next60.i, %14
  br i1 %exitcond63.not.i, label %for.cond26.for.inc42_crit_edge.us.i, label %for.body28.us.i, !llvm.loop !19

for.cond26.for.inc42_crit_edge.us.i:              ; preds = %for.body28.us.i, %middle.block46
  %indvars.iv.next65.i = add nuw nsw i64 %indvars.iv64.i, 1
  %exitcond68.not.i = icmp eq i64 %indvars.iv.next65.i, %14
  br i1 %exitcond68.not.i, label %for.body47.us.i, label %for.cond26.preheader.us.i, !llvm.loop !20

for.body47.us.i:                                  ; preds = %for.cond26.for.inc42_crit_edge.us.i, %for.cond52.for.inc73_crit_edge.us.i
  %indvars.iv74.i = phi i64 [ %indvars.iv.next75.i, %for.cond52.for.inc73_crit_edge.us.i ], [ 0, %for.cond26.for.inc42_crit_edge.us.i ]
  %arrayidx49.us.i = getelementptr inbounds nuw [201 x i32], ptr @a, i64 0, i64 %indvars.iv74.i
  %24 = load i32, ptr %arrayidx49.us.i, align 4, !tbaa !5
  %arrayidx51.us.i = getelementptr inbounds nuw [201 x i32], ptr @min2, i64 0, i64 %indvars.iv74.i
  store i32 %24, ptr %arrayidx51.us.i, align 4, !tbaa !5
  br label %for.body54.us.i

for.body54.us.i:                                  ; preds = %for.inc70.us.i, %for.body47.us.i
  %indvars.iv69.i = phi i64 [ 0, %for.body47.us.i ], [ %indvars.iv.next70.i, %for.inc70.us.i ]
  %25 = phi i32 [ %24, %for.body47.us.i ], [ %27, %for.inc70.us.i ]
  %arrayidx58.us.i = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv69.i, i64 %indvars.iv74.i
  %26 = load i32, ptr %arrayidx58.us.i, align 4, !tbaa !5
  %cmp61.us.i = icmp slt i32 %26, %25
  br i1 %cmp61.us.i, label %if.then62.us.i, label %for.inc70.us.i

if.then62.us.i:                                   ; preds = %for.body54.us.i
  store i32 %26, ptr %arrayidx51.us.i, align 4, !tbaa !5
  br label %for.inc70.us.i

for.inc70.us.i:                                   ; preds = %if.then62.us.i, %for.body54.us.i
  %27 = phi i32 [ %25, %for.body54.us.i ], [ %26, %if.then62.us.i ]
  %indvars.iv.next70.i = add nuw nsw i64 %indvars.iv69.i, 1
  %exitcond73.not.i = icmp eq i64 %indvars.iv.next70.i, %14
  br i1 %exitcond73.not.i, label %for.cond52.for.inc73_crit_edge.us.i, label %for.body54.us.i, !llvm.loop !21

for.cond52.for.inc73_crit_edge.us.i:              ; preds = %for.inc70.us.i
  %indvars.iv.next75.i = add nuw nsw i64 %indvars.iv74.i, 1
  %exitcond78.not.i = icmp eq i64 %indvars.iv.next75.i, %14
  br i1 %exitcond78.not.i, label %for.cond79.preheader.us.i, label %for.body47.us.i, !llvm.loop !22

for.cond79.preheader.us.i:                        ; preds = %for.cond52.for.inc73_crit_edge.us.i, %for.cond79.for.inc96_crit_edge.us.i
  %indvars.iv84.i = phi i64 [ %indvars.iv.next85.i, %for.cond79.for.inc96_crit_edge.us.i ], [ 0, %for.cond52.for.inc73_crit_edge.us.i ]
  %arrayidx87.us.i = getelementptr inbounds nuw [201 x i32], ptr @min2, i64 0, i64 %indvars.iv84.i
  %28 = load i32, ptr %arrayidx87.us.i, align 4, !tbaa !5
  br label %for.body81.us.i

for.body81.us.i:                                  ; preds = %for.body81.us.i, %for.cond79.preheader.us.i
  %indvars.iv79.i = phi i64 [ 0, %for.cond79.preheader.us.i ], [ %indvars.iv.next80.i, %for.body81.us.i ]
  %arrayidx85.us.i = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv79.i, i64 %indvars.iv84.i
  %29 = load i32, ptr %arrayidx85.us.i, align 4, !tbaa !5
  %sub88.us.i = sub nsw i32 %29, %28
  store i32 %sub88.us.i, ptr %arrayidx85.us.i, align 4, !tbaa !5
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %exitcond83.not.i = icmp eq i64 %indvars.iv.next80.i, %14
  br i1 %exitcond83.not.i, label %for.cond79.for.inc96_crit_edge.us.i, label %for.body81.us.i, !llvm.loop !23

for.cond79.for.inc96_crit_edge.us.i:              ; preds = %for.body81.us.i
  %indvars.iv.next85.i = add nuw nsw i64 %indvars.iv84.i, 1
  %exitcond88.not.i = icmp eq i64 %indvars.iv.next85.i, %14
  br i1 %exitcond88.not.i, label %_Z3deli.exit, label %for.cond79.preheader.us.i, !llvm.loop !24

_Z3deli.exit:                                     ; preds = %for.cond79.for.inc96_crit_edge.us.i
  %30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @a, i64 808), align 8, !tbaa !5
  %add = add nsw i32 %30, %add1214
  %cmp10.i = icmp sgt i64 %14, 2
  br i1 %cmp10.i, label %for.cond1.preheader.us.i.preheader, label %for.cond13.for.end33_crit_edge.i

for.cond1.preheader.us.i.preheader:               ; preds = %_Z3deli.exit
  %min.iters.check26 = icmp ult i64 %12, 4
  %n.vec29 = and i64 %12, -4
  %cmp.n35 = icmp eq i64 %12, %n.vec29
  br label %for.cond1.preheader.us.i

for.cond1.preheader.us.i:                         ; preds = %for.cond1.preheader.us.i.preheader, %for.cond1.for.inc10_crit_edge.us.i
  %indvars.iv25.i = phi i64 [ %indvars.iv.next26.i, %for.cond1.for.inc10_crit_edge.us.i ], [ 2, %for.cond1.preheader.us.i.preheader ]
  %31 = add nsw i64 %indvars.iv25.i, -1
  br i1 %min.iters.check26, label %for.body3.us.i.preheader, label %vector.body30

vector.body30:                                    ; preds = %for.cond1.preheader.us.i, %vector.body30
  %index31 = phi i64 [ %index.next33, %vector.body30 ], [ 0, %for.cond1.preheader.us.i ]
  %32 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv25.i, i64 %index31
  %wide.load32 = load <4 x i32>, ptr %32, align 4, !tbaa !5
  %33 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %31, i64 %index31
  store <4 x i32> %wide.load32, ptr %33, align 4, !tbaa !5
  %index.next33 = add nuw i64 %index31, 4
  %34 = icmp eq i64 %index.next33, %n.vec29
  br i1 %34, label %middle.block34, label %vector.body30, !llvm.loop !25

middle.block34:                                   ; preds = %vector.body30
  br i1 %cmp.n35, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i.preheader

for.body3.us.i.preheader:                         ; preds = %for.cond1.preheader.us.i, %middle.block34
  %indvars.iv.i5.ph = phi i64 [ 0, %for.cond1.preheader.us.i ], [ %n.vec29, %middle.block34 ]
  br label %for.body3.us.i

for.body3.us.i:                                   ; preds = %for.body3.us.i.preheader, %for.body3.us.i
  %indvars.iv.i5 = phi i64 [ %indvars.iv.next.i6, %for.body3.us.i ], [ %indvars.iv.i5.ph, %for.body3.us.i.preheader ]
  %arrayidx5.us.i = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv25.i, i64 %indvars.iv.i5
  %35 = load i32, ptr %arrayidx5.us.i, align 4, !tbaa !5
  %arrayidx9.us.i = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %31, i64 %indvars.iv.i5
  store i32 %35, ptr %arrayidx9.us.i, align 4, !tbaa !5
  %indvars.iv.next.i6 = add nuw nsw i64 %indvars.iv.i5, 1
  %exitcond.not.i7 = icmp eq i64 %indvars.iv.next.i6, %14
  br i1 %exitcond.not.i7, label %for.cond1.for.inc10_crit_edge.us.i, label %for.body3.us.i, !llvm.loop !26

for.cond1.for.inc10_crit_edge.us.i:               ; preds = %for.body3.us.i, %middle.block34
  %indvars.iv.next26.i = add nuw nsw i64 %indvars.iv25.i, 1
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next26.i, %14
  br i1 %exitcond30.not.i, label %for.cond16.preheader.us.i.preheader, label %for.cond1.preheader.us.i, !llvm.loop !27

for.cond16.preheader.us.i.preheader:              ; preds = %for.cond1.for.inc10_crit_edge.us.i
  %min.iters.check = icmp ult i64 %13, 4
  %n.vec = and i64 %13, -4
  %36 = or disjoint i64 %n.vec, 2
  %cmp.n = icmp eq i64 %13, %n.vec
  br label %for.cond16.preheader.us.i

for.cond16.preheader.us.i:                        ; preds = %for.cond16.preheader.us.i.preheader, %for.cond16.for.inc31_crit_edge.us.i
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %for.cond16.for.inc31_crit_edge.us.i ], [ 0, %for.cond16.preheader.us.i.preheader ]
  br i1 %min.iters.check, label %for.body18.us.i.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond16.preheader.us.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond16.preheader.us.i ]
  %offset.idx = or disjoint i64 %index, 2
  %37 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv38.i, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %37, align 4, !tbaa !5
  %38 = or disjoint i64 %index, 1
  %39 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv38.i, i64 %38
  store <4 x i32> %wide.load, ptr %39, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %40 = icmp eq i64 %index.next, %n.vec
  br i1 %40, label %middle.block, label %vector.body, !llvm.loop !28

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond16.for.inc31_crit_edge.us.i, label %for.body18.us.i.preheader

for.body18.us.i.preheader:                        ; preds = %for.cond16.preheader.us.i, %middle.block
  %indvars.iv32.i.ph = phi i64 [ 2, %for.cond16.preheader.us.i ], [ %36, %middle.block ]
  br label %for.body18.us.i

for.body18.us.i:                                  ; preds = %for.body18.us.i.preheader, %for.body18.us.i
  %indvars.iv32.i = phi i64 [ %indvars.iv.next33.i, %for.body18.us.i ], [ %indvars.iv32.i.ph, %for.body18.us.i.preheader ]
  %arrayidx22.us.i = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv38.i, i64 %indvars.iv32.i
  %41 = load i32, ptr %arrayidx22.us.i, align 4, !tbaa !5
  %42 = add nsw i64 %indvars.iv32.i, -1
  %arrayidx27.us.i = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv38.i, i64 %42
  store i32 %41, ptr %arrayidx27.us.i, align 4, !tbaa !5
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond37.not.i = icmp eq i64 %indvars.iv.next33.i, %14
  br i1 %exitcond37.not.i, label %for.cond16.for.inc31_crit_edge.us.i, label %for.body18.us.i, !llvm.loop !29

for.cond16.for.inc31_crit_edge.us.i:              ; preds = %for.body18.us.i, %middle.block
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %exitcond42.not.i = icmp eq i64 %indvars.iv.next39.i, %14
  br i1 %exitcond42.not.i, label %for.cond13.for.end33_crit_edge.i, label %for.cond16.preheader.us.i, !llvm.loop !30

for.cond13.for.end33_crit_edge.i:                 ; preds = %for.cond16.for.inc31_crit_edge.us.i, %_Z3deli.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1.for.end_crit_edge, label %for.body3, !llvm.loop !31

for.cond1.for.end_crit_edge:                      ; preds = %for.cond13.for.end33_crit_edge.i
  store i32 2, ptr @j, align 4, !tbaa !5
  store i32 2, ptr @i, align 4, !tbaa !5
  br label %for.end.sink.split

for.end.sink.split:                               ; preds = %for.body, %for.cond1.for.end_crit_edge
  %.sink = phi i32 [ %add, %for.cond1.for.end_crit_edge ], [ 0, %for.body ]
  store i32 %.sink, ptr @sum, align 4, !tbaa !5
  br label %for.end

for.end:                                          ; preds = %for.end.sink.split, %_Z4readv.exit
  %43 = phi i32 [ 0, %_Z4readv.exit ], [ %.sink, %for.end.sink.split ]
  %call6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %43)
  %vtable.i = load ptr, ptr %call6, align 8, !tbaa !32
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call6, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %44 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !34
  %tobool.not.i.i.i = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end
  tail call void @_ZSt16__throw_bad_castv() #5
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %44, i64 56
  %45 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !52
  %tobool.not.i1.i.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %44, i64 67
  %46 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !58
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %44)
  %vtable.i.i.i = load ptr, ptr %44, align 8, !tbaa !32
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %47 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %47(ptr noundef nonnull align 8 dereferenceable(570) %44, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %46, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call6, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %inc9 = add nuw nsw i32 %i.017, 1
  %48 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc9, %48
  br i1 %cmp, label %for.body, label %for.end10, !llvm.loop !59

for.end10:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z4readv() local_unnamed_addr #2 {
entry:
  store i32 0, ptr @i, align 4, !tbaa !5
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp4 = icmp sgt i32 %0, 0
  br i1 %cmp4, label %for.cond1.preheader, label %for.end8

for.cond1.preheader:                              ; preds = %entry, %for.inc6
  %1 = phi i32 [ %6, %for.inc6 ], [ %0, %entry ]
  %2 = phi i32 [ %inc7, %for.inc6 ], [ 0, %entry ]
  store i32 0, ptr @j, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %1, 0
  br i1 %cmp22, label %for.body3, label %for.inc6

for.body3:                                        ; preds = %for.cond1.preheader, %for.body3
  %storemerge13 = phi i32 [ %inc, %for.body3 ], [ 0, %for.cond1.preheader ]
  %3 = load i32, ptr @i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %idxprom4 = sext i32 %storemerge13 to i64
  %arrayidx5 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %idxprom, i64 %idxprom4
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx5)
  %4 = load i32, ptr @j, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr @j, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %inc, %5
  br i1 %cmp2, label %for.body3, label %for.inc6.loopexit, !llvm.loop !9

for.inc6.loopexit:                                ; preds = %for.body3
  %.pre = load i32, ptr @i, align 4, !tbaa !5
  br label %for.inc6

for.inc6:                                         ; preds = %for.inc6.loopexit, %for.cond1.preheader
  %6 = phi i32 [ %5, %for.inc6.loopexit ], [ %1, %for.cond1.preheader ]
  %7 = phi i32 [ %.pre, %for.inc6.loopexit ], [ %2, %for.cond1.preheader ]
  %inc7 = add nsw i32 %7, 1
  store i32 %inc7, ptr @i, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc7, %6
  br i1 %cmp, label %for.cond1.preheader, label %for.end8, !llvm.loop !12

for.end8:                                         ; preds = %for.inc6, %entry
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z3deli(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp25 = icmp sgt i32 %n, 0
  br i1 %cmp25, label %for.body.us.preheader, label %for.cond23.preheader.thread

for.cond23.preheader.thread:                      ; preds = %entry
  store i32 0, ptr @i, align 4, !tbaa !5
  br label %for.end98

for.body.us.preheader:                            ; preds = %entry
  %wide.trip.count57 = zext nneg i32 %n to i64
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.cond4.for.inc20_crit_edge.us
  %indvars.iv54 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next55, %for.cond4.for.inc20_crit_edge.us ]
  %arrayidx.us = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv54
  %0 = load i32, ptr %arrayidx.us, align 4, !tbaa !5
  %arrayidx3.us = getelementptr inbounds nuw [201 x i32], ptr @min1, i64 0, i64 %indvars.iv54
  store i32 %0, ptr %arrayidx3.us, align 4, !tbaa !5
  br label %for.body6.us

for.body6.us:                                     ; preds = %for.body.us, %for.inc.us
  %indvars.iv = phi i64 [ 0, %for.body.us ], [ %indvars.iv.next, %for.inc.us ]
  %1 = phi i32 [ %0, %for.body.us ], [ %3, %for.inc.us ]
  %arrayidx10.us = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv54, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx10.us, align 4, !tbaa !5
  %cmp13.us = icmp slt i32 %2, %1
  br i1 %cmp13.us, label %if.then.us, label %for.inc.us

if.then.us:                                       ; preds = %for.body6.us
  store i32 %2, ptr %arrayidx3.us, align 4, !tbaa !5
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %for.body6.us
  %3 = phi i32 [ %1, %for.body6.us ], [ %2, %if.then.us ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count57
  br i1 %exitcond.not, label %for.cond4.for.inc20_crit_edge.us, label %for.body6.us, !llvm.loop !14

for.cond4.for.inc20_crit_edge.us:                 ; preds = %for.inc.us
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond58.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count57
  br i1 %exitcond58.not, label %for.cond23.preheader, label %for.body.us, !llvm.loop !15

for.cond23.preheader:                             ; preds = %for.cond4.for.inc20_crit_edge.us
  store i32 %n, ptr @j, align 4, !tbaa !5
  store i32 %n, ptr @i, align 4, !tbaa !5
  %wide.trip.count67 = zext nneg i32 %n to i64
  %min.iters.check = icmp ult i32 %n, 4
  %n.vec = and i64 %wide.trip.count57, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count57
  br label %for.cond26.preheader.us

for.cond26.preheader.us:                          ; preds = %for.cond23.preheader, %for.cond26.for.inc42_crit_edge.us
  %indvars.iv64 = phi i64 [ 0, %for.cond23.preheader ], [ %indvars.iv.next65, %for.cond26.for.inc42_crit_edge.us ]
  %arrayidx34.us = getelementptr inbounds nuw [201 x i32], ptr @min1, i64 0, i64 %indvars.iv64
  %4 = load i32, ptr %arrayidx34.us, align 4, !tbaa !5
  br i1 %min.iters.check, label %for.body28.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond26.preheader.us
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %4, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %5 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv64, i64 %index
  %wide.load = load <4 x i32>, ptr %5, align 4, !tbaa !5
  %6 = sub nsw <4 x i32> %wide.load, %broadcast.splat
  store <4 x i32> %6, ptr %5, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !60

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond26.for.inc42_crit_edge.us, label %for.body28.us.preheader

for.body28.us.preheader:                          ; preds = %for.cond26.preheader.us, %middle.block
  %indvars.iv59.ph = phi i64 [ 0, %for.cond26.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body28.us

for.body28.us:                                    ; preds = %for.body28.us.preheader, %for.body28.us
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body28.us ], [ %indvars.iv59.ph, %for.body28.us.preheader ]
  %arrayidx32.us = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv64, i64 %indvars.iv59
  %8 = load i32, ptr %arrayidx32.us, align 4, !tbaa !5
  %sub.us = sub nsw i32 %8, %4
  store i32 %sub.us, ptr %arrayidx32.us, align 4, !tbaa !5
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count67
  br i1 %exitcond63.not, label %for.cond26.for.inc42_crit_edge.us, label %for.body28.us, !llvm.loop !61

for.cond26.for.inc42_crit_edge.us:                ; preds = %for.body28.us, %middle.block
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %exitcond68.not = icmp eq i64 %indvars.iv.next65, %wide.trip.count67
  br i1 %exitcond68.not, label %for.cond45.preheader, label %for.cond26.preheader.us, !llvm.loop !20

for.cond45.preheader:                             ; preds = %for.cond26.for.inc42_crit_edge.us
  store i32 %n, ptr @j, align 4, !tbaa !5
  %wide.trip.count77 = zext nneg i32 %n to i64
  br label %for.body47.us

for.body47.us:                                    ; preds = %for.cond45.preheader, %for.cond52.for.inc73_crit_edge.us
  %indvars.iv74 = phi i64 [ 0, %for.cond45.preheader ], [ %indvars.iv.next75, %for.cond52.for.inc73_crit_edge.us ]
  %arrayidx49.us = getelementptr inbounds nuw [201 x i32], ptr @a, i64 0, i64 %indvars.iv74
  %9 = load i32, ptr %arrayidx49.us, align 4, !tbaa !5
  %arrayidx51.us = getelementptr inbounds nuw [201 x i32], ptr @min2, i64 0, i64 %indvars.iv74
  store i32 %9, ptr %arrayidx51.us, align 4, !tbaa !5
  br label %for.body54.us

for.body54.us:                                    ; preds = %for.body47.us, %for.inc70.us
  %indvars.iv69 = phi i64 [ 0, %for.body47.us ], [ %indvars.iv.next70, %for.inc70.us ]
  %10 = phi i32 [ %9, %for.body47.us ], [ %12, %for.inc70.us ]
  %arrayidx58.us = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv69, i64 %indvars.iv74
  %11 = load i32, ptr %arrayidx58.us, align 4, !tbaa !5
  %cmp61.us = icmp slt i32 %11, %10
  br i1 %cmp61.us, label %if.then62.us, label %for.inc70.us

if.then62.us:                                     ; preds = %for.body54.us
  store i32 %11, ptr %arrayidx51.us, align 4, !tbaa !5
  br label %for.inc70.us

for.inc70.us:                                     ; preds = %if.then62.us, %for.body54.us
  %12 = phi i32 [ %10, %for.body54.us ], [ %11, %if.then62.us ]
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %exitcond73.not = icmp eq i64 %indvars.iv.next70, %wide.trip.count77
  br i1 %exitcond73.not, label %for.cond52.for.inc73_crit_edge.us, label %for.body54.us, !llvm.loop !21

for.cond52.for.inc73_crit_edge.us:                ; preds = %for.inc70.us
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %for.cond76.preheader, label %for.body47.us, !llvm.loop !22

for.cond76.preheader:                             ; preds = %for.cond52.for.inc73_crit_edge.us
  store i32 %n, ptr @j, align 4, !tbaa !5
  %wide.trip.count87 = zext nneg i32 %n to i64
  br label %for.cond79.preheader.us

for.cond79.preheader.us:                          ; preds = %for.cond76.preheader, %for.cond79.for.inc96_crit_edge.us
  %indvars.iv84 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next85, %for.cond79.for.inc96_crit_edge.us ]
  %arrayidx87.us = getelementptr inbounds nuw [201 x i32], ptr @min2, i64 0, i64 %indvars.iv84
  %13 = load i32, ptr %arrayidx87.us, align 4, !tbaa !5
  br label %for.body81.us

for.body81.us:                                    ; preds = %for.cond79.preheader.us, %for.body81.us
  %indvars.iv79 = phi i64 [ 0, %for.cond79.preheader.us ], [ %indvars.iv.next80, %for.body81.us ]
  %arrayidx85.us = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv79, i64 %indvars.iv84
  %14 = load i32, ptr %arrayidx85.us, align 4, !tbaa !5
  %sub88.us = sub nsw i32 %14, %13
  store i32 %sub88.us, ptr %arrayidx85.us, align 4, !tbaa !5
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count87
  br i1 %exitcond83.not, label %for.cond79.for.inc96_crit_edge.us, label %for.body81.us, !llvm.loop !23

for.cond79.for.inc96_crit_edge.us:                ; preds = %for.body81.us
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  %exitcond88.not = icmp eq i64 %indvars.iv.next85, %wide.trip.count87
  br i1 %exitcond88.not, label %for.cond76.for.end98_crit_edge, label %for.cond79.preheader.us, !llvm.loop !24

for.cond76.for.end98_crit_edge:                   ; preds = %for.cond79.for.inc96_crit_edge.us
  store i32 %n, ptr @j, align 4, !tbaa !5
  br label %for.end98

for.end98:                                        ; preds = %for.cond23.preheader.thread, %for.cond76.for.end98_crit_edge
  %storemerge17.lcssa = phi i32 [ %n, %for.cond76.for.end98_crit_edge ], [ 0, %for.cond23.preheader.thread ]
  store i32 %storemerge17.lcssa, ptr @i, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_Z4movei(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %cmp10 = icmp sgt i32 %n, 2
  br i1 %cmp10, label %for.cond1.preheader.us.preheader, label %for.cond13.preheader.thread

for.cond1.preheader.us.preheader:                 ; preds = %entry
  %wide.trip.count29 = zext nneg i32 %n to i64
  %min.iters.check = icmp eq i32 %n, 3
  %n.vec = and i64 %wide.trip.count29, 2147483644
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count29
  br label %for.cond1.preheader.us

for.cond1.preheader.us:                           ; preds = %for.cond1.preheader.us.preheader, %for.cond1.for.inc10_crit_edge.us
  %indvars.iv25 = phi i64 [ 2, %for.cond1.preheader.us.preheader ], [ %indvars.iv.next26, %for.cond1.for.inc10_crit_edge.us ]
  %0 = add nsw i64 %indvars.iv25, -1
  br i1 %min.iters.check, label %for.body3.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond1.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond1.preheader.us ]
  %1 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv25, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 4, !tbaa !5
  %2 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %0, i64 %index
  store <4 x i32> %wide.load, ptr %2, align 4, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, %n.vec
  br i1 %3, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond1.for.inc10_crit_edge.us, label %for.body3.us.preheader

for.body3.us.preheader:                           ; preds = %for.cond1.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.cond1.preheader.us ], [ %n.vec, %middle.block ]
  br label %for.body3.us

for.body3.us:                                     ; preds = %for.body3.us.preheader, %for.body3.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3.us ], [ %indvars.iv.ph, %for.body3.us.preheader ]
  %arrayidx5.us = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv25, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx5.us, align 4, !tbaa !5
  %arrayidx9.us = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %0, i64 %indvars.iv
  store i32 %4, ptr %arrayidx9.us, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count29
  br i1 %exitcond.not, label %for.cond1.for.inc10_crit_edge.us, label %for.body3.us, !llvm.loop !63

for.cond1.for.inc10_crit_edge.us:                 ; preds = %for.body3.us, %middle.block
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %exitcond30.not = icmp eq i64 %indvars.iv.next26, %wide.trip.count29
  br i1 %exitcond30.not, label %for.cond13.preheader, label %for.cond1.preheader.us, !llvm.loop !27

for.cond13.preheader:                             ; preds = %for.cond1.for.inc10_crit_edge.us
  store i32 %n, ptr @j, align 4, !tbaa !5
  %wide.trip.count41 = zext nneg i32 %n to i64
  %5 = add nsw i64 %wide.trip.count29, -2
  %min.iters.check46 = icmp ult i64 %5, 4
  %n.vec49 = and i64 %5, -4
  %6 = or disjoint i64 %n.vec49, 2
  %cmp.n55 = icmp eq i64 %5, %n.vec49
  br label %for.cond16.preheader.us

for.cond13.preheader.thread:                      ; preds = %entry
  %cmp141644 = icmp sgt i32 %n, 0
  br i1 %cmp141644, label %for.cond13.for.end33_crit_edge, label %for.end33

for.cond16.preheader.us:                          ; preds = %for.cond13.preheader, %for.cond16.for.inc31_crit_edge.us
  %indvars.iv38 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next39, %for.cond16.for.inc31_crit_edge.us ]
  br i1 %min.iters.check46, label %for.body18.us.preheader, label %vector.body50

vector.body50:                                    ; preds = %for.cond16.preheader.us, %vector.body50
  %index51 = phi i64 [ %index.next53, %vector.body50 ], [ 0, %for.cond16.preheader.us ]
  %offset.idx = or disjoint i64 %index51, 2
  %7 = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv38, i64 %offset.idx
  %wide.load52 = load <4 x i32>, ptr %7, align 4, !tbaa !5
  %8 = or disjoint i64 %index51, 1
  %9 = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv38, i64 %8
  store <4 x i32> %wide.load52, ptr %9, align 4, !tbaa !5
  %index.next53 = add nuw i64 %index51, 4
  %10 = icmp eq i64 %index.next53, %n.vec49
  br i1 %10, label %middle.block54, label %vector.body50, !llvm.loop !64

middle.block54:                                   ; preds = %vector.body50
  br i1 %cmp.n55, label %for.cond16.for.inc31_crit_edge.us, label %for.body18.us.preheader

for.body18.us.preheader:                          ; preds = %for.cond16.preheader.us, %middle.block54
  %indvars.iv32.ph = phi i64 [ 2, %for.cond16.preheader.us ], [ %6, %middle.block54 ]
  br label %for.body18.us

for.body18.us:                                    ; preds = %for.body18.us.preheader, %for.body18.us
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body18.us ], [ %indvars.iv32.ph, %for.body18.us.preheader ]
  %arrayidx22.us = getelementptr inbounds nuw [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv38, i64 %indvars.iv32
  %11 = load i32, ptr %arrayidx22.us, align 4, !tbaa !5
  %12 = add nsw i64 %indvars.iv32, -1
  %arrayidx27.us = getelementptr inbounds [201 x [201 x i32]], ptr @a, i64 0, i64 %indvars.iv38, i64 %12
  store i32 %11, ptr %arrayidx27.us, align 4, !tbaa !5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond37.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count41
  br i1 %exitcond37.not, label %for.cond16.for.inc31_crit_edge.us, label %for.body18.us, !llvm.loop !65

for.cond16.for.inc31_crit_edge.us:                ; preds = %for.body18.us, %middle.block54
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %for.cond13.for.end33_crit_edge, label %for.cond16.preheader.us, !llvm.loop !30

for.cond13.for.end33_crit_edge:                   ; preds = %for.cond16.for.inc31_crit_edge.us, %for.cond13.preheader.thread
  %.us-phi20 = phi i32 [ 2, %for.cond13.preheader.thread ], [ %n, %for.cond16.for.inc31_crit_edge.us ]
  store i32 %.us-phi20, ptr @j, align 4, !tbaa !5
  br label %for.end33

for.end33:                                        ; preds = %for.cond13.preheader.thread, %for.cond13.for.end33_crit_edge
  %storemerge5.lcssa = phi i32 [ %n, %for.cond13.for.end33_crit_edge ], [ 0, %for.cond13.preheader.thread ]
  store i32 %storemerge5.lcssa, ptr @i, align 4, !tbaa !5
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }

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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11, !17}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11, !17, !18}
!26 = distinct !{!26, !10, !11, !17}
!27 = distinct !{!27, !10, !11}
!28 = distinct !{!28, !10, !11, !17, !18}
!29 = distinct !{!29, !10, !11, !17}
!30 = distinct !{!30, !10, !11}
!31 = distinct !{!31, !10, !11}
!32 = !{!33, !33, i64 0}
!33 = !{!"vtable pointer", !8, i64 0}
!34 = !{!35, !49, i64 240}
!35 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !36, i64 0, !46, i64 216, !7, i64 224, !47, i64 225, !48, i64 232, !49, i64 240, !50, i64 248, !51, i64 256}
!36 = !{!"_ZTSSt8ios_base", !37, i64 8, !37, i64 16, !38, i64 24, !39, i64 28, !39, i64 32, !40, i64 40, !42, i64 48, !7, i64 64, !6, i64 192, !43, i64 200, !44, i64 208}
!37 = !{!"long", !7, i64 0}
!38 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!39 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!40 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !41, i64 0}
!41 = !{!"any pointer", !7, i64 0}
!42 = !{!"_ZTSNSt8ios_base6_WordsE", !41, i64 0, !37, i64 8}
!43 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !41, i64 0}
!44 = !{!"_ZTSSt6locale", !45, i64 0}
!45 = !{!"p1 _ZTSNSt6locale5_ImplE", !41, i64 0}
!46 = !{!"p1 _ZTSSo", !41, i64 0}
!47 = !{!"bool", !7, i64 0}
!48 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !41, i64 0}
!49 = !{!"p1 _ZTSSt5ctypeIcE", !41, i64 0}
!50 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !41, i64 0}
!51 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !41, i64 0}
!52 = !{!53, !7, i64 56}
!53 = !{!"_ZTSSt5ctypeIcE", !54, i64 0, !55, i64 16, !47, i64 24, !56, i64 32, !56, i64 40, !57, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!54 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!55 = !{!"p1 _ZTS15__locale_struct", !41, i64 0}
!56 = !{!"p1 int", !41, i64 0}
!57 = !{!"p1 short", !41, i64 0}
!58 = !{!7, !7, i64 0}
!59 = distinct !{!59, !10, !11}
!60 = distinct !{!60, !10, !11, !17, !18}
!61 = distinct !{!61, !10, !11, !17}
!62 = distinct !{!62, !10, !11, !17, !18}
!63 = distinct !{!63, !10, !11, !17}
!64 = distinct !{!64, !10, !11, !17, !18}
!65 = distinct !{!65, !10, !11, !17}
