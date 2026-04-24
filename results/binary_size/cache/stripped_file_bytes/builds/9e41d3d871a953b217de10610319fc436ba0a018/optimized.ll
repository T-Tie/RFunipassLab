; ModuleID = '/tmp/tmpmkk0aci4.cpp'
source_filename = "/tmp/tmpmkk0aci4.cpp"
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
  %A = alloca [8 x [8 x i32]], align 16
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %Line = alloca [8 x i32], align 16
  %Row = alloca [8 x i32], align 16
  %t = alloca i32, align 4
  %t24 = alloca i32, align 4
  %f = alloca i32, align 4
  %t50 = alloca i32, align 4
  store i32 0, ptr %retval, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr %A) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.start.p0(i64 32, ptr %Line) #4
  call void @llvm.memset.p0.i64(ptr align 16 %Line, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr %Row) #4
  call void @llvm.memset.p0.i64(ptr align 16 %Row, i8 0, i64 32, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %a, ptr noundef %b)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc18, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %a, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end20

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %t) #4
  store i32 0, ptr %t, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %b, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %4 to i64
  %arrayidx = getelementptr inbounds [8 x [8 x i32]], ptr %A, i64 0, i64 %idxprom
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom4 = sext i32 %5 to i64
  %arrayidx5 = getelementptr inbounds [8 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %6 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom7 = sext i32 %6 to i64
  %arrayidx8 = getelementptr inbounds [8 x [8 x i32]], ptr %A, i64 0, i64 %idxprom7
  %7 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom9 = sext i32 %7 to i64
  %arrayidx10 = getelementptr inbounds [8 x i32], ptr %arrayidx8, i64 0, i64 %idxprom9
  %8 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %9 = load i32, ptr %t, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %8, %9
  br i1 %cmp11, label %if.then, label %if.end

if.then:                                          ; preds = %for.body3
  %10 = load i32, ptr %j, align 4, !tbaa !5
  %11 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom12 = sext i32 %11 to i64
  %arrayidx13 = getelementptr inbounds [8 x i32], ptr %Line, i64 0, i64 %idxprom12
  store i32 %10, ptr %arrayidx13, align 4, !tbaa !5
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds [8 x [8 x i32]], ptr %A, i64 0, i64 %idxprom14
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom16 = sext i32 %13 to i64
  %arrayidx17 = getelementptr inbounds [8 x i32], ptr %arrayidx15, i64 0, i64 %idxprom16
  %14 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  store i32 %14, ptr %t, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %15 = load i32, ptr %j, align 4, !tbaa !5
  %inc = add nsw i32 %15, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  call void @llvm.lifetime.end.p0(i64 4, ptr %t) #4
  br label %for.inc18

for.inc18:                                        ; preds = %for.end
  %16 = load i32, ptr %i, align 4, !tbaa !5
  %inc19 = add nsw i32 %16, 1
  store i32 %inc19, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end20:                                        ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond21

for.cond21:                                       ; preds = %for.inc44, %for.end20
  %17 = load i32, ptr %i, align 4, !tbaa !5
  %18 = load i32, ptr %b, align 4, !tbaa !5
  %cmp22 = icmp slt i32 %17, %18
  br i1 %cmp22, label %for.body23, label %for.end46

for.body23:                                       ; preds = %for.cond21
  call void @llvm.lifetime.start.p0(i64 4, ptr %t24) #4
  store i32 100, ptr %t24, align 4, !tbaa !5
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond25

for.cond25:                                       ; preds = %for.inc41, %for.body23
  %19 = load i32, ptr %j, align 4, !tbaa !5
  %20 = load i32, ptr %a, align 4, !tbaa !5
  %cmp26 = icmp slt i32 %19, %20
  br i1 %cmp26, label %for.body27, label %for.end43

for.body27:                                       ; preds = %for.cond25
  %21 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom28 = sext i32 %21 to i64
  %arrayidx29 = getelementptr inbounds [8 x [8 x i32]], ptr %A, i64 0, i64 %idxprom28
  %22 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom30 = sext i32 %22 to i64
  %arrayidx31 = getelementptr inbounds [8 x i32], ptr %arrayidx29, i64 0, i64 %idxprom30
  %23 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %24 = load i32, ptr %t24, align 4, !tbaa !5
  %cmp32 = icmp slt i32 %23, %24
  br i1 %cmp32, label %if.then33, label %if.end40

if.then33:                                        ; preds = %for.body27
  %25 = load i32, ptr %j, align 4, !tbaa !5
  %26 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom34 = sext i32 %26 to i64
  %arrayidx35 = getelementptr inbounds [8 x i32], ptr %Row, i64 0, i64 %idxprom34
  store i32 %25, ptr %arrayidx35, align 4, !tbaa !5
  %27 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom36 = sext i32 %27 to i64
  %arrayidx37 = getelementptr inbounds [8 x [8 x i32]], ptr %A, i64 0, i64 %idxprom36
  %28 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom38 = sext i32 %28 to i64
  %arrayidx39 = getelementptr inbounds [8 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %29 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  store i32 %29, ptr %t24, align 4, !tbaa !5
  br label %if.end40

if.end40:                                         ; preds = %if.then33, %for.body27
  br label %for.inc41

for.inc41:                                        ; preds = %if.end40
  %30 = load i32, ptr %j, align 4, !tbaa !5
  %inc42 = add nsw i32 %30, 1
  store i32 %inc42, ptr %j, align 4, !tbaa !5
  br label %for.cond25, !llvm.loop !13

for.end43:                                        ; preds = %for.cond25
  call void @llvm.lifetime.end.p0(i64 4, ptr %t24) #4
  br label %for.inc44

for.inc44:                                        ; preds = %for.end43
  %31 = load i32, ptr %i, align 4, !tbaa !5
  %inc45 = add nsw i32 %31, 1
  store i32 %inc45, ptr %i, align 4, !tbaa !5
  br label %for.cond21, !llvm.loop !14

for.end46:                                        ; preds = %for.cond21
  call void @llvm.lifetime.start.p0(i64 4, ptr %f) #4
  store i32 0, ptr %f, align 4, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond47

for.cond47:                                       ; preds = %for.inc62, %for.end46
  %32 = load i32, ptr %i, align 4, !tbaa !5
  %33 = load i32, ptr %a, align 4, !tbaa !5
  %cmp48 = icmp slt i32 %32, %33
  br i1 %cmp48, label %for.body49, label %for.end64

for.body49:                                       ; preds = %for.cond47
  call void @llvm.lifetime.start.p0(i64 4, ptr %t50) #4
  %34 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %34 to i64
  %arrayidx52 = getelementptr inbounds [8 x i32], ptr %Line, i64 0, i64 %idxprom51
  %35 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  store i32 %35, ptr %t50, align 4, !tbaa !5
  %36 = load i32, ptr %t50, align 4, !tbaa !5
  %idxprom53 = sext i32 %36 to i64
  %arrayidx54 = getelementptr inbounds [8 x i32], ptr %Row, i64 0, i64 %idxprom53
  %37 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %38 = load i32, ptr %i, align 4, !tbaa !5
  %cmp55 = icmp eq i32 %37, %38
  br i1 %cmp55, label %if.then56, label %if.end61

if.then56:                                        ; preds = %for.body49
  %39 = load i32, ptr %f, align 4, !tbaa !5
  %inc57 = add nsw i32 %39, 1
  store i32 %inc57, ptr %f, align 4, !tbaa !5
  %40 = load i32, ptr %i, align 4, !tbaa !5
  %41 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom58 = sext i32 %41 to i64
  %arrayidx59 = getelementptr inbounds [8 x i32], ptr %Line, i64 0, i64 %idxprom58
  %42 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %40, i32 noundef %42)
  br label %if.end61

if.end61:                                         ; preds = %if.then56, %for.body49
  call void @llvm.lifetime.end.p0(i64 4, ptr %t50) #4
  br label %for.inc62

for.inc62:                                        ; preds = %if.end61
  %43 = load i32, ptr %i, align 4, !tbaa !5
  %inc63 = add nsw i32 %43, 1
  store i32 %inc63, ptr %i, align 4, !tbaa !5
  br label %for.cond47, !llvm.loop !15

for.end64:                                        ; preds = %for.cond47
  %44 = load i32, ptr %f, align 4, !tbaa !5
  %cmp65 = icmp eq i32 %44, 0
  br i1 %cmp65, label %if.then66, label %if.end68

if.then66:                                        ; preds = %for.end64
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.3)
  br label %if.end68

if.end68:                                         ; preds = %if.then66, %for.end64
  call void @llvm.lifetime.end.p0(i64 4, ptr %f) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr %Row) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr %Line) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %b) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #4
  call void @llvm.lifetime.end.p0(i64 256, ptr %A) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
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
!15 = distinct !{!15, !10, !11}
