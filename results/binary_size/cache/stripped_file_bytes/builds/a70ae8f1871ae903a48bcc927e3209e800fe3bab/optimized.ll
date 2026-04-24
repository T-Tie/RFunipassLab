; ModuleID = '/tmp/tmpgvijkr2e.cpp'
source_filename = "/tmp/tmpgvijkr2e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %p = alloca ptr, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 1200, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #3
  %arraydecay = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 0
  store ptr %arraydecay, ptr %p, align 8, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !10
  %1 = load i32, ptr %n, align 4, !tbaa !10
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load ptr, ptr %p, align 8, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext = sext i32 %3 to i64
  %add.ptr = getelementptr inbounds i32, ptr %2, i64 %idx.ext
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %add.ptr)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !10
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !10
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !10
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc27, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !10
  %6 = load i32, ptr %n, align 4, !tbaa !10
  %cmp3 = icmp slt i32 %5, %6
  br i1 %cmp3, label %for.body4, label %for.end29

for.body4:                                        ; preds = %for.cond2
  %7 = load ptr, ptr %p, align 8, !tbaa !5
  %8 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext5 = sext i32 %8 to i64
  %add.ptr6 = getelementptr inbounds i32, ptr %7, i64 %idx.ext5
  %9 = load i32, ptr %add.ptr6, align 4, !tbaa !10
  %cmp7 = icmp ne i32 %9, 797
  br i1 %cmp7, label %if.then, label %if.end26

if.then:                                          ; preds = %for.body4
  store i32 1, ptr %j, align 4, !tbaa !10
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc23, %if.then
  %10 = load i32, ptr %j, align 4, !tbaa !10
  %11 = load i32, ptr %n, align 4, !tbaa !10
  %12 = load i32, ptr %i, align 4, !tbaa !10
  %sub = sub nsw i32 %11, %12
  %cmp9 = icmp slt i32 %10, %sub
  br i1 %cmp9, label %for.body10, label %for.end25

for.body10:                                       ; preds = %for.cond8
  %13 = load ptr, ptr %p, align 8, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext11 = sext i32 %14 to i64
  %add.ptr12 = getelementptr inbounds i32, ptr %13, i64 %idx.ext11
  %15 = load i32, ptr %add.ptr12, align 4, !tbaa !10
  %16 = load ptr, ptr %p, align 8, !tbaa !5
  %17 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext13 = sext i32 %17 to i64
  %add.ptr14 = getelementptr inbounds i32, ptr %16, i64 %idx.ext13
  %18 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext15 = sext i32 %18 to i64
  %add.ptr16 = getelementptr inbounds i32, ptr %add.ptr14, i64 %idx.ext15
  %19 = load i32, ptr %add.ptr16, align 4, !tbaa !10
  %cmp17 = icmp eq i32 %15, %19
  br i1 %cmp17, label %if.then18, label %if.end

if.then18:                                        ; preds = %for.body10
  %20 = load ptr, ptr %p, align 8, !tbaa !5
  %21 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext19 = sext i32 %21 to i64
  %add.ptr20 = getelementptr inbounds i32, ptr %20, i64 %idx.ext19
  %22 = load i32, ptr %j, align 4, !tbaa !10
  %idx.ext21 = sext i32 %22 to i64
  %add.ptr22 = getelementptr inbounds i32, ptr %add.ptr20, i64 %idx.ext21
  store i32 797, ptr %add.ptr22, align 4, !tbaa !10
  br label %if.end

if.end:                                           ; preds = %if.then18, %for.body10
  br label %for.inc23

for.inc23:                                        ; preds = %if.end
  %23 = load i32, ptr %j, align 4, !tbaa !10
  %inc24 = add nsw i32 %23, 1
  store i32 %inc24, ptr %j, align 4, !tbaa !10
  br label %for.cond8, !llvm.loop !15

for.end25:                                        ; preds = %for.cond8
  br label %if.end26

if.end26:                                         ; preds = %for.end25, %for.body4
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %24 = load i32, ptr %i, align 4, !tbaa !10
  %inc28 = add nsw i32 %24, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !10
  br label %for.cond2, !llvm.loop !16

for.end29:                                        ; preds = %for.cond2
  %25 = load ptr, ptr %p, align 8, !tbaa !5
  %26 = load i32, ptr %25, align 4, !tbaa !10
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %26)
  store i32 1, ptr %i, align 4, !tbaa !10
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc42, %for.end29
  %27 = load i32, ptr %i, align 4, !tbaa !10
  %28 = load i32, ptr %n, align 4, !tbaa !10
  %cmp32 = icmp slt i32 %27, %28
  br i1 %cmp32, label %for.body33, label %for.end44

for.body33:                                       ; preds = %for.cond31
  %29 = load ptr, ptr %p, align 8, !tbaa !5
  %30 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext34 = sext i32 %30 to i64
  %add.ptr35 = getelementptr inbounds i32, ptr %29, i64 %idx.ext34
  %31 = load i32, ptr %add.ptr35, align 4, !tbaa !10
  %cmp36 = icmp ne i32 %31, 797
  br i1 %cmp36, label %if.then37, label %if.end41

if.then37:                                        ; preds = %for.body33
  %32 = load ptr, ptr %p, align 8, !tbaa !5
  %33 = load i32, ptr %i, align 4, !tbaa !10
  %idx.ext38 = sext i32 %33 to i64
  %add.ptr39 = getelementptr inbounds i32, ptr %32, i64 %idx.ext38
  %34 = load i32, ptr %add.ptr39, align 4, !tbaa !10
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %34)
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %for.body33
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %35 = load i32, ptr %i, align 4, !tbaa !10
  %inc43 = add nsw i32 %35, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !10
  br label %for.cond31, !llvm.loop !17

for.end44:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

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
!6 = !{!"p1 int", !7, i64 0}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = distinct !{!12, !13, !14}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"llvm.loop.unroll.disable"}
!15 = distinct !{!15, !13, !14}
!16 = distinct !{!16, !13, !14}
!17 = distinct !{!17, !13, !14}
