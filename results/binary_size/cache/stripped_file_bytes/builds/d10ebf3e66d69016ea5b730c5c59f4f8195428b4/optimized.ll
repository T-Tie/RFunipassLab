; ModuleID = '/tmp/tmpiv13bkd2.cpp'
source_filename = "/tmp/tmpiv13bkd2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sz = alloca [100 x [2 x double]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 1600, ptr %sz) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, 2
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 %idxprom
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2 x double], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %6, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc45, %for.end9
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %7, %8
  br i1 %cmp11, label %for.body12, label %for.end47

for.body12:                                       ; preds = %for.cond10
  %arrayidx13 = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 0
  %arrayidx14 = getelementptr inbounds [2 x double], ptr %arrayidx13, i64 0, i64 1
  %9 = load double, ptr %arrayidx14, align 8, !tbaa !13
  %arrayidx15 = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 0
  %arrayidx16 = getelementptr inbounds [2 x double], ptr %arrayidx15, i64 0, i64 0
  %10 = load double, ptr %arrayidx16, align 16, !tbaa !13
  %div = fdiv double %9, %10
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %11 to i64
  %arrayidx18 = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 %idxprom17
  %arrayidx19 = getelementptr inbounds [2 x double], ptr %arrayidx18, i64 0, i64 1
  %12 = load double, ptr %arrayidx19, align 8, !tbaa !13
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %13 to i64
  %arrayidx21 = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 %idxprom20
  %arrayidx22 = getelementptr inbounds [2 x double], ptr %arrayidx21, i64 0, i64 0
  %14 = load double, ptr %arrayidx22, align 16, !tbaa !13
  %div23 = fdiv double %12, %14
  %sub = fsub double %div, %div23
  %cmp24 = fcmp ogt double %sub, 5.000000e-02
  br i1 %cmp24, label %if.then, label %if.else

if.then:                                          ; preds = %for.body12
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end44

if.else:                                          ; preds = %for.body12
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %15 to i64
  %arrayidx27 = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 %idxprom26
  %arrayidx28 = getelementptr inbounds [2 x double], ptr %arrayidx27, i64 0, i64 1
  %16 = load double, ptr %arrayidx28, align 8, !tbaa !13
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %17 to i64
  %arrayidx30 = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 %idxprom29
  %arrayidx31 = getelementptr inbounds [2 x double], ptr %arrayidx30, i64 0, i64 0
  %18 = load double, ptr %arrayidx31, align 16, !tbaa !13
  %div32 = fdiv double %16, %18
  %arrayidx33 = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 0
  %arrayidx34 = getelementptr inbounds [2 x double], ptr %arrayidx33, i64 0, i64 1
  %19 = load double, ptr %arrayidx34, align 8, !tbaa !13
  %arrayidx35 = getelementptr inbounds [100 x [2 x double]], ptr %sz, i64 0, i64 0
  %arrayidx36 = getelementptr inbounds [2 x double], ptr %arrayidx35, i64 0, i64 0
  %20 = load double, ptr %arrayidx36, align 16, !tbaa !13
  %div37 = fdiv double %19, %20
  %sub38 = fsub double %div32, %div37
  %cmp39 = fcmp ogt double %sub38, 5.000000e-02
  br i1 %cmp39, label %if.then40, label %if.else42

if.then40:                                        ; preds = %if.else
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.else42:                                        ; preds = %if.else
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.else42, %if.then40
  br label %if.end44

if.end44:                                         ; preds = %if.end, %if.then
  br label %for.inc45

for.inc45:                                        ; preds = %if.end44
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc46 = add nsw i32 %21, 1
  store i32 %inc46, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !15

for.end47:                                        ; preds = %for.cond10
  call void @llvm.lifetime.end.p0(i64 1600, ptr %sz) #3
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
!13 = !{!14, !14, i64 0}
!14 = !{!"double", !7, i64 0}
!15 = distinct !{!15, !10, !11}
