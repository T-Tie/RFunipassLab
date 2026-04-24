; ModuleID = '<stdin>'
source_filename = "/tmp/tmp0tpnm1w_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr nofree noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #3
  br label %while.body

while.body:                                       ; preds = %entry, %for.end25
  br label %while.body2

while.body2:                                      ; preds = %while.body, %if.end9
  %indvars.iv = phi i64 [ 0, %while.body ], [ %indvars.iv.next, %if.end9 ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %if.end9 [
    i32 0, label %for.cond.preheader
    i32 -1, label %if.then8
  ]

for.cond.preheader:                               ; preds = %while.body2
  %wide.trip.count34 = and i64 %indvars.iv, 4294967295
  br label %for.cond

if.then8:                                         ; preds = %while.body2
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #4
  ret i32 0

if.end9:                                          ; preds = %while.body2
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br label %while.body2, !llvm.loop !9

for.cond:                                         ; preds = %for.cond.preheader, %for.inc23
  %indvars.iv29 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next30, %for.inc23 ]
  %total.0 = phi i32 [ 0, %for.cond.preheader ], [ %total.1, %for.inc23 ]
  %exitcond35.not = icmp eq i64 %indvars.iv29, %wide.trip.count34
  br i1 %exitcond35.not, label %for.end25, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !12
  %mul = shl nsw i32 %1, 1
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.preheader, %for.body13
  %indvars.iv23 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next24, %for.body13 ]
  %total.1 = phi i32 [ %total.0, %for.cond11.preheader ], [ %spec.select, %for.body13 ]
  %exitcond.not = icmp eq i64 %indvars.iv23, %wide.trip.count34
  br i1 %exitcond.not, label %for.inc23, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv23
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !12
  %cmp18 = icmp eq i32 %2, %mul
  %inc20 = zext i1 %cmp18 to i32
  %spec.select = add nsw i32 %total.1, %inc20
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond11, !llvm.loop !13

for.inc23:                                        ; preds = %for.cond11
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond, !llvm.loop !14

for.end25:                                        ; preds = %for.cond
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %total.0)
  br label %while.body, !llvm.loop !15
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
attributes #3 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
