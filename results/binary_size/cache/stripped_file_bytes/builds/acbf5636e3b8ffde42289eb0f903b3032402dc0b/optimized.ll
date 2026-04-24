; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcsvu213f.cpp"
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
@num = dso_local local_unnamed_addr global [200 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define dso_local void @_Z6searchPA5_ci(ptr noundef readonly captures(none) %s, i32 noundef %j) local_unnamed_addr #0 {
entry:
  %cmp.not17 = icmp sgt i32 %j, 1
  br i1 %cmp.not17, label %for.body.lr.ph, label %for.end31

for.body.lr.ph:                                   ; preds = %entry
  %idxprom = zext nneg i32 %j to i64
  %arrayidx = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %1 = load i32, ptr @n, align 4
  %.fr = freeze i32 %1
  %cmp814 = icmp sgt i32 %.fr, 1
  br i1 %cmp814, label %for.body.us.preheader, label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count27 = zext nneg i32 %.fr to i64
  %2 = add nsw i64 %wide.trip.count27, -1
  %min.iters.check = icmp ult i32 %.fr, 5
  %n.vec = and i64 %2, -4
  %3 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %2, %n.vec
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc29.us
  %indvars.iv29 = phi i64 [ 1, %for.body.us.preheader ], [ %indvars.iv.next30, %for.inc29.us ]
  %arrayidx3.us = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv29
  %4 = load i8, ptr %arrayidx3.us, align 1, !tbaa !5
  %cmp6.us = icmp eq i8 %0, %4
  br i1 %cmp6.us, label %for.body10.us.preheader, label %for.inc29.us

for.body10.us.preheader:                          ; preds = %for.body.us
  br i1 %min.iters.check, label %for.body10.us.preheader47, label %vector.body

vector.body:                                      ; preds = %for.body10.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body10.us.preheader ]
  %vec.phi = phi <4 x i1> [ %8, %vector.body ], [ zeroinitializer, %for.body10.us.preheader ]
  %offset.idx = or disjoint i64 %index, 1
  %5 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %idxprom, i64 %offset.idx
  %wide.load = load <4 x i8>, ptr %5, align 1, !tbaa !5
  %6 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv29, i64 %offset.idx
  %wide.load43 = load <4 x i8>, ptr %6, align 1, !tbaa !5
  %7 = icmp ne <4 x i8> %wide.load, %wide.load43
  %.fr46 = freeze <4 x i1> %7
  %8 = or <4 x i1> %vec.phi, %.fr46
  %index.next = add nuw i64 %index, 4
  %9 = icmp eq i64 %index.next, %n.vec
  br i1 %9, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %10 = bitcast <4 x i1> %8 to i4
  %.not = icmp eq i4 %10, 0
  %rdx.select = zext i1 %.not to i32
  br i1 %cmp.n, label %for.cond7.for.cond.cleanup9_crit_edge.us, label %for.body10.us.preheader47

for.body10.us.preheader47:                        ; preds = %for.body10.us.preheader, %middle.block
  %indvars.iv24.ph = phi i64 [ 1, %for.body10.us.preheader ], [ %3, %middle.block ]
  %count.015.us.ph = phi i32 [ 1, %for.body10.us.preheader ], [ %rdx.select, %middle.block ]
  br label %for.body10.us

for.inc29.us:                                     ; preds = %for.cond7.for.cond.cleanup9_crit_edge.us, %for.body.us
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next30, %idxprom
  br i1 %exitcond33.not, label %for.end31, label %for.body.us, !llvm.loop !13

for.body10.us:                                    ; preds = %for.body10.us.preheader47, %for.body10.us
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body10.us ], [ %indvars.iv24.ph, %for.body10.us.preheader47 ]
  %count.015.us = phi i32 [ %spec.select.us, %for.body10.us ], [ %count.015.us.ph, %for.body10.us.preheader47 ]
  %arrayidx14.us = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %idxprom, i64 %indvars.iv24
  %11 = load i8, ptr %arrayidx14.us, align 1, !tbaa !5
  %arrayidx19.us = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv29, i64 %indvars.iv24
  %12 = load i8, ptr %arrayidx19.us, align 1, !tbaa !5
  %cmp21.not.us = icmp eq i8 %11, %12
  %spec.select.us = select i1 %cmp21.not.us, i32 %count.015.us, i32 0
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond28.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count27
  br i1 %exitcond28.not, label %for.cond7.for.cond.cleanup9_crit_edge.us, label %for.body10.us, !llvm.loop !14

for.cond7.for.cond.cleanup9_crit_edge.us:         ; preds = %for.body10.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select.us, %for.body10.us ]
  %cmp23.us = icmp eq i32 %spec.select.us.lcssa, 0
  br i1 %cmp23.us, label %for.inc29.us, label %cleanup35

for.body:                                         ; preds = %for.body.lr.ph, %for.inc29
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc29 ], [ 1, %for.body.lr.ph ]
  %arrayidx3 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv
  %13 = load i8, ptr %arrayidx3, align 1, !tbaa !5
  %cmp6 = icmp eq i8 %0, %13
  br i1 %cmp6, label %cleanup35, label %for.inc29

for.inc29:                                        ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %idxprom
  br i1 %exitcond.not, label %for.end31, label %for.body, !llvm.loop !13

for.end31:                                        ; preds = %for.inc29, %for.inc29.us, %entry
  %idxprom32 = sext i32 %j to i64
  br label %cleanup35

cleanup35:                                        ; preds = %for.body, %for.cond7.for.cond.cleanup9_crit_edge.us, %for.end31
  %.us-phi.sink = phi i64 [ %idxprom32, %for.end31 ], [ %indvars.iv29, %for.cond7.for.cond.cleanup9_crit_edge.us ], [ %indvars.iv, %for.body ]
  %arrayidx26 = getelementptr inbounds [200 x i32], ptr @num, i64 0, i64 %.us-phi.sink
  %14 = load i32, ptr %arrayidx26, align 4, !tbaa !15
  %inc27 = add nsw i32 %14, 1
  store i32 %inc27, ptr %arrayidx26, align 4, !tbaa !15
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %__c.addr.i = alloca i8, align 1
  %s = alloca [200 x [5 x i8]], align 16
  %c = alloca [500 x i8], align 16
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %s) #7
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %c) #7
  %call1 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv138 = phi i32 [ %indvars.iv.next139, %while.cond ], [ 2, %entry ]
  %indvars.iv128 = phi i32 [ %indvars.iv.next129, %while.cond ], [ 3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 1, %entry ]
  %call2 = tail call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %conv = trunc i32 %call2 to i8
  %arrayidx = getelementptr inbounds nuw [500 x i8], ptr %c, i64 0, i64 %indvars.iv
  store i8 %conv, ptr %arrayidx, align 1, !tbaa !5
  %sext.mask = and i32 %call2, 255
  %cmp.not = icmp eq i32 %sext.mask, 10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next129 = add i32 %indvars.iv128, 1
  %indvars.iv.next139 = add nuw i32 %indvars.iv138, 1
  br i1 %cmp.not, label %for.cond.preheader, label %while.cond, !llvm.loop !17

for.cond.preheader:                               ; preds = %while.cond
  %0 = trunc nuw nsw i64 %indvars.iv to i32
  %1 = load i32, ptr @n, align 4, !tbaa !15
  %.fr.i = freeze i32 %1
  %cmp4.not78 = icmp sgt i32 %.fr.i, %0
  br i1 %cmp4.not78, label %if.else, label %for.cond5.preheader.lr.ph

for.cond5.preheader.lr.ph:                        ; preds = %for.cond.preheader
  %cmp676 = icmp sgt i32 %.fr.i, 0
  %cmp814.i = icmp sgt i32 %.fr.i, 1
  %wide.trip.count27.i = zext i32 %.fr.i to i64
  br i1 %cmp814.i, label %for.cond5.preheader.us.preheader, label %for.cond5.preheader.lr.ph.split

for.cond5.preheader.us.preheader:                 ; preds = %for.cond5.preheader.lr.ph
  %2 = sub i32 %indvars.iv138, %.fr.i
  %wide.trip.count154 = zext i32 %2 to i64
  %invariant.gep174 = getelementptr inbounds nuw i8, ptr %s, i64 5
  %3 = add nsw i64 %wide.trip.count27.i, -1
  %min.iters.check = icmp ult i32 %.fr.i, 5
  %n.vec = and i64 %3, -4
  %4 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %3, %n.vec
  br label %for.cond5.preheader.us

for.cond5.preheader.us:                           ; preds = %for.cond5.preheader.us.preheader, %_Z6searchPA5_ci.exit.us
  %indvars.iv150 = phi i64 [ 1, %for.cond5.preheader.us.preheader ], [ %indvars.iv.next151, %_Z6searchPA5_ci.exit.us ]
  %indvar142 = phi i64 [ 0, %for.cond5.preheader.us.preheader ], [ %5, %_Z6searchPA5_ci.exit.us ]
  %5 = add nuw nsw i64 %indvar142, 1
  br i1 %cmp676, label %for.body8.lr.ph.us, label %for.cond.cleanup7.us

for.cond.cleanup7.us:                             ; preds = %for.body8.lr.ph.us, %for.cond5.preheader.us
  %cmp.not17.i.us = icmp samesign ugt i64 %indvars.iv150, 1
  br i1 %cmp.not17.i.us, label %for.body.lr.ph.i.us, label %_Z6searchPA5_ci.exit.us

for.body.lr.ph.i.us:                              ; preds = %for.cond.cleanup7.us
  %arrayidx.i.us = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv150
  %6 = load i8, ptr %arrayidx.i.us, align 1, !tbaa !5
  br label %for.body.us.i.us

for.body.us.i.us:                                 ; preds = %for.inc29.us.i.us, %for.body.lr.ph.i.us
  %indvars.iv29.i.us = phi i64 [ 1, %for.body.lr.ph.i.us ], [ %indvars.iv.next30.i.us, %for.inc29.us.i.us ]
  %arrayidx3.us.i.us = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv29.i.us
  %7 = load i8, ptr %arrayidx3.us.i.us, align 1, !tbaa !5
  %cmp6.us.i.us = icmp eq i8 %6, %7
  br i1 %cmp6.us.i.us, label %for.body10.us.i.us.preheader, label %for.inc29.us.i.us

for.body10.us.i.us.preheader:                     ; preds = %for.body.us.i.us
  br i1 %min.iters.check, label %for.body10.us.i.us.preheader197, label %vector.body

vector.body:                                      ; preds = %for.body10.us.i.us.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.body10.us.i.us.preheader ]
  %vec.phi = phi <4 x i1> [ %11, %vector.body ], [ zeroinitializer, %for.body10.us.i.us.preheader ]
  %offset.idx = or disjoint i64 %index, 1
  %8 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv150, i64 %offset.idx
  %wide.load = load <4 x i8>, ptr %8, align 1, !tbaa !5
  %9 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv29.i.us, i64 %offset.idx
  %wide.load178 = load <4 x i8>, ptr %9, align 1, !tbaa !5
  %10 = icmp ne <4 x i8> %wide.load, %wide.load178
  %.fr = freeze <4 x i1> %10
  %11 = or <4 x i1> %vec.phi, %.fr
  %index.next = add nuw i64 %index, 4
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %13 = bitcast <4 x i1> %11 to i4
  %.not = icmp eq i4 %13, 0
  %rdx.select = zext i1 %.not to i32
  br i1 %cmp.n, label %for.cond7.for.cond.cleanup9_crit_edge.us.i.us, label %for.body10.us.i.us.preheader197

for.body10.us.i.us.preheader197:                  ; preds = %for.body10.us.i.us.preheader, %middle.block
  %indvars.iv24.i.us.ph = phi i64 [ 1, %for.body10.us.i.us.preheader ], [ %4, %middle.block ]
  %count.015.us.i.us.ph = phi i32 [ 1, %for.body10.us.i.us.preheader ], [ %rdx.select, %middle.block ]
  br label %for.body10.us.i.us

for.body10.us.i.us:                               ; preds = %for.body10.us.i.us.preheader197, %for.body10.us.i.us
  %indvars.iv24.i.us = phi i64 [ %indvars.iv.next25.i.us, %for.body10.us.i.us ], [ %indvars.iv24.i.us.ph, %for.body10.us.i.us.preheader197 ]
  %count.015.us.i.us = phi i32 [ %spec.select.us.i.us, %for.body10.us.i.us ], [ %count.015.us.i.us.ph, %for.body10.us.i.us.preheader197 ]
  %arrayidx14.us.i.us = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv150, i64 %indvars.iv24.i.us
  %14 = load i8, ptr %arrayidx14.us.i.us, align 1, !tbaa !5
  %arrayidx19.us.i.us = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv29.i.us, i64 %indvars.iv24.i.us
  %15 = load i8, ptr %arrayidx19.us.i.us, align 1, !tbaa !5
  %cmp21.not.us.i.us = icmp eq i8 %14, %15
  %spec.select.us.i.us = select i1 %cmp21.not.us.i.us, i32 %count.015.us.i.us, i32 0
  %indvars.iv.next25.i.us = add nuw nsw i64 %indvars.iv24.i.us, 1
  %exitcond28.not.i.us = icmp eq i64 %indvars.iv.next25.i.us, %wide.trip.count27.i
  br i1 %exitcond28.not.i.us, label %for.cond7.for.cond.cleanup9_crit_edge.us.i.us, label %for.body10.us.i.us, !llvm.loop !19

for.cond7.for.cond.cleanup9_crit_edge.us.i.us:    ; preds = %for.body10.us.i.us, %middle.block
  %spec.select.us.i.us.lcssa = phi i32 [ %rdx.select, %middle.block ], [ %spec.select.us.i.us, %for.body10.us.i.us ]
  %cmp23.us.i.us = icmp eq i32 %spec.select.us.i.us.lcssa, 0
  br i1 %cmp23.us.i.us, label %for.inc29.us.i.us, label %_Z6searchPA5_ci.exit.us

for.inc29.us.i.us:                                ; preds = %for.cond7.for.cond.cleanup9_crit_edge.us.i.us, %for.body.us.i.us
  %indvars.iv.next30.i.us = add nuw nsw i64 %indvars.iv29.i.us, 1
  %exitcond33.not.i.us = icmp eq i64 %indvars.iv.next30.i.us, %indvars.iv150
  br i1 %exitcond33.not.i.us, label %_Z6searchPA5_ci.exit.us, label %for.body.us.i.us, !llvm.loop !13

_Z6searchPA5_ci.exit.us:                          ; preds = %for.cond7.for.cond.cleanup9_crit_edge.us.i.us, %for.inc29.us.i.us, %for.cond.cleanup7.us
  %.us-phi.sink.i.us = phi i64 [ 1, %for.cond.cleanup7.us ], [ %indvars.iv29.i.us, %for.cond7.for.cond.cleanup9_crit_edge.us.i.us ], [ %indvars.iv150, %for.inc29.us.i.us ]
  %arrayidx26.i.us = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %.us-phi.sink.i.us
  %16 = load i32, ptr %arrayidx26.i.us, align 4, !tbaa !15
  %inc27.i.us = add nsw i32 %16, 1
  store i32 %inc27.i.us, ptr %arrayidx26.i.us, align 4, !tbaa !15
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond155 = icmp eq i64 %5, %wide.trip.count154
  br i1 %exitcond155, label %for.body26.preheader, label %for.cond5.preheader.us, !llvm.loop !20

for.body8.lr.ph.us:                               ; preds = %for.cond5.preheader.us
  %scevgep145 = getelementptr i8, ptr %c, i64 %5
  %17 = mul nuw nsw i64 %indvar142, 5
  %gep175 = getelementptr i8, ptr %invariant.gep174, i64 %17
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %gep175, ptr align 1 %scevgep145, i64 %wide.trip.count27.i, i1 false), !tbaa !5
  br label %for.cond.cleanup7.us

for.cond5.preheader.lr.ph.split:                  ; preds = %for.cond5.preheader.lr.ph
  br i1 %cmp676, label %for.cond5.preheader.us80.preheader, label %for.cond5.preheader.preheader

for.cond5.preheader.preheader:                    ; preds = %for.cond5.preheader.lr.ph.split
  %18 = sub i32 %indvars.iv128, %.fr.i
  %wide.trip.count = zext i32 %18 to i64
  br label %for.cond5.preheader

for.cond5.preheader.us80.preheader:               ; preds = %for.cond5.preheader.lr.ph.split
  %19 = sub i32 %indvars.iv138, %.fr.i
  %wide.trip.count140 = zext i32 %19 to i64
  %invariant.gep = getelementptr inbounds nuw i8, ptr %s, i64 5
  br label %for.cond5.preheader.us80

for.cond5.preheader.us80:                         ; preds = %for.cond5.preheader.us80.preheader, %_Z6searchPA5_ci.exit.us89
  %indvars.iv135 = phi i64 [ 1, %for.cond5.preheader.us80.preheader ], [ %indvars.iv.next136, %_Z6searchPA5_ci.exit.us89 ]
  %indvar = phi i64 [ 0, %for.cond5.preheader.us80.preheader ], [ %21, %_Z6searchPA5_ci.exit.us89 ]
  %20 = mul nuw nsw i64 %indvar, 5
  %gep173 = getelementptr i8, ptr %invariant.gep, i64 %20
  %21 = add nuw nsw i64 %indvar, 1
  %scevgep130 = getelementptr nuw i8, ptr %c, i64 %21
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %gep173, ptr nonnull align 1 %scevgep130, i64 %wide.trip.count27.i, i1 false), !tbaa !5
  %cmp.not17.i.us83 = icmp samesign ugt i64 %indvars.iv135, 1
  br i1 %cmp.not17.i.us83, label %for.body.lr.ph.i.us84, label %_Z6searchPA5_ci.exit.us89

for.body.lr.ph.i.us84:                            ; preds = %for.cond5.preheader.us80
  %arrayidx.i.us86 = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv135
  %22 = load i8, ptr %arrayidx.i.us86, align 1, !tbaa !5
  br label %for.body.i.us

for.body.i.us:                                    ; preds = %for.inc29.i.us, %for.body.lr.ph.i.us84
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %for.inc29.i.us ], [ 1, %for.body.lr.ph.i.us84 ]
  %arrayidx3.i.us = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv.i.us
  %23 = load i8, ptr %arrayidx3.i.us, align 1, !tbaa !5
  %cmp6.i.us = icmp eq i8 %22, %23
  br i1 %cmp6.i.us, label %_Z6searchPA5_ci.exit.us89, label %for.inc29.i.us

for.inc29.i.us:                                   ; preds = %for.body.i.us
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %indvars.iv135
  br i1 %exitcond.not.i.us, label %_Z6searchPA5_ci.exit.us89, label %for.body.i.us, !llvm.loop !13

_Z6searchPA5_ci.exit.us89:                        ; preds = %for.body.i.us, %for.inc29.i.us, %for.cond5.preheader.us80
  %.us-phi.sink.i.us90 = phi i64 [ 1, %for.cond5.preheader.us80 ], [ %indvars.iv.i.us, %for.body.i.us ], [ %indvars.iv135, %for.inc29.i.us ]
  %arrayidx26.i.us91 = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %.us-phi.sink.i.us90
  %24 = load i32, ptr %arrayidx26.i.us91, align 4, !tbaa !15
  %inc27.i.us92 = add nsw i32 %24, 1
  store i32 %inc27.i.us92, ptr %arrayidx26.i.us91, align 4, !tbaa !15
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond141 = icmp eq i64 %21, %wide.trip.count140
  br i1 %exitcond141, label %for.body26.preheader, label %for.cond5.preheader.us80, !llvm.loop !20

for.cond5.preheader:                              ; preds = %for.cond5.preheader.preheader, %_Z6searchPA5_ci.exit
  %indvars.iv125 = phi i64 [ 1, %for.cond5.preheader.preheader ], [ %indvars.iv.next126, %_Z6searchPA5_ci.exit ]
  %cmp.not17.i = icmp samesign ugt i64 %indvars.iv125, 1
  br i1 %cmp.not17.i, label %for.body.lr.ph.i, label %_Z6searchPA5_ci.exit

for.body26.preheader:                             ; preds = %_Z6searchPA5_ci.exit, %_Z6searchPA5_ci.exit.us89, %_Z6searchPA5_ci.exit.us
  %25 = sub i32 %indvars.iv128, %.fr.i
  %wide.trip.count160 = zext i32 %25 to i64
  %26 = add nsw i64 %wide.trip.count160, -1
  %min.iters.check180 = icmp ult i64 %26, 4
  br i1 %min.iters.check180, label %for.body26.preheader195, label %vector.ph181

vector.ph181:                                     ; preds = %for.body26.preheader
  %n.vec183 = and i64 %26, -4
  %27 = or disjoint i64 %n.vec183, 1
  br label %vector.body184

vector.body184:                                   ; preds = %vector.body184, %vector.ph181
  %index185 = phi i64 [ 0, %vector.ph181 ], [ %index.next189, %vector.body184 ]
  %vec.phi186 = phi <4 x i32> [ zeroinitializer, %vector.ph181 ], [ %29, %vector.body184 ]
  %offset.idx187 = or disjoint i64 %index185, 1
  %28 = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %offset.idx187
  %wide.load188 = load <4 x i32>, ptr %28, align 4, !tbaa !15
  %29 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load188, <4 x i32> %vec.phi186)
  %index.next189 = add nuw i64 %index185, 4
  %30 = icmp eq i64 %index.next189, %n.vec183
  br i1 %30, label %middle.block190, label %vector.body184, !llvm.loop !21

middle.block190:                                  ; preds = %vector.body184
  %31 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %29)
  %cmp.n191 = icmp eq i64 %26, %n.vec183
  br i1 %cmp.n191, label %for.cond.cleanup25, label %for.body26.preheader195

for.body26.preheader195:                          ; preds = %for.body26.preheader, %middle.block190
  %indvars.iv156.ph = phi i64 [ 1, %for.body26.preheader ], [ %27, %middle.block190 ]
  %max.0110.ph = phi i32 [ 0, %for.body26.preheader ], [ %31, %middle.block190 ]
  br label %for.body26

for.body.lr.ph.i:                                 ; preds = %for.cond5.preheader
  %arrayidx.i = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv125
  %32 = load i8, ptr %arrayidx.i, align 1, !tbaa !5
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.lr.ph.i, %for.inc29.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.inc29.i ], [ 1, %for.body.lr.ph.i ]
  %arrayidx3.i = getelementptr inbounds nuw [5 x i8], ptr %s, i64 %indvars.iv.i
  %33 = load i8, ptr %arrayidx3.i, align 1, !tbaa !5
  %cmp6.i = icmp eq i8 %32, %33
  br i1 %cmp6.i, label %_Z6searchPA5_ci.exit, label %for.inc29.i

for.inc29.i:                                      ; preds = %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %indvars.iv125
  br i1 %exitcond.not.i, label %_Z6searchPA5_ci.exit, label %for.body.i, !llvm.loop !13

_Z6searchPA5_ci.exit:                             ; preds = %for.body.i, %for.inc29.i, %for.cond5.preheader
  %.us-phi.sink.i = phi i64 [ %indvars.iv125, %for.cond5.preheader ], [ %indvars.iv.i, %for.body.i ], [ %indvars.iv125, %for.inc29.i ]
  %arrayidx26.i = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %.us-phi.sink.i
  %34 = load i32, ptr %arrayidx26.i, align 4, !tbaa !15
  %inc27.i = add nsw i32 %34, 1
  store i32 %inc27.i, ptr %arrayidx26.i, align 4, !tbaa !15
  %indvars.iv.next126 = add nuw nsw i64 %indvars.iv125, 1
  %exitcond = icmp eq i64 %indvars.iv.next126, %wide.trip.count
  br i1 %exitcond, label %for.body26.preheader, label %for.cond5.preheader, !llvm.loop !20

for.cond.cleanup25:                               ; preds = %for.body26, %middle.block190
  %spec.select.lcssa = phi i32 [ %31, %middle.block190 ], [ %spec.select, %for.body26 ]
  %cmp35 = icmp eq i32 %spec.select.lcssa, 1
  br i1 %cmp35, label %if.then36, label %if.else

for.body26:                                       ; preds = %for.body26.preheader195, %for.body26
  %indvars.iv156 = phi i64 [ %indvars.iv.next157, %for.body26 ], [ %indvars.iv156.ph, %for.body26.preheader195 ]
  %max.0110 = phi i32 [ %spec.select, %for.body26 ], [ %max.0110.ph, %for.body26.preheader195 ]
  %arrayidx28 = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %indvars.iv156
  %35 = load i32, ptr %arrayidx28, align 4, !tbaa !15
  %spec.select = tail call i32 @llvm.smax.i32(i32 %35, i32 %max.0110)
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1
  %exitcond161 = icmp eq i64 %indvars.iv.next157, %wide.trip.count160
  br i1 %exitcond161, label %for.cond.cleanup25, label %for.body26, !llvm.loop !22

if.then36:                                        ; preds = %for.cond.cleanup25
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 2)
  %vtable.i26 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !23
  %vbase.offset.ptr.i27 = getelementptr i8, ptr %vtable.i26, i64 -24
  %vbase.offset.i28 = load i64, ptr %vbase.offset.ptr.i27, align 8
  %add.ptr.i29 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i28
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i29, i64 240
  %36 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !25
  %tobool.not.i.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then36
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then36
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %36, i64 56
  %37 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !43
  %tobool.not.i1.i.i = icmp eq i8 %37, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %36, i64 67
  %38 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %36)
  %vtable.i.i.i = load ptr, ptr %36, align 8, !tbaa !23
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %39 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %39(ptr noundef nonnull align 8 dereferenceable(570) %36, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %38, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i30 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i30)
  br label %if.end70

if.else:                                          ; preds = %for.cond.preheader, %for.cond.cleanup25
  %max.0.lcssa170 = phi i32 [ %spec.select.lcssa, %for.cond.cleanup25 ], [ 0, %for.cond.preheader ]
  %call39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0.lcssa170)
  %vtable.i32 = load ptr, ptr %call39, align 8, !tbaa !23
  %vbase.offset.ptr.i33 = getelementptr i8, ptr %vtable.i32, i64 -24
  %vbase.offset.i34 = load i64, ptr %vbase.offset.ptr.i33, align 8
  %add.ptr.i35 = getelementptr inbounds i8, ptr %call39, i64 %vbase.offset.i34
  %_M_ctype.i.i36 = getelementptr inbounds nuw i8, ptr %add.ptr.i35, i64 240
  %40 = load ptr, ptr %_M_ctype.i.i36, align 8, !tbaa !25
  %tobool.not.i.i.i37 = icmp eq ptr %40, null
  br i1 %tobool.not.i.i.i37, label %if.then.i.i.i50, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i38

if.then.i.i.i50:                                  ; preds = %if.else
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i38: ; preds = %if.else
  %_M_widen_ok.i.i.i39 = getelementptr inbounds nuw i8, ptr %40, i64 56
  %41 = load i8, ptr %_M_widen_ok.i.i.i39, align 8, !tbaa !43
  %tobool.not.i1.i.i40 = icmp eq i8 %41, 0
  br i1 %tobool.not.i1.i.i40, label %if.end.i.i.i46, label %if.then.i2.i.i41

if.then.i2.i.i41:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i38
  %arrayidx.i.i.i42 = getelementptr inbounds nuw i8, ptr %40, i64 67
  %42 = load i8, ptr %arrayidx.i.i.i42, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit51

if.end.i.i.i46:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i38
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %40)
  %vtable.i.i.i47 = load ptr, ptr %40, align 8, !tbaa !23
  %vfn.i.i.i48 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i47, i64 48
  %43 = load ptr, ptr %vfn.i.i.i48, align 8
  %call.i.i.i49 = tail call noundef signext i8 %43(ptr noundef nonnull align 8 dereferenceable(570) %40, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit51

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit51: ; preds = %if.then.i2.i.i41, %if.end.i.i.i46
  %retval.0.i.i.i43 = phi i8 [ %42, %if.then.i2.i.i41 ], [ %call.i.i.i49, %if.end.i.i.i46 ]
  %call1.i44 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call39, i8 noundef signext %retval.0.i.i.i43)
  %call.i.i45 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i44)
  %44 = load i32, ptr @n, align 4, !tbaa !15
  %cmp45.not117.not = icmp slt i32 %44, %0
  br i1 %cmp45.not117.not, label %for.body47, label %if.end70

for.body47:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit51, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71
  %45 = phi i32 [ %55, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71 ], [ %44, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit51 ]
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71 ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit51 ]
  %arrayidx49 = getelementptr inbounds nuw [200 x i32], ptr @num, i64 0, i64 %indvars.iv165
  %46 = load i32, ptr %arrayidx49, align 4, !tbaa !15
  %cmp50 = icmp eq i32 %46, %max.0.lcssa170
  %cmp54113 = icmp sgt i32 %45, 0
  %or.cond = and i1 %cmp50, %cmp54113
  br i1 %or.cond, label %for.body56, label %if.end65

for.body56:                                       ; preds = %for.body47, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv162 = phi i64 [ %indvars.iv.next163, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %for.body47 ]
  %arrayidx60 = getelementptr inbounds nuw [200 x [5 x i8]], ptr %s, i64 0, i64 %indvars.iv165, i64 %indvars.iv162
  %47 = load i8, ptr %arrayidx60, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %47, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !23
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %48 = load i64, ptr %gep, align 8, !tbaa !49
  %cmp.not.i = icmp eq i64 %48, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body56
  %call1.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body56
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %47)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next163 = add nuw nsw i64 %indvars.iv162, 1
  %49 = load i32, ptr @n, align 4, !tbaa !15
  %50 = sext i32 %49 to i64
  %cmp54 = icmp slt i64 %indvars.iv.next163, %50
  br i1 %cmp54, label %for.body56, label %if.end65, !llvm.loop !50

if.end65:                                         ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.body47
  %vtable.i52 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !23
  %vbase.offset.ptr.i53 = getelementptr i8, ptr %vtable.i52, i64 -24
  %vbase.offset.i54 = load i64, ptr %vbase.offset.ptr.i53, align 8
  %gep115 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i54
  %51 = load ptr, ptr %gep115, align 8, !tbaa !25
  %tobool.not.i.i.i57 = icmp eq ptr %51, null
  br i1 %tobool.not.i.i.i57, label %if.then.i.i.i70, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58

if.then.i.i.i70:                                  ; preds = %if.end65
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58: ; preds = %if.end65
  %_M_widen_ok.i.i.i59 = getelementptr inbounds nuw i8, ptr %51, i64 56
  %52 = load i8, ptr %_M_widen_ok.i.i.i59, align 8, !tbaa !43
  %tobool.not.i1.i.i60 = icmp eq i8 %52, 0
  br i1 %tobool.not.i1.i.i60, label %if.end.i.i.i66, label %if.then.i2.i.i61

if.then.i2.i.i61:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
  %arrayidx.i.i.i62 = getelementptr inbounds nuw i8, ptr %51, i64 67
  %53 = load i8, ptr %arrayidx.i.i.i62, align 1, !tbaa !5
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71

if.end.i.i.i66:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i58
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %51)
  %vtable.i.i.i67 = load ptr, ptr %51, align 8, !tbaa !23
  %vfn.i.i.i68 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i67, i64 48
  %54 = load ptr, ptr %vfn.i.i.i68, align 8
  %call.i.i.i69 = call noundef signext i8 %54(ptr noundef nonnull align 8 dereferenceable(570) %51, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71: ; preds = %if.then.i2.i.i61, %if.end.i.i.i66
  %retval.0.i.i.i63 = phi i8 [ %53, %if.then.i2.i.i61 ], [ %call.i.i.i69, %if.end.i.i.i66 ]
  %call1.i64 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i63)
  %call.i.i65 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i64)
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1
  %55 = load i32, ptr @n, align 4, !tbaa !15
  %sub43 = sub nsw i32 %0, %55
  %56 = sext i32 %sub43 to i64
  %cmp45.not.not = icmp slt i64 %indvars.iv165, %56
  br i1 %cmp45.not.not, label %for.body47, label %if.end70, !llvm.loop !51

if.end70:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit71, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit51, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %s) #7
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11, !12}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !6, i64 0}
!17 = distinct !{!17, !9, !10}
!18 = distinct !{!18, !9, !10, !11, !12}
!19 = distinct !{!19, !9, !10, !11}
!20 = distinct !{!20, !9, !10}
!21 = distinct !{!21, !9, !10, !11, !12}
!22 = distinct !{!22, !9, !10, !11}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{!26, !40, i64 240}
!26 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !27, i64 0, !37, i64 216, !6, i64 224, !38, i64 225, !39, i64 232, !40, i64 240, !41, i64 248, !42, i64 256}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !33, i64 48, !6, i64 64, !16, i64 192, !34, i64 200, !35, i64 208}
!28 = !{!"long", !6, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !32, i64 0}
!32 = !{!"any pointer", !6, i64 0}
!33 = !{!"_ZTSNSt8ios_base6_WordsE", !32, i64 0, !28, i64 8}
!34 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !32, i64 0}
!35 = !{!"_ZTSSt6locale", !36, i64 0}
!36 = !{!"p1 _ZTSNSt6locale5_ImplE", !32, i64 0}
!37 = !{!"p1 _ZTSSo", !32, i64 0}
!38 = !{!"bool", !6, i64 0}
!39 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !32, i64 0}
!40 = !{!"p1 _ZTSSt5ctypeIcE", !32, i64 0}
!41 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!42 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !32, i64 0}
!43 = !{!44, !6, i64 56}
!44 = !{!"_ZTSSt5ctypeIcE", !45, i64 0, !46, i64 16, !38, i64 24, !47, i64 32, !47, i64 40, !48, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!45 = !{!"_ZTSNSt6locale5facetE", !16, i64 8}
!46 = !{!"p1 _ZTS15__locale_struct", !32, i64 0}
!47 = !{!"p1 int", !32, i64 0}
!48 = !{!"p1 short", !32, i64 0}
!49 = !{!27, !28, i64 16}
!50 = distinct !{!50, !9, !10}
!51 = distinct !{!51, !9, !10}
