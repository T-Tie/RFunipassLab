; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa9rfezh9.cpp"
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
  %num = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num) #5
  %call27 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %vtable28 = load ptr, ptr %call27, align 8, !tbaa !5
  %vbase.offset.ptr29 = getelementptr i8, ptr %vtable28, i64 -24
  %vbase.offset30 = load i64, ptr %vbase.offset.ptr29, align 8
  %add.ptr31 = getelementptr inbounds i8, ptr %call27, i64 %vbase.offset30
  %_M_streambuf_state.i.i.i32 = getelementptr inbounds nuw i8, ptr %add.ptr31, i64 32
  %0 = load i32, ptr %_M_streambuf_state.i.i.i32, align 8, !tbaa !8
  %and.i.i.i33 = and i32 %0, 5
  %cmp.i.not.i34 = icmp eq i32 %and.i.i.i33, 0
  %1 = load i32, ptr %num, align 4
  %cmp35 = icmp ne i32 %1, -1
  %or.cond.not36 = select i1 %cmp.i.not.i34, i1 %cmp35, i1 false
  br i1 %or.cond.not36, label %for.cond.preheader, label %while.end

for.cond.preheader:                               ; preds = %entry, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit
  %2 = phi i32 [ %29, %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit ], [ %1, %entry ]
  %cmp317 = icmp eq i32 %2, 0
  br i1 %cmp317, label %for.end34, label %if.end5

for.cond7.preheader:                              ; preds = %if.end5
  %cmp823.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp823.not, label %for.end34, label %for.cond10.preheader.preheader

for.cond10.preheader.preheader:                   ; preds = %for.cond7.preheader
  %3 = trunc i64 %indvars.iv.next to i32
  %4 = and i64 %indvars.iv.next, 4294967295
  %wide.trip.count48 = and i64 %indvars.iv, 4294967295
  %invariant.op = add nsw i64 %4, -1
  br label %for.cond10.preheader

if.end5:                                          ; preds = %for.cond.preheader, %if.end5
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end5 ], [ 0, %for.cond.preheader ]
  %5 = phi i32 [ %6, %if.end5 ], [ %2, %for.cond.preheader ]
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %5, ptr %arrayidx, align 4, !tbaa !21
  %call6 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %cmp2 = icmp samesign ugt i64 %indvars.iv, 14
  %6 = load i32, ptr %num, align 4
  %cmp3 = icmp eq i32 %6, 0
  %or.cond1 = select i1 %cmp2, i1 true, i1 %cmp3
  br i1 %or.cond1, label %for.cond7.preheader, label %if.end5, !llvm.loop !22

for.cond10.preheader:                             ; preds = %for.cond10.preheader.preheader, %for.inc32
  %indvars.iv44 = phi i64 [ 0, %for.cond10.preheader.preheader ], [ %indvars.iv.next45, %for.inc32 ]
  %indvars.iv42 = phi i32 [ %3, %for.cond10.preheader.preheader ], [ %indvars.iv.next43, %for.inc32 ]
  %cnt.125 = phi i32 [ 0, %for.cond10.preheader.preheader ], [ %cnt.2.lcssa, %for.inc32 ]
  %7 = zext i32 %indvars.iv42 to i64
  %8 = add nsw i64 %7, -1
  %cmp1219 = icmp slt i64 %indvars.iv44, %invariant.op
  br i1 %cmp1219, label %for.body13.lr.ph, label %for.inc32

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %arrayidx15 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv44
  %9 = load i32, ptr %arrayidx15, align 4, !tbaa !21
  %mul24 = shl nsw i32 %9, 1
  %wide.trip.count = zext i32 %indvars.iv42 to i64
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %for.body13.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body13.lr.ph
  %n.vec = and i64 %8, -4
  %10 = or disjoint i64 %n.vec, 1
  %11 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %cnt.125, i64 0
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %9, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <4 x i32> poison, i32 %mul24, i64 0
  %broadcast.splat53 = shufflevector <4 x i32> %broadcast.splatinsert52, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %11, %vector.ph ], [ %19, %vector.body ]
  %offset.idx = or disjoint i64 %index, 1
  %12 = add nuw nsw i64 %offset.idx, %indvars.iv44
  %13 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %12
  %wide.load = load <4 x i32>, ptr %13, align 4, !tbaa !21
  %14 = shl nsw <4 x i32> %wide.load, splat (i32 1)
  %15 = icmp eq <4 x i32> %broadcast.splat, %14
  %16 = icmp eq <4 x i32> %wide.load, %broadcast.splat53
  %17 = select <4 x i1> %15, <4 x i1> splat (i1 true), <4 x i1> %16
  %18 = zext <4 x i1> %17 to <4 x i32>
  %19 = add <4 x i32> %vec.phi, %18
  %index.next = add nuw i64 %index, 4
  %20 = icmp eq i64 %index.next, %n.vec
  br i1 %20, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %21 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %19)
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %for.inc32, label %for.body13.preheader

for.body13.preheader:                             ; preds = %for.body13.lr.ph, %middle.block
  %indvars.iv38.ph = phi i64 [ 1, %for.body13.lr.ph ], [ %10, %middle.block ]
  %cnt.221.ph = phi i32 [ %cnt.125, %for.body13.lr.ph ], [ %21, %middle.block ]
  br label %for.body13

for.body13:                                       ; preds = %for.body13.preheader, %for.body13
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body13 ], [ %indvars.iv38.ph, %for.body13.preheader ]
  %cnt.221 = phi i32 [ %cnt.3, %for.body13 ], [ %cnt.221.ph, %for.body13.preheader ]
  %22 = add nuw nsw i64 %indvars.iv38, %indvars.iv44
  %arrayidx17 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %22
  %23 = load i32, ptr %arrayidx17, align 4, !tbaa !21
  %mul = shl nsw i32 %23, 1
  %cmp18 = icmp eq i32 %9, %mul
  %cmp25 = icmp eq i32 %23, %mul24
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp25
  %inc27 = zext i1 %or.cond to i32
  %cnt.3 = add nsw i32 %cnt.221, %inc27
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count
  br i1 %exitcond.not, label %for.inc32, label %for.body13, !llvm.loop !28

for.inc32:                                        ; preds = %for.body13, %middle.block, %for.cond10.preheader
  %cnt.2.lcssa = phi i32 [ %cnt.125, %for.cond10.preheader ], [ %21, %middle.block ], [ %cnt.3, %for.body13 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %indvars.iv.next43 = add nsw i32 %indvars.iv42, -1
  %exitcond49.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count48
  br i1 %exitcond49.not, label %for.end34, label %for.cond10.preheader, !llvm.loop !29

for.end34:                                        ; preds = %for.inc32, %for.cond.preheader, %for.cond7.preheader
  %cnt.1.lcssa = phi i32 [ 0, %for.cond7.preheader ], [ 0, %for.cond.preheader ], [ %cnt.2.lcssa, %for.inc32 ]
  %call35 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %cnt.1.lcssa)
  %vtable.i = load ptr, ptr %call35, align 8, !tbaa !5
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call35, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %24 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !30
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end34
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end34
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %24, i64 56
  %25 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !38
  %tobool.not.i1.i.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %24, i64 67
  %26 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !44
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %24)
  %vtable.i.i.i = load ptr, ptr %24, align 8, !tbaa !5
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %27 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %27(ptr noundef nonnull align 8 dereferenceable(570) %24, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %26, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call35, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %num)
  %vtable = load ptr, ptr %call, align 8, !tbaa !5
  %vbase.offset.ptr = getelementptr i8, ptr %vtable, i64 -24
  %vbase.offset = load i64, ptr %vbase.offset.ptr, align 8
  %add.ptr = getelementptr inbounds i8, ptr %call, i64 %vbase.offset
  %_M_streambuf_state.i.i.i = getelementptr inbounds nuw i8, ptr %add.ptr, i64 32
  %28 = load i32, ptr %_M_streambuf_state.i.i.i, align 8, !tbaa !8
  %and.i.i.i = and i32 %28, 5
  %cmp.i.not.i = icmp eq i32 %and.i.i.i, 0
  %29 = load i32, ptr %num, align 4
  %cmp = icmp ne i32 %29, -1
  %or.cond.not = select i1 %cmp.i.not.i, i1 %cmp, i1 false
  br i1 %or.cond.not, label %for.cond.preheader, label %while.end, !llvm.loop !45

while.end:                                        ; preds = %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num) #5
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
!25 = distinct !{!25, !23, !24, !26, !27}
!26 = !{!"llvm.loop.isvectorized", i32 1}
!27 = !{!"llvm.loop.unroll.runtime.disable"}
!28 = distinct !{!28, !23, !24, !26}
!29 = distinct !{!29, !23, !24}
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
