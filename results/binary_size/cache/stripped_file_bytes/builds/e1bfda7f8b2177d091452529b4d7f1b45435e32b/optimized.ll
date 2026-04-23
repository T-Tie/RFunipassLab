; ModuleID = '<stdin>'
source_filename = "/tmp/tmpi7odvchx.cpp"
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
  %a = alloca [16 x double], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %a) #5
  %call.i22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %vtable23 = load ptr, ptr %call.i22, align 8, !tbaa !5
  %vbase.offset.ptr24 = getelementptr i8, ptr %vtable23, i64 -24
  %vbase.offset25 = load i64, ptr %vbase.offset.ptr24, align 8
  %add.ptr26 = getelementptr inbounds i8, ptr %call.i22, i64 %vbase.offset25
  %_M_streambuf_state.i.i.i27 = getelementptr inbounds nuw i8, ptr %add.ptr26, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i27, align 8, !tbaa !8
  %and.i.i.i28 = and i32 %0, 5
  %cmp.i.not.i29 = icmp eq i32 %and.i.i.i28, 0
  %1 = load double, ptr %a, align 16
  %cmp30 = fcmp une double %1, -1.000000e+00
  %or.cond.not31 = select i1 %cmp.i.not.i29, i1 %cmp30, i1 false
  br i1 %or.cond.not31, label %do.body, label %while.end

do.body:                                          ; preds = %entry, %do.body.backedge
  %indvars.iv43 = phi i32 [ %indvars.iv43.be, %do.body.backedge ], [ 0, %entry ]
  %indvars.iv38 = phi i32 [ %indvars.iv38.be, %do.body.backedge ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.be, %do.body.backedge ], [ 0, %entry ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx3 = getelementptr inbounds nuw [16 x double], ptr %a, i64 0, i64 %indvars.iv.next
  %call.i13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %arrayidx3)
  %2 = load double, ptr %arrayidx3, align 8, !tbaa !21
  %cmp7 = fcmp une double %2, 0.000000e+00
  %indvars.iv.next39 = add nuw i32 %indvars.iv38, 1
  %indvars.iv.next44 = add nuw i32 %indvars.iv43, 1
  br i1 %cmp7, label %do.body.backedge, label %for.cond.preheader

do.body.backedge:                                 ; preds = %do.body, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %indvars.iv43.be = phi i32 [ %indvars.iv.next44, %do.body ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %indvars.iv38.be = phi i32 [ %indvars.iv.next39, %do.body ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %indvars.iv.be = phi i64 [ %indvars.iv.next, %do.body ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  br label %do.body, !llvm.loop !23

for.cond.preheader:                               ; preds = %do.body
  %cmp818.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp818.not, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %for.cond.preheader
  %wide.trip.count45 = zext i32 %indvars.iv43 to i64
  %wide.trip.count = zext i32 %indvars.iv38 to i64
  br label %for.body12.lr.ph

for.cond.loopexit:                                ; preds = %for.body12, %middle.block
  %count.2.lcssa = phi i32 [ %22, %middle.block ], [ %count.2, %for.body12 ]
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond46.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count45
  br i1 %exitcond46.not, label %for.cond.cleanup, label %for.body12.lr.ph, !llvm.loop !26

for.cond.cleanup:                                 ; preds = %for.cond.loopexit, %for.cond.preheader
  %count.0.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %count.2.lcssa, %for.cond.loopexit ]
  %call30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %count.0.lcssa)
  %vtable.i = load ptr, ptr %call30, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call30, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %3 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !27
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56
  %4 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !35
  %tobool.not.i1.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 67
  %5 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !41
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %3)
  %vtable.i.i.i = load ptr, ptr %3, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %6 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %6(ptr noundef nonnull align 8 dereferenceable(570) %3, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %5, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call30, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call.i = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 8 dereferenceable(8) %a)
  %vtable = load ptr, ptr %call.i, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call.i, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %7 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %7, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %8 = load double, ptr %a, align 16
  %cmp = fcmp une double %8, -1.000000e+00
  %or.cond.not = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %or.cond.not, label %do.body.backedge, label %while.end

for.body12.lr.ph:                                 ; preds = %for.cond.loopexit, %for.body.preheader
  %indvars.iv40 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next41, %for.cond.loopexit ]
  %indvars.iv33 = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next34, %for.cond.loopexit ]
  %count.019 = phi i32 [ 0, %for.body.preheader ], [ %count.2.lcssa, %for.cond.loopexit ]
  %9 = sub nsw i64 %wide.trip.count45, %indvars.iv40
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %arrayidx16 = getelementptr inbounds nuw [16 x double], ptr %a, i64 0, i64 %indvars.iv40
  %10 = load double, ptr %arrayidx16, align 8, !tbaa !21
  %min.iters.check = icmp ult i64 %9, 2
  br i1 %min.iters.check, label %for.body12.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body12.lr.ph
  %n.vec = and i64 %9, -2
  %11 = add i64 %indvars.iv33, %n.vec
  %12 = insertelement <2 x i32> <i32 poison, i32 0>, i32 %count.019, i64 0
  %broadcast.splatinsert = insertelement <2 x double> poison, double %10, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x i32> [ %12, %vector.ph ], [ %20, %vector.body ]
  %offset.idx = add i64 %indvars.iv33, %index
  %13 = getelementptr inbounds nuw [16 x double], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <2 x double>, ptr %13, align 8, !tbaa !21
  %14 = fdiv <2 x double> %wide.load, %broadcast.splat
  %15 = fcmp oeq <2 x double> %14, splat (double 2.000000e+00)
  %16 = fdiv <2 x double> %broadcast.splat, %wide.load
  %17 = fcmp oeq <2 x double> %16, splat (double 2.000000e+00)
  %18 = or <2 x i1> %15, %17
  %19 = zext <2 x i1> %18 to <2 x i32>
  %20 = add <2 x i32> %vec.phi, %19
  %index.next = add nuw i64 %index, 2
  %21 = icmp eq i64 %index.next, %n.vec
  br i1 %21, label %middle.block, label %vector.body, !llvm.loop !42

middle.block:                                     ; preds = %vector.body
  %22 = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %20)
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %for.cond.loopexit, label %for.body12.preheader

for.body12.preheader:                             ; preds = %for.body12.lr.ph, %middle.block
  %indvars.iv35.ph = phi i64 [ %indvars.iv33, %for.body12.lr.ph ], [ %11, %middle.block ]
  %count.116.ph = phi i32 [ %count.019, %for.body12.lr.ph ], [ %22, %middle.block ]
  %23 = insertelement <2 x double> poison, double %10, i64 0
  br label %for.body12

for.body12:                                       ; preds = %for.body12.preheader, %for.body12
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body12 ], [ %indvars.iv35.ph, %for.body12.preheader ]
  %count.116 = phi i32 [ %count.2, %for.body12 ], [ %count.116.ph, %for.body12.preheader ]
  %arrayidx14 = getelementptr inbounds nuw [16 x double], ptr %a, i64 0, i64 %indvars.iv35
  %24 = load double, ptr %arrayidx14, align 8, !tbaa !21
  %25 = insertelement <2 x double> poison, double %24, i64 0
  %26 = insertelement <2 x double> %25, double %10, i64 1
  %27 = insertelement <2 x double> %23, double %24, i64 1
  %28 = fdiv <2 x double> %26, %27
  %29 = fcmp oeq <2 x double> %28, splat (double 2.000000e+00)
  %shift = shufflevector <2 x i1> %29, <2 x i1> poison, <2 x i32> <i32 1, i32 poison>
  %30 = or <2 x i1> %29, %shift
  %or.cond = extractelement <2 x i1> %30, i64 0
  %inc25 = zext i1 %or.cond to i32
  %count.2 = add nsw i32 %count.116, %inc25
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body12, !llvm.loop !45

while.end:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi10_M_extractIdEERSiRT_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #3

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #4

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
!6 = !{!"vtable pointer", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !13, i64 32}
!9 = !{!"_ZTSSt8ios_base", !10, i64 8, !10, i64 16, !12, i64 24, !13, i64 28, !13, i64 32, !14, i64 40, !16, i64 48, !11, i64 64, !17, i64 192, !18, i64 200, !19, i64 208}
!10 = !{!"long", !11, i64 0}
!11 = !{!"omnipotent char", !7, i64 0}
!12 = !{!"_ZTSSt13_Ios_Fmtflags", !11, i64 0}
!13 = !{!"_ZTSSt12_Ios_Iostate", !11, i64 0}
!14 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !15, i64 0}
!15 = !{!"any pointer", !11, i64 0}
!16 = !{!"_ZTSNSt8ios_base6_WordsE", !15, i64 0, !10, i64 8}
!17 = !{!"int", !11, i64 0}
!18 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !15, i64 0}
!19 = !{!"_ZTSSt6locale", !20, i64 0}
!20 = !{!"p1 _ZTSNSt6locale5_ImplE", !15, i64 0}
!21 = !{!22, !22, i64 0}
!22 = !{!"double", !11, i64 0}
!23 = distinct !{!23, !24, !25}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !24, !25}
!27 = !{!28, !32, i64 240}
!28 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !29, i64 216, !11, i64 224, !30, i64 225, !31, i64 232, !32, i64 240, !33, i64 248, !34, i64 256}
!29 = !{!"p1 _ZTSSo", !15, i64 0}
!30 = !{!"bool", !11, i64 0}
!31 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!32 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!33 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!34 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!35 = !{!36, !11, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !30, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!39 = !{!"p1 int", !15, i64 0}
!40 = !{!"p1 short", !15, i64 0}
!41 = !{!11, !11, i64 0}
!42 = distinct !{!42, !24, !25, !43, !44}
!43 = !{!"llvm.loop.isvectorized", i32 1}
!44 = !{!"llvm.loop.unroll.runtime.disable"}
!45 = distinct !{!45, !24, !25, !43}
