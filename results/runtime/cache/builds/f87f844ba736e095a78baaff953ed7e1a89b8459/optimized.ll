; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7zhqkfgs.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.days = private unnamed_addr constant [13 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %days = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #6
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %days) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %days, ptr noundef nonnull align 16 dereferenceable(52) @__const.main.days, i64 52, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %days, i64 8
  br label %for.cond

for.cond:                                         ; preds = %for.end20, %entry
  %j.0 = phi i32 [ 0, %entry ], [ %inc29, %for.end20 ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %j.0, %0
  br i1 %cmp, label %for.body, label %for.end30

for.body:                                         ; preds = %for.cond
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %2 = and i32 %1, 3
  %cmp2 = icmp eq i32 %2, 0
  %rem3 = srem i32 %1, 100
  %cmp4.not = icmp ne i32 %rem3, 0
  %or.cond.not11 = and i1 %cmp2, %cmp4.not
  %rem5 = srem i32 %1, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %or.cond10 = or i1 %cmp6, %or.cond.not11
  %spec.select = select i1 %or.cond10, i32 29, i32 28
  store i32 %spec.select, ptr %arrayidx7, align 8, !tbaa !5
  %3 = load i32, ptr %m1, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond8

for.cond8:                                        ; preds = %for.body10, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ 0, %for.body ]
  %d1.0 = phi i32 [ %add, %for.body10 ], [ 1, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond12.preheader, label %for.body10

for.cond12.preheader:                             ; preds = %for.cond8
  %4 = load i32, ptr %m2, align 4, !tbaa !5
  %smax16 = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %wide.trip.count17 = zext nneg i32 %smax16 to i64
  br label %for.cond12

for.body10:                                       ; preds = %for.cond8
  %arrayidx11 = getelementptr inbounds nuw [13 x i32], ptr %days, i64 0, i64 %indvars.iv
  %5 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %5, %d1.0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond8, !llvm.loop !9

for.cond12:                                       ; preds = %for.cond12.preheader, %for.body14
  %indvars.iv13 = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next14, %for.body14 ]
  %d2.0 = phi i32 [ 1, %for.cond12.preheader ], [ %add17, %for.body14 ]
  %exitcond18.not = icmp eq i64 %indvars.iv13, %wide.trip.count17
  br i1 %exitcond18.not, label %for.end20, label %for.body14

for.body14:                                       ; preds = %for.cond12
  %arrayidx16 = getelementptr inbounds nuw [13 x i32], ptr %days, i64 0, i64 %indvars.iv13
  %6 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %add17 = add nsw i32 %6, %d2.0
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond12, !llvm.loop !12

for.end20:                                        ; preds = %for.cond12
  %sub = sub nsw i32 %d2.0, %d1.0
  %rem21 = srem i32 %sub, 7
  %cmp22 = icmp eq i32 %rem21, 0
  %str.1.str = select i1 %cmp22, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %inc29 = add nuw nsw i32 %j.0, 1
  br label %for.cond, !llvm.loop !13

for.end30:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %days) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
