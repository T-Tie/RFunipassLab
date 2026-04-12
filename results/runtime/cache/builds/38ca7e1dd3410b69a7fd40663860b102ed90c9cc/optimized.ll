; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxvngq8in.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %b = alloca [1000 x i32], align 16
  %c = alloca [1000 x i32], align 16
  %d = alloca [1000 x i32], align 16
  %e = alloca [1000 x i32], align 16
  %f = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %i) #4
  store i32 0, ptr %i, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef align 4 %count) #4
  store i32 0, ptr %count, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %c) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %d) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %e) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %f) #4
  br label %while.body

while.body:                                       ; preds = %entry, %if.end
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [1000 x i32], ptr %d, i64 0, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %e, i64 0, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [1000 x i32], ptr %f, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %arrayidx10)
  %1 = load i32, ptr %count, align 4, !tbaa !5
  %inc = add nsw i32 %1, 1
  store i32 %inc, ptr %count, align 4, !tbaa !5
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %while.body
  %3 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %cmp15 = icmp eq i32 %3, 0
  br i1 %cmp15, label %land.lhs.true16, label %if.end

land.lhs.true16:                                  ; preds = %land.lhs.true
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp19 = icmp eq i32 %4, 0
  br i1 %cmp19, label %land.lhs.true20, label %if.end

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %cmp23 = icmp eq i32 %5, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.end

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %6 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %cmp27 = icmp eq i32 %6, 0
  br i1 %cmp27, label %land.lhs.true28, label %if.end

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %cmp31 = icmp eq i32 %7, 0
  br i1 %cmp31, label %while.end, label %if.end

if.end:                                           ; preds = %land.lhs.true28, %land.lhs.true24, %land.lhs.true20, %land.lhs.true16, %land.lhs.true, %while.body
  %inc32 = add nsw i32 %0, 1
  store i32 %inc32, ptr %i, align 4, !tbaa !5
  br label %while.body, !llvm.loop !10

while.end:                                        ; preds = %land.lhs.true28
  store i32 0, ptr %i, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %while.end
  %8 = load i32, ptr %i, align 4, !tbaa !5
  %cmp33 = icmp slt i32 %8, %1
  br i1 %cmp33, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %idxprom34 = sext i32 %8 to i64
  %arrayidx35 = getelementptr inbounds [1000 x i32], ptr %d, i64 0, i64 %idxprom34
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %add = add nsw i32 12, %9
  %arrayidx37 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom34
  %10 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %sub38 = sub nsw i32 %add, %10
  %mul = mul nsw i32 3600, %sub38
  %arrayidx40 = getelementptr inbounds [1000 x i32], ptr %e, i64 0, i64 %idxprom34
  %11 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %arrayidx42 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom34
  %12 = load i32, ptr %arrayidx42, align 4, !tbaa !5
  %sub43 = sub nsw i32 %11, %12
  %mul44 = mul nsw i32 60, %sub43
  %add45 = add nsw i32 %mul, %mul44
  %arrayidx47 = getelementptr inbounds [1000 x i32], ptr %f, i64 0, i64 %idxprom34
  %13 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %arrayidx49 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom34
  %14 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %sub50 = sub nsw i32 %13, %14
  %add51 = add nsw i32 %add45, %sub50
  %call52 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add51) #5
  %inc53 = add nsw i32 %8, 1
  store i32 %inc53, ptr %i, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %f) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %e) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %d) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %c) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %count) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef %i) #5
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
