; ModuleID = '<stdin>'
source_filename = "/tmp/tmp75c5u4q0.cpp"
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
  %call36 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable37 = load ptr, ptr %call36, align 8, !tbaa !5
  %vbase.offset.ptr38 = getelementptr i8, ptr %vtable37, i64 -24
  %vbase.offset39 = load i64, ptr %vbase.offset.ptr38, align 8
  %add.ptr40 = getelementptr inbounds i8, ptr %call36, i64 %vbase.offset39
  %_M_streambuf_state.i.i.i41 = getelementptr inbounds nuw i8, ptr %add.ptr40, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i41, align 8, !tbaa !8
  %and.i.i.i42 = and i32 %0, 5
  %cmp.i.not.i43 = icmp eq i32 %and.i.i.i42, 0
  %1 = load i32, ptr %a, align 16
  %cmp44 = icmp ne i32 %1, -1
  %2 = select i1 %cmp.i.not.i43, i1 %cmp44, i1 false
  br i1 %2, label %while.cond3.preheader.lr.ph, label %while.end39

while.cond3.preheader.lr.ph:                      ; preds = %entry
  %arrayidx416 = getelementptr inbounds nuw i8, ptr %a, i64 4
  br label %while.cond3.preheader

while.cond3.preheader:                            ; preds = %while.cond3.preheader.lr.ph, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %call517 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx416)
  %vtable618 = load ptr, ptr %call517, align 8, !tbaa !5
  %vbase.offset.ptr719 = getelementptr i8, ptr %vtable618, i64 -24
  %vbase.offset820 = load i64, ptr %vbase.offset.ptr719, align 8
  %add.ptr921 = getelementptr inbounds i8, ptr %call517, i64 %vbase.offset820
  %_M_streambuf_state.i.i.i1322 = getelementptr inbounds nuw i8, ptr %add.ptr921, i64 32
  %3 = load i32, ptr %_M_streambuf_state.i.i.i1322, align 8, !tbaa !8
  %and.i.i.i1423 = and i32 %3, 5
  %cmp.i.not.i1524 = icmp eq i32 %and.i.i.i1423, 0
  br i1 %cmp.i.not.i1524, label %land.rhs11, label %for.end36

land.rhs11:                                       ; preds = %while.cond3.preheader, %while.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body16 ], [ 1, %while.cond3.preheader ]
  %arrayidx426 = phi ptr [ %arrayidx4, %while.body16 ], [ %arrayidx416, %while.cond3.preheader ]
  %4 = load i32, ptr %arrayidx426, align 4, !tbaa !21
  %cmp14.not = icmp eq i32 %4, 0
  br i1 %cmp14.not, label %while.end, label %while.body16

while.body16:                                     ; preds = %land.rhs11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx4 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  %call5 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx4)
  %vtable6 = load ptr, ptr %call5, align 8, !tbaa !5
  %vbase.offset.ptr7 = getelementptr i8, ptr %vtable6, i64 -24
  %vbase.offset8 = load i64, ptr %vbase.offset.ptr7, align 8
  %add.ptr9 = getelementptr inbounds i8, ptr %call5, i64 %vbase.offset8
  %_M_streambuf_state.i.i.i13 = getelementptr inbounds nuw i8, ptr %add.ptr9, i64 32
  %5 = load i32, ptr %_M_streambuf_state.i.i.i13, align 8, !tbaa !8
  %and.i.i.i14 = and i32 %5, 5
  %cmp.i.not.i15 = icmp eq i32 %and.i.i.i14, 0
  br i1 %cmp.i.not.i15, label %land.rhs11, label %while.end, !llvm.loop !22

while.end:                                        ; preds = %land.rhs11, %while.body16
  %k.0.lcssa.ph.in = phi i64 [ %indvars.iv, %land.rhs11 ], [ %indvars.iv.next, %while.body16 ]
  %k.0.lcssa.ph = trunc i64 %k.0.lcssa.ph.in to i32
  %cmp1732 = icmp sgt i32 %k.0.lcssa.ph, 1
  br i1 %cmp1732, label %for.body.preheader, label %for.end36

for.body.preheader:                               ; preds = %while.end
  %sub = add i64 %k.0.lcssa.ph.in, 4294967295
  %wide.trip.count56 = and i64 %sub, 4294967295
  %wide.trip.count = and i64 %k.0.lcssa.ph.in, 2147483647
  br label %for.body20.lr.ph

for.cond.loopexit:                                ; preds = %for.body20, %middle.block
  %n.2.lcssa = phi i32 [ %19, %middle.block ], [ %n.2, %for.body20 ]
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end36, label %for.body20.lr.ph, !llvm.loop !25

for.body20.lr.ph:                                 ; preds = %for.cond.loopexit, %for.body.preheader
  %indvars.iv52 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next53, %for.cond.loopexit ]
  %indvars.iv46 = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next47, %for.cond.loopexit ]
  %n.033 = phi i32 [ 0, %for.body.preheader ], [ %n.2.lcssa, %for.cond.loopexit ]
  %6 = xor i64 %indvars.iv52, -1
  %7 = add nsw i64 %wide.trip.count, %6
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %arrayidx22 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv52
  %8 = load i32, ptr %arrayidx22, align 4, !tbaa !21
  %mul30 = shl nsw i32 %8, 1
  %min.iters.check = icmp ult i64 %7, 4
  br i1 %min.iters.check, label %for.body20.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body20.lr.ph
  %n.vec = and i64 %7, -4
  %9 = add i64 %indvars.iv46, %n.vec
  %10 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %n.033, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %8, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert60 = insertelement <4 x i32> poison, i32 %mul30, i64 0
  %broadcast.splat61 = shufflevector <4 x i32> %broadcast.splatinsert60, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %10, %vector.ph ], [ %17, %vector.body ]
  %offset.idx = add i64 %indvars.iv46, %index
  %11 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %11, align 4, !tbaa !21
  %12 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %13 = icmp eq <4 x i32> %broadcast.splat, %12
  %14 = icmp eq <4 x i32> %wide.load, %broadcast.splat61
  %15 = select <4 x i1> %13, <4 x i1> splat (i1 true), <4 x i1> %14
  %16 = zext <4 x i1> %15 to <4 x i32>
  %17 = add <4 x i32> %vec.phi, %16
  %index.next = add nuw i64 %index, 4
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %19 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %17)
  %cmp.n = icmp eq i64 %7, %n.vec
  br i1 %cmp.n, label %for.cond.loopexit, label %for.body20.preheader

for.body20.preheader:                             ; preds = %for.body20.lr.ph, %middle.block
  %indvars.iv48.ph = phi i64 [ %indvars.iv46, %for.body20.lr.ph ], [ %9, %middle.block ]
  %n.129.ph = phi i32 [ %n.033, %for.body20.lr.ph ], [ %19, %middle.block ]
  br label %for.body20

for.body20:                                       ; preds = %for.body20.preheader, %for.body20
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body20 ], [ %indvars.iv48.ph, %for.body20.preheader ]
  %n.129 = phi i32 [ %n.2, %for.body20 ], [ %n.129.ph, %for.body20.preheader ]
  %arrayidx24 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv48
  %20 = load i32, ptr %arrayidx24, align 4, !tbaa !21
  %mul = shl nsw i32 %20, 1
  %cmp25 = icmp eq i32 %8, %mul
  %cmp31 = icmp eq i32 %20, %mul30
  %or.cond = select i1 %cmp25, i1 true, i1 %cmp31
  %inc32 = zext i1 %or.cond to i32
  %n.2 = add nsw i32 %n.129, %inc32
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body20, !llvm.loop !29

for.end36:                                        ; preds = %for.cond.loopexit, %while.cond3.preheader, %while.end
  %n.0.lcssa = phi i32 [ 0, %while.end ], [ 0, %while.cond3.preheader ], [ %n.2.lcssa, %for.cond.loopexit ]
  %call37 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %n.0.lcssa)
  %vtable.i = load ptr, ptr %call37, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call37, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %21 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !30
  %tobool.not.i.i.i = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end36
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end36
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 56
  %22 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !38
  %tobool.not.i1.i.i = icmp eq i8 %22, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %21, i64 67
  %23 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %21)
  %vtable.i.i.i = load ptr, ptr %21, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %24 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %21, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %23, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call37, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %a)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %25 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %25, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %26 = load i32, ptr %a, align 16
  %cmp = icmp ne i32 %26, -1
  %27 = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %27, label %while.cond3.preheader, label %while.end39, !llvm.loop !45

while.end39:                                      ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
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
!22 = distinct !{!22, !23, !24}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.unroll.disable"}
!25 = distinct !{!25, !23, !24}
!26 = distinct !{!26, !23, !24, !27, !28}
!27 = !{!"llvm.loop.isvectorized", i32 1}
!28 = !{!"llvm.loop.unroll.runtime.disable"}
!29 = distinct !{!29, !23, !24, !27}
!30 = !{!31, !35, i64 240}
!31 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !32, i64 216, !11, i64 224, !33, i64 225, !34, i64 232, !35, i64 240, !36, i64 248, !37, i64 256}
!32 = !{!"p1 _ZTSSo", !15, i64 0}
!33 = !{!"bool", !11, i64 0}
!34 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!35 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!36 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!37 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!38 = !{!39, !11, i64 56}
!39 = !{!"_ZTSSt5ctypeIcE", !40, i64 0, !41, i64 16, !33, i64 24, !42, i64 32, !42, i64 40, !43, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!40 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!41 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!42 = !{!"p1 int", !15, i64 0}
!43 = !{!"p1 short", !15, i64 0}
!44 = !{!11, !11, i64 0}
!45 = distinct !{!45, !23, !24}
