; ModuleID = '<stdin>'
source_filename = "/tmp/tmp44yhpujf.cpp"
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
@.str = private unnamed_addr constant [6 x i8] c"Error\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [101 x [101 x i32]], align 16
  %b = alloca [101 x [101 x i32]], align 16
  %c = alloca [101 x [101 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc8 ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv33, %1
  br i1 %cmp.not, label %for.end10, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp3.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp3.not, label %for.inc8, label %for.inc

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp13.not = icmp eq i32 %4, %5
  br i1 %cmp13.not, label %for.cond16, label %if.then

if.then:                                          ; preds = %for.end10
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %cleanup

for.cond16:                                       ; preds = %for.end10, %for.inc30
  %6 = phi i32 [ %.pre, %for.inc30 ], [ %4, %for.end10 ]
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.inc30 ], [ 1, %for.end10 ]
  %7 = sext i32 %6 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv39, %7
  br i1 %cmp17.not, label %for.cond33.preheader, label %for.cond19

for.cond33.preheader:                             ; preds = %for.cond16
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %9 = load i32, ptr %y2, align 4
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %10 = add nuw i32 %smax, 1
  %smax49 = call i32 @llvm.smax.i32(i32 %9, i32 noundef 0)
  %11 = add nuw i32 %smax49, 1
  %smax55 = call i32 @llvm.smax.i32(i32 %8, i32 noundef 0)
  %12 = add nuw i32 %smax55, 1
  %wide.trip.count56 = zext i32 %12 to i64
  %wide.trip.count50 = zext i32 %11 to i64
  %wide.trip.count = zext i32 %10 to i64
  br label %for.cond33

for.cond19:                                       ; preds = %for.cond16, %for.inc27
  %indvars.iv36 = phi i64 [ %indvars.iv.next37, %for.inc27 ], [ 1, %for.cond16 ]
  %13 = load i32, ptr %y2, align 4, !tbaa !5
  %14 = sext i32 %13 to i64
  %cmp20.not = icmp sgt i64 %indvars.iv36, %14
  br i1 %cmp20.not, label %for.inc30, label %for.inc27

for.inc27:                                        ; preds = %for.cond19
  %arrayidx25 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv39, i64 %indvars.iv36
  %call26 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx25)
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond19, !llvm.loop !13

for.inc30:                                        ; preds = %for.cond19
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %.pre = load i32, ptr %x2, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.cond33:                                       ; preds = %for.cond33.preheader, %for.inc64
  %indvars.iv52 = phi i64 [ 1, %for.cond33.preheader ], [ %indvars.iv.next53, %for.inc64 ]
  %exitcond57 = icmp eq i64 %indvars.iv52, %wide.trip.count56
  br i1 %exitcond57, label %for.cond67, label %for.cond36

for.cond36:                                       ; preds = %for.cond33, %for.inc61
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.inc61 ], [ 1, %for.cond33 ]
  %exitcond51 = icmp eq i64 %indvars.iv46, %wide.trip.count50
  br i1 %exitcond51, label %for.inc64, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx42 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv52, i64 %indvars.iv46
  store i32 0, ptr %arrayidx42, align 4, !tbaa !5
  br label %for.cond43

for.cond43:                                       ; preds = %for.inc58, %for.body38
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc58 ], [ 1, %for.body38 ]
  %exitcond = icmp eq i64 %indvars.iv42, %wide.trip.count
  br i1 %exitcond, label %for.inc61, label %for.inc58

for.inc58:                                        ; preds = %for.cond43
  %arrayidx49 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %a, i64 0, i64 %indvars.iv52, i64 %indvars.iv42
  %15 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !15
  %arrayidx53 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %b, i64 0, i64 %indvars.iv42, i64 %indvars.iv46
  %16 = load i32, ptr %arrayidx53, align 4, !tbaa !5, !invariant.load !15
  %mul = mul nsw i32 %16, %15
  store i32 %mul, ptr %arrayidx42, align 4, !tbaa !5
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond43, !llvm.loop !16

for.inc61:                                        ; preds = %for.cond43
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond36, !llvm.loop !17

for.inc64:                                        ; preds = %for.cond36
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  br label %for.cond33, !llvm.loop !18

for.cond67:                                       ; preds = %for.cond33, %for.inc87
  %17 = phi i32 [ %.pre64, %for.inc87 ], [ %8, %for.cond33 ]
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc87 ], [ 1, %for.cond33 ]
  %18 = sext i32 %17 to i64
  %cmp68.not = icmp sgt i64 %indvars.iv61, %18
  br i1 %cmp68.not, label %cleanup, label %for.body69

for.body69:                                       ; preds = %for.cond67
  %arrayidx72 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv61, i64 1
  %19 = load i32, ptr %arrayidx72, align 4, !tbaa !5, !invariant.load !15
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %19)
  br label %for.cond74

for.cond74:                                       ; preds = %for.inc83, %for.body69
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc83 ], [ 2, %for.body69 ]
  %20 = load i32, ptr %y2, align 4, !tbaa !5
  %21 = sext i32 %20 to i64
  %cmp75.not = icmp sgt i64 %indvars.iv58, %21
  br i1 %cmp75.not, label %for.inc87, label %for.inc83

for.inc83:                                        ; preds = %for.cond74
  %call77 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.1)
  %arrayidx81 = getelementptr inbounds nuw [101 x [101 x i32]], ptr %c, i64 0, i64 %indvars.iv61, i64 %indvars.iv58
  %22 = load i32, ptr %arrayidx81, align 4, !tbaa !5, !invariant.load !15
  %call82 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %call77, i32 noundef %22)
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond74, !llvm.loop !19

for.inc87:                                        ; preds = %for.cond74
  %call86 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  %.pre64 = load i32, ptr %x1, align 4, !tbaa !5
  br label %for.cond67, !llvm.loop !20

cleanup:                                          ; preds = %for.cond67, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
