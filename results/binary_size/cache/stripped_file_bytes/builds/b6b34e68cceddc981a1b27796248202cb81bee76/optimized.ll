; ModuleID = '/tmp/tmprctcjue5.cpp'
source_filename = "/tmp/tmprctcjue5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [101 x i32], align 16
  %n = alloca i32, align 4
  %b = alloca [20001 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca [20001 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 404, ptr %a) #4
  call void @llvm.memset.p0.i64(ptr align 16 %a, i8 0, i64 404, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 80004, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  store i32 0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 80004, ptr %c) #4
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
  %arrayidx = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc19, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp sle i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end21

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %a, i64 0, i64 %idxprom7
  %8 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %8, 0
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body4
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc10 = add nsw i32 %9, 1
  store i32 %inc10, ptr %j, align 4, !tbaa !5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom11
  %11 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [20001 x i32], ptr %c, i64 0, i64 %idxprom13
  store i32 %11, ptr %arrayidx14, align 4, !tbaa !5
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom15 = sext i32 %13 to i64
  %arrayidx16 = getelementptr inbounds [20001 x i32], ptr %b, i64 0, i64 %idxprom15
  %14 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [101 x i32], ptr %a, i64 0, i64 %idxprom17
  store i32 1, ptr %arrayidx18, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc19

for.inc19:                                        ; preds = %if.end
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end21:                                        ; preds = %for.cond2
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond22

for.cond22:                                       ; preds = %for.inc32, %for.end21
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %cmp23 = icmp sle i32 %16, %17
  br i1 %cmp23, label %for.body24, label %for.end34

for.body24:                                       ; preds = %for.cond22
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [20001 x i32], ptr %c, i64 0, i64 %idxprom25
  %19 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %19)
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %cmp28 = icmp ne i32 %20, %21
  br i1 %cmp28, label %if.then29, label %if.end31

if.then29:                                        ; preds = %for.body24
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1)
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %for.body24
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond22, !llvm.loop !13

for.end34:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 80004, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 80004, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 404, ptr %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
