; ModuleID = '/tmp/tmpmb9mdf78.cpp'
source_filename = "/tmp/tmpmb9mdf78.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local global [25 x i32] zeroinitializer, align 16
@num = dso_local global [25 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #4
  store i32 0, ptr %k, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %4, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc8, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp sge i32 %5, 0
  br i1 %cmp3, label %for.body4, label %for.end10

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %call5 = call noundef i32 @_Z6searchii(i32 noundef %6, i32 noundef %7)
  %add = add nsw i32 1, %call5
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [25 x i32], ptr @num, i64 0, i64 %idxprom6
  store i32 %add, ptr %arrayidx7, align 4, !tbaa !5
  br label %for.inc8

for.inc8:                                         ; preds = %for.body4
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %dec9 = add nsw i32 %9, -1
  store i32 %dec9, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end10:                                        ; preds = %for.cond2
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc19, %for.end10
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp12 = icmp slt i32 %10, %11
  br i1 %cmp12, label %for.body13, label %for.end21

for.body13:                                       ; preds = %for.cond11
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [25 x i32], ptr @num, i64 0, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %14 = load i32, ptr %k, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %13, %14
  br i1 %cmp16, label %if.then, label %if.end

if.then:                                          ; preds = %for.body13
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %15 to i64
  %arrayidx18 = getelementptr inbounds [25 x i32], ptr @num, i64 0, i64 %idxprom17
  %16 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  store i32 %16, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body13
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc20 = add nsw i32 %17, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond11, !llvm.loop !13

for.end21:                                        ; preds = %for.cond11
  %18 = load i32, ptr %k, align 4, !tbaa !5
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z6searchii(i32 noundef %i, i32 noundef %n) #3 {
entry:
  %i.addr = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %p = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 %i, ptr %i.addr, align 4, !tbaa !5
  store i32 %n, ptr %n.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %p) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #4
  store i32 0, ptr %q, align 4, !tbaa !5
  %0 = load i32, ptr %i.addr, align 4, !tbaa !5
  %add = add nsw i32 %0, 1
  store i32 %add, ptr %p, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %p, align 4, !tbaa !5
  %2 = load i32, ptr %n.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %5 = load i32, ptr %i.addr, align 4, !tbaa !5
  %idxprom1 = sext i32 %5 to i64
  %arrayidx2 = getelementptr inbounds [25 x i32], ptr @a, i64 0, i64 %idxprom1
  %6 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %4, %6
  br i1 %cmp3, label %if.then, label %if.end10

if.then:                                          ; preds = %for.body
  %7 = load i32, ptr %q, align 4, !tbaa !5
  %8 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom4 = sext i32 %8 to i64
  %arrayidx5 = getelementptr inbounds [25 x i32], ptr @num, i64 0, i64 %idxprom4
  %9 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %7, %9
  br i1 %cmp6, label %if.then7, label %if.end

if.then7:                                         ; preds = %if.then
  %10 = load i32, ptr %p, align 4, !tbaa !5
  %idxprom8 = sext i32 %10 to i64
  %arrayidx9 = getelementptr inbounds [25 x i32], ptr @num, i64 0, i64 %idxprom8
  %11 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  store i32 %11, ptr %q, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then7, %if.then
  br label %if.end10

if.end10:                                         ; preds = %if.end, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end10
  %12 = load i32, ptr %p, align 4, !tbaa !5
  %inc = add nsw i32 %12, 1
  store i32 %inc, ptr %p, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  %13 = load i32, ptr %q, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %p) #4
  ret i32 %13
}

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
