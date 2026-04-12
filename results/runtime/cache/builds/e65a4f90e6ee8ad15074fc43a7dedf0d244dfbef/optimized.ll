; ModuleID = '<stdin>'
source_filename = "/tmp/tmpebnmh873.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.z = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [50 x %struct.z], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef %a) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %k)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [50 x %struct.z], ptr %a, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %0, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %2, %1
  br i1 %cmp3, label %for.inc7, label %for.end9

for.inc7:                                         ; preds = %for.cond2
  %idxprom5 = sext i32 %2 to i64
  %arrayidx6 = getelementptr inbounds [50 x %struct.z], ptr %a, i64 0, i64 %idxprom5
  %h = getelementptr inbounds nuw %struct.z, ptr %arrayidx6, i32 0, i32 1
  store i32 1, ptr %h, align 4, !tbaa !12
  %inc8 = add nsw i32 %2, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !14

for.end9:                                         ; preds = %for.cond2
  %sub = sub nsw i32 %1, 2
  store i32 %sub, ptr %i, align 4, !tbaa !5
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc43, %for.end9
  %3 = phi i32 [ %dec, %for.inc43 ], [ %sub, %for.end9 ]
  %cmp11 = icmp sge i32 %3, 0
  br i1 %cmp11, label %for.body12, label %for.end44

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc40, %for.body12
  %i.sink1 = phi ptr [ %i, %for.body12 ], [ %j, %for.inc40 ]
  %4 = load i32, ptr %i.sink1, align 4, !tbaa !5
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %add, %1
  %5 = load i32, ptr %i, align 4, !tbaa !5
  br i1 %cmp14, label %for.body15, label %for.inc43

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %5 to i64
  %arrayidx17 = getelementptr inbounds [50 x %struct.z], ptr %a, i64 0, i64 %idxprom16
  %6 = load i32, ptr %arrayidx17, align 8, !tbaa !15, !invariant.load !16
  %idxprom19 = sext i32 %add to i64
  %arrayidx20 = getelementptr inbounds [50 x %struct.z], ptr %a, i64 0, i64 %idxprom19
  %7 = load i32, ptr %arrayidx20, align 8, !tbaa !15, !invariant.load !16
  %cmp22 = icmp sge i32 %6, %7
  br i1 %cmp22, label %if.then, label %for.inc40

if.then:                                          ; preds = %for.body15
  %h25 = getelementptr inbounds nuw %struct.z, ptr %arrayidx17, i32 0, i32 1
  %8 = load i32, ptr %h25, align 4, !tbaa !12, !invariant.load !16
  %h28 = getelementptr inbounds nuw %struct.z, ptr %arrayidx20, i32 0, i32 1
  %9 = load i32, ptr %h28, align 4, !tbaa !12, !invariant.load !16
  %add29 = add nsw i32 %9, 1
  %cmp30 = icmp slt i32 %8, %add29
  br i1 %cmp30, label %if.then31, label %for.inc40

if.then31:                                        ; preds = %if.then
  store i32 %add29, ptr %h25, align 4, !tbaa !12
  br label %for.inc40

for.inc40:                                        ; preds = %for.body15, %if.then31, %if.then
  br label %for.cond13, !llvm.loop !17

for.inc43:                                        ; preds = %for.cond13
  %dec = add nsw i32 %5, -1
  store i32 %dec, ptr %i, align 4, !tbaa !5
  br label %for.cond10, !llvm.loop !18

for.end44:                                        ; preds = %for.cond10
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond45

for.cond45:                                       ; preds = %for.inc77, %for.end44
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %sub46 = sub nsw i32 %1, 1
  %cmp47 = icmp slt i32 %10, %sub46
  br i1 %cmp47, label %for.body48, label %for.end79

for.body48:                                       ; preds = %for.cond45
  br label %for.cond50

for.cond50:                                       ; preds = %for.inc74, %for.body48
  %i.sink = phi ptr [ %i, %for.body48 ], [ %j, %for.inc74 ]
  %11 = load i32, ptr %i.sink, align 4, !tbaa !5
  %add49 = add nsw i32 %11, 1
  store i32 %add49, ptr %j, align 4, !tbaa !5
  %cmp51 = icmp slt i32 %add49, %1
  br i1 %cmp51, label %for.body52, label %for.inc77

for.body52:                                       ; preds = %for.cond50
  %idxprom53 = sext i32 %10 to i64
  %arrayidx54 = getelementptr inbounds [50 x %struct.z], ptr %a, i64 0, i64 %idxprom53
  %h55 = getelementptr inbounds nuw %struct.z, ptr %arrayidx54, i32 0, i32 1
  %12 = load i32, ptr %h55, align 4, !tbaa !12, !invariant.load !16
  %idxprom56 = sext i32 %add49 to i64
  %arrayidx57 = getelementptr inbounds [50 x %struct.z], ptr %a, i64 0, i64 %idxprom56
  %h58 = getelementptr inbounds nuw %struct.z, ptr %arrayidx57, i32 0, i32 1
  %13 = load i32, ptr %h58, align 4, !tbaa !12, !invariant.load !16
  %cmp59 = icmp slt i32 %12, %13
  br i1 %cmp59, label %if.then60, label %for.inc74

if.then60:                                        ; preds = %for.body52
  store i32 %13, ptr %h55, align 4, !tbaa !12
  store i32 %12, ptr %h58, align 4, !tbaa !12
  br label %for.inc74

for.inc74:                                        ; preds = %for.body52, %if.then60
  br label %for.cond50, !llvm.loop !19

for.inc77:                                        ; preds = %for.cond50
  %inc78 = add nsw i32 %10, 1
  store i32 %inc78, ptr %i, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !20

for.end79:                                        ; preds = %for.cond45
  %h81 = getelementptr inbounds nuw %struct.z, ptr %a, i32 0, i32 1
  %14 = load i32, ptr %h81, align 4, !tbaa !12
  %call82 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %14)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
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
!12 = !{!13, !6, i64 4}
!13 = !{!"_ZTS1z", !6, i64 0, !6, i64 4}
!14 = distinct !{!14, !10, !11}
!15 = !{!13, !6, i64 0}
!16 = !{}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !10, !11}
!20 = distinct !{!20, !10, !11}
