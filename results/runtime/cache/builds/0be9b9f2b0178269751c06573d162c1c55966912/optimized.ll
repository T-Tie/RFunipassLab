; ModuleID = '<stdin>'
source_filename = "/tmp/tmpygxngq25.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [1000 x i32], align 16
  %b = alloca [1000 x i32], align 16
  %c = alloca [1000 x i32], align 16
  %d = alloca [1000 x i32], align 16
  %e = alloca [1000 x i32], align 16
  %f = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %d) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %e) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %f) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %x.0 = phi i32 [ 0, %entry ], [ %0, %for.inc ]
  %0 = phi i32 [ %inc, %for.inc ], [ 0, %entry ]
  %cmp = icmp slt i32 %0, 10000
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [1000 x i32], ptr %d, i64 0, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %e, i64 0, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [1000 x i32], ptr %f, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %arrayidx10)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %1, 0
  br i1 %cmp13, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %2, 0
  br i1 %cmp16, label %land.lhs.true17, label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %3 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %3, 0
  br i1 %cmp20, label %land.lhs.true21, label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %4, 0
  br i1 %cmp24, label %land.lhs.true25, label %for.inc

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %5 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %5, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %6 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %6, 0
  br i1 %cmp32, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true17, %land.lhs.true21, %land.lhs.true25, %land.lhs.true29
  %inc = add nsw i32 %0, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.lhs.true29, %for.cond
  %x.1 = phi i32 [ %0, %land.lhs.true29 ], [ %x.0, %for.cond ]
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.end
  %i.0 = phi i32 [ 0, %for.end ], [ %inc59, %for.inc58 ]
  %cmp34 = icmp slt i32 %i.0, %x.1
  br i1 %cmp34, label %for.inc58, label %for.end60

for.inc58:                                        ; preds = %for.cond33
  %idxprom36 = sext i32 %i.0 to i64
  %arrayidx37 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom36
  %7 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %sub = sub nsw i32 60, %7
  %arrayidx39 = getelementptr inbounds [1000 x i32], ptr %f, i64 0, i64 %idxprom36
  %8 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %add = add nsw i32 %sub, %8
  %arrayidx41 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom36
  %9 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %sub42 = sub nsw i32 60, %9
  %arrayidx44 = getelementptr inbounds [1000 x i32], ptr %e, i64 0, i64 %idxprom36
  %10 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %add45 = add nsw i32 %sub42, %10
  %sub46 = sub nsw i32 %add45, 1
  %mul = mul nsw i32 60, %sub46
  %add47 = add nsw i32 %add, %mul
  %arrayidx49 = getelementptr inbounds [1000 x i32], ptr %d, i64 0, i64 %idxprom36
  %11 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %add50 = add nsw i32 %11, 12
  %arrayidx52 = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom36
  %12 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %sub53 = sub nsw i32 %add50, %12
  %sub54 = sub nsw i32 %sub53, 1
  %mul55 = mul nsw i32 3600, %sub54
  %add56 = add nsw i32 %add47, %mul55
  %call57 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %add56)
  %inc59 = add nsw i32 %i.0, 1
  br label %for.cond33, !llvm.loop !12

for.end60:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %a) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
