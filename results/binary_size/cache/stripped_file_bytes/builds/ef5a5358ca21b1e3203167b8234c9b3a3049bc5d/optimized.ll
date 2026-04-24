; ModuleID = '<stdin>'
source_filename = "/tmp/tmprctcjue5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [101 x i32], align 16
  %n = alloca i32, align 4
  %b = alloca [20001 x i32], align 16
  %c = alloca [20001 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 404, ptr nonnull %a) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(404) %a, i8 0, i64 404, i1 false)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %b) #7
  call void @llvm.lifetime.start.p0(i64 80004, ptr nonnull %c) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond2.preheader, label %for.body

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20001 x i32], ptr %b, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc19
  %indvars.iv16 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next17, %for.inc19 ]
  %j.0 = phi i32 [ 0, %for.cond2.preheader ], [ %j.1, %for.inc19 ]
  %exitcond = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond, label %for.cond22.preheader, label %for.body4

for.cond22.preheader:                             ; preds = %for.cond2
  %3 = zext i32 %j.0 to i64
  %smax24 = call i32 @llvm.smax.i32(i32 %j.0, i32 0)
  %4 = add nuw i32 %smax24, 1
  %wide.trip.count25 = zext i32 %4 to i64
  br label %for.cond22

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [20001 x i32], ptr %b, i64 0, i64 %indvars.iv16
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %idxprom7 = sext i32 %5 to i64
  %arrayidx8 = getelementptr inbounds [101 x i32], ptr %a, i64 0, i64 %idxprom7
  %6 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %6, 0
  br i1 %cmp9, label %if.then, label %for.inc19

if.then:                                          ; preds = %for.body4
  %inc10 = add nsw i32 %j.0, 1
  %idxprom13 = sext i32 %inc10 to i64
  %arrayidx14 = getelementptr inbounds [20001 x i32], ptr %c, i64 0, i64 %idxprom13
  store i32 %5, ptr %arrayidx14, align 4, !tbaa !5
  store i32 1, ptr %arrayidx8, align 4, !tbaa !5
  br label %for.inc19

for.inc19:                                        ; preds = %for.body4, %if.then
  %j.1 = phi i32 [ %inc10, %if.then ], [ %j.0, %for.body4 ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond2, !llvm.loop !12

for.cond22:                                       ; preds = %for.cond22.preheader, %for.inc32
  %indvars.iv20 = phi i64 [ 1, %for.cond22.preheader ], [ %indvars.iv.next21, %for.inc32 ]
  %exitcond26 = icmp eq i64 %indvars.iv20, %wide.trip.count25
  br i1 %exitcond26, label %for.end34, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw [20001 x i32], ptr %c, i64 0, i64 %indvars.iv20
  %7 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  %cmp28.not = icmp eq i64 %indvars.iv20, %3
  br i1 %cmp28.not, label %for.inc32, label %if.then29

if.then29:                                        ; preds = %for.body24
  %putchar = call i32 @putchar(i32 32)
  br label %for.inc32

for.inc32:                                        ; preds = %for.body24, %if.then29
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond22, !llvm.loop !13

for.end34:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %c) #7
  call void @llvm.lifetime.end.p0(i64 80004, ptr nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 404, ptr nonnull %a) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }

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
