; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjrmf8o38.cpp"
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

@__const.main.an = private unnamed_addr constant <{ [11 x i32], [89 x i32] }> <{ [11 x i32] [i32 4, i32 2, i32 8, i32 1, i32 4, i32 7, i32 3, i32 7, i32 0, i32 1, i32 -1], [89 x i32] zeroinitializer }>, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %an = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #8
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %an) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef writeonly align 16 %an, ptr noundef readonly align 16 @__const.main.an, i64 noundef 400, i1 noundef false) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, 30
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %conv = sitofp i32 %0 to double
  %call1 = call double @pow(double noundef 2.000000e+00, double noundef %conv) #10, !tbaa !5
  %conv2 = fptosi double %call1 to i32
  %call3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %conv2)
  %call4 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call3, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end49

if.else:                                          ; preds = %entry
  %sub = sub nsw i32 %0, 30
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %if.else
  %i.0 = phi i32 [ 0, %if.else ], [ %inc27, %for.inc26 ]
  %cmp5 = icmp slt i32 %i.0, %sub
  br i1 %cmp5, label %for.body, label %for.end28

for.body:                                         ; preds = %for.cond
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %dig.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %carry.0 = phi i32 [ 0, %for.body ], [ %div, %for.inc ]
  %idxprom = sext i32 %dig.0 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %add = add nsw i32 %1, 1
  %tobool = icmp ne i32 %add, 0
  br i1 %tobool, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond6
  %mul = mul nsw i32 %1, 2
  %add10 = add nsw i32 %mul, %carry.0
  store i32 %add10, ptr %arrayidx, align 4, !tbaa !5
  %div = sdiv i32 %add10, 10
  %rem = srem i32 %add10, 10
  store i32 %rem, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %dig.0, 1
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  %tobool19 = icmp ne i32 %carry.0, 0
  br i1 %tobool19, label %if.then20, label %for.inc26

if.then20:                                        ; preds = %for.end
  store i32 %carry.0, ptr %arrayidx, align 4, !tbaa !5
  %add23 = add nsw i32 %dig.0, 1
  %idxprom24 = sext i32 %add23 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom24
  store i32 -1, ptr %arrayidx25, align 4, !tbaa !5
  br label %for.inc26

for.inc26:                                        ; preds = %for.end, %if.then20
  %inc27 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end28:                                        ; preds = %for.cond
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc34, %for.end28
  %st.0 = phi i32 [ 100, %for.end28 ], [ %dec, %for.inc34 ]
  %idxprom30 = sext i32 %st.0 to i64
  %arrayidx31 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom30
  %2 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %cmp32 = icmp ne i32 %2, -1
  br i1 %cmp32, label %for.inc34, label %for.end35

for.inc34:                                        ; preds = %for.cond29
  %dec = add nsw i32 %st.0, -1
  br label %for.cond29, !llvm.loop !13

for.end35:                                        ; preds = %for.cond29
  %sub37 = sub nsw i32 %st.0, 1
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc45, %for.end35
  %i36.0 = phi i32 [ %sub37, %for.end35 ], [ %dec46, %for.inc45 ]
  %cmp39 = icmp sge i32 %i36.0, 0
  br i1 %cmp39, label %for.inc45, label %for.end47

for.inc45:                                        ; preds = %for.cond38
  %idxprom42 = sext i32 %i36.0 to i64
  %arrayidx43 = getelementptr inbounds [100 x i32], ptr %an, i64 0, i64 %idxprom42
  %3 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !14
  %call44 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i32 noundef %3)
  %dec46 = add nsw i32 %i36.0, -1
  br label %for.cond38, !llvm.loop !15

for.end47:                                        ; preds = %for.cond38
  %call48 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %if.end49

if.end49:                                         ; preds = %for.end47, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %an) #11
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #11
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt5flushIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #5 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(570) ptr @_ZSt13__check_facetISt5ctypeIcEERKT_PS3_(ptr noundef %__f) local_unnamed_addr #6 comdat {
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
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #5 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 8
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !16
  %tobool = icmp ne i8 %0, 0
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw %"class.std::ctype", ptr %this, i32 0, i32 9
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !24
  br label %return

if.end:                                           ; preds = %entry
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !25
  %vfn = getelementptr inbounds ptr, ptr %vtable, i64 6
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !14
  %call = call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #7

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree }
attributes #10 = { nounwind memory(write) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !7, i64 56}
!17 = !{!"_ZTSSt5ctypeIcE", !18, i64 0, !19, i64 16, !21, i64 24, !22, i64 32, !22, i64 40, !23, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!18 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!19 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!"bool", !7, i64 0}
!22 = !{!"p1 int", !20, i64 0}
!23 = !{!"p1 short", !20, i64 0}
!24 = !{!7, !7, i64 0}
!25 = !{!26, !26, i64 0}
!26 = !{!"vtable pointer", !8, i64 0}
