; ModuleID = '/tmp/tmpuax06ahv.cpp'
source_filename = "/tmp/tmpuax06ahv.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z3maxii(i32 noundef %x, i32 noundef %y) #0 {
entry:
  %retval = alloca i32, align 4
  %x.addr = alloca i32, align 4
  %y.addr = alloca i32, align 4
  store i32 %x, ptr %x.addr, align 4, !tbaa !5
  store i32 %y, ptr %y.addr, align 4, !tbaa !5
  %0 = load i32, ptr %x.addr, align 4, !tbaa !5
  %1 = load i32, ptr %y.addr, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, %1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %x.addr, align 4, !tbaa !5
  store i32 %2, ptr %retval, align 4
  br label %return

if.else:                                          ; preds = %entry
  %3 = load i32, ptr %y.addr, align 4, !tbaa !5
  store i32 %3, ptr %retval, align 4
  br label %return

return:                                           ; preds = %if.else, %if.then
  %4 = load i32, ptr %retval, align 4
  ret i32 %4
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #1 {
entry:
  %retval = alloca i32, align 4
  %num = alloca [30 x i32], align 16
  %r = alloca i32, align 4
  %dp = alloca [30 x i32], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 120, ptr %num) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr %r) #5
  store i32 0, ptr %r, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 120, ptr %dp) #5
  call void @llvm.memset.p0.i64(ptr align 16 %dp, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom2 = sext i32 %3 to i64
  %arrayidx3 = getelementptr inbounds [30 x i32], ptr %dp, i64 0, i64 %idxprom2
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i4) #5
  store i32 2, ptr %i4, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc35, %for.end
  %5 = load i32, ptr %i4, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6 = icmp sle i32 %5, %6
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i4) #5
  br label %for.end37

for.body8:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc32, %for.body8
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %8 = load i32, ptr %i4, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %7, %8
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5
  br label %for.end34

for.body12:                                       ; preds = %for.cond9
  %9 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom13 = sext i32 %9 to i64
  %arrayidx14 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom13
  %10 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom15 = sext i32 %11 to i64
  %arrayidx16 = getelementptr inbounds [30 x i32], ptr %num, i64 0, i64 %idxprom15
  %12 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp sle i32 %10, %12
  br i1 %cmp17, label %if.then, label %if.end31

if.then:                                          ; preds = %for.body12
  %13 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [30 x i32], ptr %dp, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom20 = sext i32 %15 to i64
  %arrayidx21 = getelementptr inbounds [30 x i32], ptr %dp, i64 0, i64 %idxprom20
  %16 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %add = add nsw i32 %16, 1
  %call22 = call noundef i32 @_Z3maxii(i32 noundef %14, i32 noundef %add)
  %17 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom23 = sext i32 %17 to i64
  %arrayidx24 = getelementptr inbounds [30 x i32], ptr %dp, i64 0, i64 %idxprom23
  store i32 %call22, ptr %arrayidx24, align 4, !tbaa !5
  %18 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom25 = sext i32 %18 to i64
  %arrayidx26 = getelementptr inbounds [30 x i32], ptr %dp, i64 0, i64 %idxprom25
  %19 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %20 = load i32, ptr %r, align 4, !tbaa !5
  %cmp27 = icmp sgt i32 %19, %20
  br i1 %cmp27, label %if.then28, label %if.end

if.then28:                                        ; preds = %if.then
  %21 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom29 = sext i32 %21 to i64
  %arrayidx30 = getelementptr inbounds [30 x i32], ptr %dp, i64 0, i64 %idxprom29
  %22 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %22, ptr %r, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then28, %if.then
  br label %if.end31

if.end31:                                         ; preds = %if.end, %for.body12
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc33 = add nsw i32 %23, 1
  store i32 %inc33, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end34:                                        ; preds = %for.cond.cleanup11
  br label %for.inc35

for.inc35:                                        ; preds = %for.end34
  %24 = load i32, ptr %i4, align 4, !tbaa !5
  %inc36 = add nsw i32 %24, 1
  store i32 %inc36, ptr %i4, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end37:                                        ; preds = %for.cond.cleanup7
  %25 = load i32, ptr %r, align 4, !tbaa !5
  %call38 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %25)
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr %dp) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr %r) #5
  call void @llvm.lifetime.end.p0(i64 120, ptr %num) #5
  %26 = load i32, ptr %retval, align 4
  ret i32 %26
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @__isoc23_scanf(ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #2

declare i32 @printf(ptr noundef, ...) #4

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
