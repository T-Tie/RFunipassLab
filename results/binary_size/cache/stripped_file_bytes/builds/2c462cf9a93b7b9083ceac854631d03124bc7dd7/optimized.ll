; ModuleID = '/tmp/tmpgiq64kz5.cpp'
source_filename = "/tmp/tmpgiq64kz5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %sz = alloca [100000 x i32], align 16
  %a = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %d = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 400000, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, 100
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %1 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx1 = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 0
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx1)
  %arrayidx3 = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 0
  %3 = load i32, ptr %arrayidx3, align 16, !tbaa !5
  %call4 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %3)
  %arrayidx5 = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 0
  %4 = load i32, ptr %arrayidx5, align 16, !tbaa !5
  %idxprom6 = sext i32 %4 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom6
  store i32 0, ptr %arrayidx7, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc24, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp9 = icmp slt i32 %5, %6
  br i1 %cmp9, label %for.body10, label %for.end26

for.body10:                                       ; preds = %for.cond8
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %7 to i64
  %arrayidx12 = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 %idxprom11
  %call13 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx12)
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %8 to i64
  %arrayidx15 = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 %idxprom14
  %9 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %9, ptr %d, align 4, !tbaa !5
  %10 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom16 = sext i32 %10 to i64
  %arrayidx17 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom16
  %11 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp ne i32 %11, 0
  br i1 %cmp18, label %if.then, label %if.end

if.then:                                          ; preds = %for.body10
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %12 to i64
  %arrayidx20 = getelementptr inbounds [100000 x i32], ptr %sz, i64 0, i64 %idxprom19
  %13 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %call21 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %13)
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body10
  %14 = load i32, ptr %d, align 4, !tbaa !5
  %idxprom22 = sext i32 %14 to i64
  %arrayidx23 = getelementptr inbounds [100 x i32], ptr %a, i64 0, i64 %idxprom22
  store i32 0, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc25 = add nsw i32 %15, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end26:                                        ; preds = %for.cond8
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 400000, ptr %sz) #3
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
