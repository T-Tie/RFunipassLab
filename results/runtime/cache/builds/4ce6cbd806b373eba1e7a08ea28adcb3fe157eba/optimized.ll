; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn7ngxfj0.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNKSt5ctypeIcE5widenEc = comdat any

@i = dso_local local_unnamed_addr global i32 0, align 4
@n = dso_local global i32 0, align 4
@a = dso_local global double 0.000000e+00, align 8
@b = dso_local global double 0.000000e+00, align 8
@c = dso_local global double 0.000000e+00, align 8
@j = dso_local local_unnamed_addr global double 0.000000e+00, align 8
@x = dso_local local_unnamed_addr global [2 x double] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"x1=\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%.5f\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"x2=\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"x1=x2=\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"i\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %storemerge = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  store i32 %storemerge, ptr @i, align 4, !tbaa !5
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %storemerge, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %call.i = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) @a)
  %call.i1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) @b)
  %call.i2 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i1, ptr noundef nonnull align 8 dereferenceable(8) @c)
  %1 = load double, ptr @b, align 8, !tbaa !9
  %cmp4 = fcmp oeq double %1, 0.000000e+00
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %fneg = fneg double %1
  store double %fneg, ptr @b, align 8, !tbaa !9
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %2 = phi double [ %fneg, %if.then ], [ %1, %for.body ]
  %3 = load double, ptr @a, align 8, !tbaa !9
  %mul5 = fmul double %3, 4.000000e+00
  %4 = load double, ptr @c, align 8, !tbaa !9
  %5 = fneg double %4
  %neg = fmul double %mul5, %5
  %6 = tail call double @llvm.fmuladd.f64(double %2, double %2, double %neg)
  store double %6, ptr @j, align 8, !tbaa !9
  %cmp7 = fcmp ogt double %6, 0.000000e+00
  br i1 %cmp7, label %if.then8, label %if.end28

if.then8:                                         ; preds = %if.end
  %fneg9 = fneg double %2
  %call13 = tail call double @sqrt(double noundef %6) #9, !tbaa !5
  %add = fsub double %call13, %2
  %mul = fmul double %3, 2.000000e+00
  %div = fdiv double %add, %mul
  store double %div, ptr @x, align 16, !tbaa !9
  %call19 = tail call double @sqrt(double noundef %6) #9, !tbaa !5
  %sub = fsub double %fneg9, %call19
  %div21 = fdiv double %sub, %mul
  store double %div21, ptr getelementptr inbounds nuw (i8, ptr @x, i64 8), align 8, !tbaa !9
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %7 = load double, ptr @x, align 16, !tbaa !9
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %7) #10
  call fastcc void @outlined_ir_func_0.4()
  %8 = load double, ptr getelementptr inbounds nuw (i8, ptr @x, i64 8), align 8, !tbaa !9
  %call26 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %8) #10
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !13
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i24 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i24)
  %call.i.i26 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i25)
  %.pr = load double, ptr @j, align 8, !tbaa !9
  br label %if.end28

if.end28:                                         ; preds = %if.then8, %if.end
  %9 = phi double [ %.pr, %if.then8 ], [ %6, %if.end ]
  %cmp29 = fcmp oeq double %9, 0.000000e+00
  br i1 %cmp29, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end28
  %call1.i9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.4, i64 noundef 6)
  call fastcc void @outlined_ir_func_0() #10
  %vtable.i27 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i28 = getelementptr i8, ptr %vtable.i27, i64 -24
  %vbase.offset.i29 = load i64, ptr %vbase.offset.ptr.i28, align 8, !invariant.load !13
  %add.ptr.i30 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i29
  %call.i31 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i30, i8 noundef signext 10)
  %call1.i32 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i31)
  %call.i.i33 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i32)
  %.pre = load double, ptr @j, align 8, !tbaa !9
  br label %if.end37

if.end37:                                         ; preds = %if.then30, %if.end28
  %10 = phi double [ %.pre, %if.then30 ], [ %9, %if.end28 ]
  %cmp38 = fcmp olt double %10, 0.000000e+00
  br i1 %cmp38, label %if.then39, label %for.inc

if.then39:                                        ; preds = %if.end37
  %call1.i12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  call fastcc void @outlined_ir_func_0() #10
  %call1.i14 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.5, i64 noundef 1)
  %11 = load double, ptr @a, align 8, !tbaa !9
  %mul46 = fmul double %11, 4.000000e+00
  %12 = load double, ptr @c, align 8, !tbaa !9
  %13 = load double, ptr @b, align 8, !tbaa !9
  %14 = fneg double %13
  %neg49 = fmul double %13, %14
  %15 = tail call double @llvm.fmuladd.f64(double %mul46, double %12, double %neg49)
  %call50 = tail call double @sqrt(double noundef %15) #9, !tbaa !5
  %mul51 = fmul double %11, 2.000000e+00
  %div52 = fdiv double %call50, %mul51
  %call53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %div52) #10
  %call1.i16 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 1)
  call fastcc void @outlined_ir_func_0.4()
  call fastcc void @outlined_ir_func_0() #10
  %16 = load double, ptr @a, align 8, !tbaa !9
  %mul61 = fmul double %16, 4.000000e+00
  %17 = load double, ptr @c, align 8, !tbaa !9
  %18 = load double, ptr @b, align 8, !tbaa !9
  %19 = fneg double %18
  %neg64 = fmul double %18, %19
  %20 = tail call double @llvm.fmuladd.f64(double %mul61, double %17, double %neg64)
  %call65 = tail call double @sqrt(double noundef %20) #9, !tbaa !5
  %fneg66 = fneg double %call65
  %mul67 = fmul double %16, 2.000000e+00
  %div68 = fdiv double %fneg66, %mul67
  %call69 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %div68) #10
  %call1.i22 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.6, i64 noundef 1)
  %vtable.i34 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i35 = getelementptr i8, ptr %vtable.i34, i64 -24
  %vbase.offset.i36 = load i64, ptr %vbase.offset.ptr.i35, align 8, !invariant.load !13
  %add.ptr.i37 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i36
  %call.i38 = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i37, i8 noundef signext 10)
  %call1.i39 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i38)
  %call.i.i40 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i39)
  br label %for.inc

for.inc:                                          ; preds = %if.end37, %if.then39
  %21 = load i32, ptr @i, align 4, !tbaa !5
  %inc = add nsw i32 %21, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #5 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !17
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !25
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !11
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !13
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: minsize mustprogress nofree norecurse nounwind optsize uwtable
define internal fastcc void @outlined_ir_func_0() unnamed_addr #7 {
if.then30_after_outline.exitStub:
  %0 = load double, ptr @b, align 8, !tbaa !9
  %fneg32 = fneg double %0
  %1 = load double, ptr @a, align 8, !tbaa !9
  %mul33 = fmul double %1, 2.000000e+00
  %div34 = fdiv double %fneg32, %mul33
  %call35 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %div34) #11
  ret void
}

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal fastcc void @outlined_ir_func_0.4() unnamed_addr #8 {
if.then8_after_outline.exitStub:
  %call1.i4 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 1)
  %call1.i6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 3)
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { minsize mustprogress nofree norecurse nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(write) }
attributes #10 = { nounwind }
attributes #11 = { nofree nounwind }

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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !8, i64 0}
!13 = !{}
!14 = distinct !{!14, !15, !16}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!"llvm.loop.unroll.disable"}
!17 = !{!18, !7, i64 56}
!18 = !{!"_ZTSSt5ctypeIcE", !19, i64 0, !20, i64 16, !22, i64 24, !23, i64 32, !23, i64 40, !24, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!19 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!20 = !{!"p1 _ZTS15__locale_struct", !21, i64 0}
!21 = !{!"any pointer", !7, i64 0}
!22 = !{!"bool", !7, i64 0}
!23 = !{!"p1 int", !21, i64 0}
!24 = !{!"p1 short", !21, i64 0}
!25 = !{!7, !7, i64 0}
