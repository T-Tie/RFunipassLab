; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1pihlxfp.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40804) %c, i8 0, i64 40804, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp.not33 = icmp slt i32 %0, 1
  %1 = load i32, ptr %y1, align 4
  %2 = icmp slt i32 %1, 1
  %or.cond = select i1 %cmp.not33, i1 true, i1 %2
  br i1 %or.cond, label %for.end10, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc8 ], [ 1, %entry ]
  %cmp3.not31 = icmp slt i32 %4, 1
  br i1 %cmp3.not31, label %for.inc8, label %for.body4

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 1, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv49, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %6
  br i1 %cmp3.not.not, label %for.body4, label %for.inc8.loopexit, !llvm.loop !9

for.inc8.loopexit:                                ; preds = %for.body4
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.inc8.loopexit, %for.cond2.preheader
  %7 = phi i32 [ %.pre, %for.inc8.loopexit ], [ %3, %for.cond2.preheader ]
  %8 = phi i32 [ %5, %for.inc8.loopexit ], [ %4, %for.cond2.preheader ]
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %9 = sext i32 %7 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv49, %9
  br i1 %cmp.not.not, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14.not37 = icmp slt i32 %10, 1
  %11 = load i32, ptr %y2, align 4
  %12 = icmp slt i32 %11, 1
  %or.cond73 = select i1 %cmp14.not37, i1 true, i1 %12
  br i1 %or.cond73, label %for.cond30.preheader, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %20, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %21, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc27 ], [ 1, %for.end10 ]
  %cmp17.not35 = icmp slt i32 %14, 1
  br i1 %cmp17.not35, label %for.inc27, label %for.body18

for.cond30.preheader:                             ; preds = %for.inc27, %for.end10
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31.not43 = icmp slt i32 %15, 1
  %16 = load i32, ptr %y2, align 4
  %17 = icmp slt i32 %16, 1
  %or.cond75 = select i1 %cmp31.not43, i1 true, i1 %17
  br i1 %or.cond75, label %for.end76, label %for.cond33.preheader

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv52 = phi i64 [ %indvars.iv.next53, %for.body18 ], [ 1, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv55, i64 %indvars.iv52
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %18 = load i32, ptr %y2, align 4, !tbaa !5
  %19 = sext i32 %18 to i64
  %cmp17.not.not = icmp slt i64 %indvars.iv52, %19
  br i1 %cmp17.not.not, label %for.body18, label %for.inc27.loopexit, !llvm.loop !14

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre67 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %20 = phi i32 [ %.pre67, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %21 = phi i32 [ %18, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %22 = sext i32 %20 to i64
  %cmp14.not.not = icmp slt i64 %indvars.iv55, %22
  br i1 %cmp14.not.not, label %for.cond16.preheader, label %for.cond30.preheader, !llvm.loop !15

for.cond33.preheader:                             ; preds = %for.cond30.preheader, %for.inc74
  %23 = phi i32 [ %62, %for.inc74 ], [ %15, %for.cond30.preheader ]
  %24 = phi i32 [ %63, %for.inc74 ], [ %16, %for.cond30.preheader ]
  %indvars.iv64 = phi i64 [ %indvars.iv.next65, %for.inc74 ], [ 1, %for.cond30.preheader ]
  %cmp34.not41 = icmp slt i32 %24, 1
  br i1 %cmp34.not41, label %for.inc74, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33.preheader, %for.inc71
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc71 ], [ 1, %for.cond33.preheader ]
  %25 = phi i32 [ %60, %for.inc71 ], [ %24, %for.cond33.preheader ]
  %26 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp37.not39 = icmp slt i32 %26, 1
  br i1 %cmp37.not39, label %for.end57, label %for.body38.lr.ph

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %arrayidx42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv64, i64 %indvars.iv61
  %arrayidx42.promoted = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %27 = add nuw i32 %26, 1
  %wide.trip.count = zext i32 %27 to i64
  %28 = zext nneg i32 %26 to i64
  %min.iters.check = icmp ult i32 %26, 4
  br i1 %min.iters.check, label %for.body38.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body38.lr.ph
  %n.vec = and i64 %28, 2147483644
  %29 = or disjoint i64 %n.vec, 1
  %30 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %arrayidx42.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %30, %vector.ph ], [ %48, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %31 = or disjoint i64 %index, 2
  %32 = or disjoint i64 %index, 3
  %33 = add i64 %index, 4
  %34 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv64, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %34, align 4, !tbaa !5
  %35 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %offset.idx, i64 %indvars.iv61
  %36 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %31, i64 %indvars.iv61
  %37 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %32, i64 %indvars.iv61
  %38 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %33, i64 %indvars.iv61
  %39 = load i32, ptr %35, align 4, !tbaa !5
  %40 = load i32, ptr %36, align 4, !tbaa !5
  %41 = load i32, ptr %37, align 4, !tbaa !5
  %42 = load i32, ptr %38, align 4, !tbaa !5
  %43 = insertelement <4 x i32> poison, i32 %39, i64 0
  %44 = insertelement <4 x i32> %43, i32 %40, i64 1
  %45 = insertelement <4 x i32> %44, i32 %41, i64 2
  %46 = insertelement <4 x i32> %45, i32 %42, i64 3
  %47 = mul nsw <4 x i32> %46, %wide.load
  %48 = add <4 x i32> %47, %vec.phi
  %index.next = add nuw i64 %index, 4
  %49 = icmp eq i64 %index.next, %n.vec
  br i1 %49, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %50 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %48)
  %cmp.n = icmp eq i64 %n.vec, %28
  br i1 %cmp.n, label %for.cond36.for.end57_crit_edge, label %for.body38.preheader

for.body38.preheader:                             ; preds = %for.body38.lr.ph, %middle.block
  %indvars.iv58.ph = phi i64 [ 1, %for.body38.lr.ph ], [ %29, %middle.block ]
  %.ph = phi i32 [ %arrayidx42.promoted, %for.body38.lr.ph ], [ %50, %middle.block ]
  br label %for.body38

for.body38:                                       ; preds = %for.body38.preheader, %for.body38
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.body38 ], [ %indvars.iv58.ph, %for.body38.preheader ]
  %51 = phi i32 [ %add, %for.body38 ], [ %.ph, %for.body38.preheader ]
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv64, i64 %indvars.iv58
  %52 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv58, i64 %indvars.iv61
  %53 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %mul = mul nsw i32 %53, %52
  %add = add nsw i32 %mul, %51
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count
  br i1 %exitcond.not, label %for.cond36.for.end57_crit_edge, label %for.body38, !llvm.loop !19

for.cond36.for.end57_crit_edge:                   ; preds = %for.body38, %middle.block
  %add.lcssa = phi i32 [ %50, %middle.block ], [ %add, %for.body38 ]
  store i32 %add.lcssa, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.end57

for.end57:                                        ; preds = %for.cond36.for.end57_crit_edge, %for.cond36.preheader
  %54 = zext i32 %25 to i64
  %cmp58 = icmp eq i64 %indvars.iv61, %54
  %arrayidx62 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv64, i64 %indvars.iv61
  %55 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %call63 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %55)
  br i1 %cmp58, label %if.then, label %if.else

if.then:                                          ; preds = %for.end57
  %vtable.i = load ptr, ptr %call63, align 8, !tbaa !20
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call63, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %56 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !22
  %tobool.not.i.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %56, i64 56
  %57 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !40
  %tobool.not.i1.i.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %56, i64 67
  %58 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %56)
  %vtable.i.i.i = load ptr, ptr %56, align 8, !tbaa !20
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %59 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %59(ptr noundef nonnull align 8 dereferenceable(570) %56, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %58, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call63, i8 noundef signext %retval.0.i.i.i)
  %call.i.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i29)
  br label %for.inc71

if.else:                                          ; preds = %for.end57
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call63, ptr noundef nonnull @.str, i64 noundef 1)
  br label %for.inc71

for.inc71:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %if.else
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %60 = load i32, ptr %y2, align 4, !tbaa !5
  %61 = sext i32 %60 to i64
  %cmp34.not.not = icmp slt i64 %indvars.iv61, %61
  br i1 %cmp34.not.not, label %for.cond36.preheader, label %for.inc74.loopexit, !llvm.loop !47

for.inc74.loopexit:                               ; preds = %for.inc71
  %.pre68 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.inc74

for.inc74:                                        ; preds = %for.inc74.loopexit, %for.cond33.preheader
  %62 = phi i32 [ %.pre68, %for.inc74.loopexit ], [ %23, %for.cond33.preheader ]
  %63 = phi i32 [ %60, %for.inc74.loopexit ], [ %24, %for.cond33.preheader ]
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  %64 = sext i32 %62 to i64
  %cmp31.not.not = icmp slt i64 %indvars.iv64, %64
  br i1 %cmp31.not.not, label %for.cond33.preheader, label %for.end76, !llvm.loop !48

for.end76:                                        ; preds = %for.inc74, %for.cond30.preheader
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11, !17, !18}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = distinct !{!19, !10, !11, !17}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !37, i64 240}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !24, i64 0, !34, i64 216, !7, i64 224, !35, i64 225, !36, i64 232, !37, i64 240, !38, i64 248, !39, i64 256}
!24 = !{!"_ZTSSt8ios_base", !25, i64 8, !25, i64 16, !26, i64 24, !27, i64 28, !27, i64 32, !28, i64 40, !30, i64 48, !7, i64 64, !6, i64 192, !31, i64 200, !32, i64 208}
!25 = !{!"long", !7, i64 0}
!26 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!27 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!28 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !29, i64 0, !25, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !29, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !29, i64 0}
!34 = !{!"p1 _ZTSSo", !29, i64 0}
!35 = !{!"bool", !7, i64 0}
!36 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 0}
!37 = !{!"p1 _ZTSSt5ctypeIcE", !29, i64 0}
!38 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!39 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!40 = !{!41, !7, i64 56}
!41 = !{!"_ZTSSt5ctypeIcE", !42, i64 0, !43, i64 16, !35, i64 24, !44, i64 32, !44, i64 40, !45, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!42 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!43 = !{!"p1 _ZTS15__locale_struct", !29, i64 0}
!44 = !{!"p1 int", !29, i64 0}
!45 = !{!"p1 short", !29, i64 0}
!46 = !{!7, !7, i64 0}
!47 = distinct !{!47, !10, !11}
!48 = distinct !{!48, !10, !11, !13}
