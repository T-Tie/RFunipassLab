; ModuleID = '/tmp/tmpkd_xde8i.cpp'
source_filename = "/tmp/tmpkd_xde8i.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %sz = alloca [100 x i32], align 16
  %max = alloca i32, align 4
  %max1 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 400, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max1) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %1, 1
  %cmp = icmp sle i32 %0, %sub
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [100 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [100 x i32], ptr %sz, i64 0, i64 0
  %4 = load i32, ptr %arrayidx2, align 16, !tbaa !5
  store i32 %4, ptr %max1, align 4, !tbaa !5
  store i32 %4, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc11, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %5, %6
  br i1 %cmp4, label %for.body5, label %for.end13

for.body5:                                        ; preds = %for.cond3
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [100 x i32], ptr %sz, i64 0, i64 %idxprom6
  %8 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %9 = load i32, ptr %max, align 4, !tbaa !5
  %cmp8 = icmp sgt i32 %8, %9
  br i1 %cmp8, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %10 to i64
  %arrayidx10 = getelementptr inbounds [100 x i32], ptr %sz, i64 0, i64 %idxprom9
  %11 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %11, ptr %max, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc11

for.inc11:                                        ; preds = %if.end
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %inc12 = add nsw i32 %12, 1
  store i32 %inc12, ptr %i, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !12

for.end13:                                        ; preds = %for.cond3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc27, %for.end13
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %14 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp slt i32 %13, %14
  br i1 %cmp15, label %for.body16, label %for.end29

for.body16:                                       ; preds = %for.cond14
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [100 x i32], ptr %sz, i64 0, i64 %idxprom17
  %16 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %17 = load i32, ptr %max, align 4, !tbaa !5
  %cmp19 = icmp slt i32 %16, %17
  br i1 %cmp19, label %land.lhs.true, label %if.end26

land.lhs.true:                                    ; preds = %for.body16
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [100 x i32], ptr %sz, i64 0, i64 %idxprom20
  %19 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %20 = load i32, ptr %max1, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %19, %20
  br i1 %cmp22, label %if.then23, label %if.end26

if.then23:                                        ; preds = %land.lhs.true
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %21 to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %sz, i64 0, i64 %idxprom24
  %22 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  store i32 %22, ptr %max1, align 4, !tbaa !5
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %land.lhs.true, %for.body16
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %23, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond14, !llvm.loop !13

for.end29:                                        ; preds = %for.cond14
  %24 = load i32, ptr %max, align 4, !tbaa !5
  %25 = load i32, ptr %max1, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %24, i32 noundef %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr %max1) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 400, ptr %sz) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
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
!13 = distinct !{!13, !10, !11}
