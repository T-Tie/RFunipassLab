; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_rmtulyv.cpp"
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
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  br label %for.cond

for.cond:                                         ; preds = %for.inc26, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc27, %for.inc26 ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc26 [
    i32 -1, label %sw.bb
    i32 0, label %for.cond4.preheader
  ]

for.cond4.preheader:                              ; preds = %for.cond
  %cmp15 = icmp sgt i32 %i.0, 0
  br i1 %cmp15, label %for.cond5.preheader.preheader, label %for.cond.cleanup

for.cond5.preheader.preheader:                    ; preds = %for.cond4.preheader
  %wide.trip.count22 = zext nneg i32 %i.0 to i64
  br label %for.cond5.preheader

sw.bb:                                            ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
  ret i32 0

for.cond5.preheader:                              ; preds = %for.cond5.preheader.preheader, %for.cond.cleanup7
  %indvars.iv = phi i64 [ 0, %for.cond5.preheader.preheader ], [ %indvars.iv.next, %for.cond.cleanup7 ]
  %s.016 = phi i32 [ 0, %for.cond5.preheader.preheader ], [ %s.2.lcssa, %for.cond.cleanup7 ]
  %1 = sub nsw i64 %wide.trip.count22, %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %mul18 = shl nsw i32 %2, 1
  %min.iters.check = icmp ult i64 %1, 4
  br i1 %min.iters.check, label %for.body8.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond5.preheader
  %n.vec = and i64 %1, -4
  %3 = add i64 %indvars.iv, %n.vec
  %4 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %s.016, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %2, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert24 = insertelement <4 x i32> poison, i32 %mul18, i64 0
  %broadcast.splat25 = shufflevector <4 x i32> %broadcast.splatinsert24, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %4, %vector.ph ], [ %11, %vector.body ]
  %offset.idx = add i64 %indvars.iv, %index
  %5 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %5, align 4, !tbaa !5
  %6 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %7 = icmp eq <4 x i32> %broadcast.splat, %6
  %8 = icmp eq <4 x i32> %wide.load, %broadcast.splat25
  %9 = select <4 x i1> %7, <4 x i1> splat (i1 true), <4 x i1> %8
  %10 = zext <4 x i1> %9 to <4 x i32>
  %11 = add <4 x i32> %vec.phi, %10
  %index.next = add nuw i64 %index, 4
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup7, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.cond5.preheader, %middle.block
  %indvars.iv18.ph = phi i64 [ %indvars.iv, %for.cond5.preheader ], [ %3, %middle.block ]
  %s.113.ph = phi i32 [ %s.016, %for.cond5.preheader ], [ %13, %middle.block ]
  br label %for.body8

for.cond.cleanup:                                 ; preds = %for.cond.cleanup7, %for.cond4.preheader
  %s.0.lcssa = phi i32 [ 0, %for.cond4.preheader ], [ %s.2.lcssa, %for.cond.cleanup7 ]
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0.lcssa)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !14
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %14 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !16
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !34
  %tobool.not.i1.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 67
  %16 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !40
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %14)
  %vtable.i.i.i = load ptr, ptr %14, align 8, !tbaa !14
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %17 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %17(ptr noundef nonnull align 8 dereferenceable(570) %14, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %16, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.inc26

for.cond.cleanup7:                                ; preds = %for.body8, %middle.block
  %s.2.lcssa = phi i32 [ %13, %middle.block ], [ %s.2, %for.body8 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond23.not = icmp eq i64 %indvars.iv.next, %wide.trip.count22
  br i1 %exitcond23.not, label %for.cond.cleanup, label %for.cond5.preheader, !llvm.loop !41

for.body8:                                        ; preds = %for.body8.preheader, %for.body8
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body8 ], [ %indvars.iv18.ph, %for.body8.preheader ]
  %s.113 = phi i32 [ %s.2, %for.body8 ], [ %s.113.ph, %for.body8.preheader ]
  %arrayidx12 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %18 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %mul = shl nsw i32 %18, 1
  %cmp13 = icmp eq i32 %2, %mul
  %cmp19 = icmp eq i32 %18, %mul18
  %or.cond = select i1 %cmp13, i1 true, i1 %cmp19
  %inc = zext i1 %or.cond to i32
  %s.2 = add nsw i32 %s.113, %inc
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next19, %wide.trip.count22
  br i1 %exitcond.not, label %for.cond.cleanup7, label %for.body8, !llvm.loop !42

for.inc26:                                        ; preds = %for.cond, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %i.1 = phi i32 [ %i.0, %for.cond ], [ -1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %inc27 = add nsw i32 %i.1, 1
  br label %for.cond, !llvm.loop !43
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
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
!41 = distinct !{!41, !10, !11}
!42 = distinct !{!42, !10, !11, !12}
!43 = distinct !{!43, !10, !11}
