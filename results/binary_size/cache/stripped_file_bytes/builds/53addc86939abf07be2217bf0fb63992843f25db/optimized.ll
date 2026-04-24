; ModuleID = '/tmp/tmprht8c8ej.cpp'
source_filename = "/tmp/tmprht8c8ej.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %hang = alloca i32, align 4
  %lie = alloca i32, align 4
  %a = alloca [8 x [8 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %h = alloca i32, align 4
  %max = alloca i32, align 4
  %hmax = alloca i32, align 4
  %q = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %hang) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %lie) #3
  call void @llvm.lifetime.start.p0(i64 256, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  store i32 0, ptr %n, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %hmax) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %q) #3
  store i32 0, ptr %q, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %hang, ptr noundef %lie)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %hang, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %lie, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
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

for.cond10:                                       ; preds = %for.inc49, %for.end9
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %9 = load i32, ptr %hang, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %8, %9
  br i1 %cmp11, label %for.body12, label %for.end51

for.body12:                                       ; preds = %for.cond10
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom13 = sext i32 %10 to i64
  %arrayidx14 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom13
  %arrayidx15 = getelementptr inbounds [8 x i32], ptr %arrayidx14, i64 0, i64 0
  %11 = load i32, ptr %arrayidx15, align 16, !tbaa !5
  store i32 %11, ptr %max, align 4, !tbaa !5
  store i32 0, ptr %hmax, align 4, !tbaa !5
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc28, %for.body12
  %12 = load i32, ptr %j, align 4, !tbaa !5
  %13 = load i32, ptr %lie, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %12, %13
  br i1 %cmp17, label %for.body18, label %for.end30

for.body18:                                       ; preds = %for.cond16
  %14 = load i32, ptr %max, align 4, !tbaa !5
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom19 = sext i32 %15 to i64
  %arrayidx20 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom19
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom21 = sext i32 %16 to i64
  %arrayidx22 = getelementptr inbounds [8 x i32], ptr %arrayidx20, i64 0, i64 %idxprom21
  %17 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %cmp23 = icmp slt i32 %14, %17
  br i1 %cmp23, label %if.then, label %if.end

if.then:                                          ; preds = %for.body18
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom24 = sext i32 %18 to i64
  %arrayidx25 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom24
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom26 = sext i32 %19 to i64
  %arrayidx27 = getelementptr inbounds [8 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %20 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  store i32 %20, ptr %max, align 4, !tbaa !5
  %21 = load i32, ptr %j, align 4, !tbaa !5
  store i32 %21, ptr %hmax, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body18
  br label %for.inc28

for.inc28:                                        ; preds = %if.end
  %22 = load i32, ptr %j, align 4, !tbaa !5
  %inc29 = add nsw i32 %22, 1
  store i32 %inc29, ptr %j, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end30:                                        ; preds = %for.cond16
  store i32 0, ptr %h, align 4, !tbaa !5
  br label %for.cond31

for.cond31:                                       ; preds = %for.inc42, %for.end30
  %23 = load i32, ptr %h, align 4, !tbaa !5
  %24 = load i32, ptr %hang, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %23, %24
  br i1 %cmp32, label %for.body33, label %for.end44

for.body33:                                       ; preds = %for.cond31
  %25 = load i32, ptr %max, align 4, !tbaa !5
  %26 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [8 x [8 x i32]], ptr %a, i64 0, i64 %idxprom34
  %27 = load i32, ptr %hmax, align 4, !tbaa !5
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [8 x i32], ptr %arrayidx35, i64 0, i64 %idxprom36
  %28 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %cmp38 = icmp sgt i32 %25, %28
  br i1 %cmp38, label %if.then39, label %if.else

if.then39:                                        ; preds = %for.body33
  br label %for.end44

if.else:                                          ; preds = %for.body33
  %29 = load i32, ptr %n, align 4, !tbaa !5
  %inc40 = add nsw i32 %29, 1
  store i32 %inc40, ptr %n, align 4, !tbaa !5
  br label %if.end41

if.end41:                                         ; preds = %if.else
  br label %for.inc42

for.inc42:                                        ; preds = %if.end41
  %30 = load i32, ptr %h, align 4, !tbaa !5
  %inc43 = add nsw i32 %30, 1
  store i32 %inc43, ptr %h, align 4, !tbaa !5
  br label %for.cond31, !llvm.loop !14

for.end44:                                        ; preds = %if.then39, %for.cond31
  %31 = load i32, ptr %n, align 4, !tbaa !5
  %32 = load i32, ptr %hang, align 4, !tbaa !5
  %cmp45 = icmp eq i32 %31, %32
  br i1 %cmp45, label %if.then46, label %if.end48

if.then46:                                        ; preds = %for.end44
  %33 = load i32, ptr %i, align 4, !tbaa !5
  %34 = load i32, ptr %hmax, align 4, !tbaa !5
  %call47 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %33, i32 noundef %34)
  store i32 1, ptr %q, align 4, !tbaa !5
  br label %for.end51

if.end48:                                         ; preds = %for.end44
  br label %for.inc49

for.inc49:                                        ; preds = %if.end48
  %35 = load i32, ptr %i, align 4, !tbaa !5
  %inc50 = add nsw i32 %35, 1
  store i32 %inc50, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !15

for.end51:                                        ; preds = %if.then46, %for.cond10
  %36 = load i32, ptr %q, align 4, !tbaa !5
  %cmp52 = icmp eq i32 %36, 0
  br i1 %cmp52, label %if.then53, label %if.end55

if.then53:                                        ; preds = %for.end51
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %for.end51
  call void @llvm.lifetime.end.p0(i64 4, ptr %q) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hmax) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %max) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 256, ptr %a) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %lie) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %hang) #3
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
