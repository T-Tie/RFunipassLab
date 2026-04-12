; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyfupidbx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [999 x i32], align 16
  %b = alloca [999 x i32], align 16
  %c = alloca [999 x i32], align 16
  %d = alloca [999 x i32], align 16
  %e = alloca [999 x i32], align 16
  %f = alloca [999 x i32], align 16
  %g = alloca [999 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 3996, ptr noundef %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 3996, ptr noundef %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 3996, ptr noundef %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 3996, ptr noundef %d) #3
  call void @llvm.lifetime.start.p0(i64 noundef 3996, ptr noundef %e) #3
  call void @llvm.lifetime.start.p0(i64 noundef 3996, ptr noundef %f) #3
  call void @llvm.lifetime.start.p0(i64 noundef 3996, ptr noundef %g) #3
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %m.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc34, %for.inc ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [999 x i32], ptr %a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [999 x i32], ptr %b, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [999 x i32], ptr %c, i64 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [999 x i32], ptr %d, i64 0, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [999 x i32], ptr %e, i64 0, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [999 x i32], ptr %f, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %add = add nsw i32 %1, 12
  %mul = mul nsw i32 %add, 3600
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %mul17 = mul nsw i32 %2, 60
  %add18 = add nsw i32 %mul, %mul17
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %add21 = add nsw i32 %add18, %3
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %mul24 = mul nsw i32 %4, 3600
  %sub = sub nsw i32 %add21, %mul24
  %5 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %mul27 = mul nsw i32 %5, 60
  %sub28 = sub nsw i32 %sub, %mul27
  %6 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %sub31 = sub nsw i32 %sub28, %6
  %arrayidx33 = getelementptr inbounds [999 x i32], ptr %g, i64 0, i64 %idxprom
  store i32 %sub31, ptr %arrayidx33, align 4, !tbaa !5
  %inc = add nsw i32 %m.0, 1
  %inc34 = add nsw i32 %i.0, 1
  br label %for.body, !llvm.loop !10

for.end:                                          ; preds = %for.body
  br label %for.cond35

for.cond35:                                       ; preds = %for.inc41, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc42, %for.inc41 ]
  %cmp36 = icmp sle i32 %i.1, %m.0
  br i1 %cmp36, label %for.inc41, label %for.end43

for.inc41:                                        ; preds = %for.cond35
  %idxprom38 = sext i32 %i.1 to i64
  %arrayidx39 = getelementptr inbounds [999 x i32], ptr %g, i64 0, i64 %idxprom38
  %7 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !9
  %call40 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %7)
  %inc42 = add nsw i32 %i.1, 1
  br label %for.cond35, !llvm.loop !13

for.end43:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 noundef 3996, ptr noundef %g) #4
  call void @llvm.lifetime.end.p0(i64 noundef 3996, ptr noundef %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 3996, ptr noundef %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 3996, ptr noundef %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 3996, ptr noundef %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 3996, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 3996, ptr noundef %a) #4
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
