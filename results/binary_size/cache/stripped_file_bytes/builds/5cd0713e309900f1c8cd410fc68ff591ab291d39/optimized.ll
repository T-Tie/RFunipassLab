; ModuleID = '<stdin>'
source_filename = "/tmp/tmp05_gb11e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca [200 x i32], align 16
  %mon1 = alloca [200 x i32], align 16
  %mon2 = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %year) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %mon1) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %mon2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond6

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond, %for.inc84
  %2 = phi i32 [ %.pre, %for.inc84 ], [ %0, %for.cond ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.inc84 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp7 = icmp slt i64 %indvars.iv49, %3
  br i1 %cmp7, label %for.body8, label %for.end86

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [200 x i32], ptr %year, i64 0, i64 %indvars.iv49
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %5 = and i32 %4, 3
  %cmp11 = icmp ne i32 %5, 0
  %rem14 = srem i32 %4, 100
  %cmp15.not = icmp eq i32 %rem14, 0
  %or.cond44 = or i1 %cmp11, %cmp15.not
  br i1 %or.cond44, label %lor.lhs.false, label %if.end

lor.lhs.false:                                    ; preds = %for.body8
  %rem18 = srem i32 %4, 400
  %cmp19 = icmp eq i32 %rem18, 0
  %spec.select = select i1 %cmp19, i32 29, i32 28
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %for.body8
  %f.0 = phi i32 [ 29, %for.body8 ], [ %spec.select, %lor.lhs.false ]
  %arrayidx22 = getelementptr inbounds nuw [200 x i32], ptr %mon1, i64 0, i64 %indvars.iv49
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %6, i32 1)
  br label %for.cond20

for.cond20:                                       ; preds = %for.body24, %if.end
  %j.0 = phi i32 [ 1, %if.end ], [ %inc44, %for.body24 ]
  %t1.0 = phi i32 [ 0, %if.end ], [ %add, %for.body24 ]
  %exitcond.not = icmp eq i32 %j.0, %smax
  br i1 %exitcond.not, label %for.cond46.preheader, label %for.body24

for.cond46.preheader:                             ; preds = %for.cond20
  %arrayidx48 = getelementptr inbounds nuw [200 x i32], ptr %mon2, i64 0, i64 %indvars.iv49
  %7 = load i32, ptr %arrayidx48, align 4, !tbaa !5
  %smax47 = call i32 @llvm.smax.i32(i32 %7, i32 1)
  br label %for.cond46

for.body24:                                       ; preds = %for.cond20
  %8 = and i32 %j.0, 2147483645
  %9 = and i32 %j.0, 2147483641
  %or.cond2 = icmp eq i32 %9, 1
  %10 = icmp eq i32 %8, 8
  %or.cond4 = or i1 %or.cond2, %10
  %cmp38 = icmp eq i32 %j.0, 2
  %f.0. = select i1 %cmp38, i32 %f.0, i32 30
  %day.0 = select i1 %or.cond4, i32 31, i32 %f.0.
  %add = add nuw nsw i32 %day.0, %t1.0
  %inc44 = add nuw i32 %j.0, 1
  br label %for.cond20, !llvm.loop !12

for.cond46:                                       ; preds = %for.cond46.preheader, %for.body50
  %k.0 = phi i32 [ %inc71, %for.body50 ], [ 1, %for.cond46.preheader ]
  %t2.0 = phi i32 [ %add69, %for.body50 ], [ 0, %for.cond46.preheader ]
  %exitcond48.not = icmp eq i32 %k.0, %smax47
  br i1 %exitcond48.not, label %for.end72, label %for.body50

for.body50:                                       ; preds = %for.cond46
  %11 = and i32 %k.0, 2147483645
  %12 = and i32 %k.0, 2147483641
  %or.cond7 = icmp eq i32 %12, 1
  %13 = icmp eq i32 %11, 8
  %or.cond9 = or i1 %or.cond7, %13
  %cmp64 = icmp eq i32 %k.0, 2
  %f.0.45 = select i1 %cmp64, i32 %f.0, i32 30
  %day.1 = select i1 %or.cond9, i32 31, i32 %f.0.45
  %add69 = add nuw nsw i32 %day.1, %t2.0
  %inc71 = add nuw i32 %k.0, 1
  br label %for.cond46, !llvm.loop !13

for.end72:                                        ; preds = %for.cond46
  %sub = sub nsw i32 %t2.0, %t1.0
  %rem73 = srem i32 %sub, 7
  %cmp74 = icmp eq i32 %rem73, 0
  br i1 %cmp74, label %for.inc84, label %lor.lhs.false75

lor.lhs.false75:                                  ; preds = %for.end72
  %sub76 = sub nsw i32 %t1.0, %t2.0
  %rem77 = srem i32 %sub76, 7
  %cmp78 = icmp eq i32 %rem77, 0
  %spec.select52 = select i1 %cmp78, ptr @str.1, ptr @str
  br label %for.inc84

for.inc84:                                        ; preds = %lor.lhs.false75, %for.end72
  %str.1.sink = phi ptr [ @str.1, %for.end72 ], [ %spec.select52, %lor.lhs.false75 ]
  %puts43 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !14

for.end86:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %mon2) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %mon1) #5
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %year) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
