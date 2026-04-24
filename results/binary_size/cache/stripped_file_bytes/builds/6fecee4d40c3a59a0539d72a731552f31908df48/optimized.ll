; ModuleID = '/tmp/tmpr9podgn6.cpp'
source_filename = "/tmp/tmpr9podgn6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%f %f\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %a = alloca [1000 x float], align 16
  %b = alloca [1000 x float], align 16
  %c = alloca [1000 x float], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom1
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 1
  %5 = load float, ptr %arrayidx4, align 4, !tbaa !12
  %arrayidx5 = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 1
  %6 = load float, ptr %arrayidx5, align 4, !tbaa !12
  %div = fdiv float %5, %6
  %arrayidx6 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 1
  store float %div, ptr %arrayidx6, align 4, !tbaa !12
  store i32 2, ptr %i, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc33, %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp sle i32 %7, %8
  br i1 %cmp8, label %for.body9, label %for.end35

for.body9:                                        ; preds = %for.cond7
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [1000 x float], ptr %b, i64 0, i64 %idxprom10
  %10 = load float, ptr %arrayidx11, align 4, !tbaa !12
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [1000 x float], ptr %a, i64 0, i64 %idxprom12
  %12 = load float, ptr %arrayidx13, align 4, !tbaa !12
  %div14 = fdiv float %10, %12
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 %idxprom15
  store float %div14, ptr %arrayidx16, align 4, !tbaa !12
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 %idxprom17
  %15 = load float, ptr %arrayidx18, align 4, !tbaa !12
  %arrayidx19 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 1
  %16 = load float, ptr %arrayidx19, align 4, !tbaa !12
  %sub = fsub float %15, %16
  %conv = fpext float %sub to double
  %cmp20 = fcmp ogt double %conv, 5.000000e-02
  br i1 %cmp20, label %if.then, label %if.else

if.then:                                          ; preds = %for.body9
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end32

if.else:                                          ; preds = %for.body9
  %arrayidx22 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 1
  %17 = load float, ptr %arrayidx22, align 4, !tbaa !12
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [1000 x float], ptr %c, i64 0, i64 %idxprom23
  %19 = load float, ptr %arrayidx24, align 4, !tbaa !12
  %sub25 = fsub float %17, %19
  %conv26 = fpext float %sub25 to double
  %cmp27 = fcmp ogt double %conv26, 5.000000e-02
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
  br label %for.inc33

for.inc33:                                        ; preds = %if.end32
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc34 = add nsw i32 %20, 1
  store i32 %inc34, ptr %i, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !14

for.end35:                                        ; preds = %for.cond7
  %call36 = call i32 @getchar()
  %call37 = call i32 @getchar()
  %call38 = call i32 @getchar()
  %call39 = call i32 @getchar()
  %call40 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 4000, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  %21 = load i32, ptr %retval, align 4
  ret i32 %21
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!13, !13, i64 0}
!13 = !{!"float", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
