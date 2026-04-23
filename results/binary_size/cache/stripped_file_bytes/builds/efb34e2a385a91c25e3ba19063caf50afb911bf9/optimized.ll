; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8wk7ea_s.cpp"
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
  %vla45371 = alloca [0 x i32], align 16
  %__c.addr.i = alloca i8, align 1
  %N = alloca i32, align 4
  %c = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %c) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %3, 0
  br i1 %cmp31, label %for.body, label %for.cond22.preheader.preheader

for.cond.cleanup:                                 ; preds = %for.inc
  %4 = zext i32 %n.1 to i64
  %vla4 = alloca i32, i64 %4, align 16
  %cmp734 = icmp sgt i32 %n.1, 0
  br i1 %cmp734, label %for.body9.preheader, label %for.cond18.preheader

for.body9.preheader:                              ; preds = %for.cond.cleanup
  %5 = shl nuw nsw i64 %4, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %vla4, ptr nonnull align 16 %vla, i64 %5, i1 false), !tbaa !5
  br label %for.cond22.preheader.preheader

for.body:                                         ; preds = %entry, %for.inc
  %n.033 = phi i32 [ %n.1, %for.inc ], [ 0, %entry ]
  %i.032 = phi i32 [ %inc3, %for.inc ], [ 0, %entry ]
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %c)
  %6 = load i32, ptr %c, align 4, !tbaa !5
  %7 = and i32 %6, -2147483647
  %cmp2 = icmp eq i32 %7, 1
  br i1 %cmp2, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %idxprom = sext i32 %n.033 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  store i32 %6, ptr %arrayidx, align 4, !tbaa !5
  %inc = add nsw i32 %n.033, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %n.1 = phi i32 [ %inc, %if.then ], [ %n.033, %for.body ]
  %inc3 = add nuw nsw i32 %i.032, 1
  %8 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc3, %8
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !9

for.cond18.preheader:                             ; preds = %for.cond.cleanup
  %cmp1939 = icmp sgt i32 %n.1, -1
  br i1 %cmp1939, label %for.cond22.preheader.preheader, label %for.cond.cleanup51

for.cond22.preheader.preheader:                   ; preds = %entry, %for.body9.preheader, %for.cond18.preheader
  %n.0.lcssa5567 = phi i32 [ 0, %for.cond18.preheader ], [ %n.1, %for.body9.preheader ], [ 0, %entry ]
  %9 = phi i64 [ %4, %for.cond18.preheader ], [ %4, %for.body9.preheader ], [ 0, %entry ]
  %vla45664 = phi ptr [ %vla4, %for.cond18.preheader ], [ %vla4, %for.body9.preheader ], [ %vla45371, %entry ]
  %cmp7345763 = phi i1 [ false, %for.cond18.preheader ], [ true, %for.body9.preheader ], [ false, %entry ]
  br label %for.cond22.preheader

for.cond18.loopexit:                              ; preds = %for.inc43, %for.cond22.preheader
  %cmp19 = icmp sgt i32 %i17.040, 0
  br i1 %cmp19, label %for.cond22.preheader, label %for.cond49.preheader, !llvm.loop !12

for.cond22.preheader:                             ; preds = %for.cond22.preheader.preheader, %for.cond18.loopexit
  %indvars.iv45.in = phi i32 [ %n.0.lcssa5567, %for.cond22.preheader.preheader ], [ %indvars.iv45, %for.cond18.loopexit ]
  %i17.040 = phi i32 [ %n.0.lcssa5567, %for.cond22.preheader.preheader ], [ %sub, %for.cond18.loopexit ]
  %indvars.iv45 = add nsw i32 %indvars.iv45.in, -1
  %sub = add nsw i32 %i17.040, -1
  %cmp2336 = icmp samesign ugt i32 %i17.040, 1
  br i1 %cmp2336, label %for.body25.preheader, label %for.cond18.loopexit

for.body25.preheader:                             ; preds = %for.cond22.preheader
  %wide.trip.count = zext i32 %indvars.iv45 to i64
  %.pre = load i32, ptr %vla45664, align 16, !tbaa !5
  br label %for.body25

for.cond49.preheader:                             ; preds = %for.cond18.loopexit
  br i1 %cmp7345763, label %for.body52.lr.ph, label %for.cond.cleanup51

for.body52.lr.ph:                                 ; preds = %for.cond49.preheader
  %sub53 = add nsw i32 %n.0.lcssa5567, -1
  %10 = zext i32 %sub53 to i64
  %arrayidx57 = getelementptr inbounds nuw i32, ptr %vla45664, i64 %10
  br label %for.body52

for.body25:                                       ; preds = %for.body25.preheader, %for.inc43
  %11 = phi i32 [ %.pre, %for.body25.preheader ], [ %13, %for.inc43 ]
  %indvars.iv = phi i64 [ 0, %for.body25.preheader ], [ %indvars.iv.next, %for.inc43 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx29 = getelementptr inbounds nuw i32, ptr %vla45664, i64 %indvars.iv.next
  %12 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %11, %12
  br i1 %cmp30, label %if.then31, label %for.inc43

if.then31:                                        ; preds = %for.body25
  %arrayidx27 = getelementptr inbounds nuw i32, ptr %vla45664, i64 %indvars.iv
  store i32 %11, ptr %arrayidx29, align 4, !tbaa !5
  store i32 %12, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc43

for.inc43:                                        ; preds = %for.body25, %if.then31
  %13 = phi i32 [ %12, %for.body25 ], [ %11, %if.then31 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond18.loopexit, label %for.body25, !llvm.loop !13

for.cond.cleanup51:                               ; preds = %for.inc65, %for.cond18.preheader, %for.cond49.preheader
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
  ret i32 0

for.body52:                                       ; preds = %for.body52.lr.ph, %for.inc65
  %indvars.iv47 = phi i64 [ 0, %for.body52.lr.ph ], [ %indvars.iv.next48, %for.inc65 ]
  %cmp54 = icmp eq i64 %indvars.iv47, %10
  br i1 %cmp54, label %if.then55, label %if.else

if.then55:                                        ; preds = %for.body52
  %14 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  %call58 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %14)
  %vtable.i25 = load ptr, ptr %call58, align 8, !tbaa !14
  %vbase.offset.ptr.i26 = getelementptr i8, ptr %vtable.i25, i64 -24
  %vbase.offset.i27 = load i64, ptr %vbase.offset.ptr.i26, align 8
  %add.ptr.i28 = getelementptr inbounds i8, ptr %call58, i64 %vbase.offset.i27
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i28, i64 240
  %15 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then55
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then55
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 56
  %16 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %15, i64 67
  %17 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %15)
  %vtable.i.i.i = load ptr, ptr %15, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %18 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %18(ptr noundef nonnull align 8 dereferenceable(570) %15, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %17, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i29 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call58, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i29)
  br label %for.inc65

if.else:                                          ; preds = %for.body52
  %arrayidx61 = getelementptr inbounds nuw i32, ptr %vla45664, i64 %indvars.iv47
  %19 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %call62 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %19)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %__c.addr.i)
  store i8 44, ptr %__c.addr.i, align 1, !tbaa !40
  %vtable.i = load ptr, ptr %call62, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call62, i64 %vbase.offset.i
  %_M_width.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 16
  %20 = load i64, ptr %_M_width.i.i, align 8, !tbaa !41
  %cmp.not.i = icmp eq i64 %20, 0
  br i1 %cmp.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.else
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %call62, ptr noundef nonnull %__c.addr.i, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

if.end.i:                                         ; preds = %if.else
  %call2.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call62, i8 noundef signext 44)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %if.then.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %__c.addr.i)
  br label %for.inc65

for.inc65:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %9
  br i1 %exitcond51.not, label %for.cond.cleanup51, label %for.body52, !llvm.loop !42
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

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !8, i64 0}
!16 = !{!17, !31, i64 240}
!17 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !18, i64 0, !28, i64 216, !7, i64 224, !29, i64 225, !30, i64 232, !31, i64 240, !32, i64 248, !33, i64 256}
!18 = !{!"_ZTSSt8ios_base", !19, i64 8, !19, i64 16, !20, i64 24, !21, i64 28, !21, i64 32, !22, i64 40, !24, i64 48, !7, i64 64, !6, i64 192, !25, i64 200, !26, i64 208}
!19 = !{!"long", !7, i64 0}
!20 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!21 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!22 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !23, i64 0}
!23 = !{!"any pointer", !7, i64 0}
!24 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !19, i64 8}
!25 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !23, i64 0}
!26 = !{!"_ZTSSt6locale", !27, i64 0}
!27 = !{!"p1 _ZTSNSt6locale5_ImplE", !23, i64 0}
!28 = !{!"p1 _ZTSSo", !23, i64 0}
!29 = !{!"bool", !7, i64 0}
!30 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !23, i64 0}
!31 = !{!"p1 _ZTSSt5ctypeIcE", !23, i64 0}
!32 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!33 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !23, i64 0}
!34 = !{!35, !7, i64 56}
!35 = !{!"_ZTSSt5ctypeIcE", !36, i64 0, !37, i64 16, !29, i64 24, !38, i64 32, !38, i64 40, !39, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!36 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!37 = !{!"p1 _ZTS15__locale_struct", !23, i64 0}
!38 = !{!"p1 int", !23, i64 0}
!39 = !{!"p1 short", !23, i64 0}
!40 = !{!7, !7, i64 0}
!41 = !{!18, !19, i64 16}
!42 = distinct !{!42, !10, !11}
