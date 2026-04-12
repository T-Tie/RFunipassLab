; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_3po7eml.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z4findPiii(ptr noundef %x, i32 noundef %y, i32 noundef %z) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %count.0 = phi i32 [ 0, %entry ], [ %count.1, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc2, %for.inc ]
  %cmp = icmp slt i32 %i.0, %y
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %x, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp1 = icmp eq i32 %0, %z
  br i1 %cmp1, label %if.then, label %for.inc

if.then:                                          ; preds = %for.body
  %inc = add nsw i32 %count.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %count.1 = phi i32 [ %inc, %if.then ], [ %count.0, %for.body ]
  %inc2 = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  ret i32 %count.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef i32 @_Z5countPii(ptr noundef %x, i32 noundef %y) local_unnamed_addr #0 {
entry:
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %count1.0 = phi i32 [ 0, %entry ], [ %add, %for.inc ]
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %cmp = icmp slt i32 %i.0, %y
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds i32, ptr %x, i64 %idxprom
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = mul nsw i32 %0, 2
  %call = call noundef i32 @_Z4findPiii(ptr noundef %x, i32 noundef %y, i32 noundef %mul)
  %add = add nsw i32 %call, %count1.0
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  ret i32 %count1.0
}

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %temp = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr %temp) #4
  br label %while.cond

while.cond:                                       ; preds = %while.end, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %temp)
  %0 = load i32, ptr %temp, align 4, !tbaa !5
  %cmp = icmp ne i32 %0, -1
  br i1 %cmp, label %while.body, label %while.end15

while.body:                                       ; preds = %while.cond
  br label %while.cond3

while.cond3:                                      ; preds = %while.body7, %while.body
  %len.1 = phi i32 [ 0, %while.body ], [ %inc, %while.body7 ]
  %idxprom4 = sext i32 %len.1 to i64
  %arrayidx5 = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 %idxprom4
  %1 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp ne i32 %1, 0
  br i1 %cmp6, label %while.body7, label %while.end

while.body7:                                      ; preds = %while.cond3
  %inc = add nsw i32 %len.1, 1
  %idxprom8 = sext i32 %inc to i64
  %arrayidx9 = getelementptr inbounds [16 x i32], ptr %temp, i64 0, i64 %idxprom8
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx9)
  br label %while.cond3, !llvm.loop !13

while.end:                                        ; preds = %while.cond3
  %call11 = call noundef i32 @_Z5countPii(ptr noundef %temp, i32 noundef %len.1)
  %call12 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %call11)
  br label %while.cond, !llvm.loop !14

while.end15:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 64, ptr %temp) #4
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
