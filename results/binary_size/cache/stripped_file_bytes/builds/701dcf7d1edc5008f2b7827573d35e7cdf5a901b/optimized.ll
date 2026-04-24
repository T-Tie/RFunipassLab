; ModuleID = '/tmp/tmpacolikar.cpp'
source_filename = "/tmp/tmpacolikar.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %shu = alloca [1000 x [1000 x i32]], align 16
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %heng = alloca i32, align 4
  %s = alloca i32, align 4
  %count = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4000000, ptr %shu) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %heng) #3
  store i32 0, ptr %heng, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  store i32 0, ptr %s, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %idxprom
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %inc8 = add nsw i32 %7, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc27, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end29

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %10 = load i32, ptr %k, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %idxprom16
  %13 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %15 = load i32, ptr %heng, align 4, !tbaa !5
  %add = add nsw i32 %15, 1
  store i32 %add, ptr %heng, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body15
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %16 = load i32, ptr %k, align 4, !tbaa !5
  %inc22 = add nsw i32 %16, 1
  store i32 %inc22, ptr %k, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %for.cond13
  %17 = load i32, ptr %heng, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %17, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end23
  br label %for.end29

if.end26:                                         ; preds = %for.end23
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %18, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end29:                                        ; preds = %if.then25, %for.cond10
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc50, %for.end29
  %19 = load i32, ptr %k, align 4, !tbaa !5
  %20 = load i32, ptr %n, align 4, !tbaa !5
  %cmp31 = icmp slt i32 %19, %20
  br i1 %cmp31, label %for.body32, label %for.end52

for.body32:                                       ; preds = %for.cond30
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc44, %for.body32
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %22 = load i32, ptr %n, align 4, !tbaa !5
  %cmp34 = icmp slt i32 %21, %22
  br i1 %cmp34, label %for.body35, label %for.end46

for.body35:                                       ; preds = %for.cond33
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %23 to i64
  %arrayidx37 = getelementptr inbounds [1000 x [1000 x i32]], ptr %shu, i64 0, i64 %idxprom36
  %24 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom38 = sext i32 %24 to i64
  %arrayidx39 = getelementptr inbounds [1000 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %25 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %25, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %for.body35
  %26 = load i32, ptr %s, align 4, !tbaa !5
  %add42 = add nsw i32 %26, 1
  store i32 %add42, ptr %s, align 4, !tbaa !5
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %for.body35
  br label %for.inc44

for.inc44:                                        ; preds = %if.end43
  %27 = load i32, ptr %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %27, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end46:                                        ; preds = %for.cond33
  %28 = load i32, ptr %s, align 4, !tbaa !5
  %cmp47 = icmp ne i32 %28, 0
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %for.end46
  br label %for.end52

if.end49:                                         ; preds = %for.end46
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %29 = load i32, ptr %k, align 4, !tbaa !5
  %inc51 = add nsw i32 %29, 1
  store i32 %inc51, ptr %k, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !16

for.end52:                                        ; preds = %if.then48, %for.cond30
  %30 = load i32, ptr %s, align 4, !tbaa !5
  %sub = sub nsw i32 %30, 2
  %31 = load i32, ptr %heng, align 4, !tbaa !5
  %sub53 = sub nsw i32 %31, 2
  %mul = mul nsw i32 %sub, %sub53
  store i32 %mul, ptr %count, align 4, !tbaa !5
  %32 = load i32, ptr %count, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %32)
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %heng) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 4000000, ptr %shu) #3
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
