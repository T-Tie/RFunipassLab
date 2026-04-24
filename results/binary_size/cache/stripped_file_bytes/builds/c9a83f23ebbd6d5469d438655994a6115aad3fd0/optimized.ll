; ModuleID = '/tmp/tmpv9p7zxi2.cpp'
source_filename = "/tmp/tmpv9p7zxi2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %str = alloca [10000 x i32], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 40000, ptr %str) #5
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
  %arrayidx = getelementptr inbounds [10000 x i32], ptr %str, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc9, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end11

for.body4:                                        ; preds = %for.cond2
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom5 = sext i32 %6 to i64
  %arrayidx6 = getelementptr inbounds [10000 x i32], ptr %str, i64 0, i64 %idxprom5
  %7 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %call7 = call noundef i32 @_Z3yinii(i32 noundef %7, i32 noundef 2)
  %call8 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call7)
  br label %for.inc9

for.inc9:                                         ; preds = %for.body4
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %inc10 = add nsw i32 %8, 1
  store i32 %inc10, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end11:                                        ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 40000, ptr %str) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z3yinii(i32 noundef %m, i32 noundef %t) #3 {
entry:
  %retval = alloca i32, align 4
  %m.addr = alloca i32, align 4
  %t.addr = alloca i32, align 4
  %j = alloca i32, align 4
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  %x = alloca i32, align 4
  %str1 = alloca [10000 x [2 x i32]], align 16
  %cleanup.dest.slot = alloca i32, align 4
  store i32 %m, ptr %m.addr, align 4, !tbaa !5
  store i32 %t, ptr %t.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  %0 = load i32, ptr %t.addr, align 4, !tbaa !5
  store i32 %0, ptr %j, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #5
  store i32 0, ptr %c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #5
  store i32 0, ptr %b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %x) #5
  store i32 0, ptr %x, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 80000, ptr %str1) #5
  %1 = load i32, ptr %m.addr, align 4, !tbaa !5
  %2 = load i32, ptr %t.addr, align 4, !tbaa !5
  %cmp = icmp slt i32 %1, %2
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %3, 1
  br i1 %cmp1, label %if.then, label %if.else

if.then:                                          ; preds = %land.lhs.true
  store i32 0, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true, %entry
  %4 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp2 = icmp eq i32 %4, 1
  br i1 %cmp2, label %if.then3, label %if.else4

if.then3:                                         ; preds = %if.else
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else4:                                         ; preds = %if.else
  %5 = load i32, ptr %m.addr, align 4, !tbaa !5
  %call = call noundef i32 @_Z3zhii(i32 noundef %5)
  %cmp5 = icmp eq i32 %call, 0
  br i1 %cmp5, label %if.then6, label %if.else7

if.then6:                                         ; preds = %if.else4
  store i32 1, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

if.else7:                                         ; preds = %if.else4
  %6 = load i32, ptr %t.addr, align 4, !tbaa !5
  store i32 %6, ptr %j, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %if.else7
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %m.addr, align 4, !tbaa !5
  %cmp8 = icmp sle i32 %7, %8
  br i1 %cmp8, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %9 = load i32, ptr %m.addr, align 4, !tbaa !5
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %rem = srem i32 %9, %10
  %cmp9 = icmp eq i32 %rem, 0
  br i1 %cmp9, label %if.then10, label %if.end

if.then10:                                        ; preds = %for.body
  %11 = load i32, ptr %m.addr, align 4, !tbaa !5
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %div = sdiv i32 %11, %12
  %13 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom = sext i32 %13 to i64
  %arrayidx = getelementptr inbounds [10000 x [2 x i32]], ptr %str1, i64 0, i64 %idxprom
  %arrayidx11 = getelementptr inbounds [2 x i32], ptr %arrayidx, i64 0, i64 0
  store i32 %div, ptr %arrayidx11, align 8, !tbaa !5
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %15 = load i32, ptr %c, align 4, !tbaa !5
  %idxprom12 = sext i32 %15 to i64
  %arrayidx13 = getelementptr inbounds [10000 x [2 x i32]], ptr %str1, i64 0, i64 %idxprom12
  %arrayidx14 = getelementptr inbounds [2 x i32], ptr %arrayidx13, i64 0, i64 1
  store i32 %14, ptr %arrayidx14, align 4, !tbaa !5
  %16 = load i32, ptr %c, align 4, !tbaa !5
  %inc = add nsw i32 %16, 1
  store i32 %inc, ptr %c, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then10, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc15 = add nsw i32 %17, 1
  store i32 %inc15, ptr %j, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  br label %if.end16

if.end16:                                         ; preds = %for.end
  br label %if.end17

if.end17:                                         ; preds = %if.end16
  br label %if.end18

if.end18:                                         ; preds = %if.end17
  store i32 0, ptr %b, align 4, !tbaa !5
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc29, %if.end18
  %18 = load i32, ptr %b, align 4, !tbaa !5
  %19 = load i32, ptr %c, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %18, %19
  br i1 %cmp20, label %for.body21, label %for.end31

for.body21:                                       ; preds = %for.cond19
  %20 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom22 = sext i32 %20 to i64
  %arrayidx23 = getelementptr inbounds [10000 x [2 x i32]], ptr %str1, i64 0, i64 %idxprom22
  %arrayidx24 = getelementptr inbounds [2 x i32], ptr %arrayidx23, i64 0, i64 0
  %21 = load i32, ptr %arrayidx24, align 8, !tbaa !5
  %22 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom25 = sext i32 %22 to i64
  %arrayidx26 = getelementptr inbounds [10000 x [2 x i32]], ptr %str1, i64 0, i64 %idxprom25
  %arrayidx27 = getelementptr inbounds [2 x i32], ptr %arrayidx26, i64 0, i64 1
  %23 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %call28 = call noundef i32 @_Z3yinii(i32 noundef %21, i32 noundef %23)
  %24 = load i32, ptr %x, align 4, !tbaa !5
  %add = add nsw i32 %24, %call28
  store i32 %add, ptr %x, align 4, !tbaa !5
  br label %for.inc29

for.inc29:                                        ; preds = %for.body21
  %25 = load i32, ptr %b, align 4, !tbaa !5
  %inc30 = add nsw i32 %25, 1
  store i32 %inc30, ptr %b, align 4, !tbaa !5
  br label %for.cond19, !llvm.loop !14

for.end31:                                        ; preds = %for.cond19
  %26 = load i32, ptr %x, align 4, !tbaa !5
  store i32 %26, ptr %retval, align 4
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end31, %if.then6, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 80000, ptr %str1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %x) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  %27 = load i32, ptr %retval, align 4
  ret i32 %27
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3zhii(i32 noundef %a) #4 {
entry:
  %a.addr = alloca i32, align 4
  %k = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 %a, ptr %a.addr, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #5
  store i32 2, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #5
  store i32 0, ptr %flag, align 4, !tbaa !5
  store i32 2, ptr %k, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = load i32, ptr %a.addr, align 4, !tbaa !5
  %div = sdiv i32 %1, 2
  %cmp = icmp sle i32 %0, %div
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %a.addr, align 4, !tbaa !5
  %3 = load i32, ptr %k, align 4, !tbaa !5
  %rem = srem i32 %2, %3
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %4 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %if.then, %for.cond
  %5 = load i32, ptr %flag, align 4, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #5
  ret i32 %5
}

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
