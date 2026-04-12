; ModuleID = '<stdin>'
source_filename = "/tmp/tmpu7l11tvx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %a = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %0, %1
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %2 = load i32, ptr %j, align 4, !tbaa !5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %2, %3
  br i1 %cmp2, label %for.body3, label %for.end

for.body3:                                        ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  br label %for.inc

for.inc:                                          ; preds = %for.body3
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  br label %for.inc7

for.inc7:                                         ; preds = %for.end
  %inc8 = add nsw i32 %0, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %x1, align 4, !tbaa !5
  store i32 1, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc27, %for.end9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp sle i32 %4, %1
  br i1 %cmp11, label %for.body12, label %for.end29

for.body12:                                       ; preds = %for.cond10
  store i32 1, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp14 = icmp sle i32 %5, %1
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %4 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %5 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %if.then, label %if.end

if.then:                                          ; preds = %for.body15
  store i32 %4, ptr %y1, align 4, !tbaa !5
  store i32 %5, ptr %x1, align 4, !tbaa !5
  br label %for.end23

if.end:                                           ; preds = %for.body15
  br label %for.inc21

for.inc21:                                        ; preds = %if.end
  %inc22 = add nsw i32 %5, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %if.then, %for.cond13
  %7 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %7, 0
  br i1 %cmp24, label %if.then25, label %if.end26

if.then25:                                        ; preds = %for.end23
  br label %for.end29

if.end26:                                         ; preds = %for.end23
  br label %for.inc27

for.inc27:                                        ; preds = %if.end26
  %inc28 = add nsw i32 %4, 1
  store i32 %inc28, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !14

for.end29:                                        ; preds = %if.then25, %for.cond10
  store i32 0, ptr %x2, align 4, !tbaa !5
  store i32 %1, ptr %i, align 4, !tbaa !5
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc48, %for.end29
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp31 = icmp sge i32 %8, 1
  br i1 %cmp31, label %for.body32, label %for.end50

for.body32:                                       ; preds = %for.cond30
  store i32 %1, ptr %j, align 4, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc43, %for.body32
  %9 = load i32, ptr %j, align 4, !tbaa !5
  %cmp34 = icmp sge i32 %9, 1
  br i1 %cmp34, label %for.body35, label %for.end44

for.body35:                                       ; preds = %for.cond33
  %idxprom36 = sext i32 %8 to i64
  %arrayidx37 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom36
  %idxprom38 = sext i32 %9 to i64
  %arrayidx39 = getelementptr inbounds [1000 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %10 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40 = icmp eq i32 %10, 0
  br i1 %cmp40, label %if.then41, label %if.end42

if.then41:                                        ; preds = %for.body35
  store i32 %8, ptr %y2, align 4, !tbaa !5
  store i32 %9, ptr %x2, align 4, !tbaa !5
  br label %for.end44

if.end42:                                         ; preds = %for.body35
  br label %for.inc43

for.inc43:                                        ; preds = %if.end42
  %dec = add nsw i32 %9, -1
  store i32 %dec, ptr %j, align 4, !tbaa !5
  br label %for.cond33, !llvm.loop !15

for.end44:                                        ; preds = %if.then41, %for.cond33
  %11 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp45 = icmp ne i32 %11, 0
  br i1 %cmp45, label %if.then46, label %if.end47

if.then46:                                        ; preds = %for.end44
  br label %for.end50

if.end47:                                         ; preds = %for.end44
  br label %for.inc48

for.inc48:                                        ; preds = %if.end47
  %dec49 = add nsw i32 %8, -1
  store i32 %dec49, ptr %i, align 4, !tbaa !5
  br label %for.cond30, !llvm.loop !16

for.end50:                                        ; preds = %if.then46, %for.cond30
  %12 = load i32, ptr %x2, align 4, !tbaa !5
  %13 = load i32, ptr %x1, align 4, !tbaa !5
  %sub = sub nsw i32 %12, %13
  %sub51 = sub nsw i32 %sub, 1
  %14 = load i32, ptr %y2, align 4, !tbaa !5
  %15 = load i32, ptr %y1, align 4, !tbaa !5
  %sub52 = sub nsw i32 %14, %15
  %sub53 = sub nsw i32 %sub52, 1
  %mul = mul nsw i32 %sub51, %sub53
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!16 = distinct !{!16, !10, !11}
