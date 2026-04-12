; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe2gu4fb5.cpp"
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

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [8 x i8] c"x1=%.5f\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"x2=%.5f\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"x1=x2=%.5f\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"x1=0.00000+%.5fi\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"x2=0.00000-%.5fi\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"x1=%.5f+%.5fi\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"x2=%.5f-%.5fi\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %a) #10
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull %c) #10
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call.i1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %call.i2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i1, ptr noundef nonnull align 8 dereferenceable(8) %c)
  %1 = load double, ptr %b, align 8, !tbaa !9
  %2 = load double, ptr %a, align 8, !tbaa !9
  %mul4 = fmul double %2, 4.000000e+00
  %3 = load double, ptr %c, align 8, !tbaa !9
  %4 = fneg double %3
  %neg = fmul double %mul4, %4
  %5 = call double @llvm.fmuladd.f64(double %1, double %1, double %neg)
  %cmp6 = fcmp ogt double %5, 0.000000e+00
  br i1 %cmp6, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call10 = call double @sqrt(double noundef %5) #11, !tbaa !5
  %add = fsub double %call10, %1
  %mul = fmul double %2, 2.000000e+00
  %div = fdiv double %add, %mul
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %div) #10
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %6 = load double, ptr %b, align 8, !tbaa !9
  %fneg13 = fneg double %6
  %7 = load double, ptr %a, align 8, !tbaa !9
  %mul15 = fmul double %7, 4.000000e+00
  %8 = load double, ptr %c, align 8, !tbaa !9
  %9 = fneg double %8
  %neg17 = fmul double %mul15, %9
  %10 = call double @llvm.fmuladd.f64(double %6, double %6, double %neg17)
  %call18 = call double @sqrt(double noundef %10) #11, !tbaa !5
  %sub = fsub double %fneg13, %call18
  %mul19 = fmul double %7, 2.000000e+00
  %div20 = fdiv double %sub, %mul19
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div20) #10
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !13
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i11 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i11)
  %call.i.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i12)
  %.pre = load double, ptr %b, align 8, !tbaa !9
  %.pre36 = load double, ptr %a, align 8, !tbaa !9
  %.pre37 = load double, ptr %c, align 8, !tbaa !9
  %.pre41 = fmul double %.pre36, 4.000000e+00
  %.pre42 = fneg double %.pre37
  %.pre43 = fmul double %.pre41, %.pre42
  %.pre44 = call double @llvm.fmuladd.f64(double %.pre, double %.pre, double %.pre43)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %.pre-phi45 = phi double [ %.pre44, %if.then ], [ %5, %for.body ]
  %mul24.pre-phi = phi double [ %.pre41, %if.then ], [ %mul4, %for.body ]
  %11 = phi double [ %.pre37, %if.then ], [ %3, %for.body ]
  %12 = phi double [ %.pre36, %if.then ], [ %2, %for.body ]
  %13 = phi double [ %.pre, %if.then ], [ %1, %for.body ]
  %cmp27 = fcmp oeq double %.pre-phi45, 0.000000e+00
  br i1 %cmp27, label %if.then28, label %if.end34

if.then28:                                        ; preds = %if.end
  %fneg29 = fneg double %13
  %mul30 = fmul double %12, 2.000000e+00
  %div31 = fdiv double %fneg29, %mul30
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, double noundef %div31) #10
  %vtable.i14 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i15 = getelementptr i8, ptr %vtable.i14, i64 -24
  %vbase.offset.i16 = load i64, ptr %vbase.offset.ptr.i15, align 8, !invariant.load !13
  %add.ptr.i17 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i16
  %call.i18 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i17, i8 noundef signext 10)
  %call1.i19 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i18)
  %call.i.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i19)
  %.pre38 = load double, ptr %b, align 8, !tbaa !9
  %.pre39 = load double, ptr %a, align 8, !tbaa !9
  %.pre40 = load double, ptr %c, align 8, !tbaa !9
  %.pre46 = fmul double %.pre39, 4.000000e+00
  %.pre47 = fneg double %.pre40
  %.pre49 = fmul double %.pre46, %.pre47
  %.pre50 = call double @llvm.fmuladd.f64(double %.pre38, double %.pre38, double %.pre49)
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.end
  %.pre-phi51 = phi double [ %.pre50, %if.then28 ], [ %.pre-phi45, %if.end ]
  %mul36.pre-phi = phi double [ %.pre46, %if.then28 ], [ %mul24.pre-phi, %if.end ]
  %14 = phi double [ %.pre40, %if.then28 ], [ %11, %if.end ]
  %15 = phi double [ %.pre39, %if.then28 ], [ %12, %if.end ]
  %16 = phi double [ %.pre38, %if.then28 ], [ %13, %if.end ]
  %cmp39 = fcmp olt double %.pre-phi51, 0.000000e+00
  br i1 %cmp39, label %if.then40, label %for.inc

if.then40:                                        ; preds = %if.end34
  %cmp41 = fcmp oeq double %16, 0.000000e+00
  %17 = fneg double %16
  %neg67 = fmul double %16, %17
  %18 = call double @llvm.fmuladd.f64(double %mul36.pre-phi, double %14, double %neg67)
  br i1 %cmp41, label %if.then42, label %if.else

if.then42:                                        ; preds = %if.then40
  %call47 = call double @sqrt(double noundef %18) #11, !tbaa !5
  %mul48 = fmul double %15, 2.000000e+00
  %div49 = fdiv double %call47, %mul48
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %div49) #10
  %call1.i6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %19 = load double, ptr %a, align 8, !tbaa !9
  %mul52 = fmul double %19, 4.000000e+00
  %20 = load double, ptr %c, align 8, !tbaa !9
  %21 = load double, ptr %b, align 8, !tbaa !9
  %22 = fneg double %21
  %neg55 = fmul double %21, %22
  %23 = call double @llvm.fmuladd.f64(double %mul52, double %20, double %neg55)
  %call56 = call double @sqrt(double noundef %23) #11, !tbaa !5
  %mul57 = fmul double %19, 2.000000e+00
  %div58 = fdiv double %call56, %mul57
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %div58) #10
  br label %for.inc.sink.split

if.else:                                          ; preds = %if.then40
  %mul62 = fmul double %15, 2.000000e+00
  %div63 = fdiv double %17, %mul62
  %call68 = call double @sqrt(double noundef %18) #11, !tbaa !5
  %div70 = fdiv double %call68, %mul62
  %call71 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %div63, double noundef %div70) #10
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %24 = load double, ptr %b, align 8, !tbaa !9
  %fneg73 = fneg double %24
  %25 = load double, ptr %a, align 8, !tbaa !9
  %mul74 = fmul double %25, 2.000000e+00
  %div75 = fdiv double %fneg73, %mul74
  %mul76 = fmul double %25, 4.000000e+00
  %26 = load double, ptr %c, align 8, !tbaa !9
  %neg79 = fmul double %24, %fneg73
  %27 = call double @llvm.fmuladd.f64(double %mul76, double %26, double %neg79)
  %call80 = call double @sqrt(double noundef %27) #11, !tbaa !5
  %div82 = fdiv double %call80, %mul74
  %call83 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %div75, double noundef %div82) #10
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then42, %if.else
  %vtable.i28 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i29 = getelementptr i8, ptr %vtable.i28, i64 -24
  %vbase.offset.i30 = load i64, ptr %vbase.offset.ptr.i29, align 8, !invariant.load !13
  %add.ptr.i31 = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i30
  %call.i32 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i31, i8 noundef signext 10)
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i32)
  %call.i.i34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i33)
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %if.end34
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %c) #10
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %b) #10
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %a) #10
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #6 align 2 {
entry:
  %_M_streambuf_state.i = getelementptr inbounds nuw i8, ptr %this, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i, align 8, !tbaa !17
  %or.i = or i32 %0, %__state
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %or.i)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) #7

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #6 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !28
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #12
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #6 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !36
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !42
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
declare void @_ZSt16__throw_bad_castv() #8

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind memory(write) }
attributes #12 = { noreturn }

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
!17 = !{!18, !21, i64 32}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!29, !33, i64 240}
!29 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !30, i64 216, !7, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!30 = !{!"p1 _ZTSSo", !23, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!36 = !{!37, !7, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!40 = !{!"p1 int", !23, i64 0}
!41 = !{!"p1 short", !23, i64 0}
!42 = !{!7, !7, i64 0}
