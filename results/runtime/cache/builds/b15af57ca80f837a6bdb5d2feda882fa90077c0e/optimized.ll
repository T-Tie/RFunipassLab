; ModuleID = '<stdin>'
source_filename = "/tmp/tmp21j9twvm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"struct.__gnu_cxx::__ops::_Iter_less_iter" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_less_val" = type { i8 }
%"struct.__gnu_cxx::__ops::_Val_less_iter" = type { i8 }

$_ZSt4sortIPiEvT_S1_ = comdat any

$_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZN9__gnu_cxx5__ops16__iter_less_iterEv = comdat any

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt4__lgIlET_S0_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_ = comdat any

$_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_ = comdat any

$_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_ = comdat any

$_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_ = comdat any

$_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_ = comdat any

$_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_ = comdat any

$_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE = comdat any

$_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_ = comdat any

$_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_ = comdat any

$_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_ = comdat any

$_ZSt9iter_swapIPiS0_EvT_T0_ = comdat any

$_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_ = comdat any

$_ZSt11__bit_widthImEiT_ = comdat any

$_ZSt13__countl_zeroImEiT_ = comdat any

$_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZSt13move_backwardIPiS0_ET0_T_S2_S1_ = comdat any

$_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_ = comdat any

$_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE = comdat any

$_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPiET_S1_ = comdat any

$_ZSt12__niter_wrapIPiET_RKS1_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPiET_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_ = comdat any

$_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_ = comdat any

$_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_ = comdat any

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %t = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #10
  call void @llvm.lifetime.start.p0(i64 2000, ptr %a) #10
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc3, %for.inc ]
  %num.0 = phi i32 [ -1, %entry ], [ %num.1, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %t)
  %1 = load i32, ptr %t, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp2 = icmp eq i32 %rem, 1
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %num.0, 1
  %idxprom = sext i32 %inc to i64
  %arrayidx = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %num.1 = phi i32 [ %inc, %if.then ], [ %num.0, %for.body ]
  %inc3 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %idx.ext = sext i32 %num.0 to i64
  %add.ptr = getelementptr inbounds i32, ptr %a, i64 %idx.ext
  %add.ptr5 = getelementptr inbounds i32, ptr %add.ptr, i64 1
  call void @_ZSt4sortIPiEvT_S1_(ptr noundef %a, ptr noundef %add.ptr5)
  %2 = load i32, ptr %a, align 16, !tbaa !5
  %call7 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %2)
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc16, %for.end
  %i8.0 = phi i32 [ 1, %for.end ], [ %inc17, %for.inc16 ]
  %cmp10 = icmp sle i32 %i8.0, %num.0
  br i1 %cmp10, label %for.inc16, label %for.end18

for.inc16:                                        ; preds = %for.cond9
  %idxprom13 = sext i32 %i8.0 to i64
  %arrayidx14 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom13
  %3 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %call15 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %3)
  %inc17 = add nsw i32 %i8.0, 1
  br label %for.cond9, !llvm.loop !12

for.end18:                                        ; preds = %for.cond9
  call void @llvm.lifetime.end.p0(i64 2000, ptr %a) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #10
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt4sortIPiEvT_S1_(ptr noundef %__first, ptr noundef %__last) #3 comdat {
entry:
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  call void @_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) #3 comdat {
entry:
  %cmp = icmp ne ptr %__first, %__last
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call = call noundef i64 @_ZSt4__lgIlET_S0_(i64 noundef %sub.ptr.div)
  %mul = mul nsw i64 %call, 2
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %__first, ptr noundef %__last, i64 noundef %mul)
  call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #4 comdat {
entry:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %__first, ptr noundef %__last, i64 noundef %__depth_limit) #5 comdat {
entry:
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %__last.addr.0 = phi ptr [ %__last, %entry ], [ %call, %if.end ]
  %__depth_limit.addr.0 = phi i64 [ %__depth_limit, %entry ], [ %dec, %if.end ]
  %sub.ptr.lhs.cast = ptrtoint ptr %__last.addr.0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %cmp1 = icmp eq i64 %__depth_limit.addr.0, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last.addr.0, ptr noundef %__last.addr.0)
  br label %while.end

if.end:                                           ; preds = %while.body
  %dec = add nsw i64 %__depth_limit.addr.0, -1
  %call = call noundef ptr @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last.addr.0)
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %call, ptr noundef %__last.addr.0, i64 noundef %dec)
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgIlET_S0_(i64 noundef %__n) #4 comdat {
entry:
  %call = call noundef i32 @_ZSt11__bit_widthImEiT_(i64 noundef %__n) #10
  %sub = sub nsw i32 %call, 1
  %conv = sext i32 %sub to i64
  ret i64 %conv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) #5 comdat {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 16
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %add.ptr)
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %add.ptr, ptr noundef %__last)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef %__last) #3 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef %__last)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef nonnull align 1 dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last) #3 comdat {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %div = sdiv i64 %sub.ptr.div, 2
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 %div
  %add.ptr1 = getelementptr inbounds i32, ptr %__first, i64 1
  %add.ptr2 = getelementptr inbounds i32, ptr %__last, i64 -1
  call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %__first, ptr noundef %add.ptr1, ptr noundef %add.ptr, ptr noundef %add.ptr2)
  %call = call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %add.ptr1, ptr noundef %__last, ptr noundef %__first)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef %__last) #5 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef nonnull align 1 dereferenceable(1) %__comp)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__i.0 = phi ptr [ %__middle, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ult ptr %__i.0, %__last
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__i.0, ptr noundef %__first)
  br i1 %call, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  call void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef %__i.0, ptr noundef nonnull align 1 dereferenceable(1) %__comp)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %__i.0, i32 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) #5 comdat {
entry:
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %__last.addr.0 = phi ptr [ %__last, %entry ], [ %incdec.ptr, %while.body ]
  %sub.ptr.lhs.cast = ptrtoint ptr %__last.addr.0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i32, ptr %__last.addr.0, i32 -1
  call void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %__first, ptr noundef %incdec.ptr, ptr noundef %incdec.ptr, ptr noundef nonnull align 1 dereferenceable(1) %__comp)
  br label %while.cond, !llvm.loop !15

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) #5 comdat {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %sub = sub nsw i64 %sub.ptr.div, 2
  %div = sdiv i64 %sub, 2
  br label %while.body

while.body:                                       ; preds = %if.end, %cleanup.cont
  %__parent.0 = phi i64 [ %div, %if.end ], [ %dec, %cleanup.cont ]
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 %__parent.0
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !5
  call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %__first, i64 noundef %__parent.0, i64 noundef %sub.ptr.div, i32 noundef %0)
  %cmp5 = icmp eq i64 %__parent.0, 0
  br i1 %cmp5, label %return, label %cleanup.cont

cleanup.cont:                                     ; preds = %while.body
  %dec = add nsw i64 %__parent.0, -1
  br label %while.body, !llvm.loop !16

return:                                           ; preds = %while.body, %entry
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__it1, ptr noundef %__it2) #6 comdat align 2 {
entry:
  %0 = load i32, ptr %__it1, align 4, !tbaa !5
  %1 = load i32, ptr %__it2, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__comp) #3 comdat {
entry:
  %0 = load i32, ptr %__result, align 4, !tbaa !5
  %1 = load i32, ptr %__first, align 4, !tbaa !5
  store i32 %1, ptr %__result, align 4, !tbaa !5
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %__first, i64 noundef 0, i64 noundef %sub.ptr.div, i32 noundef %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %__first, i64 noundef %__holeIndex, i64 noundef %__len, i32 noundef %__value) #5 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %__holeIndex.addr.0 = phi i64 [ %__holeIndex, %entry ], [ %__secondChild.1, %if.end ]
  %__secondChild.0 = phi i64 [ %__holeIndex, %entry ], [ %__secondChild.1, %if.end ]
  %sub = sub nsw i64 %__len, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp slt i64 %__secondChild.0, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %add = add nsw i64 %__secondChild.0, 1
  %mul = mul nsw i64 2, %add
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 %mul
  %sub1 = sub nsw i64 %mul, 1
  %add.ptr2 = getelementptr inbounds i32, ptr %__first, i64 %sub1
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %add.ptr, ptr noundef %add.ptr2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %dec = add nsw i64 %mul, -1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %__secondChild.1 = phi i64 [ %dec, %if.then ], [ %mul, %while.body ]
  %add.ptr3 = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.1
  %0 = load i32, ptr %add.ptr3, align 4, !tbaa !5
  %add.ptr4 = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0
  store i32 %0, ptr %add.ptr4, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  %and = and i64 %__len, 1
  %cmp5 = icmp eq i64 %and, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %while.end
  %sub6 = sub nsw i64 %__len, 2
  %div7 = sdiv i64 %sub6, 2
  %cmp8 = icmp eq i64 %__secondChild.0, %div7
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %land.lhs.true
  %add10 = add nsw i64 %__secondChild.0, 1
  %mul11 = mul nsw i64 2, %add10
  %sub12 = sub nsw i64 %mul11, 1
  %add.ptr13 = getelementptr inbounds i32, ptr %__first, i64 %sub12
  %1 = load i32, ptr %add.ptr13, align 4, !tbaa !5
  %add.ptr14 = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0
  store i32 %1, ptr %add.ptr14, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %land.lhs.true, %while.end
  %__holeIndex.addr.1 = phi i64 [ %sub12, %if.then9 ], [ %__holeIndex.addr.0, %land.lhs.true ], [ %__holeIndex.addr.0, %while.end ]
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cmp) #10
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %__cmp)
  call void @_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %__first, i64 noundef %__holeIndex.addr.1, i64 noundef %__holeIndex, i32 noundef %__value, ptr noundef nonnull align 1 dereferenceable(1) %__cmp)
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cmp) #10
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #6 comdat align 2 {
entry:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %__first, i64 noundef %__holeIndex, i64 noundef %__topIndex, i32 noundef %__value, ptr noundef nonnull align 1 dereferenceable(1) %__comp) #5 comdat {
entry:
  %__value.addr = alloca i32, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %__value.addr.sink = phi ptr [ %__value.addr, %entry ], [ %add.ptr2, %while.body ]
  %__value.sink = phi i32 [ %__value, %entry ], [ %0, %while.body ]
  %__holeIndex.sink = phi i64 [ %__holeIndex, %entry ], [ %div, %while.body ]
  %__holeIndex.addr.0 = phi i64 [ %__holeIndex, %entry ], [ %div, %while.body ]
  store i32 %__value.sink, ptr %__value.addr.sink, align 4, !tbaa !5
  %sub = sub nsw i64 %__holeIndex.sink, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp sgt i64 %__holeIndex.addr.0, %__topIndex
  br i1 %cmp, label %land.end, label %while.end

land.end:                                         ; preds = %while.cond
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 %div
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %add.ptr, ptr noundef nonnull align 4 dereferenceable(4) %__value.addr)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %add.ptr1 = getelementptr inbounds i32, ptr %__first, i64 %div
  %0 = load i32, ptr %add.ptr1, align 4, !tbaa !5
  %add.ptr2 = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0
  br label %while.cond, !llvm.loop !18

while.end:                                        ; preds = %while.cond, %land.end
  %1 = load i32, ptr %__value.addr, align 4, !tbaa !5
  %add.ptr5 = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0
  store i32 %1, ptr %add.ptr5, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__it, ptr noundef nonnull align 4 dereferenceable(4) %__val) #6 comdat align 2 {
entry:
  %0 = load i32, ptr %__it, align 4, !tbaa !5
  %1 = load i32, ptr %__val, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %__result, ptr noundef %__a, ptr noundef %__b, ptr noundef %__c) #5 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__a, ptr noundef %__b)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %call1 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__b, ptr noundef %__c)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__result, ptr noundef %__b)
  br label %if.end16

if.else:                                          ; preds = %if.then
  %call3 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__a, ptr noundef %__c)
  br i1 %call3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__result, ptr noundef %__c)
  br label %if.end16

if.else5:                                         ; preds = %if.else
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__result, ptr noundef %__a)
  br label %if.end16

if.else7:                                         ; preds = %entry
  %call8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__a, ptr noundef %__c)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__result, ptr noundef %__a)
  br label %if.end16

if.else10:                                        ; preds = %if.else7
  %call11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__b, ptr noundef %__c)
  br i1 %call11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__result, ptr noundef %__c)
  br label %if.end16

if.else13:                                        ; preds = %if.else10
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__result, ptr noundef %__b)
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.else13, %if.then12, %if.then2, %if.else5, %if.then4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__pivot) #6 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %__last.addr.0 = phi ptr [ %__last, %entry ], [ %incdec.ptr3, %if.end ]
  %__first.addr.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr9, %if.end ]
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.body
  %__first.addr.1 = phi ptr [ %__first.addr.0, %while.body ], [ %incdec.ptr, %while.body2 ]
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__first.addr.1, ptr noundef %__pivot)
  br i1 %call, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %__first.addr.1, i32 1
  br label %while.cond1, !llvm.loop !19

while.end:                                        ; preds = %while.cond1
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %__last.addr.0.sink = phi ptr [ %__last.addr.0, %while.end ], [ %incdec.ptr3, %while.body6 ]
  %incdec.ptr3 = getelementptr inbounds i32, ptr %__last.addr.0.sink, i32 -1
  %call5 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__pivot, ptr noundef %incdec.ptr3)
  br i1 %call5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  br label %while.cond4, !llvm.loop !20

while.end8:                                       ; preds = %while.cond4
  %cmp = icmp ult ptr %__first.addr.1, %incdec.ptr3
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.end8
  ret ptr %__first.addr.1

if.end:                                           ; preds = %while.end8
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__first.addr.1, ptr noundef %incdec.ptr3)
  %incdec.ptr9 = getelementptr inbounds nuw i32, ptr %__first.addr.1, i32 1
  br label %while.body, !llvm.loop !21
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__a, ptr noundef %__b) #4 comdat {
entry:
  call void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %__a, ptr noundef nonnull align 4 dereferenceable(4) %__b) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %__a, ptr noundef nonnull align 4 dereferenceable(4) %__b) #4 comdat {
entry:
  %0 = load i32, ptr %__a, align 4, !tbaa !5
  %1 = load i32, ptr %__b, align 4, !tbaa !5
  store i32 %1, ptr %__a, align 4, !tbaa !5
  store i32 %0, ptr %__b, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11__bit_widthImEiT_(i64 noundef %__x) #6 comdat {
entry:
  %call = call noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %__x) #10
  %sub = sub nsw i32 64, %call
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %__x) #6 comdat {
entry:
  %cmp = icmp eq i64 %__x, 0
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %0 = call i64 @llvm.ctlz.i64(i64 %__x, i1 true)
  %cast = trunc i64 %0 to i32
  br label %cleanup

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi i32 [ %cast, %if.end ], [ 64, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) #5 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %cmp = icmp eq ptr %__first, %__last
  br i1 %cmp, label %for.end, label %if.end

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr inbounds i32, ptr %__first, i64 1
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %__i.0 = phi ptr [ %add.ptr, %if.end ], [ %incdec.ptr, %for.inc ]
  %cmp1 = icmp ne ptr %__i.0, %__last
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %__i.0, ptr noundef %__first)
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  %0 = load i32, ptr %__i.0, align 4, !tbaa !5
  %add.ptr3 = getelementptr inbounds i32, ptr %__i.0, i64 1
  %call4 = call noundef ptr @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(ptr noundef %__first, ptr noundef %__i.0, ptr noundef %add.ptr3)
  store i32 %0, ptr %__first, align 4, !tbaa !5
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %__i.0)
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.else
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %__i.0, i32 1
  br label %for.cond, !llvm.loop !22

for.end:                                          ; preds = %for.cond, %entry
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) #3 comdat {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %__i.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %for.inc ]
  %cmp = icmp ne ptr %__i.0, %__last
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %__i.0)
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %__i.0, i32 1
  br label %for.cond, !llvm.loop !23

for.end:                                          ; preds = %for.cond
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 comdat {
entry:
  %call = call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %__first)
  %call1 = call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %__last)
  %call2 = call noundef ptr @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %call, ptr noundef %call1, ptr noundef %__result)
  ret ptr %call2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %__last) #5 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %__val = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %__last.sink1 = phi ptr [ %__last, %entry ], [ %incdec.ptr, %while.body ]
  %__val.sink = phi ptr [ %__val, %entry ], [ %__last.addr.0, %while.body ]
  %__last.sink = phi ptr [ %__last, %entry ], [ %incdec.ptr, %while.body ]
  %__last.addr.0 = phi ptr [ %__last, %entry ], [ %incdec.ptr, %while.body ]
  %0 = load i32, ptr %__last.sink1, align 4, !tbaa !5
  store i32 %0, ptr %__val.sink, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds i32, ptr %__last.sink, i32 -1
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 4 dereferenceable(4) %__val, ptr noundef %incdec.ptr)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  %1 = load i32, ptr %__val, align 4, !tbaa !5
  store i32 %1, ptr %__last.addr.0, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val) #10
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #4 comdat {
entry:
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 comdat {
entry:
  %__result.addr = alloca ptr, align 8
  store ptr %__result, ptr %__result.addr, align 8, !tbaa !25
  %call = call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %__first) #10
  %call1 = call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %__last) #10
  %0 = load ptr, ptr %__result.addr, align 8, !tbaa !25
  %call2 = call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #10
  %call3 = call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2)
  %call4 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %__result.addr, ptr noundef %call3)
  ret ptr %call4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %__it) #4 comdat {
entry:
  ret ptr %__it
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %__res) #4 comdat {
entry:
  ret ptr %__res
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 comdat {
entry:
  %call = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %__it) #4 comdat {
entry:
  ret ptr %__it
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #3 comdat {
entry:
  %call = call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #5 comdat align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %idx.neg = sub i64 0, %sub.ptr.div
  %add.ptr = getelementptr inbounds i32, ptr %__result, i64 %idx.neg
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %add.ptr, ptr align 4 %__first, i64 %sub.ptr.sub, i1 false)
  br label %if.end4

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %sub.ptr.div, 1
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.else
  %add.ptr3 = getelementptr inbounds i32, ptr %__result, i64 -1
  call void @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_(ptr noundef %add.ptr3, ptr noundef %__first)
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %if.then
  %idx.neg5 = sub i64 0, %sub.ptr.div
  %add.ptr6 = getelementptr inbounds i32, ptr %__result, i64 %idx.neg5
  ret ptr %add.ptr6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #8

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_(ptr noundef %__to, ptr noundef %__from) #6 comdat align 2 {
entry:
  %0 = load i32, ptr %__from, align 4, !tbaa !5
  store i32 %0, ptr %__to, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %__val, ptr noundef %__it) #6 comdat align 2 {
entry:
  %0 = load i32, ptr %__val, align 4, !tbaa !5
  %1 = load i32, ptr %__it, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  ret i1 %cmp
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }

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
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = !{!26, !26, i64 0}
!26 = !{!"p1 int", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
