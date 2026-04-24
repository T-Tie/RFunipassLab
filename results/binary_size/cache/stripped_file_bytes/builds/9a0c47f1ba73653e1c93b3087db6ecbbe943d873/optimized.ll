; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvdqa8qin.cpp"
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
  %N = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %result) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, i8 0, i64 400, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %result, i8 0, i64 400, i1 false)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  store i32 1, ptr %a, align 16, !tbaa !5
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp.not25 = icmp slt i32 %0, 1
  br i1 %cmp.not25, label %while.cond.preheader, label %vector.ph

vector.ph:                                        ; preds = %entry, %for.body28.preheader
  %i.026 = phi i32 [ %inc37, %for.body28.preheader ], [ 1, %entry ]
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %1, align 16, !tbaa !5
  %2 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %3 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %index
  store <4 x i32> %2, ptr %3, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %4 = icmp eq i64 %index.next, 100
  br i1 %4, label %for.body10, label %vector.body, !llvm.loop !9

for.body10:                                       ; preds = %vector.body, %for.inc23
  %indvars.iv30 = phi i64 [ %indvars.iv.next31.pre-phi, %for.inc23 ], [ 0, %vector.body ]
  %arrayidx12 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv30
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %5, 9
  br i1 %cmp13, label %if.then, label %for.body10.for.inc23_crit_edge

for.body10.for.inc23_crit_edge:                   ; preds = %for.body10
  %.pre = add nuw nsw i64 %indvars.iv30, 1
  br label %for.inc23

if.then:                                          ; preds = %for.body10
  %div = udiv i32 %5, 10
  %6 = add nuw nsw i64 %indvars.iv30, 1
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %6
  %7 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add18 = add nsw i32 %7, %div
  store i32 %add18, ptr %arrayidx17, align 4, !tbaa !5
  %rem21 = urem i32 %5, 10
  store i32 %rem21, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc23

for.inc23:                                        ; preds = %for.body10.for.inc23_crit_edge, %if.then
  %indvars.iv.next31.pre-phi = phi i64 [ %.pre, %for.body10.for.inc23_crit_edge ], [ %6, %if.then ]
  %exitcond34.not = icmp eq i64 %indvars.iv.next31.pre-phi, 100
  br i1 %exitcond34.not, label %for.body28.preheader, label %for.body10, !llvm.loop !14

for.body28.preheader:                             ; preds = %for.inc23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %a, ptr noundef nonnull align 16 dereferenceable(400) %result, i64 400, i1 false), !tbaa !5
  %inc37 = add nuw i32 %i.026, 1
  %exitcond38.not = icmp eq i32 %i.026, %0
  br i1 %exitcond38.not, label %while.cond.preheader, label %vector.ph, !llvm.loop !15

while.cond.preheader:                             ; preds = %for.body28.preheader, %entry
  br label %while.cond

while.cond:                                       ; preds = %while.cond.preheader, %while.cond
  %indvars.iv42 = phi i32 [ %indvars.iv.next43, %while.cond ], [ 99, %while.cond.preheader ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %while.cond ], [ 99, %while.cond.preheader ]
  %arrayidx40 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %indvars.iv39
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp eq i32 %8, 0
  %indvars.iv.next40 = add nsw i64 %indvars.iv39, -1
  %indvars.iv.next43 = add i32 %indvars.iv42, -1
  br i1 %cmp41, label %while.cond, label %for.cond42.preheader, !llvm.loop !16

for.cond42.preheader:                             ; preds = %while.cond
  %cmp4327 = icmp sgt i64 %indvars.iv39, -1
  br i1 %cmp4327, label %for.body44.preheader, label %for.end50

for.body44.preheader:                             ; preds = %for.cond42.preheader
  %9 = zext i32 %indvars.iv42 to i64
  br label %for.body44

for.body44:                                       ; preds = %for.body44.preheader, %for.body44
  %indvars.iv44 = phi i64 [ %9, %for.body44.preheader ], [ %indvars.iv.next45, %for.body44 ]
  %arrayidx46 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv44
  %10 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %call47 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %10)
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, -1
  %cmp43.not = icmp eq i64 %indvars.iv44, 0
  br i1 %cmp43.not, label %for.end50, label %for.body44, !llvm.loop !17

for.end50:                                        ; preds = %for.body44, %for.cond42.preheader
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !18
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %11 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !20
  %tobool.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end50
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end50
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 56
  %12 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !38
  %tobool.not.i1.i.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %11, i64 67
  %13 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %11)
  %vtable.i.i.i = load ptr, ptr %11, align 8, !tbaa !18
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %14 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %14(ptr noundef nonnull align 8 dereferenceable(570) %11, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %13, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %result) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
