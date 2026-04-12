; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxhfcbqp6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [102 x [102 x i32]], align 16
  %b = alloca [102 x [102 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 41616, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 41616, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv26, %1
  br i1 %cmp, label %for.cond1, label %for.end9

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %3
  br i1 %cmp2, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %a, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond

for.end9:                                         ; preds = %for.cond
  %call10 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond11

for.cond11:                                       ; preds = %for.inc25, %for.end9
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc25 ], [ 0, %for.end9 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp12 = icmp slt i64 %indvars.iv32, %5
  br i1 %cmp12, label %for.cond14, label %for.cond62

for.cond14:                                       ; preds = %for.cond11, %for.inc22
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.inc22 ], [ 0, %for.cond11 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp15 = icmp slt i64 %indvars.iv29, %7
  br i1 %cmp15, label %for.inc22, label %for.inc25

for.inc22:                                        ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [102 x [102 x i32]], ptr %b, i64 0, i64 %indvars.iv32, i64 %indvars.iv29
  %call21 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx20)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond14, !llvm.loop !12

for.inc25:                                        ; preds = %for.cond14
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond11, !llvm.loop !13

for.cond62:                                       ; preds = %for.cond11, %for.end75
  %i.3 = phi i32 [ %inc8.i3, %for.end75 ], [ 0, %for.cond11 ]
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp63 = icmp slt i32 %i.3, %8
  br i1 %cmp63, label %for.cond65, label %for.end84

for.cond65:                                       ; preds = %for.cond62, %for.body67
  %j.3 = phi i32 [ %inc8.i2, %for.body67 ], [ 0, %for.cond62 ]
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %sub = add nsw i32 %9, -1
  %cmp66 = icmp slt i32 %j.3, %sub
  br i1 %cmp66, label %for.body67, label %for.end75

for.body67:                                       ; preds = %for.cond65
  %call72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 undef)
  %inc8.i2 = add nuw nsw i32 %j.3, 1
  br label %for.cond65

for.end75:                                        ; preds = %for.cond65
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 undef)
  %inc8.i3 = add nuw nsw i32 %i.3, 1
  br label %for.cond62

for.end84:                                        ; preds = %for.cond62
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #6
  call void @llvm.lifetime.end.p0(i64 noundef 41616, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 41616, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #5 = { nofree nounwind }
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
