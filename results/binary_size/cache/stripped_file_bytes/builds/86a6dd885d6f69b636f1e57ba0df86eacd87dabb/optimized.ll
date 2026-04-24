; ModuleID = '/tmp/tmpe_35yufa.cpp'
source_filename = "/tmp/tmpe_35yufa.cpp"
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
  %a = alloca [25 x i32], align 16
  %b = alloca [25 x i32], align 16
  %max = alloca i32, align 4
  %i = alloca i32, align 4
  %i4 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %j = alloca i32, align 4
  %i36 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 100, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 100, ptr %b) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  br label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom1
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx2)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond.cleanup
  call void @llvm.lifetime.start.p0(i64 4, ptr %i4) #3
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %5, 1
  store i32 %sub, ptr %i4, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc33, %for.end
  %6 = load i32, ptr %i4, align 4, !tbaa !5
  %cmp6 = icmp sge i32 %6, 0
  br i1 %cmp6, label %for.body8, label %for.cond.cleanup7

for.cond.cleanup7:                                ; preds = %for.cond5
  store i32 5, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i4) #3
  br label %for.end34

for.body8:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  %7 = load i32, ptr %i4, align 4, !tbaa !5
  store i32 %7, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc30, %for.body8
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp slt i32 %8, %9
  br i1 %cmp10, label %for.body12, label %for.cond.cleanup11

for.cond.cleanup11:                               ; preds = %for.cond9
  store i32 8, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  br label %for.end32

for.body12:                                       ; preds = %for.cond9
  %10 = load i32, ptr %i4, align 4, !tbaa !5
  %11 = load i32, ptr %j, align 4, !tbaa !5
  %cmp13 = icmp ne i32 %10, %11
  br i1 %cmp13, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.body12
  %12 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %14 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %idxprom16
  %15 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %13, %15
  br i1 %cmp18, label %land.lhs.true19, label %if.end

land.lhs.true19:                                  ; preds = %land.lhs.true
  %16 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom20 = sext i32 %16 to i64
  %arrayidx21 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom20
  %17 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %18 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom22 = sext i32 %18 to i64
  %arrayidx23 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom22
  %19 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %add = add nsw i32 1, %19
  %cmp24 = icmp slt i32 %17, %add
  br i1 %cmp24, label %if.then, label %if.end

if.then:                                          ; preds = %land.lhs.true19
  %20 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom25 = sext i32 %20 to i64
  %arrayidx26 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom25
  %21 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %add27 = add nsw i32 %21, 1
  %22 = load i32, ptr %i4, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom28
  store i32 %add27, ptr %arrayidx29, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true19, %land.lhs.true, %for.body12
  br label %for.inc30

for.inc30:                                        ; preds = %if.end
  %23 = load i32, ptr %j, align 4, !tbaa !5
  %inc31 = add nsw i32 %23, 1
  store i32 %inc31, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end32:                                        ; preds = %for.cond.cleanup11
  br label %for.inc33

for.inc33:                                        ; preds = %for.end32
  %24 = load i32, ptr %i4, align 4, !tbaa !5
  %dec = add nsw i32 %24, -1
  store i32 %dec, ptr %i4, align 4, !tbaa !5
  br label %for.cond5, !llvm.loop !13

for.end34:                                        ; preds = %for.cond.cleanup7
  %arrayidx35 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 0
  %25 = load i32, ptr %arrayidx35, align 16, !tbaa !5
  store i32 %25, ptr %max, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i36) #3
  store i32 0, ptr %i36, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc48, %for.end34
  %26 = load i32, ptr %i36, align 4, !tbaa !5
  %27 = load i32, ptr %n, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %26, %27
  br i1 %cmp38, label %for.body40, label %for.cond.cleanup39

for.cond.cleanup39:                               ; preds = %for.cond37
  store i32 11, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i36) #3
  br label %for.end50

for.body40:                                       ; preds = %for.cond37
  %28 = load i32, ptr %i36, align 4, !tbaa !5
  %idxprom41 = sext i32 %28 to i64
  %arrayidx42 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom41
  %29 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %30 = load i32, ptr %max, align 4, !tbaa !5
  %cmp43 = icmp sgt i32 %29, %30
  br i1 %cmp43, label %if.then44, label %if.end47

if.then44:                                        ; preds = %for.body40
  %31 = load i32, ptr %i36, align 4, !tbaa !5
  %idxprom45 = sext i32 %31 to i64
  %arrayidx46 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %idxprom45
  %32 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  store i32 %32, ptr %max, align 4, !tbaa !5
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %for.body40
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %33 = load i32, ptr %i36, align 4, !tbaa !5
  %inc49 = add nsw i32 %33, 1
  store i32 %inc49, ptr %i36, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !14

for.end50:                                        ; preds = %for.cond.cleanup39
  %34 = load i32, ptr %max, align 4, !tbaa !5
  %call51 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %34)
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 100, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 100, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  %35 = load i32, ptr %retval, align 4
  ret i32 %35
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #2

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
