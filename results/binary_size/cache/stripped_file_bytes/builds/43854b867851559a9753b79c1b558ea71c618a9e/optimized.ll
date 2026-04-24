; ModuleID = '<stdin>'
source_filename = "/tmp/tmpma0k4j56.cpp"
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
@__const.main.day = private unnamed_addr constant [2 x [12 x i32]] [[12 x i32] [i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31]], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %month1 = alloca i32, align 4
  %month2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %month2) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %dec34 = add nsw i32 %0, -1
  store i32 %dec34, ptr %n, align 4, !tbaa !5
  %tobool.not35 = icmp eq i32 %0, 0
  br i1 %tobool.not35, label %while.end, label %while.body

while.body:                                       ; preds = %entry, %if.end22
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %month1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %month2)
  %1 = load i32, ptr %month1, align 4, !tbaa !5
  %2 = load i32, ptr %month2, align 4, !tbaa !5
  %cmp = icmp sgt i32 %1, %2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  store i32 %1, ptr %month2, align 4, !tbaa !5
  store i32 %2, ptr %month1, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %3 = phi i32 [ %1, %if.then ], [ %2, %while.body ]
  %4 = phi i32 [ %2, %if.then ], [ %1, %while.body ]
  %5 = load i32, ptr %year, align 4, !tbaa !5
  %rem = srem i32 %5, 400
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.end10, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %6 = and i32 %5, 3
  %cmp6 = icmp ne i32 %6, 0
  %rem7 = srem i32 %5, 100
  %cmp8.not = icmp eq i32 %rem7, 0
  %or.cond = or i1 %cmp6, %cmp8.not
  %spec.select = zext i1 %or.cond to i64
  br label %if.end10

if.end10:                                         ; preds = %lor.lhs.false, %if.end
  %leap.0 = phi i64 [ 0, %if.end ], [ %spec.select, %lor.lhs.false ]
  %cmp1130 = icmp slt i32 %4, %3
  br i1 %cmp1130, label %for.body.preheader, label %if.then16

for.body.preheader:                               ; preds = %if.end10
  %7 = sext i32 %4 to i64
  %wide.trip.count = sext i32 %3 to i64
  %8 = sub nsw i64 %wide.trip.count, %7
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %for.body.preheader39, label %vector.ph

vector.ph:                                        ; preds = %for.body.preheader
  %n.vec = and i64 %8, -4
  %9 = add nsw i64 %n.vec, %7
  %invariant.op = add i64 %7, -1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %.reass = add i64 %index, %invariant.op
  %10 = getelementptr inbounds [2 x [12 x i32]], ptr @__const.main.day, i64 0, i64 %leap.0, i64 %.reass
  %wide.load = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %11 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader39

for.body.preheader39:                             ; preds = %for.body.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %7, %for.body.preheader ], [ %9, %middle.block ]
  %days.131.ph = phi i32 [ 0, %for.body.preheader ], [ %13, %middle.block ]
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %middle.block
  %add.lcssa = phi i32 [ %13, %middle.block ], [ %add, %for.body ]
  %14 = srem i32 %add.lcssa, 7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.then16, label %if.else19

for.body:                                         ; preds = %for.body.preheader39, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader39 ]
  %days.131 = phi i32 [ %add, %for.body ], [ %days.131.ph, %for.body.preheader39 ]
  %16 = add nsw i64 %indvars.iv, -1
  %arrayidx13 = getelementptr inbounds [2 x [12 x i32]], ptr @__const.main.day, i64 0, i64 %leap.0, i64 %16
  %17 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %add = add nsw i32 %17, %days.131
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !14

if.then16:                                        ; preds = %if.end10, %for.cond.cleanup
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep33 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %18 = load ptr, ptr %gep33, align 8, !tbaa !17
  %tobool.not.i.i.i = icmp eq ptr %18, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then16
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then16
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 56
  %19 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !35
  %tobool.not.i1.i.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %18, i64 67
  %20 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !41
  br label %if.end22

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %18)
  %vtable.i.i.i = load ptr, ptr %18, align 8, !tbaa !15
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %21 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %21(ptr noundef nonnull align 8 dereferenceable(570) %18, i8 noundef signext 10)
  br label %if.end22

if.else19:                                        ; preds = %for.cond.cleanup
  %call1.i6 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i10 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i11 = getelementptr i8, ptr %vtable.i10, i64 -24
  %vbase.offset.i12 = load i64, ptr %vbase.offset.ptr.i11, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i12
  %22 = load ptr, ptr %gep, align 8, !tbaa !17
  %tobool.not.i.i.i15 = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i15, label %if.then.i.i.i28, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16

if.then.i.i.i28:                                  ; preds = %if.else19
  call void @_ZSt16__throw_bad_castv() #6
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16: ; preds = %if.else19
  %_M_widen_ok.i.i.i17 = getelementptr inbounds nuw i8, ptr %22, i64 56
  %23 = load i8, ptr %_M_widen_ok.i.i.i17, align 8, !tbaa !35
  %tobool.not.i1.i.i18 = icmp eq i8 %23, 0
  br i1 %tobool.not.i1.i.i18, label %if.end.i.i.i24, label %if.then.i2.i.i19

if.then.i2.i.i19:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16
  %arrayidx.i.i.i20 = getelementptr inbounds nuw i8, ptr %22, i64 67
  %24 = load i8, ptr %arrayidx.i.i.i20, align 1, !tbaa !41
  br label %if.end22

if.end.i.i.i24:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i16
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %22)
  %vtable.i.i.i25 = load ptr, ptr %22, align 8, !tbaa !15
  %vfn.i.i.i26 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i25, i64 48
  %25 = load ptr, ptr %vfn.i.i.i26, align 8
  %call.i.i.i27 = call noundef signext i8 %25(ptr noundef nonnull align 8 dereferenceable(570) %22, i8 noundef signext 10)
  br label %if.end22

if.end22:                                         ; preds = %if.end.i.i.i24, %if.then.i2.i.i19, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i21.sink = phi i8 [ %20, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %24, %if.then.i2.i.i19 ], [ %call.i.i.i27, %if.end.i.i.i24 ]
  %call1.i22 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i21.sink)
  %call.i.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i22)
  %26 = load i32, ptr %n, align 4, !tbaa !5
  %dec = add nsw i32 %26, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  %tobool.not = icmp eq i32 %26, 0
  br i1 %tobool.not, label %while.end, label %while.body, !llvm.loop !42

while.end:                                        ; preds = %if.end22, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %month1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11, !12, !13}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
!14 = distinct !{!14, !10, !11, !12}
!15 = !{!16, !16, i64 0}
!16 = !{!"vtable pointer", !8, i64 0}
!17 = !{!18, !32, i64 240}
!18 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !19, i64 0, !29, i64 216, !7, i64 224, !30, i64 225, !31, i64 232, !32, i64 240, !33, i64 248, !34, i64 256}
!19 = !{!"_ZTSSt8ios_base", !20, i64 8, !20, i64 16, !21, i64 24, !22, i64 28, !22, i64 32, !23, i64 40, !25, i64 48, !7, i64 64, !6, i64 192, !26, i64 200, !27, i64 208}
!20 = !{!"long", !7, i64 0}
!21 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!22 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!23 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !24, i64 0}
!24 = !{!"any pointer", !7, i64 0}
!25 = !{!"_ZTSNSt8ios_base6_WordsE", !24, i64 0, !20, i64 8}
!26 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !24, i64 0}
!27 = !{!"_ZTSSt6locale", !28, i64 0}
!28 = !{!"p1 _ZTSNSt6locale5_ImplE", !24, i64 0}
!29 = !{!"p1 _ZTSSo", !24, i64 0}
!30 = !{!"bool", !7, i64 0}
!31 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !24, i64 0}
!32 = !{!"p1 _ZTSSt5ctypeIcE", !24, i64 0}
!33 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!34 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !24, i64 0}
!35 = !{!36, !7, i64 56}
!36 = !{!"_ZTSSt5ctypeIcE", !37, i64 0, !38, i64 16, !30, i64 24, !39, i64 32, !39, i64 40, !40, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!37 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!38 = !{!"p1 _ZTS15__locale_struct", !24, i64 0}
!39 = !{!"p1 int", !24, i64 0}
!40 = !{!"p1 short", !24, i64 0}
!41 = !{!7, !7, i64 0}
!42 = distinct !{!42, !10, !11}
