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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 44100, ptr noundef nonnull align 16 %a) #6
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
  %1 = phi i32 [ %6, %for.inc8 ], [ %0, %while.body ]
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %for.inc8 ], [ 0, %while.body ]
  %2 = sext i32 %1 to i64
  %cmp1 = icmp slt i64 %indvars.iv12, %2
  br i1 %cmp1, label %for.cond2, label %while.cond11.preheader

while.cond11.preheader:                           ; preds = %for.cond
  %3 = add i32 %1, -1
  %4 = zext i32 %3 to i64
  %5 = zext i32 %1 to i64
  br label %while.cond11

for.cond2:                                        ; preds = %for.cond, %for.inc
  %6 = phi i32 [ %.pre, %for.inc ], [ %1, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %7 = sext i32 %6 to i64
  %cmp3 = icmp slt i64 %indvars.iv, %7
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv12, i64 %indvars.iv
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond, !llvm.loop !12

while.cond11:                                     ; preds = %while.cond11.preheader, %for.end138
  %indvars.iv69 = phi i64 [ %5, %while.cond11.preheader ], [ %indvars.iv.next70, %for.end138 ]
  %indvars.iv66 = phi i64 [ %4, %while.cond11.preheader ], [ %indvars.iv.next67, %for.end138 ]
  %sum.0 = phi i32 [ 0, %while.cond11.preheader ], [ %add, %for.end138 ]
  %8 = trunc nuw i64 %indvars.iv69 to i32
  %cmp12 = icmp sgt i32 %8, 1
  br i1 %cmp12, label %for.cond14, label %while.end

for.cond14:                                       ; preds = %while.cond11, %for.inc49
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc49 ], [ 0, %while.cond11 ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %indvars.iv69
  br i1 %exitcond27.not, label %for.cond52, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv23
  %9 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %for.body22, %for.body16
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body22 ], [ 0, %for.body16 ]
  %min.0 = phi i32 [ %spec.select, %for.body22 ], [ %9, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv15, %indvars.iv69
  br i1 %exitcond.not, label %for.cond35.preheader, label %for.body22

for.cond35.preheader:                             ; preds = %for.cond20
  br label %for.cond35

for.body22:                                       ; preds = %for.cond20
  %arrayidx26 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv23, i64 %indvars.iv15
  %10 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smin.i32(i32 %min.0, i32 %10)
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond20, !llvm.loop !13

for.cond35:                                       ; preds = %for.cond35.preheader, %for.inc46
  %indvars.iv18 = phi i64 [ 0, %for.cond35.preheader ], [ %indvars.iv.next19, %for.inc46 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %indvars.iv69
  br i1 %exitcond22.not, label %for.inc49, label %for.inc46

for.inc46:                                        ; preds = %for.cond35
  %arrayidx41 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv23, i64 %indvars.iv18
  %11 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %min.0
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !5
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond35, !llvm.loop !14

for.inc49:                                        ; preds = %for.cond35
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond14, !llvm.loop !15

for.cond52:                                       ; preds = %for.cond14, %for.inc90
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc90 ], [ 0, %for.cond14 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %indvars.iv69
  br i1 %exitcond42.not, label %for.end92, label %for.body54

for.body54:                                       ; preds = %for.cond52
  %arrayidx57 = getelementptr inbounds nuw [105 x i32], ptr %a, i64 0, i64 %indvars.iv38
  %12 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %for.body60, %for.body54
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.body60 ], [ 0, %for.body54 ]
  %min.2 = phi i32 [ %spec.select10, %for.body60 ], [ %12, %for.body54 ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %indvars.iv69
  br i1 %exitcond32.not, label %for.cond75.preheader, label %for.body60

for.cond75.preheader:                             ; preds = %for.cond58
  br label %for.cond75

for.body60:                                       ; preds = %for.cond58
  %arrayidx64 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv28, i64 %indvars.iv38
  %13 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %spec.select10 = call i32 @llvm.smin.i32(i32 %min.2, i32 %13)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond58, !llvm.loop !16

for.cond75:                                       ; preds = %for.cond75.preheader, %for.inc87
  %indvars.iv33 = phi i64 [ 0, %for.cond75.preheader ], [ %indvars.iv.next34, %for.inc87 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %indvars.iv69
  br i1 %exitcond37.not, label %for.inc90, label %for.inc87

for.inc87:                                        ; preds = %for.cond75
  %arrayidx81 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv38
  %14 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %sub82 = sub nsw i32 %14, %min.2
  store i32 %sub82, ptr %arrayidx81, align 4, !tbaa !5
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond75, !llvm.loop !17

for.inc90:                                        ; preds = %for.cond75
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond52, !llvm.loop !18

for.end92:                                        ; preds = %for.cond52
  %15 = load i32, ptr %arrayidx94, align 8, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc114, %for.end92
  %indvars.iv51 = phi i64 [ %indvars.iv.next52, %for.inc114 ], [ 0, %for.end92 ]
  %exitcond55.not = icmp eq i64 %indvars.iv51, %indvars.iv69
  br i1 %exitcond55.not, label %for.cond117, label %for.cond98

for.cond98:                                       ; preds = %for.cond95, %for.inc111
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc111 ], [ 1, %for.cond95 ]
  %exitcond50.not = icmp eq i64 %indvars.iv43, %indvars.iv66
  br i1 %exitcond50.not, label %for.inc114, label %for.inc111

for.inc111:                                       ; preds = %for.cond98
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %arrayidx106 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv51, i64 %indvars.iv.next44
  %16 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %arrayidx110 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv51, i64 %indvars.iv43
  store i32 %16, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond98, !llvm.loop !19

for.inc114:                                       ; preds = %for.cond98
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  br label %for.cond95, !llvm.loop !20

for.cond117:                                      ; preds = %for.cond95, %for.inc136
  %indvars.iv61 = phi i64 [ %indvars.iv.next62, %for.inc136 ], [ 0, %for.cond95 ]
  %exitcond65.not = icmp eq i64 %indvars.iv61, %indvars.iv69
  br i1 %exitcond65.not, label %for.end138, label %for.cond120

for.cond120:                                      ; preds = %for.cond117, %for.inc133
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %for.inc133 ], [ 1, %for.cond117 ]
  %exitcond60.not = icmp eq i64 %indvars.iv56, %indvars.iv66
  br i1 %exitcond60.not, label %for.inc136, label %for.inc133

for.inc133:                                       ; preds = %for.cond120
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %arrayidx128 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv.next57, i64 %indvars.iv61
  %17 = load i32, ptr %arrayidx128, align 4, !tbaa !5
  %arrayidx132 = getelementptr inbounds nuw [105 x [105 x i32]], ptr %a, i64 0, i64 %indvars.iv56, i64 %indvars.iv61
  store i32 %17, ptr %arrayidx132, align 4, !tbaa !5
  br label %for.cond120, !llvm.loop !21

for.inc136:                                       ; preds = %for.cond120
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond117, !llvm.loop !22

for.end138:                                       ; preds = %for.cond117
  %add = add nsw i32 %15, %sum.0
  %indvars.iv.next70 = add nsw i64 %indvars.iv69, -1
  %indvars72 = trunc i64 %indvars.iv.next70 to i32
  store i32 %indvars72, ptr %n, align 4, !tbaa !5
  %indvars.iv.next67 = add nsw i64 %indvars.iv66, -1
  br label %while.cond11, !llvm.loop !23

while.end:                                        ; preds = %while.cond11
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call139, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %dec141 = add nsw i32 %t.0, -1
  br label %while.cond, !llvm.loop !24

while.end142:                                     ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 44100, ptr noundef nonnull %a) #7
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
