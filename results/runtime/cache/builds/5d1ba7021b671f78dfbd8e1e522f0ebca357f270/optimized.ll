; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0v1hr62l.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [16 x i32], align 16
  %c = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %a, i8 0, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %c) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %c, i8 0, i64 400, i1 false)
  br label %while.cond.outer

while.cond.outer:                                 ; preds = %if.then7, %entry
  %k.0.ph = phi i32 [ %inc, %if.then7 ], [ 1, %entry ]
  %idxprom24 = sext i32 %k.0.ph to i64
  %arrayidx25 = getelementptr inbounds [100 x i32], ptr %c, i64 0, i64 %idxprom24
  br label %for.cond.preheader

while.cond.loopexit:                              ; preds = %for.body
  br i1 %exitcond.not, label %for.cond31.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.cond, %while.cond.outer, %while.cond.loopexit
  br label %for.cond

for.cond31.preheader:                             ; preds = %while.cond.loopexit
  %cmp32 = icmp sgt i32 %k.0.ph, 0
  br i1 %cmp32, label %for.cond31.preheader18, label %for.end40.split

for.cond31.preheader18:                           ; preds = %for.cond31.preheader
  %wide.trip.count = zext nneg i32 %k.0.ph to i64
  br label %for.cond31

for.cond:                                         ; preds = %for.cond.preheader, %for.inc28
  %indvars.iv = phi i64 [ 1, %for.cond.preheader ], [ %indvars.iv.next, %for.inc28 ]
  %exitcond.not = icmp ne i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.body, label %for.cond.preheader, !llvm.loop !5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !8
  switch i32 %0, label %for.cond9.preheader [
    i32 -1, label %while.cond.loopexit
    i32 0, label %if.then7
  ], !llvm.loop !5

for.cond9.preheader:                              ; preds = %for.body
  %mul19 = shl nsw i32 %0, 1
  br label %for.cond9

if.then7:                                         ; preds = %for.body
  %inc = add i32 %k.0.ph, 1
  br label %while.cond.outer, !llvm.loop !5

for.cond9:                                        ; preds = %for.cond9.backedge, %for.cond9.preheader
  %indvars.iv19 = phi i64 [ %indvars.iv, %for.cond9.preheader ], [ %indvars.iv.next20, %for.cond9.backedge ]
  %indvars.iv.next20 = add nsw i64 %indvars.iv19, -1
  %cmp10 = icmp sgt i64 %indvars.iv19, 1
  br i1 %cmp10, label %for.body11, label %for.inc28

for.body11:                                       ; preds = %for.cond9
  %arrayidx15 = getelementptr inbounds nuw [16 x i32], ptr %a, i64 0, i64 %indvars.iv.next20
  %1 = load i32, ptr %arrayidx15, align 4, !tbaa !8
  %mul = shl nsw i32 %1, 1
  %cmp16 = icmp eq i32 %0, %mul
  %cmp22 = icmp eq i32 %mul19, %1
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.then23, label %for.cond9.backedge

for.cond9.backedge:                               ; preds = %for.body11, %if.then23
  br label %for.cond9, !llvm.loop !12

if.then23:                                        ; preds = %for.body11
  %2 = load i32, ptr %arrayidx25, align 4, !tbaa !8
  %inc26 = add nsw i32 %2, 1
  store i32 %inc26, ptr %arrayidx25, align 4, !tbaa !8
  br label %for.cond9.backedge

for.inc28:                                        ; preds = %for.cond9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.cond31:                                       ; preds = %for.cond31.preheader18, %for.body34
  %indvars.iv23 = phi i64 [ 1, %for.cond31.preheader18 ], [ %indvars.iv.next24, %for.body34 ]
  %exitcond27.not = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond27.not, label %for.end40.split, label %for.body34

for.body34:                                       ; preds = %for.cond31
  %arrayidx36 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv23
  %3 = load i32, ptr %arrayidx36, align 4, !tbaa !8
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %3)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond31, !llvm.loop !14

for.end40.split:                                  ; preds = %for.cond31, %for.cond31.preheader
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %a) #5
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = distinct !{!12, !6, !7}
!13 = distinct !{!13, !6, !7}
!14 = distinct !{!14, !6, !7}
