; ModuleID = '<stdin>'
source_filename = "/tmp/tmp4b16r1n6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %result = alloca [1000 x i32], align 16
  %n = alloca i32, align 4
  %k = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %result) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %k) #3
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %k)
  br label %for.cond

for.cond:                                         ; preds = %if.end11, %entry
  %index.0 = phi i32 [ 0, %entry ], [ %index.1, %if.end11 ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc13, %if.end11 ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end14

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %n)
  br label %for.cond2

for.cond2:                                        ; preds = %if.end, %for.body
  %j.0 = phi i32 [ 0, %for.body ], [ %inc, %if.end ]
  %cmp3 = icmp slt i32 %j.0, %index.0
  br i1 %cmp3, label %for.body4, label %for.end.thread

for.body4:                                        ; preds = %for.cond2
  %idxprom = sext i32 %j.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %result, i64 0, i64 %idxprom
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = load i32, ptr %n, align 4, !tbaa !5
  %cmp5 = icmp eq i32 %1, %2
  br i1 %cmp5, label %for.end, label %if.end

if.end:                                           ; preds = %for.body4
  %inc = add nsw i32 %j.0, 1
  br label %for.cond2, !llvm.loop !9

for.end:                                          ; preds = %for.body4
  %cmp6 = icmp eq i32 %j.0, %index.0
  br label %if.end11

for.end.thread:                                   ; preds = %for.cond2
  %cmp69 = icmp eq i32 %j.0, %index.0
  br i1 %cmp69, label %if.then7, label %if.end11

if.then7:                                         ; preds = %for.end.thread
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %idxprom8 = sext i32 %index.0 to i64
  %arrayidx9 = getelementptr inbounds [1000 x i32], ptr %result, i64 0, i64 %idxprom8
  store i32 %3, ptr %arrayidx9, align 4, !tbaa !5
  %inc10 = add nsw i32 %index.0, 1
  br label %if.end11

if.end11:                                         ; preds = %for.end, %for.end.thread, %if.then7
  %index.1 = phi i32 [ %inc10, %if.then7 ], [ %index.0, %for.end.thread ], [ %index.0, %for.end ]
  %inc13 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end14:                                        ; preds = %for.cond
  br label %for.cond15

for.cond15:                                       ; preds = %for.body17, %for.end14
  %i.1 = phi i32 [ 0, %for.end14 ], [ %inc22, %for.body17 ]
  %sub = sub nsw i32 %index.0, 1
  %cmp16 = icmp slt i32 %i.1, %sub
  br i1 %cmp16, label %for.body17, label %for.end23

for.body17:                                       ; preds = %for.cond15
  %idxprom18 = sext i32 %i.1 to i64
  %arrayidx19 = getelementptr inbounds [1000 x i32], ptr %result, i64 0, i64 %idxprom18
  %4 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %call20 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %4)
  %inc22 = add nsw i32 %i.1, 1
  br label %for.cond15, !llvm.loop !13

for.end23:                                        ; preds = %for.cond15
  %idxprom25 = sext i32 %sub to i64
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %result, i64 0, i64 %idxprom25
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %k) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %result) #4
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
