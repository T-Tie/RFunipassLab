; ModuleID = '/tmp/tmprcunkcxb.cpp'
source_filename = "/tmp/tmprcunkcxb.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@n = dso_local global i32 0, align 4
@h = dso_local global [30 x i32] zeroinitializer, align 16
@len = dso_local global [30 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %maxi = alloca i32, align 4
  %i34 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef @n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr @n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr @h, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  store i32 1, ptr @len, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i2) #3
  store i32 1, ptr %i2, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc31, %for.end
  %4 = load i32, ptr %i2, align 4, !tbaa !5
  %5 = load i32, ptr @n, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %4, %5
  br i1 %cmp4, label %for.body6, label %for.cond.cleanup5

for.cond.cleanup5:                                ; preds = %for.cond3
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i2) #3
  br label %for.end33

for.body6:                                        ; preds = %for.cond3
  %6 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [30 x i32], ptr @len, i64 0, i64 %idxprom7
  store i32 1, ptr %arrayidx8, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc28, %for.body6
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %i2, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  br label %for.end30

for.body12:                                       ; preds = %for.cond9
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [30 x i32], ptr @h, i64 0, i64 %idxprom13
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %11 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [30 x i32], ptr @h, i64 0, i64 %idxprom15
  %12 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp sge i32 %10, %12
  br i1 %cmp17, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body12
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [30 x i32], ptr @len, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %add = add nsw i32 %14, 1
  %15 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [30 x i32], ptr @len, i64 0, i64 %idxprom20
  %16 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %add, %16
  br i1 %cmp22, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [30 x i32], ptr @len, i64 0, i64 %idxprom23
  %18 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %add25 = add nsw i32 %18, 1
  %19 = load i32, ptr %i2, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [30 x i32], ptr @len, i64 0, i64 %idxprom26
  store i32 %add25, ptr %arrayidx27, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true, %for.body12
  br label %for.inc28

for.inc28:                                        ; preds = %if.end
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %20, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end30:                                        ; preds = %for.cond.cleanup11
  br label %for.inc31

for.inc31:                                        ; preds = %for.end30
  %21 = load i32, ptr %i2, align 4, !tbaa !5
  %inc32 = add nsw i32 %21, 1
  store i32 %inc32, ptr %i2, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !13

for.end33:                                        ; preds = %for.cond.cleanup5
  call void @llvm.lifetime.start.p0(i64 4, ptr %maxi) #3
  store i32 0, ptr %maxi, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i34) #3
  store i32 0, ptr %i34, align 4, !tbaa !5
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc46, %for.end33
  %22 = load i32, ptr %i34, align 4, !tbaa !5
  %23 = load i32, ptr @n, align 4, !tbaa !5
  %cmp36 = icmp slt i32 %22, %23
  br i1 %cmp36, label %for.body38, label %for.cond.cleanup37

for.cond.cleanup37:                               ; preds = %for.cond35
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i34) #3
  br label %for.end48

for.body38:                                       ; preds = %for.cond35
  %24 = load i32, ptr %i34, align 4, !tbaa !5
  %idxprom39 = sext i32 %24 to i64
  %arrayidx40 = getelementptr inbounds [30 x i32], ptr @len, i64 0, i64 %idxprom39
  %25 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %26 = load i32, ptr %maxi, align 4, !tbaa !5
  %cmp41 = icmp sgt i32 %25, %26
  br i1 %cmp41, label %if.then42, label %if.end45

if.then42:                                        ; preds = %for.body38
  %27 = load i32, ptr %i34, align 4, !tbaa !5
  %idxprom43 = sext i32 %27 to i64
  %arrayidx44 = getelementptr inbounds [30 x i32], ptr @len, i64 0, i64 %idxprom43
  %28 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  store i32 %28, ptr %maxi, align 4, !tbaa !5
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %for.body38
  br label %for.inc46

for.inc46:                                        ; preds = %if.end45
  %29 = load i32, ptr %i34, align 4, !tbaa !5
  %inc47 = add nsw i32 %29, 1
  store i32 %inc47, ptr %i34, align 4, !tbaa !5
  br label %for.cond35, !llvm.loop !14

for.end48:                                        ; preds = %for.cond.cleanup37
  %30 = load i32, ptr %maxi, align 4, !tbaa !5
  %call49 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %30)
  call void @llvm.lifetime.end.p0(i64 4, ptr %maxi) #3
  %31 = load i32, ptr %retval, align 4
  ret i32 %31
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

declare i32 @printf(ptr noundef, ...) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
