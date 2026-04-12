; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfonl7t3n.cpp"
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
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [111 x [111 x i32]], align 16
  %b = alloca [111 x [111 x i32]], align 16
  %c = alloca [111 x [111 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %r = alloca i32, align 4
  %sum = alloca i32, align 4
  %j63 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 49284, ptr noundef align 16 %c) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #5
  store i32 1, ptr %x1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #5
  store i32 1, ptr %x2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #5
  store i32 1, ptr %y1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #5
  store i32 1, ptr %y2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %r) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %sum) #5
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %3
  br i1 %cmp3, label %for.inc, label %for.inc8

for.inc:                                          ; preds = %for.cond2
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [111 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.inc8:                                         ; preds = %for.cond2
  %inc9 = add nsw i32 %0, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %4, %5
  br i1 %cmp14, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.body15
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %6, %7
  br i1 %cmp17, label %for.inc24, label %for.inc27

for.inc24:                                        ; preds = %for.cond16
  %idxprom19 = sext i32 %4 to i64
  %arrayidx20 = getelementptr inbounds [111 x [111 x i32]], ptr %b, i64 0, i64 %idxprom19
  %idxprom21 = sext i32 %6 to i64
  %arrayidx22 = getelementptr inbounds [111 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  %inc25 = add nsw i32 %6, 1
  store i32 %inc25, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.inc27:                                        ; preds = %for.cond16
  %inc28 = add nsw i32 %4, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !14

for.end29:                                        ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc57, %for.end29
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %8, %9
  br i1 %cmp31, label %for.body32, label %for.end59

for.body32:                                       ; preds = %for.cond30
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc54, %for.body32
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %10, %11
  br i1 %cmp34, label %for.body35, label %for.inc57

for.body35:                                       ; preds = %for.cond33
  store i32 0, ptr %sum, align 4, !tbaa !5
  store i32 0, ptr %r, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc51, %for.body35
  %12 = load i32, ptr %r, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %12, %5
  br i1 %cmp37, label %for.inc51, label %for.inc54

for.inc51:                                        ; preds = %for.cond36
  %13 = load i32, ptr %sum, align 4, !tbaa !5
  %idxprom39 = sext i32 %8 to i64
  %arrayidx40 = getelementptr inbounds [111 x [111 x i32]], ptr %a, i64 0, i64 %idxprom39
  %idxprom41 = sext i32 %12 to i64
  %arrayidx42 = getelementptr inbounds [111 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  %14 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %arrayidx44 = getelementptr inbounds [111 x [111 x i32]], ptr %b, i64 0, i64 %idxprom41
  %idxprom45 = sext i32 %10 to i64
  %arrayidx46 = getelementptr inbounds [111 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %15 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %14, %15
  %add = add nsw i32 %13, %mul
  store i32 %add, ptr %sum, align 4, !tbaa !5
  %arrayidx48 = getelementptr inbounds [111 x [111 x i32]], ptr %c, i64 0, i64 %idxprom39
  %arrayidx50 = getelementptr inbounds [111 x i32], ptr %arrayidx48, i64 0, i64 %idxprom45
  store i32 %add, ptr %arrayidx50, align 4, !tbaa !5
  %inc52 = add nsw i32 %12, 1
  store i32 %inc52, ptr %r, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !15

for.inc54:                                        ; preds = %for.cond36
  %inc55 = add nsw i32 %10, 1
  store i32 %inc55, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !16

for.inc57:                                        ; preds = %for.cond33
  %inc58 = add nsw i32 %8, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !17

for.end59:                                        ; preds = %for.cond30
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc78, %for.end59
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp61 = icmp slt i32 %16, %17
  br i1 %cmp61, label %for.body62, label %for.end80

for.body62:                                       ; preds = %for.cond60
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef %j63) #6
  store i32 0, ptr %j63, align 4, !tbaa !5
  br label %for.cond64

for.cond64:                                       ; preds = %for.inc75, %for.body62
  %18 = load i32, ptr %j63, align 4, !tbaa !5
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp65 = icmp slt i32 %18, %19
  br i1 %cmp65, label %for.body66, label %for.inc78

for.body66:                                       ; preds = %for.cond64
  %idxprom67 = sext i32 %16 to i64
  %arrayidx68 = getelementptr inbounds [111 x [111 x i32]], ptr %c, i64 0, i64 %idxprom67
  %idxprom69 = sext i32 %18 to i64
  %arrayidx70 = getelementptr inbounds [111 x i32], ptr %arrayidx68, i64 0, i64 %idxprom69
  %20 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %call71 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i32 noundef %20)
  %21 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = sub nsw i32 %21, 1
  %cmp72 = icmp ne i32 %18, %sub
  br i1 %cmp72, label %if.then, label %if.else

if.then:                                          ; preds = %for.body66
  %call73 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @.str)
  br label %for.inc75

if.else:                                          ; preds = %for.body66
  %call74 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
  br label %for.inc75

for.inc75:                                        ; preds = %if.then, %if.else
  %inc76 = add nsw i32 %18, 1
  store i32 %inc76, ptr %j63, align 4, !tbaa !5
  br label %for.cond64, !llvm.loop !18

for.inc78:                                        ; preds = %for.cond64
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j63) #6
  %inc79 = add nsw i32 %16, 1
  store i32 %inc79, ptr %i, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !19

for.end80:                                        ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %sum) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %r) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 49284, ptr noundef %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEPFRSoS_E(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4 align 2

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_(ptr noundef nonnull align 8 dereferenceable(8)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
