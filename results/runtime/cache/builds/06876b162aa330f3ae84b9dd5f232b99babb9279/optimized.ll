; ModuleID = '<stdin>'
source_filename = "/tmp/tmpf3hschbx.cpp"
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
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %l = alloca i32, align 4
  %a = alloca [100 x [100 x i32]], align 16
  %sum = alloca i32, align 4
  %temp = alloca i32, align 4
  %min = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %l) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %sum) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %temp) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc143, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end145

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
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.inc10:                                        ; preds = %for.cond4
  %inc11 = add nsw i32 %2, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %min) #6
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 1, ptr %temp, align 4, !tbaa !5
  store i32 0, ptr %l, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc138, %for.end12
  %6 = load i32, ptr %l, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp14 = icmp slt i32 %6, %sub
  br i1 %cmp14, label %for.body15, label %for.inc143

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc60, %for.body15
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %7, %3
  br i1 %cmp17, label %for.body18, label %for.end62

for.body18:                                       ; preds = %for.cond16
  %idxprom19 = sext i32 %7 to i64
  %arrayidx20 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom19
  %8 = load i32, ptr %arrayidx20, align 16, !tbaa !5
  store i32 %8, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc39, %for.body18
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %9, %3
  br i1 %cmp23, label %for.body24, label %for.end41

for.body24:                                       ; preds = %for.cond22
  %idxprom27 = sext i32 %9 to i64
  %arrayidx28 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom27
  %10 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %11 = load i32, ptr %min, align 4, !tbaa !5
  %cmp29 = icmp slt i32 %10, %11
  br i1 %cmp29, label %land.lhs.true, label %for.inc39

land.lhs.true:                                    ; preds = %for.body24
  %cmp34 = icmp sge i32 %10, 0
  br i1 %cmp34, label %if.then, label %for.inc39

if.then:                                          ; preds = %land.lhs.true
  store i32 %10, ptr %min, align 4, !tbaa !5
  br label %for.inc39

for.inc39:                                        ; preds = %for.body24, %land.lhs.true, %if.then
  %inc40 = add nsw i32 %9, 1
  store i32 %inc40, ptr %j, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end41:                                        ; preds = %for.cond22
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond42

for.cond42:                                       ; preds = %for.inc57, %for.end41
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %cmp43 = icmp slt i32 %12, %3
  br i1 %cmp43, label %for.body44, label %for.inc60

for.body44:                                       ; preds = %for.cond42
  %idxprom47 = sext i32 %12 to i64
  %arrayidx48 = getelementptr inbounds [100 x i32], ptr %arrayidx20, i64 0, i64 %idxprom47
  %13 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %cmp49 = icmp sge i32 %13, 0
  br i1 %cmp49, label %if.then50, label %for.inc57

if.then50:                                        ; preds = %for.body44
  %14 = load i32, ptr %min, align 4, !tbaa !5
  %sub55 = sub nsw i32 %13, %14
  store i32 %sub55, ptr %arrayidx48, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.body44, %if.then50
  %inc58 = add nsw i32 %12, 1
  store i32 %inc58, ptr %j, align 4, !tbaa !5
  br label %for.cond42, !llvm.loop !14

for.inc60:                                        ; preds = %for.cond42
  %inc61 = add nsw i32 %7, 1
  store i32 %inc61, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !15

for.end62:                                        ; preds = %for.cond16
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc110, %for.end62
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %15, %3
  br i1 %cmp64, label %for.body65, label %for.end112

for.body65:                                       ; preds = %for.cond63
  %idxprom67 = sext i32 %15 to i64
  %arrayidx68 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom67
  %16 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  store i32 %16, ptr %min, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond69

for.cond69:                                       ; preds = %for.inc89, %for.body65
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %cmp70 = icmp slt i32 %17, %3
  br i1 %cmp70, label %for.body71, label %for.end91

for.body71:                                       ; preds = %for.cond69
  %idxprom72 = sext i32 %17 to i64
  %arrayidx73 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom72
  %arrayidx75 = getelementptr inbounds [100 x i32], ptr %arrayidx73, i64 0, i64 %idxprom67
  %18 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %19 = load i32, ptr %min, align 4, !tbaa !5
  %cmp76 = icmp slt i32 %18, %19
  br i1 %cmp76, label %land.lhs.true77, label %for.inc89

land.lhs.true77:                                  ; preds = %for.body71
  %cmp82 = icmp sge i32 %18, 0
  br i1 %cmp82, label %if.then83, label %for.inc89

if.then83:                                        ; preds = %land.lhs.true77
  store i32 %18, ptr %min, align 4, !tbaa !5
  br label %for.inc89

for.inc89:                                        ; preds = %for.body71, %land.lhs.true77, %if.then83
  %inc90 = add nsw i32 %17, 1
  store i32 %inc90, ptr %i, align 4, !tbaa !5
  br label %for.cond69, !llvm.loop !16

for.end91:                                        ; preds = %for.cond69
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond92

for.cond92:                                       ; preds = %for.inc107, %for.end91
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %20, %3
  br i1 %cmp93, label %for.body94, label %for.inc110

for.body94:                                       ; preds = %for.cond92
  %idxprom95 = sext i32 %20 to i64
  %arrayidx96 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom95
  %arrayidx98 = getelementptr inbounds [100 x i32], ptr %arrayidx96, i64 0, i64 %idxprom67
  %21 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %cmp99 = icmp sge i32 %21, 0
  br i1 %cmp99, label %if.then100, label %for.inc107

if.then100:                                       ; preds = %for.body94
  %22 = load i32, ptr %min, align 4, !tbaa !5
  %sub105 = sub nsw i32 %21, %22
  store i32 %sub105, ptr %arrayidx98, align 4, !tbaa !5
  br label %for.inc107

for.inc107:                                       ; preds = %for.body94, %if.then100
  %inc108 = add nsw i32 %20, 1
  store i32 %inc108, ptr %i, align 4, !tbaa !5
  br label %for.cond92, !llvm.loop !17

for.inc110:                                       ; preds = %for.cond92
  %inc111 = add nsw i32 %15, 1
  store i32 %inc111, ptr %j, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !18

for.end112:                                       ; preds = %for.cond63
  %23 = load i32, ptr %temp, align 4, !tbaa !5
  %idxprom113 = sext i32 %23 to i64
  %arrayidx114 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom113
  %arrayidx116 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom113
  %24 = load i32, ptr %arrayidx116, align 4, !tbaa !5, !invariant.load !19
  %25 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %25, %24
  store i32 %add, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond117

for.cond117:                                      ; preds = %for.inc124, %for.end112
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %cmp118 = icmp slt i32 %26, %3
  br i1 %cmp118, label %for.inc124, label %for.end126

for.inc124:                                       ; preds = %for.cond117
  %idxprom120 = sext i32 %26 to i64
  %arrayidx121 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom120
  %arrayidx123 = getelementptr inbounds [100 x i32], ptr %arrayidx121, i64 0, i64 %idxprom113
  store i32 -1, ptr %arrayidx123, align 4, !tbaa !5
  %inc125 = add nsw i32 %26, 1
  store i32 %inc125, ptr %i, align 4, !tbaa !5
  br label %for.cond117, !llvm.loop !20

for.end126:                                       ; preds = %for.cond117
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond127

for.cond127:                                      ; preds = %for.inc134, %for.end126
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %cmp128 = icmp slt i32 %27, %3
  br i1 %cmp128, label %for.inc134, label %for.inc138

for.inc134:                                       ; preds = %for.cond127
  %idxprom132 = sext i32 %27 to i64
  %arrayidx133 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom132
  store i32 -1, ptr %arrayidx133, align 4, !tbaa !5
  %inc135 = add nsw i32 %27, 1
  store i32 %inc135, ptr %j, align 4, !tbaa !5
  br label %for.cond127, !llvm.loop !21

for.inc138:                                       ; preds = %for.cond127
  %inc137 = add nsw i32 %23, 1
  store i32 %inc137, ptr %temp, align 4, !tbaa !5
  %inc139 = add nsw i32 %6, 1
  store i32 %inc139, ptr %l, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !22

for.inc143:                                       ; preds = %for.cond13
  %28 = load i32, ptr %sum, align 4, !tbaa !5
  %call141 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %28)
  %call142 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call141, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %min) #6
  %inc144 = add nsw i32 %0, 1
  store i32 %inc144, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !23

for.end145:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %temp) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %l) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
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
!19 = !{}
!20 = distinct !{!20, !10, !11}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
