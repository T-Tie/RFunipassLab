; ModuleID = '<stdin>'
source_filename = "/tmp/tmpd87e2_5s.cpp"
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
  %sum = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %d) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %e) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %f) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef align 16 %sum) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [1000 x i32], ptr %a, i64 0, i64 %idxprom
  %arrayidx2 = getelementptr inbounds [1000 x i32], ptr %b, i64 0, i64 %idxprom
  %arrayidx4 = getelementptr inbounds [1000 x i32], ptr %c, i64 0, i64 %idxprom
  %arrayidx6 = getelementptr inbounds [1000 x i32], ptr %d, i64 0, i64 %idxprom
  %arrayidx8 = getelementptr inbounds [1000 x i32], ptr %e, i64 0, i64 %idxprom
  %arrayidx10 = getelementptr inbounds [1000 x i32], ptr %f, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef @.str, ptr noundef %arrayidx, ptr noundef %arrayidx2, ptr noundef %arrayidx4, ptr noundef %arrayidx6, ptr noundef %arrayidx8, ptr noundef %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.cond
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %cmp15 = icmp eq i32 %1, 0
  br i1 %cmp15, label %land.lhs.true16, label %for.inc

land.lhs.true16:                                  ; preds = %land.lhs.true
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp19 = icmp eq i32 %2, 0
  br i1 %cmp19, label %land.lhs.true20, label %for.inc

land.lhs.true20:                                  ; preds = %land.lhs.true16
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %cmp23 = icmp eq i32 %3, 0
  br i1 %cmp23, label %land.lhs.true24, label %for.inc

land.lhs.true24:                                  ; preds = %land.lhs.true20
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %cmp27 = icmp eq i32 %4, 0
  br i1 %cmp27, label %land.lhs.true28, label %for.inc

land.lhs.true28:                                  ; preds = %land.lhs.true24
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %cmp31 = icmp eq i32 %5, 0
  br i1 %cmp31, label %for.end, label %for.inc

for.inc:                                          ; preds = %land.lhs.true28, %land.lhs.true24, %land.lhs.true20, %land.lhs.true16, %land.lhs.true, %for.cond
  %inc = add nsw i32 %i.0, 1
  %6 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %7 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %9 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %10 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %11 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %.neg = sub i32 0, %8
  %neg1 = sub i32 0, %6
  %neg = sub i32 0, %7
  %reass.add = add i32 %10, %neg
  %reass.mul = mul i32 %reass.add, 60
  %reass.add2 = add i32 %9, %neg1
  %reass.mul3 = mul i32 %reass.add2, 3600
  %add48 = add i32 %.neg, 43200
  %add51 = add i32 %add48, %11
  %add52 = add i32 %add51, %reass.mul3
  %sub = add i32 %add52, %reass.mul
  %arrayidx54 = getelementptr inbounds [1000 x i32], ptr %sum, i64 0, i64 %idxprom
  store i32 %sub, ptr %arrayidx54, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.lhs.true28
  br label %for.cond56

for.cond56:                                       ; preds = %for.inc61, %for.end
  %i.1 = phi i32 [ 0, %for.end ], [ %inc62, %for.inc61 ]
  %cmp57 = icmp slt i32 %i.1, %i.0
  br i1 %cmp57, label %for.inc61, label %for.end63

for.inc61:                                        ; preds = %for.cond56
  %idxprom58 = sext i32 %i.1 to i64
  %arrayidx59 = getelementptr inbounds [1000 x i32], ptr %sum, i64 0, i64 %idxprom58
  %12 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %call60 = call i32 (ptr, ...) @printf(ptr noundef @.str.1, i32 noundef %12)
  %inc62 = add nsw i32 %i.1, 1
  br label %for.cond56, !llvm.loop !13

for.end63:                                        ; preds = %for.cond56
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef %sum) #4
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
