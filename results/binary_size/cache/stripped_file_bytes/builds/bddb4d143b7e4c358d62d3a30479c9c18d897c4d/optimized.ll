; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa9qu9iw_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %3 = load i32, ptr %arrayidx3, align 8, !tbaa !5
  %cmp4 = icmp slt i32 %2, %3
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end
  store i32 %3, ptr %arrayidx2, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %arrayidx2.promoted = phi i32 [ %2, %for.end ], [ %3, %if.then ]
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 2)
  %4 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %4 to i64
  br label %for.cond10

for.cond10:                                       ; preds = %if.end34, %if.end
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %if.end34 ], [ 3, %if.end ]
  %5 = phi i32 [ %8, %if.end34 ], [ %3, %if.end ]
  %6 = phi i32 [ %9, %if.end34 ], [ %arrayidx2.promoted, %if.end ]
  %exitcond = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond, label %for.end37, label %for.body12

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv11
  %7 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !12
  %cmp16 = icmp sgt i32 %7, %6
  br i1 %cmp16, label %if.then17, label %if.else23

if.then17:                                        ; preds = %for.body12
  store i32 %7, ptr %arrayidx2, align 4, !tbaa !5
  br label %if.end34.sink.split

if.else23:                                        ; preds = %for.body12
  %cmp27 = icmp slt i32 %7, %5
  br i1 %cmp27, label %if.end34, label %if.end34.sink.split

if.end34.sink.split:                              ; preds = %if.else23, %if.then17
  %.sink = phi i32 [ %6, %if.then17 ], [ %7, %if.else23 ]
  %.ph18 = phi i32 [ %7, %if.then17 ], [ %6, %if.else23 ]
  store i32 %.sink, ptr %arrayidx3, align 8, !tbaa !5
  br label %if.end34

if.end34:                                         ; preds = %if.end34.sink.split, %if.else23
  %8 = phi i32 [ %5, %if.else23 ], [ %.sink, %if.end34.sink.split ]
  %9 = phi i32 [ %6, %if.else23 ], [ %.ph18, %if.end34.sink.split ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond10, !llvm.loop !13

for.end37:                                        ; preds = %for.cond10
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind willreturn }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
