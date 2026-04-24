; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj1mv1cwn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }

@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@_ZSt3cin = external global %"class.std::basic_istream", align 8

; Function Attrs: mustprogress uwtable
define dso_local void @_Z3delPc(ptr noundef %str) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %p.0 = phi ptr [ %str, %entry ], [ %incdec.ptr17, %for.inc16 ]
  %0 = load i8, ptr %p.0, align 1, !tbaa !5
  switch i8 %0, label %for.inc16 [
    i8 0, label %for.end18
    i8 32, label %land.lhs.true
  ]

land.lhs.true:                                    ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 1
  %1 = load i8, ptr %add.ptr, align 1, !tbaa !5
  %cmp4 = icmp eq i8 %1, 32
  br i1 %cmp4, label %for.cond6.preheader, label %for.inc16

for.cond6.preheader:                              ; preds = %land.lhs.true
  %add.ptr714 = getelementptr inbounds nuw i8, ptr %p.0, i64 2
  %2 = load i8, ptr %add.ptr714, align 1, !tbaa !5
  %cmp9.not15 = icmp eq i8 %2, 0
  br i1 %cmp9.not15, label %for.end, label %for.body10

for.body10:                                       ; preds = %for.cond6.preheader, %for.body10
  %3 = phi i8 [ %4, %for.body10 ], [ %2, %for.cond6.preheader ]
  %add.ptr718 = phi ptr [ %add.ptr7, %for.body10 ], [ %add.ptr714, %for.cond6.preheader ]
  %q.017 = phi ptr [ %add.ptr718, %for.body10 ], [ %add.ptr, %for.cond6.preheader ]
  %count.016 = phi i32 [ %inc, %for.body10 ], [ 0, %for.cond6.preheader ]
  store i8 %3, ptr %q.017, align 1, !tbaa !5
  store i8 32, ptr %add.ptr718, align 1, !tbaa !5
  %inc = add nuw nsw i32 %count.016, 1
  %add.ptr7 = getelementptr inbounds nuw i8, ptr %add.ptr718, i64 1
  %4 = load i8, ptr %add.ptr7, align 1, !tbaa !5
  %cmp9.not = icmp eq i8 %4, 0
  br i1 %cmp9.not, label %for.end.loopexit, label %for.body10, !llvm.loop !8

for.end.loopexit:                                 ; preds = %for.body10
  %5 = zext nneg i32 %inc to i64
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond6.preheader
  %count.0.lcssa = phi i64 [ 0, %for.cond6.preheader ], [ %5, %for.end.loopexit ]
  %add.ptr14 = getelementptr inbounds nuw i8, ptr %add.ptr, i64 %count.0.lcssa
  store i8 0, ptr %add.ptr14, align 1, !tbaa !5
  %add.ptr15 = getelementptr inbounds i8, ptr %p.0, i64 -1
  br label %for.inc16

for.inc16:                                        ; preds = %for.cond, %land.lhs.true, %for.end
  %p.1 = phi ptr [ %add.ptr15, %for.end ], [ %p.0, %land.lhs.true ], [ %p.0, %for.cond ]
  %incdec.ptr17 = getelementptr inbounds nuw i8, ptr %p.1, i64 1
  br label %for.cond, !llvm.loop !11

for.end18:                                        ; preds = %for.cond
  %tobool.not.i = icmp eq ptr %str, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.end18
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 32
  %6 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !14
  %or.i.i.i = or i32 %6, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %add.ptr.i, i32 noundef %or.i.i.i)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

if.else.i:                                        ; preds = %for.end18
  %call.i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit: ; preds = %if.then.i, %if.else.i
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %str = alloca [100 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %str) #6
  %vtable.i = load ptr, ptr @_ZSt3cin, align 8, !tbaa !12
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt3cin, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %0 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !26
  %tobool.not.i.i.i = icmp eq ptr %0, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %entry
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %1 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 67
  %2 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !5
  br label %_ZNSi7getlineEPcl.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %0)
  %vtable.i.i.i = load ptr, ptr %0, align 8, !tbaa !12
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %3 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %3(ptr noundef nonnull align 8 dereferenceable(570) %0, i8 noundef signext 10)
  br label %_ZNSi7getlineEPcl.exit

_ZNSi7getlineEPcl.exit:                           ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %2, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call2.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull %str, i64 noundef 100, i8 noundef signext %retval.0.i.i.i)
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.inc16.i, %_ZNSi7getlineEPcl.exit
  %p.0.i = phi ptr [ %str, %_ZNSi7getlineEPcl.exit ], [ %incdec.ptr17.i, %for.inc16.i ]
  %4 = load i8, ptr %p.0.i, align 1, !tbaa !5
  switch i8 %4, label %for.inc16.i [
    i8 0, label %_Z3delPc.exit
    i8 32, label %land.lhs.true.i
  ]

land.lhs.true.i:                                  ; preds = %for.cond.i
  %add.ptr.i1 = getelementptr inbounds nuw i8, ptr %p.0.i, i64 1
  %5 = load i8, ptr %add.ptr.i1, align 1, !tbaa !5
  %cmp4.i = icmp eq i8 %5, 32
  br i1 %cmp4.i, label %for.cond6.preheader.i, label %for.inc16.i

for.cond6.preheader.i:                            ; preds = %land.lhs.true.i
  %add.ptr714.i = getelementptr inbounds nuw i8, ptr %p.0.i, i64 2
  %6 = load i8, ptr %add.ptr714.i, align 1, !tbaa !5
  %cmp9.not15.i = icmp eq i8 %6, 0
  br i1 %cmp9.not15.i, label %for.end.i, label %for.body10.i

for.body10.i:                                     ; preds = %for.cond6.preheader.i, %for.body10.i
  %7 = phi i8 [ %8, %for.body10.i ], [ %6, %for.cond6.preheader.i ]
  %add.ptr718.i = phi ptr [ %add.ptr7.i, %for.body10.i ], [ %add.ptr714.i, %for.cond6.preheader.i ]
  %q.017.i = phi ptr [ %add.ptr718.i, %for.body10.i ], [ %add.ptr.i1, %for.cond6.preheader.i ]
  %count.016.i = phi i32 [ %inc.i, %for.body10.i ], [ 0, %for.cond6.preheader.i ]
  store i8 %7, ptr %q.017.i, align 1, !tbaa !5
  store i8 32, ptr %add.ptr718.i, align 1, !tbaa !5
  %inc.i = add nuw nsw i32 %count.016.i, 1
  %add.ptr7.i = getelementptr inbounds nuw i8, ptr %add.ptr718.i, i64 1
  %8 = load i8, ptr %add.ptr7.i, align 1, !tbaa !5
  %cmp9.not.i = icmp eq i8 %8, 0
  br i1 %cmp9.not.i, label %for.end.loopexit.i, label %for.body10.i, !llvm.loop !8

for.end.loopexit.i:                               ; preds = %for.body10.i
  %9 = zext nneg i32 %inc.i to i64
  br label %for.end.i

for.end.i:                                        ; preds = %for.end.loopexit.i, %for.cond6.preheader.i
  %count.0.lcssa.i = phi i64 [ 0, %for.cond6.preheader.i ], [ %9, %for.end.loopexit.i ]
  %add.ptr14.i = getelementptr inbounds nuw i8, ptr %add.ptr.i1, i64 %count.0.lcssa.i
  store i8 0, ptr %add.ptr14.i, align 1, !tbaa !5
  %add.ptr15.i = getelementptr inbounds i8, ptr %p.0.i, i64 -1
  br label %for.inc16.i

for.inc16.i:                                      ; preds = %for.end.i, %land.lhs.true.i, %for.cond.i
  %p.1.i = phi ptr [ %add.ptr15.i, %for.end.i ], [ %p.0.i, %land.lhs.true.i ], [ %p.0.i, %for.cond.i ]
  %incdec.ptr17.i = getelementptr inbounds nuw i8, ptr %p.1.i, i64 1
  br label %for.cond.i, !llvm.loop !11

_Z3delPc.exit:                                    ; preds = %for.cond.i
  %call.i.i.i2 = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #6
  %call1.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %str, i64 noundef %call.i.i.i2)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %str) #6
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi7getlineEPclc(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #5

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !7, i64 0}
!14 = !{!15, !18, i64 32}
!15 = !{!"_ZTSSt8ios_base", !16, i64 8, !16, i64 16, !17, i64 24, !18, i64 28, !18, i64 32, !19, i64 40, !21, i64 48, !6, i64 64, !22, i64 192, !23, i64 200, !24, i64 208}
!16 = !{!"long", !6, i64 0}
!17 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!18 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!19 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !20, i64 0}
!20 = !{!"any pointer", !6, i64 0}
!21 = !{!"_ZTSNSt8ios_base6_WordsE", !20, i64 0, !16, i64 8}
!22 = !{!"int", !6, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !20, i64 0}
!24 = !{!"_ZTSSt6locale", !25, i64 0}
!25 = !{!"p1 _ZTSNSt6locale5_ImplE", !20, i64 0}
!26 = !{!27, !31, i64 240}
!27 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !15, i64 0, !28, i64 216, !6, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!28 = !{!"p1 _ZTSSo", !20, i64 0}
!29 = !{!"bool", !6, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !20, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !20, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !20, i64 0}
!34 = !{!35, !6, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !6, i64 56, !6, i64 57, !6, i64 313, !6, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !22, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !20, i64 0}
!38 = !{!"p1 int", !20, i64 0}
!39 = !{!"p1 short", !20, i64 0}
