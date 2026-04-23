; ModuleID = '<stdin>'
source_filename = "/tmp/tmp97wllapo.cpp"
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
  %n = alloca i32, align 4
  %num = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %num) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %num, i8 0, i64 4000, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %num, align 16, !tbaa !5
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not30 = icmp slt i32 %0, 1
  br i1 %cmp.not30, label %for.cond36.preheader, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %for.inc33
  %len.032 = phi i32 [ %len.1, %for.inc33 ], [ undef, %entry ]
  %i.031 = phi i32 [ %inc34, %for.inc33 ], [ 1, %entry ]
  br label %for.body3

for.cond36.preheader:                             ; preds = %for.inc33, %entry
  %len.0.lcssa = phi i32 [ undef, %entry ], [ %len.1, %for.inc33 ]
  br label %for.body38

for.body3:                                        ; preds = %for.cond1.preheader, %for.inc
  %j.025 = phi i32 [ 999, %for.cond1.preheader ], [ %dec, %for.inc ]
  %idxprom = zext nneg i32 %j.025 to i64
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp5.not = icmp eq i32 %1, 0
  br i1 %cmp5.not, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.body3
  %dec = add nsw i32 %j.025, -1
  %cmp2.not = icmp eq i32 %j.025, 0
  br i1 %cmp2.not, label %for.end, label %for.body3, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.inc
  %len.1 = phi i32 [ %len.032, %for.inc ], [ %j.025, %for.body3 ]
  %cmp7.not26 = icmp slt i32 %len.1, 0
  br i1 %cmp7.not26, label %for.inc33, label %for.body8.preheader

for.body8.preheader:                              ; preds = %for.end
  %2 = add nuw i32 %len.1, 1
  %wide.trip.count = zext i32 %2 to i64
  %min.iters.check = icmp ult i32 %len.1, 3
  br i1 %min.iters.check, label %for.body8.preheader47, label %vector.ph

vector.ph:                                        ; preds = %for.body8.preheader
  %n.vec = and i64 %wide.trip.count, 4294967292
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %3 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %3, align 16, !tbaa !5
  %4 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  store <4 x i32> %4, ptr %3, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %5 = icmp eq i64 %index.next, %n.vec
  br i1 %5, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.body15.preheader, label %for.body8.preheader47

for.body8.preheader47:                            ; preds = %for.body8.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body8.preheader ], [ %n.vec, %middle.block ]
  br label %for.body8

for.body15.preheader:                             ; preds = %for.body8, %middle.block
  %6 = add nuw i32 %len.1, 1
  %wide.trip.count41 = zext i32 %6 to i64
  br label %for.body15

for.body8:                                        ; preds = %for.body8.preheader47, %for.body8
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ %indvars.iv.ph, %for.body8.preheader47 ]
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %mul = shl nsw i32 %7, 1
  store i32 %mul, ptr %arrayidx10, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.body15.preheader, label %for.body8, !llvm.loop !15

for.body15:                                       ; preds = %for.body15.preheader, %for.inc30
  %indvars.iv37 = phi i64 [ 0, %for.body15.preheader ], [ %indvars.iv.next38.pre-phi, %for.inc30 ]
  %arrayidx17 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %indvars.iv37
  %8 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %8, 9
  br i1 %cmp18, label %if.then19, label %for.body15.for.inc30_crit_edge

for.body15.for.inc30_crit_edge:                   ; preds = %for.body15
  %.pre = add nuw nsw i64 %indvars.iv37, 1
  br label %for.inc30

if.then19:                                        ; preds = %for.body15
  %div = udiv i32 %8, 10
  %9 = add nuw nsw i64 %indvars.iv37, 1
  %arrayidx23 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %9
  %10 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add24 = add nsw i32 %10, %div
  store i32 %add24, ptr %arrayidx23, align 4, !tbaa !5
  %rem24 = urem i32 %8, 10
  store i32 %rem24, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.body15.for.inc30_crit_edge, %if.then19
  %indvars.iv.next38.pre-phi = phi i64 [ %.pre, %for.body15.for.inc30_crit_edge ], [ %9, %if.then19 ]
  %exitcond42.not = icmp eq i64 %indvars.iv.next38.pre-phi, %wide.trip.count41
  br i1 %exitcond42.not, label %for.inc33, label %for.body15, !llvm.loop !16

for.inc33:                                        ; preds = %for.inc30, %for.end
  %inc34 = add nuw i32 %i.031, 1
  %exitcond43.not = icmp eq i32 %i.031, %0
  br i1 %exitcond43.not, label %for.cond36.preheader, label %for.cond1.preheader, !llvm.loop !17

for.body38:                                       ; preds = %for.cond36.preheader, %for.inc44
  %j.333 = phi i32 [ 999, %for.cond36.preheader ], [ %dec45, %for.inc44 ]
  %idxprom39 = zext nneg i32 %j.333 to i64
  %arrayidx40 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %idxprom39
  %11 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41.not = icmp eq i32 %11, 0
  br i1 %cmp41.not, label %for.inc44, label %for.end46

for.inc44:                                        ; preds = %for.body38
  %dec45 = add nsw i32 %j.333, -1
  %cmp37.not = icmp eq i32 %j.333, 0
  br i1 %cmp37.not, label %for.end46, label %for.body38, !llvm.loop !18

for.end46:                                        ; preds = %for.body38, %for.inc44
  %len.2 = phi i32 [ %len.0.lcssa, %for.inc44 ], [ %j.333, %for.body38 ]
  %cmp4834 = icmp sgt i32 %len.2, -1
  br i1 %cmp4834, label %for.body49.preheader, label %for.end55

for.body49.preheader:                             ; preds = %for.end46
  %12 = zext nneg i32 %len.2 to i64
  br label %for.body49

for.body49:                                       ; preds = %for.body49.preheader, %for.body49
  %indvars.iv44 = phi i64 [ %12, %for.body49.preheader ], [ %indvars.iv.next45, %for.body49 ]
  %arrayidx51 = getelementptr inbounds nuw [1000 x i32], ptr %num, i64 0, i64 %indvars.iv44
  %13 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %call52 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %13)
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  %cmp48.not = icmp eq i64 %indvars.iv44, 0
  br i1 %cmp48.not, label %for.end55, label %for.body49, !llvm.loop !19

for.end55:                                        ; preds = %for.body49, %for.end46
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !20
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %14 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !22
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end55
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end55
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 56
  %15 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !40
  %tobool.not.i1.i.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %14, i64 67
  %16 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %14)
  %vtable.i.i.i = load ptr, ptr %14, align 8, !tbaa !20
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %17 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %17(ptr noundef nonnull align 8 dereferenceable(570) %14, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %16, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
!12 = distinct !{!12, !10, !11, !13, !14}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !10, !11, !13}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
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
