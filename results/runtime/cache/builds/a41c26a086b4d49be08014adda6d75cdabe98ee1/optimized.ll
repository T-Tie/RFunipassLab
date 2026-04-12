; ModuleID = '<stdin>'
source_filename = "/tmp/tmptcknl_su.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%struct.anon = type { [40 x i8], [40 x i8], i8, i32, double, [40 x i8] }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %student = alloca [1000 x %struct.anon], align 16
  call void @llvm.lifetime.start.p0(i64 136000, ptr nonnull %student) #5
  br label %for.cond

for.cond:                                         ; preds = %if.else34.i20, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else34.i20 ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 1000
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x %struct.anon], ptr %student, i64 0, i64 %indvars.iv
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %arrayidx, i64 noundef 9223372036854775807)
  %0 = load i8, ptr %arrayidx, align 8, !tbaa !5
  %cmp5 = icmp eq i8 %0, 101
  br i1 %cmp5, label %land.lhs.true, label %if.else34.i20

land.lhs.true:                                    ; preds = %for.body
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 1
  %1 = load i8, ptr %arrayidx9, align 1, !tbaa !5
  %cmp11 = icmp eq i8 %1, 110
  br i1 %cmp11, label %land.lhs.true12, label %if.else34.i20

land.lhs.true12:                                  ; preds = %land.lhs.true
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 2
  %2 = load i8, ptr %arrayidx16, align 2, !tbaa !5
  %cmp18 = icmp eq i8 %2, 100
  br i1 %cmp18, label %land.lhs.true19, label %if.else34.i20

land.lhs.true19:                                  ; preds = %land.lhs.true12
  %arrayidx23 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 3
  %3 = load i8, ptr %arrayidx23, align 1, !tbaa !5
  %cmp25 = icmp eq i8 %3, 0
  br i1 %cmp25, label %for.end, label %if.else34.i20

if.else34.i20:                                    ; preds = %for.body, %land.lhs.true, %land.lhs.true12, %land.lhs.true19
  %name = getelementptr inbounds nuw i8, ptr %arrayidx, i64 40
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %name, i64 noundef 9223372036854775807)
  %sex = getelementptr inbounds nuw i8, ptr %arrayidx, i64 80
  %call32 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 1 dereferenceable(1) %sex)
  %old = getelementptr inbounds nuw i8, ptr %arrayidx, i64 84
  %call35 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call32, ptr noundef nonnull align 4 dereferenceable(4) %old)
  %point = getelementptr inbounds nuw i8, ptr %arrayidx, i64 88
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) %call35, ptr noundef nonnull align 8 dereferenceable(8) %point)
  %address = getelementptr inbounds nuw i8, ptr %arrayidx, i64 96
  call void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16) %call.i, ptr noundef nonnull %address, i64 noundef 9223372036854775807)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !8

for.end:                                          ; preds = %land.lhs.true19, %for.cond
  %4 = and i64 %indvars.iv, 4294967295
  br label %for.cond43

for.cond43:                                       ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.end
  %indvars.iv141 = phi i64 [ %indvars.iv.next142, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %4, %for.end ]
  %cmp44 = icmp sgt i64 %indvars.iv141, 0
  br i1 %cmp44, label %for.body45, label %for.end80

for.body45:                                       ; preds = %for.cond43
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %arrayidx47 = getelementptr inbounds nuw [1000 x %struct.anon], ptr %student, i64 0, i64 %indvars.iv.next142
  %call.i.i = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %arrayidx47) #5
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %arrayidx47, i64 noundef %call.i.i)
  %call1.i95 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %name54 = getelementptr inbounds nuw i8, ptr %arrayidx47, i64 40
  %call.i.i96 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %name54) #5
  %call1.i97 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %name54, i64 noundef %call.i.i96)
  %call1.i103 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 1)
  %sex60 = getelementptr inbounds nuw i8, ptr %arrayidx47, i64 80
  %5 = load i8, ptr %sex60, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %5, ptr %__c.addr.i, align 1, !tbaa !5
  %vtable.i104 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i105 = getelementptr i8, ptr %vtable.i104, i64 -24
  %vbase.offset.i106 = load i64, ptr %vbase.offset.ptr.i105, align 8
  %gep139 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i106
  %6 = load i64, ptr %gep139, align 8, !tbaa !17
  %cmp.not.i = icmp eq i64 %6, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body45
  %call1.i109 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body45
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %5)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  %retval.0.i = phi ptr [ %call1.i109, %if.then.i ], [ @_ZSt4cout, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %call1.i111 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, ptr noundef nonnull @.str, i64 noundef 1)
  %old65 = getelementptr inbounds nuw i8, ptr %arrayidx47, i64 84
  %7 = load i32, ptr %old65, align 4, !tbaa !28
  %call66 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %retval.0.i, i32 noundef %7)
  %call1.i114 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call66, ptr noundef nonnull @.str, i64 noundef 1)
  %point70 = getelementptr inbounds nuw i8, ptr %arrayidx47, i64 88
  %8 = load double, ptr %point70, align 8, !tbaa !29
  %call.i116 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %call66, double noundef %8)
  %call1.i118 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i116, ptr noundef nonnull @.str, i64 noundef 1)
  %address75 = getelementptr inbounds nuw i8, ptr %arrayidx47, i64 96
  %call.i.i120 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %address75) #5
  %call1.i121 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call.i116, ptr noundef nonnull %address75, i64 noundef %call.i.i120)
  %vtable.i129 = load ptr, ptr %call.i116, align 8, !tbaa !15
  %vbase.offset.ptr.i130 = getelementptr i8, ptr %vtable.i129, i64 -24
  %vbase.offset.i131 = load i64, ptr %vbase.offset.ptr.i130, align 8
  %add.ptr.i132 = getelementptr inbounds i8, ptr %call.i116, i64 %vbase.offset.i131
  %call.i133 = call noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i132, i8 noundef signext 10)
  %call1.i134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call.i116, i8 noundef signext %call.i133)
  %call.i.i135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i134)
  br label %for.cond43, !llvm.loop !30

for.end80:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0(i64 136000, ptr nonnull %student) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZStrsIcSt11char_traitsIcEERSt13basic_istreamIT_T0_ES6_RS3_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZSt17__istream_extractRSiPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef signext i8 @_ZNKSt9basic_iosIcSt11char_traitsIcEE5widenEc(ptr noundef nonnull align 8 dereferenceable(264), i8 noundef signext) local_unnamed_addr #4 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!11 = !{!12, !6, i64 80}
!12 = !{!"_ZTSZ4mainE3$_0", !6, i64 0, !6, i64 40, !6, i64 80, !13, i64 84, !14, i64 88, !6, i64 96}
!13 = !{!"int", !6, i64 0}
!14 = !{!"double", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !7, i64 0}
!17 = !{!18, !19, i64 16}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !6, i64 64, !13, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !6, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !6, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!12, !13, i64 84}
!29 = !{!12, !14, i64 88}
!30 = distinct !{!30, !9, !10}
