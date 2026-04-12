; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7ipk7_v8.cpp"
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

$_ZNSt11char_traitsIcE6lengthEPKc = comdat any

$_ZStorSt12_Ios_IostateS_ = comdat any

$_ZSt13__check_facetISt5ctypeIcEERKT_PS3_ = comdat any

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %N = alloca i32, align 4
  %str = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %N) #11
  call void @llvm.lifetime.start.p0(i64 noundef 200, ptr noundef nonnull align 16 captures(none) dereferenceable(200) %str) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 captures(none) dereferenceable(200) %str, i8 noundef 0, i64 noundef 200, i1 noundef false) #12
  store i8 49, ptr %str, align 16
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %.pr = load i32, ptr %N, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i32 [ %dec, %while.body ], [ %.pr, %entry ]
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  call void @_Z8multiplyPci(ptr noundef nonnull align 16 dereferenceable(200) %str, i32 noundef 2) #13
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %dec = add nsw i32 %1, -1
  store i32 %dec, ptr %N, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

while.end:                                        ; preds = %while.cond
  %call2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull align 16 dereferenceable(200) %str)
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call2, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 200, ptr noundef captures(none) %str) #13
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %N) #13
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #3

; Function Attrs: mustprogress nosync nounwind uwtable
define dso_local void @_Z8multiplyPci(ptr noundef %str, i32 noundef %n) #4 {
entry:
  %num = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef align 16 %num) #11
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %num, i8 noundef 0, i64 noundef 800, i1 noundef false) #12
  %call = call i64 @strlen(ptr noundef readonly %str) #14
  %add.ptr = getelementptr inbounds nuw i8, ptr %str, i64 %call
  %add.ptr1 = getelementptr inbounds i8, ptr %add.ptr, i64 -1
  %add.ptr3 = getelementptr inbounds i32, ptr %num, i64 199
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %sPtr.0 = phi ptr [ %add.ptr1, %entry ], [ %incdec.ptr, %while.body ]
  %nPtr.0 = phi ptr [ %add.ptr3, %entry ], [ %incdec.ptr5, %while.body ]
  %add.ptr4 = getelementptr inbounds i8, ptr %str, i64 -1
  %cmp = icmp ne ptr %sPtr.0, %add.ptr4
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i8, ptr %sPtr.0, i32 -1
  %0 = load i8, ptr %sPtr.0, align 1, !tbaa !12, !invariant.load !13
  %conv = sext i8 %0 to i32
  %sub = sub nsw i32 %conv, 48
  %incdec.ptr5 = getelementptr inbounds i32, ptr %nPtr.0, i32 -1
  store i32 %sub, ptr %nPtr.0, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  br label %while.cond8

while.cond8:                                      ; preds = %while.body12, %while.end
  %jump.0 = phi i32 [ 0, %while.end ], [ %div, %while.body12 ]
  %nPtr.1 = phi ptr [ %add.ptr3, %while.end ], [ %incdec.ptr14, %while.body12 ]
  %add.ptr10 = getelementptr inbounds i32, ptr %num, i64 -1
  %cmp11 = icmp ne ptr %nPtr.1, %add.ptr10
  br i1 %cmp11, label %while.body12, label %while.end15

while.body12:                                     ; preds = %while.cond8
  %1 = load i32, ptr %nPtr.1, align 4, !tbaa !5
  %mul = mul nsw i32 %1, %n
  %rem = srem i32 %mul, 10
  %add = add nsw i32 %rem, %jump.0
  %div = sdiv i32 %mul, 10
  %incdec.ptr14 = getelementptr inbounds i32, ptr %nPtr.1, i32 -1
  store i32 %add, ptr %nPtr.1, align 4, !tbaa !5
  br label %while.cond8, !llvm.loop !15

while.end15:                                      ; preds = %while.cond8
  br label %while.cond17

while.cond17:                                     ; preds = %while.body19, %while.end15
  %nPtr.2 = phi ptr [ %num, %while.end15 ], [ %incdec.ptr20, %while.body19 ]
  %2 = load i32, ptr %nPtr.2, align 4, !tbaa !5, !invariant.load !13
  %cmp18 = icmp eq i32 %2, 0
  br i1 %cmp18, label %while.body19, label %while.end21

while.body19:                                     ; preds = %while.cond17
  %incdec.ptr20 = getelementptr inbounds nuw i32, ptr %nPtr.2, i32 1
  br label %while.cond17, !llvm.loop !16

while.end21:                                      ; preds = %while.cond17
  br label %while.cond22

while.cond22:                                     ; preds = %while.body26, %while.end21
  %sPtr.1 = phi ptr [ %str, %while.end21 ], [ %incdec.ptr30, %while.body26 ]
  %nPtr.3 = phi ptr [ %nPtr.2, %while.end21 ], [ %incdec.ptr27, %while.body26 ]
  %add.ptr24 = getelementptr inbounds i32, ptr %num, i64 200
  %cmp25 = icmp ne ptr %nPtr.3, %add.ptr24
  br i1 %cmp25, label %while.body26, label %while.end31

while.body26:                                     ; preds = %while.cond22
  %incdec.ptr27 = getelementptr inbounds nuw i32, ptr %nPtr.3, i32 1
  %3 = load i32, ptr %nPtr.3, align 4, !tbaa !5, !invariant.load !13
  %add28 = add nsw i32 %3, 48
  %conv29 = trunc i32 %add28 to i8
  %incdec.ptr30 = getelementptr inbounds nuw i8, ptr %sPtr.1, i32 1
  store i8 %conv29, ptr %sPtr.1, align 1, !tbaa !12
  br label %while.cond22, !llvm.loop !17

while.end31:                                      ; preds = %while.cond22
  store i8 0, ptr %sPtr.1, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef %num) #13
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #5

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) #6 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: mustprogress uwtable
declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i64 @_ZNSt11char_traitsIcE6lengthEPKc(ptr noundef %__s) #8 comdat align 2 {
entry:
  %call = call i64 @strlen(ptr noundef %__s) #13
  ret i64 %call
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZStorSt12_Ios_IostateS_(i32 noundef %__a, i32 noundef %__b) #9 comdat {
entry:
  %or = or i32 %__a, %__b
  ret i32 %or
}

; Function Attrs: mustprogress nounwind uwtable
declare noundef i32 @_ZNKSt9basic_iosIcSt11char_traitsIcEE7rdstateEv(ptr noundef nonnull align 8 dereferenceable(264)) #8 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) #6 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) #5 comdat {
entry:
  %tobool = icmp ne ptr %__f, null
  br i1 %tobool, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #15
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #6 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !18, !invariant.load !13
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !12, !invariant.load !13
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !26, !invariant.load !13
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !13
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #10

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind }
attributes #12 = { nofree }
attributes #13 = { nounwind }
attributes #14 = { nosync nounwind willreturn memory(read) }
attributes #15 = { noreturn }

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
!12 = !{!7, !7, i64 0}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !7, i64 56}
!19 = !{!"_ZTSSt5ctypeIcE", !20, i64 0, !21, i64 16, !23, i64 24, !24, i64 32, !24, i64 40, !25, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!20 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!21 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"bool", !7, i64 0}
!24 = !{!"p1 int", !22, i64 0}
!25 = !{!"p1 short", !22, i64 0}
!26 = !{!27, !27, i64 0}
!27 = !{!"vtable pointer", !8, i64 0}
