; ModuleID = '<stdin>'
source_filename = "/tmp/tmpjv428e67.cpp"
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
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.cond.cleanup17, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc137, %for.cond.cleanup17 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end138

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond.cleanup7, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc13, %for.cond.cleanup7 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %i.0, %1
  br i1 %cmp2, label %for.body4, label %for.cond.cleanup3

for.cond.cleanup3:                                ; preds = %for.cond1
  br label %for.cond15

for.body4:                                        ; preds = %for.cond1
  br label %for.cond5

for.cond5:                                        ; preds = %for.body8, %for.body4
  %j.0 = phi i32 [ 0, %for.body4 ], [ %inc, %for.body8 ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %j.0, %2
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  %inc13 = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !9

for.body8:                                        ; preds = %for.cond5
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond5, !llvm.loop !12

for.cond15:                                       ; preds = %for.cond.cleanup72, %for.cond.cleanup3
  %t.0 = phi i32 [ 0, %for.cond.cleanup3 ], [ %add124, %for.cond.cleanup72 ]
  %total.0 = phi i32 [ 0, %for.cond.cleanup3 ], [ %add130, %for.cond.cleanup72 ]
  %sub = sub nsw i32 %1, 1
  %cmp16 = icmp slt i32 %t.0, %sub
  br i1 %cmp16, label %for.body18, label %for.cond.cleanup17

for.cond.cleanup17:                               ; preds = %for.cond15
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %total.0)
  %call135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call134, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc137 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !13

for.body18:                                       ; preds = %for.cond15
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc66, %for.body18
  %i19.0 = phi i32 [ 0, %for.body18 ], [ %inc67, %for.inc66 ]
  %cmp21 = icmp slt i32 %i19.0, %1
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22

for.cond.cleanup22:                               ; preds = %for.cond20
  br label %for.cond70

for.body23:                                       ; preds = %for.cond20
  %cmp24 = icmp ne i32 %i19.0, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body23
  %cmp25 = icmp sle i32 %i19.0, %t.0
  br i1 %cmp25, label %for.inc66, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body23
  %idxprom26 = sext i32 %i19.0 to i64
  %arrayidx27 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom26
  %3 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  %add = add nsw i32 %t.0, 1
  br label %for.cond30

for.cond30:                                       ; preds = %if.end44, %if.end
  %j29.0 = phi i32 [ %add, %if.end ], [ %inc46, %if.end44 ]
  %minValue.0 = phi i32 [ %3, %if.end ], [ %minValue.1, %if.end44 ]
  %cmp31 = icmp slt i32 %j29.0, %1
  br i1 %cmp31, label %for.body33, label %for.cond.cleanup32

for.cond.cleanup32:                               ; preds = %for.cond30
  %sub51 = sub nsw i32 %3, %minValue.0
  store i32 %sub51, ptr %arrayidx27, align 16, !tbaa !5
  br label %for.cond54

for.body33:                                       ; preds = %for.cond30
  %idxprom36 = sext i32 %j29.0 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom36
  %4 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %4, %minValue.0
  br i1 %cmp38, label %if.then39, label %if.end44

if.then39:                                        ; preds = %for.body33
  br label %if.end44

if.end44:                                         ; preds = %if.then39, %for.body33
  %minValue.1 = phi i32 [ %4, %if.then39 ], [ %minValue.0, %for.body33 ]
  %inc46 = add nsw i32 %j29.0, 1
  br label %for.cond30, !llvm.loop !14

for.cond54:                                       ; preds = %for.body57, %for.cond.cleanup32
  %j52.0 = phi i32 [ %add, %for.cond.cleanup32 ], [ %inc64, %for.body57 ]
  %cmp55 = icmp slt i32 %j52.0, %1
  br i1 %cmp55, label %for.body57, label %for.inc66

for.body57:                                       ; preds = %for.cond54
  %idxprom60 = sext i32 %j52.0 to i64
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom60
  %5 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %sub62 = sub nsw i32 %5, %minValue.0
  store i32 %sub62, ptr %arrayidx61, align 4, !tbaa !5
  %inc64 = add nsw i32 %j52.0, 1
  br label %for.cond54, !llvm.loop !15

for.inc66:                                        ; preds = %for.cond54, %land.lhs.true
  %inc67 = add nsw i32 %i19.0, 1
  br label %for.cond20, !llvm.loop !16

for.cond70:                                       ; preds = %for.inc121, %for.cond.cleanup22
  %j69.0 = phi i32 [ 0, %for.cond.cleanup22 ], [ %inc122, %for.inc121 ]
  %cmp71 = icmp slt i32 %j69.0, %1
  br i1 %cmp71, label %for.body73, label %for.cond.cleanup72

for.cond.cleanup72:                               ; preds = %for.cond70
  %add124 = add nsw i32 %t.0, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom125
  %arrayidx129 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom125
  %6 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %add130 = add nsw i32 %total.0, %6
  br label %for.cond15, !llvm.loop !17

for.body73:                                       ; preds = %for.cond70
  %cmp74 = icmp ne i32 %j69.0, 0
  br i1 %cmp74, label %land.lhs.true75, label %if.end78

land.lhs.true75:                                  ; preds = %for.body73
  %cmp76 = icmp sle i32 %j69.0, %t.0
  br i1 %cmp76, label %for.inc121, label %if.end78

if.end78:                                         ; preds = %land.lhs.true75, %for.body73
  %idxprom81 = sext i32 %j69.0 to i64
  %arrayidx82 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom81
  %7 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  %add84 = add nsw i32 %t.0, 1
  br label %for.cond85

for.cond85:                                       ; preds = %if.end99, %if.end78
  %i83.0 = phi i32 [ %add84, %if.end78 ], [ %inc101, %if.end99 ]
  %minValue79.0 = phi i32 [ %7, %if.end78 ], [ %minValue79.1, %if.end99 ]
  %cmp86 = icmp slt i32 %i83.0, %1
  br i1 %cmp86, label %for.body88, label %for.cond.cleanup87

for.cond.cleanup87:                               ; preds = %for.cond85
  %sub106 = sub nsw i32 %7, %minValue79.0
  store i32 %sub106, ptr %arrayidx82, align 4, !tbaa !5
  br label %for.cond109

for.body88:                                       ; preds = %for.cond85
  %idxprom89 = sext i32 %i83.0 to i64
  %arrayidx90 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom89
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %arrayidx90, i64 0, i64 %idxprom81
  %8 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %8, %minValue79.0
  br i1 %cmp93, label %if.then94, label %if.end99

if.then94:                                        ; preds = %for.body88
  br label %if.end99

if.end99:                                         ; preds = %if.then94, %for.body88
  %minValue79.1 = phi i32 [ %8, %if.then94 ], [ %minValue79.0, %for.body88 ]
  %inc101 = add nsw i32 %i83.0, 1
  br label %for.cond85, !llvm.loop !18

for.cond109:                                      ; preds = %for.body112, %for.cond.cleanup87
  %i107.0 = phi i32 [ %add84, %for.cond.cleanup87 ], [ %inc119, %for.body112 ]
  %cmp110 = icmp slt i32 %i107.0, %1
  br i1 %cmp110, label %for.body112, label %for.inc121

for.body112:                                      ; preds = %for.cond109
  %idxprom113 = sext i32 %i107.0 to i64
  %arrayidx114 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom113
  %arrayidx116 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom81
  %9 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %sub117 = sub nsw i32 %9, %minValue79.0
  store i32 %sub117, ptr %arrayidx116, align 4, !tbaa !5
  %inc119 = add nsw i32 %i107.0, 1
  br label %for.cond109, !llvm.loop !19

for.inc121:                                       ; preds = %for.cond109, %land.lhs.true75
  %inc122 = add nsw i32 %j69.0, 1
  br label %for.cond70, !llvm.loop !20

for.end138:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
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
