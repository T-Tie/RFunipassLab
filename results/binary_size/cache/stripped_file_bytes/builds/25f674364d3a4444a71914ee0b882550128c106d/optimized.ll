; ModuleID = '<stdin>'
source_filename = "/tmp/tmpoy3zjpkl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@__const.main.a = private unnamed_addr constant [12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %dec48 = add nsw i32 %0, -1
  store i32 %dec48, ptr %n, align 4, !tbaa !5
  %tobool.not49 = icmp eq i32 %0, 0
  br i1 %tobool.not49, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end38
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %month1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %month2)
  %1 = load i32, ptr %month1, align 4, !tbaa !5
  %2 = load i32, ptr %month2, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 %2, ptr %month1, align 4, !tbaa !5
  store i32 %1, ptr %month2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %while.body ]
  %4 = phi i32 [ %2, %if.then ], [ %1, %while.body ]
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %6 = and i32 %5, 3
  %cmp4 = icmp eq i32 %6, 0
  %rem5 = srem i32 %5, 100
  %cmp6.not = icmp ne i32 %rem5, 0
  %or.cond11.not38 = and i1 %cmp4, %cmp6.not
  %rem7 = srem i32 %5, 400
  %cmp8 = icmp eq i32 %rem7, 0
  %or.cond37 = or i1 %cmp8, %or.cond11.not38
  %sub10 = add i32 %3, -1
  %cmp1143 = icmp slt i32 %4, %3
  br i1 %or.cond37, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  br i1 %cmp1143, label %for.body.preheader, label %if.then32

for.body.preheader:                               ; preds = %if.then9
  %sub = add i32 %4, -1
  %7 = sext i32 %sub to i64
  %8 = xor i32 %4, -1
  %9 = add i32 %3, %8
  %10 = zext i32 %9 to i64
  %11 = add nuw nsw i64 %10, 1
  %min.iters.check = icmp ult i32 %9, 3
  br i1 %min.iters.check, label %for.body.preheader74, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %11, 8589934588
  %12 = add nsw i64 %n.vec, %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %14, %vector.body ]
  %offset.idx = add i64 %index, %7
  %13 = getelementptr inbounds [12 x i32], ptr @__const.main.a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %13, align 4, !tbaa !5
  %14 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %16 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %14)
  %cmp.n = icmp eq i64 %11, %n.vec
  br i1 %cmp.n, label %if.end29, label %for.body.preheader74

for.body.preheader74:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv51.ph = phi i64 [ %7, %for.body.preheader ], [ %12, %middle.block ]
  %day.045.ph = phi i32 [ 0, %for.body.preheader ], [ %16, %middle.block ]
  br label %for.body

for.body:                                         ; preds = %for.body.preheader74, %for.body
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.body ], [ %indvars.iv51.ph, %for.body.preheader74 ]
  %day.045 = phi i32 [ %add, %for.body ], [ %day.045.ph, %for.body.preheader74 ]
  %arrayidx = getelementptr inbounds [12 x i32], ptr @__const.main.a, i64 0, i64 %indvars.iv51
  %17 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %17, %day.045
  %indvars.iv.next52 = add nsw i64 %indvars.iv51, 1
  %lftr.wideiv54 = trunc i64 %indvars.iv.next52 to i32
  %exitcond55.not = icmp eq i32 %sub10, %lftr.wideiv54
  br i1 %exitcond55.not, label %if.end29, label %for.body, !llvm.loop !14

if.else:                                          ; preds = %if.end
  br i1 %cmp1143, label %for.body16.preheader, label %for.end22

for.body16.preheader:                             ; preds = %if.else
  %sub12 = add i32 %4, -1
  %18 = sext i32 %sub12 to i64
  %19 = xor i32 %4, -1
  %20 = add i32 %3, %19
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %min.iters.check60 = icmp ult i32 %20, 3
  br i1 %min.iters.check60, label %for.body16.preheader75, label %vector.ph61

vector.ph61:                                      ; preds = %for.body16.preheader
  %n.vec63 = and i64 %22, 8589934588
  %23 = add nsw i64 %n.vec63, %18
  br label %vector.body64

vector.body64:                                    ; preds = %vector.body64, %vector.ph61
  %index65 = phi i64 [ 0, %vector.ph61 ], [ %index.next69, %vector.body64 ]
  %vec.phi66 = phi <4 x i32> [ zeroinitializer, %vector.ph61 ], [ %25, %vector.body64 ]
  %offset.idx67 = add i64 %index65, %18
  %24 = getelementptr inbounds [12 x i32], ptr @__const.main.a, i64 0, i64 %offset.idx67
  %wide.load68 = load <4 x i32>, ptr %24, align 4, !tbaa !5
  %25 = add <4 x i32> %wide.load68, %vec.phi66
  %index.next69 = add nuw i64 %index65, 4
  %26 = icmp eq i64 %index.next69, %n.vec63
  br i1 %26, label %middle.block70, label %vector.body64, !llvm.loop !15

middle.block70:                                   ; preds = %vector.body64
  %27 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %25)
  %cmp.n71 = icmp eq i64 %22, %n.vec63
  br i1 %cmp.n71, label %for.end22, label %for.body16.preheader75

for.body16.preheader75:                           ; preds = %for.body16.preheader, %middle.block70
  %indvars.iv.ph = phi i64 [ %18, %for.body16.preheader ], [ %23, %middle.block70 ]
  %day.241.ph = phi i32 [ 0, %for.body16.preheader ], [ %27, %middle.block70 ]
  br label %for.body16

for.body16:                                       ; preds = %for.body16.preheader75, %for.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ %indvars.iv.ph, %for.body16.preheader75 ]
  %day.241 = phi i32 [ %add19, %for.body16 ], [ %day.241.ph, %for.body16.preheader75 ]
  %arrayidx18 = getelementptr inbounds [12 x i32], ptr @__const.main.a, i64 0, i64 %indvars.iv
  %28 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add19 = add nsw i32 %28, %day.241
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %sub10, %lftr.wideiv
  br i1 %exitcond.not, label %for.end22, label %for.body16, !llvm.loop !16

for.end22:                                        ; preds = %for.body16, %middle.block70, %if.else
  %day.2.lcssa = phi i32 [ 0, %if.else ], [ %27, %middle.block70 ], [ %add19, %for.body16 ]
  %cmp23 = icmp slt i32 %4, 3
  %cmp25 = icmp sgt i32 %3, 2
  %or.cond = and i1 %cmp23, %cmp25
  %sub27 = sext i1 %or.cond to i32
  %spec.select = add nsw i32 %day.2.lcssa, %sub27
  br label %if.end29

if.end29:                                         ; preds = %for.body, %middle.block, %for.end22
  %day.1 = phi i32 [ %spec.select, %for.end22 ], [ %16, %middle.block ], [ %add, %for.body ]
  %rem30 = srem i32 %day.1, 7
  %cmp31 = icmp eq i32 %rem30, 0
  br i1 %cmp31, label %if.then32, label %if.else35

if.then32:                                        ; preds = %if.then9, %if.end29
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep47 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %29 = load ptr, ptr %gep47, align 8, !tbaa !19
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then32
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then32
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 56
  %30 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !37
  %tobool.not.i1.i.i = icmp eq i8 %30, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %29, i64 67
  %31 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !43
  br label %if.end38

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %29)
  %vtable.i.i.i = load ptr, ptr %29, align 8, !tbaa !17
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %32 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %32(ptr noundef nonnull align 8 dereferenceable(570) %29, i8 noundef signext 10)
  br label %if.end38

if.else35:                                        ; preds = %if.end29
  %call1.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i17 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i18 = getelementptr i8, ptr %vtable.i17, i64 -24
  %vbase.offset.i19 = load i64, ptr %vbase.offset.ptr.i18, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i19
  %33 = load ptr, ptr %gep, align 8, !tbaa !19
  %tobool.not.i.i.i22 = icmp eq ptr %33, null
  br i1 %tobool.not.i.i.i22, label %if.then.i.i.i35, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23

if.then.i.i.i35:                                  ; preds = %if.else35
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23: ; preds = %if.else35
  %_M_widen_ok.i.i.i24 = getelementptr inbounds nuw i8, ptr %33, i64 56
  %34 = load i8, ptr %_M_widen_ok.i.i.i24, align 8, !tbaa !37
  %tobool.not.i1.i.i25 = icmp eq i8 %34, 0
  br i1 %tobool.not.i1.i.i25, label %if.end.i.i.i31, label %if.then.i2.i.i26

if.then.i2.i.i26:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  %arrayidx.i.i.i27 = getelementptr inbounds nuw i8, ptr %33, i64 67
  %35 = load i8, ptr %arrayidx.i.i.i27, align 1, !tbaa !43
  br label %if.end38

if.end.i.i.i31:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i23
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %33)
  %vtable.i.i.i32 = load ptr, ptr %33, align 8, !tbaa !17
  %vfn.i.i.i33 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i32, i64 48
  %36 = load ptr, ptr %vfn.i.i.i33, align 8
  %call.i.i.i34 = call noundef signext i8 %36(ptr noundef nonnull align 8 dereferenceable(570) %33, i8 noundef signext 10)
  br label %if.end38

if.end38:                                         ; preds = %if.end.i.i.i31, %if.then.i2.i.i26, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i28.sink = phi i8 [ %31, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %35, %if.then.i2.i.i26 ], [ %call.i.i.i34, %if.end.i.i.i31 ]
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i28.sink)
  %call.i.i30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i29)
  %37 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %37, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %37, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !44

while.end:                                        ; preds = %if.end38, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11, !12, !13}
!16 = distinct !{!16, !10, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = !{!20, !34, i64 240}
!20 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !21, i64 0, !31, i64 216, !7, i64 224, !32, i64 225, !33, i64 232, !34, i64 240, !35, i64 248, !36, i64 256}
!21 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !27, i64 48, !7, i64 64, !6, i64 192, !28, i64 200, !29, i64 208}
!22 = !{!"long", !7, i64 0}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !22, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!31 = !{!"p1 _ZTSSo", !26, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!34 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!35 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!36 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!37 = !{!38, !7, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !32, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!41 = !{!"p1 int", !26, i64 0}
!42 = !{!"p1 short", !26, i64 0}
!43 = !{!7, !7, i64 0}
!44 = distinct !{!44, !10, !11}
