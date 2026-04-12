; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwg_x2grd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %b = alloca i32, align 4
  %a = alloca [1000 x [18 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 72000, ptr nonnull %a) #5
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.else, %entry
  %i.0.ph = phi i32 [ %inc11, %if.else ], [ 0, %entry ]
  %n.0.ph = phi i32 [ %inc11, %if.else ], [ undef, %entry ]
  %idxprom = zext nneg i32 %i.0.ph to i64
  %arrayidx6 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %idxprom, i64 17
  br label %while.cond

while.cond:                                       ; preds = %while.cond.outer, %if.then
  %j.0 = phi i32 [ %inc, %if.then ], [ 0, %while.cond.outer ]
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %0 = load i32, ptr %b, align 4, !tbaa !5
  switch i32 %0, label %if.then [
    i32 -1, label %for.cond.preheader
    i32 0, label %if.else
  ]

for.cond.preheader:                               ; preds = %while.cond
  %wide.trip.count39 = zext nneg i32 %n.0.ph to i64
  br label %for.cond

if.then:                                          ; preds = %while.cond
  %idxprom2 = zext nneg i32 %j.0 to i64
  %arrayidx3 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %idxprom, i64 %idxprom2
  store i32 %0, ptr %arrayidx3, align 4, !tbaa !5
  %inc = add nuw nsw i32 %j.0, 1
  store i32 %inc, ptr %arrayidx6, align 4, !tbaa !5
  br label %while.cond, !llvm.loop !9

if.else:                                          ; preds = %while.cond
  %idxprom7 = zext nneg i32 %i.0.ph to i64
  %idxprom9 = zext nneg i32 %j.0 to i64
  %arrayidx10 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %idxprom7, i64 %idxprom9
  store i32 0, ptr %arrayidx10, align 4, !tbaa !5
  %inc11 = add nuw nsw i32 %i.0.ph, 1
  br label %while.cond.outer, !llvm.loop !9

for.cond:                                         ; preds = %for.cond.preheader, %for.end51
  %indvars.iv34 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next35, %for.end51 ]
  %exitcond40.not = icmp eq i64 %indvars.iv34, %wide.trip.count39
  br i1 %exitcond40.not, label %for.end55, label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 17
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %2 = call i32 @llvm.smax.i32(i32 %1, i32 1)
  %smax = add nsw i32 %2, -1
  %wide.trip.count32 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %1 to i64
  br label %for.cond14

for.cond14.loopexit:                              ; preds = %for.cond20
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !12

for.cond14:                                       ; preds = %for.cond14.loopexit, %for.cond14.preheader
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.cond14.loopexit ], [ 0, %for.cond14.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond14.loopexit ], [ 1, %for.cond14.preheader ]
  %c.1 = phi i32 [ %c.2, %for.cond14.loopexit ], [ 0, %for.cond14.preheader ]
  %exitcond33.not = icmp eq i64 %indvars.iv29, %wide.trip.count32
  br i1 %exitcond33.not, label %for.end51, label %for.body19

for.body19:                                       ; preds = %for.cond14
  %arrayidx29 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %indvars.iv29
  br label %for.cond20

for.cond20:                                       ; preds = %for.body25, %for.body19
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.body25 ], [ %indvars.iv, %for.body19 ]
  %c.2 = phi i32 [ %c.3, %for.body25 ], [ %c.1, %for.body19 ]
  %exitcond.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond.not, label %for.cond14.loopexit, label %for.body25

for.body25:                                       ; preds = %for.cond20
  %3 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx33 = getelementptr inbounds nuw [1000 x [18 x i32]], ptr %a, i64 0, i64 %indvars.iv34, i64 %indvars.iv26
  %4 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %mul = shl nsw i32 %4, 1
  %cmp34 = icmp eq i32 %3, %mul
  %mul43 = shl nsw i32 %3, 1
  %cmp44 = icmp eq i32 %4, %mul43
  %or.cond = select i1 %cmp34, i1 true, i1 %cmp44
  %inc46 = zext i1 %or.cond to i32
  %c.3 = add nsw i32 %c.2, %inc46
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond20, !llvm.loop !13

for.end51:                                        ; preds = %for.cond14
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %c.1)
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br label %for.cond, !llvm.loop !14

for.end55:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 72000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %b) #5
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
