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
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef nonnull align 16 captures(none) dereferenceable(5000) %str1) #9
  call void @llvm.lifetime.start.p0(i64 noundef 5000, ptr noundef nonnull align 16 %str2) #9
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 16 dereferenceable(5000) %str1, i64 noundef 5000)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str1) #10
  %conv = trunc i64 %call2 to i32
  %sub = add nsw i32 %conv, -1
  %0 = sext i32 %sub to i64
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.inc32 ], [ 0, %entry ]
  %indvars.iv = phi i32 [ %indvars.iv.next, %for.inc32 ], [ %conv, %entry ]
  %len.0 = phi i32 [ %len.2, %for.inc32 ], [ 0, %entry ]
  %1 = sext i32 %indvars.iv to i64
  %exitcond.not = icmp eq i64 %indvars.iv31, %wide.trip.count
  br i1 %exitcond.not, label %for.cond35.preheader, label %for.body

for.cond35.preheader:                             ; preds = %for.cond
  %sub38 = sub i32 %conv, %len.0
  %2 = sext i32 %sub38 to i64
  %smax40 = call i32 @llvm.smax.i32(i32 %len.0, i32 noundef 0)
  %wide.trip.count41 = zext nneg i32 %smax40 to i64
  br label %for.cond35

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [5000 x i8], ptr %str1, i64 0, i64 %indvars.iv31
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %cmp4.not = icmp eq i8 %3, 0
  br i1 %cmp4.not, label %for.inc32, label %if.end

if.end:                                           ; preds = %for.body
  %inc = add nsw i32 %len.0, 1
  %cmp8 = icmp eq i8 %3, 32
  br i1 %cmp8, label %if.then9, label %for.inc32

if.then9:                                         ; preds = %if.end
  %4 = sub nsw i64 %0, %indvars.iv31
  %arrayidx12 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %4
  store i8 32, ptr %arrayidx12, align 1, !tbaa !5
  %5 = trunc nuw nsw i64 %indvars.iv31 to i32
  %sub14 = sub nsw i32 %5, %inc
  %add = add nsw i32 %sub14, 1
  %sub19 = sub nsw i32 %sub, %add
  %invariant.op = add i32 %add, %5
  %add24.reass = sub i32 %invariant.op, %conv
  %6 = sext i32 %sub19 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc, %if.then9
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc ], [ %1, %if.then9 ]
  %cmp20.not = icmp sgt i64 %indvars.iv28, %6
  br i1 %cmp20.not, label %for.inc32, label %for.inc

for.inc:                                          ; preds = %for.cond17
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, 1
  %7 = trunc nsw i64 %indvars.iv28 to i32
  %sub25 = add i32 %add24.reass, %7
  %idxprom26 = sext i32 %sub25 to i64
  %arrayidx27 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %idxprom26
  %8 = load i8, ptr %arrayidx27, align 1, !tbaa !5, !invariant.load !8
  %arrayidx29 = getelementptr inbounds [5000 x i8], ptr %str2, i64 0, i64 %indvars.iv28
  store i8 %8, ptr %arrayidx29, align 1, !tbaa !5
  br label %for.cond17, !llvm.loop !9

for.inc32:                                        ; preds = %for.cond17, %for.body, %if.end
  %len.2 = phi i32 [ %inc, %if.end ], [ %len.0, %for.body ], [ 0, %for.cond17 ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %indvars.iv.next = add i32 %indvars.iv, -1
  br label %for.cond, !llvm.loop !12

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc44
  %indvars.iv35 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next36, %for.inc44 ]
  %exitcond42.not = icmp eq i64 %indvars.iv35, %wide.trip.count41
  br i1 %exitcond42.not, label %for.cond47, label %for.inc44

for.inc44:                                        ; preds = %for.cond35
  %9 = add nsw i64 %indvars.iv35, %2
  %arrayidx41 = getelementptr inbounds [5000 x i8], ptr %str1, i64 0, i64 %9
  %10 = load i8, ptr %arrayidx41, align 1, !tbaa !5, !invariant.load !8
  %arrayidx43 = getelementptr inbounds nuw [5000 x i8], ptr %str2, i64 0, i64 %indvars.iv35
  store i8 %10, ptr %arrayidx43, align 1, !tbaa !5
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond35, !llvm.loop !13

for.cond47:                                       ; preds = %for.cond35, %for.inc53
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc53 ], [ 0, %for.cond35 ]
  %exitcond47.not = icmp eq i64 %indvars.iv43, %wide.trip.count
  br i1 %exitcond47.not, label %for.end55, label %for.inc53

for.inc53:                                        ; preds = %for.cond47
  %arrayidx51 = getelementptr inbounds nuw [5000 x i8], ptr %str2, i64 0, i64 %indvars.iv43
  %11 = load i8, ptr %arrayidx51, align 1, !tbaa !5, !invariant.load !8
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(272) @_ZSt4cout, i8 noundef signext %11)
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond47, !llvm.loop !14

for.end55:                                        ; preds = %for.cond47
  call void @llvm.lifetime.end.p0(i64 noundef 5000, ptr noundef nonnull %str2) #11
  call void @llvm.lifetime.end.p0(i64 noundef 5000, ptr noundef nonnull %str1) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2 align 2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

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
  %tobool.not = icmp eq ptr %__f, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #12
  unreachable

if.end:                                           ; preds = %entry
  ret ptr %__f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #2 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !15, !invariant.load !8
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !24, !invariant.load !8
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !8
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
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
  %_M_width = getelementptr inbounds nuw i8, ptr %this, i64 16
  %0 = load i64, ptr %_M_width, align 8, !tbaa !26, !invariant.load !8
  ret i64 %0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #8

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !6, i64 56}
!16 = !{!"_ZTSSt5ctypeIcE", !17, i64 0, !19, i64 16, !21, i64 24, !22, i64 32, !22, i64 40, !23, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!17 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!18 = !{!"int", !6, i64 0}
!19 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"bool", !6, i64 0}
!22 = !{!"p1 int", !20, i64 0}
!23 = !{!"p1 short", !20, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"vtable pointer", !7, i64 0}
!26 = !{!27, !28, i64 16}
!27 = !{!"_ZTSSt8ios_base", !28, i64 8, !28, i64 16, !29, i64 24, !30, i64 28, !30, i64 32, !31, i64 40, !32, i64 48, !6, i64 64, !18, i64 192, !33, i64 200, !34, i64 208}
!28 = !{!"long", !6, i64 0}
!29 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!30 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!31 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!32 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !28, i64 8}
!33 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!34 = !{!"_ZTSSt6locale", !35, i64 0}
!35 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
