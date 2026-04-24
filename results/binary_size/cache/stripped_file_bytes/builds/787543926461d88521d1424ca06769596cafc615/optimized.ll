; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv8c_l6np.cpp"
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
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %a, i8 -1, i64 64, i1 false), !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp1.not24 = icmp eq i32 %0, -1
  br i1 %cmp1.not24, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end42
  %1 = phi i32 [ %20, %if.end42 ], [ %0, %entry ]
  %j.025 = phi i32 [ %j.1, %if.end42 ], [ 0, %entry ]
  %idxprom2 = sext i32 %j.025 to i64
  %arrayidx3 = getelementptr inbounds [16 x i32], ptr %a, i64 0, i64 %idxprom2
  store i32 %1, ptr %arrayidx3, align 4, !tbaa !5
  %inc4 = add nsw i32 %j.025, 1
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %for.body8, label %if.end42

for.cond6.loopexit:                               ; preds = %for.body11, %middle.block, %for.body8
  %n.3.lcssa = phi i32 [ %n.222, %for.body8 ], [ %14, %middle.block ], [ %n.4, %for.body11 ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond33.not = icmp eq i64 %indvars.iv.next31, 15
  br i1 %exitcond33.not, label %for.end31, label %for.body8, !llvm.loop !9

for.body8:                                        ; preds = %while.body, %for.cond6.loopexit
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.cond6.loopexit ], [ 0, %while.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond6.loopexit ], [ 1, %while.body ]
  %n.222 = phi i32 [ %n.3.lcssa, %for.cond6.loopexit ], [ 0, %while.body ]
  %2 = sub nsw i64 14, %indvars.iv30
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %cmp1018 = icmp samesign ult i64 %indvars.iv30, 14
  br i1 %cmp1018, label %for.body11.lr.ph, label %for.cond6.loopexit

for.body11.lr.ph:                                 ; preds = %for.body8
  %arrayidx15 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv30
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %for.body11.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body11.lr.ph
  %n.vec = and i64 %2, -4
  %4 = add i64 %indvars.iv, %n.vec
  %5 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %n.222, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %3, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert37 = insertelement <4 x i32> poison, i32 %mul, i64 0
  %broadcast.splat38 = shufflevector <4 x i32> %broadcast.splatinsert37, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %5, %vector.ph ], [ %12, %vector.body ]
  %offset.idx = add i64 %indvars.iv, %index
  %6 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %6, align 4, !tbaa !5
  %7 = icmp eq <4 x i32> %wide.load, %broadcast.splat38
  %8 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %9 = icmp eq <4 x i32> %broadcast.splat, %8
  %10 = select <4 x i1> %7, <4 x i1> splat (i1 true), <4 x i1> %9
  %11 = zext <4 x i1> %10 to <4 x i32>
  %12 = add <4 x i32> %vec.phi, %11
  %index.next = add nuw i64 %index, 4
  %13 = icmp eq i64 %index.next, %n.vec
  br i1 %13, label %middle.block, label %vector.body, !llvm.loop !12

middle.block:                                     ; preds = %vector.body
  %14 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %12)
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %for.cond6.loopexit, label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.body11.lr.ph, %middle.block
  %indvars.iv27.ph = phi i64 [ %indvars.iv, %for.body11.lr.ph ], [ %4, %middle.block ]
  %n.320.ph = phi i32 [ %n.222, %for.body11.lr.ph ], [ %14, %middle.block ]
  br label %for.body11

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body11 ], [ %indvars.iv27.ph, %for.body11.preheader ]
  %n.320 = phi i32 [ %n.4, %for.body11 ], [ %n.320.ph, %for.body11.preheader ]
  %arrayidx13 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv27
  %15 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %15, %mul
  %mul21 = shl nsw i32 %15, 1
  %cmp23 = icmp eq i32 %3, %mul21
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp23
  %inc25 = zext i1 %or.cond to i32
  %n.4 = add nsw i32 %n.320, %inc25
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next28, 15
  br i1 %exitcond.not, label %for.cond6.loopexit, label %for.body11, !llvm.loop !15

for.end31:                                        ; preds = %for.cond6.loopexit
  %call32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %n.3.lcssa)
  %vtable.i = load ptr, ptr %call32, align 8, !tbaa !16
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call32, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %16 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !18
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end31
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end31
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  %17 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !36
  %tobool.not.i1.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 67
  %18 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !42
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
  %vtable.i.i.i = load ptr, ptr %16, align 8, !tbaa !16
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %19 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %19(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %18, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call32, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %a, i8 -1, i64 64, i1 false), !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %while.body
  %j.1 = phi i32 [ %inc4, %while.body ], [ 0, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ]
  %call43 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %cmp1.not = icmp eq i32 %20, -1
  br i1 %cmp1.not, label %while.end, label %while.body, !llvm.loop !43

while.end:                                        ; preds = %if.end42, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #6
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #6
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

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!15 = distinct !{!15, !10, !11, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"vtable pointer", !8, i64 0}
!18 = !{!19, !33, i64 240}
!19 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !20, i64 0, !30, i64 216, !7, i64 224, !31, i64 225, !32, i64 232, !33, i64 240, !34, i64 248, !35, i64 256}
!20 = !{!"_ZTSSt8ios_base", !21, i64 8, !21, i64 16, !22, i64 24, !23, i64 28, !23, i64 32, !24, i64 40, !26, i64 48, !7, i64 64, !6, i64 192, !27, i64 200, !28, i64 208}
!21 = !{!"long", !7, i64 0}
!22 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!23 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!24 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !25, i64 0}
!25 = !{!"any pointer", !7, i64 0}
!26 = !{!"_ZTSNSt8ios_base6_WordsE", !25, i64 0, !21, i64 8}
!27 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !25, i64 0}
!28 = !{!"_ZTSSt6locale", !29, i64 0}
!29 = !{!"p1 _ZTSNSt6locale5_ImplE", !25, i64 0}
!30 = !{!"p1 _ZTSSo", !25, i64 0}
!31 = !{!"bool", !7, i64 0}
!32 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !25, i64 0}
!33 = !{!"p1 _ZTSSt5ctypeIcE", !25, i64 0}
!34 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!35 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !25, i64 0}
!36 = !{!37, !7, i64 56}
!37 = !{!"_ZTSSt5ctypeIcE", !38, i64 0, !39, i64 16, !31, i64 24, !40, i64 32, !40, i64 40, !41, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!38 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!39 = !{!"p1 _ZTS15__locale_struct", !25, i64 0}
!40 = !{!"p1 int", !25, i64 0}
!41 = !{!"p1 short", !25, i64 0}
!42 = !{!7, !7, i64 0}
!43 = distinct !{!43, !10, !11}
