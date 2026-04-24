; ModuleID = '/tmp/tmpzlrg2w3o.cpp'
source_filename = "/tmp/tmpzlrg2w3o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %s = alloca i32, align 4
  %r = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.start.p0(i64 80000, ptr %a) #3
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
  %arrayidx = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 0
  %4 = load i32, ptr %arrayidx2, align 16, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  store i32 1, ptr %t, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc27, %for.end
  %5 = load i32, ptr %t, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %sub5 = sub nsw i32 %6, 1
  %cmp6 = icmp sle i32 %5, %sub5
  br i1 %cmp6, label %for.body7, label %for.end29

for.body7:                                        ; preds = %for.cond4
  store i32 0, ptr %r, align 4, !tbaa !5
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond8

for.cond8:                                        ; preds = %for.inc18, %for.body7
  %7 = load i32, ptr %s, align 4, !tbaa !5
  %8 = load i32, ptr %t, align 4, !tbaa !5
  %sub9 = sub nsw i32 %8, 1
  %cmp10 = icmp sle i32 %7, %sub9
  br i1 %cmp10, label %for.body11, label %for.end20

for.body11:                                       ; preds = %for.cond8
  %9 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom12 = sext i32 %9 to i64
  %arrayidx13 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom12
  %10 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %11 = load i32, ptr %s, align 4, !tbaa !5
  %idxprom14 = sext i32 %11 to i64
  %arrayidx15 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom14
  %12 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %10, %12
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body11
  br label %for.end20

if.else:                                          ; preds = %for.body11
  %13 = load i32, ptr %r, align 4, !tbaa !5
  %inc17 = add nsw i32 %13, 1
  store i32 %inc17, ptr %r, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.else
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %14 = load i32, ptr %s, align 4, !tbaa !5
  %inc19 = add nsw i32 %14, 1
  store i32 %inc19, ptr %s, align 4, !tbaa !5
  br label %for.cond8, !llvm.loop !12

for.end20:                                        ; preds = %if.then, %for.cond8
  %15 = load i32, ptr %r, align 4, !tbaa !5
  %16 = load i32, ptr %t, align 4, !tbaa !5
  %cmp21 = icmp eq i32 %15, %16
  br i1 %cmp21, label %if.then22, label %if.end26

if.then22:                                        ; preds = %for.end20
  %17 = load i32, ptr %t, align 4, !tbaa !5
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [20000 x i32], ptr %a, i64 0, i64 %idxprom23
  %18 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %call25 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %18)
  br label %if.end26

if.end26:                                         ; preds = %if.then22, %for.end20
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %19 = load i32, ptr %t, align 4, !tbaa !5
  %inc28 = add nsw i32 %19, 1
  store i32 %inc28, ptr %t, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end29:                                        ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 80000, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
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
