; ModuleID = '<stdin>'
source_filename = "/tmp/tmplwd05jrm.cpp"
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
  %num = alloca [100 x i32], align 16
  %x = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %num) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %num, i8 0, i64 400, i1 false)
  store i32 1, ptr %num, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %x) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x)
  %0 = load i32, ptr %x, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %0, 0
  br i1 %cmp18, label %vector.ph, label %while.cond.preheader

vector.ph:                                        ; preds = %entry, %for.inc23
  %i.019 = phi i32 [ %inc24, %for.inc23 ], [ 0, %entry ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  store <4 x i32> %2, ptr %1, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %3 = icmp eq i64 %index.next, 100
  br i1 %3, label %for.body9, label %vector.body, !llvm.loop !9

for.body9:                                        ; preds = %vector.body, %for.inc20
  %indvars.iv23 = phi i64 [ %indvars.iv.next24.pre-phi, %for.inc20 ], [ 0, %vector.body ]
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %indvars.iv23
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %4, 9
  br i1 %cmp12, label %if.then, label %for.body9.for.inc20_crit_edge

for.body9.for.inc20_crit_edge:                    ; preds = %for.body9
  %.pre = add nuw nsw i64 %indvars.iv23, 1
  br label %for.inc20

if.then:                                          ; preds = %for.body9
  %sub = add nsw i32 %4, -10
  store i32 %sub, ptr %arrayidx11, align 4, !tbaa !5
  %5 = add nuw nsw i64 %indvars.iv23, 1
  %arrayidx18 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %5
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %inc19 = add nsw i32 %6, 1
  store i32 %inc19, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.inc20

for.inc20:                                        ; preds = %for.body9.for.inc20_crit_edge, %if.then
  %indvars.iv.next24.pre-phi = phi i64 [ %.pre, %for.body9.for.inc20_crit_edge ], [ %5, %if.then ]
  %exitcond27.not = icmp eq i64 %indvars.iv.next24.pre-phi, 100
  br i1 %exitcond27.not, label %for.inc23, label %for.body9, !llvm.loop !14

for.inc23:                                        ; preds = %for.inc20
  %inc24 = add nuw nsw i32 %i.019, 1
  %exitcond28.not = icmp eq i32 %inc24, %0
  br i1 %exitcond28.not, label %while.cond.preheader, label %vector.ph, !llvm.loop !15

while.cond.preheader:                             ; preds = %for.inc23, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %indvars.iv32 = phi i32 [ %indvars.iv.next33, %while.cond ], [ 99, %while.cond.preheader ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %while.cond ], [ 99, %while.cond.preheader ]
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %num, i64 0, i64 %indvars.iv29
  %7 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %7, 0
  %indvars.iv.next30 = add nsw i64 %indvars.iv29, -1
  %indvars.iv.next33 = add i32 %indvars.iv32, -1
  br i1 %cmp28, label %while.cond, label %for.cond29.preheader, !llvm.loop !16

for.cond29.preheader:                             ; preds = %while.cond
  %cmp3020 = icmp sgt i64 %indvars.iv29, -1
  br i1 %cmp3020, label %for.body31.preheader, label %for.end37

for.body31.preheader:                             ; preds = %for.cond29.preheader
  %8 = zext i32 %indvars.iv32 to i64
  br label %for.body31

for.body31:                                       ; preds = %for.body31.preheader, %for.body31
  %indvars.iv34 = phi i64 [ %8, %for.body31.preheader ], [ %indvars.iv.next35, %for.body31 ]
  %arrayidx33 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %indvars.iv34
  %9 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %call34 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %9)
  %indvars.iv.next35 = add nsw i64 %indvars.iv34, -1
  %cmp30.not = icmp eq i64 %indvars.iv34, 0
  br i1 %cmp30.not, label %for.end37, label %for.body31, !llvm.loop !17

for.end37:                                        ; preds = %for.body31, %for.cond29.preheader
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %10 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !20
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end37
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end37
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 56
  %11 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !38
  %tobool.not.i1.i.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 67
  %12 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %10)
  %vtable.i.i.i = load ptr, ptr %10, align 8, !tbaa !18
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %13 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %13(ptr noundef nonnull align 8 dereferenceable(570) %10, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %12, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %x) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %num) #5
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !8, i64 0}
!20 = !{!21, !35, i64 240}
!21 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !22, i64 0, !32, i64 216, !7, i64 224, !33, i64 225, !34, i64 232, !35, i64 240, !36, i64 248, !37, i64 256}
!22 = !{!"_ZTSSt8ios_base", !23, i64 8, !23, i64 16, !24, i64 24, !25, i64 28, !25, i64 32, !26, i64 40, !28, i64 48, !7, i64 64, !6, i64 192, !29, i64 200, !30, i64 208}
!23 = !{!"long", !7, i64 0}
!24 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!25 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!26 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !27, i64 0}
!27 = !{!"any pointer", !7, i64 0}
!28 = !{!"_ZTSNSt8ios_base6_WordsE", !27, i64 0, !23, i64 8}
!29 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !27, i64 0}
!30 = !{!"_ZTSSt6locale", !31, i64 0}
!31 = !{!"p1 _ZTSNSt6locale5_ImplE", !27, i64 0}
!32 = !{!"p1 _ZTSSo", !27, i64 0}
!33 = !{!"bool", !7, i64 0}
!34 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !27, i64 0}
!35 = !{!"p1 _ZTSSt5ctypeIcE", !27, i64 0}
!36 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!37 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !27, i64 0}
!38 = !{!39, !7, i64 56}
!39 = !{!"_ZTSSt5ctypeIcE", !40, i64 0, !41, i64 16, !33, i64 24, !42, i64 32, !42, i64 40, !43, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!40 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!41 = !{!"p1 _ZTS15__locale_struct", !27, i64 0}
!42 = !{!"p1 int", !27, i64 0}
!43 = !{!"p1 short", !27, i64 0}
!44 = !{!7, !7, i64 0}
