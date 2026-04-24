; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmwl00y5i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %__c.addr.i = alloca i8, align 1
  %n = alloca i32, align 4
  %a = alloca [3200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 3200, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(3200) %a, i8 0, i64 3200, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %call1 = call noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin)
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !8
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !28
  %tobool.not.i1.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67
  %2 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !34
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %0)
  %vtable.i.i.i = load ptr, ptr %0, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %3 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %3(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %2, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %a, i64 noundef 3200, i8 noundef signext %retval.0.i.i.i)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #8
  %arrayidx = getelementptr inbounds nuw [3200 x i8], ptr %a, i64 0, i64 %call4
  store i8 32, ptr %arrayidx, align 1, !tbaa !34
  br label %while.cond

while.cond:                                       ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZNSi7getlineEPcl.exit
  %s.0 = phi i32 [ 0, %_ZNSi7getlineEPcl.exit ], [ %add, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %e.0 = phi i32 [ 80, %_ZNSi7getlineEPcl.exit ], [ %add18, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %4 = sext i32 %e.0 to i64
  br label %while.cond5

while.cond5:                                      ; preds = %while.cond5, %while.cond
  %indvars.iv38 = phi i32 [ %indvars.iv.next39, %while.cond5 ], [ %e.0, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond5 ], [ %4, %while.cond ]
  %arrayidx6 = getelementptr inbounds [3200 x i8], ptr %a, i64 0, i64 %indvars.iv
  %5 = load i8, ptr %arrayidx6, align 1, !tbaa !34
  %cmp.not = icmp eq i8 %5, 32
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %indvars.iv.next39 = add i32 %indvars.iv38, -1
  br i1 %cmp.not, label %for.cond.preheader, label %while.cond5, !llvm.loop !35

for.cond.preheader:                               ; preds = %while.cond5
  %6 = trunc nsw i64 %indvars.iv to i32
  %cmp831 = icmp slt i32 %s.0, %6
  br i1 %cmp831, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %7 = sext i32 %s.0 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %for.cond.preheader
  %vtable.i13 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i14 = getelementptr i8, ptr %vtable.i13, i64 -24
  %vbase.offset.i15 = load i64, ptr %vbase.offset.ptr.i14, align 8
  %gep33 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i15
  %8 = load ptr, ptr %gep33, align 8, !tbaa !8
  %tobool.not.i.i.i18 = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i18, label %if.then.i.i.i30, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19

if.then.i.i.i30:                                  ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i20 = getelementptr inbounds nuw i8, ptr %8, i64 56
  %9 = load i8, ptr %_M_widen_ok.i.i.i20, align 8, !tbaa !28
  %tobool.not.i1.i.i21 = icmp eq i8 %9, 0
  br i1 %tobool.not.i1.i.i21, label %if.end.i.i.i26, label %if.then.i2.i.i22

if.then.i2.i.i22:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  %arrayidx.i.i.i23 = getelementptr inbounds nuw i8, ptr %8, i64 67
  %10 = load i8, ptr %arrayidx.i.i.i23, align 1, !tbaa !34
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i26:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %8)
  %vtable.i.i.i27 = load ptr, ptr %8, align 8, !tbaa !5
  %vfn.i.i.i28 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i27, i64 48
  %11 = load ptr, ptr %vfn.i.i.i28, align 8
  %call.i.i.i29 = call noundef signext i8 %11(ptr noundef nonnull align 8 dereferenceable(570) %8, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i22, %if.end.i.i.i26
  %retval.0.i.i.i24 = phi i8 [ %10, %if.then.i2.i.i22 ], [ %call.i.i.i29, %if.end.i.i.i26 ]
  %call1.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i24)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i25)
  %add = add nsw i32 %6, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [3200 x i8], ptr %a, i64 0, i64 %idxprom13
  %12 = load i8, ptr %arrayidx14, align 1, !tbaa !34
  %cmp16 = icmp eq i8 %12, 0
  %add18 = add nsw i32 %6, 81
  br i1 %cmp16, label %if.then, label %while.cond, !llvm.loop !38

for.body:                                         ; preds = %for.body.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv35 = phi i64 [ %7, %for.body.preheader ], [ %indvars.iv.next36, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ]
  %arrayidx10 = getelementptr inbounds [3200 x i8], ptr %a, i64 0, i64 %indvars.iv35
  %13 = load i8, ptr %arrayidx10, align 1, !tbaa !34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 %13, ptr %__c.addr.i, align 1, !tbaa !34
  %vtable.i8 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !5
  %vbase.offset.ptr.i9 = getelementptr i8, ptr %vtable.i8, i64 -24
  %vbase.offset.i10 = load i64, ptr %vbase.offset.ptr.i9, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 16), i64 %vbase.offset.i10
  %14 = load i64, ptr %gep, align 8, !tbaa !39
  %cmp.not.i = icmp eq i64 %14, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %for.body
  %call2.i12 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %13)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  %indvars.iv.next36 = add nsw i64 %indvars.iv35, 1
  %lftr.wideiv = trunc i64 %indvars.iv.next36 to i32
  %exitcond.not = icmp eq i32 %indvars.iv38, %lftr.wideiv
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !40

if.then:                                          ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  call void @llvm.lifetime.end.p0(i64 3200, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef i32 @_ZNSi3getEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }
attributes #8 = { nounwind willreturn memory(read) }

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
!8 = !{!9, !25, i64 240}
!9 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !10, i64 0, !22, i64 216, !12, i64 224, !23, i64 225, !24, i64 232, !25, i64 240, !26, i64 248, !27, i64 256}
!10 = !{!"_ZTSSt8ios_base", !11, i64 8, !11, i64 16, !13, i64 24, !14, i64 28, !14, i64 32, !15, i64 40, !17, i64 48, !12, i64 64, !18, i64 192, !19, i64 200, !20, i64 208}
!11 = !{!"long", !12, i64 0}
!12 = !{!"omnipotent char", !7, i64 0}
!13 = !{!"_ZTSSt13_Ios_Fmtflags", !12, i64 0}
!14 = !{!"_ZTSSt12_Ios_Iostate", !12, i64 0}
!15 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !16, i64 0}
!16 = !{!"any pointer", !12, i64 0}
!17 = !{!"_ZTSNSt8ios_base6_WordsE", !16, i64 0, !11, i64 8}
!18 = !{!"int", !12, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !16, i64 0}
!20 = !{!"_ZTSSt6locale", !21, i64 0}
!21 = !{!"p1 _ZTSNSt6locale5_ImplE", !16, i64 0}
!22 = !{!"p1 _ZTSSo", !16, i64 0}
!23 = !{!"bool", !12, i64 0}
!24 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !16, i64 0}
!25 = !{!"p1 _ZTSSt5ctypeIcE", !16, i64 0}
!26 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!27 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !16, i64 0}
!28 = !{!29, !12, i64 56}
!29 = !{!"_ZTSSt5ctypeIcE", !30, i64 0, !31, i64 16, !23, i64 24, !32, i64 32, !32, i64 40, !33, i64 48, !12, i64 56, !12, i64 57, !12, i64 313, !12, i64 569}
!30 = !{!"_ZTSNSt6locale5facetE", !18, i64 8}
!31 = !{!"p1 _ZTS15__locale_struct", !16, i64 0}
!32 = !{!"p1 int", !16, i64 0}
!33 = !{!"p1 short", !16, i64 0}
!34 = !{!12, !12, i64 0}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.mustprogress"}
!37 = !{!"llvm.loop.unroll.disable"}
!38 = distinct !{!38, !36, !37}
!39 = !{!10, !11, i64 16}
!40 = distinct !{!40, !36, !37}
