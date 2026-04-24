; ModuleID = '<stdin>'
source_filename = "/tmp/tmpl2tr0l61.cpp"
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
  %a = alloca [50 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(200) %a, i8 0, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i64 196
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not21 = icmp slt i32 %0, 1
  br i1 %cmp.not21, label %while.cond.preheader, label %for.cond1.preheader

while.cond.preheader:                             ; preds = %while.cond.preheader.loopexit, %entry
  %indvars.iv29.ph = phi i64 [ %2, %while.cond.preheader.loopexit ], [ 48, %entry ]
  br label %while.cond

for.cond1.preheader:                              ; preds = %entry, %for.end
  %p.024 = phi i32 [ %spec.select, %for.end ], [ 48, %entry ]
  %k.023 = phi i32 [ %k.1.lcssa, %for.end ], [ 0, %entry ]
  %i.022 = phi i32 [ %inc, %for.end ], [ 1, %entry ]
  %cmp2.not18 = icmp sgt i32 %p.024, 49
  br i1 %cmp2.not18, label %for.cond1.preheader.for.end_crit_edge, label %for.body3.preheader

for.cond1.preheader.for.end_crit_edge:            ; preds = %for.cond1.preheader
  %.pre = zext nneg i32 %p.024 to i64
  br label %for.end

for.body3.preheader:                              ; preds = %for.cond1.preheader
  %1 = sext i32 %p.024 to i64
  br label %for.body3

while.cond.preheader.loopexit:                    ; preds = %for.end
  %2 = sext i32 %spec.select to i64
  br label %while.cond.preheader

for.body3:                                        ; preds = %for.body3.preheader, %for.body3
  %indvars.iv = phi i64 [ 49, %for.body3.preheader ], [ %indvars.iv.next, %for.body3 ]
  %k.120 = phi i32 [ %k.023, %for.body3.preheader ], [ %spec.select17, %for.body3 ]
  %arrayidx4 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %add = add nsw i32 %mul, %k.120
  %cmp9 = icmp sgt i32 %add, 9
  %sub = add nsw i32 %add, -10
  %spec.select16 = select i1 %cmp9, i32 %sub, i32 %add
  %spec.select17 = zext i1 %cmp9 to i32
  store i32 %spec.select16, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp2.not.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp2.not.not, label %for.body3, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.cond1.preheader.for.end_crit_edge
  %idxprom14.pre-phi = phi i64 [ %.pre, %for.cond1.preheader.for.end_crit_edge ], [ %1, %for.body3 ]
  %k.1.lcssa = phi i32 [ %k.023, %for.cond1.preheader.for.end_crit_edge ], [ %spec.select17, %for.body3 ]
  %arrayidx15 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %idxprom14.pre-phi
  %4 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %4, 0
  %dec18 = sext i1 %cmp16 to i32
  %spec.select = add nsw i32 %p.024, %dec18
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %i.022, %0
  br i1 %exitcond.not, label %while.cond.preheader.loopexit, label %for.cond1.preheader, !llvm.loop !12

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %while.cond ], [ %indvars.iv29.ph, %while.cond.preheader ]
  %arrayidx23 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %5, 0
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, 1
  br i1 %cmp24, label %while.cond, label %for.cond26.preheader, !llvm.loop !13

for.cond26.preheader:                             ; preds = %while.cond
  %cmp2726 = icmp slt i64 %indvars.iv29, 50
  br i1 %cmp2726, label %for.body28, label %for.end34

for.body28:                                       ; preds = %for.cond26.preheader, %for.body28
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body28 ], [ %indvars.iv29, %for.cond26.preheader ]
  %arrayidx30 = getelementptr inbounds [50 x i32], ptr %a, i64 0, i64 %indvars.iv32
  %6 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %call31 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %6)
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1
  %7 = and i64 %indvars.iv.next33, 4294967295
  %exitcond35.not = icmp eq i64 %7, 50
  br i1 %exitcond35.not, label %for.end34, label %for.body28, !llvm.loop !14

for.end34:                                        ; preds = %for.body28, %for.cond26.preheader
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %8 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !17
  %tobool.not.i.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end34
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end34
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 56
  %9 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !35
  %tobool.not.i1.i.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 67
  %10 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !41
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %8)
  %vtable.i.i.i = load ptr, ptr %8, align 8, !tbaa !15
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %11 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %11(ptr noundef nonnull align 8 dereferenceable(570) %8, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %10, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !32, i64 240}
!18 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0, !29, i64 216, !7, i64 224, !30, i64 225, !31, i64 232, !32, i64 240, !33, i64 248, !34, i64 256}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !25, i64 48, !7, i64 64, !6, i64 192, !26, i64 200, !27, i64 208}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!29 = !{!"p1 _ZTSSo", !24, i64 0}
!30 = !{!"bool", !7, i64 0}
!31 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 0}
!32 = !{!"p1 _ZTSSt5ctypeIcE", !24, i64 0}
!33 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!34 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!35 = !{!36, !7, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !30, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !24, i64 0}
!39 = !{!"p1 int", !24, i64 0}
!40 = !{!"p1 short", !24, i64 0}
!41 = !{!7, !7, i64 0}
