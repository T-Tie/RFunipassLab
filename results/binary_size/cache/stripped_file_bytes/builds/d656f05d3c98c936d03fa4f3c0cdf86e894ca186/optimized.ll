; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_ytqk5tl.cpp"
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
  %arrayidx1069 = getelementptr inbounds nuw i8, ptr %a, i64 64
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.be, %for.body.backedge ]
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.inc [
    i32 -1, label %for.end
    i32 0, label %for.end
  ]

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end.thread, label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc, %cleanup
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %cleanup ]
  br label %for.body, !llvm.loop !9

for.end:                                          ; preds = %for.body, %for.body
  %idxprom9 = and i64 %indvars.iv, 4294967295
  %arrayidx10 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %idxprom9
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp11 = icmp eq i32 %1, -1
  br i1 %cmp11, label %while.end, label %for.cond14.preheader

for.end.thread:                                   ; preds = %for.inc
  %2 = load i32, ptr %arrayidx1069, align 16, !tbaa !5
  %cmp1170 = icmp eq i32 %2, -1
  br i1 %cmp1170, label %while.end, label %for.body16.preheader

for.cond14.preheader:                             ; preds = %for.end
  %cmp1531.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp1531.not, label %for.end55, label %for.body16.preheader

for.body16.preheader:                             ; preds = %for.end.thread, %for.cond14.preheader
  %idxprom97276 = phi i64 [ %idxprom9, %for.cond14.preheader ], [ 16, %for.end.thread ]
  br label %for.body16

for.cond14.loopexit:                              ; preds = %for.body19, %middle.block98, %for.body16
  %count.1.lcssa = phi i32 [ %count.033, %for.body16 ], [ %14, %middle.block98 ], [ %spec.select, %for.body19 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond54.not = icmp eq i64 %indvars.iv.next51, %idxprom97276
  br i1 %exitcond54.not, label %for.body36, label %for.body16, !llvm.loop !12

for.body16:                                       ; preds = %for.body16.preheader, %for.cond14.loopexit
  %indvars.iv50 = phi i64 [ 0, %for.body16.preheader ], [ %indvars.iv.next51, %for.cond14.loopexit ]
  %indvars.iv44 = phi i64 [ 1, %for.body16.preheader ], [ %indvars.iv.next45, %for.cond14.loopexit ]
  %count.033 = phi i32 [ 0, %for.body16.preheader ], [ %count.1.lcssa, %for.cond14.loopexit ]
  %3 = xor i64 %indvars.iv50, -1
  %4 = add nsw i64 %idxprom97276, %3
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  %cmp1828 = icmp samesign ult i64 %indvars.iv.next51, %idxprom97276
  br i1 %cmp1828, label %for.body19.lr.ph, label %for.cond14.loopexit

for.body19.lr.ph:                                 ; preds = %for.body16
  %arrayidx21 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv50
  %5 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %min.iters.check86 = icmp ult i64 %4, 4
  br i1 %min.iters.check86, label %for.body19.preheader, label %vector.ph87

vector.ph87:                                      ; preds = %for.body19.lr.ph
  %n.vec89 = and i64 %4, -4
  %6 = add i64 %indvars.iv44, %n.vec89
  %7 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %count.033, i64 0
  %broadcast.splatinsert90 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat91 = shufflevector <4 x i32> %broadcast.splatinsert90, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph87
  %index93 = phi i64 [ 0, %vector.ph87 ], [ %index.next97, %vector.body92 ]
  %vec.phi94 = phi <4 x i32> [ %7, %vector.ph87 ], [ %12, %vector.body92 ]
  %offset.idx95 = add i64 %indvars.iv44, %index93
  %8 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %offset.idx95
  %wide.load96 = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = shl nsw <4 x i32> %wide.load96, splat (i32 1)
  %10 = icmp eq <4 x i32> %broadcast.splat91, %9
  %11 = zext <4 x i1> %10 to <4 x i32>
  %12 = add <4 x i32> %vec.phi94, %11
  %index.next97 = add nuw i64 %index93, 4
  %13 = icmp eq i64 %index.next97, %n.vec89
  br i1 %13, label %middle.block98, label %vector.body92, !llvm.loop !13

middle.block98:                                   ; preds = %vector.body92
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  %cmp.n99 = icmp eq i64 %4, %n.vec89
  br i1 %cmp.n99, label %for.cond14.loopexit, label %for.body19.preheader

for.body19.preheader:                             ; preds = %for.body19.lr.ph, %middle.block98
  %indvars.iv46.ph = phi i64 [ %indvars.iv44, %for.body19.lr.ph ], [ %6, %middle.block98 ]
  %count.130.ph = phi i32 [ %count.033, %for.body19.lr.ph ], [ %14, %middle.block98 ]
  br label %for.body19

for.body19:                                       ; preds = %for.body19.preheader, %for.body19
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body19 ], [ %indvars.iv46.ph, %for.body19.preheader ]
  %count.130 = phi i32 [ %spec.select, %for.body19 ], [ %count.130.ph, %for.body19.preheader ]
  %arrayidx23 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv46
  %15 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %mul = shl nsw i32 %15, 1
  %cmp24 = icmp eq i32 %5, %mul
  %inc26 = zext i1 %cmp24 to i32
  %spec.select = add nsw i32 %count.130, %inc26
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next47, %idxprom97276
  br i1 %exitcond49.not, label %for.cond14.loopexit, label %for.body19, !llvm.loop !16

for.cond34.loopexit:                              ; preds = %for.body40, %middle.block, %for.body36
  %count.4.lcssa = phi i32 [ %count.341, %for.body36 ], [ %26, %middle.block ], [ %spec.select24, %for.body40 ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %idxprom97276
  br i1 %exitcond66.not, label %for.end55, label %for.body36, !llvm.loop !17

for.body36:                                       ; preds = %for.cond14.loopexit, %for.cond34.loopexit
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.cond34.loopexit ], [ 0, %for.cond14.loopexit ]
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.cond34.loopexit ], [ 1, %for.cond14.loopexit ]
  %count.341 = phi i32 [ %count.4.lcssa, %for.cond34.loopexit ], [ %count.1.lcssa, %for.cond14.loopexit ]
  %16 = xor i64 %indvars.iv62, -1
  %17 = add nsw i64 %idxprom97276, %16
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %cmp3935 = icmp samesign ult i64 %indvars.iv.next63, %idxprom97276
  br i1 %cmp3935, label %for.body40.lr.ph, label %for.cond34.loopexit

for.body40.lr.ph:                                 ; preds = %for.body36
  %arrayidx42 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv62
  %18 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %mul43 = shl nsw i32 %18, 1
  %min.iters.check = icmp ult i64 %17, 4
  br i1 %min.iters.check, label %for.body40.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body40.lr.ph
  %n.vec = and i64 %17, -4
  %19 = add i64 %indvars.iv55, %n.vec
  %20 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %count.341, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %mul43, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %20, %vector.ph ], [ %24, %vector.body ]
  %offset.idx = add i64 %indvars.iv55, %index
  %21 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %21, align 4, !tbaa !5
  %22 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %23 = zext <4 x i1> %22 to <4 x i32>
  %24 = add <4 x i32> %vec.phi, %23
  %index.next = add nuw i64 %index, 4
  %25 = icmp eq i64 %index.next, %n.vec
  br i1 %25, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %26 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %24)
  %cmp.n = icmp eq i64 %17, %n.vec
  br i1 %cmp.n, label %for.cond34.loopexit, label %for.body40.preheader

for.body40.preheader:                             ; preds = %for.body40.lr.ph, %middle.block
  %indvars.iv57.ph = phi i64 [ %indvars.iv55, %for.body40.lr.ph ], [ %19, %middle.block ]
  %count.437.ph = phi i32 [ %count.341, %for.body40.lr.ph ], [ %26, %middle.block ]
  br label %for.body40

for.body40:                                       ; preds = %for.body40.preheader, %for.body40
  %indvars.iv57 = phi i64 [ %indvars.iv.next58, %for.body40 ], [ %indvars.iv57.ph, %for.body40.preheader ]
  %count.437 = phi i32 [ %spec.select24, %for.body40 ], [ %count.437.ph, %for.body40.preheader ]
  %arrayidx45 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv57
  %27 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %cmp46 = icmp eq i32 %mul43, %27
  %inc48 = zext i1 %cmp46 to i32
  %spec.select24 = add nsw i32 %count.437, %inc48
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %idxprom97276
  br i1 %exitcond61.not, label %for.cond34.loopexit, label %for.body40, !llvm.loop !19

for.end55:                                        ; preds = %for.cond34.loopexit, %for.cond14.preheader
  %count.3.lcssa = phi i32 [ 0, %for.cond14.preheader ], [ %count.4.lcssa, %for.cond34.loopexit ]
  %call56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.3.lcssa)
  %vtable.i = load ptr, ptr %call56, align 8, !tbaa !20
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call56, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %28 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !22
  %tobool.not.i.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end55
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end55
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %28, i64 56
  %29 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !40
  %tobool.not.i1.i.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %28, i64 67
  %30 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !46
  br label %cleanup

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %28)
  %vtable.i.i.i = load ptr, ptr %28, align 8, !tbaa !20
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %31 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %31(ptr noundef nonnull align 8 dereferenceable(570) %28, i8 noundef signext 10)
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i = phi i8 [ %30, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call56, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %for.body.backedge

while.end:                                        ; preds = %for.end.thread, %for.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11, !14, !15}
!14 = !{!"llvm.loop.isvectorized", i32 1}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !11, !14}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11, !14, !15}
!19 = distinct !{!19, !10, !11, !14}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !8, i64 0}
!22 = !{!23, !37, i64 240}
!23 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !24, i64 0, !34, i64 216, !7, i64 224, !35, i64 225, !36, i64 232, !37, i64 240, !38, i64 248, !39, i64 256}
!24 = !{!"_ZTSSt8ios_base", !25, i64 8, !25, i64 16, !26, i64 24, !27, i64 28, !27, i64 32, !28, i64 40, !30, i64 48, !7, i64 64, !6, i64 192, !31, i64 200, !32, i64 208}
!25 = !{!"long", !7, i64 0}
!26 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!27 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!28 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !29, i64 0}
!29 = !{!"any pointer", !7, i64 0}
!30 = !{!"_ZTSNSt8ios_base6_WordsE", !29, i64 0, !25, i64 8}
!31 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !29, i64 0}
!32 = !{!"_ZTSSt6locale", !33, i64 0}
!33 = !{!"p1 _ZTSNSt6locale5_ImplE", !29, i64 0}
!34 = !{!"p1 _ZTSSo", !29, i64 0}
!35 = !{!"bool", !7, i64 0}
!36 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !29, i64 0}
!37 = !{!"p1 _ZTSSt5ctypeIcE", !29, i64 0}
!38 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!39 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !29, i64 0}
!40 = !{!41, !7, i64 56}
!41 = !{!"_ZTSSt5ctypeIcE", !42, i64 0, !43, i64 16, !35, i64 24, !44, i64 32, !44, i64 40, !45, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!42 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!43 = !{!"p1 _ZTS15__locale_struct", !29, i64 0}
!44 = !{!"p1 int", !29, i64 0}
!45 = !{!"p1 short", !29, i64 0}
!46 = !{!7, !7, i64 0}
