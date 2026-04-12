; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmyakh1hz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }

@a = dso_local global [101 x [101 x i32]] zeroinitializer, align 16
@_ZSt3cin = external global %"class.std::basic_istream", align 8
@_ZSt4cout = external global %"class.std::basic_ostream", align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #6
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc16, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end18

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom7 = sext i32 %4 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !9

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %inc11 = add nsw i32 %2, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end12:                                        ; preds = %for.cond1
  %call13 = call noundef i32 @_Z6hanshui(i32 noundef %3) #7
  %call14 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %call13)
  %call15 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call14, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc16

for.inc16:                                        ; preds = %for.end12
  %inc17 = add nsw i32 %0, 1
  store i32 %inc17, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end18:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6hanshui(i32 noundef %n) local_unnamed_addr #3 {
entry:
  %retval = alloca i32, align 4
  %min = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %min) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  %cmp = icmp eq i32 %n, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %if.else
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp1 = icmp sle i32 %0, %n
  br i1 %cmp1, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  store i32 10000, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %1, %n
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %1 to i64
  %arrayidx6 = getelementptr inbounds [101 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %3 = load i32, ptr %min, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %2, %3
  br i1 %cmp7, label %if.then8, label %if.end

if.then8:                                         ; preds = %for.body4
  store i32 %2, ptr %min, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then8, %for.body4
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end:                                          ; preds = %for.cond2
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc20, %for.end
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %4, %n
  br i1 %cmp14, label %for.body15, label %for.end22

for.body15:                                       ; preds = %for.cond13
  %5 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom16 = sext i32 %0 to i64
  %arrayidx17 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %4 to i64
  %arrayidx19 = getelementptr inbounds [101 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %sub = sub nsw i32 %6, %5
  store i32 %sub, ptr %arrayidx19, align 4, !tbaa !5
  br label %for.inc20

for.inc20:                                        ; preds = %for.body15
  %inc21 = add nsw i32 %4, 1
  store i32 %inc21, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !15

for.end22:                                        ; preds = %for.cond13
  br label %for.inc23

for.inc23:                                        ; preds = %for.end22
  %inc24 = add nsw i32 %0, 1
  store i32 %inc24, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end25:                                        ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc57, %for.end25
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %cmp27 = icmp sle i32 %7, %n
  br i1 %cmp27, label %for.body28, label %for.end59

for.body28:                                       ; preds = %for.cond26
  store i32 10000, ptr %min, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond29

for.cond29:                                       ; preds = %for.inc43, %for.body28
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp30 = icmp sle i32 %8, %n
  br i1 %cmp30, label %for.body31, label %for.end45

for.body31:                                       ; preds = %for.cond29
  %idxprom32 = sext i32 %8 to i64
  %arrayidx33 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom32
  %idxprom34 = sext i32 %7 to i64
  %arrayidx35 = getelementptr inbounds [101 x i32], ptr %arrayidx33, i64 0, i64 %idxprom34
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %10 = load i32, ptr %min, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %9, %10
  br i1 %cmp36, label %if.then37, label %if.end42

if.then37:                                        ; preds = %for.body31
  store i32 %9, ptr %min, align 4, !tbaa !5
  br label %if.end42

if.end42:                                         ; preds = %if.then37, %for.body31
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %inc44 = add nsw i32 %8, 1
  store i32 %inc44, ptr %i, align 4, !tbaa !5
  br label %for.cond29, !llvm.loop !17

for.end45:                                        ; preds = %for.cond29
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc54, %for.end45
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %cmp47 = icmp sle i32 %11, %n
  br i1 %cmp47, label %for.body48, label %for.end56

for.body48:                                       ; preds = %for.cond46
  %12 = load i32, ptr %min, align 4, !tbaa !5
  %idxprom49 = sext i32 %11 to i64
  %arrayidx50 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom49
  %idxprom51 = sext i32 %7 to i64
  %arrayidx52 = getelementptr inbounds [101 x i32], ptr %arrayidx50, i64 0, i64 %idxprom51
  %13 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub53 = sub nsw i32 %13, %12
  store i32 %sub53, ptr %arrayidx52, align 4, !tbaa !5
  br label %for.inc54

for.inc54:                                        ; preds = %for.body48
  %inc55 = add nsw i32 %11, 1
  store i32 %inc55, ptr %i, align 4, !tbaa !5
  br label %for.cond46, !llvm.loop !18

for.end56:                                        ; preds = %for.cond46
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %inc58 = add nsw i32 %7, 1
  store i32 %inc58, ptr %j, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !19

for.end59:                                        ; preds = %for.cond26
  %14 = load i32, ptr getelementptr inbounds ([101 x i32], ptr getelementptr inbounds ([101 x [101 x i32]], ptr @a, i64 0, i64 2), i64 0, i64 2), align 16, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc77, %for.end59
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %cmp61 = icmp sle i32 %15, %n
  br i1 %cmp61, label %for.body62, label %for.end79

for.body62:                                       ; preds = %for.cond60
  store i32 2, ptr %j, align 4, !tbaa !5
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc74, %for.body62
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %16, %n
  br i1 %cmp64, label %for.body65, label %for.end76

for.body65:                                       ; preds = %for.cond63
  %idxprom66 = sext i32 %15 to i64
  %arrayidx67 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom66
  %add = add nsw i32 %16, 1
  %idxprom68 = sext i32 %add to i64
  %arrayidx69 = getelementptr inbounds [101 x i32], ptr %arrayidx67, i64 0, i64 %idxprom68
  %17 = load i32, ptr %arrayidx69, align 4, !tbaa !5, !invariant.load !20
  %idxprom72 = sext i32 %16 to i64
  %arrayidx73 = getelementptr inbounds [101 x i32], ptr %arrayidx67, i64 0, i64 %idxprom72
  store i32 %17, ptr %arrayidx73, align 4, !tbaa !5
  br label %for.inc74

for.inc74:                                        ; preds = %for.body65
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !21

for.end76:                                        ; preds = %for.cond63
  br label %for.inc77

for.inc77:                                        ; preds = %for.end76
  %inc78 = add nsw i32 %15, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !22

for.end79:                                        ; preds = %for.cond60
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond80

for.cond80:                                       ; preds = %for.inc98, %for.end79
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %cmp81 = icmp slt i32 %18, %n
  br i1 %cmp81, label %for.body82, label %for.end100

for.body82:                                       ; preds = %for.cond80
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond83

for.cond83:                                       ; preds = %for.inc95, %for.body82
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %cmp84 = icmp slt i32 %19, %n
  br i1 %cmp84, label %for.body85, label %for.end97

for.body85:                                       ; preds = %for.cond83
  %add86 = add nsw i32 %19, 1
  %idxprom87 = sext i32 %add86 to i64
  %arrayidx88 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom87
  %idxprom89 = sext i32 %18 to i64
  %arrayidx90 = getelementptr inbounds [101 x i32], ptr %arrayidx88, i64 0, i64 %idxprom89
  %20 = load i32, ptr %arrayidx90, align 4, !tbaa !5, !invariant.load !20
  %idxprom91 = sext i32 %19 to i64
  %arrayidx92 = getelementptr inbounds [101 x [101 x i32]], ptr @a, i64 0, i64 %idxprom91
  %arrayidx94 = getelementptr inbounds [101 x i32], ptr %arrayidx92, i64 0, i64 %idxprom89
  store i32 %20, ptr %arrayidx94, align 4, !tbaa !5
  br label %for.inc95

for.inc95:                                        ; preds = %for.body85
  store i32 %add86, ptr %i, align 4, !tbaa !5
  br label %for.cond83, !llvm.loop !23

for.end97:                                        ; preds = %for.cond83
  br label %for.inc98

for.inc98:                                        ; preds = %for.end97
  %inc99 = add nsw i32 %18, 1
  store i32 %inc99, ptr %j, align 4, !tbaa !5
  br label %for.cond80, !llvm.loop !24

for.end100:                                       ; preds = %for.cond80
  %sub101 = sub nsw i32 %n, 1
  %call = call noundef i32 @_Z6hanshui(i32 noundef %sub101) #8
  %add102 = add nsw i32 %14, %call
  store i32 %add102, ptr %retval, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end100, %if.then
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef align 4 %min) #6
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { nounwind }
attributes #8 = { nofree nosync nounwind }

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
!20 = !{}
!21 = distinct !{!21, !10, !11}
!22 = distinct !{!22, !10, !11}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !11}
