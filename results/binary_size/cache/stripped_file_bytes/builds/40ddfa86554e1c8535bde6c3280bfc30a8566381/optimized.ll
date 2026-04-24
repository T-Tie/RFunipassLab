; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzpzidp60.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %0, 0
  %1 = load i32, ptr %y1, align 4
  %2 = icmp sgt i32 %1, 0
  %or.cond = select i1 %cmp26, i1 %2, i1 false
  br i1 %or.cond, label %for.cond2.preheader, label %for.end10

for.cond2.preheader:                              ; preds = %entry, %for.inc8
  %3 = phi i32 [ %7, %for.inc8 ], [ %0, %entry ]
  %4 = phi i32 [ %8, %for.inc8 ], [ %1, %entry ]
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc8 ], [ 0, %entry ]
  %cmp324 = icmp sgt i32 %4, 0
  br i1 %cmp324, label %for.body4, label %for.inc8

for.body4:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond2.preheader ]
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv42, i64 %indvars.iv
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
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %9 = sext i32 %7 to i64
  %cmp = icmp slt i64 %indvars.iv.next43, %9
  br i1 %cmp, label %for.cond2.preheader, label %for.end10, !llvm.loop !12

for.end10:                                        ; preds = %for.inc8, %entry
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %10 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp1430 = icmp sgt i32 %10, 0
  %11 = load i32, ptr %y2, align 4
  %12 = icmp sgt i32 %11, 0
  %or.cond65 = select i1 %cmp1430, i1 %12, i1 false
  br i1 %or.cond65, label %for.cond16.preheader, label %for.cond30.preheader

for.cond16.preheader:                             ; preds = %for.end10, %for.inc27
  %13 = phi i32 [ %18, %for.inc27 ], [ %10, %for.end10 ]
  %14 = phi i32 [ %19, %for.inc27 ], [ %11, %for.end10 ]
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.inc27 ], [ 0, %for.end10 ]
  %cmp1728 = icmp sgt i32 %14, 0
  br i1 %cmp1728, label %for.body18, label %for.inc27

for.cond30.preheader:                             ; preds = %for.inc27, %for.end10
  %15 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp3137 = icmp sgt i32 %15, 0
  br i1 %cmp3137, label %for.cond33.preheader, label %for.end59

for.body18:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.body18 ], [ 0, %for.cond16.preheader ]
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv48, i64 %indvars.iv45
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  %16 = load i32, ptr %y2, align 4, !tbaa !5
  %17 = sext i32 %16 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next46, %17
  br i1 %cmp17, label %for.body18, label %for.inc27.loopexit, !llvm.loop !14

for.inc27.loopexit:                               ; preds = %for.body18
  %.pre60 = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.inc27.loopexit, %for.cond16.preheader
  %18 = phi i32 [ %.pre60, %for.inc27.loopexit ], [ %13, %for.cond16.preheader ]
  %19 = phi i32 [ %16, %for.inc27.loopexit ], [ %14, %for.cond16.preheader ]
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %20 = sext i32 %18 to i64
  %cmp14 = icmp slt i64 %indvars.iv.next49, %20
  br i1 %cmp14, label %for.cond16.preheader, label %for.cond30.preheader, !llvm.loop !15

for.cond33.preheader:                             ; preds = %for.cond30.preheader, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ 0, %for.cond30.preheader ]
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp3435 = icmp sgt i32 %21, 0
  br i1 %cmp3435, label %for.cond36.preheader, label %for.end55

for.cond36.preheader:                             ; preds = %for.cond33.preheader, %for.inc53
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc53 ], [ 0, %for.cond33.preheader ]
  %22 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp3732 = icmp sgt i32 %22, 0
  br i1 %cmp3732, label %for.body38.lr.ph, label %for.end49

for.body38.lr.ph:                                 ; preds = %for.cond36.preheader
  %wide.trip.count = zext nneg i32 %22 to i64
  %min.iters.check = icmp ult i32 %22, 4
  br i1 %min.iters.check, label %for.body38.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body38.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %40, %vector.body ]
  %23 = or disjoint i64 %index, 1
  %24 = or disjoint i64 %index, 2
  %25 = or disjoint i64 %index, 3
  %26 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv57, i64 %index
  %wide.load = load <4 x i32>, ptr %26, align 4, !tbaa !5
  %27 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %index, i64 %indvars.iv54
  %28 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %23, i64 %indvars.iv54
  %29 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %24, i64 %indvars.iv54
  %30 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %25, i64 %indvars.iv54
  %31 = load i32, ptr %27, align 4, !tbaa !5
  %32 = load i32, ptr %28, align 4, !tbaa !5
  %33 = load i32, ptr %29, align 4, !tbaa !5
  %34 = load i32, ptr %30, align 4, !tbaa !5
  %35 = insertelement <4 x i32> poison, i32 %31, i64 0
  %36 = insertelement <4 x i32> %35, i32 %32, i64 1
  %37 = insertelement <4 x i32> %36, i32 %33, i64 2
  %38 = insertelement <4 x i32> %37, i32 %34, i64 3
  %39 = mul nsw <4 x i32> %38, %wide.load
  %40 = add <4 x i32> %39, %vec.phi
  %index.next = add nuw i64 %index, 4
  %41 = icmp eq i64 %index.next, %n.vec
  br i1 %41, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %42 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end49, label %for.body38.preheader

for.body38.preheader:                             ; preds = %for.body38.lr.ph, %middle.block
  %indvars.iv51.ph = phi i64 [ 0, %for.body38.lr.ph ], [ %n.vec, %middle.block ]
  %sum.034.ph = phi i32 [ 0, %for.body38.lr.ph ], [ %42, %middle.block ]
  br label %for.body38

for.body38:                                       ; preds = %for.body38.preheader, %for.body38
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body38 ], [ %indvars.iv51.ph, %for.body38.preheader ]
  %sum.034 = phi i32 [ %add, %for.body38 ], [ %sum.034.ph, %for.body38.preheader ]
  %arrayidx42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv57, i64 %indvars.iv51
  %43 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv51, i64 %indvars.iv54
  %44 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %44, %43
  %add = add nsw i32 %mul, %sum.034
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count
  br i1 %exitcond.not, label %for.end49, label %for.body38, !llvm.loop !19

for.end49:                                        ; preds = %for.body38, %middle.block, %for.cond36.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond36.preheader ], [ %42, %middle.block ], [ %add, %for.body38 ]
  %call50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %45 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %45, -1
  %46 = sext i32 %sub to i64
  %cmp51 = icmp slt i64 %indvars.iv54, %46
  br i1 %cmp51, label %if.then, label %for.inc53

if.then:                                          ; preds = %for.end49
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %.pre61 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.inc53

for.inc53:                                        ; preds = %for.end49, %if.then
  %47 = phi i32 [ %45, %for.end49 ], [ %.pre61, %if.then ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %48 = sext i32 %47 to i64
  %cmp34 = icmp slt i64 %indvars.iv.next55, %48
  br i1 %cmp34, label %for.cond36.preheader, label %for.end55, !llvm.loop !20

for.end55:                                        ; preds = %for.inc53, %for.cond33.preheader
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !21
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %49 = load ptr, ptr %gep, align 8, !tbaa !23
  %tobool.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end55
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end55
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %49, i64 56
  %50 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !41
  %tobool.not.i1.i.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %49, i64 67
  %51 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !47
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %49)
  %vtable.i.i.i = load ptr, ptr %49, align 8, !tbaa !21
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %52 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %52(ptr noundef nonnull align 8 dereferenceable(570) %49, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %51, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i22)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %53 = load i32, ptr %x1, align 4, !tbaa !5
  %54 = sext i32 %53 to i64
  %cmp31 = icmp slt i64 %indvars.iv.next58, %54
  br i1 %cmp31, label %for.cond33.preheader, label %for.end59, !llvm.loop !48

for.end59:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %for.cond30.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x1) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 40804, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!21 = !{!22, !22, i64 0}
!22 = !{!"vtable pointer", !8, i64 0}
!23 = !{!24, !38, i64 240}
!24 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !25, i64 0, !35, i64 216, !7, i64 224, !36, i64 225, !37, i64 232, !38, i64 240, !39, i64 248, !40, i64 256}
!25 = !{!"_ZTSSt8ios_base", !26, i64 8, !26, i64 16, !27, i64 24, !28, i64 28, !28, i64 32, !29, i64 40, !31, i64 48, !7, i64 64, !6, i64 192, !32, i64 200, !33, i64 208}
!26 = !{!"long", !7, i64 0}
!27 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!28 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!29 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !30, i64 0}
!30 = !{!"any pointer", !7, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !30, i64 0, !26, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !30, i64 0}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !30, i64 0}
!35 = !{!"p1 _ZTSSo", !30, i64 0}
!36 = !{!"bool", !7, i64 0}
!37 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !30, i64 0}
!38 = !{!"p1 _ZTSSt5ctypeIcE", !30, i64 0}
!39 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!40 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !30, i64 0}
!41 = !{!42, !7, i64 56}
!42 = !{!"_ZTSSt5ctypeIcE", !43, i64 0, !44, i64 16, !36, i64 24, !45, i64 32, !45, i64 40, !46, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!43 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!44 = !{!"p1 _ZTS15__locale_struct", !30, i64 0}
!45 = !{!"p1 int", !30, i64 0}
!46 = !{!"p1 short", !30, i64 0}
!47 = !{!7, !7, i64 0}
!48 = distinct !{!48, !10, !11}
