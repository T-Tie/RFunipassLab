; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdt89ij21.cpp"
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
  %a = alloca [111 x [111 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef nonnull dereferenceable(49284) %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %arrayidx19 = getelementptr inbounds nuw i8, ptr %a, i64 444
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %a, i64 448
  br label %for.cond

for.cond:                                         ; preds = %for.inc184, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc185, %for.inc184 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end186, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %1 = phi i32 [ %4, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc10 ], [ 1, %for.cond ]
  %2 = sext i32 %1 to i64
  %cmp2.not = icmp sgt i64 %indvars.iv73, %2
  br i1 %cmp2.not, label %for.cond13.preheader, label %for.cond4

for.cond13.preheader:                             ; preds = %for.cond1
  %3 = load i32, ptr %arrayidx27, align 16
  %smax = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond13

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5.not = icmp sgt i64 %indvars.iv, %5
  br i1 %cmp5.not, label %for.inc10, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv73, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond1, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc179
  %indvars.iv108 = phi i64 [ 1, %for.cond13.preheader ], [ %indvars.iv.next109, %for.inc179 ]
  %indvars.iv76 = phi i64 [ 2, %for.cond13.preheader ], [ %indvars.iv.next77, %for.inc179 ]
  %sum.0 = phi i32 [ 0, %for.cond13.preheader ], [ %add178, %for.inc179 ]
  %exitcond.not = icmp eq i64 %indvars.iv108, %wide.trip.count
  br i1 %exitcond.not, label %for.inc184, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.inc23
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.inc23 ], [ %indvars.iv76, %for.cond13 ]
  %Min.0 = phi i32 [ %.sroa.speculated45, %for.inc23 ], [ 10000, %for.cond13 ]
  %6 = trunc nuw i64 %indvars.iv78 to i32
  %cmp17.not = icmp slt i32 %1, %6
  br i1 %cmp17.not, label %for.end25, label %for.inc23

for.inc23:                                        ; preds = %for.cond16
  %arrayidx21 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv78
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !13
  %.sroa.speculated45 = call i32 @llvm.smin.i32(i32 %7, i32 %Min.0)
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond16, !llvm.loop !14

for.end25:                                        ; preds = %for.cond16
  %.sroa.speculated42 = call i32 @llvm.smin.i32(i32 %3, i32 %Min.0)
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc39, %for.end25
  %indvars.iv81 = phi i64 [ %indvars.iv.next82, %for.inc39 ], [ %indvars.iv76, %for.end25 ]
  %8 = trunc nuw i64 %indvars.iv81 to i32
  %cmp31.not = icmp slt i32 %1, %8
  br i1 %cmp31.not, label %for.end41, label %for.inc39

for.inc39:                                        ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv81
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %9, %.sroa.speculated42
  store i32 %sub, ptr %arrayidx35, align 4, !tbaa !5
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1
  br label %for.cond30, !llvm.loop !15

for.end41:                                        ; preds = %for.cond30
  %sub44 = sub nsw i32 %3, %.sroa.speculated42
  br label %for.cond48

for.cond48:                                       ; preds = %for.inc90, %for.end41
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %for.inc90 ], [ %indvars.iv76, %for.end41 ]
  %10 = trunc nuw i64 %indvars.iv90 to i32
  %cmp49.not = icmp slt i32 %1, %10
  br i1 %cmp49.not, label %for.cond94, label %for.cond52

for.cond52:                                       ; preds = %for.cond48, %for.inc60
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %for.inc60 ], [ %indvars.iv76, %for.cond48 ]
  %Min.1 = phi i32 [ %.sroa.speculated39, %for.inc60 ], [ 10000, %for.cond48 ]
  %11 = trunc nuw i64 %indvars.iv84 to i32
  %cmp53.not = icmp slt i32 %1, %11
  br i1 %cmp53.not, label %for.end62, label %for.inc60

for.inc60:                                        ; preds = %for.cond52
  %arrayidx58 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv90, i64 %indvars.iv84
  %12 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !13
  %.sroa.speculated39 = call i32 @llvm.smin.i32(i32 %12, i32 %Min.1)
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 1
  br label %for.cond52, !llvm.loop !16

for.end62:                                        ; preds = %for.cond52
  %arrayidx65 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv90, i64 1
  %13 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !13
  %.sroa.speculated36 = call i32 @llvm.smin.i32(i32 %13, i32 %Min.1)
  br label %for.cond68

for.cond68:                                       ; preds = %for.inc80, %for.end62
  %indvars.iv87 = phi i64 [ %indvars.iv.next88, %for.inc80 ], [ %indvars.iv76, %for.end62 ]
  %14 = trunc nuw i64 %indvars.iv87 to i32
  %cmp69.not = icmp slt i32 %1, %14
  br i1 %cmp69.not, label %for.inc90, label %for.inc80

for.inc80:                                        ; preds = %for.cond68
  %arrayidx74 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv90, i64 %indvars.iv87
  %15 = load i32, ptr %arrayidx74, align 4, !tbaa !5, !invariant.load !13
  %sub75 = sub nsw i32 %15, %.sroa.speculated36
  store i32 %sub75, ptr %arrayidx74, align 4, !tbaa !5
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1
  br label %for.cond68, !llvm.loop !17

for.inc90:                                        ; preds = %for.cond68
  %sub86 = sub nsw i32 %13, %.sroa.speculated36
  store i32 %sub86, ptr %arrayidx65, align 4, !tbaa !5
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1
  br label %for.cond48, !llvm.loop !18

for.cond94:                                       ; preds = %for.cond48, %for.inc101
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc101 ], [ %indvars.iv76, %for.cond48 ]
  %Min.2 = phi i32 [ %.sroa.speculated33, %for.inc101 ], [ 10000, %for.cond48 ]
  %16 = trunc nuw i64 %indvars.iv93 to i32
  %cmp95.not = icmp slt i32 %1, %16
  br i1 %cmp95.not, label %for.end103, label %for.inc101

for.inc101:                                       ; preds = %for.cond94
  %arrayidx99 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv93, i64 1
  %17 = load i32, ptr %arrayidx99, align 4, !tbaa !5, !invariant.load !13
  %.sroa.speculated33 = call i32 @llvm.smin.i32(i32 %17, i32 %Min.2)
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond94, !llvm.loop !19

for.end103:                                       ; preds = %for.cond94
  %.sroa.speculated30 = call i32 @llvm.smin.i32(i32 %sub44, i32 %Min.2)
  br label %for.cond108

for.cond108:                                      ; preds = %for.inc118, %for.end103
  %indvars.iv96 = phi i64 [ %indvars.iv.next97, %for.inc118 ], [ %indvars.iv76, %for.end103 ]
  %18 = trunc nuw i64 %indvars.iv96 to i32
  %cmp109.not = icmp slt i32 %1, %18
  br i1 %cmp109.not, label %for.end120, label %for.inc118

for.inc118:                                       ; preds = %for.cond108
  %arrayidx113 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv96, i64 1
  %19 = load i32, ptr %arrayidx113, align 4, !tbaa !5, !invariant.load !13
  %sub114 = sub nsw i32 %19, %.sroa.speculated30
  store i32 %sub114, ptr %arrayidx113, align 4, !tbaa !5
  %indvars.iv.next97 = add nuw nsw i64 %indvars.iv96, 1
  br label %for.cond108, !llvm.loop !20

for.end120:                                       ; preds = %for.cond108
  %sub123 = sub nsw i32 %sub44, %.sroa.speculated30
  store i32 %sub123, ptr %arrayidx27, align 16, !tbaa !5
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc169, %for.end120
  %indvars.iv105 = phi i64 [ %indvars.iv.next106, %for.inc169 ], [ %indvars.iv76, %for.end120 ]
  %20 = trunc nuw i64 %indvars.iv105 to i32
  %cmp128.not = icmp slt i32 %1, %20
  br i1 %cmp128.not, label %for.inc179, label %for.cond131

for.cond131:                                      ; preds = %for.cond127, %for.inc139
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %for.inc139 ], [ %indvars.iv76, %for.cond127 ]
  %Min.3 = phi i32 [ %.sroa.speculated27, %for.inc139 ], [ 10000, %for.cond127 ]
  %21 = trunc nuw i64 %indvars.iv99 to i32
  %cmp132.not = icmp slt i32 %1, %21
  br i1 %cmp132.not, label %for.end141, label %for.inc139

for.inc139:                                       ; preds = %for.cond131
  %arrayidx137 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv99, i64 %indvars.iv105
  %22 = load i32, ptr %arrayidx137, align 4, !tbaa !5, !invariant.load !13
  %.sroa.speculated27 = call i32 @llvm.smin.i32(i32 %22, i32 %Min.3)
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  br label %for.cond131, !llvm.loop !21

for.end141:                                       ; preds = %for.cond131
  %arrayidx144 = getelementptr inbounds nuw [111 x i32], ptr %arrayidx19, i64 0, i64 %indvars.iv105
  %23 = load i32, ptr %arrayidx144, align 4, !tbaa !5, !invariant.load !13
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %23, i32 %Min.3)
  br label %for.cond147

for.cond147:                                      ; preds = %for.inc159, %for.end141
  %indvars.iv102 = phi i64 [ %indvars.iv.next103, %for.inc159 ], [ %indvars.iv76, %for.end141 ]
  %24 = trunc nuw i64 %indvars.iv102 to i32
  %cmp148.not = icmp slt i32 %1, %24
  br i1 %cmp148.not, label %for.inc169, label %for.inc159

for.inc159:                                       ; preds = %for.cond147
  %arrayidx153 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv102, i64 %indvars.iv105
  %25 = load i32, ptr %arrayidx153, align 4, !tbaa !5
  %sub154 = sub nsw i32 %25, %.sroa.speculated
  store i32 %sub154, ptr %arrayidx153, align 4, !tbaa !5
  %indvars.iv.next103 = add nuw nsw i64 %indvars.iv102, 1
  br label %for.cond147, !llvm.loop !22

for.inc169:                                       ; preds = %for.cond147
  %sub165 = sub nsw i32 %23, %.sroa.speculated
  store i32 %sub165, ptr %arrayidx144, align 4, !tbaa !5
  %indvars.iv.next106 = add nuw nsw i64 %indvars.iv105, 1
  br label %for.cond127, !llvm.loop !23

for.inc179:                                       ; preds = %for.cond127
  %indvars.iv.next109 = add nuw nsw i64 %indvars.iv108, 1
  %arrayidx177 = getelementptr inbounds nuw [111 x [111 x i32]], ptr %a, i64 0, i64 %indvars.iv.next109, i64 %indvars.iv.next109
  %26 = load i32, ptr %arrayidx177, align 4, !tbaa !5, !invariant.load !13
  %add178 = add nsw i32 %26, %sum.0
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv76, 1
  br label %for.cond13, !llvm.loop !24

for.inc184:                                       ; preds = %for.cond13
  %call182 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call183 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call182, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc185 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !25

for.end186:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
!25 = distinct !{!25, !10, !11}
