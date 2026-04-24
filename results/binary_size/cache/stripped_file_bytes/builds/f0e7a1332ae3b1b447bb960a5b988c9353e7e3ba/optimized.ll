; ModuleID = '/tmp/tmpw2j5fm38.cpp'
source_filename = "/tmp/tmpw2j5fm38.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %c = alloca i8, align 1
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 1200, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #3
  store i8 44, ptr %c, align 1, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #3
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !8
  %1 = load i32, ptr %n, align 4, !tbaa !8
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom = sext i32 %2 to i64
  %arrayidx = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !8
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc32, %for.end
  %4 = load i32, ptr %i, align 4, !tbaa !8
  %5 = load i32, ptr %n, align 4, !tbaa !8
  %cmp3 = icmp slt i32 %4, %5
  br i1 %cmp3, label %for.body4, label %for.end34

for.body4:                                        ; preds = %for.cond2
  store i32 0, ptr %j, align 4, !tbaa !8
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc15, %for.body4
  %6 = load i32, ptr %j, align 4, !tbaa !8
  %7 = load i32, ptr %i, align 4, !tbaa !8
  %cmp6 = icmp slt i32 %6, %7
  br i1 %cmp6, label %for.body7, label %for.end17

for.body7:                                        ; preds = %for.cond5
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom8 = sext i32 %8 to i64
  %arrayidx9 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom8
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !8
  %10 = load i32, ptr %j, align 4, !tbaa !8
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom10
  %11 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  %cmp12 = icmp eq i32 %9, %11
  br i1 %cmp12, label %if.then, label %if.end

if.then:                                          ; preds = %for.body7
  %12 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom13 = sext i32 %12 to i64
  %arrayidx14 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom13
  store i32 0, ptr %arrayidx14, align 4, !tbaa !8
  br label %for.end17

if.end:                                           ; preds = %for.body7
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %13 = load i32, ptr %j, align 4, !tbaa !8
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, ptr %j, align 4, !tbaa !8
  br label %for.cond5, !llvm.loop !13

for.end17:                                        ; preds = %if.then, %for.cond5
  %14 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom18 = sext i32 %14 to i64
  %arrayidx19 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom18
  %15 = load i32, ptr %arrayidx19, align 4, !tbaa !8
  %cmp20 = icmp ne i32 %15, 0
  br i1 %cmp20, label %if.then21, label %if.end31

if.then21:                                        ; preds = %for.end17
  %16 = load i32, ptr %i, align 4, !tbaa !8
  %cmp22 = icmp eq i32 %16, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then21
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom24
  %18 = load i32, ptr %arrayidx25, align 4, !tbaa !8
  %call26 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %18)
  br label %if.end30

if.else:                                          ; preds = %if.then21
  %19 = load i8, ptr %c, align 1, !tbaa !5
  %conv = sext i8 %19 to i32
  %20 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom27 = sext i32 %20 to i64
  %arrayidx28 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom27
  %21 = load i32, ptr %arrayidx28, align 4, !tbaa !8
  %call29 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %conv, i32 noundef %21)
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then23
  br label %if.end31

if.end31:                                         ; preds = %if.end30, %for.end17
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %22 = load i32, ptr %i, align 4, !tbaa !8
  %inc33 = add nsw i32 %22, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !8
  br label %for.cond2, !llvm.loop !14

for.end34:                                        ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %a) #3
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
