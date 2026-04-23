; ModuleID = '/tmp/tmpnlbbsxmi.cpp'
source_filename = "/tmp/tmpnlbbsxmi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.d = private unnamed_addr constant [13 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31, i32 0], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %temp = alloca i32, align 4
  %a = alloca [200 x i32], align 16
  %b = alloca [200 x i32], align 16
  %c = alloca [200 x i32], align 16
  %d = alloca [13 x i32], align 16
  %cha = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %temp) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 800, ptr %c) #4
  call void @llvm.lifetime.start.p0(i64 52, ptr %d) #4
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %d, ptr align 16 @__const.main.d, i64 52, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr %cha) #4
  store i32 0, ptr %cha, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
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
  %arrayidx = getelementptr inbounds [200 x i32], ptr %a, i64 0, i64 %idxprom
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom1 = sext i32 %3 to i64
  %arrayidx2 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom3 = sext i32 %4 to i64
  %arrayidx4 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom3
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %5, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.inc81, %for.end
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp7 = icmp slt i32 %6, %7
  br i1 %cmp7, label %for.body8, label %for.end83

for.body8:                                        ; preds = %for.cond6
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom9 = sext i32 %8 to i64
  %arrayidx10 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom9
  %9 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom11 = sext i32 %10 to i64
  %arrayidx12 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom11
  %11 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %9, %11
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %13, ptr %temp, align 4, !tbaa !5
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %14 to i64
  %arrayidx17 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom16
  %15 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom18 = sext i32 %16 to i64
  %arrayidx19 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom18
  store i32 %15, ptr %arrayidx19, align 4, !tbaa !5
  %17 = load i32, ptr %temp, align 4, !tbaa !5
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom20 = sext i32 %18 to i64
  %arrayidx21 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom20
  store i32 %17, ptr %arrayidx21, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %19 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom22 = sext i32 %19 to i64
  %arrayidx23 = getelementptr inbounds [200 x i32], ptr %a, i64 0, i64 %idxprom22
  %20 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %rem = srem i32 %20, 400
  %cmp24 = icmp eq i32 %rem, 0
  br i1 %cmp24, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom25 = sext i32 %21 to i64
  %arrayidx26 = getelementptr inbounds [200 x i32], ptr %a, i64 0, i64 %idxprom25
  %22 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %rem27 = srem i32 %22, 4
  %cmp28 = icmp eq i32 %rem27, 0
  br i1 %cmp28, label %land.lhs.true, label %if.else58

land.lhs.true:                                    ; preds = %lor.lhs.false
  %23 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom29 = sext i32 %23 to i64
  %arrayidx30 = getelementptr inbounds [200 x i32], ptr %a, i64 0, i64 %idxprom29
  %24 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %rem31 = srem i32 %24, 100
  %cmp32 = icmp ne i32 %rem31, 0
  br i1 %cmp32, label %if.then33, label %if.else58

if.then33:                                        ; preds = %land.lhs.true, %if.end
  %arrayidx34 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 1
  %25 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %add = add nsw i32 %25, 1
  %arrayidx35 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 1
  store i32 %add, ptr %arrayidx35, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom36 = sext i32 %26 to i64
  %arrayidx37 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom36
  %27 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  store i32 %27, ptr %j, align 4, !tbaa !5
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc46, %if.then33
  %28 = load i32, ptr %j, align 4, !tbaa !5
  %29 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom39 = sext i32 %29 to i64
  %arrayidx40 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom39
  %30 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41 = icmp slt i32 %28, %30
  br i1 %cmp41, label %for.body42, label %for.end48

for.body42:                                       ; preds = %for.cond38
  %31 = load i32, ptr %cha, align 4, !tbaa !5
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %sub = sub nsw i32 %32, 1
  %idxprom43 = sext i32 %sub to i64
  %arrayidx44 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 %idxprom43
  %33 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %add45 = add nsw i32 %31, %33
  store i32 %add45, ptr %cha, align 4, !tbaa !5
  br label %for.inc46

for.inc46:                                        ; preds = %for.body42
  %34 = load i32, ptr %j, align 4, !tbaa !5
  %inc47 = add nsw i32 %34, 1
  store i32 %inc47, ptr %j, align 4, !tbaa !5
  br label %for.cond38, !llvm.loop !12

for.end48:                                        ; preds = %for.cond38
  %arrayidx49 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 1
  %35 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %sub50 = sub nsw i32 %35, 1
  %arrayidx51 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 1
  store i32 %sub50, ptr %arrayidx51, align 4, !tbaa !5
  %36 = load i32, ptr %cha, align 4, !tbaa !5
  %rem52 = srem i32 %36, 7
  %cmp53 = icmp ne i32 %rem52, 0
  br i1 %cmp53, label %if.then54, label %if.else

if.then54:                                        ; preds = %for.end48
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end57

if.else:                                          ; preds = %for.end48
  %call56 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then54
  br label %if.end80

if.else58:                                        ; preds = %land.lhs.true, %lor.lhs.false
  %37 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom59 = sext i32 %37 to i64
  %arrayidx60 = getelementptr inbounds [200 x i32], ptr %b, i64 0, i64 %idxprom59
  %38 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  store i32 %38, ptr %j, align 4, !tbaa !5
  br label %for.cond61

for.cond61:                                       ; preds = %for.inc70, %if.else58
  %39 = load i32, ptr %j, align 4, !tbaa !5
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom62 = sext i32 %40 to i64
  %arrayidx63 = getelementptr inbounds [200 x i32], ptr %c, i64 0, i64 %idxprom62
  %41 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %39, %41
  br i1 %cmp64, label %for.body65, label %for.end72

for.body65:                                       ; preds = %for.cond61
  %42 = load i32, ptr %cha, align 4, !tbaa !5
  %43 = load i32, ptr %j, align 4, !tbaa !5
  %sub66 = sub nsw i32 %43, 1
  %idxprom67 = sext i32 %sub66 to i64
  %arrayidx68 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 %idxprom67
  %44 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %add69 = add nsw i32 %42, %44
  store i32 %add69, ptr %cha, align 4, !tbaa !5
  br label %for.inc70

for.inc70:                                        ; preds = %for.body65
  %45 = load i32, ptr %j, align 4, !tbaa !5
  %inc71 = add nsw i32 %45, 1
  store i32 %inc71, ptr %j, align 4, !tbaa !5
  br label %for.cond61, !llvm.loop !13

for.end72:                                        ; preds = %for.cond61
  %46 = load i32, ptr %cha, align 4, !tbaa !5
  %rem73 = srem i32 %46, 7
  %cmp74 = icmp ne i32 %rem73, 0
  br i1 %cmp74, label %if.then75, label %if.else77

if.then75:                                        ; preds = %for.end72
  %call76 = call i32 (ptr, ...) @printf(ptr noundef @.str.2)
  br label %if.end79

if.else77:                                        ; preds = %for.end72
  %call78 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end79

if.end79:                                         ; preds = %if.else77, %if.then75
  br label %if.end80

if.end80:                                         ; preds = %if.end79, %if.end57
  store i32 0, ptr %cha, align 4, !tbaa !5
  br label %for.inc81

for.inc81:                                        ; preds = %if.end80
  %47 = load i32, ptr %i, align 4, !tbaa !5
  %inc82 = add nsw i32 %47, 1
  store i32 %inc82, ptr %i, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !14

for.end83:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %cha) #4
  call void @llvm.lifetime.end.p0(i64 52, ptr %d) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %c) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 800, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %temp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
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
!14 = distinct !{!14, !10, !11}
