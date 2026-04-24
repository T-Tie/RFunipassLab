; ModuleID = '/tmp/tmp25vb6ruk.cpp'
source_filename = "/tmp/tmp25vb6ruk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%"class.std::basic_istream" = type { ptr, i64, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }

@_ZSt3cin = external global %"class.std::basic_istream", align 8
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  %c = alloca [110 x [110 x i32]], align 16
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %p = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 48400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 48400, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 48400, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #3
  %call = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x1)
  %call1 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call, ptr noundef nonnull align 4 dereferenceable(4) %y1)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc8, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end10

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %y1, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %2, %3
  br i1 %cmp3, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [110 x [110 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom5 = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [110 x i32], ptr %arrayidx, i64 0, i64 %idxprom5
  %call7 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx6)
  br label %for.inc

for.inc:                                          ; preds = %for.body4
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.cond2
  br label %for.inc8

for.inc8:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc9 = add nsw i32 %7, 1
  store i32 %inc9, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end10:                                        ; preds = %for.cond
  %call11 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %x2)
  %call12 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) %call11, ptr noundef nonnull align 4 dereferenceable(4) %y2)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end10
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %8, %9
  br i1 %cmp14, label %for.body15, label %for.end29

for.body15:                                       ; preds = %for.cond13
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc24, %for.body15
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %10, %11
  br i1 %cmp17, label %for.body18, label %for.end26

for.body18:                                       ; preds = %for.cond16
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [110 x [110 x i32]], ptr %b, i64 0, i64 %idxprom19
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %13 to i64
  %arrayidx22 = getelementptr inbounds [110 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %call23 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16) @_ZSt3cin, ptr noundef nonnull align 4 dereferenceable(4) %arrayidx22)
  br label %for.inc24

for.inc24:                                        ; preds = %for.body18
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc25 = add nsw i32 %14, 1
  store i32 %inc25, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end26:                                        ; preds = %for.cond16
  br label %for.inc27

for.inc27:                                        ; preds = %for.end26
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %15, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !14

for.end29:                                        ; preds = %for.cond13
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc57, %for.end29
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp31 = icmp sle i32 %16, %17
  br i1 %cmp31, label %for.body32, label %for.end59

for.body32:                                       ; preds = %for.cond30
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc54, %for.body32
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %19 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp34 = icmp sle i32 %18, %19
  br i1 %cmp34, label %for.body35, label %for.end56

for.body35:                                       ; preds = %for.cond33
  store i32 1, ptr %p, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc51, %for.body35
  %20 = load i32, ptr %p, align 4, !tbaa !5
  %21 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp37 = icmp sle i32 %20, %21
  br i1 %cmp37, label %for.body38, label %for.end53

for.body38:                                       ; preds = %for.cond36
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %22 to i64
  %arrayidx40 = getelementptr inbounds [110 x [110 x i32]], ptr %a, i64 0, i64 %idxprom39
  %23 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom41 = sext i32 %23 to i64
  %arrayidx42 = getelementptr inbounds [110 x i32], ptr %arrayidx40, i64 0, i64 %idxprom41
  %24 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %25 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom43 = sext i32 %25 to i64
  %arrayidx44 = getelementptr inbounds [110 x [110 x i32]], ptr %b, i64 0, i64 %idxprom43
  %26 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom45 = sext i32 %26 to i64
  %arrayidx46 = getelementptr inbounds [110 x i32], ptr %arrayidx44, i64 0, i64 %idxprom45
  %27 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %mul = mul nsw i32 %24, %27
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom47 = sext i32 %28 to i64
  %arrayidx48 = getelementptr inbounds [110 x [110 x i32]], ptr %c, i64 0, i64 %idxprom47
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom49 = sext i32 %29 to i64
  %arrayidx50 = getelementptr inbounds [110 x i32], ptr %arrayidx48, i64 0, i64 %idxprom49
  %30 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %add = add nsw i32 %30, %mul
  store i32 %add, ptr %arrayidx50, align 4, !tbaa !5
  br label %for.inc51

for.inc51:                                        ; preds = %for.body38
  %31 = load i32, ptr %p, align 4, !tbaa !5
  %inc52 = add nsw i32 %31, 1
  store i32 %inc52, ptr %p, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !15

for.end53:                                        ; preds = %for.cond36
  br label %for.inc54

for.inc54:                                        ; preds = %for.end53
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %inc55 = add nsw i32 %32, 1
  store i32 %inc55, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !16

for.end56:                                        ; preds = %for.cond33
  br label %for.inc57

for.inc57:                                        ; preds = %for.end56
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %inc58 = add nsw i32 %33, 1
  store i32 %inc58, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !17

for.end59:                                        ; preds = %for.cond30
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond60

for.cond60:                                       ; preds = %for.inc79, %for.end59
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %35 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp61 = icmp sle i32 %34, %35
  br i1 %cmp61, label %for.body62, label %for.end81

for.body62:                                       ; preds = %for.cond60
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond63

for.cond63:                                       ; preds = %for.inc71, %for.body62
  %36 = load i32, ptr %j, align 4, !tbaa !5
  %37 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %36, %37
  br i1 %cmp64, label %for.body65, label %for.end73

for.body65:                                       ; preds = %for.cond63
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom66 = sext i32 %38 to i64
  %arrayidx67 = getelementptr inbounds [110 x [110 x i32]], ptr %c, i64 0, i64 %idxprom66
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom68 = sext i32 %39 to i64
  %arrayidx69 = getelementptr inbounds [110 x i32], ptr %arrayidx67, i64 0, i64 %idxprom68
  %40 = load i32, ptr %arrayidx69, align 4, !tbaa !5
  %call70 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %40)
  br label %for.inc71

for.inc71:                                        ; preds = %for.body65
  %41 = load i32, ptr %j, align 4, !tbaa !5
  %inc72 = add nsw i32 %41, 1
  store i32 %inc72, ptr %j, align 4, !tbaa !5
  br label %for.cond63, !llvm.loop !18

for.end73:                                        ; preds = %for.cond63
  %42 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom74 = sext i32 %42 to i64
  %arrayidx75 = getelementptr inbounds [110 x [110 x i32]], ptr %c, i64 0, i64 %idxprom74
  %43 = load i32, ptr %y2, align 4, !tbaa !5
  %idxprom76 = sext i32 %43 to i64
  %arrayidx77 = getelementptr inbounds [110 x i32], ptr %arrayidx75, i64 0, i64 %idxprom76
  %44 = load i32, ptr %arrayidx77, align 4, !tbaa !5
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %44)
  br label %for.inc79

for.inc79:                                        ; preds = %for.end73
  %45 = load i32, ptr %i, align 4, !tbaa !5
  %inc80 = add nsw i32 %45, 1
  store i32 %inc80, ptr %i, align 4, !tbaa !5
  br label %for.cond60, !llvm.loop !19

for.end81:                                        ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x1) #3
  call void @llvm.lifetime.end.p0(i64 48400, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 48400, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 48400, ptr %a) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSirsERi(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

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
