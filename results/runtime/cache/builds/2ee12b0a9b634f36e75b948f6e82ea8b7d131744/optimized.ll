; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn7jyqmi4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [20 x i32], align 16
  %b = alloca [64 x i32], align 16
  %c = alloca [66 x i32], align 16
  %d = alloca [66 x i32], align 16
  %e = alloca [66 x i32], align 16
  %f = alloca [66 x i32], align 16
  %s = alloca [66 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %e) #5
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %f) #5
  call void @llvm.lifetime.start.p0(i64 264, ptr nonnull %s) #5
  br label %for.cond

for.cond:                                         ; preds = %if.end56, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end56 ], [ 1, %entry ]
  %m.0 = phi i32 [ %11, %if.end56 ], [ undef, %entry ]
  %arrayidx = getelementptr inbounds nuw [20 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [64 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [66 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [66 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [66 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [66 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %land.lhs.true, label %for.cond.if.end_crit_edge

for.cond.if.end_crit_edge:                        ; preds = %for.cond
  %.pre = load i32, ptr %arrayidx4, align 4, !tbaa !5
  br label %if.end

land.lhs.true:                                    ; preds = %for.cond
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp15 = icmp eq i32 %1, 0
  %.pre41 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp19 = icmp eq i32 %.pre41, 0
  %or.cond = select i1 %cmp15, i1 %cmp19, i1 false
  br i1 %or.cond, label %for.cond77.preheader, label %if.end

for.cond77.preheader:                             ; preds = %land.lhs.true
  %smax = call i32 @llvm.smax.i32(i32 %m.0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond77

if.end:                                           ; preds = %for.cond.if.end_crit_edge, %land.lhs.true
  %3 = phi i32 [ %.pre, %for.cond.if.end_crit_edge ], [ %.pre41, %land.lhs.true ]
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add = add nsw i32 %4, 12
  store i32 %add, ptr %arrayidx6, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp28 = icmp slt i32 %5, %3
  %.pre42 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  br i1 %cmp28, label %if.then29, label %if.end39

if.then29:                                        ; preds = %if.end
  %add32 = add nsw i32 %5, 60
  store i32 %add32, ptr %arrayidx10, align 4, !tbaa !5
  %sub = add nsw i32 %.pre42, -1
  store i32 %sub, ptr %arrayidx8, align 4, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.then29, %if.end
  %6 = phi i32 [ %add32, %if.then29 ], [ %5, %if.end ]
  %7 = phi i32 [ %sub, %if.then29 ], [ %.pre42, %if.end ]
  %8 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp44 = icmp slt i32 %7, %8
  br i1 %cmp44, label %if.then45, label %if.end56

if.then45:                                        ; preds = %if.end39
  %add48 = add nsw i32 %7, 60
  store i32 %add48, ptr %arrayidx8, align 4, !tbaa !5
  %sub53 = add nsw i32 %4, 11
  store i32 %sub53, ptr %arrayidx6, align 4, !tbaa !5
  br label %if.end56

if.end56:                                         ; preds = %if.then45, %if.end39
  %9 = phi i32 [ %sub53, %if.then45 ], [ %add, %if.end39 ]
  %10 = phi i32 [ %add48, %if.then45 ], [ %7, %if.end39 ]
  %sub61 = sub i32 %6, %3
  %sub66 = sub nsw i32 %10, %8
  %mul = mul nsw i32 %sub66, 60
  %add67 = add nsw i32 %sub61, %mul
  %sub72 = sub nsw i32 %9, %0
  %mul73 = mul nsw i32 %sub72, 3600
  %add74 = add nsw i32 %add67, %mul73
  %arrayidx76 = getelementptr inbounds nuw [66 x i32], ptr %s, i64 0, i64 %indvars.iv
  store i32 %add74, ptr %arrayidx76, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %11 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.cond, !llvm.loop !9

for.cond77:                                       ; preds = %for.cond77.preheader, %for.body
  %indvars.iv37 = phi i64 [ 1, %for.cond77.preheader ], [ %indvars.iv.next38, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv37, %wide.trip.count
  br i1 %exitcond, label %for.end84, label %for.body

for.body:                                         ; preds = %for.cond77
  %arrayidx80 = getelementptr inbounds nuw [66 x i32], ptr %s, i64 0, i64 %indvars.iv37
  %12 = load i32, ptr %arrayidx80, align 4, !tbaa !5
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %12)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond77, !llvm.loop !12

for.end84:                                        ; preds = %for.cond77
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %s) #5
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %f) #5
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %e) #5
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 264, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
