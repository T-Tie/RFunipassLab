; ModuleID = '/tmp/tmpnuk1qlk2.cpp'
source_filename = "/tmp/tmpnuk1qlk2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@stdin = external global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [15 x i32], align 16
  %i = alloca i32, align 4
  %NO = alloca i32, align 4
  %tmp = alloca i32, align 4
  %n = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %NO) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %tmp) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end29, %entry
  br label %while.body

while.body:                                       ; preds = %while.cond
  store i32 0, ptr %n, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %tmp)
  %0 = load i32, ptr %tmp, align 4, !tbaa !5
  %arrayidx = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 0
  store i32 %0, ptr %arrayidx, align 16, !tbaa !5
  %1 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp = icmp eq i32 %1, -1
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  br label %while.end31

if.end:                                           ; preds = %while.body
  store i32 0, ptr %NO, align 4, !tbaa !5
  br label %while.cond1

while.cond1:                                      ; preds = %if.end6, %if.end
  br label %while.body2

while.body2:                                      ; preds = %while.cond1
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %tmp)
  %2 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %2, 0
  br i1 %cmp4, label %if.then5, label %if.end6

if.then5:                                         ; preds = %while.body2
  br label %while.end

if.end6:                                          ; preds = %while.body2
  %3 = load i32, ptr %tmp, align 4, !tbaa !5
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %inc = add nsw i32 %4, 1
  store i32 %inc, ptr %n, align 4, !tbaa !5
  %idxprom = sext i32 %inc to i64
  %arrayidx7 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom
  store i32 %3, ptr %arrayidx7, align 4, !tbaa !5
  br label %while.cond1, !llvm.loop !9

while.end:                                        ; preds = %if.then5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc27, %while.end
  %5 = load i32, ptr %i, align 4, !tbaa !5
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %cmp8 = icmp slt i32 %5, %6
  br i1 %cmp8, label %for.body, label %for.end29

for.body:                                         ; preds = %for.cond
  %7 = load i32, ptr %i, align 4, !tbaa !5
  %add = add nsw i32 %7, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  br label %for.cond9

for.cond9:                                        ; preds = %for.inc, %for.body
  %8 = load i32, ptr %j, align 4, !tbaa !5
  %9 = load i32, ptr %n, align 4, !tbaa !5
  %cmp10 = icmp sle i32 %8, %9
  br i1 %cmp10, label %for.body11, label %for.end

for.body11:                                       ; preds = %for.cond9
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom12 = sext i32 %10 to i64
  %arrayidx13 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom12
  %11 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom14
  %13 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = mul nsw i32 2, %13
  %cmp16 = icmp eq i32 %11, %mul
  br i1 %cmp16, label %if.then23, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body11
  %14 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom17 = sext i32 %14 to i64
  %arrayidx18 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom17
  %15 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom19 = sext i32 %16 to i64
  %arrayidx20 = getelementptr inbounds [15 x i32], ptr %a, i64 0, i64 %idxprom19
  %17 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %mul21 = mul nsw i32 2, %17
  %cmp22 = icmp eq i32 %15, %mul21
  br i1 %cmp22, label %if.then23, label %if.end25

if.then23:                                        ; preds = %lor.lhs.false, %for.body11
  %18 = load i32, ptr %NO, align 4, !tbaa !5
  %inc24 = add nsw i32 %18, 1
  store i32 %inc24, ptr %NO, align 4, !tbaa !5
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %lor.lhs.false
  br label %for.inc

for.inc:                                          ; preds = %if.end25
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %inc26 = add nsw i32 %19, 1
  store i32 %inc26, ptr %j, align 4, !tbaa !5
  br label %for.cond9, !llvm.loop !12

for.end:                                          ; preds = %for.cond9
  br label %for.inc27

for.inc27:                                        ; preds = %for.end
  %20 = load i32, ptr %i, align 4, !tbaa !5
  %inc28 = add nsw i32 %20, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end29:                                        ; preds = %for.cond
  %21 = load i32, ptr %NO, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %21)
  br label %while.cond, !llvm.loop !14

while.end31:                                      ; preds = %if.then
  %call32 = call i32 @getchar()
  %call33 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %n) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %tmp) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %NO) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr %a) #4
  %22 = load i32, ptr %retval, align 4
  ret i32 %22
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: inlinehint mustprogress uwtable
define available_externally i32 @getchar() #3 {
entry:
  %0 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call = call i32 @getc(ptr noundef %0)
  ret i32 %call
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @getc(ptr noundef) #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
