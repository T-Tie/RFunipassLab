; ModuleID = '<stdin>'
source_filename = "/tmp/tmpk9d6x_vx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %m = alloca [25 x i32], align 16
  %i = alloca i32, align 4
  %d = alloca [25 x i32], align 16
  %j = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef %m) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %m, i8 noundef 0, i64 noundef 100, i1 noundef false) #6
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef align 16 %d) #5
  call void @llvm.memset.p0.i64(ptr noundef writeonly align 16 %d, i8 noundef 0, i64 noundef 100, i1 noundef false) #6
  store i32 1, ptr %d, align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %j) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %0, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [25 x i32], ptr %m, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %2 = load i32, ptr %i, align 4, !tbaa !5
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc7, %for.end
  %3 = load i32, ptr %i, align 4, !tbaa !5
  %cmp3 = icmp slt i32 %3, %1
  br i1 %cmp3, label %for.inc7, label %for.end9

for.inc7:                                         ; preds = %for.cond2
  %idxprom5 = sext i32 %3 to i64
  %arrayidx6 = getelementptr inbounds [25 x i32], ptr %d, i64 0, i64 %idxprom5
  store i32 1, ptr %arrayidx6, align 4, !tbaa !5
  %inc8 = add nsw i32 %3, 1
  store i32 %inc8, ptr %i, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !12

for.end9:                                         ; preds = %for.cond2
  %sub = sub nsw i32 %1, 1
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc34, %for.end9
  %sub.sink = phi i32 [ %sub, %for.end9 ], [ %dec, %for.inc34 ]
  store i32 %sub.sink, ptr %i, align 4, !tbaa !5
  %cmp11 = icmp sge i32 %sub.sink, 0
  br i1 %cmp11, label %for.body12, label %for.end35

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc31, %for.body12
  %i.sink = phi ptr [ %i, %for.body12 ], [ %j, %for.inc31 ]
  %4 = load i32, ptr %i.sink, align 4, !tbaa !5
  %add = add nsw i32 %4, 1
  store i32 %add, ptr %j, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %add, %1
  br i1 %cmp14, label %for.body15, label %for.inc34

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %sub.sink to i64
  %arrayidx17 = getelementptr inbounds [25 x i32], ptr %m, i64 0, i64 %idxprom16
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %idxprom18 = sext i32 %add to i64
  %arrayidx19 = getelementptr inbounds [25 x i32], ptr %m, i64 0, i64 %idxprom18
  %6 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sge i32 %5, %6
  br i1 %cmp20, label %land.lhs.true, label %for.inc31

land.lhs.true:                                    ; preds = %for.body15
  %arrayidx22 = getelementptr inbounds [25 x i32], ptr %d, i64 0, i64 %idxprom16
  %7 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %arrayidx24 = getelementptr inbounds [25 x i32], ptr %d, i64 0, i64 %idxprom18
  %8 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp sle i32 %7, %8
  br i1 %cmp25, label %if.then, label %for.inc31

if.then:                                          ; preds = %land.lhs.true
  %add28 = add nsw i32 %8, 1
  store i32 %add28, ptr %arrayidx22, align 4, !tbaa !5
  br label %for.inc31

for.inc31:                                        ; preds = %for.body15, %land.lhs.true, %if.then
  br label %for.cond13, !llvm.loop !13

for.inc34:                                        ; preds = %for.cond13
  %dec = add nsw i32 %sub.sink, -1
  br label %for.cond10, !llvm.loop !14

for.end35:                                        ; preds = %for.cond10
  %9 = load i32, ptr %d, align 16, !tbaa !5
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond37

for.cond37:                                       ; preds = %for.inc47, %for.end35
  %dm.0 = phi i32 [ %9, %for.end35 ], [ %dm.1, %for.inc47 ]
  %10 = load i32, ptr %i, align 4, !tbaa !5
  %cmp38 = icmp slt i32 %10, %1
  br i1 %cmp38, label %for.body39, label %for.end49

for.body39:                                       ; preds = %for.cond37
  %idxprom40 = sext i32 %10 to i64
  %arrayidx41 = getelementptr inbounds [25 x i32], ptr %d, i64 0, i64 %idxprom40
  %11 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp sgt i32 %11, %dm.0
  br i1 %cmp42, label %if.then43, label %for.inc47

if.then43:                                        ; preds = %for.body39
  br label %for.inc47

for.inc47:                                        ; preds = %for.body39, %if.then43
  %dm.1 = phi i32 [ %11, %if.then43 ], [ %dm.0, %for.body39 ]
  %inc48 = add nsw i32 %10, 1
  store i32 %inc48, ptr %i, align 4, !tbaa !5
  br label %for.cond37, !llvm.loop !15

for.end49:                                        ; preds = %for.cond37
  %call50 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %dm.0) #7
  %call51 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %i)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %j) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %d) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef %m) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree }
attributes #7 = { nounwind }

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
