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
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %total = alloca i32, align 4
  %t = alloca i32, align 4
  %i19 = alloca i32, align 4
  %i1916 = alloca i8, i32 0, align 4
  %minValue = alloca i32, align 4
  %j29 = alloca i32, align 4
  %j52 = alloca i32, align 4
  %j69 = alloca i32, align 4
  %j6917 = alloca i8, i32 0, align 4
  %minValue79 = alloca i32, align 4
  %i83 = alloca i32, align 4
  %i107 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %n)
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc136, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end138

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i) #6
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc12, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body4, label %for.end14

for.body4:                                        ; preds = %for.cond1
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j) #6
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc, %for.body4
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %4, %5
  br i1 %cmp6, label %for.inc, label %for.inc12

for.inc:                                          ; preds = %for.cond5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom9 = sext i32 %4 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom9
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx10)
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !9

for.inc12:                                        ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  %inc13 = add nsw i32 %2, 1
  store i32 %inc13, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !12

for.end14:                                        ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %total) #6
  store i32 0, ptr %total, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %t) #6
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc131, %for.end14
  %6 = load i32, ptr %t, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp16 = icmp slt i32 %6, %sub
  br i1 %cmp16, label %for.body18, label %for.inc136

for.body18:                                       ; preds = %for.cond15
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc66, %for.body18
  %7 = phi i32 [ %inc67, %for.inc66 ], [ 0, %for.body18 ]
  %cmp21 = icmp slt i32 %7, %3
  br i1 %cmp21, label %for.body23, label %for.end68

for.body23:                                       ; preds = %for.cond20
  %cmp24 = icmp ne i32 %7, 0
  br i1 %cmp24, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body23
  %cmp25 = icmp sle i32 %7, %6
  br i1 %cmp25, label %for.inc66, label %if.end

if.end:                                           ; preds = %land.lhs.true, %for.body23
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %minValue) #6
  %idxprom26 = sext i32 %7 to i64
  %arrayidx27 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom26
  %8 = load i32, ptr %arrayidx27, align 16, !tbaa !5
  store i32 %8, ptr %minValue, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j29) #6
  %add = add nsw i32 %6, 1
  store i32 %add, ptr %j29, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc45, %if.end
  %9 = load i32, ptr %j29, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %9, %3
  br i1 %cmp31, label %for.body33, label %for.end47

for.body33:                                       ; preds = %for.cond30
  %idxprom36 = sext i32 %9 to i64
  %arrayidx37 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom36
  %10 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %11 = load i32, ptr %minValue, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %10, %11
  br i1 %cmp38, label %if.then39, label %for.inc45

if.then39:                                        ; preds = %for.body33
  store i32 %10, ptr %minValue, align 4, !tbaa !5
  br label %for.inc45

for.inc45:                                        ; preds = %for.body33, %if.then39
  %inc46 = add nsw i32 %9, 1
  store i32 %inc46, ptr %j29, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !13

for.end47:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j29) #6
  %12 = load i32, ptr %minValue, align 4, !tbaa !5
  %sub51 = sub nsw i32 %8, %12
  store i32 %sub51, ptr %arrayidx27, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j52) #6
  store i32 %add, ptr %j52, align 4, !tbaa !5
  br label %for.cond54

for.cond54:                                       ; preds = %for.inc63, %for.end47
  %13 = load i32, ptr %j52, align 4, !tbaa !5
  %cmp55 = icmp slt i32 %13, %3
  br i1 %cmp55, label %for.inc63, label %for.end65

for.inc63:                                        ; preds = %for.cond54
  %idxprom60 = sext i32 %13 to i64
  %arrayidx61 = getelementptr inbounds [100 x i32], ptr %arrayidx27, i64 0, i64 %idxprom60
  %14 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %sub62 = sub nsw i32 %14, %12
  store i32 %sub62, ptr %arrayidx61, align 4, !tbaa !5
  %inc64 = add nsw i32 %13, 1
  store i32 %inc64, ptr %j52, align 4, !tbaa !5
  br label %for.cond54, !llvm.loop !14

for.end65:                                        ; preds = %for.cond54
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j52) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %minValue) #6
  br label %for.inc66

for.inc66:                                        ; preds = %land.lhs.true, %for.end65
  %inc67 = add nsw i32 %7, 1
  br label %for.cond20, !llvm.loop !15

for.end68:                                        ; preds = %for.cond20
  br label %for.cond70

for.cond70:                                       ; preds = %for.inc121, %for.end68
  %15 = phi i32 [ %inc122, %for.inc121 ], [ 0, %for.end68 ]
  %cmp71 = icmp slt i32 %15, %3
  br i1 %cmp71, label %for.body73, label %for.inc131

for.body73:                                       ; preds = %for.cond70
  %cmp74 = icmp ne i32 %15, 0
  br i1 %cmp74, label %land.lhs.true75, label %if.end78

land.lhs.true75:                                  ; preds = %for.body73
  %cmp76 = icmp sle i32 %15, %6
  br i1 %cmp76, label %for.inc121, label %if.end78

if.end78:                                         ; preds = %land.lhs.true75, %for.body73
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %minValue79) #6
  %idxprom81 = sext i32 %15 to i64
  %arrayidx82 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom81
  %16 = load i32, ptr %arrayidx82, align 4, !tbaa !5
  store i32 %16, ptr %minValue79, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i83) #6
  %add84 = add nsw i32 %6, 1
  store i32 %add84, ptr %i83, align 4, !tbaa !5
  br label %for.cond85

for.cond85:                                       ; preds = %for.inc100, %if.end78
  %17 = load i32, ptr %i83, align 4, !tbaa !5
  %cmp86 = icmp slt i32 %17, %3
  br i1 %cmp86, label %for.body88, label %for.end102

for.body88:                                       ; preds = %for.cond85
  %idxprom89 = sext i32 %17 to i64
  %arrayidx90 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom89
  %arrayidx92 = getelementptr inbounds [100 x i32], ptr %arrayidx90, i64 0, i64 %idxprom81
  %18 = load i32, ptr %arrayidx92, align 4, !tbaa !5
  %19 = load i32, ptr %minValue79, align 4, !tbaa !5
  %cmp93 = icmp slt i32 %18, %19
  br i1 %cmp93, label %if.then94, label %for.inc100

if.then94:                                        ; preds = %for.body88
  store i32 %18, ptr %minValue79, align 4, !tbaa !5
  br label %for.inc100

for.inc100:                                       ; preds = %for.body88, %if.then94
  %inc101 = add nsw i32 %17, 1
  store i32 %inc101, ptr %i83, align 4, !tbaa !5
  br label %for.cond85, !llvm.loop !16

for.end102:                                       ; preds = %for.cond85
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i83) #6
  %20 = load i32, ptr %minValue79, align 4, !tbaa !5
  %sub106 = sub nsw i32 %16, %20
  store i32 %sub106, ptr %arrayidx82, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %i107) #6
  store i32 %add84, ptr %i107, align 4, !tbaa !5
  br label %for.cond109

for.cond109:                                      ; preds = %for.inc118, %for.end102
  %21 = load i32, ptr %i107, align 4, !tbaa !5
  %cmp110 = icmp slt i32 %21, %3
  br i1 %cmp110, label %for.inc118, label %for.end120

for.inc118:                                       ; preds = %for.cond109
  %idxprom113 = sext i32 %21 to i64
  %arrayidx114 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom113
  %arrayidx116 = getelementptr inbounds [100 x i32], ptr %arrayidx114, i64 0, i64 %idxprom81
  %22 = load i32, ptr %arrayidx116, align 4, !tbaa !5
  %sub117 = sub nsw i32 %22, %20
  store i32 %sub117, ptr %arrayidx116, align 4, !tbaa !5
  %inc119 = add nsw i32 %21, 1
  store i32 %inc119, ptr %i107, align 4, !tbaa !5
  br label %for.cond109, !llvm.loop !17

for.end120:                                       ; preds = %for.cond109
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i107) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %minValue79) #6
  br label %for.inc121

for.inc121:                                       ; preds = %land.lhs.true75, %for.end120
  %inc122 = add nsw i32 %15, 1
  br label %for.cond70, !llvm.loop !18

for.inc131:                                       ; preds = %for.cond70
  %add124 = add nsw i32 %6, 1
  %idxprom125 = sext i32 %add124 to i64
  %arrayidx126 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom125
  %arrayidx129 = getelementptr inbounds [100 x i32], ptr %arrayidx126, i64 0, i64 %idxprom125
  %23 = load i32, ptr %arrayidx129, align 4, !tbaa !5
  %24 = load i32, ptr %total, align 4, !tbaa !5
  %add130 = add nsw i32 %24, %23
  store i32 %add130, ptr %total, align 4, !tbaa !5
  store i32 %add124, ptr %t, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !19

for.inc136:                                       ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %t) #6
  %25 = load i32, ptr %total, align 4, !tbaa !5
  %call134 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %25)
  %call135 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) %call134, ptr noundef nonnull @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %total) #6
  %inc137 = add nsw i32 %0, 1
  store i32 %inc137, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !20

for.end138:                                       ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #6
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
