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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %c18 = alloca i8, i32 0, align 4
  %sum = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  %min = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40804, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc139, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end141

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.inc, label %for.inc10

for.inc:                                          ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %2, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %sum, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc135, %for.end12
  %6 = phi i32 [ %dec, %for.inc135 ], [ %3, %for.end12 ]
  %cmp14 = icmp sgt i32 %6, 1
  br i1 %cmp14, label %for.body15, label %for.inc139

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc48, %for.body15
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %7, %6
  br i1 %cmp17, label %for.body18, label %for.end50

for.body18:                                       ; preds = %for.cond16
  store i32 100000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc31, %for.body18
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %8, %6
  br i1 %cmp20, label %for.body21, label %for.end33

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %7 to i64
  %arrayidx23 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom22
  %idxprom24 = sext i32 %8 to i64
  %arrayidx25 = getelementptr inbounds [101 x i32], ptr %arrayidx23, i64 0, i64 %idxprom24
  %9 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %10 = load i32, ptr %min, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %9, %10
  br i1 %cmp26, label %if.then, label %for.inc31

if.then:                                          ; preds = %for.body21
  store i32 %9, ptr %min, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body21, %if.then
  %inc32 = add nsw i32 %8, 1
  store i32 %inc32, ptr %j, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !13

for.end33:                                        ; preds = %for.cond19
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc45, %for.end33
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %11, %6
  br i1 %cmp35, label %for.inc45, label %for.inc48

for.inc45:                                        ; preds = %for.cond34
  %idxprom37 = sext i32 %7 to i64
  %arrayidx38 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom37
  %idxprom39 = sext i32 %11 to i64
  %arrayidx40 = getelementptr inbounds [101 x i32], ptr %arrayidx38, i64 0, i64 %idxprom39
  %12 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %13 = load i32, ptr %min, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %13
  store i32 %sub, ptr %arrayidx40, align 4, !tbaa !5
  %inc46 = add nsw i32 %11, 1
  store i32 %inc46, ptr %j, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !14

for.inc48:                                        ; preds = %for.cond34
  %inc49 = add nsw i32 %7, 1
  store i32 %inc49, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end50:                                        ; preds = %for.cond16
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond51

for.cond51:                                       ; preds = %for.inc86, %for.end50
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %cmp52 = icmp slt i32 %14, %6
  br i1 %cmp52, label %for.body53, label %for.end88

for.body53:                                       ; preds = %for.cond51
  store i32 100000, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc68, %for.body53
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %15, %6
  br i1 %cmp55, label %for.body56, label %for.end70

for.body56:                                       ; preds = %for.cond54
  %idxprom57 = sext i32 %15 to i64
  %arrayidx58 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom57
  %idxprom59 = sext i32 %14 to i64
  %arrayidx60 = getelementptr inbounds [101 x i32], ptr %arrayidx58, i64 0, i64 %idxprom59
  %16 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %17 = load i32, ptr %min, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %16, %17
  br i1 %cmp61, label %if.then62, label %for.inc68

if.then62:                                        ; preds = %for.body56
  store i32 %16, ptr %min, align 4, !tbaa !5
  br label %for.inc68

for.inc68:                                        ; preds = %for.body56, %if.then62
  %inc69 = add nsw i32 %15, 1
  store i32 %inc69, ptr %i, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !16

for.end70:                                        ; preds = %for.cond54
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond71

for.cond71:                                       ; preds = %for.inc83, %for.end70
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %cmp72 = icmp slt i32 %18, %6
  br i1 %cmp72, label %for.inc83, label %for.inc86

for.inc83:                                        ; preds = %for.cond71
  %idxprom74 = sext i32 %18 to i64
  %arrayidx75 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom74
  %idxprom76 = sext i32 %14 to i64
  %arrayidx77 = getelementptr inbounds [101 x i32], ptr %arrayidx75, i64 0, i64 %idxprom76
  %19 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %20 = load i32, ptr %min, align 4, !tbaa !5
  %sub78 = sub nsw i32 %19, %20
  store i32 %sub78, ptr %arrayidx77, align 4, !tbaa !5
  %inc84 = add nsw i32 %18, 1
  store i32 %inc84, ptr %i, align 4, !tbaa !5
  br label %for.cond71, !llvm.loop !17

for.inc86:                                        ; preds = %for.cond71
  %inc87 = add nsw i32 %14, 1
  store i32 %inc87, ptr %j, align 4, !tbaa !5
  br label %for.cond51, !llvm.loop !18

for.end88:                                        ; preds = %for.cond51
  %arrayidx89 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 1
  %arrayidx90 = getelementptr inbounds [101 x i32], ptr %arrayidx89, i64 0, i64 1
  %21 = load i32, ptr %arrayidx90, align 8, !tbaa !5
  %22 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %22, %21
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond91

for.cond91:                                       ; preds = %for.inc110, %for.end88
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %sub92 = sub nsw i32 %6, 1
  %cmp93 = icmp slt i32 %23, %sub92
  br i1 %cmp93, label %for.body94, label %for.end112

for.body94:                                       ; preds = %for.cond91
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond95

for.cond95:                                       ; preds = %for.inc107, %for.body94
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %cmp96 = icmp slt i32 %24, %6
  %inc111 = add nsw i32 %23, 1
  br i1 %cmp96, label %for.inc107, label %for.inc110

for.inc107:                                       ; preds = %for.cond95
  %idxprom99 = sext i32 %inc111 to i64
  %arrayidx100 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom99
  %idxprom101 = sext i32 %24 to i64
  %arrayidx102 = getelementptr inbounds [101 x i32], ptr %arrayidx100, i64 0, i64 %idxprom101
  %25 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %idxprom103 = sext i32 %23 to i64
  %arrayidx104 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom103
  %arrayidx106 = getelementptr inbounds [101 x i32], ptr %arrayidx104, i64 0, i64 %idxprom101
  store i32 %25, ptr %arrayidx106, align 4, !tbaa !5
  %inc108 = add nsw i32 %24, 1
  store i32 %inc108, ptr %j, align 4, !tbaa !5
  br label %for.cond95, !llvm.loop !19

for.inc110:                                       ; preds = %for.cond95
  store i32 %inc111, ptr %i, align 4, !tbaa !5
  br label %for.cond91, !llvm.loop !20

for.end112:                                       ; preds = %for.cond91
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond113

for.cond113:                                      ; preds = %for.inc132, %for.end112
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %cmp114 = icmp slt i32 %26, %6
  br i1 %cmp114, label %for.body115, label %for.inc135

for.body115:                                      ; preds = %for.cond113
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond116

for.cond116:                                      ; preds = %for.inc129, %for.body115
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %27, %sub92
  %inc133 = add nsw i32 %26, 1
  br i1 %cmp118, label %for.inc129, label %for.inc132

for.inc129:                                       ; preds = %for.cond116
  %idxprom120 = sext i32 %27 to i64
  %arrayidx121 = getelementptr inbounds [101 x [101 x i32]], ptr %a, i64 0, i64 %idxprom120
  %idxprom123 = sext i32 %inc133 to i64
  %arrayidx124 = getelementptr inbounds [101 x i32], ptr %arrayidx121, i64 0, i64 %idxprom123
  %28 = load i32, ptr %arrayidx124, align 4, !tbaa !5
  %idxprom127 = sext i32 %26 to i64
  %arrayidx128 = getelementptr inbounds [101 x i32], ptr %arrayidx121, i64 0, i64 %idxprom127
  store i32 %28, ptr %arrayidx128, align 4, !tbaa !5
  %inc130 = add nsw i32 %27, 1
  store i32 %inc130, ptr %i, align 4, !tbaa !5
  br label %for.cond116, !llvm.loop !21

for.inc132:                                       ; preds = %for.cond116
  store i32 %inc133, ptr %j, align 4, !tbaa !5
  br label %for.cond113, !llvm.loop !22

for.inc135:                                       ; preds = %for.cond113
  %dec = add nsw i32 %6, -1
  br label %for.cond13, !llvm.loop !23

for.inc139:                                       ; preds = %for.cond13
  %29 = load i32, ptr %sum, align 4, !tbaa !5
  %call137 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %29)
  %call138 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call137, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  %inc140 = add nsw i32 %0, 1
  store i32 %inc140, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !24

for.end141:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
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
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
