; ModuleID = '/tmp/tmpg57lhqlz.cpp'
source_filename = "/tmp/tmpg57lhqlz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"better\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"worse\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"same\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef %argv) #0 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca ptr, align 8
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca float, align 4
  %b = alloca float, align 4
  %num = alloca [100 x [2 x i32]], align 16
  store i32 0, ptr %retval, align 4
  store i32 %argc, ptr %argc.addr, align 4, !tbaa !5
  store ptr %argv, ptr %argv.addr, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 800, ptr %num) #3
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
  %arrayidx = getelementptr inbounds [100 x [2 x i32]], ptr %num, i64 0, i64 %idxprom
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %4 to i64
  %arrayidx5 = getelementptr inbounds [2 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !13

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %6, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !16

for.end9:                                         ; preds = %for.cond
  %arrayidx10 = getelementptr inbounds [100 x [2 x i32]], ptr %num, i64 0, i64 0
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %arrayidx10, i64 0, i64 1
  %7 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %conv = sitofp i32 %7 to float
  %mul = fmul float %conv, 1.000000e+02
  %arrayidx12 = getelementptr inbounds [100 x [2 x i32]], ptr %num, i64 0, i64 0
  %arrayidx13 = getelementptr inbounds [2 x i32], ptr %arrayidx12, i64 0, i64 0
  %8 = load i32, ptr %arrayidx13, align 16, !tbaa !5
  %conv14 = sitofp i32 %8 to float
  %div = fdiv float %mul, %conv14
  store float %div, ptr %a, align 4, !tbaa !17
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc37, %for.end9
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %cmp16 = icmp slt i32 %9, %10
  br i1 %cmp16, label %for.body17, label %for.end39

for.body17:                                       ; preds = %for.cond15
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %11 to i64
  %arrayidx19 = getelementptr inbounds [100 x [2 x i32]], ptr %num, i64 0, i64 %idxprom18
  %arrayidx20 = getelementptr inbounds [2 x i32], ptr %arrayidx19, i64 0, i64 1
  %12 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %conv21 = sitofp i32 %12 to float
  %mul22 = fmul float %conv21, 1.000000e+02
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom23 = sext i32 %13 to i64
  %arrayidx24 = getelementptr inbounds [100 x [2 x i32]], ptr %num, i64 0, i64 %idxprom23
  %arrayidx25 = getelementptr inbounds [2 x i32], ptr %arrayidx24, i64 0, i64 0
  %14 = load i32, ptr %arrayidx25, align 8, !tbaa !5
  %conv26 = sitofp i32 %14 to float
  %div27 = fdiv float %mul22, %conv26
  store float %div27, ptr %b, align 4, !tbaa !17
  %15 = load float, ptr %b, align 4, !tbaa !17
  %16 = load float, ptr %a, align 4, !tbaa !17
  %sub = fsub float %15, %16
  %cmp28 = fcmp ogt float %sub, 5.000000e+00
  br i1 %cmp28, label %if.then, label %if.else

if.then:                                          ; preds = %for.body17
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end36

if.else:                                          ; preds = %for.body17
  %17 = load float, ptr %a, align 4, !tbaa !17
  %18 = load float, ptr %b, align 4, !tbaa !17
  %sub30 = fsub float %17, %18
  %cmp31 = fcmp ogt float %sub30, 5.000000e+00
  br i1 %cmp31, label %if.then32, label %if.else34

if.then32:                                        ; preds = %if.else
  %call33 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end

if.else34:                                        ; preds = %if.else
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end

if.end:                                           ; preds = %if.else34, %if.then32
  br label %if.end36

if.end36:                                         ; preds = %if.end, %if.then
  br label %for.inc37

for.inc37:                                        ; preds = %if.end36
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc38 = add nsw i32 %19, 1
  store i32 %inc38, ptr %i, align 4, !tbaa !5
  br label %for.cond15, !llvm.loop !19

for.end39:                                        ; preds = %for.cond15
  call void @llvm.lifetime.end.p0(i64 800, ptr %num) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
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
!9 = !{!10, !10, i64 0}
!10 = !{!"p2 omnipotent char", !11, i64 0}
!11 = !{!"any p2 pointer", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = distinct !{!13, !14, !15}
!14 = !{!"llvm.loop.mustprogress"}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = distinct !{!16, !14, !15}
!17 = !{!18, !18, i64 0}
!18 = !{!"float", !7, i64 0}
!19 = distinct !{!19, !14, !15}
