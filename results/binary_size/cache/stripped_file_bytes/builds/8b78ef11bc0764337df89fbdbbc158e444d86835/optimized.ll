; ModuleID = '<stdin>'
source_filename = "/tmp/tmpvxvgi4hv.cpp"
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
  %num = alloca [17 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %num) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call16 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable17 = load ptr, ptr %call16, align 8, !tbaa !5
  %vbase.offset.ptr18 = getelementptr i8, ptr %vtable17, i64 -24
  %vbase.offset19 = load i64, ptr %vbase.offset.ptr18, align 8
  %add.ptr20 = getelementptr inbounds i8, ptr %call16, i64 %vbase.offset19
  %_M_streambuf_state.i.i.i21 = getelementptr inbounds nuw i8, ptr %add.ptr20, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i21, align 8, !tbaa !8
  %and.i.i.i22 = and i32 %0, 5
  %cmp.i.not.i23 = icmp eq i32 %and.i.i.i22, 0
  %1 = load i32, ptr %n, align 4
  %cmp24 = icmp ne i32 %1, -1
  %2 = select i1 %cmp.i.not.i23, i1 %cmp24, i1 false
  br i1 %2, label %while.body, label %while.end

while.body:                                       ; preds = %entry, %if.end20
  %3 = phi i32 [ %21, %if.end20 ], [ %1, %entry ]
  %count.025 = phi i32 [ %count.1, %if.end20 ], [ 1, %entry ]
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %while.body
  %cmp212 = icmp sgt i32 %count.025, 1
  br i1 %cmp212, label %for.cond3.preheader.us.preheader, label %for.cond.cleanup

for.cond3.preheader.us.preheader:                 ; preds = %for.cond.preheader
  %wide.trip.count30 = zext nneg i32 %count.025 to i64
  %4 = add nsw i64 %wide.trip.count30, -1
  %min.iters.check = icmp ult i32 %count.025, 5
  %n.vec = and i64 %4, -4
  %5 = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %4, %n.vec
  br label %for.cond3.preheader.us

for.cond3.preheader.us:                           ; preds = %for.cond3.preheader.us.preheader, %for.cond3.for.cond.cleanup5_crit_edge.us
  %indvars.iv27 = phi i64 [ 1, %for.cond3.preheader.us.preheader ], [ %indvars.iv.next28, %for.cond3.for.cond.cleanup5_crit_edge.us ]
  %result.213.us = phi i32 [ 0, %for.cond3.preheader.us.preheader ], [ %spec.select.us.lcssa, %for.cond3.for.cond.cleanup5_crit_edge.us ]
  %arrayidx8.us = getelementptr inbounds nuw [17 x i32], ptr %num, i64 0, i64 %indvars.iv27
  %6 = load i32, ptr %arrayidx8.us, align 4, !tbaa !21
  br i1 %min.iters.check, label %for.body6.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.cond3.preheader.us
  %7 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %result.213.us, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %6, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %7, %vector.ph ], [ %12, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %8 = getelementptr inbounds nuw [17 x i32], ptr %num, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !21
  %9 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %10 = icmp eq <4 x i32> %broadcast.splat, %9
  %11 = zext <4 x i1> %10 to <4 x i32>
  %12 = add <4 x i32> %vec.phi, %11
  %index.next = add nuw i64 %index, 4
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !22

middle.block:                                     ; preds = %vector.body
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  br i1 %cmp.n, label %for.cond3.for.cond.cleanup5_crit_edge.us, label %for.body6.us.preheader

for.body6.us.preheader:                           ; preds = %for.cond3.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %for.cond3.preheader.us ], [ %5, %middle.block ]
  %result.310.us.ph = phi i32 [ %result.213.us, %for.cond3.preheader.us ], [ %14, %middle.block ]
  br label %for.body6.us

for.body6.us:                                     ; preds = %for.body6.us.preheader, %for.body6.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body6.us ], [ %indvars.iv.ph, %for.body6.us.preheader ]
  %result.310.us = phi i32 [ %spec.select.us, %for.body6.us ], [ %result.310.us.ph, %for.body6.us.preheader ]
  %arrayidx10.us = getelementptr inbounds nuw [17 x i32], ptr %num, i64 0, i64 %indvars.iv
  %15 = load i32, ptr %arrayidx10.us, align 4, !tbaa !21
  %mul.us = shl nsw i32 %15, 1
  %cmp11.us = icmp eq i32 %6, %mul.us
  %inc13.us = zext i1 %cmp11.us to i32
  %spec.select.us = add nsw i32 %result.310.us, %inc13.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count30
  br i1 %exitcond.not, label %for.cond3.for.cond.cleanup5_crit_edge.us, label %for.body6.us, !llvm.loop !27

for.cond3.for.cond.cleanup5_crit_edge.us:         ; preds = %for.body6.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %14, %middle.block ], [ %spec.select.us, %for.body6.us ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond31.not = icmp eq i64 %indvars.iv.next28, %wide.trip.count30
  br i1 %exitcond31.not, label %for.cond.cleanup, label %for.cond3.preheader.us, !llvm.loop !28

if.then:                                          ; preds = %while.body
  %idxprom = sext i32 %count.025 to i64
  %arrayidx = getelementptr inbounds [17 x i32], ptr %num, i64 0, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4, !tbaa !21
  %inc = add nsw i32 %count.025, 1
  br label %if.end20

for.cond.cleanup:                                 ; preds = %for.cond3.for.cond.cleanup5_crit_edge.us, %for.cond.preheader
  %result.2.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %spec.select.us.lcssa, %for.cond3.for.cond.cleanup5_crit_edge.us ]
  %call18 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %result.2.lcssa)
  %vtable.i = load ptr, ptr %call18, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call18, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %16 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !29
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  %17 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !37
  %tobool.not.i1.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 67
  %18 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !43
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
  %vtable.i.i.i = load ptr, ptr %16, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %19 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %19(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %18, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call18, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %if.end20

if.end20:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %if.then
  %count.1 = phi i32 [ %inc, %if.then ], [ 1, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %20 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %20, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %21 = load i32, ptr %n, align 4
  %cmp = icmp ne i32 %21, -1
  %22 = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %22, label %while.body, label %while.end, !llvm.loop !44

while.end:                                        ; preds = %if.end20, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %num) #5
  ret i32 0
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
!21 = !{!17, !17, i64 0}
!22 = distinct !{!22, !23, !24, !25, !26}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = !{!"llvm.loop.isvectorized", i32 1}
!26 = !{!"llvm.loop.unroll.runtime.disable"}
!27 = distinct !{!27, !23, !24, !25}
!28 = distinct !{!28, !23, !24}
!29 = !{!30, !34, i64 240}
!30 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !31, i64 216, !11, i64 224, !32, i64 225, !33, i64 232, !34, i64 240, !35, i64 248, !36, i64 256}
!31 = !{!"p1 _ZTSSo", !15, i64 0}
!32 = !{!"bool", !11, i64 0}
!33 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!34 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!35 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!36 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!37 = !{!38, !11, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !32, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!41 = !{!"p1 int", !15, i64 0}
!42 = !{!"p1 short", !15, i64 0}
!43 = !{!11, !11, i64 0}
!44 = distinct !{!44, !23, !24}
