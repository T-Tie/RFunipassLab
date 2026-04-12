; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk7cvy46x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %n = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %x2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %y2) #3
  store i32 0, ptr %x1, align 4, !tbaa !5
  store i32 0, ptr %y1, align 4, !tbaa !5
  store i32 0, ptr %x2, align 4, !tbaa !5
  store i32 0, ptr %y2, align 4, !tbaa !5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
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
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %2 to i64
  %arrayidx5 = getelementptr inbounds [100 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %j, align 4, !tbaa !5
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %0, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc31, %for.end9
  %4 = load i32, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp slt i32 %4, %1
  br i1 %cmp11, label %for.body12, label %for.end33

for.body12:                                       ; preds = %for.cond10
  store i32 0, ptr %j, align 4, !tbaa !5
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %5 = load i32, ptr %j, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %5, %1
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %4 to i64
  %arrayidx17 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %5 to i64
  %arrayidx19 = getelementptr inbounds [100 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %6, 0
  br i1 %cmp20, label %if.then, label %for.inc21

if.then:                                          ; preds = %for.body15
  store i32 %4, ptr %x1, align 4, !tbaa !5
  store i32 %5, ptr %y1, align 4, !tbaa !5
  br label %for.end23

for.inc21:                                        ; preds = %for.body15
  %inc22 = add nsw i32 %5, 1
  store i32 %inc22, ptr %j, align 4, !tbaa !5
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %if.then, %for.cond13
  %7 = load i32, ptr %x1, align 4, !tbaa !5
  %idxprom24 = sext i32 %7 to i64
  %arrayidx25 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom24
  %8 = load i32, ptr %y1, align 4, !tbaa !5
  %idxprom26 = sext i32 %8 to i64
  %arrayidx27 = getelementptr inbounds [100 x i32], ptr %arrayidx25, i64 0, i64 %idxprom26
  %9 = load i32, ptr %arrayidx27, align 4, !tbaa !5, !invariant.load !14
  %cmp28 = icmp eq i32 %9, 0
  br i1 %cmp28, label %for.end33, label %for.inc31

for.inc31:                                        ; preds = %for.end23
  %inc32 = add nsw i32 %4, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !15

for.end33:                                        ; preds = %for.end23, %for.cond10
  %sub = sub nsw i32 %1, 1
  br label %for.cond34

for.cond34:                                       ; preds = %for.inc59, %for.end33
  %sub.sink = phi i32 [ %sub, %for.end33 ], [ %dec60, %for.inc59 ]
  %10 = phi i32 [ %dec60, %for.inc59 ], [ %sub, %for.end33 ]
  store i32 %sub.sink, ptr %i, align 4, !tbaa !5
  %cmp35 = icmp sge i32 %10, 0
  br i1 %cmp35, label %for.body36, label %for.end61

for.body36:                                       ; preds = %for.cond34
  br label %for.cond38

for.cond38:                                       ; preds = %for.inc49, %for.body36
  %sub.sink1 = phi i32 [ %sub, %for.body36 ], [ %dec, %for.inc49 ]
  %11 = phi i32 [ %dec, %for.inc49 ], [ %sub, %for.body36 ]
  store i32 %sub.sink1, ptr %j, align 4, !tbaa !5
  %cmp39 = icmp sge i32 %11, 0
  br i1 %cmp39, label %for.body40, label %for.end50

for.body40:                                       ; preds = %for.cond38
  %12 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom41 = sext i32 %12 to i64
  %arrayidx42 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom41
  %13 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom43 = sext i32 %13 to i64
  %arrayidx44 = getelementptr inbounds [100 x i32], ptr %arrayidx42, i64 0, i64 %idxprom43
  %14 = load i32, ptr %arrayidx44, align 4, !tbaa !5, !invariant.load !14
  %cmp45 = icmp eq i32 %14, 0
  br i1 %cmp45, label %if.then46, label %for.inc49

if.then46:                                        ; preds = %for.body40
  store i32 %12, ptr %x2, align 4, !tbaa !5
  store i32 %13, ptr %y2, align 4, !tbaa !5
  br label %for.end50

for.inc49:                                        ; preds = %for.body40
  %dec = add nsw i32 %13, -1
  br label %for.cond38, !llvm.loop !16

for.end50:                                        ; preds = %if.then46, %for.cond38
  %15 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom51 = sext i32 %15 to i64
  %arrayidx52 = getelementptr inbounds [100 x [100 x i32]], ptr %a, i64 0, i64 %idxprom51
  %16 = load i32, ptr %j, align 4, !tbaa !5
  %idxprom53 = sext i32 %16 to i64
  %arrayidx54 = getelementptr inbounds [100 x i32], ptr %arrayidx52, i64 0, i64 %idxprom53
  %17 = load i32, ptr %arrayidx54, align 4, !tbaa !5, !invariant.load !14
  %cmp55 = icmp eq i32 %17, 0
  br i1 %cmp55, label %for.end61, label %for.inc59

for.inc59:                                        ; preds = %for.end50
  %dec60 = add nsw i32 %15, -1
  br label %for.cond34, !llvm.loop !17

for.end61:                                        ; preds = %for.end50, %for.cond34
  %18 = load i32, ptr %y2, align 4, !tbaa !5
  %19 = load i32, ptr %y1, align 4, !tbaa !5
  %sub62 = sub nsw i32 %18, %19
  %add = add nsw i32 %sub62, 1
  %sub63 = sub nsw i32 %add, 2
  %20 = load i32, ptr %x2, align 4, !tbaa !5
  %21 = load i32, ptr %x1, align 4, !tbaa !5
  %sub64 = sub nsw i32 %20, %21
  %add65 = add nsw i32 %sub64, 1
  %sub66 = sub nsw i32 %add65, 2
  %mul = mul nsw i32 %sub63, %sub66
  %call67 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %y1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %x1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef %a) #4
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
!14 = !{}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
