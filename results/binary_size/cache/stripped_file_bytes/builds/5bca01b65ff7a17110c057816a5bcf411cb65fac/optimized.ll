; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxn2qpcb0.cpp"
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
@__const.main.a = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %mon1 = alloca i32, align 4
  %mon2 = alloca i32, align 4
  %a = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp37 = icmp sgt i32 %0, 0
  br i1 %cmp37, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i64 8
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end25, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0

for.body:                                         ; preds = %for.body.lr.ph, %if.end25
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc27, %if.end25 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mon1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mon2) #6
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %a, ptr noundef nonnull align 16 dereferenceable(52) @__const.main.a, i64 52, i1 false)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %year)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %mon1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %mon2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp4 = icmp eq i32 %2, 0
  %rem5 = srem i32 %1, 100
  %cmp6.not = icmp ne i32 %rem5, 0
  %or.cond.not32 = and i1 %cmp4, %cmp6.not
  %rem7 = srem i32 %1, 400
  %cmp8 = icmp eq i32 %rem7, 0
  %or.cond31 = or i1 %cmp8, %or.cond.not32
  br i1 %or.cond31, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 29, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.body, %if.then
  %3 = load i32, ptr %mon1, align 4, !tbaa !5
  %4 = load i32, ptr %mon2, align 4, !tbaa !5
  %cmp9 = icmp sgt i32 %3, %4
  br i1 %cmp9, label %if.then10, label %if.end11

if.then10:                                        ; preds = %if.end
  store i32 %4, ptr %mon1, align 4, !tbaa !5
  store i32 %3, ptr %mon2, align 4, !tbaa !5
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end
  %5 = phi i32 [ %3, %if.then10 ], [ %4, %if.end ]
  %6 = phi i32 [ %4, %if.then10 ], [ %3, %if.end ]
  %cmp1433 = icmp slt i32 %6, %5
  br i1 %cmp1433, label %for.body16.preheader, label %if.then20

for.body16.preheader:                             ; preds = %if.end11
  %7 = sext i32 %6 to i64
  %wide.trip.count = sext i32 %5 to i64
  %8 = sub nsw i64 %wide.trip.count, %7
  %min.iters.check = icmp ult i64 %8, 4
  br i1 %min.iters.check, label %for.body16.preheader41, label %vector.ph

vector.ph:                                        ; preds = %for.body16.preheader
  %n.vec = and i64 %8, -4
  %9 = add nsw i64 %n.vec, %7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %11, %vector.body ]
  %offset.idx = add i64 %index, %7
  %10 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %10, align 4, !tbaa !5
  %11 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %12 = icmp eq i64 %index.next, %n.vec
  br i1 %12, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %11)
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup15, label %for.body16.preheader41

for.body16.preheader41:                           ; preds = %for.body16.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %7, %for.body16.preheader ], [ %9, %middle.block ]
  %sum.034.ph = phi i32 [ 0, %for.body16.preheader ], [ %13, %middle.block ]
  br label %for.body16

for.cond.cleanup15:                               ; preds = %for.body16, %middle.block
  %add.lcssa = phi i32 [ %13, %middle.block ], [ %add, %for.body16 ]
  %14 = srem i32 %add.lcssa, 7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %if.then20, label %if.else

for.body16:                                       ; preds = %for.body16.preheader41, %for.body16
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body16 ], [ %indvars.iv.ph, %for.body16.preheader41 ]
  %sum.034 = phi i32 [ %add, %for.body16 ], [ %sum.034.ph, %for.body16.preheader41 ]
  %arrayidx17 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %indvars.iv
  %16 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %add = add nsw i32 %16, %sum.034
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup15, label %for.body16, !llvm.loop !14

if.then20:                                        ; preds = %if.end11, %for.cond.cleanup15
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep36 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %17 = load ptr, ptr %gep36, align 8, !tbaa !17
  %tobool.not.i.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then20
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then20
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 56
  %18 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !35
  %tobool.not.i1.i.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %17, i64 67
  %19 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !41
  br label %if.end25

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %17)
  %vtable.i.i.i = load ptr, ptr %17, align 8, !tbaa !15
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %20 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %20(ptr noundef nonnull align 8 dereferenceable(570) %17, i8 noundef signext 10)
  br label %if.end25

if.else:                                          ; preds = %for.cond.cleanup15
  %call1.i7 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i11 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !15
  %vbase.offset.ptr.i12 = getelementptr i8, ptr %vtable.i11, i64 -24
  %vbase.offset.i13 = load i64, ptr %vbase.offset.ptr.i12, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i13
  %21 = load ptr, ptr %gep, align 8, !tbaa !17
  %tobool.not.i.i.i16 = icmp eq ptr %21, null
  br i1 %tobool.not.i.i.i16, label %if.then.i.i.i29, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17

if.then.i.i.i29:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17: ; preds = %if.else
  %_M_widen_ok.i.i.i18 = getelementptr inbounds nuw i8, ptr %21, i64 56
  %22 = load i8, ptr %_M_widen_ok.i.i.i18, align 8, !tbaa !35
  %tobool.not.i1.i.i19 = icmp eq i8 %22, 0
  br i1 %tobool.not.i1.i.i19, label %if.end.i.i.i25, label %if.then.i2.i.i20

if.then.i2.i.i20:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
  %arrayidx.i.i.i21 = getelementptr inbounds nuw i8, ptr %21, i64 67
  %23 = load i8, ptr %arrayidx.i.i.i21, align 1, !tbaa !41
  br label %if.end25

if.end.i.i.i25:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i17
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %21)
  %vtable.i.i.i26 = load ptr, ptr %21, align 8, !tbaa !15
  %vfn.i.i.i27 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i26, i64 48
  %24 = load ptr, ptr %vfn.i.i.i27, align 8
  %call.i.i.i28 = call noundef signext i8 %24(ptr noundef nonnull align 8 dereferenceable(570) %21, i8 noundef signext 10)
  br label %if.end25

if.end25:                                         ; preds = %if.end.i.i.i25, %if.then.i2.i.i20, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i22.sink = phi i8 [ %19, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %23, %if.then.i2.i.i20 ], [ %call.i.i.i28, %if.end.i.i.i25 ]
  %call1.i23 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i22.sink)
  %call.i.i24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i23)
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mon2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mon1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #6
  %inc27 = add nuw nsw i32 %i.038, 1
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc27, %25
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !42
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt16__throw_bad_castv() local_unnamed_addr #4

declare void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
