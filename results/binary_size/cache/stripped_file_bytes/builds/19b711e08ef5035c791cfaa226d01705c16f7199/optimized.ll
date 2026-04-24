; ModuleID = '/tmp/tmpz6slemp5.cpp'
source_filename = "/tmp/tmpz6slemp5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %x = alloca [310 x i32], align 16
  %y = alloca [310 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1240, ptr %x) #3
  call void @llvm.lifetime.start.p0(i64 1240, ptr %y) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [310 x i32], ptr %x, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [310 x i32], ptr %x, i64 0, i64 0
  %4 = load i32, ptr %arrayidx2, align 16, !tbaa !5
  %arrayidx3 = getelementptr inbounds [310 x i32], ptr %y, i64 0, i64 0
  store i32 %4, ptr %arrayidx3, align 16, !tbaa !5
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %inc4 = add nsw i32 %5, 1
  store i32 %inc4, ptr %k, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc27, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end29

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc16, %for.body7
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %8, %9
  br i1 %cmp9, label %for.body10, label %for.end18

for.body10:                                       ; preds = %for.cond8
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [310 x i32], ptr %x, i64 0, i64 %idxprom11
  %11 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [310 x i32], ptr %y, i64 0, i64 %idxprom13
  %13 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %11, %13
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  br label %for.end18

if.end:                                           ; preds = %for.body10
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %inc17 = add nsw i32 %14, 1
  store i32 %inc17, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end18:                                        ; preds = %if.then, %for.cond8
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %15, %16
  br i1 %cmp19, label %if.then20, label %if.end26

if.then20:                                        ; preds = %for.end18
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %17 to i64
  %arrayidx22 = getelementptr inbounds [310 x i32], ptr %x, i64 0, i64 %idxprom21
  %18 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom23 = sext i32 %19 to i64
  %arrayidx24 = getelementptr inbounds [310 x i32], ptr %y, i64 0, i64 %idxprom23
  store i32 %18, ptr %arrayidx24, align 4, !tbaa !5
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc25 = add nsw i32 %20, 1
  store i32 %inc25, ptr %k, align 4, !tbaa !5
  br label %if.end26

if.end26:                                         ; preds = %if.then20, %for.end18
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %21, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end29:                                        ; preds = %for.cond5
  %arrayidx30 = getelementptr inbounds [310 x i32], ptr %y, i64 0, i64 0
  %22 = load i32, ptr %arrayidx30, align 16, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %22)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc38, %for.end29
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %23, %24
  br i1 %cmp33, label %for.body34, label %for.end40

for.body34:                                       ; preds = %for.cond32
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom35 = sext i32 %25 to i64
  %arrayidx36 = getelementptr inbounds [310 x i32], ptr %y, i64 0, i64 %idxprom35
  %26 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %26)
  br label %for.inc38

for.inc38:                                        ; preds = %for.body34
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %27, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !5
  br label %for.cond32, !llvm.loop !14

for.end40:                                        ; preds = %for.cond32
  call void @llvm.lifetime.end.p0(i64 1240, ptr %y) #3
  call void @llvm.lifetime.end.p0(i64 1240, ptr %x) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
