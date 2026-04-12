; ModuleID = '<stdin>'
source_filename = "/tmp/tmpv30_c7g9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %n = alloca i32, align 4
  %num = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull %num) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(400) %num, i8 noundef 0, i64 noundef 400, i1 noundef false)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %indvars.iv18 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next19, %for.body4 ]
  %max.0 = phi i32 [ 0, %for.cond2.preheader ], [ %spec.select, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.body4

for.cond13.preheader:                             ; preds = %for.cond2
  br label %for.cond13

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %indvars.iv18
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %max.0, i32 %2)
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond2, !llvm.loop !12

for.cond13:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv22 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next23, %for.body15 ]
  %secondmax.0 = phi i32 [ 0, %for.cond13.preheader ], [ %secondmax.1, %for.body15 ]
  %exitcond26.not = icmp eq i64 %indvars.iv22, %wide.trip.count
  br i1 %exitcond26.not, label %for.end31, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %num, i64 0, i64 %indvars.iv22
  %3 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp sge i32 %secondmax.0, %3
  %cmp22 = icmp eq i32 %3, %max.0
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp22
  %secondmax.1 = select i1 %or.cond, i32 %secondmax.0, i32 %3
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond13, !llvm.loop !13

for.end31:                                        ; preds = %for.cond13
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %max.0, i32 noundef %secondmax.0)
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %num) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

declare i32 @printf(ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind }

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
