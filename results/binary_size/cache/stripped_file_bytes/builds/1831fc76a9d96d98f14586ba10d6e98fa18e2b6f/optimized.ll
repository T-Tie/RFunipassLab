; ModuleID = '/tmp/tmpgss5p183.cpp'
source_filename = "/tmp/tmpgss5p183.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x double], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %c) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 0
  %arrayidx1 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx1)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx3 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %3 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx3, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc17, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %5, %6
  br i1 %cmp8, label %for.body9, label %for.end19

for.body9:                                        ; preds = %for.cond7
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %7 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %b, i64 0, i64 %idxprom10
  %8 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv = sitofp i32 %8 to double
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom12
  %10 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %conv14 = sitofp i32 %10 to double
  %div = fdiv double %conv, %conv14
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom15
  store double %div, ptr %arrayidx16, align 8, !tbaa !12
  br label %for.inc17

for.inc17:                                        ; preds = %for.body9
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc18 = add nsw i32 %12, 1
  store i32 %inc18, ptr %i, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !14

for.end19:                                        ; preds = %for.cond7
  %arrayidx20 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 1
  %13 = load double, ptr %arrayidx20, align 8, !tbaa !12
  %arrayidx21 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 0
  %14 = load double, ptr %arrayidx21, align 16, !tbaa !12
  %sub = fsub double %13, %14
  %cmp22 = fcmp ogt double %sub, 5.000000e-02
  br i1 %cmp22, label %if.then, label %if.else

if.then:                                          ; preds = %for.end19
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end32

if.else:                                          ; preds = %for.end19
  %arrayidx24 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 0
  %15 = load double, ptr %arrayidx24, align 16, !tbaa !12
  %arrayidx25 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 1
  %16 = load double, ptr %arrayidx25, align 8, !tbaa !12
  %sub26 = fsub double %15, %16
  %cmp27 = fcmp ogt double %sub26, 5.000000e-02
  br i1 %cmp27, label %if.then28, label %if.else30

if.then28:                                        ; preds = %if.else
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.else30:                                        ; preds = %if.else
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.else30, %if.then28
  br label %if.end32

if.end32:                                         ; preds = %if.end, %if.then
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc56, %if.end32
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %17, %18
  br i1 %cmp34, label %for.body35, label %for.end58

for.body35:                                       ; preds = %for.cond33
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %19 to i64
  %arrayidx38 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom37
  %20 = load double, ptr %arrayidx38, align 8, !tbaa !12
  %arrayidx39 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 0
  %21 = load double, ptr %arrayidx39, align 16, !tbaa !12
  %sub40 = fsub double %20, %21
  %cmp41 = fcmp ogt double %sub40, 5.000000e-02
  br i1 %cmp41, label %if.then42, label %if.else44

if.then42:                                        ; preds = %for.body35
  %call43 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end55

if.else44:                                        ; preds = %for.body35
  %arrayidx45 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 0
  %22 = load double, ptr %arrayidx45, align 16, !tbaa !12
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom46 = sext i32 %23 to i64
  %arrayidx47 = getelementptr inbounds [100 x double], ptr %c, i64 0, i64 %idxprom46
  %24 = load double, ptr %arrayidx47, align 8, !tbaa !12
  %sub48 = fsub double %22, %24
  %cmp49 = fcmp ogt double %sub48, 5.000000e-02
  br i1 %cmp49, label %if.then50, label %if.else52

if.then50:                                        ; preds = %if.else44
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end54

if.else52:                                        ; preds = %if.else44
  %call53 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end54

if.end54:                                         ; preds = %if.else52, %if.then50
  br label %if.end55

if.end55:                                         ; preds = %if.end54, %if.then42
  br label %for.inc56

for.inc56:                                        ; preds = %if.end55
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %inc57 = add nsw i32 %25, 1
  store i32 %inc57, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end58:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 800, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #3
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
