; ModuleID = '/tmp/tmpra73xrkn.cpp'
source_filename = "/tmp/tmpra73xrkn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %h = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %flag = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %b = alloca [300 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #3
  store i32 1, ptr %h, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #3
  store i32 1, ptr %flag, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1200, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 1200, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
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
  %arrayidx = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 1
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 1
  store i32 %4, ptr %arrayidx3, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc26, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp sle i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end28

for.body6:                                        ; preds = %for.cond4
  store i32 1, ptr %flag, align 4, !tbaa !5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc15, %for.body6
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %h, align 4, !tbaa !5
  %cmp8 = icmp sle i32 %7, %8
  br i1 %cmp8, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond7
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %10, %12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  store i32 0, ptr %flag, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, ptr %j, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

for.end17:                                        ; preds = %for.cond7
  %14 = load i32, ptr %flag, align 4, !tbaa !5
  %cmp18 = icmp eq i32 %14, 1
  br i1 %cmp18, label %if.then19, label %if.end25

if.then19:                                        ; preds = %for.end17
  %15 = load i32, ptr %h, align 4, !tbaa !5
  %inc20 = add nsw i32 %15, 1
  store i32 %inc20, ptr %h, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom21
  %17 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %18 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom23 = sext i32 %18 to i64
  %arrayidx24 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom23
  store i32 %17, ptr %arrayidx24, align 4, !tbaa !5
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %for.end17
  br label %for.inc26

for.inc26:                                        ; preds = %if.end25
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %19, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end28:                                        ; preds = %for.cond4
  %20 = load i32, ptr %h, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %20, 1
  br i1 %cmp29, label %if.then30, label %if.end33

if.then30:                                        ; preds = %for.end28
  %arrayidx31 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 1
  %21 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %call32 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %21)
  br label %if.end33

if.end33:                                         ; preds = %if.then30, %for.end28
  %22 = load i32, ptr %h, align 4, !tbaa !5
  %cmp34 = icmp sge i32 %22, 2
  br i1 %cmp34, label %if.then35, label %if.end48

if.then35:                                        ; preds = %if.end33
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond36

for.cond36:                                       ; preds = %for.inc42, %if.then35
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %24 = load i32, ptr %h, align 4, !tbaa !5
  %sub = sub nsw i32 %24, 1
  %cmp37 = icmp sle i32 %23, %sub
  br i1 %cmp37, label %for.body38, label %for.end44

for.body38:                                       ; preds = %for.cond36
  %25 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %25 to i64
  %arrayidx40 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom39
  %26 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %26)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body38
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc43 = add nsw i32 %27, 1
  store i32 %inc43, ptr %i, align 4, !tbaa !5
  br label %for.cond36, !llvm.loop !14

for.end44:                                        ; preds = %for.cond36
  %28 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom45 = sext i32 %28 to i64
  %arrayidx46 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom45
  %29 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %29)
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.end48:                                         ; preds = %if.end33
  store i32 0, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end48, %for.end44
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #3
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  %30 = load i32, ptr %retval, align 4
  ret i32 %30

unreachable:                                      ; preds = %cleanup
  unreachable
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
!14 = distinct !{!14, !10, !11}
