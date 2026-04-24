; ModuleID = '<stdin>'
source_filename = "/tmp/tmp59j4x4q1.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %ju1 = alloca [101 x [101 x i32]], align 16
  %ju2 = alloca [101 x [101 x i32]], align 16
  %ans = alloca [101 x [101 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull align 16 %ju1) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull align 16 %ju2) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull align 16 %ans) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc8 ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv3, %1
  br i1 %cmp, label %for.cond2, label %for.end10

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %ju1, i64 0, i64 %indvars.iv3, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.inc27 ], [ 0, %for.end10 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14 = icmp slt i64 %indvars.iv9, %5
  br i1 %cmp14, label %for.cond16, label %for.cond30.preheader

for.cond30.preheader:                             ; preds = %for.cond13
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4
  %8 = load i32, ptr %y1, align 4
  %smax = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %smax18 = call i32 @llvm.smax.i32(i32 %7, i32 0)
  %smax24 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count25 = zext nneg i32 %smax24 to i64
  %wide.trip.count19 = zext nneg i32 %smax18 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond30

for.cond16:                                       ; preds = %for.cond13, %for.inc24
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.inc24 ], [ 0, %for.cond13 ]
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %10 = sext i32 %9 to i64
  %cmp17 = icmp slt i64 %indvars.iv6, %10
  br i1 %cmp17, label %for.inc24, label %for.inc27

for.inc24:                                        ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %ju2, i64 0, i64 %indvars.iv9, i64 %indvars.iv6
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1
  br label %for.cond13, !llvm.loop !14

for.cond30:                                       ; preds = %for.cond30.preheader, %for.inc61
  %indvars.iv21 = phi i64 [ 0, %for.cond30.preheader ], [ %indvars.iv.next22, %for.inc61 ]
  %exitcond26.not = icmp eq i64 %indvars.iv21, %wide.trip.count25
  br i1 %exitcond26.not, label %for.cond64, label %for.cond33

for.cond33:                                       ; preds = %for.cond30, %for.inc58
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc58 ], [ 0, %for.cond30 ]
  %exitcond20.not = icmp eq i64 %indvars.iv15, %wide.trip.count19
  br i1 %exitcond20.not, label %for.inc61, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond33
  %arrayidx42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %ans, i64 0, i64 %indvars.iv21, i64 %indvars.iv15
  br label %for.cond36

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc55
  %indvars.iv12 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next13, %for.inc55 ]
  %exitcond.not = icmp eq i64 %indvars.iv12, %wide.trip.count
  br i1 %exitcond.not, label %for.inc58, label %for.inc55

for.inc55:                                        ; preds = %for.cond36
  %11 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !15
  %arrayidx46 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %ju1, i64 0, i64 %indvars.iv21, i64 %indvars.iv12
  %12 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !15
  %arrayidx50 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %ju2, i64 0, i64 %indvars.iv12, i64 %indvars.iv15
  %13 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !15
  %mul = mul nsw i32 %13, %12
  %add = add nsw i32 %mul, %11
  store i32 %add, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond36, !llvm.loop !16

for.inc58:                                        ; preds = %for.cond36
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond33, !llvm.loop !17

for.inc61:                                        ; preds = %for.cond33
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond30, !llvm.loop !18

for.cond64:                                       ; preds = %for.cond30, %for.inc86
  %14 = phi i32 [ %17, %for.inc86 ], [ %7, %for.cond30 ]
  %15 = phi i32 [ %.pre, %for.inc86 ], [ %6, %for.cond30 ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc86 ], [ 0, %for.cond30 ]
  %16 = sext i32 %15 to i64
  %cmp65 = icmp slt i64 %indvars.iv30, %16
  br i1 %cmp65, label %for.cond67, label %for.end88

for.cond67:                                       ; preds = %for.cond64, %for.inc83
  %17 = phi i32 [ %.pre33, %for.inc83 ], [ %14, %for.cond64 ]
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc83 ], [ 0, %for.cond64 ]
  %18 = sext i32 %17 to i64
  %cmp68 = icmp slt i64 %indvars.iv27, %18
  br i1 %cmp68, label %for.body69, label %for.inc86

for.body69:                                       ; preds = %for.cond67
  %sub = add nsw i32 %17, -1
  %19 = zext i32 %sub to i64
  %cmp70 = icmp eq i64 %indvars.iv27, %19
  %arrayidx74 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %ans, i64 0, i64 %indvars.iv30, i64 %indvars.iv27
  %20 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !15
  %call75 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %20)
  br i1 %cmp70, label %if.then, label %if.else

if.then:                                          ; preds = %for.body69
  %call76 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc83

if.else:                                          ; preds = %for.body69
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %call75, ptr noundef nonnull @.str)
  br label %for.inc83

for.inc83:                                        ; preds = %if.then, %if.else
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %.pre33 = load i32, ptr %y2, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !19

for.inc86:                                        ; preds = %for.cond67
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %.pre = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !20

for.end88:                                        ; preds = %for.cond64
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %ans) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %ju2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %ju1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!14 = distinct !{!14, !10, !11}
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
