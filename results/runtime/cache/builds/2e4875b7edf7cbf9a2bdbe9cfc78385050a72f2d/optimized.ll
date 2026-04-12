; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn7jyqmi4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [20 x i32], align 16
  %b = alloca [64 x i32], align 16
  %c = alloca [66 x i32], align 16
  %d = alloca [66 x i32], align 16
  %e = alloca [66 x i32], align 16
  %f = alloca [66 x i32], align 16
  %s = alloca [66 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 80, ptr noundef %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 256, ptr noundef %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 264, ptr noundef %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 264, ptr noundef %d) #3
  call void @llvm.lifetime.start.p0(i64 noundef 264, ptr noundef %e) #3
  call void @llvm.lifetime.start.p0(i64 noundef 264, ptr noundef %f) #3
  call void @llvm.lifetime.start.p0(i64 noundef 264, ptr noundef %s) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %m.0 = phi i32 [ undef, %entry ], [ %i.0, %for.inc ]
  %i.0 = phi i32 [ 1, %entry ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [20 x i32], ptr %a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [64 x i32], ptr %b, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [66 x i32], ptr %c, i64 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [66 x i32], ptr %d, i64 0, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [66 x i32], ptr %e, i64 0, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [66 x i32], ptr %f, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %cmp15 = icmp eq i32 %1, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp19 = icmp eq i32 %2, 0
  br i1 %cmp19, label %for.end, label %if.end

if.end:                                           ; preds = %land.lhs.true16, %land.lhs.true, %for.cond
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %add = add nsw i32 12, %3
  store i32 %add, ptr %arrayidx6, align 4, !tbaa !5
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %5 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp28 = icmp slt i32 %4, %5
  %6 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  br i1 %cmp28, label %if.then29, label %if.end39

if.then29:                                        ; preds = %if.end
  %add32 = add nsw i32 %4, 60
  store i32 %add32, ptr %arrayidx10, align 4, !tbaa !5
  %sub = sub nsw i32 %6, 1
  store i32 %sub, ptr %arrayidx8, align 4, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.end
  %7 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %cmp44 = icmp slt i32 %6, %7
  br i1 %cmp44, label %if.then45, label %for.inc

if.then45:                                        ; preds = %if.end39
  %add48 = add nsw i32 %6, 60
  store i32 %add48, ptr %arrayidx8, align 4, !tbaa !5
  %sub53 = sub nsw i32 %3, 1
  store i32 %sub53, ptr %arrayidx6, align 4, !tbaa !5
  br label %for.inc

for.inc:                                          ; preds = %if.end39, %if.then45
  %sub61 = sub nsw i32 %4, %5
  %sub66 = sub nsw i32 %6, %7
  %mul = mul nsw i32 %sub66, 60
  %add67 = add nsw i32 %sub61, %mul
  %8 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %sub72 = sub nsw i32 %3, %8
  %mul73 = mul nsw i32 %sub72, 3600
  %add74 = add nsw i32 %add67, %mul73
  %arrayidx76 = getelementptr inbounds [66 x i32], ptr %s, i64 0, i64 %idxprom
  store i32 %add74, ptr %arrayidx76, align 4, !tbaa !5
  %inc = add nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.lhs.true16
  br label %for.cond77

for.cond77:                                       ; preds = %for.inc82, %for.end
  %i.1 = phi i32 [ 1, %for.end ], [ %inc83, %for.inc82 ]
  %cmp78 = icmp sle i32 %i.1, %m.0
  br i1 %cmp78, label %for.inc82, label %for.end84

for.inc82:                                        ; preds = %for.cond77
  %idxprom79 = sext i32 %i.1 to i64
  %arrayidx80 = getelementptr inbounds [66 x i32], ptr %s, i64 0, i64 %idxprom79
  %9 = load i32, ptr %arrayidx80, align 4, !tbaa !5, !invariant.load !9
  %call81 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %9)
  %inc83 = add nsw i32 %i.1, 1
  br label %for.cond77, !llvm.loop !13

for.end84:                                        ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 noundef 264, ptr noundef %s) #4
  call void @llvm.lifetime.end.p0(i64 noundef 264, ptr noundef %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 264, ptr noundef %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 264, ptr noundef %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 264, ptr noundef %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 256, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 80, ptr noundef %a) #4
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
