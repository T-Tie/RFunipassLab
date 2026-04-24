; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw23qdzlq.cpp"
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
  %a = alloca [200 x [200 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 160000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx95 = getelementptr inbounds nuw i8, ptr %a, i64 804
  %1 = sext i32 %0 to i64
  %smax81 = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count22 = zext i32 %0 to i64
  br label %while.cond

while.cond:                                       ; preds = %for.end143, %entry
  %q.0 = phi i32 [ 0, %entry ], [ %inc146, %for.end143 ]
  %exitcond82.not = icmp eq i32 %q.0, %smax81
  br i1 %exitcond82.not, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.inc8
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc8 ], [ 0, %while.cond ]
  %exitcond23.not = icmp eq i64 %indvars.iv19, %wide.trip.count22
  br i1 %exitcond23.not, label %for.end10, label %for.cond2

for.cond2:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count22
  br i1 %exitcond.not, label %for.inc8, label %for.inc

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv19, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc141, %for.end10
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %for.inc141 ], [ %1, %for.end10 ]
  %indvars.iv67.in = phi i32 [ %indvars.iv67, %for.inc141 ], [ %0, %for.end10 ]
  %m.0 = phi i32 [ %inc142, %for.inc141 ], [ 1, %for.end10 ]
  %s.0 = phi i32 [ %add, %for.inc141 ], [ 0, %for.end10 ]
  %indvars.iv67 = add i32 %indvars.iv67.in, -1
  %smax74 = call i32 @llvm.smax.i32(i32 %indvars.iv67, i32 noundef 1)
  %exitcond80.not = icmp eq i32 %m.0, %0
  br i1 %exitcond80.not, label %for.end143, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond11
  %2 = trunc nsw i64 %indvars.iv77 to i32
  %smax61 = call i32 @llvm.smax.i32(i32 %2, i32 noundef 0)
  %wide.trip.count37 = zext nneg i32 %smax61 to i64
  %wide.trip.count27 = and i64 %indvars.iv77, 4294967295
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc50
  %indvars.iv34 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next35, %for.inc50 ]
  %exitcond38.not = icmp eq i64 %indvars.iv34, %wide.trip.count37
  br i1 %exitcond38.not, label %for.cond53.preheader, label %for.body16

for.cond53.preheader:                             ; preds = %for.cond14
  %wide.trip.count42 = and i64 %indvars.iv77, 4294967295
  br label %for.cond53

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv34
  %3 = load i32, ptr %arrayidx18, align 16, !tbaa !5, !invariant.load !13
  br label %for.cond20

for.cond20:                                       ; preds = %for.body22, %for.body16
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body22 ], [ 0, %for.body16 ]
  %l.0 = phi i32 [ %spec.select, %for.body22 ], [ %3, %for.body16 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count27
  br i1 %exitcond28.not, label %for.cond35.preheader, label %for.body22

for.cond35.preheader:                             ; preds = %for.cond20
  br label %for.cond35

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %indvars.iv24
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smin.i32(i32 %l.0, i32 %4)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond20, !llvm.loop !14

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc47
  %indvars.iv29 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next30, %for.inc47 ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count27
  br i1 %exitcond33.not, label %for.inc50, label %for.inc47

for.inc47:                                        ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %indvars.iv29
  %5 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !13
  %sub42 = sub nsw i32 %5, %l.0
  store i32 %sub42, ptr %arrayidx41, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond35, !llvm.loop !15

for.inc50:                                        ; preds = %for.cond35
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond14, !llvm.loop !16

for.cond53:                                       ; preds = %for.cond53.preheader, %for.inc91
  %indvars.iv49 = phi i64 [ 0, %for.cond53.preheader ], [ %indvars.iv.next50, %for.inc91 ]
  %exitcond54.not = icmp eq i64 %indvars.iv49, %wide.trip.count37
  br i1 %exitcond54.not, label %for.end93, label %for.body55

for.body55:                                       ; preds = %for.cond53
  %arrayidx58 = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv49
  %6 = load i32, ptr %arrayidx58, align 4, !tbaa !5, !invariant.load !13
  br label %for.cond59

for.cond59:                                       ; preds = %for.body61, %for.body55
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.body61 ], [ 0, %for.body55 ]
  %l.2 = phi i32 [ %spec.select16, %for.body61 ], [ %6, %for.body55 ]
  %exitcond43.not = icmp eq i64 %indvars.iv39, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond76.preheader, label %for.body61

for.cond76.preheader:                             ; preds = %for.cond59
  br label %for.cond76

for.body61:                                       ; preds = %for.cond59
  %arrayidx65 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv39, i64 %indvars.iv49
  %7 = load i32, ptr %arrayidx65, align 4, !tbaa !5, !invariant.load !13
  %spec.select16 = call i32 @llvm.smin.i32(i32 %l.2, i32 %7)
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  br label %for.cond59, !llvm.loop !17

for.cond76:                                       ; preds = %for.cond76.preheader, %for.inc88
  %indvars.iv44 = phi i64 [ 0, %for.cond76.preheader ], [ %indvars.iv.next45, %for.inc88 ]
  %exitcond48.not = icmp eq i64 %indvars.iv44, %wide.trip.count42
  br i1 %exitcond48.not, label %for.inc91, label %for.inc88

for.inc88:                                        ; preds = %for.cond76
  %arrayidx82 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv44, i64 %indvars.iv49
  %8 = load i32, ptr %arrayidx82, align 4, !tbaa !5, !invariant.load !13
  %sub83 = sub nsw i32 %8, %l.2
  store i32 %sub83, ptr %arrayidx82, align 4, !tbaa !5
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond76, !llvm.loop !18

for.inc91:                                        ; preds = %for.cond76
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond53, !llvm.loop !19

for.end93:                                        ; preds = %for.cond53
  %9 = load i32, ptr %arrayidx95, align 4, !tbaa !5
  %indvars.iv.next78 = add nsw i64 %indvars.iv77, -1
  br label %for.cond96

for.cond96:                                       ; preds = %for.inc115, %for.end93
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %for.inc115 ], [ 0, %for.end93 ]
  %exitcond63.not = icmp eq i64 %indvars.iv58, %wide.trip.count37
  br i1 %exitcond63.not, label %for.cond118.preheader, label %for.cond99

for.cond118.preheader:                            ; preds = %for.cond96
  %wide.trip.count75 = zext nneg i32 %smax74 to i64
  %wide.trip.count69 = zext i32 %indvars.iv67 to i64
  br label %for.cond118

for.cond99:                                       ; preds = %for.cond96, %for.inc112
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %for.inc112 ], [ 1, %for.cond96 ]
  %cmp101 = icmp slt i64 %indvars.iv55, %indvars.iv.next78
  br i1 %cmp101, label %for.inc112, label %for.inc115

for.inc112:                                       ; preds = %for.cond99
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1
  %arrayidx107 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv58, i64 %indvars.iv.next56
  %10 = load i32, ptr %arrayidx107, align 4, !tbaa !5, !invariant.load !13
  %arrayidx111 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv58, i64 %indvars.iv55
  store i32 %10, ptr %arrayidx111, align 4, !tbaa !5
  br label %for.cond99, !llvm.loop !20

for.inc115:                                       ; preds = %for.cond99
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  br label %for.cond96, !llvm.loop !21

for.cond118:                                      ; preds = %for.cond122, %for.cond118.preheader
  %indvars.iv71 = phi i64 [ 1, %for.cond118.preheader ], [ %indvars.iv.next72, %for.cond122 ]
  %exitcond76.not = icmp eq i64 %indvars.iv71, %wide.trip.count75
  br i1 %exitcond76.not, label %for.inc141, label %for.cond122.preheader

for.cond122.preheader:                            ; preds = %for.cond118
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1
  br label %for.cond122

for.cond122:                                      ; preds = %for.cond122.preheader, %for.inc135
  %indvars.iv64 = phi i64 [ 0, %for.cond122.preheader ], [ %indvars.iv.next65, %for.inc135 ]
  %exitcond70.not = icmp eq i64 %indvars.iv64, %wide.trip.count69
  br i1 %exitcond70.not, label %for.cond118, label %for.inc135, !llvm.loop !22

for.inc135:                                       ; preds = %for.cond122
  %arrayidx130 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv.next72, i64 %indvars.iv64
  %11 = load i32, ptr %arrayidx130, align 4, !tbaa !5, !invariant.load !13
  %arrayidx134 = getelementptr inbounds nuw [200 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv71, i64 %indvars.iv64
  store i32 %11, ptr %arrayidx134, align 4, !tbaa !5
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 1
  br label %for.cond122, !llvm.loop !23

for.inc141:                                       ; preds = %for.cond118
  %add = add nsw i32 %9, %s.0
  %12 = trunc nsw i64 %indvars.iv.next78 to i32
  store i32 %12, ptr %n, align 4, !tbaa !5
  %inc142 = add nuw i32 %m.0, 1
  br label %for.cond11, !llvm.loop !24

for.end143:                                       ; preds = %for.cond11
  %call144 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %s.0)
  %call145 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call144, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc146 = add nuw i32 %q.0, 1
  br label %while.cond, !llvm.loop !25

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 160000, ptr noundef nonnull %a) #7
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
