; ModuleID = '<stdin>'
source_filename = "/tmp/tmp004hqqg8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d%c%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [10 x [10 x i32]], align 16
  %h = alloca i32, align 4
  %d = alloca i32, align 4
  %c = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %h) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 1, ptr noundef %c) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %h, ptr noundef %c, ptr noundef align 4 %d)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %h, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %d, align 4, !tbaa !5
  %cmp2 = icmp slt i32 %j.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [10 x [10 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [10 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str.1, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  %.lcssa = phi i32 [ %0, %for.cond ]
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc57, %for.end9
  %l2.0 = phi i32 [ undef, %for.end9 ], [ %l2.1.lcssa, %for.inc57 ]
  %min.0 = phi i32 [ undef, %for.end9 ], [ %min.1.lcssa, %for.inc57 ]
  %l1.0 = phi i32 [ undef, %for.end9 ], [ %l1.1.lcssa, %for.inc57 ]
  %i.1 = phi i32 [ 0, %for.end9 ], [ %inc58, %for.inc57 ]
  %cmp11 = icmp slt i32 %i.1, %.lcssa
  br i1 %cmp11, label %for.body12, label %if.then61

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc25, %for.body12
  %l1.1 = phi i32 [ %l1.0, %for.body12 ], [ %l1.2, %for.inc25 ]
  %max.0 = phi i32 [ 0, %for.body12 ], [ %max.1, %for.inc25 ]
  %j.1 = phi i32 [ 0, %for.body12 ], [ %inc26, %for.inc25 ]
  %2 = load i32, ptr %d, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %j.1, %2
  br i1 %cmp14, label %for.body15, label %for.end27

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds [10 x [10 x i32]], ptr %a, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %j.1 to i64
  %arrayidx19 = getelementptr inbounds [10 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %3 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %3, %max.0
  br i1 %cmp20, label %if.then, label %for.inc25

if.then:                                          ; preds = %for.body15
  br label %for.inc25

for.inc25:                                        ; preds = %for.body15, %if.then
  %l1.2 = phi i32 [ %j.1, %if.then ], [ %l1.1, %for.body15 ]
  %max.1 = phi i32 [ %3, %if.then ], [ %max.0, %for.body15 ]
  %inc26 = add nsw i32 %j.1, 1
  br label %for.cond13, !llvm.loop !13

for.end27:                                        ; preds = %for.cond13
  %l1.1.lcssa = phi i32 [ %l1.1, %for.cond13 ]
  %max.0.lcssa = phi i32 [ %max.0, %for.cond13 ]
  br label %for.cond28

for.cond28:                                       ; preds = %for.inc50, %for.end27
  %l2.1 = phi i32 [ %l2.0, %for.end27 ], [ %l2.3, %for.inc50 ]
  %min.1 = phi i32 [ %min.0, %for.end27 ], [ %min.3, %for.inc50 ]
  %k.0 = phi i32 [ 0, %for.end27 ], [ %inc51, %for.inc50 ]
  %cmp29 = icmp slt i32 %k.0, %.lcssa
  br i1 %cmp29, label %for.body30, label %for.end52

for.body30:                                       ; preds = %for.cond28
  %cmp31 = icmp eq i32 %k.0, 0
  %idxprom40 = sext i32 %l1.1.lcssa to i64
  br i1 %cmp31, label %if.end37.thread, label %if.end37

if.end37:                                         ; preds = %for.body30
  %idxprom38 = sext i32 %k.0 to i64
  %arrayidx39 = getelementptr inbounds [10 x [10 x i32]], ptr %a, i64 0, i64 %idxprom38
  %arrayidx41 = getelementptr inbounds [10 x i32], ptr %arrayidx39, i64 0, i64 %idxprom40
  %4 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42 = icmp slt i32 %4, %min.1
  br i1 %cmp42, label %if.then44, label %for.inc50

if.end37.thread:                                  ; preds = %for.body30
  %arrayidx36 = getelementptr inbounds [10 x i32], ptr %a, i64 0, i64 %idxprom40
  %5 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  br label %for.inc50

if.then44:                                        ; preds = %if.end37
  br label %for.inc50

for.inc50:                                        ; preds = %if.end37.thread, %if.end37, %if.then44
  %l2.3 = phi i32 [ %k.0, %if.then44 ], [ %l2.1, %if.end37 ], [ 0, %if.end37.thread ]
  %min.3 = phi i32 [ %4, %if.then44 ], [ %min.1, %if.end37 ], [ %5, %if.end37.thread ]
  %inc51 = add nsw i32 %k.0, 1
  br label %for.cond28, !llvm.loop !14

for.end52:                                        ; preds = %for.cond28
  %l2.1.lcssa = phi i32 [ %l2.1, %for.cond28 ]
  %min.1.lcssa = phi i32 [ %min.1, %for.cond28 ]
  %cmp53 = icmp eq i32 %max.0.lcssa, %min.1.lcssa
  br i1 %cmp53, label %for.end59, label %for.inc57

for.inc57:                                        ; preds = %for.end52
  %inc58 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !15

for.end59:                                        ; preds = %for.end52
  %l2.1.lcssa.lcssa = phi i32 [ %l2.1.lcssa, %for.end52 ]
  %l1.1.lcssa.lcssa = phi i32 [ %l1.1.lcssa, %for.end52 ]
  %call55 = call i32 (ptr, ...) @printf(ptr noundef @.str.2, i32 noundef %l2.1.lcssa.lcssa, i32 noundef %l1.1.lcssa.lcssa) #5
  br label %if.end63

if.then61:                                        ; preds = %for.cond10
  %call62 = call i32 (ptr, ...) @printf(ptr noundef @.str.3) #5
  br label %if.end63

if.end63:                                         ; preds = %for.end59, %if.then61
  call void @llvm.lifetime.end.p0(i64 noundef 1, ptr noundef %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %d) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %h) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind willreturn }
attributes #5 = { nounwind }

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
