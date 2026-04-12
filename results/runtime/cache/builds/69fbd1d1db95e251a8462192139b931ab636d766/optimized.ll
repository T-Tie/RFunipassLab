; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2j45x9mu.cpp"
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

$_ZNKSt8ios_base5widthEv = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str1 = alloca [5000 x i8], align 16
  %str2 = alloca [5000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef nonnull align 16 captures(none) dereferenceable(5000) %str1) #8
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef align 16 %str2) #8
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(5000) %str1, i64 noundef 5000)
  %call2 = call i64 @strlen(ptr noundef %str1) #9
  %conv = trunc i64 %call2 to i32
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc33, %for.inc32 ]
  %len.0 = phi i32 [ 0, %entry ], [ %len.2, %for.inc32 ]
  %cmp = icmp slt i32 %i.0, %conv
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %conv3 = sext i8 %0 to i32
  %cmp4 = icmp ne i32 %conv3, 0
  br i1 %cmp4, label %if.end, label %for.inc32

if.end:                                           ; preds = %for.body
  %inc = add nsw i32 %len.0, 1
  %cmp8 = icmp eq i32 %conv3, 32
  br i1 %cmp8, label %if.then9, label %for.inc32

if.then9:                                         ; preds = %if.end
  %sub = sub nsw i32 %conv, 1
  %sub10 = sub nsw i32 %sub, %i.0
  %idxprom11 = sext i32 %sub10 to i64
  %arrayidx12 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom11
  store i8 32, ptr %arrayidx12, align 1, !tbaa !5
  %sub13 = sub nsw i32 %i.0, 1
  %sub14 = sub nsw i32 %i.0, %inc
  %add = add nsw i32 %sub14, 1
  %sub16 = sub nsw i32 %sub, %sub13
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then9
  %j.0 = phi i32 [ %sub16, %if.then9 ], [ %add22, %for.inc ]
  %sub19 = sub nsw i32 %sub, %add
  %cmp20 = icmp sle i32 %j.0, %sub19
  br i1 %cmp20, label %for.inc, label %for.inc32

for.inc:                                          ; preds = %for.cond17
  %add22 = add nsw i32 %j.0, 1
  %add23 = add nsw i32 %add22, %sub13
  %add24 = add nsw i32 %add23, %add
  %sub25 = sub nsw i32 %add24, %conv
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom26
  %1 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  %idxprom28 = sext i32 %j.0 to i64
  %arrayidx29 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom28
  store i8 %1, ptr %arrayidx29, align 1, !tbaa !5
  br label %for.cond17, !llvm.loop !8

for.inc32:                                        ; preds = %for.body, %if.end, %for.cond17
  %len.2 = phi i32 [ %inc, %if.end ], [ 0, %for.cond17 ], [ %len.0, %for.body ]
  %inc33 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !11

for.end34:                                        ; preds = %for.cond
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc44, %for.end34
  %i.1 = phi i32 [ 0, %for.end34 ], [ %inc45, %for.inc44 ]
  %cmp36 = icmp slt i32 %i.1, %len.0
  br i1 %cmp36, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.cond35
  %sub38 = sub nsw i32 %conv, %len.0
  %add39 = add nsw i32 %sub38, %i.1
  %idxprom40 = sext i32 %add39 to i64
  %arrayidx41 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom40
  %2 = load i8, ptr %arrayidx41, align 1, !tbaa !5
  %idxprom42 = sext i32 %i.1 to i64
  %arrayidx43 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom42
  store i8 %2, ptr %arrayidx43, align 1, !tbaa !5
  %inc45 = add nsw i32 %i.1, 1
  br label %for.cond35, !llvm.loop !12

for.end46:                                        ; preds = %for.cond35
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc53, %for.end46
  %i.2 = phi i32 [ 0, %for.end46 ], [ %inc54, %for.inc53 ]
  %cmp48 = icmp slt i32 %i.2, %conv
  br i1 %cmp48, label %for.inc53, label %for.end55

for.inc53:                                        ; preds = %for.cond47
  %idxprom50 = sext i32 %i.2 to i64
  %arrayidx51 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %idxprom50
  %3 = load i8, ptr %arrayidx51, align 1, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %3)
  %inc54 = add nsw i32 %i.2, 1
  br label %for.cond47, !llvm.loop !13

for.end55:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 noundef 5000, ptr noundef %str2) #10
  call void @llvm.lifetime.end.p0(i64 noundef 5000, ptr noundef captures(none) %str1) #10
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
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
  call void @_ZSt16__throw_bad_castv() #11
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #2 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !14
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !23
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !25
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #6

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNKSt8ios_base5widthEv(ptr noundef nonnull align 8 dereferenceable(216) %this) local_unnamed_addr #7 comdat align 2 {
entry:
  %_M_width = getelementptr inbounds nuw %"class.std::ios_base", ptr %this, i32 0, i32 2
  %0 = load i64, ptr %_M_width, align 8, !tbaa !26
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nounwind willreturn memory(read) }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = !{!15, !6, i64 56}
!15 = !{!"_ZTSSt5ctypeIcE", !16, i64 0, !18, i64 16, !20, i64 24, !21, i64 32, !21, i64 40, !22, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!16 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!17 = !{!"int", !6, i64 0}
!18 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"bool", !6, i64 0}
!21 = !{!"p1 int", !19, i64 0}
!22 = !{!"p1 short", !19, i64 0}
!23 = !{!24, !24, i64 0}
!24 = !{!"vtable pointer", !7, i64 0}
!25 = !{}
!26 = !{!27, !28, i64 16}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !32, i64 48, !6, i64 64, !17, i64 192, !33, i64 200, !34, i64 208}
!28 = !{!"long", !6, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !28, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
