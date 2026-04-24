; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9fx5gme3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  %b = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %0 = load i32, ptr %a, align 16, !tbaa !5
  store i32 %0, ptr %b, align 16, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.inc23, %entry
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc23 ], [ 1, %entry ]
  %k.0 = phi i32 [ %k.1, %for.inc23 ], [ 1, %entry ]
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv15, %2
  br i1 %cmp, label %for.body, label %for.end25

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv15
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx4)
  %3 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  br label %for.cond6

for.cond6:                                        ; preds = %for.body8, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body8 ], [ 0, %for.body ]
  %r.0 = phi i32 [ %spec.select, %for.body8 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv15
  br i1 %exitcond.not, label %for.end, label %for.body8

for.body8:                                        ; preds = %for.cond6
  %arrayidx12 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %3, %4
  %inc = zext i1 %cmp13 to i32
  %spec.select = add nuw nsw i32 %r.0, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond6, !llvm.loop !9

for.end:                                          ; preds = %for.cond6
  %cmp15 = icmp eq i32 %r.0, 0
  br i1 %cmp15, label %if.then16, label %for.inc23

if.then16:                                        ; preds = %for.end
  %idxprom19 = sext i32 %k.0 to i64
  %arrayidx20 = getelementptr inbounds [300 x i32], ptr %b, i64 0, i64 %idxprom19
  store i32 %3, ptr %arrayidx20, align 4, !tbaa !5
  %inc21 = add nsw i32 %k.0, 1
  br label %for.inc23

for.inc23:                                        ; preds = %for.end, %if.then16
  %k.1 = phi i32 [ %inc21, %if.then16 ], [ %k.0, %for.end ]
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond, !llvm.loop !12

for.end25:                                        ; preds = %for.cond
  %5 = load i32, ptr %b, align 16, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5)
  %smax = call i32 @llvm.smax.i32(i32 %k.0, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond28

for.cond28:                                       ; preds = %for.body30, %for.end25
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body30 ], [ 1, %for.end25 ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond22.not, label %for.end36, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw [300 x i32], ptr %b, i64 0, i64 %indvars.iv18
  %6 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond28, !llvm.loop !13

for.end36:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
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
