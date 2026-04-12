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
  %a = alloca [1000 x [1000 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000000, ptr noundef %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc8, %for.inc7 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp sle i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end9

for.body:                                         ; preds = %for.cond
  br label %for.cond1

for.cond1:                                        ; preds = %for.inc, %for.body
  %j.0 = phi i32 [ 1, %for.body ], [ %inc, %for.inc ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %cmp2 = icmp sle i32 %j.0, %1
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom
  %idxprom4 = sext i32 %j.0 to i64
  %arrayidx5 = getelementptr inbounds [1000 x i32], ptr %arrayidx, i64 0, i64 %idxprom4
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx5)
  %inc = add nsw i32 %j.0, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %inc8 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end9:                                         ; preds = %for.cond
  br label %for.cond10

for.cond10:                                       ; preds = %for.inc27, %for.end9
  %i.1 = phi i32 [ 1, %for.end9 ], [ %inc28, %for.inc27 ]
  %cmp11 = icmp sle i32 %i.1, %0
  br i1 %cmp11, label %for.body12, label %for.end29

for.body12:                                       ; preds = %for.cond10
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc21, %for.body12
  %j.1 = phi i32 [ 1, %for.body12 ], [ %inc22, %for.inc21 ]
  %cmp14 = icmp sle i32 %j.1, %0
  br i1 %cmp14, label %for.body15, label %for.end23

for.body15:                                       ; preds = %for.cond13
  %idxprom16 = sext i32 %i.1 to i64
  %arrayidx17 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom16
  %idxprom18 = sext i32 %j.1 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %arrayidx17, i64 0, i64 %idxprom18
  %2 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %for.end29, label %for.inc21

for.inc21:                                        ; preds = %for.body15
  %inc22 = add nsw i32 %j.1, 1
  br label %for.cond13, !llvm.loop !13

for.end23:                                        ; preds = %for.cond13
  br i1 false, label %for.end29, label %for.inc27

for.inc27:                                        ; preds = %for.end23
  %inc28 = add nsw i32 %i.1, 1
  br label %for.cond10, !llvm.loop !14

for.end29:                                        ; preds = %for.body15, %for.end23, %for.cond10
  %x1.1 = phi i32 [ poison, %for.end23 ], [ 0, %for.cond10 ], [ %j.1, %for.body15 ]
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc48, %for.end29
  %i.2 = phi i32 [ %0, %for.end29 ], [ %dec49, %for.inc48 ]
  %x2.0 = phi i32 [ 0, %for.end29 ], [ %x2.2, %for.inc48 ]
  %y2.0 = phi i32 [ undef, %for.end29 ], [ %y2.2, %for.inc48 ]
  %cmp31 = icmp sge i32 %i.2, 1
  br i1 %cmp31, label %for.body32, label %for.end50

for.body32:                                       ; preds = %for.cond30
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc43, %for.body32
  %j.2 = phi i32 [ %0, %for.body32 ], [ %dec, %for.inc43 ]
  %cmp34 = icmp sge i32 %j.2, 1
  br i1 %cmp34, label %for.body35, label %for.end44

for.body35:                                       ; preds = %for.cond33
  %idxprom36 = sext i32 %i.2 to i64
  %arrayidx37 = getelementptr inbounds [1000 x [1000 x i32]], ptr %a, i64 0, i64 %idxprom36
  %idxprom38 = sext i32 %j.2 to i64
  %arrayidx39 = getelementptr inbounds [1000 x i32], ptr %arrayidx37, i64 0, i64 %idxprom38
  %3 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !15
  %cmp40 = icmp eq i32 %3, 0
  br i1 %cmp40, label %for.end44, label %for.inc43

for.inc43:                                        ; preds = %for.body35
  %dec = add nsw i32 %j.2, -1
  br label %for.cond33, !llvm.loop !16

for.end44:                                        ; preds = %for.cond33, %for.body35
  %x2.2 = phi i32 [ %j.2, %for.body35 ], [ %x2.0, %for.cond33 ]
  %y2.2 = phi i32 [ %i.2, %for.body35 ], [ %y2.0, %for.cond33 ]
  %cmp45 = icmp ne i32 %x2.2, 0
  br i1 %cmp45, label %for.end50, label %for.inc48

for.inc48:                                        ; preds = %for.end44
  %dec49 = add nsw i32 %i.2, -1
  br label %for.cond30, !llvm.loop !17

for.end50:                                        ; preds = %for.end44, %for.cond30
  %x2.1 = phi i32 [ %x2.2, %for.end44 ], [ %x2.0, %for.cond30 ]
  %y2.1 = phi i32 [ %y2.2, %for.end44 ], [ %y2.0, %for.cond30 ]
  %sub = sub nsw i32 %x2.1, %x1.1
  %sub51 = sub nsw i32 %sub, 1
  %sub52 = sub nsw i32 %y2.1, %i.1
  %sub53 = sub nsw i32 %sub52, 1
  %mul = mul nsw i32 %sub51, %sub53
  %call54 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %mul) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000000, ptr noundef %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
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
!15 = !{}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
