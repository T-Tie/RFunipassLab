; ModuleID = '/tmp/tmp9fog3c0p.cpp'
source_filename = "/tmp/tmp9fog3c0p.cpp"
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
  %result = alloca [100 x i32], align 16
  %ext = alloca double, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp1 = alloca i32, align 4
  %temp2 = alloca i32, align 4
  %temp3 = alloca double, align 8
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %result) #3
  call void @llvm.lifetime.start.p0(i64 8, ptr %ext) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp1) #3
  store i32 0, ptr %temp1, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp2) #3
  store i32 0, ptr %temp2, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 8, ptr %temp3) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %temp1, ptr noundef %temp2)
  %0 = load i32, ptr %temp2, align 4, !tbaa !5
  %conv = sitofp i32 %0 to double
  %1 = load i32, ptr %temp1, align 4, !tbaa !5
  %conv2 = sitofp i32 %1 to double
  %div = fdiv double %conv, %conv2
  store double %div, ptr %ext, align 8, !tbaa !9
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %3, 1
  %cmp = icmp sle i32 %2, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %temp1, ptr noundef %temp2)
  %4 = load i32, ptr %temp2, align 4, !tbaa !5
  %conv4 = sitofp i32 %4 to double
  %5 = load i32, ptr %temp1, align 4, !tbaa !5
  %conv5 = sitofp i32 %5 to double
  %div6 = fdiv double %conv4, %conv5
  store double %div6, ptr %temp3, align 8, !tbaa !9
  %6 = load double, ptr %temp3, align 8, !tbaa !9
  %7 = load double, ptr %ext, align 8, !tbaa !9
  %sub7 = fsub double %6, %7
  %cmp8 = fcmp ogt double %sub7, 5.000000e-02
  br i1 %cmp8, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %8 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %if.end17

if.else:                                          ; preds = %for.body
  %9 = load double, ptr %ext, align 8, !tbaa !9
  %10 = load double, ptr %temp3, align 8, !tbaa !9
  %sub9 = fsub double %9, %10
  %cmp10 = fcmp ogt double %sub9, 5.000000e-02
  br i1 %cmp10, label %if.then11, label %if.else14

if.then11:                                        ; preds = %if.else
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom12
  store i32 2, ptr %arrayidx13, align 4, !tbaa !5
  br label %if.end

if.else14:                                        ; preds = %if.else
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %12 to i64
  %arrayidx16 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom15
  store i32 3, ptr %arrayidx16, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else14, %if.then11
  br label %if.end17

if.end17:                                         ; preds = %if.end, %if.then
  br label %for.inc

for.inc:                                          ; preds = %if.end17
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %13, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc40, %for.end
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %sub19 = sub nsw i32 %15, 1
  %cmp20 = icmp sle i32 %14, %sub19
  br i1 %cmp20, label %for.body21, label %for.end42

for.body21:                                       ; preds = %for.cond18
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom22
  %17 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %17, 1
  br i1 %cmp24, label %if.then25, label %if.end27

if.then25:                                        ; preds = %for.body21
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %for.body21
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %18 to i64
  %arrayidx29 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom28
  %19 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %cmp30 = icmp eq i32 %19, 2
  br i1 %cmp30, label %if.then31, label %if.end33

if.then31:                                        ; preds = %if.end27
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end33

if.end33:                                         ; preds = %if.then31, %if.end27
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %20 to i64
  %arrayidx35 = getelementptr inbounds [100 x i32], ptr %result, i64 0, i64 %idxprom34
  %21 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36 = icmp eq i32 %21, 3
  br i1 %cmp36, label %if.then37, label %if.end39

if.then37:                                        ; preds = %if.end33
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str.4)
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end33
  br label %for.inc40

for.inc40:                                        ; preds = %if.end39
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc41 = add nsw i32 %22, 1
  store i32 %inc41, ptr %i, align 4, !tbaa !5
  br label %for.cond18, !llvm.loop !14

for.end42:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 8, ptr %temp3) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 8, ptr %ext) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %result) #3
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
