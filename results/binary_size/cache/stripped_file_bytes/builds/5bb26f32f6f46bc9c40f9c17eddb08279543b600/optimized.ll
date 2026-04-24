; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzilmiuzz.cpp"
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
@__const.main.a = private unnamed_addr constant [13 x i32] [i32 0, i32 3, i32 0, i32 3, i32 2, i32 3, i32 2, i32 3, i32 3, i32 2, i32 3, i32 2, i32 3], align 16
@_ZSt4cout = external global %"class.std::basic_ostream", align 8
@.str = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %Y = alloca i32, align 4
  %M1 = alloca i32, align 4
  %M2 = alloca i32, align 4
  %a = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %N)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %Y) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %M2) #6
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %0, 0
  br i1 %cmp42, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i64 8
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end34, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %M1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %Y) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
  ret i32 0

for.body:                                         ; preds = %for.body.lr.ph, %if.end34
  %i.043 = phi i32 [ 0, %for.body.lr.ph ], [ %inc36, %if.end34 ]
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %Y)
  %call2 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call1, ptr noundef nonnull align 4 dereferenceable(4) %M1)
  %call3 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call2, ptr noundef nonnull align 4 dereferenceable(4) %M2)
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %a) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %a, ptr noundef nonnull align 16 dereferenceable(52) @__const.main.a, i64 52, i1 false)
  %1 = load i32, ptr %Y, align 4, !tbaa !5
  %rem = srem i32 %1, 400
  %cmp4 = icmp eq i32 %rem, 0
  br i1 %cmp4, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %rem5 = srem i32 %1, 100
  %cmp6.not = icmp ne i32 %rem5, 0
  %2 = and i32 %1, 3
  %cmp8 = icmp eq i32 %2, 0
  %or.cond = and i1 %cmp6.not, %cmp8
  br i1 %or.cond, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %for.body
  store i32 1, ptr %arrayidx, align 8, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false
  %3 = load i32, ptr %M1, align 4, !tbaa !5
  %4 = load i32, ptr %M2, align 4, !tbaa !5
  %cmp1133 = icmp slt i32 %3, %4
  br i1 %cmp1133, label %for.body13.preheader, label %for.cond17.preheader

for.body13.preheader:                             ; preds = %if.end
  %5 = sext i32 %3 to i64
  %wide.trip.count = sext i32 %4 to i64
  %6 = sub nsw i64 %wide.trip.count, %5
  %min.iters.check51 = icmp ult i64 %6, 4
  br i1 %min.iters.check51, label %for.body13.preheader66, label %vector.ph52

vector.ph52:                                      ; preds = %for.body13.preheader
  %n.vec54 = and i64 %6, -4
  %7 = add nsw i64 %n.vec54, %5
  br label %vector.body55

vector.body55:                                    ; preds = %vector.body55, %vector.ph52
  %index56 = phi i64 [ 0, %vector.ph52 ], [ %index.next60, %vector.body55 ]
  %vec.phi57 = phi <4 x i32> [ zeroinitializer, %vector.ph52 ], [ %9, %vector.body55 ]
  %offset.idx58 = add i64 %index56, %5
  %8 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %offset.idx58
  %wide.load59 = load <4 x i32>, ptr %8, align 4, !tbaa !5
  %9 = add <4 x i32> %wide.load59, %vec.phi57
  %index.next60 = add nuw i64 %index56, 4
  %10 = icmp eq i64 %index.next60, %n.vec54
  br i1 %10, label %middle.block61, label %vector.body55, !llvm.loop !9

middle.block61:                                   ; preds = %vector.body55
  %11 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %9)
  %cmp.n62 = icmp eq i64 %6, %n.vec54
  br i1 %cmp.n62, label %for.cond17.preheader, label %for.body13.preheader66

for.body13.preheader66:                           ; preds = %for.body13.preheader, %middle.block61
  %indvars.iv.ph = phi i64 [ %5, %for.body13.preheader ], [ %7, %middle.block61 ]
  %S.034.ph = phi i32 [ 0, %for.body13.preheader ], [ %11, %middle.block61 ]
  br label %for.body13

for.cond17.preheader:                             ; preds = %for.body13, %middle.block61, %if.end
  %S.0.lcssa = phi i32 [ 0, %if.end ], [ %11, %middle.block61 ], [ %add, %for.body13 ]
  %cmp1837 = icmp slt i32 %4, %3
  br i1 %cmp1837, label %for.body20.preheader, label %for.cond.cleanup19

for.body20.preheader:                             ; preds = %for.cond17.preheader
  %12 = sext i32 %4 to i64
  %wide.trip.count48 = sext i32 %3 to i64
  %13 = sub nsw i64 %wide.trip.count48, %12
  %min.iters.check = icmp ult i64 %13, 4
  br i1 %min.iters.check, label %for.body20.preheader65, label %vector.ph

vector.ph:                                        ; preds = %for.body20.preheader
  %n.vec = and i64 %13, -4
  %14 = add nsw i64 %n.vec, %12
  %15 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %S.0.lcssa, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %15, %vector.ph ], [ %17, %vector.body ]
  %offset.idx = add i64 %index, %12
  %16 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %offset.idx
  %wide.load = load <4 x i32>, ptr %16, align 4, !tbaa !5
  %17 = add <4 x i32> %wide.load, %vec.phi
  %index.next = add nuw i64 %index, 4
  %18 = icmp eq i64 %index.next, %n.vec
  br i1 %18, label %middle.block, label %vector.body, !llvm.loop !14

middle.block:                                     ; preds = %vector.body
  %19 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %17)
  %cmp.n = icmp eq i64 %13, %n.vec
  br i1 %cmp.n, label %for.cond.cleanup19, label %for.body20.preheader65

for.body20.preheader65:                           ; preds = %for.body20.preheader, %middle.block
  %indvars.iv45.ph = phi i64 [ %12, %for.body20.preheader ], [ %14, %middle.block ]
  %S.138.ph = phi i32 [ %S.0.lcssa, %for.body20.preheader ], [ %19, %middle.block ]
  br label %for.body20

for.body13:                                       ; preds = %for.body13.preheader66, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ %indvars.iv.ph, %for.body13.preheader66 ]
  %S.034 = phi i32 [ %add, %for.body13 ], [ %S.034.ph, %for.body13.preheader66 ]
  %arrayidx14 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %indvars.iv
  %20 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %add = add nsw i32 %20, %S.034
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body13, !llvm.loop !15

for.cond.cleanup19:                               ; preds = %for.body20, %middle.block, %for.cond17.preheader
  %S.1.lcssa = phi i32 [ %S.0.lcssa, %for.cond17.preheader ], [ %19, %middle.block ], [ %add23, %for.body20 ]
  %rem27 = srem i32 %S.1.lcssa, 7
  %cmp28 = icmp eq i32 %rem27, 0
  br i1 %cmp28, label %if.then29, label %if.else

for.body20:                                       ; preds = %for.body20.preheader65, %for.body20
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %for.body20 ], [ %indvars.iv45.ph, %for.body20.preheader65 ]
  %S.138 = phi i32 [ %add23, %for.body20 ], [ %S.138.ph, %for.body20.preheader65 ]
  %arrayidx22 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %indvars.iv45
  %21 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %add23 = add nsw i32 %21, %S.138
  %indvars.iv.next46 = add nsw i64 %indvars.iv45, 1
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %for.cond.cleanup19, label %for.body20, !llvm.loop !16

if.then29:                                        ; preds = %for.cond.cleanup19
  %call1.i = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str, i64 noundef 3)
  %vtable.i = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, ptr %vtable.i, i64 -24
  %vbase.offset.i = load i64, ptr %vbase.offset.ptr.i, align 8
  %gep41 = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i
  %22 = load ptr, ptr %gep41, align 8, !tbaa !19
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i

if.then.i.i.i:                                    ; preds = %if.then29
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i: ; preds = %if.then29
  %_M_widen_ok.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 56
  %23 = load i8, ptr %_M_widen_ok.i.i.i, align 8, !tbaa !37
  %tobool.not.i1.i.i = icmp eq i8 %23, 0
  br i1 %tobool.not.i1.i.i, label %if.end.i.i.i, label %if.then.i2.i.i

if.then.i2.i.i:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  %arrayidx.i.i.i = getelementptr inbounds nuw i8, ptr %22, i64 67
  %24 = load i8, ptr %arrayidx.i.i.i, align 1, !tbaa !43
  br label %if.end34

if.end.i.i.i:                                     ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %22)
  %vtable.i.i.i = load ptr, ptr %22, align 8, !tbaa !17
  %vfn.i.i.i = getelementptr inbounds nuw i8, ptr %vtable.i.i.i, i64 48
  %25 = load ptr, ptr %vfn.i.i.i, align 8
  %call.i.i.i = call noundef signext i8 %25(ptr noundef nonnull align 8 dereferenceable(570) %22, i8 noundef signext 10)
  br label %if.end34

if.else:                                          ; preds = %for.cond.cleanup19
  %call1.i9 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1, i64 noundef 2)
  %vtable.i13 = load ptr, ptr @_ZSt4cout, align 8, !tbaa !17
  %vbase.offset.ptr.i14 = getelementptr i8, ptr %vtable.i13, i64 -24
  %vbase.offset.i15 = load i64, ptr %vbase.offset.ptr.i14, align 8
  %gep = getelementptr i8, ptr getelementptr inbounds nuw (i8, ptr @_ZSt4cout, i64 240), i64 %vbase.offset.i15
  %26 = load ptr, ptr %gep, align 8, !tbaa !19
  %tobool.not.i.i.i18 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i.i18, label %if.then.i.i.i31, label %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19

if.then.i.i.i31:                                  ; preds = %if.else
  call void @_ZSt16__throw_bad_castv() #7
  unreachable

_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19: ; preds = %if.else
  %_M_widen_ok.i.i.i20 = getelementptr inbounds nuw i8, ptr %26, i64 56
  %27 = load i8, ptr %_M_widen_ok.i.i.i20, align 8, !tbaa !37
  %tobool.not.i1.i.i21 = icmp eq i8 %27, 0
  br i1 %tobool.not.i1.i.i21, label %if.end.i.i.i27, label %if.then.i2.i.i22

if.then.i2.i.i22:                                 ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  %arrayidx.i.i.i23 = getelementptr inbounds nuw i8, ptr %26, i64 67
  %28 = load i8, ptr %arrayidx.i.i.i23, align 1, !tbaa !43
  br label %if.end34

if.end.i.i.i27:                                   ; preds = %_ZSt13__check_facetISt5ctypeIcEERKT_PS3_.exit.i.i19
  call void @_ZNKSt5ctypeIcE13_M_widen_initEv(ptr noundef nonnull align 8 dereferenceable(570) %26)
  %vtable.i.i.i28 = load ptr, ptr %26, align 8, !tbaa !17
  %vfn.i.i.i29 = getelementptr inbounds nuw i8, ptr %vtable.i.i.i28, i64 48
  %29 = load ptr, ptr %vfn.i.i.i29, align 8
  %call.i.i.i30 = call noundef signext i8 %29(ptr noundef nonnull align 8 dereferenceable(570) %26, i8 noundef signext 10)
  br label %if.end34

if.end34:                                         ; preds = %if.end.i.i.i27, %if.then.i2.i.i22, %if.end.i.i.i, %if.then.i2.i.i
  %retval.0.i.i.i24.sink = phi i8 [ %24, %if.then.i2.i.i ], [ %call.i.i.i, %if.end.i.i.i ], [ %28, %if.then.i2.i.i22 ], [ %call.i.i.i30, %if.end.i.i.i27 ]
  %call1.i25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext %retval.0.i.i.i24.sink)
  %call.i.i26 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5flushEv(ptr noundef nonnull align 8 dereferenceable(8) %call1.i25)
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %a) #6
  %inc36 = add nuw nsw i32 %i.043, 1
  %30 = load i32, ptr %N, align 4, !tbaa !5
  %cmp = icmp slt i32 %inc36, %30
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !44
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
!14 = distinct !{!14, !10, !11, !12, !13}
!15 = distinct !{!15, !10, !11, !12}
!16 = distinct !{!16, !10, !11, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !8, i64 0}
!19 = !{!20, !34, i64 240}
!20 = !{!"_ZTSSt9basic_iosIcSt11char_traitsIcEE", !21, i64 0, !31, i64 216, !7, i64 224, !32, i64 225, !33, i64 232, !34, i64 240, !35, i64 248, !36, i64 256}
!21 = !{!"_ZTSSt8ios_base", !22, i64 8, !22, i64 16, !23, i64 24, !24, i64 28, !24, i64 32, !25, i64 40, !27, i64 48, !7, i64 64, !6, i64 192, !28, i64 200, !29, i64 208}
!22 = !{!"long", !7, i64 0}
!23 = !{!"_ZTSSt13_Ios_Fmtflags", !7, i64 0}
!24 = !{!"_ZTSSt12_Ios_Iostate", !7, i64 0}
!25 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !26, i64 0}
!26 = !{!"any pointer", !7, i64 0}
!27 = !{!"_ZTSNSt8ios_base6_WordsE", !26, i64 0, !22, i64 8}
!28 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !26, i64 0}
!29 = !{!"_ZTSSt6locale", !30, i64 0}
!30 = !{!"p1 _ZTSNSt6locale5_ImplE", !26, i64 0}
!31 = !{!"p1 _ZTSSo", !26, i64 0}
!32 = !{!"bool", !7, i64 0}
!33 = !{!"p1 _ZTSSt15basic_streambufIcSt11char_traitsIcEE", !26, i64 0}
!34 = !{!"p1 _ZTSSt5ctypeIcE", !26, i64 0}
!35 = !{!"p1 _ZTSSt7num_putIcSt19ostreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!36 = !{!"p1 _ZTSSt7num_getIcSt19istreambuf_iteratorIcSt11char_traitsIcEEE", !26, i64 0}
!37 = !{!38, !7, i64 56}
!38 = !{!"_ZTSSt5ctypeIcE", !39, i64 0, !40, i64 16, !32, i64 24, !41, i64 32, !41, i64 40, !42, i64 48, !7, i64 56, !7, i64 57, !7, i64 313, !7, i64 569}
!39 = !{!"_ZTSNSt6locale5facetE", !6, i64 8}
!40 = !{!"p1 _ZTS15__locale_struct", !26, i64 0}
!41 = !{!"p1 int", !26, i64 0}
!42 = !{!"p1 short", !26, i64 0}
!43 = !{!7, !7, i64 0}
!44 = distinct !{!44, !10, !11}
