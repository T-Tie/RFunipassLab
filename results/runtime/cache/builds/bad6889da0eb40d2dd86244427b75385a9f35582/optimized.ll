; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbgznkoz_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@__const.main.month = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 29, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@__const.main.month.4 = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.3 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca [1000 x i32], align 16
  %m1 = alloca [1000 x i32], align 16
  %m2 = alloca [1000 x i32], align 16
  %sum1 = alloca [1000 x i32], align 16
  %sum2 = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %y) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %m1) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %m2) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %sum1) #4
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %sum2) #4
  store i32 0, ptr %sum1, align 16, !tbaa !5
  store i32 0, ptr %sum2, align 16, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc76, %entry
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc76 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv30, %1
  br i1 %cmp, label %for.body, label %for.end78

for.body:                                         ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr %y, i64 0, i64 %indvars.iv30
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %m1, i64 0, i64 %indvars.iv30
  %arrayidx6 = getelementptr inbounds nuw [1000 x i32], ptr %m2, i64 0, i64 %indvars.iv30
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6)
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %3 = and i32 %2, 3
  %cmp10 = icmp eq i32 %3, 0
  %rem13 = srem i32 %2, 100
  %cmp14.not = icmp ne i32 %rem13, 0
  %or.cond.not24 = and i1 %cmp10, %cmp14.not
  %rem17 = srem i32 %2, 400
  %cmp18 = icmp eq i32 %rem17, 0
  %or.cond23 = or i1 %cmp18, %or.cond.not24
  br i1 %or.cond23, label %for.cond20, label %for.cond45

for.cond20:                                       ; preds = %for.body, %for.body22
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.body22 ], [ 0, %for.body ]
  %exitcond29.not = icmp eq i64 %indvars.iv26, 13
  br i1 %exitcond29.not, label %for.end, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %arrayidx24 = getelementptr inbounds nuw [1000 x i32], ptr %sum1, i64 0, i64 %indvars.iv26
  %4 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %arrayidx26 = getelementptr inbounds nuw [13 x i32], ptr @__const.main.month, i64 0, i64 %indvars.iv26
  %5 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %add = add nsw i32 %5, %4
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  %arrayidx29 = getelementptr inbounds nuw [1000 x i32], ptr %sum1, i64 0, i64 %indvars.iv.next27
  store i32 %add, ptr %arrayidx29, align 4, !tbaa !5
  br label %for.cond20, !llvm.loop !9

for.end:                                          ; preds = %for.cond20
  %6 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %idxprom32 = sext i32 %6 to i64
  %arrayidx33 = getelementptr inbounds [1000 x i32], ptr %sum1, i64 0, i64 %idxprom32
  %7 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %8 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %idxprom36 = sext i32 %8 to i64
  %arrayidx37 = getelementptr inbounds [1000 x i32], ptr %sum1, i64 0, i64 %idxprom36
  %9 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %sub = sub nsw i32 %7, %9
  %rem38 = srem i32 %sub, 7
  %cmp39 = icmp eq i32 %rem38, 0
  %str.3.str.2 = select i1 %cmp39, ptr @str.3, ptr @str.2
  br label %for.inc76

for.cond45:                                       ; preds = %for.body, %for.body47
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body47 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, 13
  br i1 %exitcond.not, label %for.end58, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [1000 x i32], ptr %sum2, i64 0, i64 %indvars.iv
  %10 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %arrayidx51 = getelementptr inbounds nuw [13 x i32], ptr @__const.main.month.4, i64 0, i64 %indvars.iv
  %11 = load i32, ptr %arrayidx51, align 4, !tbaa !5
  %add52 = add nsw i32 %11, %10
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx55 = getelementptr inbounds nuw [1000 x i32], ptr %sum2, i64 0, i64 %indvars.iv.next
  store i32 %add52, ptr %arrayidx55, align 4, !tbaa !5
  br label %for.cond45, !llvm.loop !12

for.end58:                                        ; preds = %for.cond45
  %12 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %idxprom61 = sext i32 %12 to i64
  %arrayidx62 = getelementptr inbounds [1000 x i32], ptr %sum2, i64 0, i64 %idxprom61
  %13 = load i32, ptr %arrayidx62, align 4, !tbaa !5
  %14 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %idxprom65 = sext i32 %14 to i64
  %arrayidx66 = getelementptr inbounds [1000 x i32], ptr %sum2, i64 0, i64 %idxprom65
  %15 = load i32, ptr %arrayidx66, align 4, !tbaa !5
  %sub67 = sub nsw i32 %13, %15
  %rem68 = srem i32 %sub67, 7
  %cmp69 = icmp eq i32 %rem68, 0
  %str.1.str = select i1 %cmp69, ptr @str.3, ptr @str.2
  br label %for.inc76

for.inc76:                                        ; preds = %for.end58, %for.end
  %str.1.sink = phi ptr [ %str.3.str.2, %for.end ], [ %str.1.str, %for.end58 ]
  %puts20 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond, !llvm.loop !13

for.end78:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %sum2) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %sum1) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %m2) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %m1) #4
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %y) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
