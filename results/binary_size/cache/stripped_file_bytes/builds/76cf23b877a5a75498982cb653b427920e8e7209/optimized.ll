; ModuleID = '/tmp/tmp9ku5irjp.cpp'
source_filename = "/tmp/tmp9ku5irjp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %zong = alloca [1000 x i32], align 16
  %youxiao = alloca [1000 x i32], align 16
  %c = alloca [1000 x double], align 16
  %ji = alloca double, align 8
  %xin = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4000, ptr %zong) #3
  call void @llvm.lifetime.start.p0(i64 4000, ptr %youxiao) #3
  call void @llvm.lifetime.start.p0(i64 8000, ptr %c) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ji) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %xin) #3
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
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %zong, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1000 x i32], ptr %youxiao, i64 0, i64 %idxprom1
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [1000 x i32], ptr %youxiao, i64 0, i64 0
  %5 = load i32, ptr %arrayidx4, align 16, !tbaa !5
  %conv = sitofp i32 %5 to double
  %mul = fmul double %conv, 1.000000e+00
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %zong, i64 0, i64 0
  %6 = load i32, ptr %arrayidx5, align 16, !tbaa !5
  %conv6 = sitofp i32 %6 to double
  %div = fdiv double %mul, %conv6
  store double %div, ptr %ji, align 8, !tbaa !12
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc20, %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body9, label %for.end22

for.body9:                                        ; preds = %for.cond7
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [1000 x i32], ptr %youxiao, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv12 = sitofp i32 %10 to double
  %mul13 = fmul double %conv12, 1.000000e+00
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [1000 x i32], ptr %zong, i64 0, i64 %idxprom14
  %12 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %conv16 = sitofp i32 %12 to double
  %div17 = fdiv double %mul13, %conv16
  store double %div17, ptr %xin, align 8, !tbaa !12
  %13 = load double, ptr %xin, align 8, !tbaa !12
  %14 = load double, ptr %ji, align 8, !tbaa !12
  %sub = fsub double %13, %14
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [1000 x double], ptr %c, i64 0, i64 %idxprom18
  store double %sub, ptr %arrayidx19, align 8, !tbaa !12
  br label %for.inc20

for.inc20:                                        ; preds = %for.body9
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc21 = add nsw i32 %16, 1
  store i32 %inc21, ptr %i, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !14

for.end22:                                        ; preds = %for.cond7
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond23

for.cond23:                                       ; preds = %for.inc38, %for.end22
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp24 = icmp slt i32 %17, %18
  br i1 %cmp24, label %for.body25, label %for.end40

for.body25:                                       ; preds = %for.cond23
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [1000 x double], ptr %c, i64 0, i64 %idxprom26
  %20 = load double, ptr %arrayidx27, align 8, !tbaa !12
  %cmp28 = fcmp ogt double %20, 5.000000e-02
  br i1 %cmp28, label %if.then, label %if.else

if.then:                                          ; preds = %for.body25
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end37

if.else:                                          ; preds = %for.body25
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %21 to i64
  %arrayidx31 = getelementptr inbounds [1000 x double], ptr %c, i64 0, i64 %idxprom30
  %22 = load double, ptr %arrayidx31, align 8, !tbaa !12
  %cmp32 = fcmp olt double %22, -5.000000e-02
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else
  %call34 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.else35:                                        ; preds = %if.else
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.else35, %if.then33
  br label %if.end37

if.end37:                                         ; preds = %if.end, %if.then
  br label %for.inc38

for.inc38:                                        ; preds = %if.end37
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc39 = add nsw i32 %23, 1
  store i32 %inc39, ptr %i, align 4, !tbaa !5
  br label %for.cond23, !llvm.loop !15

for.end40:                                        ; preds = %for.cond23
  call void @llvm.lifetime.end.p0(i64 8, ptr %xin) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ji) #3
  call void @llvm.lifetime.end.p0(i64 8000, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4000, ptr %youxiao) #3
  call void @llvm.lifetime.end.p0(i64 4000, ptr %zong) #3
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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
