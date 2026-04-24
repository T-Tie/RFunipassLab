; ModuleID = '/tmp/tmpjbeak012.cpp'
source_filename = "/tmp/tmpjbeak012.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %n = alloca i32, align 4
  %sz = alloca [1000 x i32], align 16
  %x = alloca i32, align 4
  %k = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %e = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  store i32 0, ptr %a, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %x)
  %2 = load i32, ptr %x, align 4, !tbaa !5
  %rem = srem i32 %2, 2
  %cmp2 = icmp ne i32 %rem, 0
  br i1 %cmp2, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %3 = load i32, ptr %x, align 4, !tbaa !5
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom
  store i32 %3, ptr %arrayidx, align 4, !tbaa !5
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  %6 = load i32, ptr %a, align 4, !tbaa !5
  %inc3 = add nsw i32 %6, 1
  store i32 %inc3, ptr %a, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc4 = add nsw i32 %7, 1
  store i32 %inc4, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %k, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc31, %for.end
  %8 = load i32, ptr %k, align 4, !tbaa !5
  %9 = load i32, ptr %a, align 4, !tbaa !5
  %cmp6 = icmp sle i32 %8, %9
  br i1 %cmp6, label %for.body7, label %for.end33

for.body7:                                        ; preds = %for.cond5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc28, %for.body7
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %a, align 4, !tbaa !5
  %12 = load i32, ptr %k, align 4, !tbaa !5
  %sub = sub nsw i32 %11, %12
  %cmp9 = icmp slt i32 %10, %sub
  br i1 %cmp9, label %for.body10, label %for.end30

for.body10:                                       ; preds = %for.cond8
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom11
  %14 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %15, 1
  %idxprom13 = sext i32 %add to i64
  %arrayidx14 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom13
  %16 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %14, %16
  br i1 %cmp15, label %if.then16, label %if.end27

if.then16:                                        ; preds = %for.body10
  call void @llvm.lifetime.start.p0(i64 4, ptr %e) #3
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %add17 = add nsw i32 %17, 1
  %idxprom18 = sext i32 %add17 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom18
  %18 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %18, ptr %e, align 4, !tbaa !5
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %19 to i64
  %arrayidx21 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom20
  %20 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %add22 = add nsw i32 %21, 1
  %idxprom23 = sext i32 %add22 to i64
  %arrayidx24 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom23
  store i32 %20, ptr %arrayidx24, align 4, !tbaa !5
  %22 = load i32, ptr %e, align 4, !tbaa !5
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %23 to i64
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom25
  store i32 %22, ptr %arrayidx26, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %e) #3
  br label %if.end27

if.end27:                                         ; preds = %if.then16, %for.body10
  br label %for.inc28

for.inc28:                                        ; preds = %if.end27
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %24, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end30:                                        ; preds = %for.cond8
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %25 = load i32, ptr %k, align 4, !tbaa !5
  %inc32 = add nsw i32 %25, 1
  store i32 %inc32, ptr %k, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end33:                                        ; preds = %for.cond5
  %arrayidx34 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 0
  %26 = load i32, ptr %arrayidx34, align 16, !tbaa !5
  %call35 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %26)
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc42, %for.end33
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %28 = load i32, ptr %a, align 4, !tbaa !5
  %cmp37 = icmp slt i32 %27, %28
  br i1 %cmp37, label %for.body38, label %for.end44

for.body38:                                       ; preds = %for.cond36
  %29 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom39
  %30 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %30)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body38
  %31 = load i32, ptr %j, align 4, !tbaa !5
  %inc43 = add nsw i32 %31, 1
  store i32 %inc43, ptr %j, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !14

for.end44:                                        ; preds = %for.cond36
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #3
  call void @llvm.lifetime.end.p0(i64 4000, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

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
