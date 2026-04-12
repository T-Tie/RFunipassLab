; ModuleID = '<stdin>'
source_filename = "/tmp/tmpm3vkrb4n.cpp"
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
@.str = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %total = alloca [10000 x double], align 16
  %valid = alloca [10000 x double], align 16
  %t1 = alloca double, align 8
  %v1 = alloca double, align 8
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 dereferenceable(80000) %total) #6
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 dereferenceable(80000) %valid) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %t1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 8, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %v1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(280) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %t1)
  %call.i1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull align 8 dereferenceable(8) %v1)
  %0 = load double, ptr %v1, align 8, !tbaa !5
  %1 = load double, ptr %t1, align 8, !tbaa !5
  %div = fdiv double %0, %1
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %2 = load i32, ptr %n, align 4, !tbaa !9
  %sub = add nsw i32 %2, -1
  %3 = sext i32 %sub to i64
  %cmp = icmp slt i64 %indvars.iv, %3
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x double], ptr %total, i64 0, i64 %indvars.iv
  %call.i2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx)
  %arrayidx5 = getelementptr inbounds nuw [10000 x double], ptr %valid, i64 0, i64 %indvars.iv
  %call.i3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call.i2, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx5)
  %4 = load double, ptr %arrayidx5, align 8, !tbaa !5, !invariant.load !11
  %5 = load double, ptr %arrayidx, align 8, !tbaa !5, !invariant.load !11
  %div11 = fdiv double %4, %5
  %sub16 = fsub double %div, %div11
  %cmp17 = fcmp ogt double %sub16, 5.000000e-02
  br i1 %cmp17, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 5)
  call void @outlined_ir_func_0(ptr %vbase.offset.ptr.i)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  %sub22 = fsub double %div11, %div
  %cmp23 = fcmp ogt double %sub22, 5.000000e-02
  br i1 %cmp23, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end
  %call1.i6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 6)
  call void @outlined_ir_func_0(ptr %vbase.offset.ptr.i)
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end
  %cmp31 = fcmp ole double %sub16, 5.000000e-02
  %cmp35 = fcmp oge double %sub16, 0.000000e+00
  %or.cond = and i1 %cmp31, %cmp35
  br i1 %or.cond, label %if.then45, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end27
  %cmp39 = fcmp ole double %sub22, 5.000000e-02
  %cmp44 = fcmp oge double %sub22, 0.000000e+00
  %or.cond45 = and i1 %cmp39, %cmp44
  br i1 %or.cond45, label %if.then45, label %for.inc

if.then45:                                        ; preds = %lor.lhs.false, %if.end27
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.2, i64 noundef 4)
  call void @outlined_ir_func_0(ptr %vbase.offset.ptr.i)
  br label %for.inc

for.inc:                                          ; preds = %if.then45, %lor.lhs.false
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %v1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 8, ptr noundef nonnull %t1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %valid) #7
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %total) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) local_unnamed_addr #3 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !15, !invariant.load !11
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
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) local_unnamed_addr #3 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !33, !invariant.load !11
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !39, !invariant.load !11
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !40, !invariant.load !11
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8, !invariant.load !11
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: minsize mustprogress norecurse optsize uwtable
define internal void @outlined_ir_func_0(ptr %0) #5 {
newFuncRoot:
  br label %if.then_to_outline

if.then_to_outline:                               ; preds = %newFuncRoot
  %vbase.offset.i = load i64, ptr %0, align 8, !invariant.load !11
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %call.i11 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i8 noundef signext 10)
  %call1.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %call.i11)
  %call.i.i13 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i12)
  br label %if.end.exitStub

if.end.exitStub:                                  ; preds = %if.then_to_outline
  ret void
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { minsize mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn }
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
!11 = !{}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = !{!16, !30, i64 240}
!16 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !17, i64 0, !27, i64 216, !7, i64 224, !28, i64 225, !29, i64 232, !30, i64 240, !31, i64 248, !32, i64 256}
!17 = !{!"_ZTSSt8ios_base", !18, i64 8, !18, i64 16, !19, i64 24, !20, i64 28, !20, i64 32, !21, i64 40, !23, i64 48, !7, i64 64, !10, i64 192, !24, i64 200, !25, i64 208}
!18 = !{!"long", !7, i64 0}
!19 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!20 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!21 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !22, i64 0}
!22 = !{!"any pointer", !7, i64 0}
!23 = !{!"_ZTSNSt8ios_base6_WordsE", !22, i64 0, !18, i64 8}
!24 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !22, i64 0}
!25 = !{!"_ZTSSt6locale", !26, i64 0}
!26 = !{!"p1 _ZTSNSt6locale5_ImplE", !22, i64 0}
!27 = !{!"p1 _ZTSSo", !22, i64 0}
!28 = !{!"bool", !7, i64 0}
!29 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !22, i64 0}
!30 = !{!"p1 _ZTSSt5ctypeIcE", !22, i64 0}
!31 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!32 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !22, i64 0}
!33 = !{!34, !7, i64 56}
!34 = !{!"_ZTSSt5ctypeIcE", !35, i64 0, !36, i64 16, !28, i64 24, !37, i64 32, !37, i64 40, !38, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!35 = !{!"_ZTSNSt6locale5facetE", !10, i64 8}
!36 = !{!"p1 _ZTS15__locale_struct", !22, i64 0}
!37 = !{!"p1 int", !22, i64 0}
!38 = !{!"p1 short", !22, i64 0}
!39 = !{!7, !7, i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !8, i64 0}
