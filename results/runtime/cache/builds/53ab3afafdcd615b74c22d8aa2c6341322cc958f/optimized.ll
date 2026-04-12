; ModuleID = '<stdin>'
source_filename = "/tmp/tmpopaxk770.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [1000 x i32], align 16
  %a = alloca [1000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %sz) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc48, %for.end
  %i2.0 = phi i32 [ 0, %for.end ], [ %inc49, %for.inc48 ]
  %j.0 = phi i32 [ 0, %for.end ], [ %j.1, %for.inc48 ]
  %cmp4 = icmp slt i32 %i2.0, %0
  br i1 %cmp4, label %for.body6, label %for.end50

for.body6:                                        ; preds = %for.cond3
  %idxprom7 = sext i32 %i2.0 to i64
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %idxprom7
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %rem = srem i32 %1, 2
  %cmp9 = icmp eq i32 %rem, 1
  br i1 %cmp9, label %if.then, label %if.end

if.then:                                          ; preds = %for.body6
  %idxprom12 = sext i32 %j.0 to i64
  %arrayidx13 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom12
  store i32 %1, ptr %arrayidx13, align 4, !tbaa !5
  %inc14 = add nsw i32 %j.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body6
  %j.1 = phi i32 [ %inc14, %if.then ], [ %j.0, %for.body6 ]
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc45, %if.end
  %p.0 = phi i32 [ 0, %if.end ], [ %inc46, %for.inc45 ]
  %cmp16 = icmp slt i32 %p.0, %j.1
  br i1 %cmp16, label %for.body18, label %for.inc48

for.body18:                                       ; preds = %for.cond15
  br label %for.cond20

for.cond20:                                       ; preds = %for.inc42, %for.body18
  %i19.0 = phi i32 [ 0, %for.body18 ], [ %add, %for.inc42 ]
  %sub = sub nsw i32 %j.1, 1
  %sub21 = sub nsw i32 %sub, %p.0
  %cmp22 = icmp slt i32 %i19.0, %sub21
  br i1 %cmp22, label %for.body24, label %for.inc45

for.body24:                                       ; preds = %for.cond20
  %idxprom25 = sext i32 %i19.0 to i64
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom25
  %2 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %add = add nsw i32 %i19.0, 1
  %idxprom27 = sext i32 %add to i64
  %arrayidx28 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom27
  %3 = load i32, ptr %arrayidx28, align 4, !tbaa !5, !invariant.load !12
  %cmp29 = icmp sgt i32 %2, %3
  br i1 %cmp29, label %if.then30, label %for.inc42

if.then30:                                        ; preds = %for.body24
  store i32 %2, ptr %arrayidx28, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.body24, %if.then30
  br label %for.cond20, !llvm.loop !13

for.inc45:                                        ; preds = %for.cond20
  %inc46 = add nsw i32 %p.0, 1
  br label %for.cond15, !llvm.loop !14

for.inc48:                                        ; preds = %for.cond15
  %inc49 = add nsw i32 %i2.0, 1
  br label %for.cond3, !llvm.loop !15

for.end50:                                        ; preds = %for.cond3
  br label %for.cond52

for.cond52:                                       ; preds = %for.inc66, %for.end50
  %i51.0 = phi i32 [ 0, %for.end50 ], [ %inc67, %for.inc66 ]
  %cmp53 = icmp slt i32 %i51.0, %j.0
  br i1 %cmp53, label %for.body55, label %for.end68

for.body55:                                       ; preds = %for.cond52
  %sub56 = sub nsw i32 %j.0, 1
  %cmp57 = icmp slt i32 %i51.0, %sub56
  br i1 %cmp57, label %if.then58, label %if.else

if.then58:                                        ; preds = %for.body55
  %idxprom59 = sext i32 %i51.0 to i64
  %arrayidx60 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom59
  %4 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4, i32 noundef 44)
  br label %for.inc66

if.else:                                          ; preds = %for.body55
  %idxprom62 = sext i32 %i51.0 to i64
  %arrayidx63 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom62
  %5 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %call64 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  br label %for.inc66

for.inc66:                                        ; preds = %if.then58, %if.else
  %inc67 = add nsw i32 %i51.0, 1
  br label %for.cond52, !llvm.loop !16

for.end68:                                        ; preds = %for.cond52
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %a) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %sz) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind willreturn }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
