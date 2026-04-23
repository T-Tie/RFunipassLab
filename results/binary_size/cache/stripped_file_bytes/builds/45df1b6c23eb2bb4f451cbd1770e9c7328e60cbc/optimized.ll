; ModuleID = '/tmp/tmpmbqkhuy7.cpp'
source_filename = "/tmp/tmpmbqkhuy7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %w = alloca [300 x i32], align 16
  %s = alloca [300 x i32], align 16
  %f = alloca i32, align 4
  %k = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 1200, ptr %w) #3
  call void @llvm.lifetime.start.p0(i64 1200, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  store i32 0, ptr %f, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  store i32 0, ptr %k, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  %arrayidx = getelementptr inbounds [300 x i32], ptr %w, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %arrayidx2 = getelementptr inbounds [300 x i32], ptr %w, i64 0, i64 0
  %0 = load i32, ptr %arrayidx2, align 16, !tbaa !5
  %arrayidx3 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 0
  store i32 %0, ptr %arrayidx3, align 16, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %2, %3
  br i1 %cmp, label %for.body, label %for.end24

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [300 x i32], ptr %w, i64 0, i64 %idxprom
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx4)
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  store i32 %sub, ptr %j, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc, %for.body
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %cmp7 = icmp sge i32 %6, 0
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [300 x i32], ptr %w, i64 0, i64 %idxprom9
  %8 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %9 to i64
  %arrayidx12 = getelementptr inbounds [300 x i32], ptr %w, i64 0, i64 %idxprom11
  %10 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %8, %10
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  store i32 1, ptr %f, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %dec = add nsw i32 %11, -1
  store i32 %dec, ptr %j, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  %12 = load i32, ptr %f, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %12, 0
  br i1 %cmp14, label %if.then15, label %if.end21

if.then15:                                        ; preds = %for.end
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [300 x i32], ptr %w, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %15 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %15 to i64
  %arrayidx19 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom18
  store i32 %14, ptr %arrayidx19, align 4, !tbaa !5
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %inc20 = add nsw i32 %16, 1
  store i32 %inc20, ptr %k, align 4, !tbaa !5
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %for.end
  store i32 0, ptr %f, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %if.end21
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %inc23 = add nsw i32 %17, 1
  store i32 %inc23, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end24:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc32, %for.end24
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %sub26 = sub nsw i32 %19, 1
  %cmp27 = icmp slt i32 %18, %sub26
  br i1 %cmp27, label %for.body28, label %for.end34

for.body28:                                       ; preds = %for.cond25
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %20 to i64
  %arrayidx30 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom29
  %21 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body28
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !13

for.end34:                                        ; preds = %for.cond25
  %23 = load i32, ptr %k, align 4, !tbaa !5
  %sub35 = sub nsw i32 %23, 1
  %idxprom36 = sext i32 %sub35 to i64
  %arrayidx37 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom36
  %24 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %w) #3
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
