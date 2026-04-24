; ModuleID = '/tmp/tmpib6jlq58.cpp'
source_filename = "/tmp/tmpib6jlq58.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %sz = alloca [300 x i32], align 16
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %f = alloca i32, align 4
  %flag = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  call void @llvm.lifetime.start.p0(i64 1200, ptr %sz) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %flag) #3
  store i32 0, ptr %flag, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [300 x i32], ptr %sz, i64 0, i64 0
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end15

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %f)
  store i32 0, ptr %k, align 4, !tbaa !5
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %k, align 4, !tbaa !5
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %for.body5, label %for.end

for.body5:                                        ; preds = %for.cond3
  %4 = load i32, ptr %f, align 4, !tbaa !5
  %5 = load i32, ptr %k, align 4, !tbaa !5
  %idxprom = sext i32 %5 to i64
  %arrayidx6 = getelementptr inbounds [300 x i32], ptr %sz, i64 0, i64 %idxprom
  %6 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %4, %6
  br i1 %cmp7, label %if.then, label %if.end

if.then:                                          ; preds = %for.body5
  store i32 1, ptr %flag, align 4, !tbaa !5
  br label %for.end

if.end:                                           ; preds = %for.body5
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %7 = load i32, ptr %k, align 4, !tbaa !5
  %inc = add nsw i32 %7, 1
  store i32 %inc, ptr %k, align 4, !tbaa !5
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %if.then, %for.cond3
  %8 = load i32, ptr %flag, align 4, !tbaa !5
  %tobool = icmp ne i32 %8, 0
  br i1 %tobool, label %if.then8, label %if.else

if.then8:                                         ; preds = %for.end
  %9 = load i32, ptr %i, align 4, !tbaa !5
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %dec9 = add nsw i32 %10, -1
  store i32 %dec9, ptr %n, align 4, !tbaa !5
  br label %if.end12

if.else:                                          ; preds = %for.end
  %11 = load i32, ptr %f, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom10 = sext i32 %12 to i64
  %arrayidx11 = getelementptr inbounds [300 x i32], ptr %sz, i64 0, i64 %idxprom10
  store i32 %11, ptr %arrayidx11, align 4, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  store i32 0, ptr %flag, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %if.end12
  %13 = load i32, ptr %i, align 4, !tbaa !5
  %inc14 = add nsw i32 %13, 1
  store i32 %inc14, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end15:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc32, %for.end15
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %15 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp slt i32 %14, %15
  br i1 %cmp17, label %for.body18, label %for.end34

for.body18:                                       ; preds = %for.cond16
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %17 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %17, 1
  %cmp19 = icmp ne i32 %16, %sub
  br i1 %cmp19, label %if.then20, label %if.end24

if.then20:                                        ; preds = %for.body18
  %18 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom21 = sext i32 %18 to i64
  %arrayidx22 = getelementptr inbounds [300 x i32], ptr %sz, i64 0, i64 %idxprom21
  %19 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %call23 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %19)
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.body18
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %sub25 = sub nsw i32 %21, 1
  %cmp26 = icmp eq i32 %20, %sub25
  br i1 %cmp26, label %if.then27, label %if.end31

if.then27:                                        ; preds = %if.end24
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom28 = sext i32 %22 to i64
  %arrayidx29 = getelementptr inbounds [300 x i32], ptr %sz, i64 0, i64 %idxprom28
  %23 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %23)
  br label %if.end31

if.end31:                                         ; preds = %if.then27, %if.end24
  br label %for.inc32

for.inc32:                                        ; preds = %if.end31
  %24 = load i32, ptr %i, align 4, !tbaa !5
  %inc33 = add nsw i32 %24, 1
  store i32 %inc33, ptr %i, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end34:                                        ; preds = %for.cond16
  call void @llvm.lifetime.end.p0(i64 4, ptr %flag) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.end.p0(i64 1200, ptr %sz) #3
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
