; ModuleID = '<stdin>'
source_filename = "/tmp/tmpb0uzjquq.cpp"
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
  %n = alloca i32, align 4
  %height = alloca [30 x i32], align 16
  %num = alloca [30 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %height) #5
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %num) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp21 = icmp sgt i32 %0, 0
  br i1 %cmp21, label %for.body, label %for.end48

for.cond2.preheader:                              ; preds = %for.body
  %cmp323 = icmp sgt i32 %3, 0
  br i1 %cmp323, label %for.body4.preheader, label %for.end48

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %wide.trip.count = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %3, 4
  br i1 %min.iters.check, label %for.body4.preheader73, label %vector.ph

vector.ph:                                        ; preds = %for.body4.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %1 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %index
  store <4 x i32> splat (i32 1), ptr %1, align 16, !tbaa !5
  %index.next = add nuw i64 %index, 4
  %2 = icmp eq i64 %index.next, %n.vec
  br i1 %2, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond10.preheader, label %for.body4.preheader73

for.body4.preheader73:                            ; preds = %for.body4.preheader, %middle.block
  %indvars.iv35.ph = phi i64 [ 0, %for.body4.preheader ], [ %n.vec, %middle.block ]
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [30 x i32], ptr %height, i64 0, i64 %indvars.iv
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !14

for.cond10.preheader:                             ; preds = %for.body4, %middle.block
  %cmp1127.not = icmp eq i32 %3, 1
  br i1 %cmp1127.not, label %for.end48, label %for.cond13.preheader.preheader

for.cond13.preheader.preheader:                   ; preds = %for.cond10.preheader
  %wide.trip.count44 = zext nneg i32 %3 to i64
  br label %for.cond13.preheader

for.body4:                                        ; preds = %for.body4.preheader73, %for.body4
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.body4 ], [ %indvars.iv35.ph, %for.body4.preheader73 ]
  %arrayidx6 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv35
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count
  br i1 %exitcond.not, label %for.cond10.preheader, label %for.body4, !llvm.loop !15

for.cond13.preheader:                             ; preds = %for.cond13.preheader.preheader, %for.inc33
  %indvars.iv38 = phi i64 [ 1, %for.cond13.preheader.preheader ], [ %indvars.iv.next39, %for.inc33 ]
  %arrayidx19 = getelementptr inbounds nuw [30 x i32], ptr %height, i64 0, i64 %indvars.iv38
  %5 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv38
  br label %for.body15

for.body38.preheader:                             ; preds = %for.inc33
  %wide.trip.count49 = zext nneg i32 %3 to i64
  %6 = add nsw i64 %wide.trip.count, -1
  %min.iters.check62 = icmp ult i32 %3, 5
  br i1 %min.iters.check62, label %for.body38.preheader72, label %vector.ph63

vector.ph63:                                      ; preds = %for.body38.preheader
  %n.vec65 = and i64 %6, -4
  %7 = or disjoint i64 %n.vec65, 1
  br label %vector.body66

vector.body66:                                    ; preds = %vector.body66, %vector.ph63
  %index67 = phi i64 [ 0, %vector.ph63 ], [ %index.next68, %vector.body66 ]
  %vec.phi = phi <4 x i32> [ splat (i32 -1), %vector.ph63 ], [ %9, %vector.body66 ]
  %offset.idx = or disjoint i64 %index67, 1
  %8 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = call <4 x i32> @llvm.smax.v4i32(<4 x i32> %wide.load, <4 x i32> %vec.phi)
  %index.next68 = add nuw i64 %index67, 4
  %10 = icmp eq i64 %index.next68, %n.vec65
  br i1 %10, label %middle.block69, label %vector.body66, !llvm.loop !16

middle.block69:                                   ; preds = %vector.body66
  %11 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %9)
  %cmp.n70 = icmp eq i64 %6, %n.vec65
  br i1 %cmp.n70, label %for.end48, label %for.body38.preheader72

for.body38.preheader72:                           ; preds = %for.body38.preheader, %middle.block69
  %indvars.iv46.ph = phi i64 [ 1, %for.body38.preheader ], [ %7, %middle.block69 ]
  %max.031.ph = phi i32 [ -1, %for.body38.preheader ], [ %11, %middle.block69 ]
  br label %for.body38

for.body15:                                       ; preds = %for.cond13.preheader, %for.inc31
  %indvars.iv40 = phi i64 [ %indvars.iv38, %for.cond13.preheader ], [ %indvars.iv.next41, %for.inc31 ]
  %indvars.iv.next41 = add nsw i64 %indvars.iv40, -1
  %arrayidx17 = getelementptr inbounds nuw [30 x i32], ptr %height, i64 0, i64 %indvars.iv.next41
  %12 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp20.not = icmp slt i32 %12, %5
  br i1 %cmp20.not, label %for.inc31, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx22 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv.next41
  %13 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %14 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25.not = icmp slt i32 %13, %14
  br i1 %cmp25.not, label %for.inc31, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %13, 1
  store i32 %add, ptr %arrayidx24, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body15, %land.lhs.true, %if.then
  %cmp14 = icmp sgt i64 %indvars.iv40, 1
  br i1 %cmp14, label %for.body15, label %for.inc33, !llvm.loop !17

for.inc33:                                        ; preds = %for.inc31
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond45.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count44
  br i1 %exitcond45.not, label %for.body38.preheader, label %for.cond13.preheader, !llvm.loop !18

for.body38:                                       ; preds = %for.body38.preheader72, %for.body38
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.body38 ], [ %indvars.iv46.ph, %for.body38.preheader72 ]
  %max.031 = phi i32 [ %spec.select, %for.body38 ], [ %max.031.ph, %for.body38.preheader72 ]
  %arrayidx40 = getelementptr inbounds nuw [30 x i32], ptr %num, i64 0, i64 %indvars.iv46
  %15 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %15, i32 %max.031)
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end48, label %for.body38, !llvm.loop !19

for.end48:                                        ; preds = %for.body38, %middle.block69, %for.cond10.preheader, %entry, %for.cond2.preheader
  %max.0.lcssa = phi i32 [ -1, %for.cond2.preheader ], [ -1, %entry ], [ -1, %for.cond10.preheader ], [ %11, %middle.block69 ], [ %spec.select, %for.body38 ]
  %call49 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %max.0.lcssa)
  %vtable.i = load ptr, ptr %call49, align 8, !tbaa !20
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %add.ptr.i = getelementptr inbounds i8, ptr %call49, i64 %vbase.offset.i
  %_M_ctype.i.i = getelementptr inbounds nuw i8, ptr %add.ptr.i, i64 240
  %16 = load ptr, ptr %_M_ctype.i.i, align 8, !tbaa !22
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %for.end48
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %for.end48
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 56
  %17 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !40
  %tobool.not.i1.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %16, i64 67
  %18 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !46
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %16)
  %vtable.i.i.i = load ptr, ptr %16, align 8, !tbaa !20
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %19 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %19(ptr noundef nonnull align 8 dereferenceable(570) %16, i8 noundef signext 10)
  br label %_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit

_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.exit: ; preds = %if.then.i2.i.i, %if.end.i.i.i
  %retval.0.i.i.i = phi i8 [ %18, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ]
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %call49, i8 noundef signext %retval.0.i.i.i)
  %call.i.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i)
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %num) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %height) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12, !13}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11, !12}
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
