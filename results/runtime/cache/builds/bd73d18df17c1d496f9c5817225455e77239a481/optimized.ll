; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmwpdxie4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %a = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 64, ptr noundef nonnull align 16 %a) #4
  br label %while.body

while.body:                                       ; preds = %entry, %for.end52
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.body
  %indvars.iv = phi i64 [ 0, %while.body ], [ %indvars.iv.next, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %for.cond [
    i32 0, label %for.end
    i32 -1, label %for.end
  ], !llvm.loop !9

for.end:                                          ; preds = %for.body, %for.body, %for.cond
  %e.2 = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.next, %for.body ], [ 16, %for.cond ]
  %idxprom7 = and i64 %indvars.iv, 4294967295
  %arrayidx8 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %idxprom7
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp9 = icmp eq i32 %1, -1
  br i1 %cmp9, label %while.end, label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.end
  %sub = add i64 %e.2, 4294967295
  %wide.trip.count32 = and i64 %sub, 4294967295
  br label %for.cond12

for.cond12.loopexit:                              ; preds = %for.cond16
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond12, !llvm.loop !12

for.cond12:                                       ; preds = %for.cond12.loopexit, %for.cond12.preheader
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.cond12.loopexit ], [ 0, %for.cond12.preheader ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.cond12.loopexit ], [ 1, %for.cond12.preheader ]
  %c.1 = phi i32 [ %c.2, %for.cond12.loopexit ], [ 0, %for.cond12.preheader ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count32
  br i1 %exitcond33.not, label %for.end52, label %for.body14

for.body14:                                       ; preds = %for.cond12
  %arrayidx21 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv29
  br label %for.cond16

for.cond16:                                       ; preds = %for.inc47, %for.body14
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc47 ], [ %indvars.iv23, %for.body14 ]
  %c.2 = phi i32 [ %c.3, %for.inc47 ], [ %c.1, %for.body14 ]
  %exitcond28.not = icmp eq i64 %indvars.iv25, %wide.trip.count32
  br i1 %exitcond28.not, label %for.cond12.loopexit, label %for.body19

for.body19:                                       ; preds = %for.cond16
  %2 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv25
  %3 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %div = sdiv i32 %2, %3
  %cmp24 = icmp eq i32 %div, 2
  br i1 %cmp24, label %land.lhs.true, label %lor.lhs.false30

land.lhs.true:                                    ; preds = %for.body19
  %rem = srem i32 %2, %3
  %cmp29 = icmp eq i32 %rem, 0
  br i1 %cmp29, label %if.then44, label %lor.lhs.false30

lor.lhs.false30:                                  ; preds = %land.lhs.true, %for.body19
  %div35 = sdiv i32 %3, %2
  %cmp36 = icmp eq i32 %div35, 2
  br i1 %cmp36, label %land.lhs.true37, label %for.inc47

land.lhs.true37:                                  ; preds = %lor.lhs.false30
  %rem42 = srem i32 %3, %2
  %cmp43 = icmp eq i32 %rem42, 0
  br i1 %cmp43, label %if.then44, label %for.inc47

if.then44:                                        ; preds = %land.lhs.true37, %land.lhs.true
  %add45 = add nsw i32 %c.2, 1
  br label %for.inc47

for.inc47:                                        ; preds = %lor.lhs.false30, %land.lhs.true37, %if.then44
  %c.3 = phi i32 [ %add45, %if.then44 ], [ %c.2, %land.lhs.true37 ], [ %c.2, %lor.lhs.false30 ]
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond16, !llvm.loop !13

for.end52:                                        ; preds = %for.cond12
  %call53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %c.1)
  br label %while.body, !llvm.loop !14

while.end:                                        ; preds = %for.end
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %a) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nofree nounwind }
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
