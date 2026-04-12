; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwg_x2grd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %b = alloca i32, align 4
  %a = alloca [1000 x [18 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %b) #4
  call void @llvm.lifetime.start.p0(i64 noundef 72000, ptr noundef nonnull align 16 %a) #4
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %i.1, %if.end ]
  %n.0 = phi i32 [ undef, %entry ], [ %n.1, %if.end ]
  %j.0 = phi i32 [ 0, %entry ], [ %j.1, %if.end ]
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %b)
  %0 = load i32, ptr %b, align 4, !tbaa !5
  switch i32 %0, label %if.then [
    i32 -1, label %for.cond.preheader
    i32 0, label %if.else
  ]

for.cond.preheader:                               ; preds = %while.cond
  %smax37 = call i32 @llvm.smax.i32(i32 %n.0, i32 noundef 0)
  %wide.trip.count38 = zext nneg i32 %smax37 to i64
  br label %for.cond

if.then:                                          ; preds = %while.cond
  %idxprom = sext i32 %i.0 to i64
  %idxprom2 = sext i32 %j.0 to i64
  %arrayidx3 = getelementptr inbounds [1000 x [18 x i32]], ptr %a, i64 0, i64 %idxprom, i64 %idxprom2
  store i32 %0, ptr %arrayidx3, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  %arrayidx6 = getelementptr inbounds [1000 x [18 x i32]], ptr %a, i64 0, i64 %idxprom, i64 17
  store i32 %inc, ptr %arrayidx6, align 4, !tbaa !5
  br label %if.end

if.else:                                          ; preds = %while.cond
  %idxprom7 = sext i32 %i.0 to i64
  %idxprom9 = sext i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds [1000 x [18 x i32]], ptr %a, i64 0, i64 %idxprom7, i64 %idxprom9
  store i32 0, ptr %arrayidx10, align 4, !tbaa !5
  %inc11 = add nsw i32 %i.0, 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %i.1 = phi i32 [ %i.0, %if.then ], [ %inc11, %if.else ]
  %n.1 = phi i32 [ %n.0, %if.then ], [ %inc11, %if.else ]
  %j.1 = phi i32 [ %inc, %if.then ], [ 0, %if.else ]
  br label %while.cond, !llvm.loop !9

for.cond:                                         ; preds = %for.cond.preheader, %for.inc53
  %indvars.iv33 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next34, %for.inc53 ]
  %exitcond39.not = icmp eq i64 %indvars.iv33, %wide.trip.count38
  br i1 %exitcond39.not, label %for.end55, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 17
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %2 = call i32 @llvm.smax.i32(i32 %1, i32 noundef 1)
  %smax = add nsw i32 %2, -1
  %wide.trip.count31 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond14

for.cond14.loopexit:                              ; preds = %for.cond20
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.loopexit, %for.cond14.preheader
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.cond14.loopexit ], [ 0, %for.cond14.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond14.loopexit ], [ 1, %for.cond14.preheader ]
  %c.1 = phi i32 [ %c.2, %for.cond14.loopexit ], [ 0, %for.cond14.preheader ]
  %exitcond32.not = icmp eq i64 %indvars.iv28, %wide.trip.count31
  br i1 %exitcond32.not, label %for.inc53, label %for.body19

for.body19:                                       ; preds = %for.cond14
  %arrayidx29 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv28
  br label %for.cond20

for.cond20:                                       ; preds = %for.body25, %for.body19
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.body25 ], [ %indvars.iv, %for.body19 ]
  %c.2 = phi i32 [ %c.3, %for.body25 ], [ %c.1, %for.body19 ]
  %exitcond.not = icmp eq i64 %indvars.iv25, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.loopexit, label %for.body25

for.body25:                                       ; preds = %for.cond20
  %3 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %indvars.iv33, i64 %indvars.iv25
  %4 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %mul = shl nsw i32 %4, 1
  %cmp34 = icmp eq i32 %3, %mul
  %mul43 = shl nsw i32 %3, 1
  %cmp44 = icmp eq i32 %4, %mul43
  %or.cond = select i1 %cmp34, i1 true, i1 %cmp44
  %inc46 = zext i1 %or.cond to i32
  %c.3 = add nsw i32 %c.2, %inc46
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond20, !llvm.loop !13

for.inc53:                                        ; preds = %for.cond14
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %c.1)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond, !llvm.loop !14

for.end55:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 72000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %b) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
