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
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [100 x [2 x double]], align 16
  %b = alloca [100 x double], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #8
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
  %cmp2 = icmp sle i32 %.sink, 1
  %idxprom7 = sext i32 %0 to i64
  br i1 %cmp2, label %for.inc, label %for.inc15

for.inc:                                          ; preds = %for.cond1
  %arrayidx = getelementptr inbounds [100 x [2 x double]], ptr %a, i64 0, i64 %idxprom7
  %idxprom4 = sext i32 %.sink to i64
  %arrayidx5 = getelementptr inbounds [2 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx5)
  %inc = add nsw i32 %.sink, 1
  br label %for.cond1, !llvm.loop !9

for.inc15:                                        ; preds = %for.cond1
  %arrayidx8 = getelementptr inbounds [100 x [2 x double]], ptr %a, i64 0, i64 %idxprom7
  %arrayidx9 = getelementptr inbounds [2 x double], ptr %arrayidx8, i64 0, i64 1
  %2 = load double, ptr %arrayidx9, align 8, !tbaa !12
  %3 = load double, ptr %arrayidx8, align 16, !tbaa !12
  %div = fdiv double %2, %3
  %arrayidx14 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom7
  store double %div, ptr %arrayidx14, align 8, !tbaa !12
  %inc16 = add nsw i32 %0, 1
  store i32 %inc16, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end17:                                        ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc41, %for.end17
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub19 = sub nsw i32 %5, 1
  %cmp20 = icmp sle i32 %4, %sub19
  br i1 %cmp20, label %for.body21, label %for.end43

for.body21:                                       ; preds = %for.cond18
  %idxprom22 = sext i32 %4 to i64
  %arrayidx23 = getelementptr inbounds [100 x double], ptr %b, i64 0, i64 %idxprom22
  %6 = load double, ptr %arrayidx23, align 8, !tbaa !12
  %7 = load double, ptr %b, align 16, !tbaa !12
  %sub25 = fsub double %6, %7
  %cmp26 = fcmp ogt double %sub25, 5.000000e-02
  br i1 %cmp26, label %for.inc41, label %if.else

if.else:                                          ; preds = %for.body21
  %sub32 = fsub double %7, %6
  %cmp33 = fcmp ogt double %sub32, 5.000000e-02
  br i1 %cmp33, label %for.inc41, label %if.else37

if.else37:                                        ; preds = %if.else
  br label %for.inc41

for.inc41:                                        ; preds = %for.body21, %if.else, %if.else37
  %.str.2.sink.sink = phi ptr [ @.str, %for.body21 ], [ @.str.2, %if.else37 ], [ @.str.1, %if.else ]
  %call38 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull dereferenceable(5) %.str.2.sink.sink)
  %call39 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8) %call38, i8 noundef signext 10)
  %inc42 = add nsw i32 %4, 1
  store i32 %inc42, ptr %i, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !15

for.end43:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef %b) #9
  call void @llvm.lifetime.end.p0(i64 noundef 1600, ptr noundef %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #9
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERd(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) local_unnamed_addr #5 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #9
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #6 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #5 align 2

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #5 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !16
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

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
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !6, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
