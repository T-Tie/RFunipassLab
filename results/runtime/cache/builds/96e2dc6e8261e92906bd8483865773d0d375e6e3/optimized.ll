; ModuleID = '<stdin>'
source_filename = "/tmp/tmpcar23dry.cpp"
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
  %a = alloca [13 x i32], align 16
  %n = alloca i32, align 4
  %y = alloca i32, align 4
  %m1 = alloca i32, align 4
  %m2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %a) #5
  %arrayidx = getelementptr inbounds nuw i8, ptr %a, i64 48
  store i32 31, ptr %arrayidx, align 16, !tbaa !5
  %arrayidx1 = getelementptr inbounds nuw i8, ptr %a, i64 40
  store i32 31, ptr %arrayidx1, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %a, i64 32
  store i32 31, ptr %arrayidx2, align 16, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %a, i64 28
  store i32 31, ptr %arrayidx3, align 4, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %a, i64 20
  store i32 31, ptr %arrayidx4, align 4, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %a, i64 12
  store i32 31, ptr %arrayidx5, align 4, !tbaa !5
  %arrayidx6 = getelementptr inbounds nuw i8, ptr %a, i64 4
  store i32 31, ptr %arrayidx6, align 4, !tbaa !5
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %arrayidx8 = getelementptr inbounds nuw i8, ptr %a, i64 44
  store i32 30, ptr %arrayidx8, align 4, !tbaa !5
  %arrayidx9 = getelementptr inbounds nuw i8, ptr %a, i64 36
  store i32 30, ptr %arrayidx9, align 4, !tbaa !5
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %a, i64 24
  store i32 30, ptr %arrayidx10, align 8, !tbaa !5
  %arrayidx11 = getelementptr inbounds nuw i8, ptr %a, i64 16
  store i32 30, ptr %arrayidx11, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %y) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc35, %for.end ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0, %0
  br i1 %cmp, label %for.body, label %for.end36

for.body:                                         ; preds = %for.cond
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %y, ptr noundef nonnull %m1, ptr noundef nonnull %m2)
  %1 = load i32, ptr %y, align 4, !tbaa !5
  %rem = srem i32 %1, 400
  %cmp13 = icmp eq i32 %rem, 0
  br i1 %cmp13, label %if.end, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %for.body
  %2 = and i32 %1, 3
  %cmp15 = icmp ne i32 %2, 0
  %rem16 = srem i32 %1, 100
  %cmp17.not = icmp eq i32 %rem16, 0
  %or.cond = or i1 %cmp15, %cmp17.not
  %spec.select = select i1 %or.cond, i32 28, i32 29
  br label %if.end

if.end:                                           ; preds = %lor.lhs.false, %for.body
  %storemerge = phi i32 [ 29, %for.body ], [ %spec.select, %lor.lhs.false ]
  store i32 %storemerge, ptr %arrayidx7, align 8, !tbaa !5
  %3 = load i32, ptr %m2, align 4, !tbaa !5
  %4 = load i32, ptr %m1, align 4, !tbaa !5
  %cmp20 = icmp slt i32 %3, %4
  br i1 %cmp20, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end
  store i32 %4, ptr %m2, align 4, !tbaa !5
  store i32 %3, ptr %m1, align 4, !tbaa !5
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end
  %5 = phi i32 [ %3, %if.then21 ], [ %4, %if.end ]
  %6 = sext i32 %5 to i64
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 %4)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond23

for.cond23:                                       ; preds = %for.body25, %if.end22
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body25 ], [ %6, %if.end22 ]
  %k.0 = phi i32 [ %add, %for.body25 ], [ 0, %if.end22 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body25

for.body25:                                       ; preds = %for.cond23
  %arrayidx26 = getelementptr inbounds [13 x i32], ptr %a, i64 0, i64 %indvars.iv
  %7 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %add = add nsw i32 %7, %k.0
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  br label %for.cond23, !llvm.loop !9

for.end:                                          ; preds = %for.cond23
  %rem27 = srem i32 %k.0, 7
  %cmp28 = icmp eq i32 %rem27, 0
  %str.1.str = select i1 %cmp28, ptr @str.1, ptr @str
  %puts6 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %inc35 = add nuw nsw i32 %i.0, 1
  br label %for.cond, !llvm.loop !12

for.end36:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m2) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m1) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %a) #5
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
