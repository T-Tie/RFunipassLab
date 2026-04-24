; ModuleID = '/tmp/tmpptu1f_6a.cpp'
source_filename = "/tmp/tmpptu1f_6a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %i = alloca i32, align 4
  %k = alloca i32, align 4
  %b = alloca i8, align 1
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 1200, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.start.p0(i64 1, ptr %b) #3
  store i8 44, ptr %b, align 1, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
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
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %3 = load i32, ptr %i, align 4, !tbaa !8
  %inc = add nsw i32 %3, 1
  store i32 %inc, ptr %i, align 4, !tbaa !8
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 0
  %4 = load i32, ptr %arrayidx2, align 16, !tbaa !8
  %call3 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %4)
  store i32 1, ptr %i, align 4, !tbaa !8
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc24, %for.end
  %5 = load i32, ptr %i, align 4, !tbaa !8
  %6 = load i32, ptr %n, align 4, !tbaa !8
  %cmp5 = icmp slt i32 %5, %6
  br i1 %cmp5, label %for.body6, label %for.end26

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %k, align 4, !tbaa !8
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc15, %for.body6
  %7 = load i32, ptr %k, align 4, !tbaa !8
  %8 = load i32, ptr %i, align 4, !tbaa !8
  %cmp8 = icmp slt i32 %7, %8
  br i1 %cmp8, label %for.body9, label %for.end17

for.body9:                                        ; preds = %for.cond7
  %9 = load i32, ptr %k, align 4, !tbaa !8
  %idxprom10 = sext i32 %9 to i64
  %arrayidx11 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !8
  %11 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom12
  %12 = load i32, ptr %arrayidx13, align 4, !tbaa !8
  %cmp14 = icmp eq i32 %10, %12
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  br label %for.end17

if.end:                                           ; preds = %for.body9
  br label %for.inc15

for.inc15:                                        ; preds = %if.end
  %13 = load i32, ptr %k, align 4, !tbaa !8
  %inc16 = add nsw i32 %13, 1
  store i32 %inc16, ptr %k, align 4, !tbaa !8
  br label %for.cond7, !llvm.loop !13

for.end17:                                        ; preds = %if.then, %for.cond7
  %14 = load i32, ptr %k, align 4, !tbaa !8
  %15 = load i32, ptr %i, align 4, !tbaa !8
  %cmp18 = icmp eq i32 %14, %15
  br i1 %cmp18, label %if.then19, label %if.end23

if.then19:                                        ; preds = %for.end17
  %16 = load i8, ptr %b, align 1, !tbaa !5
  %conv = sext i8 %16 to i32
  %17 = load i32, ptr %i, align 4, !tbaa !8
  %idxprom20 = sext i32 %17 to i64
  %arrayidx21 = getelementptr inbounds [300 x i32], ptr %a, i64 0, i64 %idxprom20
  %18 = load i32, ptr %arrayidx21, align 4, !tbaa !8
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %conv, i32 noundef %18)
  br label %if.end23

if.end23:                                         ; preds = %if.then19, %for.end17
  br label %for.inc24

for.inc24:                                        ; preds = %if.end23
  %19 = load i32, ptr %i, align 4, !tbaa !8
  %inc25 = add nsw i32 %19, 1
  store i32 %inc25, ptr %i, align 4, !tbaa !8
  br label %for.cond4, !llvm.loop !14

for.end26:                                        ; preds = %for.cond4
  call void @llvm.lifetime.end.p0(i64 1, ptr %b) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %k) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #3
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
