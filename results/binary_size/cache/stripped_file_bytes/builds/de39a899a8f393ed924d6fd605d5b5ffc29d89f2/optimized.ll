; ModuleID = '<stdin>'
source_filename = "/tmp/tmprn0nm6uo.cpp"
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
  %power = alloca i32, align 4
  %output = alloca [34 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %power) #5
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %output) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %output, i8 0, i64 136, i1 false)
  store i32 1, ptr %output, align 16
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %power)
  %0 = load i32, ptr %power, align 4, !tbaa !5
  %cmp.not17 = icmp slt i32 %0, 1
  br i1 %cmp.not17, label %for.body23.preheader, label %vector.ph

vector.ph:                                        ; preds = %entry, %for.inc18
  %i.018 = phi i32 [ %inc19, %for.inc18 ], [ 1, %entry ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  store <4 x i32> %2, ptr %1, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, 32
  br i1 %3, label %for.body3, label %vector.body, !llvm.loop !9

for.body3:                                        ; preds = %vector.body, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 32, %vector.body ]
  %arrayidx = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %4, 1
  store i32 %mul, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 34
  br i1 %exitcond.not, label %for.body6, label %for.body3, !llvm.loop !14

for.body6:                                        ; preds = %for.body3, %for.inc15
  %indvars.iv22 = phi i64 [ %indvars.iv.next23.pre-phi, %for.inc15 ], [ 0, %for.body3 ]
  %arrayidx8 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %indvars.iv22
  %5 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %5, 9
  br i1 %cmp9, label %if.then, label %for.body6.for.inc15_crit_edge

for.body6.for.inc15_crit_edge:                    ; preds = %for.body6
  %.pre = add nuw nsw i64 %indvars.iv22, 1
  br label %for.inc15

if.then:                                          ; preds = %for.body6
  %sub = add nsw i32 %5, -10
  store i32 %sub, ptr %arrayidx8, align 4, !tbaa !5
  %6 = add nuw nsw i64 %indvars.iv22, 1
  %arrayidx13 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %inc14 = add nsw i32 %7, 1
  store i32 %inc14, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.inc15

for.inc15:                                        ; preds = %for.body6.for.inc15_crit_edge, %if.then
  %indvars.iv.next23.pre-phi = phi i64 [ %.pre, %for.body6.for.inc15_crit_edge ], [ %6, %if.then ]
  %exitcond26.not = icmp eq i64 %indvars.iv.next23.pre-phi, 34
  br i1 %exitcond26.not, label %for.inc18, label %for.body6, !llvm.loop !15

for.inc18:                                        ; preds = %for.inc15
  %inc19 = add nuw i32 %i.018, 1
  %exitcond27.not = icmp eq i32 %i.018, %0
  br i1 %exitcond27.not, label %for.body23.preheader, label %vector.ph, !llvm.loop !16

for.body23.preheader:                             ; preds = %for.inc18, %entry
  br label %for.body23

for.body23:                                       ; preds = %for.body23.preheader, %for.inc29
  %numEnd.019 = phi i32 [ %dec, %for.inc29 ], [ 33, %for.body23.preheader ]
  %idxprom24 = zext nneg i32 %numEnd.019 to i64
  %arrayidx25 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %idxprom24
  %8 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %8, 0
  br i1 %cmp26, label %for.inc29, label %for.end30split

for.inc29:                                        ; preds = %for.body23
  %dec = add nsw i32 %numEnd.019, -1
  %cmp22 = icmp samesign ugt i32 %numEnd.019, 1
  br i1 %cmp22, label %for.body23, label %for.inc29.for.end30_crit_edge, !llvm.loop !17

for.inc29.for.end30_crit_edge:                    ; preds = %for.inc29
  br label %for.body33.preheader, !llvm.loop !17

for.end30split:                                   ; preds = %for.body23
  %9 = zext nneg i32 %numEnd.019 to i64
  br label %for.body33.preheader

for.body33.preheader:                             ; preds = %for.end30split, %for.inc29.for.end30_crit_edge
  %indvars.iv28.ph = phi i64 [ %9, %for.end30split ], [ 0, %for.inc29.for.end30_crit_edge ]
  br label %for.body33

for.body33:                                       ; preds = %for.body33.preheader, %for.body33
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body33 ], [ %indvars.iv28.ph, %for.body33.preheader ]
  %arrayidx35 = getelementptr inbounds nuw [34 x i32], ptr %output, i64 0, i64 %indvars.iv28
  %10 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %call36 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %indvars.iv.next29 = add nsw i64 %indvars.iv28, -1
  %cmp32.not = icmp eq i64 %indvars.iv28, 0
  br i1 %cmp32.not, label %for.end39, label %for.body33, !llvm.loop !18

for.end39:                                        ; preds = %for.body33
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !19
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %11 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !21
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end39
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end39
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %12 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !39
  %tobool.not.i1.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 67
  %13 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !45
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %11)
  %vtable.i.i.i = load ptr, ptr %11, align 8, !tbaa !19
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %14 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %14(ptr noundef nonnull align 8 dereferenceable(570) %11, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %13, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %output) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %power) #5
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = !{!20, !20, i64 0}
!20 = !{!"vtable pointer", !8, i64 0}
!21 = !{!22, !36, i64 240}
!22 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !23, i64 0, !33, i64 216, !7, i64 224, !34, i64 225, !35, i64 232, !36, i64 240, !37, i64 248, !38, i64 256}
!23 = !{!"_ZTSSt8ios_base", !24, i64 8, !24, i64 16, !25, i64 24, !26, i64 28, !26, i64 32, !27, i64 40, !29, i64 48, !7, i64 64, !6, i64 192, !30, i64 200, !31, i64 208}
!24 = !{!"long", !7, i64 0}
!25 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!26 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!27 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !28, i64 0}
!28 = !{!"any pointer", !7, i64 0}
!29 = !{!"_ZTSNSt8ios_base6_WordsE", !28, i64 0, !24, i64 8}
!30 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !28, i64 0}
!31 = !{!"_ZTSSt6locale", !32, i64 0}
!32 = !{!"p1 _ZTSNSt6locale5_ImplE", !28, i64 0}
!33 = !{!"p1 _ZTSSo", !28, i64 0}
!34 = !{!"bool", !7, i64 0}
!35 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !28, i64 0}
!36 = !{!"p1 _ZTSSt5ctypeIcE", !28, i64 0}
!37 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !28, i64 0}
!38 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !28, i64 0}
!39 = !{!40, !7, i64 56}
!40 = !{!"_ZTSSt5ctypeIcE", !41, i64 0, !42, i64 16, !34, i64 24, !43, i64 32, !43, i64 40, !44, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!41 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!42 = !{!"p1 _ZTS15__locale_struct", !28, i64 0}
!43 = !{!"p1 int", !28, i64 0}
!44 = !{!"p1 short", !28, i64 0}
!45 = !{!7, !7, i64 0}
