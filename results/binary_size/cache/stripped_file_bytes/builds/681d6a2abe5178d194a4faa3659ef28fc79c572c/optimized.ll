; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz87jwvva.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
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

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c",\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv, %4
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %cmp.not.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i, label %for.cond14.preheader, label %_ZSt4sortIPiEvT_S1_.exit

_ZSt4sortIPiEvT_S1_.exit:                         ; preds = %for.end
  %add.ptr.idx = shl nsw i64 %4, 2
  %add.ptr = getelementptr inbounds i8, ptr %vla, i64 %add.ptr.idx
  %5 = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %4, i1 true)
  %sub.i.i.i = shl nuw nsw i64 %5, 1
  %mul.i.i = xor i64 %sub.i.i.i, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %vla, ptr noundef nonnull %add.ptr, i64 noundef %mul.i.i)
  call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %vla, ptr noundef nonnull %add.ptr)
  %.pre = load i32, ptr %N, align 4, !tbaa !5
  %6 = icmp sgt i32 %.pre, 0
  br i1 %6, label %for.body4, label %for.cond14.preheader

for.body4:                                        ; preds = %_ZSt4sortIPiEvT_S1_.exit
  %7 = load i32, ptr %vla, align 16, !tbaa !5
  %8 = and i32 %7, 1
  %cmp7.not = icmp eq i32 %8, 0
  br i1 %cmp7.not, label %for.cond14.preheader, label %if.then

if.then:                                          ; preds = %for.body4
  %call10 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %7)
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.end, %for.body4, %if.then, %_ZSt4sortIPiEvT_S1_.exit
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc27
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc27 ], [ 1, %for.cond14.preheader ]
  %9 = load i32, ptr %N, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp15 = icmp slt i64 %indvars.iv12, %10
  br i1 %cmp15, label %for.body16, label %for.end29

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv12
  %11 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %12 = and i32 %11, 1
  %cmp20.not = icmp eq i32 %12, 0
  br i1 %cmp20.not, label %for.inc27, label %if.then21

if.then21:                                        ; preds = %for.body16
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %13 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  br label %for.inc27

for.inc27:                                        ; preds = %for.body16, %if.then21
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond14, !llvm.loop !12

for.end29:                                        ; preds = %for.cond14
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %__first, ptr noundef %__last, i64 noundef %__depth_limit) local_unnamed_addr #4 comdat {
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
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__comp.i)
  tail call void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last.addr.0, ptr noundef %__last.addr.0)
  call void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last.addr.0, ptr noundef nonnull align 1 dereferenceable(1) %__comp.i)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__comp.i)
  br label %while.end

if.end:                                           ; preds = %while.body
  %dec = add nsw i64 %__depth_limit.addr.0, -1
  %div.i1011 = lshr i64 %sub.ptr.sub, 3
  %add.ptr.i = getelementptr inbounds nuw i32, ptr %__first, i64 %div.i1011
  %add.ptr2.i = getelementptr inbounds i8, ptr %__last.addr.0, i64 -4
  tail call void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %__first, ptr noundef nonnull %add.ptr1.i, ptr noundef %add.ptr.i, ptr noundef nonnull %add.ptr2.i)
  %call.i = tail call noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef nonnull %add.ptr1.i, ptr noundef %__last.addr.0, ptr noundef %__first)
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %call.i, ptr noundef %__last.addr.0, i64 noundef %dec)
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond, %if.then
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) local_unnamed_addr #4 comdat {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp = icmp sgt i64 %sub.ptr.sub, 64
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds nuw i8, ptr %__first, i64 64
  tail call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef nonnull %add.ptr)
  br label %for.cond.i

for.cond.i:                                       ; preds = %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i, %if.then
  %__i.0.i = phi ptr [ %add.ptr, %if.then ], [ %incdec.ptr.i, %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i ]
  %cmp.not.i = icmp eq ptr %__i.0.i, %__last
  br i1 %cmp.not.i, label %if.end, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %0 = load i32, ptr %__i.0.i, align 4, !tbaa !5
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %for.body.i
  %__last.addr.0.i.i = phi ptr [ %__i.0.i, %for.body.i ], [ %__next.0.i.i, %while.body.i.i ]
  %__next.0.i.i = getelementptr inbounds i8, ptr %__last.addr.0.i.i, i64 -4
  %1 = load i32, ptr %__next.0.i.i, align 4, !tbaa !5
  %cmp.i.i.i = icmp slt i32 %0, %1
  br i1 %cmp.i.i.i, label %while.body.i.i, label %_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  store i32 %1, ptr %__last.addr.0.i.i, align 4, !tbaa !5
  br label %while.cond.i.i, !llvm.loop !14

_ZSt25__unguarded_linear_insertIPiN9__gnu_cxx5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %while.cond.i.i
  store i32 %0, ptr %__last.addr.0.i.i, align 4, !tbaa !5
  %incdec.ptr.i = getelementptr inbounds nuw i8, ptr %__i.0.i, i64 4
  br label %for.cond.i, !llvm.loop !15

if.else:                                          ; preds = %entry
  tail call void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last)
  br label %if.end

if.end:                                           ; preds = %for.cond.i, %if.else
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__heap_selectIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_(ptr noundef %__first, ptr noundef %__middle, ptr noundef %__last) local_unnamed_addr #4 comdat {
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
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  ret void

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %__i.0, align 4, !tbaa !5
  %1 = load i32, ptr %__first, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %0, %1
  br i1 %cmp.i, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  store i32 %1, ptr %__i.0, align 4, !tbaa !5
  call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull %__first, i64 noundef 0, i64 noundef %sub.ptr.div.i, i32 noundef %0)
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %__i.0, i64 4
  br label %for.cond, !llvm.loop !16
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__sort_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) local_unnamed_addr #4 comdat {
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
  %0 = load i32, ptr %incdec.ptr, align 4, !tbaa !5
  %1 = load i32, ptr %__first, align 4, !tbaa !5
  store i32 %1, ptr %incdec.ptr, align 4, !tbaa !5
  %sub.ptr.lhs.cast.i = ptrtoint ptr %incdec.ptr to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 2
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef nonnull %__first, i64 noundef 0, i64 noundef %sub.ptr.div.i, i32 noundef %0)
  br label %while.cond, !llvm.loop !17

while.end:                                        ; preds = %while.cond
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt11__make_heapIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %__first, ptr noundef %__last, ptr noundef nonnull align 1 dereferenceable(1) %__comp) local_unnamed_addr #4 comdat {
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
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %if.end
  %__parent.0 = phi i64 [ %div9, %if.end ], [ %dec, %while.cond ]
  %add.ptr = getelementptr inbounds nuw i32, ptr %__first, i64 %__parent.0
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !5
  tail call void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %__first, i64 noundef %__parent.0, i64 noundef %sub.ptr.div, i32 noundef %0)
  %cmp5.not = icmp eq i64 %__parent.0, 0
  %dec = add nsw i64 %__parent.0, -1
  br i1 %cmp5.not, label %return, label %while.cond, !llvm.loop !18

return:                                           ; preds = %while.cond, %entry
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt13__adjust_heapIPiliN9__gnu_cxx5__ops15_Iter_less_iterEEvT_T0_S5_T1_T2_(ptr noundef %__first, i64 noundef %__holeIndex, i64 noundef %__len, i32 noundef %__value) local_unnamed_addr #4 comdat {
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
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !5
  %1 = load i32, ptr %gep, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %0, %1
  %dec = or disjoint i64 %add, 1
  %spec.select = select i1 %cmp.i, i64 %dec, i64 %mul
  %add.ptr3 = getelementptr inbounds i32, ptr %__first, i64 %spec.select
  %2 = load i32, ptr %add.ptr3, align 4, !tbaa !5
  %add.ptr4 = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.0
  store i32 %2, ptr %add.ptr4, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !19

while.end:                                        ; preds = %while.cond
  %and = and i64 %__len, 1
  %cmp5 = icmp eq i64 %and, 0
  br i1 %cmp5, label %land.lhs.true, label %while.cond.i

land.lhs.true:                                    ; preds = %while.end
  %sub6 = add nsw i64 %__len, -2
  %div7 = ashr exact i64 %sub6, 1
  %cmp8 = icmp eq i64 %__secondChild.0, %div7
  br i1 %cmp8, label %if.then9, label %while.cond.i

if.then9:                                         ; preds = %land.lhs.true
  %add10 = shl nsw i64 %__secondChild.0, 1
  %sub12 = or disjoint i64 %add10, 1
  %add.ptr13 = getelementptr inbounds i32, ptr %__first, i64 %sub12
  %3 = load i32, ptr %add.ptr13, align 4, !tbaa !5
  br label %while.cond.i.sink.split

while.cond.i.sink.split:                          ; preds = %land.rhs.i, %if.then9
  %__secondChild.0.sink = phi i64 [ %__secondChild.0, %if.then9 ], [ %__holeIndex.addr.0.i, %land.rhs.i ]
  %.sink = phi i32 [ %3, %if.then9 ], [ %4, %land.rhs.i ]
  %__holeIndex.addr.0.i.ph = phi i64 [ %sub12, %if.then9 ], [ %__parent.0.i, %land.rhs.i ]
  %add.ptr14 = getelementptr inbounds i32, ptr %__first, i64 %__secondChild.0.sink
  store i32 %.sink, ptr %add.ptr14, align 4, !tbaa !5
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.sink.split, %while.end, %land.lhs.true
  %__holeIndex.addr.0.i = phi i64 [ %__secondChild.0, %land.lhs.true ], [ %__secondChild.0, %while.end ], [ %__holeIndex.addr.0.i.ph, %while.cond.i.sink.split ]
  %cmp.i23 = icmp sgt i64 %__holeIndex.addr.0.i, %__holeIndex
  br i1 %cmp.i23, label %land.rhs.i, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_.exit

land.rhs.i:                                       ; preds = %while.cond.i
  %__parent.0.in.i = add nsw i64 %__holeIndex.addr.0.i, -1
  %__parent.0.i = sdiv i64 %__parent.0.in.i, 2
  %add.ptr.i = getelementptr inbounds i32, ptr %__first, i64 %__parent.0.i
  %4 = load i32, ptr %add.ptr.i, align 4, !tbaa !5
  %cmp.i.i = icmp slt i32 %4, %__value
  br i1 %cmp.i.i, label %while.cond.i.sink.split, label %_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_.exit, !llvm.loop !20

_ZSt11__push_heapIPiliN9__gnu_cxx5__ops14_Iter_less_valEEvT_T0_S5_T1_RT2_.exit: ; preds = %while.cond.i, %land.rhs.i
  %add.ptr5.i = getelementptr inbounds i32, ptr %__first, i64 %__holeIndex.addr.0.i
  store i32 %__value, ptr %add.ptr5.i, align 4, !tbaa !5
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__move_median_to_firstIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_(ptr noundef %__result, ptr noundef %__a, ptr noundef %__b, ptr noundef %__c) local_unnamed_addr #4 comdat {
entry:
  %0 = load i32, ptr %__a, align 4, !tbaa !5
  %1 = load i32, ptr %__b, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %0, %1
  %2 = load i32, ptr %__c, align 4, !tbaa !5
  br i1 %cmp.i, label %if.then, label %if.else7

if.then:                                          ; preds = %entry
  %cmp.i19 = icmp slt i32 %1, %2
  br i1 %cmp.i19, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %3 = load i32, ptr %__result, align 4, !tbaa !5
  store i32 %1, ptr %__result, align 4, !tbaa !5
  store i32 %3, ptr %__b, align 4, !tbaa !5
  br label %if.end16

if.else:                                          ; preds = %if.then
  %cmp.i20 = icmp slt i32 %0, %2
  %4 = load i32, ptr %__result, align 4, !tbaa !5
  br i1 %cmp.i20, label %if.then4, label %if.else5

if.then4:                                         ; preds = %if.else
  store i32 %2, ptr %__result, align 4, !tbaa !5
  store i32 %4, ptr %__c, align 4, !tbaa !5
  br label %if.end16

if.else5:                                         ; preds = %if.else
  store i32 %0, ptr %__result, align 4, !tbaa !5
  store i32 %4, ptr %__a, align 4, !tbaa !5
  br label %if.end16

if.else7:                                         ; preds = %entry
  %cmp.i21 = icmp slt i32 %0, %2
  br i1 %cmp.i21, label %if.then9, label %if.else10

if.then9:                                         ; preds = %if.else7
  %5 = load i32, ptr %__result, align 4, !tbaa !5
  store i32 %0, ptr %__result, align 4, !tbaa !5
  store i32 %5, ptr %__a, align 4, !tbaa !5
  br label %if.end16

if.else10:                                        ; preds = %if.else7
  %cmp.i22 = icmp slt i32 %1, %2
  %6 = load i32, ptr %__result, align 4, !tbaa !5
  br i1 %cmp.i22, label %if.then12, label %if.else13

if.then12:                                        ; preds = %if.else10
  store i32 %2, ptr %__result, align 4, !tbaa !5
  store i32 %6, ptr %__c, align 4, !tbaa !5
  br label %if.end16

if.else13:                                        ; preds = %if.else10
  store i32 %1, ptr %__result, align 4, !tbaa !5
  store i32 %6, ptr %__b, align 4, !tbaa !5
  br label %if.end16

if.end16:                                         ; preds = %if.then9, %if.else13, %if.then12, %if.then2, %if.else5, %if.then4
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZSt21__unguarded_partitionIPiN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_S4_T0_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__pivot) local_unnamed_addr #5 comdat {
entry:
  br label %while.body

while.body:                                       ; preds = %if.end, %entry
  %__last.addr.0 = phi ptr [ %__last, %entry ], [ %__last.addr.1, %if.end ]
  %__first.addr.0 = phi ptr [ %__first, %entry ], [ %incdec.ptr, %if.end ]
  %0 = load i32, ptr %__pivot, align 4, !tbaa !5
  br label %while.cond1

while.cond1:                                      ; preds = %while.cond1, %while.body
  %__first.addr.1 = phi ptr [ %__first.addr.0, %while.body ], [ %incdec.ptr, %while.cond1 ]
  %1 = load i32, ptr %__first.addr.1, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %1, %0
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %__first.addr.1, i64 4
  br i1 %cmp.i, label %while.cond1, label %while.cond4, !llvm.loop !21

while.cond4:                                      ; preds = %while.cond1, %while.cond4
  %__last.addr.0.pn = phi ptr [ %__last.addr.1, %while.cond4 ], [ %__last.addr.0, %while.cond1 ]
  %__last.addr.1 = getelementptr inbounds i8, ptr %__last.addr.0.pn, i64 -4
  %2 = load i32, ptr %__last.addr.1, align 4, !tbaa !5
  %cmp.i11 = icmp slt i32 %0, %2
  br i1 %cmp.i11, label %while.cond4, label %while.end8, !llvm.loop !22

while.end8:                                       ; preds = %while.cond4
  %cmp = icmp ult ptr %__first.addr.1, %__last.addr.1
  br i1 %cmp, label %if.end, label %if.then

if.then:                                          ; preds = %while.end8
  ret ptr %__first.addr.1

if.end:                                           ; preds = %while.end8
  store i32 %2, ptr %__first.addr.1, align 4, !tbaa !5
  store i32 %1, ptr %__last.addr.1, align 4, !tbaa !5
  br label %while.body, !llvm.loop !23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %__first, ptr noundef %__last) local_unnamed_addr #4 comdat {
entry:
  %cmp = icmp eq ptr %__first, %__last
  br i1 %cmp, label %for.end, label %for.cond

for.cond:                                         ; preds = %entry, %for.inc
  %__first.pn = phi ptr [ %__i.0, %for.inc ], [ %__first, %entry ]
  %__i.0 = getelementptr inbounds nuw i8, ptr %__first.pn, i64 4
  %cmp1.not = icmp eq ptr %__i.0, %__last
  br i1 %cmp1.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %0 = load i32, ptr %__i.0, align 4, !tbaa !5
  %1 = load i32, ptr %__first, align 4, !tbaa !5
  %cmp.i = icmp slt i32 %0, %1
  br i1 %cmp.i, label %if.then2, label %while.cond.i

if.then2:                                         ; preds = %for.body
  %add.ptr3 = getelementptr inbounds nuw i8, ptr %__first.pn, i64 8
  %call.i.i.i.i = tail call noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_(ptr noundef nonnull %__first, ptr noundef nonnull %__i.0, ptr noundef nonnull %add.ptr3)
  br label %for.inc

while.cond.i:                                     ; preds = %for.body, %while.body.i
  %__last.addr.0.i = phi ptr [ %__next.0.i, %while.body.i ], [ %__i.0, %for.body ]
  %__next.0.i = getelementptr inbounds i8, ptr %__last.addr.0.i, i64 -4
  %2 = load i32, ptr %__next.0.i, align 4, !tbaa !5
  %cmp.i.i = icmp slt i32 %0, %2
  br i1 %cmp.i.i, label %while.body.i, label %for.inc

while.body.i:                                     ; preds = %while.cond.i
  store i32 %2, ptr %__last.addr.0.i, align 4, !tbaa !5
  br label %while.cond.i, !llvm.loop !14

for.inc:                                          ; preds = %while.cond.i, %if.then2
  %__first.sink = phi ptr [ %__first, %if.then2 ], [ %__last.addr.0.i, %while.cond.i ]
  store i32 %0, ptr %__first.sink, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end:                                          ; preds = %for.cond, %entry
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb1ELb1ESt26random_access_iterator_tagE13__copy_move_bIiiEEPT0_PT_S6_S4_(ptr noundef %__first, ptr noundef %__last, ptr noundef %__result) local_unnamed_addr #4 comdat align 2 {
entry:
  %sub.ptr.lhs.cast = ptrtoint ptr %__last to i64
  %sub.ptr.rhs.cast = ptrtoint ptr %__first to i64
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i64 %sub.ptr.sub, 2
  %cmp = icmp sgt i64 %sub.ptr.div, 1
  br i1 %cmp, label %if.then, label %if.else, !prof !25

if.then:                                          ; preds = %entry
  %idx.neg = sub nsw i64 0, %sub.ptr.div
  %add.ptr = getelementptr inbounds i32, ptr %__result, i64 %idx.neg
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %add.ptr, ptr align 4 %__first, i64 %sub.ptr.sub, i1 false)
  br label %if.end4

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq i64 %sub.ptr.sub, 4
  br i1 %cmp1, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.else
  %add.ptr3 = getelementptr inbounds i8, ptr %__result, i64 -4
  %0 = load i32, ptr %__first, align 4, !tbaa !5
  store i32 %0, ptr %add.ptr3, align 4, !tbaa !5
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then2, %if.then
  %idx.neg5 = sub nsw i64 0, %sub.ptr.div
  %add.ptr6 = getelementptr inbounds i32, ptr %__result, i64 %idx.neg5
  ret ptr %add.ptr6
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }

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
!25 = !{!"branch_weights", !"expected", i32 2000, i32 1}
