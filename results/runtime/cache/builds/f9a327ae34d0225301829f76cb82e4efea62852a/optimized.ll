; ModuleID = '<stdin>'
source_filename = "/tmp/tmpx3vckvke.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], ptr, i8, [7 x i8], ptr, ptr, ptr, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ ptr, i32 }>

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %a = alloca [100 x [100 x i8]], align 16
  %b = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #9
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #9
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 dereferenceable(10000) %a) #9
  call void @llvm.lifetime.start.p0(i64 noundef 10000, ptr noundef nonnull align 16 captures(none) dereferenceable(10000) %b) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(10000) %b, i64 noundef 10000)
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %call2 = call i64 @strlen(ptr noundef %b) #10
  %cmp = icmp ult i64 %conv, %call2
  %1 = load i32, ptr %j, align 4, !tbaa !5
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds [10000 x i8], ptr %b, i64 0, i64 %conv
  %2 = load i8, ptr %arrayidx, align 1, !tbaa !9
  %conv3 = sext i8 %2 to i32
  %cmp4 = icmp eq i32 %conv3, 32
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.inc

if.end:                                           ; preds = %for.body
  %idxprom7 = sext i32 %1 to i64
  %arrayidx8 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom7
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %3 to i64
  %arrayidx10 = getelementptr inbounds [100 x i8], ptr %arrayidx8, i64 0, i64 %idxprom9
  store i8 %2, ptr %arrayidx10, align 1, !tbaa !9
  %inc11 = add nsw i32 %3, 1
  store i32 %inc11, ptr %k, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %inc12 = add nsw i32 %0, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %idxprom13 = sext i32 %1 to i64
  %arrayidx14 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom13
  %call16 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull %arrayidx14)
  %sub = sub nsw i32 %1, 1
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.end
  %sub.sink = phi i32 [ %sub, %for.end ], [ %dec, %for.inc25 ]
  %cmp18 = icmp sge i32 %sub.sink, 0
  br i1 %cmp18, label %for.inc25, label %for.end26

for.inc25:                                        ; preds = %for.cond17
  %call20 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext 32)
  %idxprom21 = sext i32 %sub.sink to i64
  %arrayidx22 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom21
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call20, ptr noundef nonnull %arrayidx22)
  %dec = add nsw i32 %sub.sink, -1
  br label %for.cond17, !llvm.loop !13

for.end26:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef captures(none) %b) #11
  call void @llvm.lifetime.end.p0(i64 noundef 10000, ptr noundef %a) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #2 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #4 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #12
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #2 comdat align 2 {
entry:
  %retval = alloca i8, align 1
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !14
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !9
  store i8 %1, ptr %retval, align 1
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !22
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !24
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  store i8 %call, ptr %retval, align 1
  br label %return

return:                                           ; preds = %if.end, %if.then
  %3 = load i8, ptr %retval, align 1
  ret i8 %3
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #2 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) local_unnamed_addr #7 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #11
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) local_unnamed_addr #8 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264)) local_unnamed_addr #7 align 2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !25
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind }
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
!9 = !{!7, !7, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = !{!15, !7, i64 56}
!15 = !{!"_ZTSSt5ctypeIcE", !16, i64 0, !17, i64 16, !19, i64 24, !20, i64 32, !20, i64 40, !21, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!16 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!17 = !{!"p1 _ZTS15__locale_struct", !18, i64 0}
!18 = !{!"any pointer", !7, i64 0}
!19 = !{!"bool", !7, i64 0}
!20 = !{!"p1 int", !18, i64 0}
!21 = !{!"p1 short", !18, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"vtable pointer", !8, i64 0}
!24 = !{}
!25 = !{!26, !27, i64 16}
!26 = !{!"_ZTSSt8ios_base", !27, i64 8, !27, i64 16, !28, i64 24, !29, i64 28, !29, i64 32, !30, i64 40, !31, i64 48, !7, i64 64, !6, i64 192, !32, i64 200, !33, i64 208}
!27 = !{!"long", !7, i64 0}
!28 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!29 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!30 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !18, i64 0}
!31 = !{!"_ZTSNSt8ios_base6_WordsE", !18, i64 0, !27, i64 8}
!32 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !18, i64 0}
!33 = !{!"_ZTSSt6locale", !34, i64 0}
!34 = !{!"p1 _ZTSNSt6locale5_ImplE", !18, i64 0}
