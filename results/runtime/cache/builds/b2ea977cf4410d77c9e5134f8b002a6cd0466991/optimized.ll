; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnro4yszv.cpp"
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
  %a = alloca [105 x [105 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 44100, ptr nonnull %a) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %arrayidx94 = getelementptr inbounds nuw i8, ptr %a, i64 424
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %t.0 = phi i32 [ %0, %entry ], [ %dec141, %while.end ]
  %cmp = icmp sgt i32 %t.0, 0
  br i1 %cmp, label %while.body, label %while.end142

while.body:                                       ; preds = %while.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %while.body
  %1 = phi i32 [ %3, %for.inc8 ], [ %0, %while.body ]
  %indvars.iv59 = phi i64 [ %indvars.iv.next60, %for.inc8 ], [ 0, %while.body ]
  %2 = sext i32 %1 to i64
  %cmp1 = icmp slt i64 %indvars.iv59, %2
  br i1 %cmp1, label %for.cond2, label %while.cond11

for.cond2:                                        ; preds = %for.cond, %for.inc
  %3 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %4 = sext i32 %3 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv59, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond, !llvm.loop !12

while.cond11:                                     ; preds = %for.cond, %for.end138
  %indvars.iv109 = phi i64 [ %indvars.iv.next110, %for.end138 ], [ %2, %for.cond ]
  %sum.0 = phi i32 [ %add, %for.end138 ], [ 0, %for.cond ]
  %5 = phi i32 [ %16, %for.end138 ], [ %1, %for.cond ]
  %cmp12 = icmp sgt i32 %5, 1
  br i1 %cmp12, label %for.cond14.preheader, label %while.end

for.cond14.preheader:                             ; preds = %while.cond11
  %6 = trunc nsw i64 %indvars.iv109 to i32
  %smax106 = call i32 @llvm.smax.i32(i32 %6, i32 0)
  %wide.trip.count73 = zext nneg i32 %smax106 to i64
  %wide.trip.count = and i64 %indvars.iv109, 4294967295
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.inc49
  %indvars.iv70 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next71, %for.inc49 ]
  %exitcond74.not = icmp eq i64 %indvars.iv70, %wide.trip.count73
  br i1 %exitcond74.not, label %for.cond52.preheader, label %for.body16

for.cond52.preheader:                             ; preds = %for.cond14
  br label %for.cond52

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv70
  %7 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.body22, %for.body16
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %for.body22 ], [ 0, %for.body16 ]
  %min.0 = phi i32 [ %spec.select, %for.body22 ], [ %7, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv62, %wide.trip.count
  br i1 %exitcond.not, label %for.cond35.preheader, label %for.body22

for.cond35.preheader:                             ; preds = %for.cond20
  br label %for.cond35

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv62
  %8 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %8)
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  br label %for.cond20, !llvm.loop !13

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc46
  %indvars.iv65 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next66, %for.inc46 ]
  %exitcond69.not = icmp eq i64 %indvars.iv65, %wide.trip.count
  br i1 %exitcond69.not, label %for.inc49, label %for.inc46

for.inc46:                                        ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv70, i64 %indvars.iv65
  %9 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %sub = sub nsw i32 %9, %min.0
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !5
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond35, !llvm.loop !14

for.inc49:                                        ; preds = %for.cond35
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  br label %for.cond14, !llvm.loop !15

for.cond52:                                       ; preds = %for.cond52.preheader, %for.inc90
  %indvars.iv85 = phi i64 [ 0, %for.cond52.preheader ], [ %indvars.iv.next86, %for.inc90 ]
  %exitcond90.not = icmp eq i64 %indvars.iv85, %wide.trip.count73
  br i1 %exitcond90.not, label %for.end92, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx57 = getelementptr inbounds nuw [105 x i32], ptr %a, i64 0, i64 %indvars.iv85
  %10 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.body54
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %for.body60 ], [ 0, %for.body54 ]
  %min.2 = phi i32 [ %spec.select55, %for.body60 ], [ %10, %for.body54 ]
  %exitcond79.not = icmp eq i64 %indvars.iv75, %wide.trip.count
  br i1 %exitcond79.not, label %for.cond75.preheader, label %for.body60

for.cond75.preheader:                             ; preds = %for.cond58
  br label %for.cond75

for.body60:                                       ; preds = %for.cond58
  %arrayidx64 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv75, i64 %indvars.iv85
  %11 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %spec.select55 = call i32 @llvm.smin.i32(i32 %min.2, i32 %11)
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1
  br label %for.cond58, !llvm.loop !16

for.cond75:                                       ; preds = %for.cond75.preheader, %for.inc87
  %indvars.iv80 = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next81, %for.inc87 ]
  %exitcond84.not = icmp eq i64 %indvars.iv80, %wide.trip.count
  br i1 %exitcond84.not, label %for.inc90, label %for.inc87

for.inc87:                                        ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv80, i64 %indvars.iv85
  %12 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %sub82 = sub nsw i32 %12, %min.2
  store i32 %sub82, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  br label %for.cond75, !llvm.loop !17

for.inc90:                                        ; preds = %for.cond75
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1
  br label %for.cond52, !llvm.loop !18

for.end92:                                        ; preds = %for.cond52
  %13 = load i32, ptr %arrayidx94, align 4, !tbaa !5
  %indvars.iv.next110 = add nsw i64 %indvars.iv109, -1
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc114, %for.end92
  %indvars.iv94 = phi i64 [ %indvars.iv.next95, %for.inc114 ], [ 0, %for.end92 ]
  %exitcond99.not = icmp eq i64 %indvars.iv94, %wide.trip.count73
  br i1 %exitcond99.not, label %for.cond117, label %for.cond98

for.cond98:                                       ; preds = %for.cond95, %for.inc111
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %for.inc111 ], [ 1, %for.cond95 ]
  %cmp100 = icmp slt i64 %indvars.iv91, %indvars.iv.next110
  br i1 %cmp100, label %for.inc111, label %for.inc114

for.inc111:                                       ; preds = %for.cond98
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1
  %arrayidx106 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv94, i64 %indvars.iv.next92
  %14 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %arrayidx110 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv94, i64 %indvars.iv91
  store i32 %14, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond98, !llvm.loop !19

for.inc114:                                       ; preds = %for.cond98
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1
  br label %for.cond95, !llvm.loop !20

for.cond117:                                      ; preds = %for.cond95, %for.inc136
  %indvars.iv103 = phi i64 [ %indvars.iv.next104, %for.inc136 ], [ 0, %for.cond95 ]
  %exitcond108.not = icmp eq i64 %indvars.iv103, %wide.trip.count73
  br i1 %exitcond108.not, label %for.end138, label %for.cond120

for.cond120:                                      ; preds = %for.cond117, %for.inc133
  %indvars.iv100 = phi i64 [ %indvars.iv.next101, %for.inc133 ], [ 1, %for.cond117 ]
  %cmp122 = icmp slt i64 %indvars.iv100, %indvars.iv.next110
  br i1 %cmp122, label %for.inc133, label %for.inc136

for.inc133:                                       ; preds = %for.cond120
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1
  %arrayidx128 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv.next101, i64 %indvars.iv103
  %15 = load i32, ptr %arrayidx128, align 4, !tbaa !5
  %arrayidx132 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv100, i64 %indvars.iv103
  store i32 %15, ptr %arrayidx132, align 4, !tbaa !5
  br label %for.cond120, !llvm.loop !21

for.inc136:                                       ; preds = %for.cond120
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1
  br label %for.cond117, !llvm.loop !22

for.end138:                                       ; preds = %for.cond117
  %add = add nsw i32 %13, %sum.0
  %16 = trunc nsw i64 %indvars.iv.next110 to i32
  store i32 %16, ptr %n, align 4, !tbaa !5
  br label %while.cond11, !llvm.loop !23

while.end:                                        ; preds = %while.cond11
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call139, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %dec141 = add nsw i32 %t.0, -1
  br label %while.cond, !llvm.loop !24

while.end142:                                     ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 44100, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
