; ModuleID = '<stdin>'
source_filename = "/tmp/tmpgcbre_hb.cpp"
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i32 @_Z2jzPA100_ii(ptr nofree noundef captures(none) %a, i32 noundef %k) local_unnamed_addr #0 {
entry:
  %arrayidx92 = getelementptr inbounds nuw i8, ptr %a, i64 404
  %invariant.gep = getelementptr i8, ptr %a, i64 -400
  %0 = zext i32 %k to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc135, %entry
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %for.inc135 ], [ %0, %entry ]
  %sum.0 = phi i32 [ %add, %for.inc135 ], [ 0, %entry ]
  %1 = trunc nuw i64 %indvars.iv124 to i32
  %cmp = icmp sgt i32 %1, 1
  br i1 %cmp, label %for.cond1, label %for.end136

for.cond1:                                        ; preds = %for.cond, %for.inc31
  %indvars.iv78 = phi i64 [ %indvars.iv.next79, %for.inc31 ], [ 0, %for.cond ]
  %exitcond82.not = icmp eq i64 %indvars.iv78, %indvars.iv124
  br i1 %exitcond82.not, label %for.cond34, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv78
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body7 ], [ 1, %for.body3 ]
  %min.0 = phi i32 [ %spec.select, %for.body7 ], [ %2, %for.body3 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv124
  br i1 %exitcond.not, label %for.cond17.preheader, label %for.body7

for.cond17.preheader:                             ; preds = %for.cond5
  br label %for.cond17

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv78, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !9
  %spec.select = tail call i32 @llvm.smin.i32(i32 %3, i32 %min.0)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond5, !llvm.loop !10

for.cond17:                                       ; preds = %for.cond17.preheader, %for.inc28
  %indvars.iv73 = phi i64 [ %indvars.iv.next74, %for.inc28 ], [ 0, %for.cond17.preheader ]
  %exitcond77.not = icmp eq i64 %indvars.iv73, %indvars.iv124
  br i1 %exitcond77.not, label %for.inc31, label %for.inc28

for.inc28:                                        ; preds = %for.cond17
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv78, i64 %indvars.iv73
  %4 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx23, align 4, !tbaa !5
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1
  br label %for.cond17, !llvm.loop !13

for.inc31:                                        ; preds = %for.cond17
  %indvars.iv.next79 = add nuw nsw i64 %indvars.iv78, 1
  br label %for.cond1, !llvm.loop !14

for.cond34:                                       ; preds = %for.cond1, %for.inc88
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %for.inc88 ], [ 0, %for.cond1 ]
  %exitcond102.not = icmp eq i64 %indvars.iv98, %indvars.iv124
  br i1 %exitcond102.not, label %for.end90, label %for.cond37

for.cond37:                                       ; preds = %for.cond34, %for.body39
  %indvars.iv83 = phi i64 [ %indvars.iv.next84, %for.body39 ], [ 1, %for.cond34 ]
  %exitcond87.not = icmp eq i64 %indvars.iv83, %indvars.iv124
  br i1 %exitcond87.not, label %if.then51, label %for.body39

for.body39:                                       ; preds = %for.cond37
  %arrayidx43 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv83, i64 %indvars.iv98
  %5 = load i32, ptr %arrayidx43, align 4, !tbaa !5, !invariant.load !9
  %cmp44 = icmp eq i32 %5, 0
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1
  br i1 %cmp44, label %for.inc88, label %for.cond37, !llvm.loop !15

if.then51:                                        ; preds = %for.cond37
  %arrayidx54 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv98
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond55

for.cond55:                                       ; preds = %for.body57, %if.then51
  %indvars.iv88 = phi i64 [ %indvars.iv.next89, %for.body57 ], [ 1, %if.then51 ]
  %min.2 = phi i32 [ %spec.select67, %for.body57 ], [ %6, %if.then51 ]
  %exitcond92.not = icmp eq i64 %indvars.iv88, %indvars.iv124
  br i1 %exitcond92.not, label %for.cond72.preheader, label %for.body57

for.cond72.preheader:                             ; preds = %for.cond55
  br label %for.cond72

for.body57:                                       ; preds = %for.cond55
  %arrayidx61 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv88, i64 %indvars.iv98
  %7 = load i32, ptr %arrayidx61, align 4, !tbaa !5, !invariant.load !9
  %spec.select67 = tail call i32 @llvm.smin.i32(i32 %7, i32 %min.2)
  %indvars.iv.next89 = add nuw nsw i64 %indvars.iv88, 1
  br label %for.cond55, !llvm.loop !16

for.cond72:                                       ; preds = %for.cond72.preheader, %for.inc84
  %indvars.iv93 = phi i64 [ %indvars.iv.next94, %for.inc84 ], [ 0, %for.cond72.preheader ]
  %exitcond97.not = icmp eq i64 %indvars.iv93, %indvars.iv124
  br i1 %exitcond97.not, label %for.inc88, label %for.inc84

for.inc84:                                        ; preds = %for.cond72
  %arrayidx78 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv93, i64 %indvars.iv98
  %8 = load i32, ptr %arrayidx78, align 4, !tbaa !5, !invariant.load !9
  %sub79 = sub nsw i32 %8, %min.2
  store i32 %sub79, ptr %arrayidx78, align 4, !tbaa !5
  %indvars.iv.next94 = add nuw nsw i64 %indvars.iv93, 1
  br label %for.cond72, !llvm.loop !17

for.inc88:                                        ; preds = %for.body39, %for.cond72
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1
  br label %for.cond34, !llvm.loop !18

for.end90:                                        ; preds = %for.cond34
  %9 = load i32, ptr %arrayidx92, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond93

for.cond93:                                       ; preds = %for.inc111, %for.end90
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.inc111 ], [ 0, %for.end90 ]
  %exitcond113.not = icmp eq i64 %indvars.iv109, %indvars.iv124
  br i1 %exitcond113.not, label %for.cond114, label %for.cond96

for.cond96:                                       ; preds = %for.cond93, %for.inc108
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.inc108 ], [ 2, %for.cond93 ]
  %exitcond108.not = icmp eq i64 %indvars.iv103, %indvars.iv124
  br i1 %exitcond108.not, label %for.inc111, label %for.inc108

for.inc108:                                       ; preds = %for.cond96
  %arrayidx102 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv109, i64 %indvars.iv103
  %10 = load i32, ptr %arrayidx102, align 4, !tbaa !5, !invariant.load !9
  %11 = add nsw i64 %indvars.iv103, -1
  %arrayidx107 = getelementptr inbounds [100 x i32], ptr %a, i64 %indvars.iv109, i64 %11
  store i32 %10, ptr %arrayidx107, align 4, !tbaa !5
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond96, !llvm.loop !19

for.inc111:                                       ; preds = %for.cond96
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1
  br label %for.cond93, !llvm.loop !20

for.cond114:                                      ; preds = %for.cond93, %for.inc132
  %indvars.iv119 = phi i64 [ %indvars.iv.next120, %for.inc132 ], [ 0, %for.cond93 ]
  %exitcond123.not = icmp eq i64 %indvars.iv119, %indvars.iv124
  br i1 %exitcond123.not, label %for.inc135, label %for.cond117.preheader

for.cond117.preheader:                            ; preds = %for.cond114
  %invariant.gep69 = getelementptr [100 x i32], ptr %invariant.gep, i64 0, i64 %indvars.iv119
  br label %for.cond117

for.cond117:                                      ; preds = %for.cond117.preheader, %for.inc129
  %indvars.iv114 = phi i64 [ 2, %for.cond117.preheader ], [ %indvars.iv.next115, %for.inc129 ]
  %exitcond118.not = icmp eq i64 %indvars.iv114, %indvars.iv124
  br i1 %exitcond118.not, label %for.inc132, label %for.inc129

for.inc129:                                       ; preds = %for.cond117
  %arrayidx123 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 %indvars.iv114, i64 %indvars.iv119
  %12 = load i32, ptr %arrayidx123, align 4, !tbaa !5, !invariant.load !9
  %gep70 = getelementptr [100 x i32], ptr %invariant.gep69, i64 %indvars.iv114
  store i32 %12, ptr %gep70, align 4, !tbaa !5
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1
  br label %for.cond117, !llvm.loop !21

for.inc132:                                       ; preds = %for.cond117
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1
  br label %for.cond114, !llvm.loop !22

for.inc135:                                       ; preds = %for.cond114
  %add = add nsw i32 %9, %sum.0
  %indvars.iv.next125 = add nsw i64 %indvars.iv124, -1
  br label %for.cond, !llvm.loop !23

for.end136:                                       ; preds = %for.cond
  ret i32 %sum.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x [100 x i32]], align 16
  %ans = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 dereferenceable(40000) %num) #7
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %ans) #7
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = phi i32 [ %2, %for.inc16 ], [ %.pre, %entry ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc16 ], [ 0, %entry ]
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv14, %1
  br i1 %cmp, label %for.cond1, label %for.cond19

for.cond1:                                        ; preds = %for.cond, %for.inc10
  %2 = phi i32 [ %4, %for.inc10 ], [ %0, %for.cond ]
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.inc10 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv11, %3
  br i1 %cmp2, label %for.cond4, label %for.inc16

for.cond4:                                        ; preds = %for.cond1, %for.inc
  %4 = phi i32 [ %.pre21, %for.inc ], [ %2, %for.cond1 ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond1 ]
  %5 = sext i32 %4 to i64
  %cmp5 = icmp slt i64 %indvars.iv, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %num, i64 0, i64 %indvars.iv11, i64 %indvars.iv
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre21 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !24

for.inc10:                                        ; preds = %for.cond4
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond1, !llvm.loop !25

for.inc16:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z2jzPA100_ii(ptr nofree noundef nonnull align 16 captures(none) dereferenceable(40000) %num, i32 noundef %2) #8
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %ans, i64 0, i64 %indvars.iv14
  store i32 %call13, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond, !llvm.loop !26

for.cond19:                                       ; preds = %for.cond, %for.inc26
  %6 = phi i32 [ %.pre20, %for.inc26 ], [ %0, %for.cond ]
  %indvars.iv17 = phi i64 [ %indvars.iv.next18, %for.inc26 ], [ 0, %for.cond ]
  %7 = sext i32 %6 to i64
  %cmp20 = icmp slt i64 %indvars.iv17, %7
  br i1 %cmp20, label %for.inc26, label %for.end28

for.inc26:                                        ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %ans, i64 0, i64 %indvars.iv17
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !9
  %call24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %8)
  %call25 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call24, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %.pre20 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !27

for.end28:                                        ; preds = %for.cond19
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %ans) #8
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %num) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
!24 = distinct !{!24, !11, !12}
!25 = distinct !{!25, !11, !12}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11, !12}
