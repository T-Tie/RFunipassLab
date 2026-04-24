; ModuleID = '/tmp/tmpk2d9fkjs.cpp'
source_filename = "/tmp/tmpk2d9fkjs.cpp"
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
  %j = alloca i32, align 4
  %m = alloca i32, align 4
  %a = alloca i32, align 4
  %c = alloca i32, align 4
  %b = alloca i32, align 4
  %d = alloca i32, align 4
  %s = alloca [1000 x [1000 x i32]], align 16
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #3
  store i32 0, ptr %a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %c) #3
  store i32 0, ptr %c, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #3
  store i32 0, ptr %b, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %d) #3
  store i32 0, ptr %d, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4000000, ptr %s) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %6 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
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

for.cond10:                                       ; preds = %for.inc31, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %n, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %10, %11
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom16 = sext i32 %12 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom16
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom18 = sext i32 %13 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %14 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %14, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  %15 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %15, ptr %a, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %16, ptr %b, align 4, !tbaa !5
  br label %for.end23

if.end:                                           ; preds = %for.body15
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %17 = load i32, ptr %j, align 4, !tbaa !5
  %inc22 = add nsw i32 %17, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %if.then, %for.cond13
  %18 = load i32, ptr %a, align 4, !tbaa !5
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom24
  %19 = load i32, ptr %b, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [1000 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %20 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %20, 0
  br i1 %cmp28, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.end23
  br label %for.end33

if.end30:                                         ; preds = %for.end23
  br label %for.inc31

for.inc31:                                        ; preds = %if.end30
  %21 = load i32, ptr %i, align 4, !tbaa !5
  %inc32 = add nsw i32 %21, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end33:                                        ; preds = %if.then29, %for.cond10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc53, %for.end33
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %23 = load i32, ptr %n, align 4, !tbaa !5
  %cmp35 = icmp slt i32 %22, %23
  br i1 %cmp35, label %for.body36, label %for.end55

for.body36:                                       ; preds = %for.cond34
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc50, %for.body36
  %24 = load i32, ptr %j, align 4, !tbaa !5
  %25 = load i32, ptr %n, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %24, %25
  br i1 %cmp38, label %for.body39, label %for.end52

for.body39:                                       ; preds = %for.cond37
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom40 = sext i32 %26 to i64
  %arrayidx41 = getelementptr inbounds [1000 x [1000 x i32]], ptr %s, i64 0, i64 %idxprom40
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom42 = sext i32 %27 to i64
  %arrayidx43 = getelementptr inbounds [1000 x i32], ptr %arrayidx41, i64 0, i64 %idxprom42
  %28 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %cmp44 = icmp eq i32 %28, 0
  br i1 %cmp44, label %land.lhs.true, label %if.end49

land.lhs.true:                                    ; preds = %for.body39
  %29 = load i32, ptr %c, align 4, !tbaa !5
  %30 = load i32, ptr %i, align 4, !tbaa !5
  %cmp45 = icmp sle i32 %29, %30
  br i1 %cmp45, label %land.lhs.true46, label %if.end49

land.lhs.true46:                                  ; preds = %land.lhs.true
  %31 = load i32, ptr %d, align 4, !tbaa !5
  %32 = load i32, ptr %j, align 4, !tbaa !5
  %cmp47 = icmp sle i32 %31, %32
  br i1 %cmp47, label %if.then48, label %if.end49

if.then48:                                        ; preds = %land.lhs.true46
  %33 = load i32, ptr %i, align 4, !tbaa !5
  store i32 %33, ptr %c, align 4, !tbaa !5
  %34 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %34, ptr %d, align 4, !tbaa !5
  br label %if.end49

if.end49:                                         ; preds = %if.then48, %land.lhs.true46, %land.lhs.true, %for.body39
  br label %for.inc50

for.inc50:                                        ; preds = %if.end49
  %35 = load i32, ptr %j, align 4, !tbaa !5
  %inc51 = add nsw i32 %35, 1
  store i32 %inc51, ptr %j, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !15

for.end52:                                        ; preds = %for.cond37
  br label %for.inc53

for.inc53:                                        ; preds = %for.end52
  %36 = load i32, ptr %i, align 4, !tbaa !5
  %inc54 = add nsw i32 %36, 1
  store i32 %inc54, ptr %i, align 4, !tbaa !5
  br label %for.cond34, !llvm.loop !16

for.end55:                                        ; preds = %for.cond34
  %37 = load i32, ptr %d, align 4, !tbaa !5
  %38 = load i32, ptr %b, align 4, !tbaa !5
  %sub = sub nsw i32 %37, %38
  %sub56 = sub nsw i32 %sub, 1
  %39 = load i32, ptr %c, align 4, !tbaa !5
  %40 = load i32, ptr %a, align 4, !tbaa !5
  %sub57 = sub nsw i32 %39, %40
  %sub58 = sub nsw i32 %sub57, 1
  %mul = mul nsw i32 %sub56, %sub58
  store i32 %mul, ptr %m, align 4, !tbaa !5
  %41 = load i32, ptr %m, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %41)
  call void @llvm.lifetime.end.p0(i64 4000000, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %d) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
