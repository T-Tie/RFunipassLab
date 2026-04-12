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
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %a) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %b) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %c) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %d) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %e) #3
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %f) #3
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %x.0 = phi i64 [ %indvars.iv, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 10000
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [1000 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [1000 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [1000 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %cmp13 = icmp eq i32 %0, 0
  br i1 %cmp13, label %land.lhs.true, label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %land.lhs.true17, label %for.inc

land.lhs.true17:                                  ; preds = %land.lhs.true
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %cmp20 = icmp eq i32 %2, 0
  br i1 %cmp20, label %land.lhs.true21, label %for.inc

land.lhs.true21:                                  ; preds = %land.lhs.true17
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %cmp24 = icmp eq i32 %3, 0
  br i1 %cmp24, label %land.lhs.true25, label %for.inc

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !9
  %cmp28 = icmp eq i32 %4, 0
  br i1 %cmp28, label %land.lhs.true29, label %for.inc

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %5, 0
  br i1 %cmp32, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body, %land.lhs.true, %land.lhs.true17, %land.lhs.true21, %land.lhs.true25, %land.lhs.true29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.end:                                          ; preds = %land.lhs.true29, %for.cond
  %x.1 = phi i64 [ %x.0, %for.cond ], [ %indvars.iv, %land.lhs.true29 ]
  %wide.trip.count = and i64 %x.1, 4294967295
  br label %for.cond33

for.cond33:                                       ; preds = %for.inc58, %for.end
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc58 ], [ 0, %for.end ]
  %exitcond32.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond32.not, label %for.end60, label %for.inc58

for.inc58:                                        ; preds = %for.cond33
  %arrayidx37 = getelementptr inbounds nuw [1000 x i32], ptr %c, i64 0, i64 %indvars.iv29
  %6 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !9
  %arrayidx39 = getelementptr inbounds nuw [1000 x i32], ptr %f, i64 0, i64 %indvars.iv29
  %7 = load i32, ptr %arrayidx39, align 4, !tbaa !5, !invariant.load !9
  %arrayidx41 = getelementptr inbounds nuw [1000 x i32], ptr %b, i64 0, i64 %indvars.iv29
  %8 = load i32, ptr %arrayidx41, align 4, !tbaa !5, !invariant.load !9
  %arrayidx44 = getelementptr inbounds nuw [1000 x i32], ptr %e, i64 0, i64 %indvars.iv29
  %9 = load i32, ptr %arrayidx44, align 4, !tbaa !5, !invariant.load !9
  %reass.sub26 = sub i32 %9, %8
  %10 = mul i32 %reass.sub26, 60
  %arrayidx49 = getelementptr inbounds nuw [1000 x i32], ptr %d, i64 0, i64 %indvars.iv29
  %11 = load i32, ptr %arrayidx49, align 4, !tbaa !5, !invariant.load !9
  %add50 = add nsw i32 %11, 12
  %arrayidx52 = getelementptr inbounds nuw [1000 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %12 = load i32, ptr %arrayidx52, align 4, !tbaa !5, !invariant.load !9
  %13 = xor i32 %12, -1
  %sub54 = add i32 %add50, %13
  %mul55 = mul nsw i32 %sub54, 3600
  %reass.sub27 = sub i32 %7, %6
  %mul = add i32 %reass.sub27, 3600
  %add47 = add i32 %mul, %10
  %add56 = add nsw i32 %add47, %mul55
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add56)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond33, !llvm.loop !13

for.end60:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %a) #4
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
