; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqugs24f1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %high = alloca [30 x i32], align 16
  %num = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %high) #9
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %num) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(120) %num, i8 0, i64 120, i1 false)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %0, 0
  br i1 %cmp14, label %for.body, label %for.end.thread

for.end.thread:                                   ; preds = %entry
  store i32 1, ptr %num, align 16, !tbaa !5
  br label %for.end27

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %high, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  store i32 1, ptr %num, align 16, !tbaa !5
  %cmp419 = icmp sgt i32 %1, 1
  br i1 %cmp419, label %for.cond6.preheader.preheader, label %for.end27

for.cond6.preheader.preheader:                    ; preds = %for.end
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond6.preheader.preheader, %for.end22
  %indvars.iv23 = phi i64 [ 1, %for.cond6.preheader.preheader ], [ %indvars.iv.next24, %for.end22 ]
  %arrayidx10 = getelementptr inbounds nuw [30 x i32], ptr %high, i64 0, i64 %indvars.iv23
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.body8

for.body8:                                        ; preds = %for.cond6.preheader, %for.inc21
  %indvars.iv25 = phi i64 [ %indvars.iv23, %for.cond6.preheader ], [ %indvars.iv.next26, %for.inc21 ]
  %max.017 = phi i32 [ 0, %for.cond6.preheader ], [ %max.1, %for.inc21 ]
  %indvars.iv.next26 = add nsw i64 %indvars.iv25, -1
  %arrayidx12 = getelementptr inbounds nuw [30 x i32], ptr %high, i64 0, i64 %indvars.iv.next26
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13.not = icmp sgt i32 %3, %4
  br i1 %cmp13.not, label %for.inc21, label %if.then

if.then:                                          ; preds = %for.body8
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv.next26
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %max.017, i32 %5)
  br label %for.inc21

for.inc21:                                        ; preds = %if.then, %for.body8
  %max.1 = phi i32 [ %max.017, %for.body8 ], [ %spec.select, %if.then ]
  %cmp7 = icmp sgt i64 %indvars.iv25, 1
  br i1 %cmp7, label %for.body8, label %for.end22, !llvm.loop !12

for.end22:                                        ; preds = %for.inc21
  %add = add nuw nsw i32 %max.1, 1
  %arrayidx24 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv23
  store i32 %add, ptr %arrayidx24, align 4, !tbaa !5
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next24, %wide.trip.count
  br i1 %exitcond.not, label %for.end27, label %for.cond6.preheader, !llvm.loop !13

for.end27:                                        ; preds = %for.end22, %for.end.thread, %for.end
  %.lcssa31 = phi i32 [ %0, %for.end.thread ], [ %1, %for.end ], [ %1, %for.end22 ]
  %cmp.not.i.i = icmp eq i32 %.lcssa31, 0
  br i1 %cmp.not.i.i, label %_ZSt4sortIPiEvT_S1_.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end27
  %idx.ext = sext i32 %.lcssa31 to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 2
  %add.ptr = getelementptr inbounds i8, ptr %num, i64 %add.ptr.idx
  %6 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %idx.ext, i1 true)
  %sub.i.i.i = shl nuw nsw i64 %6, 1
  %mul.i.i = xor i64 %sub.i.i.i, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %num, ptr noundef nonnull %add.ptr, i64 noundef %mul.i.i)
  call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %num, ptr noundef nonnull %add.ptr)
  %.pre = load i32, ptr %k, align 4, !tbaa !5
  %7 = add nsw i32 %.pre, -1
  %8 = sext i32 %7 to i64
  br label %_ZSt4sortIPiEvT_S1_.exit

_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %for.end27, %if.then.i.i
  %sub29 = phi i64 [ -1, %for.end27 ], [ %8, %if.then.i.i ]
  %arrayidx31 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %sub29
  %9 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %num) #9
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %high) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #9
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %__first, ptr noundef %__last, i64 noundef %__depth_limit) local_unnamed_addr #5 comdat {
entry:
  %__comp.i = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.lhs.cast21 = ptrtoint ptr %__last to i64
  %sub.ptr.sub22 = sub i64 %sub.ptr.lhs.cast21, %sub.ptr.rhs.cast
  %cmp23 = icmp sgt i64 %sub.ptr.sub22, 64
  br i1 %cmp23, label %while.body.lr.ph, label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr1.i = getelementptr i8, ptr %__first, i64 4
  br label %while.body

while.body:                                       ; preds = %while.body.lr.ph, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %sub.ptr.sub26 = phi i64 [ %sub.ptr.sub22, %while.body.lr.ph ], [ %sub.ptr.sub, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %__last.addr.025 = phi ptr [ %__last, %while.body.lr.ph ], [ %__first.addr.1.i.i, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %__depth_limit.addr.024 = phi i64 [ %__depth_limit, %while.body.lr.ph ], [ %dec, %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit ]
  %cmp1 = icmp eq i64 %__depth_limit.addr.024, 0
  br i1 %cmp1, label %while.body.lr.ph.i.i, label %if.end

while.body.lr.ph.i.i:                             ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__comp.i)
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last.addr.025, ptr noundef nonnull align 1 dereferenceable(1) %__comp.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__comp.i)
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %while.body.lr.ph.i.i
  %__last.addr.08.i.i = phi ptr [ %__last.addr.025, %while.body.lr.ph.i.i ], [ %incdec.ptr.i.i, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ]
  %incdec.ptr.i.i = getelementptr inbounds i8, ptr %__last.addr.08.i.i, i64 -4
  %0 = load i32, ptr %incdec.ptr.i.i, align 4, !tbaa !5
  %1 = load i32, ptr %__first, align 4, !tbaa !5
  store i32 %1, ptr %incdec.ptr.i.i, align 4, !tbaa !5
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %incdec.ptr.i.i to i64
  %sub.ptr.sub.i.i.i = sub i64 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast
  %sub.ptr.div.i.i.i = ashr exact i64 %sub.ptr.sub.i.i.i, 2
  %sub.i.i.i.i = add nsw i64 %sub.ptr.div.i.i.i, -1
  %div.i.i.i.i = sdiv i64 %sub.i.i.i.i, 2
  %cmp24.i.i.i.i = icmp sgt i64 %sub.ptr.div.i.i.i, 2
  br i1 %cmp24.i.i.i.i, label %while.body.i.i.i.i, label %while.end.i.i.i.i

while.body.i.i.i.i:                               ; preds = %while.body.i.i, %while.body.i.i.i.i
  %__secondChild.025.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %while.body.i.i.i.i ], [ 0, %while.body.i.i ]
  %add.i.i.i.i = shl i64 %__secondChild.025.i.i.i.i, 1
  %mul.i.i.i.i = add i64 %add.i.i.i.i, 2
  %add.ptr.i.i.i.i = getelementptr inbounds i32, ptr %__first, i64 %mul.i.i.i.i
  %gep.i.i.i.i = getelementptr i32, ptr %add.ptr1.i, i64 %add.i.i.i.i
  %2 = load i32, ptr %add.ptr.i.i.i.i, align 4, !tbaa !5
  %3 = load i32, ptr %gep.i.i.i.i, align 4, !tbaa !5
  %cmp.i.i.i.i.i = icmp slt i32 %2, %3
  %dec.i.i.i.i = or disjoint i64 %add.i.i.i.i, 1
  %spec.select.i.i.i.i = select i1 %cmp.i.i.i.i.i, i64 %dec.i.i.i.i, i64 %mul.i.i.i.i
  %add.ptr3.i.i.i.i = getelementptr inbounds i32, ptr %__first, i64 %spec.select.i.i.i.i
  %4 = load i32, ptr %add.ptr3.i.i.i.i, align 4, !tbaa !5
  %add.ptr4.i.i.i.i = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.025.i.i.i.i
  store i32 %4, ptr %add.ptr4.i.i.i.i, align 4, !tbaa !5
  %cmp.i.i.i.i = icmp slt i64 %spec.select.i.i.i.i, %div.i.i.i.i
  br i1 %cmp.i.i.i.i, label %while.body.i.i.i.i, label %while.end.i.i.i.i, !llvm.loop !14

while.end.i.i.i.i:                                ; preds = %while.body.i.i.i.i, %while.body.i.i
  %__secondChild.0.lcssa.i.i.i.i = phi i64 [ 0, %while.body.i.i ], [ %spec.select.i.i.i.i, %while.body.i.i.i.i ]
  %5 = and i64 %sub.ptr.sub.i.i.i, 4
  %cmp5.i.i.i.i = icmp eq i64 %5, 0
  br i1 %cmp5.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end16.i.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %while.end.i.i.i.i
  %sub6.i.i.i.i = add nsw i64 %sub.ptr.div.i.i.i, -2
  %div7.i.i.i.i = ashr exact i64 %sub6.i.i.i.i, 1
  %cmp8.i.i.i.i = icmp eq i64 %__secondChild.0.lcssa.i.i.i.i, %div7.i.i.i.i
  br i1 %cmp8.i.i.i.i, label %if.end16.i.thread.i.i.i, label %if.end16.i.i.i.i

if.end16.i.thread.i.i.i:                          ; preds = %land.lhs.true.i.i.i.i
  %add10.i.i.i.i = shl nuw nsw i64 %__secondChild.0.lcssa.i.i.i.i, 1
  %sub12.i.i.i.i = or disjoint i64 %add10.i.i.i.i, 1
  %add.ptr13.i.i.i.i = getelementptr inbounds nuw i32, ptr %__first, i64 %sub12.i.i.i.i
  %6 = load i32, ptr %add.ptr13.i.i.i.i, align 4, !tbaa !5
  %add.ptr14.i.i.i.i = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.0.lcssa.i.i.i.i
  store i32 %6, ptr %add.ptr14.i.i.i.i, align 4, !tbaa !5
  br label %land.rhs.i.i.i.i.i.preheader

if.end16.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i, %while.end.i.i.i.i
  %cmp13.i.i.not.i.i.i = icmp eq i64 %__secondChild.0.lcssa.i.i.i.i, 0
  br i1 %cmp13.i.i.not.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %land.rhs.i.i.i.i.i.preheader

land.rhs.i.i.i.i.i.preheader:                     ; preds = %if.end16.i.i.i.i, %if.end16.i.thread.i.i.i
  %__holeIndex.addr.014.i.i.i.i.i.ph = phi i64 [ %__secondChild.0.lcssa.i.i.i.i, %if.end16.i.i.i.i ], [ %sub12.i.i.i.i, %if.end16.i.thread.i.i.i ]
  br label %land.rhs.i.i.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i.i.preheader, %while.body.i.i.i.i.i
  %__holeIndex.addr.014.i.i.i.i.i = phi i64 [ %__parent.015.i.i45.i.i.i, %while.body.i.i.i.i.i ], [ %__holeIndex.addr.014.i.i.i.i.i.ph, %land.rhs.i.i.i.i.i.preheader ]
  %__parent.015.in.i.i.i.i.i = add nsw i64 %__holeIndex.addr.014.i.i.i.i.i, -1
  %__parent.015.i.i45.i.i.i = lshr i64 %__parent.015.in.i.i.i.i.i, 1
  %add.ptr.i.i.i.i.i = getelementptr inbounds nuw i32, ptr %__first, i64 %__parent.015.i.i45.i.i.i
  %7 = load i32, ptr %add.ptr.i.i.i.i.i, align 4, !tbaa !5
  %cmp.i.i.i.i.i.i = icmp slt i32 %7, %0
  br i1 %cmp.i.i.i.i.i.i, label %while.body.i.i.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

while.body.i.i.i.i.i:                             ; preds = %land.rhs.i.i.i.i.i
  %add.ptr2.i.i.i.i.i = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.014.i.i.i.i.i
  store i32 %7, ptr %add.ptr2.i.i.i.i.i, align 4, !tbaa !5
  %cmp.i23.i.not.i.i.i = icmp ult i64 %__parent.015.in.i.i.i.i.i, 2
  br i1 %cmp.i23.i.not.i.i.i, label %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %land.rhs.i.i.i.i.i, !llvm.loop !15

_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %while.body.i.i.i.i.i, %land.rhs.i.i.i.i.i, %if.end16.i.i.i.i
  %__holeIndex.addr.0.lcssa.i.i.i.i.i = phi i64 [ 0, %if.end16.i.i.i.i ], [ %__holeIndex.addr.014.i.i.i.i.i, %land.rhs.i.i.i.i.i ], [ 0, %while.body.i.i.i.i.i ]
  %add.ptr5.i.i.i.i.i = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0.lcssa.i.i.i.i.i
  store i32 %0, ptr %add.ptr5.i.i.i.i.i, align 4, !tbaa !5
  %cmp.i.i = icmp sgt i64 %sub.ptr.sub.i.i.i, 4
  br i1 %cmp.i.i, label %while.body.i.i, label %while.end, !llvm.loop !16

if.end:                                           ; preds = %while.body
  %dec = add nsw i64 %__depth_limit.addr.024, -1
  %div.i1516 = lshr i64 %sub.ptr.sub26, 3
  %add.ptr.i = getelementptr inbounds nuw i32, ptr %__first, i64 %div.i1516
  %add.ptr2.i = getelementptr inbounds i8, ptr %__last.addr.025, i64 -4
  %8 = load i32, ptr %add.ptr1.i, align 4, !tbaa !5
  %9 = load i32, ptr %add.ptr.i, align 4, !tbaa !5
  %cmp.i.i.i = icmp slt i32 %8, %9
  %10 = load i32, ptr %add.ptr2.i, align 4, !tbaa !5
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else7.i.i

if.then.i.i:                                      ; preds = %if.end
  %cmp.i19.i.i = icmp slt i32 %9, %10
  br i1 %cmp.i19.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  %11 = load i32, ptr %__first, align 4, !tbaa !5
  store i32 %9, ptr %__first, align 4, !tbaa !5
  store i32 %11, ptr %add.ptr.i, align 4, !tbaa !5
  br label %while.body.i.i10.preheader

if.else.i.i:                                      ; preds = %if.then.i.i
  %cmp.i20.i.i = icmp slt i32 %8, %10
  %12 = load i32, ptr %__first, align 4, !tbaa !5
  br i1 %cmp.i20.i.i, label %if.then4.i.i, label %if.else5.i.i

if.then4.i.i:                                     ; preds = %if.else.i.i
  store i32 %10, ptr %__first, align 4, !tbaa !5
  store i32 %12, ptr %add.ptr2.i, align 4, !tbaa !5
  br label %while.body.i.i10.preheader

if.else5.i.i:                                     ; preds = %if.else.i.i
  store i32 %8, ptr %__first, align 4, !tbaa !5
  store i32 %12, ptr %add.ptr1.i, align 4, !tbaa !5
  br label %while.body.i.i10.preheader

if.else7.i.i:                                     ; preds = %if.end
  %cmp.i21.i.i = icmp slt i32 %8, %10
  br i1 %cmp.i21.i.i, label %if.then9.i.i, label %if.else10.i.i

if.then9.i.i:                                     ; preds = %if.else7.i.i
  %13 = load i32, ptr %__first, align 4, !tbaa !5
  store i32 %8, ptr %__first, align 4, !tbaa !5
  store i32 %13, ptr %add.ptr1.i, align 4, !tbaa !5
  br label %while.body.i.i10.preheader

if.else10.i.i:                                    ; preds = %if.else7.i.i
  %cmp.i22.i.i = icmp slt i32 %9, %10
  %14 = load i32, ptr %__first, align 4, !tbaa !5
  br i1 %cmp.i22.i.i, label %if.then12.i.i, label %if.else13.i.i

if.then12.i.i:                                    ; preds = %if.else10.i.i
  store i32 %10, ptr %__first, align 4, !tbaa !5
  store i32 %14, ptr %add.ptr2.i, align 4, !tbaa !5
  br label %while.body.i.i10.preheader

if.else13.i.i:                                    ; preds = %if.else10.i.i
  store i32 %9, ptr %__first, align 4, !tbaa !5
  store i32 %14, ptr %add.ptr.i, align 4, !tbaa !5
  br label %while.body.i.i10.preheader

while.body.i.i10.preheader:                       ; preds = %if.else13.i.i, %if.then12.i.i, %if.then9.i.i, %if.else5.i.i, %if.then4.i.i, %if.then2.i.i
  br label %while.body.i.i10

while.body.i.i10:                                 ; preds = %while.body.i.i10.preheader, %if.end.i.i
  %__last.addr.0.i.i = phi ptr [ %__last.addr.1.i.i, %if.end.i.i ], [ %__last.addr.025, %while.body.i.i10.preheader ]
  %__first.addr.0.i.i = phi ptr [ %incdec.ptr.i.i11, %if.end.i.i ], [ %add.ptr1.i, %while.body.i.i10.preheader ]
  %15 = load i32, ptr %__first, align 4, !tbaa !5
  br label %while.cond1.i.i

while.cond1.i.i:                                  ; preds = %while.cond1.i.i, %while.body.i.i10
  %__first.addr.1.i.i = phi ptr [ %__first.addr.0.i.i, %while.body.i.i10 ], [ %incdec.ptr.i.i11, %while.cond1.i.i ]
  %16 = load i32, ptr %__first.addr.1.i.i, align 4, !tbaa !5
  %cmp.i.i8.i = icmp slt i32 %16, %15
  %incdec.ptr.i.i11 = getelementptr inbounds nuw i8, ptr %__first.addr.1.i.i, i64 4
  br i1 %cmp.i.i8.i, label %while.cond1.i.i, label %while.cond4.i.i, !llvm.loop !17

while.cond4.i.i:                                  ; preds = %while.cond1.i.i, %while.cond4.i.i
  %__last.addr.0.pn.i.i = phi ptr [ %__last.addr.1.i.i, %while.cond4.i.i ], [ %__last.addr.0.i.i, %while.cond1.i.i ]
  %__last.addr.1.i.i = getelementptr inbounds i8, ptr %__last.addr.0.pn.i.i, i64 -4
  %17 = load i32, ptr %__last.addr.1.i.i, align 4, !tbaa !5
  %cmp.i11.i.i = icmp slt i32 %15, %17
  br i1 %cmp.i11.i.i, label %while.cond4.i.i, label %while.end8.i.i, !llvm.loop !18

while.end8.i.i:                                   ; preds = %while.cond4.i.i
  %cmp.i.i12 = icmp ult ptr %__first.addr.1.i.i, %__last.addr.1.i.i
  br i1 %cmp.i.i12, label %if.end.i.i, label %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

if.end.i.i:                                       ; preds = %while.end8.i.i
  store i32 %17, ptr %__first.addr.1.i.i, align 4, !tbaa !5
  store i32 %16, ptr %__last.addr.1.i.i, align 4, !tbaa !5
  br label %while.body.i.i10, !llvm.loop !19

_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %while.end8.i.i
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %__first.addr.1.i.i, ptr noundef %__last.addr.025, i64 noundef %dec)
  %sub.ptr.lhs.cast = ptrtoint ptr %__first.addr.1.i.i to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 64
  br i1 %cmp, label %while.body, label %while.end, !llvm.loop !20

while.end:                                        ; preds = %_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %entry
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) local_unnamed_addr #5 comdat {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %scevgep = getelementptr i8, ptr %__first, i64 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i, %if.then
  %__i.015.i.idx = phi i64 [ 4, %if.then ], [ %__i.015.i.add, %for.inc.i ]
  %__first.pn14.i = phi ptr [ %__first, %if.then ], [ %__i.015.i.ptr, %for.inc.i ]
  %__i.015.i.ptr = getelementptr inbounds nuw i8, ptr %__first, i64 %__i.015.i.idx
  %0 = load i32, ptr %__i.015.i.ptr, align 4, !tbaa !5
  %1 = load i32, ptr %__first, align 4, !tbaa !5
  %cmp.i.i = icmp slt i32 %0, %1
  br i1 %cmp.i.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %for.body.i
  %cmp.i.i.i.i.i.i = icmp samesign ugt i64 %__i.015.i.idx, 4
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.then2.i.i.i.i.i.i, !prof !21

if.then.i.i.i.i.i.i:                              ; preds = %if.then2.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %__first, i64 %__i.015.i.idx, i1 false)
  br label %for.inc.i

if.then2.i.i.i.i.i.i:                             ; preds = %if.then2.i
  %add.ptr3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %__first.pn14.i, i64 4
  store i32 %1, ptr %add.ptr3.i.i.i.i.i.i, align 4, !tbaa !5
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %2 = load i32, ptr %__first.pn14.i, align 4, !tbaa !5
  %cmp.i10.i.i = icmp slt i32 %0, %2
  br i1 %cmp.i10.i.i, label %while.body.i.i, label %for.inc.i

while.body.i.i:                                   ; preds = %if.else.i, %while.body.i.i
  %3 = phi i32 [ %4, %while.body.i.i ], [ %2, %if.else.i ]
  %__next.012.i.i = phi ptr [ %__next.0.i.i, %while.body.i.i ], [ %__first.pn14.i, %if.else.i ]
  %__last.addr.011.i.i = phi ptr [ %__next.012.i.i, %while.body.i.i ], [ %__i.015.i.ptr, %if.else.i ]
  store i32 %3, ptr %__last.addr.011.i.i, align 4, !tbaa !5
  %__next.0.i.i = getelementptr inbounds i8, ptr %__next.012.i.i, i64 -4
  %4 = load i32, ptr %__next.0.i.i, align 4, !tbaa !5
  %cmp.i.i.i = icmp slt i32 %0, %4
  br i1 %cmp.i.i.i, label %while.body.i.i, label %for.inc.i, !llvm.loop !22

for.inc.i:                                        ; preds = %while.body.i.i, %if.else.i, %if.then2.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %__first.sink.i = phi ptr [ %__first, %if.then.i.i.i.i.i.i ], [ %__first, %if.then2.i.i.i.i.i.i ], [ %__i.015.i.ptr, %if.else.i ], [ %__next.012.i.i, %while.body.i.i ]
  store i32 %0, ptr %__first.sink.i, align 4, !tbaa !5
  %__i.015.i.add = add nuw nsw i64 %__i.015.i.idx, 4
  %cmp1.not.i = icmp eq i64 %__i.015.i.add, 64
  br i1 %cmp1.not.i, label %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %for.body.i, !llvm.loop !23

_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %for.inc.i
  %add.ptr = getelementptr inbounds nuw i8, ptr %__first, i64 64
  %cmp.not3.i = icmp eq ptr %add.ptr, %__last
  br i1 %cmp.not3.i, label %if.end, label %for.body.i7

for.body.i7:                                      ; preds = %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i
  %__i.04.i = phi ptr [ %incdec.ptr.i, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ], [ %add.ptr, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit ]
  %5 = load i32, ptr %__i.04.i, align 4, !tbaa !5
  %__next.09.i.i = getelementptr inbounds i8, ptr %__i.04.i, i64 -4
  %6 = load i32, ptr %__next.09.i.i, align 4, !tbaa !5
  %cmp.i10.i.i8 = icmp slt i32 %5, %6
  br i1 %cmp.i10.i.i8, label %while.body.i.i9, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

while.body.i.i9:                                  ; preds = %for.body.i7, %while.body.i.i9
  %7 = phi i32 [ %8, %while.body.i.i9 ], [ %6, %for.body.i7 ]
  %__next.012.i.i10 = phi ptr [ %__next.0.i.i12, %while.body.i.i9 ], [ %__next.09.i.i, %for.body.i7 ]
  %__last.addr.011.i.i11 = phi ptr [ %__next.012.i.i10, %while.body.i.i9 ], [ %__i.04.i, %for.body.i7 ]
  store i32 %7, ptr %__last.addr.011.i.i11, align 4, !tbaa !5
  %__next.0.i.i12 = getelementptr inbounds i8, ptr %__next.012.i.i10, i64 -4
  %8 = load i32, ptr %__next.0.i.i12, align 4, !tbaa !5
  %cmp.i.i.i13 = icmp slt i32 %5, %8
  br i1 %cmp.i.i.i13, label %while.body.i.i9, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !22

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %while.body.i.i9, %for.body.i7
  %__last.addr.0.lcssa.i.i = phi ptr [ %__i.04.i, %for.body.i7 ], [ %__next.012.i.i10, %while.body.i.i9 ]
  store i32 %5, ptr %__last.addr.0.lcssa.i.i, align 4, !tbaa !5
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %__i.04.i, i64 4
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %__last
  br i1 %cmp.not.i, label %if.end, label %for.body.i7, !llvm.loop !24

if.else:                                          ; preds = %entry
  %cmp.i = icmp eq ptr %__first, %__last
  %__i.012.i14 = getelementptr inbounds nuw i8, ptr %__first, i64 4
  %cmp1.not13.i = icmp eq ptr %__i.012.i14, %__last
  %or.cond = select i1 %cmp.i, i1 true, i1 %cmp1.not13.i
  br i1 %or.cond, label %if.end, label %for.body.i16

for.body.i16:                                     ; preds = %if.else, %for.inc.i22
  %__i.015.i17 = phi ptr [ %__i.0.i24, %for.inc.i22 ], [ %__i.012.i14, %if.else ]
  %__first.pn14.i18 = phi ptr [ %__i.015.i17, %for.inc.i22 ], [ %__first, %if.else ]
  %9 = load i32, ptr %__i.015.i17, align 4, !tbaa !5
  %10 = load i32, ptr %__first, align 4, !tbaa !5
  %cmp.i.i19 = icmp slt i32 %9, %10
  br i1 %cmp.i.i19, label %if.then2.i31, label %if.else.i20

if.then2.i31:                                     ; preds = %for.body.i16
  %sub.ptr.lhs.cast.i.i.i.i.i.i32 = ptrtoint ptr %__i.015.i17 to i64
  %sub.ptr.sub.i.i.i.i.i.i33 = sub i64 %sub.ptr.lhs.cast.i.i.i.i.i.i32, %sub.ptr.rhs.cast
  %sub.ptr.div.i.i.i.i.i.i34 = ashr exact i64 %sub.ptr.sub.i.i.i.i.i.i33, 2
  %cmp.i.i.i.i.i.i35 = icmp sgt i64 %sub.ptr.div.i.i.i.i.i.i34, 1
  br i1 %cmp.i.i.i.i.i.i35, label %if.then.i.i.i.i.i.i40, label %if.else.i.i.i.i.i.i36, !prof !21

if.then.i.i.i.i.i.i40:                            ; preds = %if.then2.i31
  %add.ptr3.i41 = getelementptr inbounds nuw i8, ptr %__first.pn14.i18, i64 8
  %idx.neg.i.i.i.i.i.i42 = sub nsw i64 0, %sub.ptr.div.i.i.i.i.i.i34
  %add.ptr.i.i.i.i.i.i43 = getelementptr inbounds i32, ptr %add.ptr3.i41, i64 %idx.neg.i.i.i.i.i.i42
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %add.ptr.i.i.i.i.i.i43, ptr noundef nonnull align 4 dereferenceable(1) %__first, i64 %sub.ptr.sub.i.i.i.i.i.i33, i1 false)
  br label %for.inc.i22

if.else.i.i.i.i.i.i36:                            ; preds = %if.then2.i31
  %cmp1.i.i.i.i.i.i37 = icmp eq i64 %sub.ptr.sub.i.i.i.i.i.i33, 4
  br i1 %cmp1.i.i.i.i.i.i37, label %if.then2.i.i.i.i.i.i38, label %for.inc.i22

if.then2.i.i.i.i.i.i38:                           ; preds = %if.else.i.i.i.i.i.i36
  %add.ptr3.i.i.i.i.i.i39 = getelementptr inbounds nuw i8, ptr %__first.pn14.i18, i64 4
  store i32 %10, ptr %add.ptr3.i.i.i.i.i.i39, align 4, !tbaa !5
  br label %for.inc.i22

if.else.i20:                                      ; preds = %for.body.i16
  %11 = load i32, ptr %__first.pn14.i18, align 4, !tbaa !5
  %cmp.i10.i.i21 = icmp slt i32 %9, %11
  br i1 %cmp.i10.i.i21, label %while.body.i.i26, label %for.inc.i22

while.body.i.i26:                                 ; preds = %if.else.i20, %while.body.i.i26
  %12 = phi i32 [ %13, %while.body.i.i26 ], [ %11, %if.else.i20 ]
  %__next.012.i.i27 = phi ptr [ %__next.0.i.i29, %while.body.i.i26 ], [ %__first.pn14.i18, %if.else.i20 ]
  %__last.addr.011.i.i28 = phi ptr [ %__next.012.i.i27, %while.body.i.i26 ], [ %__i.015.i17, %if.else.i20 ]
  store i32 %12, ptr %__last.addr.011.i.i28, align 4, !tbaa !5
  %__next.0.i.i29 = getelementptr inbounds i8, ptr %__next.012.i.i27, i64 -4
  %13 = load i32, ptr %__next.0.i.i29, align 4, !tbaa !5
  %cmp.i.i.i30 = icmp slt i32 %9, %13
  br i1 %cmp.i.i.i30, label %while.body.i.i26, label %for.inc.i22, !llvm.loop !22

for.inc.i22:                                      ; preds = %while.body.i.i26, %if.else.i20, %if.then2.i.i.i.i.i.i38, %if.else.i.i.i.i.i.i36, %if.then.i.i.i.i.i.i40
  %__first.sink.i23 = phi ptr [ %__first, %if.then.i.i.i.i.i.i40 ], [ %__first, %if.else.i.i.i.i.i.i36 ], [ %__first, %if.then2.i.i.i.i.i.i38 ], [ %__i.015.i17, %if.else.i20 ], [ %__next.012.i.i27, %while.body.i.i26 ]
  store i32 %9, ptr %__first.sink.i23, align 4, !tbaa !5
  %__i.0.i24 = getelementptr inbounds nuw i8, ptr %__i.015.i17, i64 4
  %cmp1.not.i25 = icmp eq ptr %__i.0.i24, %__last
  br i1 %cmp1.not.i25, label %if.end, label %for.body.i16, !llvm.loop !23

if.end:                                           ; preds = %for.inc.i22, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %if.else, %_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) local_unnamed_addr #5 comdat {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i64 %sub.ptr.div, -2
  %div9 = lshr i64 %sub, 1
  %sub.i = add nsw i64 %sub.ptr.div, -1
  %div.i1315 = lshr i64 %sub.i, 1
  %invariant.gep.i = getelementptr i8, ptr %__first, i64 4
  %0 = and i64 %sub.ptr.sub, 4
  %cmp5.i = icmp eq i64 %0, 0
  %div7.i = lshr exact i64 %sub, 1
  br i1 %cmp5.i, label %while.cond.preheader, label %while.cond.us

while.cond.preheader:                             ; preds = %if.end
  %sub12.i = or disjoint i64 %sub, 1
  %add.ptr13.i = getelementptr inbounds i32, ptr %__first, i64 %sub12.i
  %add.ptr14.i = getelementptr inbounds nuw i32, ptr %__first, i64 %div7.i
  br label %while.cond

while.cond.us:                                    ; preds = %if.end, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us
  %__parent.0.us = phi i64 [ %dec.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us ], [ %div9, %if.end ]
  %add.ptr.us = getelementptr inbounds nuw i32, ptr %__first, i64 %__parent.0.us
  %1 = load i32, ptr %add.ptr.us, align 4, !tbaa !5
  %cmp24.i.us = icmp slt i64 %__parent.0.us, %div.i1315
  br i1 %cmp24.i.us, label %while.body.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

while.body.i.us:                                  ; preds = %while.cond.us, %while.body.i.us
  %__secondChild.025.i.us = phi i64 [ %spec.select.i.us, %while.body.i.us ], [ %__parent.0.us, %while.cond.us ]
  %add.i.us = shl i64 %__secondChild.025.i.us, 1
  %mul.i.us = add i64 %add.i.us, 2
  %add.ptr.i.us = getelementptr inbounds i32, ptr %__first, i64 %mul.i.us
  %gep.i.us = getelementptr i32, ptr %invariant.gep.i, i64 %add.i.us
  %2 = load i32, ptr %add.ptr.i.us, align 4, !tbaa !5
  %3 = load i32, ptr %gep.i.us, align 4, !tbaa !5
  %cmp.i.i.us = icmp slt i32 %2, %3
  %dec.i.us = or disjoint i64 %add.i.us, 1
  %spec.select.i.us = select i1 %cmp.i.i.us, i64 %dec.i.us, i64 %mul.i.us
  %add.ptr3.i.us = getelementptr inbounds i32, ptr %__first, i64 %spec.select.i.us
  %4 = load i32, ptr %add.ptr3.i.us, align 4, !tbaa !5
  %add.ptr4.i.us = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.025.i.us
  store i32 %4, ptr %add.ptr4.i.us, align 4, !tbaa !5
  %cmp.i.us = icmp slt i64 %spec.select.i.us, %div.i1315
  br i1 %cmp.i.us, label %while.body.i.us, label %while.end.i.us, !llvm.loop !14

while.end.i.us:                                   ; preds = %while.body.i.us
  %cmp13.i.i.us = icmp sgt i64 %spec.select.i.us, %__parent.0.us
  br i1 %cmp13.i.i.us, label %land.rhs.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

land.rhs.i.i.us:                                  ; preds = %while.end.i.us, %while.body.i.i.us
  %__holeIndex.addr.014.i.i.us = phi i64 [ %__parent.015.i.i.us, %while.body.i.i.us ], [ %spec.select.i.us, %while.end.i.us ]
  %__parent.015.in.i.i.us = add nsw i64 %__holeIndex.addr.014.i.i.us, -1
  %__parent.015.i.i.us = sdiv i64 %__parent.015.in.i.i.us, 2
  %add.ptr.i.i.us = getelementptr inbounds i32, ptr %__first, i64 %__parent.015.i.i.us
  %5 = load i32, ptr %add.ptr.i.i.us, align 4, !tbaa !5
  %cmp.i.i.i.us = icmp slt i32 %5, %1
  br i1 %cmp.i.i.i.us, label %while.body.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us

while.body.i.i.us:                                ; preds = %land.rhs.i.i.us
  %add.ptr2.i.i.us = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.014.i.i.us
  store i32 %5, ptr %add.ptr2.i.i.us, align 4, !tbaa !5
  %cmp.i23.i.us = icmp sgt i64 %__parent.015.i.i.us, %__parent.0.us
  br i1 %cmp.i23.i.us, label %land.rhs.i.i.us, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, !llvm.loop !15

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us: ; preds = %land.rhs.i.i.us, %while.body.i.i.us, %while.cond.us, %while.end.i.us
  %__holeIndex.addr.0.lcssa.i.i.us = phi i64 [ %spec.select.i.us, %while.end.i.us ], [ %__parent.0.us, %while.cond.us ], [ %__parent.015.i.i.us, %while.body.i.i.us ], [ %__holeIndex.addr.014.i.i.us, %land.rhs.i.i.us ]
  %add.ptr5.i.i.us = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0.lcssa.i.i.us
  store i32 %1, ptr %add.ptr5.i.i.us, align 4, !tbaa !5
  %cmp5.not.us = icmp eq i64 %__parent.0.us, 0
  %dec.us = add nsw i64 %__parent.0.us, -1
  br i1 %cmp5.not.us, label %return, label %while.cond.us, !llvm.loop !25

while.cond:                                       ; preds = %while.cond.preheader, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit
  %__parent.0 = phi i64 [ %dec, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit ], [ %div9, %while.cond.preheader ]
  %add.ptr = getelementptr inbounds nuw i32, ptr %__first, i64 %__parent.0
  %6 = load i32, ptr %add.ptr, align 4, !tbaa !5
  %cmp24.i = icmp slt i64 %__parent.0, %div.i1315
  br i1 %cmp24.i, label %while.body.i, label %while.end.i

while.body.i:                                     ; preds = %while.cond, %while.body.i
  %__secondChild.025.i = phi i64 [ %spec.select.i, %while.body.i ], [ %__parent.0, %while.cond ]
  %add.i = shl i64 %__secondChild.025.i, 1
  %mul.i = add i64 %add.i, 2
  %add.ptr.i = getelementptr inbounds i32, ptr %__first, i64 %mul.i
  %gep.i = getelementptr i32, ptr %invariant.gep.i, i64 %add.i
  %7 = load i32, ptr %add.ptr.i, align 4, !tbaa !5
  %8 = load i32, ptr %gep.i, align 4, !tbaa !5
  %cmp.i.i = icmp slt i32 %7, %8
  %dec.i = or disjoint i64 %add.i, 1
  %spec.select.i = select i1 %cmp.i.i, i64 %dec.i, i64 %mul.i
  %add.ptr3.i = getelementptr inbounds i32, ptr %__first, i64 %spec.select.i
  %9 = load i32, ptr %add.ptr3.i, align 4, !tbaa !5
  %add.ptr4.i = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.025.i
  store i32 %9, ptr %add.ptr4.i, align 4, !tbaa !5
  %cmp.i = icmp slt i64 %spec.select.i, %div.i1315
  br i1 %cmp.i, label %while.body.i, label %while.end.i, !llvm.loop !14

while.end.i:                                      ; preds = %while.body.i, %while.cond
  %__secondChild.0.lcssa.i = phi i64 [ %__parent.0, %while.cond ], [ %spec.select.i, %while.body.i ]
  %cmp8.i = icmp eq i64 %__secondChild.0.lcssa.i, %div7.i
  br i1 %cmp8.i, label %if.then9.i, label %if.end16.i

if.then9.i:                                       ; preds = %while.end.i
  %10 = load i32, ptr %add.ptr13.i, align 4, !tbaa !5
  store i32 %10, ptr %add.ptr14.i, align 4, !tbaa !5
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then9.i, %while.end.i
  %__holeIndex.addr.1.i = phi i64 [ %sub12.i, %if.then9.i ], [ %__secondChild.0.lcssa.i, %while.end.i ]
  %cmp13.i.i = icmp sgt i64 %__holeIndex.addr.1.i, %__parent.0
  br i1 %cmp13.i.i, label %land.rhs.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

land.rhs.i.i:                                     ; preds = %if.end16.i, %while.body.i.i
  %__holeIndex.addr.014.i.i = phi i64 [ %__parent.015.i.i, %while.body.i.i ], [ %__holeIndex.addr.1.i, %if.end16.i ]
  %__parent.015.in.i.i = add nsw i64 %__holeIndex.addr.014.i.i, -1
  %__parent.015.i.i = sdiv i64 %__parent.015.in.i.i, 2
  %add.ptr.i.i = getelementptr inbounds i32, ptr %__first, i64 %__parent.015.i.i
  %11 = load i32, ptr %add.ptr.i.i, align 4, !tbaa !5
  %cmp.i.i.i = icmp slt i32 %11, %6
  br i1 %cmp.i.i.i, label %while.body.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit

while.body.i.i:                                   ; preds = %land.rhs.i.i
  %add.ptr2.i.i = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.014.i.i
  store i32 %11, ptr %add.ptr2.i.i, align 4, !tbaa !5
  %cmp.i23.i = icmp sgt i64 %__parent.015.i.i, %__parent.0
  br i1 %cmp.i23.i, label %land.rhs.i.i, label %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, !llvm.loop !15

_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit: ; preds = %land.rhs.i.i, %while.body.i.i, %if.end16.i
  %__holeIndex.addr.0.lcssa.i.i = phi i64 [ %__holeIndex.addr.1.i, %if.end16.i ], [ %__parent.015.i.i, %while.body.i.i ], [ %__holeIndex.addr.014.i.i, %land.rhs.i.i ]
  %add.ptr5.i.i = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0.lcssa.i.i
  store i32 %6, ptr %add.ptr5.i.i, align 4, !tbaa !5
  %cmp5.not = icmp eq i64 %__parent.0, 0
  %dec = add nsw i64 %__parent.0, -1
  br i1 %cmp5.not, label %return, label %while.cond, !llvm.loop !25

return:                                           ; preds = %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit.us, %_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_.exit, %entry
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }

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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
