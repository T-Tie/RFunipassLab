; ModuleID = '/tmp/tmplgfu3u9j.cpp'
source_filename = "/tmp/tmplgfu3u9j.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca [15 x i32], align 16
  %m = alloca i32, align 4
  %s = alloca i32, align 4
  %h = alloca i32, align 4
  %t = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #3
  call void @llvm.lifetime.start.p0(i64 60, ptr %a) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %m) #3
  store i32 0, ptr %m, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %t)
  br label %while.cond

while.cond:                                       ; preds = %for.end21, %entry
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %add = add nsw i32 %0, 1
  %cmp = icmp ne i32 %add, 0
  br i1 %cmp, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %n, align 4, !tbaa !5
  store i32 0, ptr %s, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.body
  %1 = load i32, ptr %t, align 4, !tbaa !5
  %cmp1 = icmp ne i32 %1, 0
  br i1 %cmp1, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %2 = load i32, ptr %t, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom = sext i32 %3 to i64
  %arrayidx = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %2, ptr %arrayidx, align 4, !tbaa !5
  %4 = load i32, ptr %s, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %s, align 4, !tbaa !5
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %t)
  br label %for.inc

for.inc:                                          ; preds = %for.body
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %inc3 = add nsw i32 %5, 1
  store i32 %inc3, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %n, align 4, !tbaa !5
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc19, %for.end
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = load i32, ptr %s, align 4, !tbaa !5
  %cmp5 = icmp slt i32 %6, %7
  br i1 %cmp5, label %for.body6, label %for.end21

for.body6:                                        ; preds = %for.cond4
  store i32 0, ptr %h, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc16, %for.body6
  %8 = load i32, ptr %h, align 4, !tbaa !5
  %9 = load i32, ptr %s, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %8, %9
  br i1 %cmp8, label %for.body9, label %for.end18

for.body9:                                        ; preds = %for.cond7
  %10 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom10 = sext i32 %10 to i64
  %arrayidx11 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom10
  %11 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %12 = load i32, ptr %h, align 4, !tbaa !5
  %idxprom12 = sext i32 %12 to i64
  %arrayidx13 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom12
  %13 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %mul = mul nsw i32 2, %13
  %cmp14 = icmp eq i32 %11, %mul
  br i1 %cmp14, label %if.then, label %if.end

if.then:                                          ; preds = %for.body9
  %14 = load i32, ptr %m, align 4, !tbaa !5
  %inc15 = add nsw i32 %14, 1
  store i32 %inc15, ptr %m, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body9
  br label %for.inc16

for.inc16:                                        ; preds = %if.end
  %15 = load i32, ptr %h, align 4, !tbaa !5
  %inc17 = add nsw i32 %15, 1
  store i32 %inc17, ptr %h, align 4, !tbaa !5
  br label %for.cond7, !llvm.loop !12

for.end18:                                        ; preds = %for.cond7
  br label %for.inc19

for.inc19:                                        ; preds = %for.end18
  %16 = load i32, ptr %n, align 4, !tbaa !5
  %inc20 = add nsw i32 %16, 1
  store i32 %inc20, ptr %n, align 4, !tbaa !5
  br label %for.cond4, !llvm.loop !13

for.end21:                                        ; preds = %for.cond4
  %17 = load i32, ptr %m, align 4, !tbaa !5
  %call22 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %17)
  store i32 0, ptr %m, align 4, !tbaa !5
  %call23 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.2, ptr noundef %t)
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %h) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %s) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr %m) #3
  call void @llvm.lifetime.end.p0(i64 60, ptr %a) #3
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
