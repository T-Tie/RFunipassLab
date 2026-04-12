; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbjdaycg7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef align 4 %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %3
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %vla, i64 %idxprom
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx)
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  br label %while.cond

while.cond:                                       ; preds = %for.end15, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %add, %for.end15 ]
  %cmp2 = icmp slt i32 %i.1, %3
  br i1 %cmp2, label %while.body, label %while.end

while.body:                                       ; preds = %while.cond
  %add = add nsw i32 %i.1, 1
  br label %for.cond3

for.cond3:                                        ; preds = %for.inc13, %while.body
  %j.0 = phi i32 [ %add, %while.body ], [ %inc14, %for.inc13 ]
  %cmp4 = icmp slt i32 %j.0, %3
  br i1 %cmp4, label %for.body5, label %for.end15

for.body5:                                        ; preds = %for.cond3
  %idxprom6 = sext i32 %i.1 to i64
  %arrayidx7 = getelementptr inbounds i32, ptr %vla, i64 %idxprom6
  %4 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %idxprom8 = sext i32 %j.0 to i64
  %arrayidx9 = getelementptr inbounds i32, ptr %vla, i64 %idxprom8
  %5 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %cmp10 = icmp eq i32 %4, %5
  br i1 %cmp10, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body5
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body5, %if.then
  %inc14 = add nsw i32 %j.0, 1
  br label %for.cond3, !llvm.loop !12

for.end15:                                        ; preds = %for.cond3
  br label %while.cond, !llvm.loop !13

while.end:                                        ; preds = %while.cond
  %6 = load i32, ptr %vla, align 16, !tbaa !5
  %call18 = call i32 (ptr, ...) @printf(ptr noundef @.str, i32 noundef %6)
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc30, %while.end
  %i.2 = phi i32 [ 1, %while.end ], [ %inc31, %for.inc30 ]
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %i.2, %7
  br i1 %cmp20, label %for.body21, label %for.end32

for.body21:                                       ; preds = %for.cond19
  %idxprom22 = sext i32 %i.2 to i64
  %arrayidx23 = getelementptr inbounds i32, ptr %vla, i64 %idxprom22
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %cmp24 = icmp ne i32 %8, 0
  br i1 %cmp24, label %if.then25, label %for.inc30

if.then25:                                        ; preds = %for.body21
  %call28 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %8)
  br label %for.inc30

for.inc30:                                        ; preds = %for.body21, %if.then25
  %inc31 = add nsw i32 %i.2, 1
  br label %for.cond19, !llvm.loop !14

for.end32:                                        ; preds = %for.cond19
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind }
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
