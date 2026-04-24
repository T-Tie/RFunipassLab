; ModuleID = '<stdin>'
source_filename = "/tmp/tmppu4kue93.cpp"
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
  %a = alloca [15 x i32], align 16
  %b = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #5
  %call20 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %vtable21 = load ptr, ptr %call20, align 8, !tbaa !5
  %vbase.offset.ptr22 = getelementptr i8, ptr %vtable21, i64 -24
  %vbase.offset23 = load i64, ptr %vbase.offset.ptr22, align 8
  %add.ptr24 = getelementptr inbounds i8, ptr %call20, i64 %vbase.offset23
  %_M_streambuf_state.i.i.i25 = getelementptr inbounds nuw i8, ptr %add.ptr24, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i25, align 8, !tbaa !8
  %and.i.i.i26 = and i32 %0, 5
  %cmp.i.not.i27 = icmp eq i32 %and.i.i.i26, 0
  %1 = load i32, ptr %b, align 4
  %cmp28 = icmp ne i32 %1, -1
  %or.cond.not29 = select i1 %cmp.i.not.i27, i1 %cmp28, i1 false
  br i1 %or.cond.not29, label %if.else, label %while.end

if.else:                                          ; preds = %entry, %if.end31
  %2 = phi i32 [ %24, %if.end31 ], [ %1, %entry ]
  %n.030 = phi i32 [ %n.1, %if.end31 ], [ 0, %entry ]
  %cmp2 = icmp eq i32 %2, 0
  br i1 %cmp2, label %for.cond.preheader, label %if.else26

for.cond.preheader:                               ; preds = %if.else
  %cmp4.not.not16 = icmp sgt i32 %n.030, 0
  br i1 %cmp4.not.not16, label %for.body.preheader, label %for.cond.cleanup

for.body.preheader:                               ; preds = %for.cond.preheader
  %3 = zext nneg i32 %n.030 to i64
  %wide.trip.count37 = zext nneg i32 %n.030 to i64
  br label %for.body

for.cond.loopexit:                                ; preds = %for.body9, %middle.block, %for.body
  %sum.2.lcssa = phi i32 [ %sum.117, %for.body ], [ %21, %middle.block ], [ %sum.3, %for.body9 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond.cleanup, label %for.body, !llvm.loop !21

for.cond.cleanup:                                 ; preds = %for.cond.loopexit, %for.cond.preheader
  %sum.1.lcssa = phi i32 [ 0, %for.cond.preheader ], [ %sum.2.lcssa, %for.cond.loopexit ]
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.1.lcssa)
  %vtable.i = load ptr, ptr %call24, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call24, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %4 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !24
  %tobool.not.i.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.cond.cleanup
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.cond.cleanup
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %5 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !32
  %tobool.not.i1.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 67
  %6 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !38
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %4)
  %vtable.i.i.i = load ptr, ptr %4, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %7 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %7(ptr noundef nonnull align 8 dereferenceable(570) %4, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %6, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call24, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  br label %if.end31

for.body:                                         ; preds = %for.body.preheader, %for.cond.loopexit
  %indvars.iv34 = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next35, %for.cond.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.body.preheader ], [ %indvars.iv.next, %for.cond.loopexit ]
  %sum.117 = phi i32 [ 0, %for.body.preheader ], [ %sum.2.lcssa, %for.cond.loopexit ]
  %8 = xor i64 %indvars.iv34, -1
  %9 = add nsw i64 %8, %wide.trip.count37
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %cmp7.not.not13 = icmp samesign ult i64 %indvars.iv.next35, %3
  br i1 %cmp7.not.not13, label %for.body9.lr.ph, label %for.cond.loopexit

for.body9.lr.ph:                                  ; preds = %for.body
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %10 = load i32, ptr %arrayidx, align 4, !tbaa !39
  %mul17 = shl nsw i32 %10, 1
  %min.iters.check = icmp ult i64 %9, 4
  br i1 %min.iters.check, label %for.body9.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body9.lr.ph
  %n.vec = and i64 %9, -4
  %11 = add i64 %indvars.iv, %n.vec
  %12 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %sum.117, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %10, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert39 = insertelement <4 x i32> poison, i32 %mul17, i64 0
  %broadcast.splat40 = shufflevector <4 x i32> %broadcast.splatinsert39, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %12, %vector.ph ], [ %19, %vector.body ]
  %offset.idx = add i64 %indvars.iv, %index
  %13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %13, align 4, !tbaa !39
  %14 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %15 = icmp eq <4 x i32> %broadcast.splat, %14
  %16 = icmp eq <4 x i32> %wide.load, %broadcast.splat40
  %17 = select <4 x i1> %15, <4 x i1> splat (i1 true), <4 x i1> %16
  %18 = zext <4 x i1> %17 to <4 x i32>
  %19 = add <4 x i32> %vec.phi, %18
  %index.next = add nuw i64 %index, 4
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !40

middle.block:                                     ; preds = %vector.body
  %21 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %cmp.n = icmp eq i64 %9, %n.vec
  br i1 %cmp.n, label %for.cond.loopexit, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.body9.lr.ph, %middle.block
  %indvars.iv31.ph = phi i64 [ %indvars.iv, %for.body9.lr.ph ], [ %11, %middle.block ]
  %sum.214.ph = phi i32 [ %sum.117, %for.body9.lr.ph ], [ %21, %middle.block ]
  br label %for.body9

for.body9:                                        ; preds = %for.body9.preheader, %for.body9
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body9 ], [ %indvars.iv31.ph, %for.body9.preheader ]
  %sum.214 = phi i32 [ %sum.3, %for.body9 ], [ %sum.214.ph, %for.body9.preheader ]
  %arrayidx11 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv31
  %22 = load i32, ptr %arrayidx11, align 4, !tbaa !39
  %mul = shl nsw i32 %22, 1
  %cmp12 = icmp eq i32 %10, %mul
  %cmp18 = icmp eq i32 %22, %mul17
  %or.cond = select i1 %cmp12, i1 true, i1 %cmp18
  %inc = zext i1 %or.cond to i32
  %sum.3 = add nsw i32 %sum.214, %inc
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next32, %wide.trip.count37
  br i1 %exitcond.not, label %for.cond.loopexit, label %for.body9, !llvm.loop !43

if.else26:                                        ; preds = %if.else
  %idxprom27 = sext i32 %n.030 to i64
  %arrayidx28 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom27
  store i32 %2, ptr %arrayidx28, align 4, !tbaa !39
  %inc29 = add nsw i32 %n.030, 1
  br label %if.end31

if.end31:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %if.else26
  %n.1 = phi i32 [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %inc29, %if.else26 ]
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %b)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %23 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %23, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %24 = load i32, ptr %b, align 4
  %cmp = icmp ne i32 %24, -1
  %or.cond.not = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %or.cond.not, label %if.else, label %while.end, !llvm.loop !44

while.end:                                        ; preds = %if.end31, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %a) #5
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
!21 = distinct !{!21, !22, !23}
!22 = !{!"llvm.loop.mustprogress"}
!23 = !{!"llvm.loop.unroll.disable"}
!24 = !{!25, !29, i64 240}
!25 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !9, i64 0, !26, i64 216, !11, i64 224, !27, i64 225, !28, i64 232, !29, i64 240, !30, i64 248, !31, i64 256}
!26 = !{!"p1 _ZTSSo", !15, i64 0}
!27 = !{!"bool", !11, i64 0}
!28 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !15, i64 0}
!29 = !{!"p1 _ZTSSt5ctypeIcE", !15, i64 0}
!30 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!31 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !15, i64 0}
!32 = !{!33, !11, i64 56}
!33 = !{!"_ZTSSt5ctypeIcE", !34, i64 0, !35, i64 16, !27, i64 24, !36, i64 32, !36, i64 40, !37, i64 48, !11, i64 56, !11, i64 57, !11, i64 313, !11, i64 569}
!34 = !{!"_ZTSNSt6locale5facetE", !17, i64 8}
!35 = !{!"p1 _ZTS15__locale_struct", !15, i64 0}
!36 = !{!"p1 int", !15, i64 0}
!37 = !{!"p1 short", !15, i64 0}
!38 = !{!11, !11, i64 0}
!39 = !{!17, !17, i64 0}
!40 = distinct !{!40, !22, !23, !41, !42}
!41 = !{!"llvm.loop.isvectorized", i32 1}
!42 = !{!"llvm.loop.unroll.runtime.disable"}
!43 = distinct !{!43, !22, !23, !41}
!44 = distinct !{!44, !22, !23}
