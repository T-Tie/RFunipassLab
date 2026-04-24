; ModuleID = '/tmp/tmp0cb_cxg9.cpp'
source_filename = "/tmp/tmp0cb_cxg9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %s = alloca [26 x i32], align 16
  %d = alloca [26 x i32], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %n = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 104, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 104, ptr %d) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arraydecay = getelementptr inbounds [26 x i32], ptr %s, i64 0, i64 0
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idx.ext = sext i32 %2 to i64
  %add.ptr = getelementptr inbounds i32, ptr %arraydecay, i64 %idx.ext
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %add.ptr)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [26 x i32], ptr %d, i64 0, i64 %idxprom
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc24, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp sgt i32 %6, -1
  br i1 %cmp3, label %for.body4, label %for.end25

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %k, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc18, %for.body4
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp slt i32 %8, %9
  br i1 %cmp6, label %for.body7, label %for.end20

for.body7:                                        ; preds = %for.cond5
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %11 to i64
  %arrayidx9 = getelementptr inbounds [26 x i32], ptr %d, i64 0, i64 %idxprom8
  %12 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %10, %12
  br i1 %cmp10, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body7
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %13 to i64
  %arrayidx12 = getelementptr inbounds [26 x i32], ptr %s, i64 0, i64 %idxprom11
  %14 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %15 to i64
  %arrayidx14 = getelementptr inbounds [26 x i32], ptr %s, i64 0, i64 %idxprom13
  %16 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sge i32 %14, %16
  br i1 %cmp15, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %17 to i64
  %arrayidx17 = getelementptr inbounds [26 x i32], ptr %d, i64 0, i64 %idxprom16
  %18 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  store i32 %18, ptr %k, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body7
  br label %for.inc18

for.inc18:                                        ; preds = %if.end
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc19 = add nsw i32 %19, 1
  store i32 %inc19, ptr %j, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !12

for.end20:                                        ; preds = %for.cond5
  %20 = load i32, ptr %k, align 4, !tbaa !5
  %inc21 = add nsw i32 %20, 1
  store i32 %inc21, ptr %k, align 4, !tbaa !5
  %21 = load i32, ptr %k, align 4, !tbaa !5
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %22 to i64
  %arrayidx23 = getelementptr inbounds [26 x i32], ptr %d, i64 0, i64 %idxprom22
  store i32 %21, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.end20
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %23, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end25:                                        ; preds = %for.cond2
  store i32 0, ptr %k, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond26

for.cond26:                                       ; preds = %for.inc36, %for.end25
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %cmp27 = icmp slt i32 %24, %25
  br i1 %cmp27, label %for.body28, label %for.end38

for.body28:                                       ; preds = %for.cond26
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %26 to i64
  %arrayidx30 = getelementptr inbounds [26 x i32], ptr %d, i64 0, i64 %idxprom29
  %27 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %28 = load i32, ptr %k, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %27, %28
  br i1 %cmp31, label %if.then32, label %if.end35

if.then32:                                        ; preds = %for.body28
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom33 = sext i32 %29 to i64
  %arrayidx34 = getelementptr inbounds [26 x i32], ptr %d, i64 0, i64 %idxprom33
  %30 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  store i32 %30, ptr %k, align 4, !tbaa !5
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %for.body28
  br label %for.inc36

for.inc36:                                        ; preds = %if.end35
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %inc37 = add nsw i32 %31, 1
  store i32 %inc37, ptr %i, align 4, !tbaa !5
  br label %for.cond26, !llvm.loop !14

for.end38:                                        ; preds = %for.cond26
  %32 = load i32, ptr %k, align 4, !tbaa !5
  %call39 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 104, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 104, ptr %s) #3
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
!14 = distinct !{!14, !10, !11}
