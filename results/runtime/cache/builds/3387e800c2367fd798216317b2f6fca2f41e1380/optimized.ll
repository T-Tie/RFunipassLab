; ModuleID = '<stdin>'
source_filename = "/tmp/tmpusrbpp50.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [100 x [2 x double]], align 16
  %b = alloca [100 x double], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #8
  call void @llvm.lifetime.start.p0(i64 noundef 1600, ptr noundef nonnull align 16 dereferenceable(1600) %a) #8
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef align 16 %b) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc15, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end17

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %.sink = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %2 = phi i32 [ %inc, %for.inc ], [ 0, %for.body ]
  store i32 %.sink, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, 1
  br i1 %cmp2, label %for.inc, label %for.inc15

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [2 x double]], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [2 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx5)
  %inc = add nsw i32 %3, 1
  br label %for.cond1, !llvm.loop !9

for.inc15:                                        ; preds = %for.cond1
  %idxprom7 = sext i32 %0 to i64
  %arrayidx8 = getelementptr inbounds [100 x [2 x double]], ptr %a, i64 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x double], ptr %arrayidx8, i64 0, i64 1
  %4 = load double, ptr %arrayidx9, align 8, !tbaa !12
  %5 = load double, ptr %arrayidx8, align 16, !tbaa !12
  %div = fdiv double %4, %5
  %arrayidx14 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom7
  store double %div, ptr %arrayidx14, align 8, !tbaa !12
  %inc16 = add nsw i32 %0, 1
  store i32 %inc16, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end17:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc41, %for.end17
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %sub19 = sub nsw i32 %7, 1
  %cmp20 = icmp sle i32 %6, %sub19
  br i1 %cmp20, label %for.body21, label %for.end43

for.body21:                                       ; preds = %for.cond18
  %idxprom22 = sext i32 %6 to i64
  %arrayidx23 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom22
  %8 = load double, ptr %arrayidx23, align 8, !tbaa !12
  %9 = load double, ptr %b, align 16, !tbaa !12
  %sub25 = fsub double %8, %9
  %cmp26 = fcmp ogt double %sub25, 5.000000e-02
  br i1 %cmp26, label %for.inc41, label %if.else

if.else:                                          ; preds = %for.body21
  %sub32 = fsub double %9, %8
  %cmp33 = fcmp ogt double %sub32, 5.000000e-02
  br i1 %cmp33, label %for.inc41, label %if.else37

if.else37:                                        ; preds = %if.else
  br label %for.inc41

for.inc41:                                        ; preds = %if.else, %for.body21, %if.else37
  %.str.2.sink = phi ptr [ @.str.2, %if.else37 ], [ @.str, %for.body21 ], [ @.str.1, %if.else ]
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(5) %.str.2.sink)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call38, i8 noundef signext 10)
  %inc42 = add nsw i32 %6, 1
  store i32 %inc42, ptr %i, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !15

for.end43:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 1600, ptr noundef %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__f) #3 align 2 {
entry:
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef nonnull align 8 dereferenceable(8) %__f)
  ret ptr %call
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %__c) #4 {
entry:
  %retval = alloca ptr, align 8
  %__c.addr = alloca i8, align 1
  store i8 %__c, ptr %__c.addr, align 1, !tbaa !16
  %vtable = load ptr, ptr %__out, align 8, !tbaa !17
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !19
  %add.ptr = getelementptr inbounds i8, ptr %__out, i64 %vbase.offset
  %call = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr) #9
  %cmp = icmp ne i64 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__c.addr, i64 noundef 1)
  store ptr %call1, ptr %retval, align 8
  br label %return

if.end:                                           ; preds = %entry
  %0 = load i8, ptr %__c.addr, align 1, !tbaa !16
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %__out, i8 noundef signext %0)
  store ptr %__out, ptr %retval, align 8
  br label %return

return:                                           ; preds = %if.end, %if.then
  %1 = load ptr, ptr %retval, align 8
  ret ptr %1
}

; Function Attrs: inlinehint mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s) #4 {
entry:
  %tobool = icmp ne ptr %__s, null
  br i1 %tobool, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %vtable = load ptr, ptr %__out, align 8, !tbaa !17
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !19
  %add.ptr = getelementptr inbounds i8, ptr %__out, i64 %vbase.offset
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  %call = call noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef nonnull %__s) #9
  %call1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %__out, ptr noundef %__s, i64 noundef %call)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret ptr %__out
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) #2

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #3 align 2 {
entry:
  %call = call noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #9
  %call2 = call noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %call, i32 noundef %__state) #9
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %call2)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #6 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
define available_externally noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264) %this) #5 align 2 {
entry:
  %_M_streambuf_state = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 5
  %0 = load i32, ptr %_M_streambuf_state, align 8, !tbaa !20
  ret i32 %0
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #5 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !31
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!7, !7, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = !{}
!20 = !{!21, !24, i64 32}
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
!31 = !{!21, !22, i64 16}
