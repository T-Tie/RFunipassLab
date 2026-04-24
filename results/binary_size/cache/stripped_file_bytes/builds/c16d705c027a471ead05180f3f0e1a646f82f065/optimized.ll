; ModuleID = '<stdin>'
source_filename = "/tmp/tmpsb9ol05x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree nounwind uwtable
define dso_local void @_Z3funPii(ptr noundef readonly captures(none) %p, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %b = alloca [400 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %b) #7
  %smax = tail call i32 @llvm.smax.i32(i32 %n, i32 0)
  %wide.trip.count23 = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc13 ], [ 0, %entry ]
  %q.0 = phi ptr [ %q.1, %for.inc13 ], [ %b, %entry ]
  %exitcond24.not = icmp eq i64 %indvars.iv20, %wide.trip.count23
  br i1 %exitcond24.not, label %for.end15, label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv20
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.preheader, %for.inc
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %for.inc ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv20
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %0 = load i32, ptr %add.ptr, align 4, !tbaa !5
  %add.ptr5 = getelementptr inbounds nuw i32, ptr %p, i64 %indvars.iv
  %1 = load i32, ptr %add.ptr5, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %0, %1
  br i1 %cmp6, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body3
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.cond1
  %j.0.lcssa.in = phi i64 [ %indvars.iv, %for.body3 ], [ %indvars.iv20, %for.cond1 ]
  %2 = and i64 %j.0.lcssa.in, 4294967295
  %cmp7 = icmp eq i64 %2, %indvars.iv20
  br i1 %cmp7, label %if.then8, label %for.inc13

if.then8:                                         ; preds = %for.end
  %3 = load i32, ptr %add.ptr, align 4, !tbaa !5
  store i32 %3, ptr %q.0, align 4, !tbaa !5
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %q.0, i64 4
  store i32 -1000, ptr %incdec.ptr, align 4, !tbaa !5
  %incdec.ptr11 = getelementptr inbounds nuw i8, ptr %q.0, i64 8
  br label %for.inc13

for.inc13:                                        ; preds = %for.end, %if.then8
  %q.1 = phi ptr [ %incdec.ptr11, %if.then8 ], [ %q.0, %for.end ]
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond, !llvm.loop !12

for.end15:                                        ; preds = %for.cond
  %add.ptr16 = getelementptr inbounds i8, ptr %q.0, i64 -4
  store i32 0, ptr %add.ptr16, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc25, %for.end15
  %q.2 = phi ptr [ %b, %for.end15 ], [ %incdec.ptr26, %for.inc25 ]
  %4 = load i32, ptr %q.2, align 4, !tbaa !5
  switch i32 %4, label %if.else [
    i32 0, label %for.end27
    i32 -1000, label %if.then22
  ]

if.then22:                                        ; preds = %for.cond18
  %putchar = tail call i32 @putchar(i32 44)
  br label %for.inc25

if.else:                                          ; preds = %for.cond18
  %call23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4)
  br label %for.inc25

for.inc25:                                        ; preds = %if.then22, %if.else
  %incdec.ptr26 = getelementptr inbounds nuw i8, ptr %q.2, i64 4
  br label %for.cond18, !llvm.loop !13

for.end27:                                        ; preds = %for.cond18
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %b) #7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #3 {
entry:
  %a = alloca [300 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !14

for.end:                                          ; preds = %for.cond
  call void @_Z3funPii(ptr noundef nonnull %a, i32 noundef %0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #7
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #7
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
