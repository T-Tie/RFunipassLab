; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwlwcxmz4.cpp"
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
  %a = alloca [101 x [101 x i32]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc139, %entry
  %k.0 = phi i32 [ 0, %entry ], [ %inc140, %for.inc139 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %k.0, %0
  br i1 %cmp, label %for.body, label %for.end141

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %i.0 = phi i32 [ 0, %for.body ], [ %inc11, %for.inc10 ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %i.0, %1
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %j.0 = phi i32 [ 0, %for.body3 ], [ %inc, %for.inc ]
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %j.0, %2
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %i.0, 1
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc135, %for.end12
  %sum.0 = phi i32 [ 0, %for.end12 ], [ %add, %for.inc135 ]
  %c.0 = phi i32 [ %1, %for.end12 ], [ %dec, %for.inc135 ]
  %cmp14 = icmp sgt i32 %c.0, 1
  br i1 %cmp14, label %for.body15, label %for.inc139

for.body15:                                       ; preds = %for.cond13
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc48, %for.body15
  %i.1 = phi i32 [ 0, %for.body15 ], [ %inc49, %for.inc48 ]
  %cmp17 = icmp slt i32 %i.1, %c.0
  br i1 %cmp17, label %for.body18, label %for.end50

for.body18:                                       ; preds = %for.cond16
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc31, %for.body18
  %j.1 = phi i32 [ 0, %for.body18 ], [ %inc32, %for.inc31 ]
  %min.0 = phi i32 [ 100000, %for.body18 ], [ %min.1, %for.inc31 ]
  %cmp20 = icmp slt i32 %j.1, %c.0
  br i1 %cmp20, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %i.1 to i64
  %arrayidx23 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom22
  %idxprom24 = sext i32 %j.1 to i64
  %arrayidx25 = getelementptr inbounds [101 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  %3 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !13
  %cmp26 = icmp slt i32 %3, %min.0
  br i1 %cmp26, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body21
  br label %for.inc31

for.inc31:                                        ; preds = %for.body21, %if.then
  %min.1 = phi i32 [ %3, %if.then ], [ %min.0, %for.body21 ]
  %inc32 = add nsw i32 %j.1, 1
  br label %for.cond19, !llvm.loop !14

for.end33:                                        ; preds = %for.cond19
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc45, %for.end33
  %j.2 = phi i32 [ 0, %for.end33 ], [ %inc46, %for.inc45 ]
  %cmp35 = icmp slt i32 %j.2, %c.0
  br i1 %cmp35, label %for.inc45, label %for.inc48

for.inc45:                                        ; preds = %for.cond34
  %idxprom37 = sext i32 %i.1 to i64
  %arrayidx38 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom37
  %idxprom39 = sext i32 %j.2 to i64
  %arrayidx40 = getelementptr inbounds [101 x i32], ptr %arrayidx38, i64 0, i64 %idxprom39
  %4 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !13
  %sub = sub nsw i32 %4, %min.0
  store i32 %sub, ptr %arrayidx40, align 4, !tbaa !5
  %inc46 = add nsw i32 %j.2, 1
  br label %for.cond34, !llvm.loop !15

for.inc48:                                        ; preds = %for.cond34
  %inc49 = add nsw i32 %i.1, 1
  br label %for.cond16, !llvm.loop !16

for.end50:                                        ; preds = %for.cond16
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc86, %for.end50
  %j.3 = phi i32 [ 0, %for.end50 ], [ %inc87, %for.inc86 ]
  %cmp52 = icmp slt i32 %j.3, %c.0
  br i1 %cmp52, label %for.body53, label %for.end88

for.body53:                                       ; preds = %for.cond51
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc68, %for.body53
  %i.2 = phi i32 [ 0, %for.body53 ], [ %inc69, %for.inc68 ]
  %min.2 = phi i32 [ 100000, %for.body53 ], [ %min.3, %for.inc68 ]
  %cmp55 = icmp slt i32 %i.2, %c.0
  br i1 %cmp55, label %for.body56, label %for.end70

for.body56:                                       ; preds = %for.cond54
  %idxprom57 = sext i32 %i.2 to i64
  %arrayidx58 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom57
  %idxprom59 = sext i32 %j.3 to i64
  %arrayidx60 = getelementptr inbounds [101 x i32], ptr %arrayidx58, i64 0, i64 %idxprom59
  %5 = load i32, ptr %arrayidx60, align 4, !tbaa !5, !invariant.load !13
  %cmp61 = icmp slt i32 %5, %min.2
  br i1 %cmp61, label %if.then62, label %for.inc68

if.then62:                                        ; preds = %for.body56
  br label %for.inc68

for.inc68:                                        ; preds = %for.body56, %if.then62
  %min.3 = phi i32 [ %5, %if.then62 ], [ %min.2, %for.body56 ]
  %inc69 = add nsw i32 %i.2, 1
  br label %for.cond54, !llvm.loop !17

for.end70:                                        ; preds = %for.cond54
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc83, %for.end70
  %i.3 = phi i32 [ 0, %for.end70 ], [ %inc84, %for.inc83 ]
  %cmp72 = icmp slt i32 %i.3, %c.0
  br i1 %cmp72, label %for.inc83, label %for.inc86

for.inc83:                                        ; preds = %for.cond71
  %idxprom74 = sext i32 %i.3 to i64
  %arrayidx75 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom74
  %idxprom76 = sext i32 %j.3 to i64
  %arrayidx77 = getelementptr inbounds [101 x i32], ptr %arrayidx75, i64 0, i64 %idxprom76
  %6 = load i32, ptr %arrayidx77, align 4, !tbaa !5, !invariant.load !13
  %sub78 = sub nsw i32 %6, %min.2
  store i32 %sub78, ptr %arrayidx77, align 4, !tbaa !5
  %inc84 = add nsw i32 %i.3, 1
  br label %for.cond71, !llvm.loop !18

for.inc86:                                        ; preds = %for.cond71
  %inc87 = add nsw i32 %j.3, 1
  br label %for.cond51, !llvm.loop !19

for.end88:                                        ; preds = %for.cond51
  %arrayidx89 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 1
  %arrayidx90 = getelementptr inbounds [101 x i32], ptr %arrayidx89, i64 0, i64 1
  %7 = load i32, ptr %arrayidx90, align 8, !tbaa !5
  %add = add nsw i32 %sum.0, %7
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc110, %for.end88
  %i.4 = phi i32 [ 1, %for.end88 ], [ %inc111, %for.inc110 ]
  %sub92 = sub nsw i32 %c.0, 1
  %cmp93 = icmp slt i32 %i.4, %sub92
  br i1 %cmp93, label %for.body94, label %for.end112

for.body94:                                       ; preds = %for.cond91
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc107, %for.body94
  %j.4 = phi i32 [ 0, %for.body94 ], [ %inc108, %for.inc107 ]
  %cmp96 = icmp slt i32 %j.4, %c.0
  %inc111 = add nsw i32 %i.4, 1
  br i1 %cmp96, label %for.inc107, label %for.inc110

for.inc107:                                       ; preds = %for.cond95
  %idxprom99 = sext i32 %inc111 to i64
  %arrayidx100 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom99
  %idxprom101 = sext i32 %j.4 to i64
  %arrayidx102 = getelementptr inbounds [101 x i32], ptr %arrayidx100, i64 0, i64 %idxprom101
  %8 = load i32, ptr %arrayidx102, align 4, !tbaa !5, !invariant.load !13
  %idxprom103 = sext i32 %i.4 to i64
  %arrayidx104 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom103
  %arrayidx106 = getelementptr inbounds [101 x i32], ptr %arrayidx104, i64 0, i64 %idxprom101
  store i32 %8, ptr %arrayidx106, align 4, !tbaa !5
  %inc108 = add nsw i32 %j.4, 1
  br label %for.cond95, !llvm.loop !20

for.inc110:                                       ; preds = %for.cond95
  br label %for.cond91, !llvm.loop !21

for.end112:                                       ; preds = %for.cond91
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc132, %for.end112
  %j.5 = phi i32 [ 1, %for.end112 ], [ %inc133, %for.inc132 ]
  %cmp114 = icmp slt i32 %j.5, %c.0
  br i1 %cmp114, label %for.body115, label %for.inc135

for.body115:                                      ; preds = %for.cond113
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc129, %for.body115
  %i.5 = phi i32 [ 0, %for.body115 ], [ %inc130, %for.inc129 ]
  %cmp118 = icmp slt i32 %i.5, %sub92
  %inc133 = add nsw i32 %j.5, 1
  br i1 %cmp118, label %for.inc129, label %for.inc132

for.inc129:                                       ; preds = %for.cond116
  %idxprom120 = sext i32 %i.5 to i64
  %arrayidx121 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom120
  %idxprom123 = sext i32 %inc133 to i64
  %arrayidx124 = getelementptr inbounds [101 x i32], ptr %arrayidx121, i64 0, i64 %idxprom123
  %9 = load i32, ptr %arrayidx124, align 4, !tbaa !5, !invariant.load !13
  %idxprom127 = sext i32 %j.5 to i64
  %arrayidx128 = getelementptr inbounds [101 x i32], ptr %arrayidx121, i64 0, i64 %idxprom127
  store i32 %9, ptr %arrayidx128, align 4, !tbaa !5
  %inc130 = add nsw i32 %i.5, 1
  br label %for.cond116, !llvm.loop !22

for.inc132:                                       ; preds = %for.cond116
  br label %for.cond113, !llvm.loop !23

for.inc135:                                       ; preds = %for.cond113
  %dec = add nsw i32 %c.0, -1
  br label %for.cond13, !llvm.loop !24

for.inc139:                                       ; preds = %for.cond13
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %sum.0)
  %call138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call137, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc140 = add nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !25

for.end141:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40804, ptr noundef %a) #6
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
