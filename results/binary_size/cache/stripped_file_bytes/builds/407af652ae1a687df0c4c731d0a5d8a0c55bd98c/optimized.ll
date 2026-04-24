; ModuleID = '<stdin>'
source_filename = "/tmp/tmpked8pq11.cpp"
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
  %a = alloca [20 x i32], align 16
  br label %while.body

while.body:                                       ; preds = %cleanup, %entry
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %a, i8 0, i64 80, i1 false)
  br label %do.body

do.body:                                          ; preds = %do.body, %while.body
  %indvars.iv22 = phi i32 [ %indvars.iv.next23, %do.body ], [ 0, %while.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ 0, %while.body ]
  %arrayidx = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  %indvars.iv.next23 = add nuw i32 %indvars.iv22, 1
  br i1 %cmp, label %do.body, label %do.end, !llvm.loop !9

do.end:                                           ; preds = %do.body
  %cmp6 = icmp eq i32 %0, -1
  br i1 %cmp6, label %while.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %cmp815.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp815.not, label %for.cond.cleanup, label %for.cond9.preheader.preheader

for.cond9.preheader.preheader:                    ; preds = %for.cond.preheader
  %wide.trip.count28 = zext i32 %indvars.iv22 to i64
  %min.iters.check = icmp ult i32 %indvars.iv22, 4
  %n.vec = and i64 %wide.trip.count28, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count28
  br label %for.cond9.preheader

for.cond9.preheader:                              ; preds = %for.cond9.preheader.preheader, %for.cond.cleanup12
  %indvars.iv24 = phi i64 [ 0, %for.cond9.preheader.preheader ], [ %indvars.iv.next25, %for.cond.cleanup12 ]
  %sum.016 = phi i32 [ 0, %for.cond9.preheader.preheader ], [ %spec.select.lcssa, %for.cond.cleanup12 ]
  %arrayidx15 = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv24
  %1 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  br i1 %min.iters.check, label %for.body13.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond9.preheader
  %2 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %sum.016, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %mul, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %2, %vector.ph ], [ %6, %vector.body ]
  %3 = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = icmp eq <4 x i32> %broadcast.splat, %wide.load
  %5 = zext <4 x i1> %4 to <4 x i32>
  %6 = add <4 x i32> %vec.phi, %5
  %index.next = add nuw i64 %index, 4
  %7 = icmp eq i64 %index.next, %n.vec
  br i1 %7, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %8 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %6)
  br i1 %cmp.n, label %for.cond.cleanup12, label %for.body13.preheader

for.body13.preheader:                             ; preds = %for.cond9.preheader, %middle.block
  %indvars.iv19.ph = phi i64 [ 0, %for.cond9.preheader ], [ %n.vec, %middle.block ]
  %sum.113.ph = phi i32 [ %sum.016, %for.cond9.preheader ], [ %8, %middle.block ]
  br label %for.body13

for.cond.cleanup:                                 ; preds = %for.cond.cleanup12, %for.cond.preheader
  %sum.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %spec.select.lcssa, %for.cond.cleanup12 ]
  %call26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0.lcssa)
  %vtable.i = load ptr, ptr %call26, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call26, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %9 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !17
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 56
  %10 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !35
  %tobool.not.i1.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 67
  %11 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !41
  br label %cleanup

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %9)
  %vtable.i.i.i = load ptr, ptr %9, align 8, !tbaa !15
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %12 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %12(ptr noundef nonnull align 8 dereferenceable(570) %9, i8 noundef signext 10)
  br label %cleanup

for.cond.cleanup12:                               ; preds = %for.body13, %middle.block
  %spec.select.lcssa = phi i32 [ %8, %middle.block ], [ %spec.select, %for.body13 ]
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  %exitcond29.not = icmp eq i64 %indvars.iv.next25, %wide.trip.count28
  br i1 %exitcond29.not, label %for.cond.cleanup, label %for.cond9.preheader, !llvm.loop !42

for.body13:                                       ; preds = %for.body13.preheader, %for.body13
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.body13 ], [ %indvars.iv19.ph, %for.body13.preheader ]
  %sum.113 = phi i32 [ %spec.select, %for.body13 ], [ %sum.113.ph, %for.body13.preheader ]
  %arrayidx17 = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %13 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %mul, %13
  %inc20 = zext i1 %cmp18 to i32
  %spec.select = add nsw i32 %sum.113, %inc20
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next20, %wide.trip.count28
  br i1 %exitcond.not, label %for.cond.cleanup12, label %for.body13, !llvm.loop !43

cleanup:                                          ; preds = %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i = phi i8 [ %11, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call26, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a) #6
  br label %while.body

while.end:                                        ; preds = %do.end
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
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
!42 = distinct !{!42, !10, !11}
!43 = distinct !{!43, !10, !11, !13}
