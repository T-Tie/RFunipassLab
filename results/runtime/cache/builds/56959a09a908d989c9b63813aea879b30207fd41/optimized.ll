; ModuleID = '<stdin>'
source_filename = "/tmp/tmptnqr7doq.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

$_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_ = comdat any

$_ZNSt8ios_base5widthEl = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

$_ZNSt11char_traitsIcE11eq_int_typeERKiS2_ = comdat any

$_ZNSt11char_traitsIcE3eofEv = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNSt11char_traitsIcE11to_int_typeERKc = comdat any

$_ZStanSt12_Ios_IostateS_ = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %sentence = alloca [1000 x [20 x i8]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 20000, ptr noundef nonnull align 16 dereferenceable(20000) %sentence) #10
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %phiofops = phi i32 [ -1, %entry ], [ %i.0, %while.body ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %while.body ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x [20 x i8]], ptr %sentence, i64 0, i64 %idxprom
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull %arrayidx)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %call1 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr)
  br i1 %call1, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %inc = add nsw i32 %i.0, 1
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %i.1 = phi i32 [ 0, %while.end ], [ %inc7, %for.inc ]
  %cmp = icmp slt i32 %i.1, %phiofops
  %idxprom8 = sext i32 %i.1 to i64
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx3 = getelementptr inbounds [1000 x [20 x i8]], ptr %sentence, i64 0, i64 %idxprom8
  %call5 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull %arrayidx3)
  %call6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call5, ptr noundef nonnull dereferenceable(2) @.str)
  %inc7 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  %arrayidx9 = getelementptr inbounds [1000 x [20 x i8]], ptr %sentence, i64 0, i64 %idxprom8
  %call11 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull %arrayidx9)
  call void @llvm.lifetime.end.p0(i64 noundef 20000, ptr noundef %sentence) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_PS3_(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef nonnull %__s) #2 comdat {
entry:
  %__c = alloca i32, align 4
  %ref.tmp = alloca i32, align 4
  %0 = call i64 @llvm.objectsize.i64.p0(ptr %__s, i1 false, i1 true, i1 false)
  %cmp = icmp ult i64 %0, 1
  br i1 %cmp, label %do.end, label %if.else

do.end:                                           ; preds = %entry
  %vtable = load ptr, ptr %__in, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8, !invariant.load !8
  %add.ptr = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset
  %call = call noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr, i64 noundef 0) #11
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i32 noundef 4)
  br label %if.end38

if.else:                                          ; preds = %entry
  %cmp5 = icmp ne i64 %0, -1
  br i1 %cmp5, label %if.then6, label %if.else34

if.then6:                                         ; preds = %if.else
  %vtable7 = load ptr, ptr %__in, align 8, !tbaa !5, !invariant.load !8
  %vbase.offset.ptr8 = getelementptr i8, ptr %vtable7, i64 -24
  %vbase.offset9 = load i64, ptr %vbase.offset.ptr8, align 8, !invariant.load !8
  %add.ptr10 = getelementptr inbounds i8, ptr %__in, i64 %vbase.offset9
  %call11 = call noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %add.ptr10) #11
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef %0)
  %call16 = call noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10) #11
  br i1 %call16, label %land.lhs.true, label %if.end38

land.lhs.true:                                    ; preds = %if.then6
  %cmp17 = icmp sle i64 %call11, 0
  br i1 %cmp17, label %if.then19, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp18 = icmp ult i64 %0, %call11
  br i1 %cmp18, label %if.then19, label %if.end38

if.then19:                                        ; preds = %lor.lhs.false, %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %__c) #11
  %call24 = call noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10) #11
  %call25 = call noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64) %call24)
  store i32 %call25, ptr %__c, align 4, !tbaa !13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull align 4 captures(none) dereferenceable(4) %ref.tmp) #11
  %call26 = call noundef i32 @_ZNSt11char_traitsIcE3eofEv() #11
  store i32 %call26, ptr %ref.tmp, align 4, !tbaa !13
  %call27 = call noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c, ptr noundef nonnull align 4 dereferenceable(4) %ref.tmp) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr %ref.tmp) #11
  %conv = zext i1 %call27 to i64
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1)
  %tobool = icmp ne i64 %expval, 0
  br i1 %tobool, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then19
  call void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr10, i32 noundef 2)
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then19
  call void @llvm.lifetime.end.p0(i64 4, ptr %__c) #11
  br label %if.end38

if.else34:                                        ; preds = %if.else
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %__in, ptr noundef %__s, i64 noundef 9223372036854775807)
  br label %if.end38

if.end38:                                         ; preds = %if.else34, %if.end, %lor.lhs.false, %if.then6, %do.end
  ret ptr %__in
}

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEEcvbEv(ptr noundef nonnull align 8 dereferenceable(264)) #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.objectsize.i64.p0(ptr, i1 immarg, i1 immarg, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt8ios_base5widthEl(ptr noundef nonnull align 8 dereferenceable(216) %this, i64 noundef %__wide) #5 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !16, !invariant.load !8
  store i64 %__wide, ptr %_M_width, align 8, !tbaa !16
  ret i64 %0
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #3 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) #5 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !16, !invariant.load !8
  ret i64 %0
}

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) #6

; Function Attrs: mustprogress nounwind uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4goodEv(ptr noundef nonnull align 8 dereferenceable(264)) #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt9basic_iosIcSt11char_traitsIcEE5rdbufEv(ptr noundef nonnull align 8 dereferenceable(264)) #5 align 2

; Function Attrs: mustprogress uwtable
declare noundef i32 @_ZNSt15basic_streambufIcSt11char_traitsIcEE5sgetcEv(ptr noundef nonnull align 8 dereferenceable(64)) #3 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNSt11char_traitsIcE11eq_int_typeERKiS2_(ptr noundef nonnull align 4 dereferenceable(4) %__c1, ptr noundef nonnull align 4 dereferenceable(4) %__c2) #5 comdat align 2 {
entry:
  %0 = load i32, ptr %__c1, align 4, !tbaa !13, !invariant.load !8
  %1 = load i32, ptr %__c2, align 4, !tbaa !13, !invariant.load !8
  %cmp = icmp eq i32 %0, %1
  ret i1 %cmp
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE3eofEv() #5 comdat align 2 {
entry:
  ret i32 -1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #8 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264)) #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE4gptrEv(ptr noundef nonnull align 8 dereferenceable(64)) #5 align 2

; Function Attrs: mustprogress nounwind uwtable
declare noundef ptr @_ZNKSt15basic_streambufIcSt11char_traitsIcEE5egptrEv(ptr noundef nonnull align 8 dereferenceable(64)) #5 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNSt11char_traitsIcE11to_int_typeERKc(ptr noundef nonnull align 1 dereferenceable(1) %__c) #5 comdat align 2 {
entry:
  %0 = load i8, ptr %__c, align 1, !tbaa !27, !invariant.load !8
  %conv = zext i8 %0 to i32
  ret i32 %conv
}

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv(ptr noundef nonnull align 8 dereferenceable(264)) #3 align 2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStanSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #8 comdat {
entry:
  %and = and i32 %__a, %__b
  ret i32 %and
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #5 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #11
  ret i64 %call
}

; Function Attrs: nounwind
declare i64 @strlen(ptr noundef) #9

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !15, i64 0}
!15 = !{!"omnipotent char", !7, i64 0}
!16 = !{!17, !18, i64 16}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !15, i64 64, !14, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !15, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !15, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !15, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !15, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = !{!15, !15, i64 0}
