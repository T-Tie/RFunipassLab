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

$_ZNKSt5ctypeIcE5widenEc = comdat any

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %a = alloca [100 x [100 x i8]], align 16
  %b = alloca [10000 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 10000, ptr nonnull %b) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %b, i64 noundef 10000)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %k.0 = phi i32 [ %k.1, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %call2
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x i8], ptr %b, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp4 = icmp eq i8 %0, 32
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %j.0, 1
  br label %for.inc

if.end:                                           ; preds = %for.body
  %idxprom7 = sext i32 %j.0 to i64
  %idxprom9 = sext i32 %k.0 to i64
  %arrayidx10 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom7, i64 %idxprom9
  store i8 %0, ptr %arrayidx10, align 1, !tbaa !5
  %inc11 = add nsw i32 %k.0, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %if.end ]
  %k.1 = phi i32 [ 0, %if.then ], [ %inc11, %if.end ]
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %for.cond
  %idxprom13 = sext i32 %j.0 to i64
  %arrayidx14 = getelementptr inbounds [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom13
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx14) #6
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx14, i64 noundef %call.i.i)
  %1 = zext i32 %j.0 to i64
  br label %for.cond17

for.cond17:                                       ; preds = %for.inc25, %for.end
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc25 ], [ %1, %for.end ]
  %indvars.iv.next23 = add nsw i64 %indvars.iv22, -1
  %2 = trunc nuw i64 %indvars.iv22 to i32
  %cmp18 = icmp sgt i32 %2, 0
  br i1 %cmp18, label %for.body19, label %for.end26

for.body19:                                       ; preds = %for.cond17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 32, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !11
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i
  %3 = load i64, ptr %gep, align 8, !tbaa !13
  %cmp.not.i = icmp eq i64 %3, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body19
  %call1.i1 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %for.inc25

if.end.i:                                         ; preds = %for.body19
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 32)
  br label %for.inc25

for.inc25:                                        ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call1.i1, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %idxprom21 = and i64 %indvars.iv.next23, 4294967295
  %arrayidx22 = getelementptr inbounds nuw [100 x [100 x i8]], ptr %a, i64 0, i64 %idxprom21
  %call.i.i2 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx22) #6
  %call1.i3 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, ptr noundef nonnull %arrayidx22, i64 noundef %call.i.i2)
  br label %for.cond17, !llvm.loop !25

for.end26:                                        ; preds = %for.cond17
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 10000, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define available_externally noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPcl(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n) #2 align 2 {
entry:
  %vtable = load ptr, ptr %this, align 8, !tbaa !11
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %this, i64 %vbase.offset
  %call = tail call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr, i8 noundef signext 10)
  %call2 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) %this, ptr noundef %__s, i64 noundef %__n, i8 noundef signext %call)
  ret ptr %call2
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) #4

; Function Attrs: mustprogress uwtable
define available_externally noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %this, i8 noundef signext %__c) #2 align 2 {
entry:
  %_M_ctype = getelementptr inbounds nuw i8, ptr %this, i64 240
  %0 = load ptr, ptr %_M_ctype, align 8, !tbaa !26
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit

if.then.i:                                        ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #8
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit:    ; preds = %entry
  %call2 = tail call noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext %__c)
  ret i8 %call2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef signext i8 @_ZNKSt5ctypeIcE5widenEc(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c) #2 comdat align 2 {
entry:
  %_M_widen_ok = getelementptr inbounds nuw i8, ptr %this, i64 56
  %0 = load i8, ptr %_M_widen_ok, align 8, !tbaa !34
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %_M_widen = getelementptr inbounds nuw i8, ptr %this, i64 57
  %idxprom = zext i8 %__c to i64
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %_M_widen, i64 0, i64 %idxprom
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5
  br label %return

if.end:                                           ; preds = %entry
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %this)
  %vtable = load ptr, ptr %this, align 8, !tbaa !11
  %vfn = getelementptr inbounds nuw i8, ptr %vtable, i64 48
  %2 = load ptr, ptr %vfn, align 8
  %call = tail call noundef signext i8 %2(ptr noundef nonnull align 8 dereferenceable(570) %this, i8 noundef signext %__c)
  br label %return

return:                                           ; preds = %if.end, %if.then
  %retval.0 = phi i8 [ %1, %if.then ], [ %call, %if.end ]
  ret i8 %retval.0
}

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) #4

; Function Attrs: mustprogress uwtable
define available_externally void @_ZNSt9basic_iosIcSt11char_traitsIcEE8setstateESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %__state) #2 align 2 {
entry:
  %_M_streambuf_state.i = getelementptr inbounds nuw i8, ptr %this, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i, align 8, !tbaa !40
  %or.i = or i32 %0, %__state
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %this, i32 noundef %or.i)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) #4

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { noreturn }

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
!11 = !{!12, !12, i64 0}
!12 = !{!"vtable pointer", !7, i64 0}
!13 = !{!14, !15, i64 16}
!14 = !{!"_ZTSSt8ios_base", !15, i64 8, !15, i64 16, !16, i64 24, !17, i64 28, !17, i64 32, !18, i64 40, !20, i64 48, !6, i64 64, !21, i64 192, !22, i64 200, !23, i64 208}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!17 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !19, i64 0}
!19 = !{!"any pointer", !6, i64 0}
!20 = !{!"_ZTSNSt8ios_base6_WordsE", !19, i64 0, !15, i64 8}
!21 = !{!"int", !6, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !19, i64 0}
!23 = !{!"_ZTSSt6locale", !24, i64 0}
!24 = !{!"p1 _ZTSNSt6locale5_ImplE", !19, i64 0}
!25 = distinct !{!25, !9, !10}
!26 = !{!27, !31, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !14, i64 0, !28, i64 216, !6, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!28 = !{!"p1 _ZTSSo", !19, i64 0}
!29 = !{!"bool", !6, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !19, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !19, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !19, i64 0}
!34 = !{!35, !6, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !21, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !19, i64 0}
!38 = !{!"p1 int", !19, i64 0}
!39 = !{!"p1 short", !19, i64 0}
!40 = !{!14, !17, i64 32}
