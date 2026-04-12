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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 44100, ptr noundef align 16 %a) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %t.0 = phi i32 [ %0, %entry ], [ %dec141, %while.end ]
  %cmp = icmp sgt i32 %t.0, 0
  br i1 %cmp, label %while.body, label %while.end142

while.body:                                       ; preds = %while.cond
  store i32 %0, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.end, %while.body
  %i.0 = phi i32 [ 0, %while.body ], [ %inc9, %for.end ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp1 = icmp slt i32 %i.0, %1
  br i1 %cmp1, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.body4 ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %j.0, %2
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %j.0 to i64
  %arrayidx6 = getelementptr inbounds [105 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  %inc9 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  br label %while.cond11

while.cond11:                                     ; preds = %for.end138, %for.end10
  %3 = phi i32 [ %dec, %for.end138 ], [ %1, %for.end10 ]
  %sum.0 = phi i32 [ 0, %for.end10 ], [ %add, %for.end138 ]
  %cmp12 = icmp sgt i32 %3, 1
  br i1 %cmp12, label %while.body13, label %while.end

while.body13:                                     ; preds = %while.cond11
  br label %for.cond14

for.cond14:                                       ; preds = %for.end48, %while.body13
  %i.1 = phi i32 [ 0, %while.body13 ], [ %inc50, %for.end48 ]
  %cmp15 = icmp slt i32 %i.1, %3
  br i1 %cmp15, label %for.body16, label %for.end51

for.body16:                                       ; preds = %for.cond14
  %idxprom17 = sext i32 %i.1 to i64
  %arrayidx18 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom17
  %4 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.cond20

for.cond20:                                       ; preds = %if.end, %for.body16
  %min.0 = phi i32 [ %4, %for.body16 ], [ %min.1, %if.end ]
  %j.1 = phi i32 [ 0, %for.body16 ], [ %inc33, %if.end ]
  %cmp21 = icmp slt i32 %j.1, %3
  br i1 %cmp21, label %for.body22, label %for.end34

for.body22:                                       ; preds = %for.cond20
  %idxprom25 = sext i32 %j.1 to i64
  %arrayidx26 = getelementptr inbounds [105 x i32], ptr %arrayidx18, i64 0, i64 %idxprom25
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %min.0, %5
  br i1 %cmp27, label %if.then, label %if.end

if.then:                                          ; preds = %for.body22
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body22
  %min.1 = phi i32 [ %5, %if.then ], [ %min.0, %for.body22 ]
  %inc33 = add nsw i32 %j.1, 1
  br label %for.cond20, !llvm.loop !13

for.end34:                                        ; preds = %for.cond20
  br label %for.cond35

for.cond35:                                       ; preds = %for.body37, %for.end34
  %j.2 = phi i32 [ 0, %for.end34 ], [ %inc47, %for.body37 ]
  %cmp36 = icmp slt i32 %j.2, %3
  br i1 %cmp36, label %for.body37, label %for.end48

for.body37:                                       ; preds = %for.cond35
  %idxprom40 = sext i32 %j.2 to i64
  %arrayidx41 = getelementptr inbounds [105 x i32], ptr %arrayidx18, i64 0, i64 %idxprom40
  %6 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %min.0
  store i32 %sub, ptr %arrayidx41, align 4, !tbaa !5
  %inc47 = add nsw i32 %j.2, 1
  br label %for.cond35, !llvm.loop !14

for.end48:                                        ; preds = %for.cond35
  %inc50 = add nsw i32 %i.1, 1
  br label %for.cond14, !llvm.loop !15

for.end51:                                        ; preds = %for.cond14
  br label %for.cond52

for.cond52:                                       ; preds = %for.end89, %for.end51
  %j.3 = phi i32 [ 0, %for.end51 ], [ %inc91, %for.end89 ]
  %cmp53 = icmp slt i32 %j.3, %3
  br i1 %cmp53, label %for.body54, label %for.end92

for.body54:                                       ; preds = %for.cond52
  %idxprom56 = sext i32 %j.3 to i64
  %arrayidx57 = getelementptr inbounds [105 x i32], ptr %a, i64 0, i64 %idxprom56
  %7 = load i32, ptr %arrayidx57, align 4, !tbaa !5
  br label %for.cond58

for.cond58:                                       ; preds = %if.end71, %for.body54
  %min.2 = phi i32 [ %7, %for.body54 ], [ %min.3, %if.end71 ]
  %i.2 = phi i32 [ 0, %for.body54 ], [ %inc73, %if.end71 ]
  %cmp59 = icmp slt i32 %i.2, %3
  br i1 %cmp59, label %for.body60, label %for.end74

for.body60:                                       ; preds = %for.cond58
  %idxprom61 = sext i32 %i.2 to i64
  %arrayidx62 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom61
  %arrayidx64 = getelementptr inbounds [105 x i32], ptr %arrayidx62, i64 0, i64 %idxprom56
  %8 = load i32, ptr %arrayidx64, align 4, !tbaa !5
  %cmp65 = icmp sgt i32 %min.2, %8
  br i1 %cmp65, label %if.then66, label %if.end71

if.then66:                                        ; preds = %for.body60
  br label %if.end71

if.end71:                                         ; preds = %if.then66, %for.body60
  %min.3 = phi i32 [ %8, %if.then66 ], [ %min.2, %for.body60 ]
  %inc73 = add nsw i32 %i.2, 1
  br label %for.cond58, !llvm.loop !16

for.end74:                                        ; preds = %for.cond58
  br label %for.cond75

for.cond75:                                       ; preds = %for.body77, %for.end74
  %i.3 = phi i32 [ 0, %for.end74 ], [ %inc88, %for.body77 ]
  %cmp76 = icmp slt i32 %i.3, %3
  br i1 %cmp76, label %for.body77, label %for.end89

for.body77:                                       ; preds = %for.cond75
  %idxprom78 = sext i32 %i.3 to i64
  %arrayidx79 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom78
  %arrayidx81 = getelementptr inbounds [105 x i32], ptr %arrayidx79, i64 0, i64 %idxprom56
  %9 = load i32, ptr %arrayidx81, align 4, !tbaa !5
  %sub82 = sub nsw i32 %9, %min.2
  store i32 %sub82, ptr %arrayidx81, align 4, !tbaa !5
  %inc88 = add nsw i32 %i.3, 1
  br label %for.cond75, !llvm.loop !17

for.end89:                                        ; preds = %for.cond75
  %inc91 = add nsw i32 %j.3, 1
  br label %for.cond52, !llvm.loop !18

for.end92:                                        ; preds = %for.cond52
  %arrayidx93 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 1
  %arrayidx94 = getelementptr inbounds [105 x i32], ptr %arrayidx93, i64 0, i64 1
  %10 = load i32, ptr %arrayidx94, align 8, !tbaa !5
  %add = add nsw i32 %sum.0, %10
  br label %for.cond95

for.cond95:                                       ; preds = %for.end113, %for.end92
  %i.4 = phi i32 [ 0, %for.end92 ], [ %inc115, %for.end113 ]
  %cmp96 = icmp slt i32 %i.4, %3
  br i1 %cmp96, label %for.body97, label %for.end116

for.body97:                                       ; preds = %for.cond95
  br label %for.cond98

for.cond98:                                       ; preds = %for.body101, %for.body97
  %j.4 = phi i32 [ 1, %for.body97 ], [ %add104, %for.body101 ]
  %sub99 = sub nsw i32 %3, 1
  %cmp100 = icmp slt i32 %j.4, %sub99
  br i1 %cmp100, label %for.body101, label %for.end113

for.body101:                                      ; preds = %for.cond98
  %idxprom102 = sext i32 %i.4 to i64
  %arrayidx103 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom102
  %add104 = add nsw i32 %j.4, 1
  %idxprom105 = sext i32 %add104 to i64
  %arrayidx106 = getelementptr inbounds [105 x i32], ptr %arrayidx103, i64 0, i64 %idxprom105
  %11 = load i32, ptr %arrayidx106, align 4, !tbaa !5
  %idxprom109 = sext i32 %j.4 to i64
  %arrayidx110 = getelementptr inbounds [105 x i32], ptr %arrayidx103, i64 0, i64 %idxprom109
  store i32 %11, ptr %arrayidx110, align 4, !tbaa !5
  br label %for.cond98, !llvm.loop !19

for.end113:                                       ; preds = %for.cond98
  %inc115 = add nsw i32 %i.4, 1
  br label %for.cond95, !llvm.loop !20

for.end116:                                       ; preds = %for.cond95
  br label %for.cond117

for.cond117:                                      ; preds = %for.end135, %for.end116
  %j.5 = phi i32 [ 0, %for.end116 ], [ %inc137, %for.end135 ]
  %cmp118 = icmp slt i32 %j.5, %3
  br i1 %cmp118, label %for.body119, label %for.end138

for.body119:                                      ; preds = %for.cond117
  br label %for.cond120

for.cond120:                                      ; preds = %for.body123, %for.body119
  %i.5 = phi i32 [ 1, %for.body119 ], [ %add124, %for.body123 ]
  %sub121 = sub nsw i32 %3, 1
  %cmp122 = icmp slt i32 %i.5, %sub121
  br i1 %cmp122, label %for.body123, label %for.end135

for.body123:                                      ; preds = %for.cond120
  %add124 = add nsw i32 %i.5, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom125
  %idxprom127 = sext i32 %j.5 to i64
  %arrayidx128 = getelementptr inbounds [105 x i32], ptr %arrayidx126, i64 0, i64 %idxprom127
  %12 = load i32, ptr %arrayidx128, align 4, !tbaa !5
  %idxprom129 = sext i32 %i.5 to i64
  %arrayidx130 = getelementptr inbounds [105 x [105 x i32]], ptr %a, i64 0, i64 %idxprom129
  %arrayidx132 = getelementptr inbounds [105 x i32], ptr %arrayidx130, i64 0, i64 %idxprom127
  store i32 %12, ptr %arrayidx132, align 4, !tbaa !5
  br label %for.cond120, !llvm.loop !21

for.end135:                                       ; preds = %for.cond120
  %inc137 = add nsw i32 %j.5, 1
  br label %for.cond117, !llvm.loop !22

for.end138:                                       ; preds = %for.cond117
  %dec = add nsw i32 %3, -1
  store i32 %dec, ptr %n, align 4, !tbaa !5
  br label %while.cond11, !llvm.loop !23

while.end:                                        ; preds = %while.cond11
  %call139 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call140 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call139, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %dec141 = add nsw i32 %t.0, -1
  br label %while.cond, !llvm.loop !24

while.end142:                                     ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 noundef 44100, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn }
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
