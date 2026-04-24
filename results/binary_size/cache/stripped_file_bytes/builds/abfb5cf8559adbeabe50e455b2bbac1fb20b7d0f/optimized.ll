; ModuleID = '/tmp/tmpqugs24f1.cpp'
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

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %high = alloca [30 x i32], align 16
  %num = alloca [30 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %max = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #11
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  call void @llvm.lifetime.start.p0(i64 120, ptr %high) #11
  call void @llvm.lifetime.start.p0(i64 120, ptr %num) #11
  call void @llvm.memset.p0.i64(ptr align 16 %num, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #11
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %high, i64 0, i64 %idxprom
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 0
  store i32 1, ptr %arrayidx2, align 16, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc25, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body5, label %for.end27

for.body5:                                        ; preds = %for.cond3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #11
  store i32 0, ptr %max, align 4, !tbaa !5
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 1
  store i32 %sub, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc21, %for.body5
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %7, 0
  br i1 %cmp7, label %for.body8, label %for.end22

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [30 x i32], ptr %high, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [30 x i32], ptr %high, i64 0, i64 %idxprom11
  %11 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sle i32 %9, %11
  br i1 %cmp13, label %if.then, label %if.end20

if.then:                                          ; preds = %for.body8
  %12 = load i32, ptr %max, align 4, !tbaa !5
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom14 = sext i32 %13 to i64
  %arrayidx15 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom14
  %14 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %12, %14
  br i1 %cmp16, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom18
  %16 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %16, ptr %max, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then
  br label %if.end20

if.end20:                                         ; preds = %if.end, %for.body8
  br label %for.inc21

for.inc21:                                        ; preds = %if.end20
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %dec = add nsw i32 %17, -1
  store i32 %dec, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !12

for.end22:                                        ; preds = %for.cond6
  %18 = load i32, ptr %max, align 4, !tbaa !5
  %add = add nsw i32 %18, 1
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom23
  store i32 %add, ptr %arrayidx24, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #11
  br label %for.inc25

for.inc25:                                        ; preds = %for.end22
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc26 = add nsw i32 %20, 1
  store i32 %inc26, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !13

for.end27:                                        ; preds = %for.cond3
  %arraydecay = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 0
  %arraydecay28 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 0
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %idx.ext = sext i32 %21 to i64
  %add.ptr = getelementptr inbounds i32, ptr %arraydecay28, i64 %idx.ext
  call void @_ZSt4sortIPiEvT_S1_(ptr noundef %arraydecay, ptr noundef %add.ptr)
  %22 = load i32, ptr %k, align 4, !tbaa !5
  %sub29 = sub nsw i32 %22, 1
  %idxprom30 = sext i32 %sub29 to i64
  %arrayidx31 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom30
  %23 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %23)
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr %num) #11
  call void @llvm.lifetime.end.p0(i64 120, ptr %high) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt4sortIPiEvT_S1_(ptr noundef %__first, ptr noundef %__last) #4 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  call void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv()
  call void @_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1)
  ret void
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt6__sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) #4 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %cmp = icmp ne ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %3 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %4 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %5 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint ptr %4 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %5 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %call = call noundef i64 @_ZSt4__lgIlET_S0_(i64 noundef %sub.ptr.div)
  %mul = mul nsw i64 %call, 2
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %2, ptr noundef %3, i64 noundef %mul)
  %6 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %7 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %6, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16__iter_less_iterEv() #5 comdat {
entry:
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %__first, ptr noundef %__last, i64 noundef %__depth_limit) #6 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__depth_limit.addr = alloca i64, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__cut = alloca ptr, align 8
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store i64 %__depth_limit, ptr %__depth_limit.addr, align 8, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %0 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load i64, ptr %__depth_limit.addr, align 8, !tbaa !17
  %cmp1 = icmp eq i64 %2, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %3 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %4 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %5 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  call void @_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %3, ptr noundef %4, ptr noundef %5)
  br label %while.end

if.end:                                           ; preds = %while.body
  %6 = load i64, ptr %__depth_limit.addr, align 8, !tbaa !17
  %dec = add nsw i64 %6, -1
  store i64 %dec, ptr %__depth_limit.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__cut) #11
  %7 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %8 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %call = call noundef ptr @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %7, ptr noundef %8)
  store ptr %call, ptr %__cut, align 8, !tbaa !14
  %9 = load ptr, ptr %__cut, align 8, !tbaa !14
  %10 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %11 = load i64, ptr %__depth_limit.addr, align 8, !tbaa !17
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %9, ptr noundef %10, i64 noundef %11)
  %12 = load ptr, ptr %__cut, align 8, !tbaa !14
  store ptr %12, ptr %__last.addr, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(i64 8, ptr %__cut) #11
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %if.then, %while.cond
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZSt4__lgIlET_S0_(i64 noundef %__n) #5 comdat {
entry:
  %__n.addr = alloca i64, align 8
  store i64 %__n, ptr %__n.addr, align 8, !tbaa !17
  %0 = load i64, ptr %__n.addr, align 8, !tbaa !17
  %call = call noundef i32 @_ZSt11__bit_widthImEiT_(i64 noundef %0) #11
  %sub = sub nsw i32 %call, 1
  %conv = sext i32 %sub to i64
  ret i64 %conv
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) #6 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp2 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 16
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %3 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 16
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %2, ptr noundef %add.ptr)
  %4 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %add.ptr1 = getelementptr inbounds i32, ptr %4, i64 16
  %5 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  call void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %add.ptr1, ptr noundef %5)
  br label %if.end

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %7 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %6, ptr noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt14__partial_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef %__last) #4 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__middle.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__middle, ptr %__middle.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__middle.addr, align 8, !tbaa !14
  %2 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  call void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %3 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %4 = load ptr, ptr %__middle.addr, align 8, !tbaa !14
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 1 dereferenceable(1) %__comp)
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt27__unguarded_partition_pivotIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last) #4 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__mid = alloca ptr, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %agg.tmp4 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mid) #11
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %2 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %2 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %div = sdiv i64 %sub.ptr.div, 2
  %add.ptr = getelementptr inbounds i32, ptr %0, i64 %div
  store ptr %add.ptr, ptr %__mid, align 8, !tbaa !14
  %3 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %4 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %add.ptr1 = getelementptr inbounds i32, ptr %4, i64 1
  %5 = load ptr, ptr %__mid, align 8, !tbaa !14
  %6 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %add.ptr2 = getelementptr inbounds i32, ptr %6, i64 -1
  call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %3, ptr noundef %add.ptr1, ptr noundef %5, ptr noundef %add.ptr2)
  %7 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %add.ptr3 = getelementptr inbounds i32, ptr %7, i64 1
  %8 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %9 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %call = call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %add.ptr3, ptr noundef %8, ptr noundef %9)
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mid) #11
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef %__last) #6 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__middle.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__i = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__middle, ptr %__middle.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__middle.addr, align 8, !tbaa !14
  call void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %__comp)
  call void @llvm.lifetime.start.p0(i64 8, ptr %__i) #11
  %2 = load ptr, ptr %__middle.addr, align 8, !tbaa !14
  store ptr %2, ptr %__i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %__i, align 8, !tbaa !14
  %4 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %cmp = icmp ult ptr %3, %4
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__i) #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %__i, align 8, !tbaa !14
  %6 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %5, ptr noundef %6)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %8 = load ptr, ptr %__middle.addr, align 8, !tbaa !14
  %9 = load ptr, ptr %__i, align 8, !tbaa !14
  call void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef nonnull align 1 dereferenceable(1) %__comp)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %10 = load ptr, ptr %__i, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %10, i32 1
  store ptr %incdec.ptr, ptr %__i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !20

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) #6 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__comp, ptr %__comp.addr, align 8, !tbaa !21
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %2 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds i32, ptr %2, i32 -1
  store ptr %incdec.ptr, ptr %__last.addr, align 8, !tbaa !14
  %3 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %4 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %5 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %6 = load ptr, ptr %__comp.addr, align 8, !tbaa !21, !nonnull !23
  call void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull align 1 dereferenceable(1) %6)
  br label %while.cond, !llvm.loop !24

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) #6 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  %__len = alloca i64, align 8
  %__parent = alloca i64, align 8
  %__value = alloca i32, align 4
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__comp, ptr %__comp.addr, align 8, !tbaa !21
  %0 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %cmp = icmp slt i64 %sub.ptr.div, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %return

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__len) #11
  %2 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %3 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast1 = ptrtoint ptr %2 to i64
  %sub.ptr.rhs.cast2 = ptrtoint ptr %3 to i64
  %sub.ptr.sub3 = sub i64 %sub.ptr.lhs.cast1, %sub.ptr.rhs.cast2
  %sub.ptr.div4 = sdiv exact i64 %sub.ptr.sub3, 4
  store i64 %sub.ptr.div4, ptr %__len, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__parent) #11
  %4 = load i64, ptr %__len, align 8, !tbaa !17
  %sub = sub nsw i64 %4, 2
  %div = sdiv i64 %sub, 2
  store i64 %div, ptr %__parent, align 8, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %cleanup.cont, %if.end
  br label %while.body

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %__value) #11
  %5 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %6 = load i64, ptr %__parent, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i32, ptr %5, i64 %6
  %7 = load i32, ptr %add.ptr, align 4, !tbaa !5
  store i32 %7, ptr %__value, align 4, !tbaa !5
  %8 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %9 = load i64, ptr %__parent, align 8, !tbaa !17
  %10 = load i64, ptr %__len, align 8, !tbaa !17
  %11 = load i32, ptr %__value, align 4, !tbaa !5
  %12 = load ptr, ptr %__comp.addr, align 8, !tbaa !21, !nonnull !23
  call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %8, i64 noundef %9, i64 noundef %10, i32 noundef %11)
  %13 = load i64, ptr %__parent, align 8, !tbaa !17
  %cmp5 = icmp eq i64 %13, 0
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %while.body
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end7:                                          ; preds = %while.body
  %14 = load i64, ptr %__parent, align 8, !tbaa !17
  %dec = add nsw i64 %14, -1
  store i64 %dec, ptr %__parent, align 8, !tbaa !17
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %__value) #11
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup8 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !llvm.loop !25

cleanup8:                                         ; preds = %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %__parent) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %__len) #11
  br label %return

return:                                           ; preds = %cleanup8, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__it1, ptr noundef %__it2) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__it1.addr = alloca ptr, align 8
  %__it2.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !21
  store ptr %__it1, ptr %__it1.addr, align 8, !tbaa !14
  store ptr %__it2, ptr %__it2.addr, align 8, !tbaa !14
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__it1.addr, align 8, !tbaa !14
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__it2.addr, align 8, !tbaa !14
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt10__pop_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result, ptr noundef nonnull align 1 dereferenceable(1) %__comp) #4 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %__comp.addr = alloca ptr, align 8
  %__value = alloca i32, align 4
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__result, ptr %__result.addr, align 8, !tbaa !14
  store ptr %__comp, ptr %__comp.addr, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(i64 4, ptr %__value) #11
  %0 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %1 = load i32, ptr %0, align 4, !tbaa !5
  store i32 %1, ptr %__value, align 4, !tbaa !5
  %2 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  store i32 %3, ptr %4, align 4, !tbaa !5
  %5 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %6 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %7 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint ptr %6 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %7 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  %8 = load i32, ptr %__value, align 4, !tbaa !5
  %9 = load ptr, ptr %__comp.addr, align 8, !tbaa !21, !nonnull !23
  call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %5, i64 noundef 0, i64 noundef %sub.ptr.div, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 4, ptr %__value) #11
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %__first, i64 noundef %__holeIndex, i64 noundef %__len, i32 noundef %__value) #6 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__len.addr = alloca i64, align 8
  %__value.addr = alloca i32, align 4
  %__topIndex = alloca i64, align 8
  %__secondChild = alloca i64, align 8
  %__cmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_val", align 1
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store i64 %__holeIndex, ptr %__holeIndex.addr, align 8, !tbaa !17
  store i64 %__len, ptr %__len.addr, align 8, !tbaa !17
  store i32 %__value, ptr %__value.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__topIndex) #11
  %0 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  store i64 %0, ptr %__topIndex, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__secondChild) #11
  %1 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  store i64 %1, ptr %__secondChild, align 8, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %2 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %3 = load i64, ptr %__len.addr, align 8, !tbaa !17
  %sub = sub nsw i64 %3, 1
  %div = sdiv i64 %sub, 2
  %cmp = icmp slt i64 %2, %div
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %4 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %add = add nsw i64 %4, 1
  %mul = mul nsw i64 2, %add
  store i64 %mul, ptr %__secondChild, align 8, !tbaa !17
  %5 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %6 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i32, ptr %5, i64 %6
  %7 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %8 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %sub1 = sub nsw i64 %8, 1
  %add.ptr2 = getelementptr inbounds i32, ptr %7, i64 %sub1
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %add.ptr, ptr noundef %add.ptr2)
  br i1 %call, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  %9 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %dec = add nsw i64 %9, -1
  store i64 %dec, ptr %__secondChild, align 8, !tbaa !17
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %10 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %11 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %add.ptr3 = getelementptr inbounds i32, ptr %10, i64 %11
  %12 = load i32, ptr %add.ptr3, align 4, !tbaa !5
  %13 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %14 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  %add.ptr4 = getelementptr inbounds i32, ptr %13, i64 %14
  store i32 %12, ptr %add.ptr4, align 4, !tbaa !5
  %15 = load i64, ptr %__secondChild, align 8, !tbaa !17
  store i64 %15, ptr %__holeIndex.addr, align 8, !tbaa !17
  br label %while.cond, !llvm.loop !26

while.end:                                        ; preds = %while.cond
  %16 = load i64, ptr %__len.addr, align 8, !tbaa !17
  %and = and i64 %16, 1
  %cmp5 = icmp eq i64 %and, 0
  br i1 %cmp5, label %land.lhs.true, label %if.end16

land.lhs.true:                                    ; preds = %while.end
  %17 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %18 = load i64, ptr %__len.addr, align 8, !tbaa !17
  %sub6 = sub nsw i64 %18, 2
  %div7 = sdiv i64 %sub6, 2
  %cmp8 = icmp eq i64 %17, %div7
  br i1 %cmp8, label %if.then9, label %if.end16

if.then9:                                         ; preds = %land.lhs.true
  %19 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %add10 = add nsw i64 %19, 1
  %mul11 = mul nsw i64 2, %add10
  store i64 %mul11, ptr %__secondChild, align 8, !tbaa !17
  %20 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %21 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %sub12 = sub nsw i64 %21, 1
  %add.ptr13 = getelementptr inbounds i32, ptr %20, i64 %sub12
  %22 = load i32, ptr %add.ptr13, align 4, !tbaa !5
  %23 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %24 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  %add.ptr14 = getelementptr inbounds i32, ptr %23, i64 %24
  store i32 %22, ptr %add.ptr14, align 4, !tbaa !5
  %25 = load i64, ptr %__secondChild, align 8, !tbaa !17
  %sub15 = sub nsw i64 %25, 1
  store i64 %sub15, ptr %__holeIndex.addr, align 8, !tbaa !17
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %land.lhs.true, %while.end
  call void @llvm.lifetime.start.p0(i64 1, ptr %__cmp) #11
  call void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %__cmp)
  %26 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %27 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  %28 = load i64, ptr %__topIndex, align 8, !tbaa !17
  %29 = load i32, ptr %__value.addr, align 4, !tbaa !5
  call void @_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %26, i64 noundef %27, i64 noundef %28, i32 noundef %29, ptr noundef nonnull align 1 dereferenceable(1) %__cmp)
  call void @llvm.lifetime.end.p0(i64 1, ptr %__cmp) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %__secondChild) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr %__topIndex) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops14_Iter_less_valC2ENS0_15_Iter_less_iterE(ptr noundef nonnull align 1 dereferenceable(1) %this) unnamed_addr #7 comdat align 2 {
entry:
  %0 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %this.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  %this1 = load ptr, ptr %this.addr, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_(ptr noundef %__first, i64 noundef %__holeIndex, i64 noundef %__topIndex, i32 noundef %__value, ptr noundef nonnull align 1 dereferenceable(1) %__comp) #6 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__holeIndex.addr = alloca i64, align 8
  %__topIndex.addr = alloca i64, align 8
  %__value.addr = alloca i32, align 4
  %__comp.addr = alloca ptr, align 8
  %__parent = alloca i64, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store i64 %__holeIndex, ptr %__holeIndex.addr, align 8, !tbaa !17
  store i64 %__topIndex, ptr %__topIndex.addr, align 8, !tbaa !17
  store i32 %__value, ptr %__value.addr, align 4, !tbaa !5
  store ptr %__comp, ptr %__comp.addr, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(i64 8, ptr %__parent) #11
  %0 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  %sub = sub nsw i64 %0, 1
  %div = sdiv i64 %sub, 2
  store i64 %div, ptr %__parent, align 8, !tbaa !17
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %1 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  %2 = load i64, ptr %__topIndex.addr, align 8, !tbaa !17
  %cmp = icmp sgt i64 %1, %2
  br i1 %cmp, label %land.rhs, label %land.end

land.rhs:                                         ; preds = %while.cond
  %3 = load ptr, ptr %__comp.addr, align 8, !tbaa !27, !nonnull !23
  %4 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %5 = load i64, ptr %__parent, align 8, !tbaa !17
  %add.ptr = getelementptr inbounds i32, ptr %4, i64 %5
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %add.ptr, ptr noundef nonnull align 4 dereferenceable(4) %__value.addr)
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %6 = phi i1 [ false, %while.cond ], [ %call, %land.rhs ]
  br i1 %6, label %while.body, label %while.end

while.body:                                       ; preds = %land.end
  %7 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %8 = load i64, ptr %__parent, align 8, !tbaa !17
  %add.ptr1 = getelementptr inbounds i32, ptr %7, i64 %8
  %9 = load i32, ptr %add.ptr1, align 4, !tbaa !5
  %10 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %11 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  %add.ptr2 = getelementptr inbounds i32, ptr %10, i64 %11
  store i32 %9, ptr %add.ptr2, align 4, !tbaa !5
  %12 = load i64, ptr %__parent, align 8, !tbaa !17
  store i64 %12, ptr %__holeIndex.addr, align 8, !tbaa !17
  %13 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  %sub3 = sub nsw i64 %13, 1
  %div4 = sdiv i64 %sub3, 2
  store i64 %div4, ptr %__parent, align 8, !tbaa !17
  br label %while.cond, !llvm.loop !29

while.end:                                        ; preds = %land.end
  %14 = load i32, ptr %__value.addr, align 4, !tbaa !5
  %15 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %16 = load i64, ptr %__holeIndex.addr, align 8, !tbaa !17
  %add.ptr5 = getelementptr inbounds i32, ptr %15, i64 %16
  store i32 %14, ptr %add.ptr5, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %__parent) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Iter_less_valclIPiiEEbT_RT0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef %__it, ptr noundef nonnull align 4 dereferenceable(4) %__val) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__it.addr = alloca ptr, align 8
  %__val.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !27
  store ptr %__it, ptr %__it.addr, align 8, !tbaa !14
  store ptr %__val, ptr %__val.addr, align 8, !tbaa !14
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__it.addr, align 8, !tbaa !14
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__val.addr, align 8, !tbaa !14, !nonnull !23, !align !30
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %__result, ptr noundef %__a, ptr noundef %__b, ptr noundef %__c) #6 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__result.addr = alloca ptr, align 8
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  %__c.addr = alloca ptr, align 8
  store ptr %__result, ptr %__result.addr, align 8, !tbaa !14
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !14
  store ptr %__b, ptr %__b.addr, align 8, !tbaa !14
  store ptr %__c, ptr %__c.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__b.addr, align 8, !tbaa !14
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %0, ptr noundef %1)
  br i1 %call, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %__b.addr, align 8, !tbaa !14
  %3 = load ptr, ptr %__c.addr, align 8, !tbaa !14
  %call1 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %2, ptr noundef %3)
  br i1 %call1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %4 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %5 = load ptr, ptr %__b.addr, align 8, !tbaa !14
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %4, ptr noundef %5)
  br label %if.end6

if.else:                                          ; preds = %if.then
  %6 = load ptr, ptr %__a.addr, align 8, !tbaa !14
  %7 = load ptr, ptr %__c.addr, align 8, !tbaa !14
  %call3 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %6, ptr noundef %7)
  br i1 %call3, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  %8 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %9 = load ptr, ptr %__c.addr, align 8, !tbaa !14
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %8, ptr noundef %9)
  br label %if.end

if.else5:                                         ; preds = %if.else
  %10 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %11 = load ptr, ptr %__a.addr, align 8, !tbaa !14
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %10, ptr noundef %11)
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end6

if.end6:                                          ; preds = %if.end, %if.then2
  br label %if.end16

if.else7:                                         ; preds = %entry
  %12 = load ptr, ptr %__a.addr, align 8, !tbaa !14
  %13 = load ptr, ptr %__c.addr, align 8, !tbaa !14
  %call8 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %12, ptr noundef %13)
  br i1 %call8, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %14 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %15 = load ptr, ptr %__a.addr, align 8, !tbaa !14
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %14, ptr noundef %15)
  br label %if.end15

if.else10:                                        ; preds = %if.else7
  %16 = load ptr, ptr %__b.addr, align 8, !tbaa !14
  %17 = load ptr, ptr %__c.addr, align 8, !tbaa !14
  %call11 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %16, ptr noundef %17)
  br i1 %call11, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  %18 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %19 = load ptr, ptr %__c.addr, align 8, !tbaa !14
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %18, ptr noundef %19)
  br label %if.end14

if.else13:                                        ; preds = %if.else10
  %20 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %21 = load ptr, ptr %__b.addr, align 8, !tbaa !14
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %20, ptr noundef %21)
  br label %if.end14

if.end14:                                         ; preds = %if.else13, %if.then12
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.then9
  br label %if.end16

if.end16:                                         ; preds = %if.end15, %if.end6
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__pivot) #7 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__pivot.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__pivot, ptr %__pivot.addr, align 8, !tbaa !14
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  br label %while.cond1

while.cond1:                                      ; preds = %while.body2, %while.body
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__pivot.addr, align 8, !tbaa !14
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %0, ptr noundef %1)
  br i1 %call, label %while.body2, label %while.end

while.body2:                                      ; preds = %while.cond1
  %2 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %2, i32 1
  store ptr %incdec.ptr, ptr %__first.addr, align 8, !tbaa !14
  br label %while.cond1, !llvm.loop !31

while.end:                                        ; preds = %while.cond1
  %3 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %incdec.ptr3 = getelementptr inbounds i32, ptr %3, i32 -1
  store ptr %incdec.ptr3, ptr %__last.addr, align 8, !tbaa !14
  br label %while.cond4

while.cond4:                                      ; preds = %while.body6, %while.end
  %4 = load ptr, ptr %__pivot.addr, align 8, !tbaa !14
  %5 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %call5 = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %4, ptr noundef %5)
  br i1 %call5, label %while.body6, label %while.end8

while.body6:                                      ; preds = %while.cond4
  %6 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %incdec.ptr7 = getelementptr inbounds i32, ptr %6, i32 -1
  store ptr %incdec.ptr7, ptr %__last.addr, align 8, !tbaa !14
  br label %while.cond4, !llvm.loop !32

while.end8:                                       ; preds = %while.cond4
  %7 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %8 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %cmp = icmp ult ptr %7, %8
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.end8
  %9 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  ret ptr %9

if.end:                                           ; preds = %while.end8
  %10 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %11 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  call void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %10, ptr noundef %11)
  %12 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %incdec.ptr9 = getelementptr inbounds nuw i32, ptr %12, i32 1
  store ptr %incdec.ptr9, ptr %__first.addr, align 8, !tbaa !14
  br label %while.body, !llvm.loop !33
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt9iter_swapIPiS0_EvT_T0_(ptr noundef %__a, ptr noundef %__b) #5 comdat {
entry:
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !14
  store ptr %__b, ptr %__b.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__b.addr, align 8, !tbaa !14
  call void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) #11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt4swapIiENSt9enable_ifIXsr6__and_ISt6__not_ISt15__is_tuple_likeIT_EESt21is_move_constructibleIS3_ESt18is_move_assignableIS3_EEE5valueEvE4typeERS3_SC_(ptr noundef nonnull align 4 dereferenceable(4) %__a, ptr noundef nonnull align 4 dereferenceable(4) %__b) #5 comdat {
entry:
  %__a.addr = alloca ptr, align 8
  %__b.addr = alloca ptr, align 8
  %__tmp = alloca i32, align 4
  store ptr %__a, ptr %__a.addr, align 8, !tbaa !14
  store ptr %__b, ptr %__b.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__tmp) #11
  %0 = load ptr, ptr %__a.addr, align 8, !tbaa !14, !nonnull !23, !align !30
  %1 = load i32, ptr %0, align 4, !tbaa !5
  store i32 %1, ptr %__tmp, align 4, !tbaa !5
  %2 = load ptr, ptr %__b.addr, align 8, !tbaa !14, !nonnull !23, !align !30
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %4 = load ptr, ptr %__a.addr, align 8, !tbaa !14, !nonnull !23, !align !30
  store i32 %3, ptr %4, align 4, !tbaa !5
  %5 = load i32, ptr %__tmp, align 4, !tbaa !5
  %6 = load ptr, ptr %__b.addr, align 8, !tbaa !14, !nonnull !23, !align !30
  store i32 %5, ptr %6, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__tmp) #11
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt11__bit_widthImEiT_(i64 noundef %__x) #7 comdat {
entry:
  %__x.addr = alloca i64, align 8
  %_Nd = alloca i32, align 4
  store i64 %__x, ptr %__x.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd) #11
  store i32 64, ptr %_Nd, align 4, !tbaa !5
  %0 = load i64, ptr %__x.addr, align 8, !tbaa !17
  %call = call noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %0) #11
  %sub = sub nsw i32 64, %call
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd) #11
  ret i32 %sub
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZSt13__countl_zeroImEiT_(i64 noundef %__x) #7 comdat {
entry:
  %retval = alloca i32, align 4
  %__x.addr = alloca i64, align 8
  %_Nd = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %_Nd_ull = alloca i32, align 4
  %_Nd_ul = alloca i32, align 4
  %_Nd_u = alloca i32, align 4
  %__diff = alloca i32, align 4
  store i64 %__x, ptr %__x.addr, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd) #11
  store i32 64, ptr %_Nd, align 4, !tbaa !5
  %0 = load i64, ptr %__x.addr, align 8, !tbaa !17
  %cmp = icmp eq i64 %0, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  store i32 64, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_ull) #11
  store i32 64, ptr %_Nd_ull, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_ul) #11
  store i32 64, ptr %_Nd_ul, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %_Nd_u) #11
  store i32 32, ptr %_Nd_u, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %__diff) #11
  store i32 0, ptr %__diff, align 4, !tbaa !5
  %1 = load i64, ptr %__x.addr, align 8, !tbaa !17
  %2 = call i64 @llvm.ctlz.i64(i64 %1, i1 true)
  %cast = trunc i64 %2 to i32
  %sub = sub nsw i32 %cast, 0
  store i32 %sub, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %__diff) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_u) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_ul) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd_ull) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %_Nd) #11
  %3 = load i32, ptr %retval, align 4
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) #6 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__i = alloca ptr, align 8
  %__val = alloca i32, align 4
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %agg.tmp5 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %cmp = icmp eq ptr %0, %1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br label %for.end

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__i) #11
  %2 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 1
  store ptr %add.ptr, ptr %__i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %__i, align 8, !tbaa !14
  %4 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %cmp1 = icmp ne ptr %3, %4
  br i1 %cmp1, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__i) #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %5 = load ptr, ptr %__i, align 8, !tbaa !14
  %6 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops15_Iter_less_iterclIPiS3_EEbT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef %5, ptr noundef %6)
  br i1 %call, label %if.then2, label %if.else

if.then2:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val) #11
  %7 = load ptr, ptr %__i, align 8, !tbaa !14
  %8 = load i32, ptr %7, align 4, !tbaa !5
  store i32 %8, ptr %__val, align 4, !tbaa !5
  %9 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %10 = load ptr, ptr %__i, align 8, !tbaa !14
  %11 = load ptr, ptr %__i, align 8, !tbaa !14
  %add.ptr3 = getelementptr inbounds i32, ptr %11, i64 1
  %call4 = call noundef ptr @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(ptr noundef %9, ptr noundef %10, ptr noundef %add.ptr3)
  %12 = load i32, ptr %__val, align 4, !tbaa !5
  %13 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  store i32 %12, ptr %13, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val) #11
  br label %if.end6

if.else:                                          ; preds = %for.body
  %14 = load ptr, ptr %__i, align 8, !tbaa !14
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %14)
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  br label %for.inc

for.inc:                                          ; preds = %if.end6
  %15 = load ptr, ptr %__i, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %15, i32 1
  store ptr %incdec.ptr, ptr %__i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !34

for.end:                                          ; preds = %if.then, %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZSt26__unguarded_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) #4 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__i = alloca ptr, align 8
  %agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %agg.tmp1 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  %undef.agg.tmp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %__i) #11
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  store ptr %0, ptr %__i, align 8, !tbaa !14
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load ptr, ptr %__i, align 8, !tbaa !14
  %2 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %cmp = icmp ne ptr %1, %2
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %__i) #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load ptr, ptr %__i, align 8, !tbaa !14
  call void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE()
  call void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %3)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load ptr, ptr %__i, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds nuw i32, ptr %4, i32 1
  store ptr %incdec.ptr, ptr %__i, align 8, !tbaa !14
  br label %for.cond, !llvm.loop !35

for.end:                                          ; preds = %for.cond.cleanup
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13move_backwardIPiS0_ET0_T_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #4 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__result, ptr %__result.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %call = call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %0)
  %1 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %call1 = call noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %1)
  %2 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %call2 = call noundef ptr @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %call, ptr noundef %call1, ptr noundef %2)
  ret ptr %call2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_(ptr noundef %__last) #6 comdat {
entry:
  %__comp = alloca %"struct.__gnu_cxx::__ops::_Val_less_iter", align 1
  %__last.addr = alloca ptr, align 8
  %__val = alloca i32, align 4
  %__next = alloca ptr, align 8
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 4, ptr %__val) #11
  %0 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %1 = load i32, ptr %0, align 4, !tbaa !5
  store i32 %1, ptr %__val, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__next) #11
  %2 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  store ptr %2, ptr %__next, align 8, !tbaa !14
  %3 = load ptr, ptr %__next, align 8, !tbaa !14
  %incdec.ptr = getelementptr inbounds i32, ptr %3, i32 -1
  store ptr %incdec.ptr, ptr %__next, align 8, !tbaa !14
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %4 = load ptr, ptr %__next, align 8, !tbaa !14
  %call = call noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %__comp, ptr noundef nonnull align 4 dereferenceable(4) %__val, ptr noundef %4)
  br i1 %call, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %__next, align 8, !tbaa !14
  %6 = load i32, ptr %5, align 4, !tbaa !5
  %7 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  store i32 %6, ptr %7, align 4, !tbaa !5
  %8 = load ptr, ptr %__next, align 8, !tbaa !14
  store ptr %8, ptr %__last.addr, align 8, !tbaa !14
  %9 = load ptr, ptr %__next, align 8, !tbaa !14
  %incdec.ptr1 = getelementptr inbounds i32, ptr %9, i32 -1
  store ptr %incdec.ptr1, ptr %__next, align 8, !tbaa !14
  br label %while.cond, !llvm.loop !36

while.end:                                        ; preds = %while.cond
  %10 = load i32, ptr %__val, align 4, !tbaa !5
  %11 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  store i32 %10, ptr %11, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 8, ptr %__next) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %__val) #11
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops15__val_comp_iterENS0_15_Iter_less_iterE() #5 comdat {
entry:
  %0 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #4 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__result, ptr %__result.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %call = call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %0) #11
  %1 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %call1 = call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %1) #11
  %2 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %call2 = call noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %2) #11
  %call3 = call noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %call, ptr noundef %call1, ptr noundef %call2)
  %call4 = call noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %__result.addr, ptr noundef %call3)
  ret ptr %call4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPiET_S1_(ptr noundef %__it) #5 comdat {
entry:
  %__it.addr = alloca ptr, align 8
  store ptr %__it, ptr %__it.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__it.addr, align 8, !tbaa !14
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %__res) #5 comdat {
entry:
  %.addr = alloca ptr, align 8
  %__res.addr = alloca ptr, align 8
  store ptr %0, ptr %.addr, align 8, !tbaa !37
  store ptr %__res, ptr %__res.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__res.addr, align 8, !tbaa !14
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #4 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__result, ptr %__result.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %2 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %call = call noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPiET_S1_(ptr noundef %__it) #5 comdat {
entry:
  %__it.addr = alloca ptr, align 8
  store ptr %__it, ptr %__it.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__it.addr, align 8, !tbaa !14
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb1EPiS0_ET1_T0_S2_S1_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #4 comdat {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__result, ptr %__result.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %2 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %call = call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2)
  ret ptr %call
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) #6 comdat align 2 {
entry:
  %__first.addr = alloca ptr, align 8
  %__last.addr = alloca ptr, align 8
  %__result.addr = alloca ptr, align 8
  %_Num = alloca i64, align 8
  store ptr %__first, ptr %__first.addr, align 8, !tbaa !14
  store ptr %__last, ptr %__last.addr, align 8, !tbaa !14
  store ptr %__result, ptr %__result.addr, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(i64 8, ptr %_Num) #11
  %0 = load ptr, ptr %__last.addr, align 8, !tbaa !14
  %1 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %sub.ptr.lhs.cast = ptrtoint ptr %0 to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %1 to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 4
  store i64 %sub.ptr.div, ptr %_Num, align 8, !tbaa !17
  %2 = load i64, ptr %_Num, align 8, !tbaa !17
  %cmp = icmp sgt i64 %2, 1
  %conv = zext i1 %cmp to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %4 = load i64, ptr %_Num, align 8, !tbaa !17
  %idx.neg = sub i64 0, %4
  %add.ptr = getelementptr inbounds i32, ptr %3, i64 %idx.neg
  %5 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  %6 = load i64, ptr %_Num, align 8, !tbaa !17
  %mul = mul i64 4, %6
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %add.ptr, ptr align 4 %5, i64 %mul, i1 false)
  br label %if.end4

if.else:                                          ; preds = %entry
  %7 = load i64, ptr %_Num, align 8, !tbaa !17
  %cmp1 = icmp eq i64 %7, 1
  br i1 %cmp1, label %if.then2, label %if.end

if.then2:                                         ; preds = %if.else
  %8 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %add.ptr3 = getelementptr inbounds i32, ptr %8, i64 -1
  %9 = load ptr, ptr %__first.addr, align 8, !tbaa !14
  call void @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_(ptr noundef %add.ptr3, ptr noundef %9)
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %10 = load ptr, ptr %__result.addr, align 8, !tbaa !14
  %11 = load i64, ptr %_Num, align 8, !tbaa !17
  %idx.neg5 = sub i64 0, %11
  %add.ptr6 = getelementptr inbounds i32, ptr %10, i64 %idx.neg5
  call void @llvm.lifetime.end.p0(i64 8, ptr %_Num) #11
  ret ptr %add.ptr6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #10

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt11__copy_moveILb1ELb0ESt26random_access_iterator_tagE12__assign_oneIiiEEvPT_PT0_(ptr noundef %__to, ptr noundef %__from) #7 comdat align 2 {
entry:
  %__to.addr = alloca ptr, align 8
  %__from.addr = alloca ptr, align 8
  store ptr %__to, ptr %__to.addr, align 8, !tbaa !14
  store ptr %__from, ptr %__from.addr, align 8, !tbaa !14
  %0 = load ptr, ptr %__from.addr, align 8, !tbaa !14
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__to.addr, align 8, !tbaa !14
  store i32 %1, ptr %2, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK9__gnu_cxx5__ops14_Val_less_iterclIiPiEEbRT_T0_(ptr noundef nonnull align 1 dereferenceable(1) %this, ptr noundef nonnull align 4 dereferenceable(4) %__val, ptr noundef %__it) #7 comdat align 2 {
entry:
  %this.addr = alloca ptr, align 8
  %__val.addr = alloca ptr, align 8
  %__it.addr = alloca ptr, align 8
  store ptr %this, ptr %this.addr, align 8, !tbaa !40
  store ptr %__val, ptr %__val.addr, align 8, !tbaa !14
  store ptr %__it, ptr %__it.addr, align 8, !tbaa !14
  %this1 = load ptr, ptr %this.addr, align 8
  %0 = load ptr, ptr %__val.addr, align 8, !tbaa !14, !nonnull !23, !align !30
  %1 = load i32, ptr %0, align 4, !tbaa !5
  %2 = load ptr, ptr %__it.addr, align 8, !tbaa !14
  %3 = load i32, ptr %2, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %3
  ret i1 %cmp
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }

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
!14 = !{!15, !15, i64 0}
!15 = !{!"p1 int", !16, i64 0}
!16 = !{!"any pointer", !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"long", !7, i64 0}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = !{!22, !22, i64 0}
!22 = !{!"p1 _ZTSN9__gnu_cxx5__ops15_Iter_less_iterE", !16, i64 0}
!23 = !{}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
!26 = distinct !{!26, !10, !11}
!27 = !{!28, !28, i64 0}
!28 = !{!"p1 _ZTSN9__gnu_cxx5__ops14_Iter_less_valE", !16, i64 0}
!29 = distinct !{!29, !10, !11}
!30 = !{i64 4}
!31 = distinct !{!31, !10, !11}
!32 = distinct !{!32, !10, !11}
!33 = distinct !{!33, !10, !11}
!34 = distinct !{!34, !10, !11}
!35 = distinct !{!35, !10, !11}
!36 = distinct !{!36, !10, !11}
!37 = !{!38, !38, i64 0}
!38 = !{!"p2 int", !39, i64 0}
!39 = !{!"any p2 pointer", !16, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"p1 _ZTSN9__gnu_cxx5__ops14_Val_less_iterE", !16, i64 0}
