; ModuleID = '<stdin>'
source_filename = "/tmp/tmp172w3t9p.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %year = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  %day = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #6
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %day) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %arrayidx = getelementptr inbounds nuw i8, ptr %day, i64 4
  store i32 31, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %day, i64 12
  store i32 31, ptr %arrayidx1, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %day, i64 20
  store i32 31, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %day, i64 28
  store i32 31, ptr %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %day, i64 32
  store i32 31, ptr %arrayidx4, align 16, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %day, i64 40
  store i32 31, ptr %arrayidx5, align 8, !tbaa !5
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %day, i64 48
  store i32 31, ptr %arrayidx6, align 16, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %day, i64 16
  store i32 30, ptr %arrayidx7, align 16, !tbaa !5
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %day, i64 24
  store i32 30, ptr %arrayidx8, align 8, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %day, i64 36
  store i32 30, ptr %arrayidx9, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %day, i64 44
  store i32 30, ptr %arrayidx10, align 4, !tbaa !5
  %arrayidx14 = getelementptr inbounds nuw i8, ptr %day, i64 8
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 1, %entry ], [ %inc30, %for.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not = icmp sgt i32 %i.0, %0
  br i1 %cmp.not, label %for.end31, label %for.body

for.body:                                         ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %year, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %year, align 4, !tbaa !5
  %call12 = call noundef i32 @_Z3runi(i32 noundef %1)
  %cmp13.not = icmp eq i32 %call12, 0
  %spec.select = select i1 %cmp13.not, i32 28, i32 29
  store i32 %spec.select, ptr %arrayidx14, align 8, !tbaa !5
  %2 = load i32, ptr %m1, align 4, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %2, %3
  br i1 %cmp16, label %if.then17, label %if.end18

if.then17:                                        ; preds = %for.body
  store i32 %3, ptr %m1, align 4, !tbaa !5
  store i32 %2, ptr %m2, align 4, !tbaa !5
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %for.body
  %4 = phi i32 [ %3, %if.then17 ], [ %2, %for.body ]
  %5 = sext i32 %4 to i64
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 %2)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond19

for.cond19:                                       ; preds = %for.body21, %if.end18
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body21 ], [ %5, %if.end18 ]
  %sum.0 = phi i32 [ %add, %for.body21 ], [ 0, %if.end18 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx22 = getelementptr inbounds [13 x i32], ptr %day, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %add = add nsw i32 %6, %sum.0
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond19, !llvm.loop !9

for.end:                                          ; preds = %for.cond19
  %rem = srem i32 %sum.0, 7
  %cmp23 = icmp eq i32 %rem, 0
  %str.1.str = select i1 %cmp23, ptr @str.1, ptr @str
  %puts7 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %inc30 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end31:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %day) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %year) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef range(i32 0, 2) i32 @_Z3runi(i32 noundef %x) local_unnamed_addr #3 {
entry:
  %0 = and i32 %x, 3
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.else, label %return

if.else:                                          ; preds = %entry
  %rem1 = srem i32 %x, 100
  %cmp2.not = icmp eq i32 %rem1, 0
  br i1 %cmp2.not, label %if.else4, label %return

if.else4:                                         ; preds = %if.else
  %rem5 = srem i32 %x, 400
  %cmp6 = icmp eq i32 %rem5, 0
  %. = zext i1 %cmp6 to i32
  br label %return

return:                                           ; preds = %if.else4, %if.else, %entry
  %retval.0 = phi i32 [ 0, %entry ], [ 1, %if.else ], [ %., %if.else4 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
