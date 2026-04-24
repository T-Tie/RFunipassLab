; ModuleID = '/tmp/tmppfrdbz8t.cpp'
source_filename = "/tmp/tmppfrdbz8t.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%d\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"same\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %z = alloca double, align 8
  %sz = alloca [100 x double], align 16
  %zong = alloca [100 x i32], align 16
  %xiao = alloca [100 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %y) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %x, ptr noundef %y)
  call void @llvm.lifetime.start.p0(i64 8, ptr %z) #3
  %0 = load i32, ptr %y, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %mul = fmul double %conv, 1.000000e+00
  %1 = load i32, ptr %x, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %div = fdiv double %mul, %conv2
  store double %div, ptr %z, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 800, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %zong) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %xiao) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp = icmp slt i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %zong, i64 0, i64 %idxprom
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %5 to i64
  %arrayidx4 = getelementptr inbounds [100 x i32], ptr %xiao, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx4)
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %6 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %xiao, i64 0, i64 %idxprom6
  %7 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %conv8 = sitofp i32 %7 to double
  %mul9 = fmul double %conv8, 1.000000e+00
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %8 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %zong, i64 0, i64 %idxprom10
  %9 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv12 = sitofp i32 %9 to double
  %div13 = fdiv double %mul9, %conv12
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %10 to i64
  %arrayidx15 = getelementptr inbounds [100 x double], ptr %sz, i64 0, i64 %idxprom14
  store double %div13, ptr %arrayidx15, align 8, !tbaa !9
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %11, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc34, %for.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr %n, align 4, !tbaa !5
  %sub17 = sub nsw i32 %13, 2
  %cmp18 = icmp slt i32 %12, %sub17
  br i1 %cmp18, label %for.body19, label %for.end36

for.body19:                                       ; preds = %for.cond16
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %14 to i64
  %arrayidx21 = getelementptr inbounds [100 x double], ptr %sz, i64 0, i64 %idxprom20
  %15 = load double, ptr %arrayidx21, align 8, !tbaa !9
  %16 = load double, ptr %z, align 8, !tbaa !9
  %sub22 = fsub double %15, %16
  %cmp23 = fcmp ogt double %sub22, 5.000000e-02
  br i1 %cmp23, label %if.then, label %if.else

if.then:                                          ; preds = %for.body19
  %call24 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end33

if.else:                                          ; preds = %for.body19
  %17 = load double, ptr %z, align 8, !tbaa !9
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [100 x double], ptr %sz, i64 0, i64 %idxprom25
  %19 = load double, ptr %arrayidx26, align 8, !tbaa !9
  %sub27 = fsub double %17, %19
  %cmp28 = fcmp ogt double %sub27, 5.000000e-02
  br i1 %cmp28, label %if.then29, label %if.else31

if.then29:                                        ; preds = %if.else
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.else31:                                        ; preds = %if.else
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end

if.end:                                           ; preds = %if.else31, %if.then29
  br label %if.end33

if.end33:                                         ; preds = %if.end, %if.then
  br label %for.inc34

for.inc34:                                        ; preds = %if.end33
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc35 = add nsw i32 %20, 1
  store i32 %inc35, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !14

for.end36:                                        ; preds = %for.cond16
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom37 = sext i32 %21 to i64
  %arrayidx38 = getelementptr inbounds [100 x double], ptr %sz, i64 0, i64 %idxprom37
  %22 = load double, ptr %arrayidx38, align 8, !tbaa !9
  %23 = load double, ptr %z, align 8, !tbaa !9
  %sub39 = fsub double %22, %23
  %cmp40 = fcmp ogt double %sub39, 5.000000e-02
  br i1 %cmp40, label %if.then41, label %if.else43

if.then41:                                        ; preds = %for.end36
  %call42 = call i32 (ptr, ...) @printf(ptr noundef @.str.5)
  br label %if.end53

if.else43:                                        ; preds = %for.end36
  %24 = load double, ptr %z, align 8, !tbaa !9
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom44 = sext i32 %25 to i64
  %arrayidx45 = getelementptr inbounds [100 x double], ptr %sz, i64 0, i64 %idxprom44
  %26 = load double, ptr %arrayidx45, align 8, !tbaa !9
  %sub46 = fsub double %24, %26
  %cmp47 = fcmp ogt double %sub46, 5.000000e-02
  br i1 %cmp47, label %if.then48, label %if.else50

if.then48:                                        ; preds = %if.else43
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.6)
  br label %if.end52

if.else50:                                        ; preds = %if.else43
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.7)
  br label %if.end52

if.end52:                                         ; preds = %if.else50, %if.then48
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then41
  call void @llvm.lifetime.end.p0(i64 400, ptr %xiao) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %zong) #3
  call void @llvm.lifetime.end.p0(i64 800, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %z) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %y) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
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
!9 = !{!10, !10, i64 0}
!10 = !{!"double", !7, i64 0}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
