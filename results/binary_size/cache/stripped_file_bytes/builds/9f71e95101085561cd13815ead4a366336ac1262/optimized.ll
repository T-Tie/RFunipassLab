; ModuleID = '/tmp/tmpqm0thq4w.cpp'
source_filename = "/tmp/tmpqm0thq4w.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %sum = alloca i32, align 4
  %sz = alloca [6 x i32], align 16
  %peo = alloca [1000 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum1) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum2) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #3
  call void @llvm.lifetime.start.p0(i64 24, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4000, ptr %peo) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc21, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 1000
  br i1 %cmp, label %for.body, label %for.end23

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %1 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %1, 6
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %3 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %arrayidx4 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 0
  %4 = load i32, ptr %arrayidx4, align 16, !tbaa !5
  %cmp5 = icmp eq i32 %4, 0
  br i1 %cmp5, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %5, ptr %n, align 4, !tbaa !5
  br label %for.end23

if.end:                                           ; preds = %for.end
  %arrayidx6 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 0
  %6 = load i32, ptr %arrayidx6, align 16, !tbaa !5
  %sub = sub nsw i32 12, %6
  %mul = mul nsw i32 %sub, 3600
  %arrayidx7 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 1
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %mul8 = mul nsw i32 %7, 60
  %sub9 = sub nsw i32 %mul, %mul8
  %arrayidx10 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 2
  %8 = load i32, ptr %arrayidx10, align 8, !tbaa !5
  %sub11 = sub nsw i32 %sub9, %8
  store i32 %sub11, ptr %sum1, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 3
  %9 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %mul13 = mul nsw i32 %9, 3600
  %arrayidx14 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 4
  %10 = load i32, ptr %arrayidx14, align 16, !tbaa !5
  %mul15 = mul nsw i32 %10, 60
  %add = add nsw i32 %mul13, %mul15
  %arrayidx16 = getelementptr inbounds [6 x i32], ptr %sz, i64 0, i64 5
  %11 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add17 = add nsw i32 %add, %11
  store i32 %add17, ptr %sum2, align 4, !tbaa !5
  %12 = load i32, ptr %sum1, align 4, !tbaa !5
  %13 = load i32, ptr %sum2, align 4, !tbaa !5
  %add18 = add nsw i32 %12, %13
  store i32 %add18, ptr %sum, align 4, !tbaa !5
  %14 = load i32, ptr %sum, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [1000 x i32], ptr %peo, i64 0, i64 %idxprom19
  store i32 %14, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end23:                                        ; preds = %if.then, %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond24

for.cond24:                                       ; preds = %for.inc30, %for.end23
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp25 = icmp slt i32 %17, %18
  br i1 %cmp25, label %for.body26, label %for.end32

for.body26:                                       ; preds = %for.cond24
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom27 = sext i32 %19 to i64
  %arrayidx28 = getelementptr inbounds [1000 x i32], ptr %peo, i64 0, i64 %idxprom27
  %20 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %20)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body26
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc31 = add nsw i32 %21, 1
  store i32 %inc31, ptr %i, align 4, !tbaa !5
  br label %for.cond24, !llvm.loop !13

for.end32:                                        ; preds = %for.cond24
  call void @llvm.lifetime.end.p0(i64 4000, ptr %peo) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum1) #3
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
