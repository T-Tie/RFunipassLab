; ModuleID = '<stdin>'
source_filename = "/tmp/tmphr0bq4l5.cpp"
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
  %k = alloca i32, align 4
  %h = alloca [30 x i32], align 16
  %l = alloca [30 x i32], align 16
  %r = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %k) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %h) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %l) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %r) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %k)
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp32 = icmp sgt i32 %0, 0
  br i1 %cmp32, label %for.body, label %for.end86

for.cond6.preheader:                              ; preds = %for.body
  %cmp735 = icmp sgt i32 %1, 1
  br i1 %cmp735, label %for.cond9.preheader.preheader, label %for.cond66.preheader

for.cond9.preheader.preheader:                    ; preds = %for.cond6.preheader
  %wide.trip.count54 = zext nneg i32 %1 to i64
  br label %for.cond9.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %arrayidx3 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx5, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !llvm.loop !9

for.cond9.preheader:                              ; preds = %for.cond9.preheader.preheader, %for.cond.cleanup
  %indvars.iv51 = phi i64 [ 1, %for.cond9.preheader.preheader ], [ %indvars.iv.next52, %for.cond.cleanup ]
  %arrayidx15 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv51
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %arrayidx20 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv51
  br label %for.body11

for.cond.cleanup:                                 ; preds = %for.inc27
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %for.end32, label %for.cond9.preheader, !llvm.loop !12

for.body11:                                       ; preds = %for.cond9.preheader, %for.inc27
  %indvars.iv48 = phi i64 [ 0, %for.cond9.preheader ], [ %indvars.iv.next49, %for.inc27 ]
  %arrayidx13 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv48
  %4 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp16.not = icmp slt i32 %4, %3
  br i1 %cmp16.not, label %for.inc27, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body11
  %arrayidx18 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv48
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %cmp21.not = icmp slt i32 %5, %6
  br i1 %cmp21.not, label %for.inc27, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %5, 1
  store i32 %add, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.body11, %land.lhs.true, %if.then
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next49, %indvars.iv51
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body11, !llvm.loop !13

for.end32:                                        ; preds = %for.cond.cleanup
  %cmp3440.not = icmp eq i32 %1, 2
  br i1 %cmp3440.not, label %for.cond66.preheader, label %for.cond38.preheader.lr.ph

for.cond38.preheader.lr.ph:                       ; preds = %for.end32
  %sub = add nsw i32 %1, -2
  %j36.037 = add nsw i32 %1, -1
  %7 = zext nneg i32 %sub to i64
  %8 = zext nneg i32 %j36.037 to i64
  br label %for.cond38.preheader

for.cond38.preheader:                             ; preds = %for.cond38.preheader.lr.ph, %for.cond.cleanup40
  %indvars.iv56 = phi i64 [ %7, %for.cond38.preheader.lr.ph ], [ %indvars.iv.next57, %for.cond.cleanup40 ]
  %cmp3938 = icmp slt i64 %indvars.iv56, %8
  br i1 %cmp3938, label %for.body41.lr.ph, label %for.cond.cleanup40

for.body41.lr.ph:                                 ; preds = %for.cond38.preheader
  %arrayidx45 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %indvars.iv56
  %9 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %arrayidx52 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv56
  br label %for.body41

for.cond66.preheader:                             ; preds = %for.cond.cleanup40, %for.cond6.preheader, %for.end32
  %cmp6742 = icmp sgt i32 %1, 0
  br i1 %cmp6742, label %for.body68.preheader, label %for.end86

for.body68.preheader:                             ; preds = %for.cond66.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %for.body68.preheader72, label %vector.ph

vector.ph:                                        ; preds = %for.body68.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %14, %vector.body ]
  %10 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %index
  %wide.load = load <4 x i32>, ptr %10, align 16, !tbaa !5
  %11 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %index
  %wide.load71 = load <4 x i32>, ptr %11, align 16, !tbaa !5
  %12 = add <4 x i32> %wide.load, splat (i32 -1)
  %13 = add <4 x i32> %12, %wide.load71
  %14 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %13, <4 x i32> %vec.phi)
  %index.next = add nuw i64 %index, 4
  %15 = icmp eq i64 %index.next, %n.vec
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %16 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %14)
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.end86, label %for.body68.preheader72

for.body68.preheader72:                           ; preds = %for.body68.preheader, %middle.block
  %indvars.iv59.ph = phi i64 [ 0, %for.body68.preheader ], [ %n.vec, %middle.block ]
  %m.044.ph = phi i32 [ 0, %for.body68.preheader ], [ %16, %middle.block ]
  br label %for.body68

for.cond.cleanup40:                               ; preds = %for.inc61, %for.cond38.preheader
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, -1
  %cmp34 = icmp sgt i64 %indvars.iv56, 1
  br i1 %cmp34, label %for.cond38.preheader, label %for.cond66.preheader, !llvm.loop !17

for.body41:                                       ; preds = %for.body41.lr.ph, %for.inc61
  %j36.039 = phi i32 [ %j36.037, %for.body41.lr.ph ], [ %j36.0, %for.inc61 ]
  %idxprom42 = zext nneg i32 %j36.039 to i64
  %arrayidx43 = getelementptr inbounds nuw [30 x i32], ptr %h, i64 0, i64 %idxprom42
  %17 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp46.not = icmp sgt i32 %17, %9
  br i1 %cmp46.not, label %for.inc61, label %land.lhs.true47

land.lhs.true47:                                  ; preds = %for.body41
  %arrayidx49 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %idxprom42
  %18 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %19 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %cmp53.not = icmp slt i32 %18, %19
  br i1 %cmp53.not, label %for.inc61, label %if.then54

if.then54:                                        ; preds = %land.lhs.true47
  %add50 = add nsw i32 %18, 1
  store i32 %add50, ptr %arrayidx52, align 4, !tbaa !5
  br label %for.inc61

for.inc61:                                        ; preds = %for.body41, %land.lhs.true47, %if.then54
  %j36.0 = add nsw i32 %j36.039, -1
  %20 = sext i32 %j36.0 to i64
  %cmp39 = icmp slt i64 %indvars.iv56, %20
  br i1 %cmp39, label %for.body41, label %for.cond.cleanup40, !llvm.loop !18

for.body68:                                       ; preds = %for.body68.preheader72, %for.body68
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.body68 ], [ %indvars.iv59.ph, %for.body68.preheader72 ]
  %m.044 = phi i32 [ %spec.select, %for.body68 ], [ %m.044.ph, %for.body68.preheader72 ]
  %arrayidx70 = getelementptr inbounds nuw [30 x i32], ptr %l, i64 0, i64 %indvars.iv59
  %21 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %arrayidx72 = getelementptr inbounds nuw [30 x i32], ptr %r, i64 0, i64 %indvars.iv59
  %22 = load i32, ptr %arrayidx72, align 4, !tbaa !5
  %add73 = add i32 %21, -1
  %sub74 = add i32 %add73, %22
  %spec.select = call i32 @llvm.smax.i32(i32 %sub74, i32 %m.044)
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  %exitcond62.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count
  br i1 %exitcond62.not, label %for.end86, label %for.body68, !llvm.loop !19

for.end86:                                        ; preds = %for.body68, %middle.block, %entry, %for.cond66.preheader
  %m.0.lcssa = phi i32 [ 0, %for.cond66.preheader ], [ 0, %entry ], [ %16, %middle.block ], [ %spec.select, %for.body68 ]
  %call87 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %m.0.lcssa)
  %vtable.i = load ptr, ptr %call87, align 8, !tbaa !20
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call87, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %23 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !22
  %tobool.not.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end86
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end86
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %23, i64 56
  %24 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !40
  %tobool.not.i1.i.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %23, i64 67
  %25 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %23)
  %vtable.i.i.i = load ptr, ptr %23, align 8, !tbaa !20
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %26 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %26(ptr noundef nonnull align 8 dereferenceable(570) %23, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %25, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call87, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %r) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %l) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %h) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %k) #5
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
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #4

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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11, !15, !16}
!15 = !{!"llvm.loop.isvectorized", i32 1}
!16 = !{!"llvm.loop.unroll.runtime.disable"}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !15}
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
