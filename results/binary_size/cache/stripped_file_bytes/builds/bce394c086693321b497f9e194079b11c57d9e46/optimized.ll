; ModuleID = '/tmp/tmp4db8b9s9.cpp'
source_filename = "/tmp/tmp4db8b9s9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"better\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"worse\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"same\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %z = alloca i32, align 4
  %e = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %y = alloca [100 x double], align 16
  %x = alloca [100 x [10 x i8]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 800, ptr %y) #4
  call void @llvm.lifetime.start.p0(i64 1000, ptr %x) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %z, ptr noundef %e)
  %2 = load i32, ptr %e, align 4, !tbaa !5
  %conv = sitofp i32 %2 to double
  %mul = fmul double 1.000000e+00, %conv
  %3 = load i32, ptr %z, align 4, !tbaa !5
  %conv2 = sitofp i32 %3 to double
  %div = fdiv double %mul, %conv2
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [100 x double], ptr %y, i64 0, i64 %idxprom
  store double %div, ptr %arrayidx, align 8, !tbaa !9
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp ne i32 %5, 0
  br i1 %cmp3, label %if.then, label %if.end28

if.then:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom4 = sext i32 %6 to i64
  %arrayidx5 = getelementptr inbounds [100 x double], ptr %y, i64 0, i64 %idxprom4
  %7 = load double, ptr %arrayidx5, align 8, !tbaa !9
  %arrayidx6 = getelementptr inbounds [100 x double], ptr %y, i64 0, i64 0
  %8 = load double, ptr %arrayidx6, align 16, !tbaa !9
  %sub = fsub double %7, %8
  %cmp7 = fcmp ogt double %sub, 5.000000e-02
  br i1 %cmp7, label %if.then8, label %if.else

if.then8:                                         ; preds = %if.then
  %9 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom9 = sext i32 %9 to i64
  %arrayidx10 = getelementptr inbounds [100 x [10 x i8]], ptr %x, i64 0, i64 %idxprom9
  %arraydecay = getelementptr inbounds [10 x i8], ptr %arrayidx10, i64 0, i64 0
  %call11 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef @.str.2) #4
  br label %if.end27

if.else:                                          ; preds = %if.then
  %arrayidx12 = getelementptr inbounds [100 x double], ptr %y, i64 0, i64 0
  %10 = load double, ptr %arrayidx12, align 16, !tbaa !9
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %11 to i64
  %arrayidx14 = getelementptr inbounds [100 x double], ptr %y, i64 0, i64 %idxprom13
  %12 = load double, ptr %arrayidx14, align 8, !tbaa !9
  %sub15 = fsub double %10, %12
  %cmp16 = fcmp ogt double %sub15, 5.000000e-02
  br i1 %cmp16, label %if.then17, label %if.else22

if.then17:                                        ; preds = %if.else
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [100 x [10 x i8]], ptr %x, i64 0, i64 %idxprom18
  %arraydecay20 = getelementptr inbounds [10 x i8], ptr %arrayidx19, i64 0, i64 0
  %call21 = call ptr @strcpy(ptr noundef %arraydecay20, ptr noundef @.str.3) #4
  br label %if.end

if.else22:                                        ; preds = %if.else
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom23 = sext i32 %14 to i64
  %arrayidx24 = getelementptr inbounds [100 x [10 x i8]], ptr %x, i64 0, i64 %idxprom23
  %arraydecay25 = getelementptr inbounds [10 x i8], ptr %arrayidx24, i64 0, i64 0
  %call26 = call ptr @strcpy(ptr noundef %arraydecay25, ptr noundef @.str.4) #4
  br label %if.end

if.end:                                           ; preds = %if.else22, %if.then17
  br label %if.end27

if.end27:                                         ; preds = %if.end, %if.then8
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end28
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc29 = add nsw i32 %16, 1
  store i32 %inc29, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !11

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc37, %for.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %17, %18
  br i1 %cmp31, label %for.body32, label %for.end39

for.body32:                                       ; preds = %for.cond30
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %19 to i64
  %arrayidx34 = getelementptr inbounds [100 x [10 x i8]], ptr %x, i64 0, i64 %idxprom33
  %arraydecay35 = getelementptr inbounds [10 x i8], ptr %arrayidx34, i64 0, i64 0
  %call36 = call i32 (ptr, ...) @printf(ptr noundef @.str.5, ptr noundef %arraydecay35)
  br label %for.inc37

for.inc37:                                        ; preds = %for.body32
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %20, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !14

for.end39:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 1000, ptr %x) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %z) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
