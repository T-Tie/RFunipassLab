; ModuleID = '/tmp/tmppt2estbf.cpp'
source_filename = "/tmp/tmppt2estbf.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@n = dso_local global i32 0, align 4
@m = dso_local global i32 0, align 4
@the_min = dso_local global i32 0, align 4
@a = dso_local global [110 x [110 x i32]] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define dso_local void @_Z10reduce_miniiii(i32 noundef %x, i32 noundef %y, i32 noundef %dx, i32 noundef %dy) #0 {
entry:
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  %dx.addr = alloca i32, align 4
  %dy.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !5
  store i32 %y, ptr %y.addr, align 4, !tbaa !5
  store i32 %dx, ptr %dx.addr, align 4, !tbaa !5
  store i32 %dy, ptr %dy.addr, align 4, !tbaa !5
  %0 = load i32, ptr %x.addr, align 4, !tbaa !5
  %1 = load i32, ptr @m, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, %1
  br i1 %cmp, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %2 = load i32, ptr %y.addr, align 4, !tbaa !5
  %3 = load i32, ptr @m, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %2, %3
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %4 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom
  %5 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds [110 x i32], ptr %arrayidx, i64 0, i64 %idxprom2
  %6 = load i32, ptr %arrayidx3, align 4, !tbaa !5
  %7 = load i32, ptr @the_min, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %6, %7
  br i1 %cmp4, label %if.then5, label %if.end10

if.then5:                                         ; preds = %if.end
  %8 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom6 = sext i32 %8 to i64
  %arrayidx7 = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom6
  %9 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom8 = sext i32 %9 to i64
  %arrayidx9 = getelementptr inbounds [110 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  %10 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  store i32 %10, ptr @the_min, align 4, !tbaa !5
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end
  %11 = load i32, ptr %x.addr, align 4, !tbaa !5
  %12 = load i32, ptr %dx.addr, align 4, !tbaa !5
  %add = add nsw i32 %11, %12
  %13 = load i32, ptr %y.addr, align 4, !tbaa !5
  %14 = load i32, ptr %dy.addr, align 4, !tbaa !5
  %add11 = add nsw i32 %13, %14
  %15 = load i32, ptr %dx.addr, align 4, !tbaa !5
  %16 = load i32, ptr %dy.addr, align 4, !tbaa !5
  call void @_Z10reduce_miniiii(i32 noundef %add, i32 noundef %add11, i32 noundef %15, i32 noundef %16)
  %17 = load i32, ptr @the_min, align 4, !tbaa !5
  %18 = load i32, ptr %x.addr, align 4, !tbaa !5
  %idxprom12 = sext i32 %18 to i64
  %arrayidx13 = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom12
  %19 = load i32, ptr %y.addr, align 4, !tbaa !5
  %idxprom14 = sext i32 %19 to i64
  %arrayidx15 = getelementptr inbounds [110 x i32], ptr %arrayidx13, i64 0, i64 %idxprom14
  %20 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %sub = sub nsw i32 %20, %17
  store i32 %sub, ptr %arrayidx15, align 4, !tbaa !5
  br label %return

return:                                           ; preds = %if.end10, %if.then
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_Z6reducev() #1 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc10, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @m, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end12

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr @m, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %add = add nsw i32 %5, 1
  %idxprom4 = sext i32 %add to i64
  %arrayidx5 = getelementptr inbounds [110 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %6 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom6 = sext i32 %7 to i64
  %arrayidx7 = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [110 x i32], ptr %arrayidx7, i64 0, i64 %idxprom8
  store i32 %6, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %9, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %10, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end12:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc31, %for.end12
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %12 = load i32, ptr @m, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %11, %12
  br i1 %cmp14, label %for.body15, label %for.end33

for.body15:                                       ; preds = %for.cond13
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc28, %for.body15
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %14 = load i32, ptr @m, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %13, %14
  br i1 %cmp17, label %for.body18, label %for.end30

for.body18:                                       ; preds = %for.cond16
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %add19 = add nsw i32 %15, 1
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom20
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %16 to i64
  %arrayidx23 = getelementptr inbounds [110 x i32], ptr %arrayidx21, i64 0, i64 %idxprom22
  %17 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom24
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [110 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  store i32 %17, ptr %arrayidx27, align 4, !tbaa !5
  br label %for.inc28

for.inc28:                                        ; preds = %for.body18
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %20, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end30:                                        ; preds = %for.cond16
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc32 = add nsw i32 %21, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !14

for.end33:                                        ; preds = %for.cond13
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #3 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %t = alloca i32, align 4
  %sum = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %sum) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef @n)
  store i32 0, ptr %t, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc32, %entry
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end34

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc10, %for.body
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %3 = load i32, ptr @n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end12

for.body3:                                        ; preds = %for.cond1
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc, %for.body3
  %4 = load i32, ptr %j, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %4, %5
  br i1 %cmp5, label %for.body6, label %for.end

for.body6:                                        ; preds = %for.cond4
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %6 to i64
  %arrayidx = getelementptr inbounds [110 x [110 x i32]], ptr @a, i64 0, i64 %idxprom
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom7 = sext i32 %7 to i64
  %arrayidx8 = getelementptr inbounds [110 x i32], ptr %arrayidx, i64 0, i64 %idxprom7
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx8)
  br label %for.inc

for.inc:                                          ; preds = %for.body6
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %8, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !15

for.end:                                          ; preds = %for.cond4
  br label %for.inc10

for.inc10:                                        ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %inc11 = add nsw i32 %9, 1
  store i32 %inc11, ptr %i, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !16

for.end12:                                        ; preds = %for.cond1
  store i32 0, ptr %sum, align 4, !tbaa !5
  %10 = load i32, ptr @n, align 4, !tbaa !5
  store i32 %10, ptr @m, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc29, %for.end12
  %11 = load i32, ptr @m, align 4, !tbaa !5
  %cmp14 = icmp sge i32 %11, 1
  br i1 %cmp14, label %for.body15, label %for.end30

for.body15:                                       ; preds = %for.cond13
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc26, %for.body15
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %13 = load i32, ptr @m, align 4, !tbaa !5
  %mul = mul nsw i32 2, %13
  %cmp17 = icmp slt i32 %12, %mul
  br i1 %cmp17, label %for.body18, label %for.end28

for.body18:                                       ; preds = %for.cond16
  store i32 10000, ptr @the_min, align 4, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr @m, align 4, !tbaa !5
  %rem = srem i32 %14, %15
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr @m, align 4, !tbaa !5
  %div = sdiv i32 %16, %17
  %sub = sub nsw i32 1, %div
  %mul19 = mul nsw i32 %rem, %sub
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %19 = load i32, ptr @m, align 4, !tbaa !5
  %rem20 = srem i32 %18, %19
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr @m, align 4, !tbaa !5
  %div21 = sdiv i32 %20, %21
  %mul22 = mul nsw i32 %rem20, %div21
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %23 = load i32, ptr @m, align 4, !tbaa !5
  %div23 = sdiv i32 %22, %23
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %25 = load i32, ptr @m, align 4, !tbaa !5
  %div24 = sdiv i32 %24, %25
  %sub25 = sub nsw i32 1, %div24
  call void @_Z10reduce_miniiii(i32 noundef %mul19, i32 noundef %mul22, i32 noundef %div23, i32 noundef %sub25)
  br label %for.inc26

for.inc26:                                        ; preds = %for.body18
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %inc27 = add nsw i32 %26, 1
  store i32 %inc27, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !17

for.end28:                                        ; preds = %for.cond16
  %27 = load i32, ptr getelementptr inbounds ([110 x i32], ptr getelementptr inbounds ([110 x [110 x i32]], ptr @a, i64 0, i64 1), i64 0, i64 1), align 4, !tbaa !5
  %28 = load i32, ptr %sum, align 4, !tbaa !5
  %add = add nsw i32 %28, %27
  store i32 %add, ptr %sum, align 4, !tbaa !5
  call void @_Z6reducev()
  br label %for.inc29

for.inc29:                                        ; preds = %for.end28
  %29 = load i32, ptr @m, align 4, !tbaa !5
  %dec = add nsw i32 %29, -1
  store i32 %dec, ptr @m, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !18

for.end30:                                        ; preds = %for.cond13
  %30 = load i32, ptr %sum, align 4, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %30)
  br label %for.inc32

for.inc32:                                        ; preds = %for.end30
  %31 = load i32, ptr %t, align 4, !tbaa !5
  %inc33 = add nsw i32 %31, 1
  store i32 %inc33, ptr %t, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !19

for.end34:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %sum) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  %32 = load i32, ptr %retval, align 4
  ret i32 %32
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #4

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
