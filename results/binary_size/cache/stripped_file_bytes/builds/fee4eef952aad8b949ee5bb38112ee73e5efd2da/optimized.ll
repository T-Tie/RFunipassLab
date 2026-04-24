; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4495x8q6.cpp"
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
@.str = private unnamed_addr constant [8 x i8] c"x1=%.5f\00", align 1
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str.1 = private unnamed_addr constant [2 x i8] c";\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"x2=%.5f\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"x1=x2=%.5f\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"x1=%.5f+\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%.5fi\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca double, align 8
  %b = alloca double, align 8
  %c = alloca double, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %c) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %do.body

do.body:                                          ; preds = %if.end59, %entry
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %call.i17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) %b)
  %call.i18 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i17, ptr noundef nonnull align 8 dereferenceable(8) %c)
  %0 = load double, ptr %b, align 8, !tbaa !5
  %1 = load double, ptr %a, align 8, !tbaa !5
  %mul4 = fmul double %1, 4.000000e+00
  %2 = load double, ptr %c, align 8, !tbaa !5
  %3 = fneg double %2
  %neg = fmul double %mul4, %3
  %4 = call double @llvm.fmuladd.f64(double %0, double %0, double %neg)
  %cmp = fcmp ogt double %4, 0.000000e+00
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %do.body
  %call6 = call double @sqrt(double noundef %4) #7, !tbaa !9
  %add = fsub double %call6, %0
  %mul = fmul double %1, 2.000000e+00
  %div = fdiv double %add, %mul
  %fneg7 = fneg double %0
  %sub = fsub double %fneg7, %call6
  %div10 = fdiv double %sub, %mul
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %div)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %call13 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div10)
  %call1.i20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 0)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep99 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %5 = load ptr, ptr %gep99, align 8, !tbaa !13
  %tobool.not.i.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 56
  %6 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !31
  %tobool.not.i1.i.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 67
  %7 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !37
  br label %if.end59.sink.split

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %5)
  %vtable.i.i.i = load ptr, ptr %5, align 8, !tbaa !11
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %8 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %8(ptr noundef nonnull align 8 dereferenceable(570) %5, i8 noundef signext 10)
  br label %if.end59.sink.split

if.else:                                          ; preds = %do.body
  %cmp16 = fcmp oeq double %4, 0.000000e+00
  br i1 %cmp16, label %if.then17, label %if.else24

if.then17:                                        ; preds = %if.else
  %mul18 = fmul double %1, 2.000000e+00
  %9 = fneg double %0
  %fneg20 = fdiv double %9, %mul18
  %call21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, double noundef %fneg20)
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 0)
  %vtable.i37 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i38 = getelementptr i8, ptr %vtable.i37, i64 -24
  %vbase.offset.i39 = load i64, ptr %vbase.offset.ptr.i38, align 8
  %gep98 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i39
  %10 = load ptr, ptr %gep98, align 8, !tbaa !13
  %tobool.not.i.i.i42 = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i42, label %if.then.i.i.i55, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43

if.then.i.i.i55:                                  ; preds = %if.then17
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43: ; preds = %if.then17
  %_M_widen_ok.i.i.i44 = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load i8, ptr %_M_widen_ok.i.i.i44, align 8, !tbaa !31
  %tobool.not.i1.i.i45 = icmp eq i8 %11, 0
  br i1 %tobool.not.i1.i.i45, label %if.end.i.i.i51, label %if.then.i2.i.i46

if.then.i2.i.i46:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43
  %arrayidx.i.i.i47 = getelementptr inbounds nuw i8, ptr %10, i64 67
  %12 = load i8, ptr %arrayidx.i.i.i47, align 1, !tbaa !37
  br label %if.end59.sink.split

if.end.i.i.i51:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i43
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
  %vtable.i.i.i52 = load ptr, ptr %10, align 8, !tbaa !11
  %vfn.i.i.i53 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i52, i64 48
  %13 = load ptr, ptr %vfn.i.i.i53, align 8
  %call.i.i.i54 = call noundef signext i8 %13(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
  br label %if.end59.sink.split

if.else24:                                        ; preds = %if.else
  %cmp25 = fcmp olt double %4, 0.000000e+00
  br i1 %cmp25, label %if.then26, label %if.end59

if.then26:                                        ; preds = %if.else24
  %fneg27 = fneg double %4
  %call28 = call double @sqrt(double noundef %fneg27) #7, !tbaa !9
  %mul29 = fmul double %1, 2.000000e+00
  %div30 = fdiv double %call28, %mul29
  %fneg32 = fneg double %call28
  %div34 = fdiv double %fneg32, %mul29
  %fneg35 = fneg double %0
  %div37 = fdiv double %fneg35, %mul29
  %cmp38 = fcmp oeq double %div37, 0.000000e+00
  br i1 %cmp38, label %if.then39, label %if.else49

if.then39:                                        ; preds = %if.then26
  %fneg40 = fneg double %div37
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %fneg40)
  %call42 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %div30)
  %call1.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %fneg40)
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %div34)
  %call1.i28 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 0)
  %vtable.i57 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i58 = getelementptr i8, ptr %vtable.i57, i64 -24
  %vbase.offset.i59 = load i64, ptr %vbase.offset.ptr.i58, align 8
  %gep97 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i59
  %14 = load ptr, ptr %gep97, align 8, !tbaa !13
  %tobool.not.i.i.i62 = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i62, label %if.then.i.i.i75, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63

if.then.i.i.i75:                                  ; preds = %if.then39
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63: ; preds = %if.then39
  %_M_widen_ok.i.i.i64 = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = load i8, ptr %_M_widen_ok.i.i.i64, align 8, !tbaa !31
  %tobool.not.i1.i.i65 = icmp eq i8 %15, 0
  br i1 %tobool.not.i1.i.i65, label %if.end.i.i.i71, label %if.then.i2.i.i66

if.then.i2.i.i66:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  %arrayidx.i.i.i67 = getelementptr inbounds nuw i8, ptr %14, i64 67
  %16 = load i8, ptr %arrayidx.i.i.i67, align 1, !tbaa !37
  br label %if.end59.sink.split

if.end.i.i.i71:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i63
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %14)
  %vtable.i.i.i72 = load ptr, ptr %14, align 8, !tbaa !11
  %vfn.i.i.i73 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i72, i64 48
  %17 = load ptr, ptr %vfn.i.i.i73, align 8
  %call.i.i.i74 = call noundef signext i8 %17(ptr noundef nonnull align 8 dereferenceable(570) %14, i8 noundef signext 10)
  br label %if.end59.sink.split

if.else49:                                        ; preds = %if.then26
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, double noundef %div37)
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %div30)
  %call1.i31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 1)
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %div37)
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %div34)
  %call1.i33 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.3, i64 noundef 0)
  %vtable.i77 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i78 = getelementptr i8, ptr %vtable.i77, i64 -24
  %vbase.offset.i79 = load i64, ptr %vbase.offset.ptr.i78, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i79
  %18 = load ptr, ptr %gep, align 8, !tbaa !13
  %tobool.not.i.i.i82 = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i82, label %if.then.i.i.i95, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83

if.then.i.i.i95:                                  ; preds = %if.else49
  call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83: ; preds = %if.else49
  %_M_widen_ok.i.i.i84 = getelementptr inbounds nuw i8, ptr %18, i64 56
  %19 = load i8, ptr %_M_widen_ok.i.i.i84, align 8, !tbaa !31
  %tobool.not.i1.i.i85 = icmp eq i8 %19, 0
  br i1 %tobool.not.i1.i.i85, label %if.end.i.i.i91, label %if.then.i2.i.i86

if.then.i2.i.i86:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83
  %arrayidx.i.i.i87 = getelementptr inbounds nuw i8, ptr %18, i64 67
  %20 = load i8, ptr %arrayidx.i.i.i87, align 1, !tbaa !37
  br label %if.end59.sink.split

if.end.i.i.i91:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i83
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %vtable.i.i.i92 = load ptr, ptr %18, align 8, !tbaa !11
  %vfn.i.i.i93 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i92, i64 48
  %21 = load ptr, ptr %vfn.i.i.i93, align 8
  %call.i.i.i94 = call noundef signext i8 %21(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %if.end59.sink.split

if.end59.sink.split:                              ; preds = %if.end.i.i.i91, %if.then.i2.i.i86, %if.end.i.i.i71, %if.then.i2.i.i66, %if.end.i.i.i51, %if.then.i2.i.i46, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i48.sink = phi i8 [ %7, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %12, %if.then.i2.i.i46 ], [ %call.i.i.i54, %if.end.i.i.i51 ], [ %16, %if.then.i2.i.i66 ], [ %call.i.i.i74, %if.end.i.i.i71 ], [ %20, %if.then.i2.i.i86 ], [ %call.i.i.i94, %if.end.i.i.i91 ]
  %call1.i49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i48.sink)
  %call.i.i50 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i49)
  br label %if.end59

if.end59:                                         ; preds = %if.end59.sink.split, %if.else24
  %22 = load i32, ptr %n, align 4, !tbaa !9
  %sub60 = add nsw i32 %22, -1
  store i32 %sub60, ptr %n, align 4, !tbaa !9
  %cmp61 = icmp sgt i32 %22, 1
  br i1 %cmp61, label %do.body, label %do.end, !llvm.loop !38

do.end:                                           ; preds = %if.end59
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"double", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !7, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !8, i64 0}
!13 = !{!14, !28, i64 240}
!14 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !15, i64 0, !25, i64 216, !7, i64 224, !26, i64 225, !27, i64 232, !28, i64 240, !29, i64 248, !30, i64 256}
!15 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !21, i64 48, !7, i64 64, !10, i64 192, !22, i64 200, !23, i64 208}
!16 = !{!"long", !7, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !16, i64 8}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!23 = !{!"_ZTSSt6locale", !24, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!25 = !{!"p1 _ZTSSo", !20, i64 0}
!26 = !{!"bool", !7, i64 0}
!27 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!28 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!29 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!30 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!31 = !{!32, !7, i64 56}
!32 = !{!"_ZTSSt5ctypeIcE", !33, i64 0, !34, i64 16, !26, i64 24, !35, i64 32, !35, i64 40, !36, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!33 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!34 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!35 = !{!"p1 int", !20, i64 0}
!36 = !{!"p1 short", !20, i64 0}
!37 = !{!7, !7, i64 0}
!38 = distinct !{!38, !39, !40}
!39 = !{!"llvm.loop.mustprogress"}
!40 = !{!"llvm.loop.unroll.disable"}
