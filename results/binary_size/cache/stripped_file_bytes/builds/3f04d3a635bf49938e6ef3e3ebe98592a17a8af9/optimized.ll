; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjfp3ec9r.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@n = dso_local global i32 0, align 4
@a = dso_local global [27 x i32] zeroinitializer, align 16
@f = dso_local local_unnamed_addr global [27 x i32] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %call = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) @n)
  %0 = load i32, ptr @n, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %0, 0
  br i1 %cmp19, label %for.body, label %for.cond.cleanup39

for.cond3.preheader:                              ; preds = %for.body
  %cmp423 = icmp sgt i32 %1, 0
  br i1 %cmp423, label %for.body6.preheader, label %for.cond.cleanup39

for.body6.preheader:                              ; preds = %for.cond3.preheader
  %wide.trip.count37 = zext nneg i32 %1 to i64
  br label %for.body6

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv
  %call1 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond3.preheader, !llvm.loop !9

for.body40.preheader:                             ; preds = %for.cond.cleanup11
  %wide.trip.count = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %for.body40.preheader51, label %vector.ph

vector.ph:                                        ; preds = %for.body40.preheader
  %n.vec = and i64 %wide.trip.count37, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %4, %vector.body ]
  %3 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %6 = tail call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %4)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count37
  br i1 %cmp.n, label %for.cond.cleanup39, label %for.body40.preheader51

for.body40.preheader51:                           ; preds = %for.body40.preheader, %middle.block
  %indvars.iv39.ph = phi i64 [ 0, %for.body40.preheader ], [ %n.vec, %middle.block ]
  %max.026.ph = phi i32 [ 0, %for.body40.preheader ], [ %6, %middle.block ]
  br label %for.body40

for.body6:                                        ; preds = %for.body6.preheader, %for.cond.cleanup11
  %indvars.iv34 = phi i64 [ 0, %for.body6.preheader ], [ %indvars.iv.next35, %for.cond.cleanup11 ]
  %arrayidx8 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv34
  store i32 0, ptr %arrayidx8, align 4, !tbaa !5
  %cmp1021.not = icmp eq i64 %indvars.iv34, 0
  br i1 %cmp1021.not, label %for.cond.cleanup11, label %for.body12.lr.ph

for.body12.lr.ph:                                 ; preds = %for.body6
  %arrayidx16 = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv34
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.body12

for.cond.cleanup11.loopexit:                      ; preds = %for.inc27
  %8 = add nsw i32 %12, 1
  br label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond.cleanup11.loopexit, %for.body6
  %inc32 = phi i32 [ %8, %for.cond.cleanup11.loopexit ], [ 1, %for.body6 ]
  store i32 %inc32, ptr %arrayidx8, align 4, !tbaa !5
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %for.body40.preheader, label %for.body6, !llvm.loop !15

for.body12:                                       ; preds = %for.body12.lr.ph, %for.inc27
  %9 = phi i32 [ 0, %for.body12.lr.ph ], [ %12, %for.inc27 ]
  %indvars.iv31 = phi i64 [ 0, %for.body12.lr.ph ], [ %indvars.iv.next32, %for.inc27 ]
  %arrayidx14 = getelementptr inbounds nuw [27 x i32], ptr @a, i64 0, i64 %indvars.iv31
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp17.not = icmp slt i32 %10, %7
  br i1 %cmp17.not, label %for.inc27, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %arrayidx19 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv31
  %11 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %11, %9
  br i1 %cmp22, label %if.then, label %for.inc27

if.then:                                          ; preds = %land.lhs.true
  store i32 %11, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body12, %land.lhs.true, %if.then
  %12 = phi i32 [ %9, %for.body12 ], [ %9, %land.lhs.true ], [ %11, %if.then ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next32, %indvars.iv34
  br i1 %exitcond.not, label %for.cond.cleanup11.loopexit, label %for.body12, !llvm.loop !16

for.cond.cleanup39:                               ; preds = %for.body40, %middle.block, %entry, %for.cond3.preheader
  %max.0.lcssa = phi i32 [ 0, %for.cond3.preheader ], [ 0, %entry ], [ %6, %middle.block ], [ %spec.select, %for.body40 ]
  %call51 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0.lcssa)
  %vtable.i = load ptr, ptr %call51, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call51, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %13 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !19
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup39
  tail call void @_ZSt16__throw_bad_castv() #4
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup39
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 56
  %14 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !37
  %tobool.not.i1.i.i = icmp eq i8 %14, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %13, i64 67
  %15 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !43
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  tail call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %13)
  %vtable.i.i.i = load ptr, ptr %13, align 8, !tbaa !17
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %16 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = tail call noundef signext i8 %16(ptr noundef nonnull align 8 dereferenceable(570) %13, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %15, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call51, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  ret i32 0

for.body40:                                       ; preds = %for.body40.preheader51, %for.body40
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body40 ], [ %indvars.iv39.ph, %for.body40.preheader51 ]
  %max.026 = phi i32 [ %spec.select, %for.body40 ], [ %max.026.ph, %for.body40.preheader51 ]
  %arrayidx42 = getelementptr inbounds nuw [27 x i32], ptr @f, i64 0, i64 %indvars.iv39
  %17 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %17, i32 %max.026)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next40, %wide.trip.count
  br i1 %exitcond42.not, label %for.cond.cleanup39, label %for.body40, !llvm.loop !44
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #2

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn }

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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
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
!44 = distinct !{!44, !10, !11, !13}
