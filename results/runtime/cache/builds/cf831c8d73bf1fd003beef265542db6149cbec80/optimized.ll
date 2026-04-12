; ModuleID = '<stdin>'
source_filename = "/tmp/tmp21j9twvm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_ = comdat any

$_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_ = comdat any

$_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_ = comdat any

$_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %t) #8
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 captures(none) dereferenceable(2000) %a) #8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %num.0 = phi i32 [ -1, %entry ], [ %num.1, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc3, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %t)
  %1 = load i32, ptr %t, align 4, !tbaa !5
  %2 = and i32 %1, -2147483647
  %cmp2 = icmp eq i32 %2, 1
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %num.0, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %num.1 = phi i32 [ %inc, %if.then ], [ %num.0, %for.body ]
  %inc3 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %cmp.not.i.i = icmp eq i32 %num.0, -1
  br i1 %cmp.not.i.i, label %_ZSt4sortIPiEvT_S1_.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %for.end
  %idx.ext = sext i32 %num.0 to i64
  %add.ptr.idx = shl nsw i64 %idx.ext, 2
  %add.ptr = getelementptr inbounds i8, ptr %a, i64 %add.ptr.idx
  %add.ptr5 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 4
  %sub.ptr.sub.i.i = add nsw i64 %add.ptr.idx, 4
  %sub.ptr.div.i.i = ashr exact i64 %sub.ptr.sub.i.i, 2
  %3 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %sub.ptr.div.i.i, i1 noundef true)
  %sub.i.i.i = shl nuw nsw i64 %3, 1
  %mul.i.i = xor i64 %sub.i.i.i, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull align 16 dereferenceable(2000) %a, ptr noundef nonnull %add.ptr5, i64 noundef %mul.i.i)
  call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull align 16 dereferenceable(2000) %a, ptr noundef nonnull %add.ptr5)
  br label %_ZSt4sortIPiEvT_S1_.exit

_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %for.end, %if.then.i.i
  %4 = load i32, ptr %a, align 16, !tbaa !5
  %call7 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  %smax = call i32 @llvm.smax.i32(i32 %num.0, i32 noundef 0)
  %5 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %_ZSt4sortIPiEvT_S1_.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc16 ], [ 1, %_ZSt4sortIPiEvT_S1_.exit ]
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond, label %for.end18, label %for.inc16

for.inc16:                                        ; preds = %for.cond9
  %arrayidx14 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !12
  %call15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond9, !llvm.loop !13

for.end18:                                        ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull captures(none) %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %t) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %__first, ptr noundef %__last, i64 noundef %__depth_limit) local_unnamed_addr #3 comdat {
entry:
  %__comp.i = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %add.ptr1.i = getelementptr inbounds nuw i8, ptr %__first, i64 4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %__depth_limit.addr.0 = phi i64 [ %__depth_limit, %entry ], [ %dec, %if.end ]
  %__last.addr.0 = phi ptr [ %__last, %entry ], [ %call.i, %if.end ]
  %sub.ptr.lhs.cast = ptrtoint ptr %__last.addr.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 64
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %cmp1 = icmp eq i64 %__depth_limit.addr.0, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull dereferenceable(1) %__comp.i)
  tail call void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last.addr.0, ptr noundef %__last.addr.0)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last.addr.0, ptr noundef nonnull align 1 dereferenceable(1) %__comp.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__comp.i)
  br label %while.end

if.end:                                           ; preds = %while.body
  %dec = add nsw i64 %__depth_limit.addr.0, -1
  %div.i16 = lshr i64 %sub.ptr.sub, 3
  %add.ptr.i = getelementptr inbounds nuw i32, ptr %__first, i64 %div.i16
  %add.ptr2.i = getelementptr inbounds i8, ptr %__last.addr.0, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef nonnull align 4 %__first, ptr noundef nonnull align 4 %add.ptr1.i, ptr noundef align 4 %add.ptr.i, ptr noundef nonnull align 4 %add.ptr2.i)
  %call.i = tail call noundef nonnull ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef nonnull align 4 %add.ptr1.i, ptr noundef nonnull align 4 %__last.addr.0, ptr noundef nonnull align 4 %__first) #9
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %call.i, ptr noundef nonnull align 4 %__last.addr.0, i64 noundef %dec)
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond, %if.then
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) local_unnamed_addr #3 comdat {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %__first, i64 64
  tail call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %__first, ptr noundef nonnull %add.ptr)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc.i, %if.then
  %__i.0.i = phi ptr [ %add.ptr, %if.then ], [ %incdec.ptr.i, %for.inc.i ]
  %cmp.not.i = icmp eq ptr %__i.0.i, %__last
  br i1 %cmp.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %__i.0.i, align 4, !tbaa !5, !invariant.load !12
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %for.body.i
  %__last.addr.0.i.i = phi ptr [ %__i.0.i, %for.body.i ], [ %__next.0.i.i, %while.body.i.i ]
  %__next.0.i.i = getelementptr inbounds i8, ptr %__last.addr.0.i.i, i64 -4
  %1 = load i32, ptr %__next.0.i.i, align 4, !tbaa !5, !invariant.load !12
  %cmp.i.i.i = icmp slt i32 %0, %1
  br i1 %cmp.i.i.i, label %while.body.i.i, label %for.inc.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  store i32 %1, ptr %__last.addr.0.i.i, align 4, !tbaa !5
  br label %while.cond.i.i, !llvm.loop !15

for.inc.i:                                        ; preds = %while.cond.i.i
  store i32 %0, ptr %__last.addr.0.i.i, align 4, !tbaa !5
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %__i.0.i, i64 4
  br label %for.cond.i, !llvm.loop !16

if.else:                                          ; preds = %entry
  tail call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last)
  br label %if.end

if.end:                                           ; preds = %for.cond.i, %if.else
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef %__last) local_unnamed_addr #3 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef nonnull align 1 dereferenceable(1) %__comp)
  %sub.ptr.lhs.cast.i = ptrtoint ptr %__middle to i64
  %sub.ptr.rhs.cast.i = ptrtoint ptr %__first to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 2
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__i.0 = phi ptr [ %__middle, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ult ptr %__i.0, %__last
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %__i.0, align 4, !tbaa !5, !invariant.load !12
  %1 = load i32, ptr %__first, align 4, !tbaa !5, !invariant.load !12
  %cmp.i = icmp slt i32 %0, %1
  br i1 %cmp.i, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i32 %1, ptr %__i.0, align 4, !tbaa !5
  call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull align 4 dereferenceable(4) %__first, i64 noundef 0, i64 noundef %sub.ptr.div.i, i32 noundef %0)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %__i.0, i64 4
  br label %for.cond, !llvm.loop !17

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) local_unnamed_addr #3 comdat {
entry:
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %__last.addr.0 = phi ptr [ %__last, %entry ], [ %incdec.ptr, %while.body ]
  %sub.ptr.lhs.cast = ptrtoint ptr %__last.addr.0 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %__last.addr.0, i64 -4
  %0 = load i32, ptr %incdec.ptr, align 4, !tbaa !5, !invariant.load !12
  %1 = load i32, ptr %__first, align 4, !tbaa !5, !invariant.load !12
  store i32 %1, ptr %incdec.ptr, align 4, !tbaa !5
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 2
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull align 4 dereferenceable(4) %__first, i64 noundef 0, i64 noundef %sub.ptr.div.i, i32 noundef %0)
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) local_unnamed_addr #3 comdat {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = add nsw i64 %sub.ptr.div, -2
  %div1213 = lshr i64 %sub, 1
  br label %while.body

while.body:                                       ; preds = %while.body, %if.end
  %__parent.0 = phi i64 [ %div1213, %if.end ], [ %dec, %while.body ]
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 %__parent.0
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !5, !invariant.load !12
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull %__first, i64 noundef %__parent.0, i64 noundef %sub.ptr.div, i32 noundef %0)
  %cmp5 = icmp eq i64 %__parent.0, 0
  %dec = add nsw i64 %__parent.0, -1
  br i1 %cmp5, label %return, label %while.body, !llvm.loop !19

return:                                           ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %__first, i64 noundef %__holeIndex, i64 noundef %__len, i32 noundef %__value) local_unnamed_addr #3 comdat {
entry:
  %sub = add nsw i64 %__len, -1
  %div = sdiv i64 %sub, 2
  %invariant.gep = getelementptr i8, ptr %__first, i64 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %__secondChild.0 = phi i64 [ %__holeIndex, %entry ], [ %spec.select, %while.body ]
  %cmp = icmp slt i64 %__secondChild.0, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %add = shl i64 %__secondChild.0, 1
  %mul = add i64 %add, 2
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 %mul
  %gep = getelementptr i32, ptr %invariant.gep, i64 %add
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !5, !invariant.load !12
  %1 = load i32, ptr %gep, align 4, !tbaa !5, !invariant.load !12
  %cmp.i = icmp slt i32 %0, %1
  %dec = or disjoint i64 %add, 1
  %spec.select = select i1 %cmp.i, i64 %dec, i64 %mul
  %add.ptr3 = getelementptr inbounds i32, ptr %__first, i64 %spec.select
  %2 = load i32, ptr %add.ptr3, align 4, !tbaa !5, !invariant.load !12
  %add.ptr4 = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.0
  store i32 %2, ptr %add.ptr4, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !20

while.end:                                        ; preds = %while.cond
  %and = and i64 %__len, 1
  %cmp5 = icmp eq i64 %and, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %while.end
  %sub6 = add nsw i64 %__len, -2
  %div7 = ashr exact i64 %sub6, 1
  %cmp8 = icmp eq i64 %__secondChild.0, %div7
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %land.lhs.true
  %add10 = shl nsw i64 %__secondChild.0, 1
  %sub12 = or disjoint i64 %add10, 1
  %add.ptr13 = getelementptr inbounds i32, ptr %__first, i64 %sub12
  %3 = load i32, ptr %add.ptr13, align 4, !tbaa !5, !invariant.load !12
  %add.ptr14 = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.0
  store i32 %3, ptr %add.ptr14, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %land.lhs.true, %while.end
  %__holeIndex.addr.1 = phi i64 [ %sub12, %if.then9 ], [ %__secondChild.0, %land.lhs.true ], [ %__secondChild.0, %while.end ]
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end16
  %__holeIndex.addr.0.i = phi i64 [ %__holeIndex.addr.1, %if.end16 ], [ %__parent.0.i, %while.body.i ]
  %__parent.0.in.i = add nsw i64 %__holeIndex.addr.0.i, -1
  %__parent.0.i = sdiv i64 %__parent.0.in.i, 2
  %cmp.i2 = icmp sgt i64 %__holeIndex.addr.0.i, %__holeIndex
  br i1 %cmp.i2, label %land.end.i, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_.exit

land.end.i:                                       ; preds = %while.cond.i
  %add.ptr.i = getelementptr inbounds i32, ptr %__first, i64 %__parent.0.i
  %4 = load i32, ptr %add.ptr.i, align 4, !tbaa !5, !invariant.load !12
  %cmp.i.i = icmp slt i32 %4, %__value
  br i1 %cmp.i.i, label %while.body.i, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_.exit

while.body.i:                                     ; preds = %land.end.i
  %add.ptr2.i = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0.i
  store i32 %4, ptr %add.ptr2.i, align 4, !tbaa !5
  br label %while.cond.i, !llvm.loop !21

_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_.exit: ; preds = %while.cond.i, %land.end.i
  %add.ptr5.i = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0.i
  store i32 %__value, ptr %add.ptr5.i, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %__result, ptr noundef align 4 %__a, ptr noundef align 4 %__b, ptr noundef align 4 %__c) local_unnamed_addr #3 comdat {
entry:
  %0 = load i32, ptr %__a, align 4, !tbaa !5, !invariant.load !12
  %1 = load i32, ptr %__b, align 4, !tbaa !5, !invariant.load !12
  %cmp.i = icmp slt i32 %0, %1
  %2 = load i32, ptr %__c, align 4, !tbaa !5, !invariant.load !12
  %3 = load i32, ptr %__result, align 4, !tbaa !5, !invariant.load !12
  br i1 %cmp.i, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %cmp.i1 = icmp slt i32 %1, %2
  br i1 %cmp.i1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  store i32 %1, ptr %__result, align 4, !tbaa !5
  store i32 %3, ptr %__b, align 4, !tbaa !5
  br label %if.end16

if.else:                                          ; preds = %if.then
  %cmp.i2 = icmp slt i32 %0, %2
  br i1 %cmp.i2, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 %2, ptr %__result, align 4, !tbaa !5
  store i32 %3, ptr %__c, align 4, !tbaa !5
  br label %if.end16

if.else5:                                         ; preds = %if.else
  store i32 %0, ptr %__result, align 4, !tbaa !5
  store i32 %3, ptr %__a, align 4, !tbaa !5
  br label %if.end16

if.else7:                                         ; preds = %entry
  %cmp.i3 = icmp slt i32 %0, %2
  br i1 %cmp.i3, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  store i32 %0, ptr %__result, align 4, !tbaa !5
  store i32 %3, ptr %__a, align 4, !tbaa !5
  br label %if.end16

if.else10:                                        ; preds = %if.else7
  %cmp.i4 = icmp slt i32 %1, %2
  br i1 %cmp.i4, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  store i32 %2, ptr %__result, align 4, !tbaa !5
  store i32 %3, ptr %__c, align 4, !tbaa !5
  br label %if.end16

if.else13:                                        ; preds = %if.else10
  store i32 %1, ptr %__result, align 4, !tbaa !5
  store i32 %3, ptr %__b, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.else13, %if.then12, %if.then2, %if.else5, %if.then4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last, ptr noundef align 4 %__pivot) local_unnamed_addr #4 comdat {
entry:
  %0 = load i32, ptr %__pivot, align 4, !tbaa !5, !invariant.load !12
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %__last.addr.0 = phi ptr [ %__last, %entry ], [ %__last.addr.1, %if.end ]
  %__first.addr.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %if.end ]
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1, %while.body
  %__first.addr.1 = phi ptr [ %__first.addr.0, %while.body ], [ %incdec.ptr, %while.cond1 ]
  %1 = load i32, ptr %__first.addr.1, align 4, !tbaa !5, !invariant.load !12
  %cmp.i = icmp slt i32 %1, %0
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %__first.addr.1, i64 4
  br i1 %cmp.i, label %while.cond1, label %while.cond4.preheader, !llvm.loop !22

while.cond4.preheader:                            ; preds = %while.cond1
  br label %while.cond4

while.cond4:                                      ; preds = %while.cond4.preheader, %while.cond4
  %__last.addr.0.pn = phi ptr [ %__last.addr.1, %while.cond4 ], [ %__last.addr.0, %while.cond4.preheader ]
  %__last.addr.1 = getelementptr inbounds i8, ptr %__last.addr.0.pn, i64 -4
  %2 = load i32, ptr %__last.addr.1, align 4, !tbaa !5, !invariant.load !12
  %cmp.i1 = icmp slt i32 %0, %2
  br i1 %cmp.i1, label %while.cond4, label %while.end8, !llvm.loop !23

while.end8:                                       ; preds = %while.cond4
  %cmp = icmp ult ptr %__first.addr.1, %__last.addr.1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.end8
  ret ptr %__first.addr.1

if.end:                                           ; preds = %while.end8
  store i32 %2, ptr %__first.addr.1, align 4, !tbaa !5
  store i32 %1, ptr %__last.addr.1, align 4, !tbaa !5
  br label %while.body, !llvm.loop !24
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) local_unnamed_addr #3 comdat {
entry:
  %cmp = icmp eq ptr %__first, %__last
  br i1 %cmp, label %for.end, label %for.cond

for.cond:                                         ; preds = %entry, %for.inc
  %__first.pn = phi ptr [ %__i.0, %for.inc ], [ %__first, %entry ]
  %__i.0 = getelementptr inbounds nuw i8, ptr %__first.pn, i64 4
  %cmp1.not = icmp eq ptr %__i.0, %__last
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %__i.0, align 4, !tbaa !5, !invariant.load !12
  %1 = load i32, ptr %__first, align 4, !tbaa !5, !invariant.load !12
  %cmp.i = icmp slt i32 %0, %1
  br i1 %cmp.i, label %if.then2, label %while.cond.i

if.then2:                                         ; preds = %for.body
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %__first.pn, i64 8
  %call.i.i.i.i = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_(ptr noundef nonnull align 4 dereferenceable(4) %__first, ptr noundef nonnull align 4 %__i.0, ptr noundef nonnull %add.ptr3)
  br label %for.inc

while.cond.i:                                     ; preds = %for.body, %while.body.i
  %__last.addr.0.i = phi ptr [ %__next.0.i, %while.body.i ], [ %__i.0, %for.body ]
  %__next.0.i = getelementptr inbounds i8, ptr %__last.addr.0.i, i64 -4
  %2 = load i32, ptr %__next.0.i, align 4, !tbaa !5, !invariant.load !12
  %cmp.i.i = icmp slt i32 %0, %2
  br i1 %cmp.i.i, label %while.body.i, label %for.inc

while.body.i:                                     ; preds = %while.cond.i
  store i32 %2, ptr %__last.addr.0.i, align 4, !tbaa !5
  br label %while.cond.i, !llvm.loop !15

for.inc:                                          ; preds = %while.cond.i, %if.then2
  %__first.sink = phi ptr [ %__first, %if.then2 ], [ %__last.addr.0.i, %while.cond.i ]
  store i32 %0, ptr %__first.sink, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !25

for.end:                                          ; preds = %for.cond, %entry
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) local_unnamed_addr #3 comdat align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  %conv = zext i1 %cmp to i64
  %expval = tail call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool.not = icmp eq i64 %expval, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %idx.neg = sub nsw i64 0, %sub.ptr.div
  %add.ptr = getelementptr inbounds i32, ptr %__result, i64 %idx.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %add.ptr, ptr align 4 %__first, i64 %sub.ptr.sub, i1 false)
  br label %if.end4

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %sub.ptr.sub, 4
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.else
  %add.ptr3 = getelementptr inbounds i8, ptr %__result, i64 -4
  %0 = load i32, ptr %__first, align 4, !tbaa !5, !invariant.load !12
  store i32 %0, ptr %add.ptr3, align 4, !tbaa !5
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %if.then
  %idx.neg5 = sub nsw i64 0, %sub.ptr.div
  %add.ptr6 = getelementptr inbounds i32, ptr %__result, i64 %idx.neg5
  ret ptr %add.ptr6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind willreturn }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
