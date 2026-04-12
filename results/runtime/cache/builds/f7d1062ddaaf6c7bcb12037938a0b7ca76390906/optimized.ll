; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnm6ajy2m.cpp"
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
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %cmp.not = icmp eq i64 %indvars.iv, %4
  br i1 %cmp.not, label %while.cond, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

while.cond:                                       ; preds = %for.cond, %for.end24
  %5 = phi i32 [ %9, %for.end24 ], [ %3, %for.cond ]
  %i.1 = phi i32 [ %spec.select, %for.end24 ], [ 1, %for.cond ]
  %cmp2 = icmp slt i32 %i.1, %5
  br i1 %cmp2, label %for.cond3.preheader, label %for.cond29

for.cond3.preheader:                              ; preds = %while.cond
  %idxprom6 = zext nneg i32 %i.1 to i64
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom6
  %6 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.cond3.preheader
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body5 ], [ 0, %for.cond3.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv20, %idxprom6
  br i1 %exitcond.not, label %for.end24, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv20
  %7 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %6, %7
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br i1 %cmp10, label %for.cond11.preheader, label %for.cond3, !llvm.loop !12

for.cond11.preheader:                             ; preds = %for.body5
  %sub = add nsw i32 %5, -1
  %wide.trip.count26 = zext i32 %sub to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.preheader, %for.inc19
  %indvars.iv23 = phi i64 [ %idxprom6, %for.cond11.preheader ], [ %indvars.iv.next24, %for.inc19 ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count26
  br i1 %exitcond27.not, label %for.end21, label %for.inc19

for.inc19:                                        ; preds = %for.cond11
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv.next24
  %8 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv23
  store i32 %8, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.end21:                                        ; preds = %for.cond11
  store i32 %sub, ptr %n, align 4, !tbaa !5
  br label %for.end24

for.end24:                                        ; preds = %for.cond3, %for.end21
  %9 = phi i32 [ %sub, %for.end21 ], [ %5, %for.cond3 ]
  %cmp25 = icmp eq i32 %9, %5
  %inc27 = zext i1 %cmp25 to i32
  %spec.select = add nuw nsw i32 %i.1, %inc27
  br label %while.cond, !llvm.loop !14

for.cond29:                                       ; preds = %while.cond, %for.inc37
  %10 = phi i32 [ %.pre, %for.inc37 ], [ %5, %while.cond ]
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.inc37 ], [ 0, %while.cond ]
  %sub30 = add nsw i32 %10, -1
  %11 = sext i32 %sub30 to i64
  %cmp31 = icmp slt i64 %indvars.iv28, %11
  br i1 %cmp31, label %for.inc37, label %for.end39

for.inc37:                                        ; preds = %for.cond29
  %arrayidx34 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv28
  %12 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %12)
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call35, ptr noundef nonnull @.str, i64 noundef 1)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !15

for.end39:                                        ; preds = %for.cond29
  %arrayidx42 = getelementptr inbounds i32, ptr %vla, i64 %11
  %13 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %call43 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %vtable.i = load ptr, ptr %call43, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8, !invariant.load !18
  %add.ptr.i = getelementptr inbounds i8, ptr %call43, i64 %vbase.offset.i
  %call.i1 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i2 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call43, i8 noundef signext %call.i1)
  %call.i.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i2)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #4 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !19
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #4 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !37
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !43
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !16
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !18
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{}
!19 = !{!20, !34, i64 240}
!20 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !21, i64 0, !31, i64 216, !7, i64 224, !32, i64 225, !33, i64 232, !34, i64 240, !35, i64 248, !36, i64 256}
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
!31 = !{!"p1 _ZTSSo", !26, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!34 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!35 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!36 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!37 = !{!38, !7, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !32, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!41 = !{!"p1 int", !26, i64 0}
!42 = !{!"p1 short", !26, i64 0}
!43 = !{!7, !7, i64 0}
