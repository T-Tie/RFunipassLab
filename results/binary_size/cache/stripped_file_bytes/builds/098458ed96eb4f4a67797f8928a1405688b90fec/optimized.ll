; ModuleID = '<stdin>'
source_filename = "/tmp/tmptcxxgfdd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %x1 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y2 = alloca i32, align 4
  %A = alloca [100 x [100 x i32]], align 16
  %B = alloca [100 x [100 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #4
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull %A) #4
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %B) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv26 = phi i64 [ %indvars.iv.next27, %for.end ], [ 0, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %for.cond1, label %for.end10

for.cond1:                                        ; preds = %for.cond, %for.body4
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.cond ]
  %1 = load i32, ptr %y1, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp3.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp3.not.not, label %for.body4, label %for.end

for.body4:                                        ; preds = %for.cond1
  %arrayidx6 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %A, i64 0, i64 %indvars.iv26, i64 %indvars.iv
  %call7 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx6)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.end:                                          ; preds = %for.cond1
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond

for.end10:                                        ; preds = %for.cond
  %call11 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond12

for.cond12:                                       ; preds = %for.end27, %for.end10
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.end27 ], [ 0, %for.end10 ]
  %3 = load i32, ptr %x2, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %3, 0
  br i1 %cmp14, label %for.cond16, label %for.cond31

for.cond16:                                       ; preds = %for.cond12, %for.body19
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body19 ], [ 0, %for.cond12 ]
  %4 = load i32, ptr %y2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp18.not.not = icmp slt i64 %indvars.iv29, %5
  br i1 %cmp18.not.not, label %for.body19, label %for.end27

for.body19:                                       ; preds = %for.cond16
  %arrayidx23 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %B, i64 0, i64 %indvars.iv32, i64 %indvars.iv29
  %call24 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx23)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond16, !llvm.loop !12

for.end27:                                        ; preds = %for.cond16
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond12

for.cond31:                                       ; preds = %for.cond37, %for.cond12
  %6 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp33 = icmp sgt i32 %6, 0
  br i1 %cmp33, label %for.cond37, label %for.end69

for.cond37:                                       ; preds = %for.cond31, %for.cond41.preheader
  %k.2 = phi i32 [ %inc65, %for.cond41.preheader ], [ 0, %for.cond31 ]
  %7 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp39.not.not = icmp slt i32 %k.2, %7
  br i1 %cmp39.not.not, label %for.cond41.preheader, label %for.cond31

for.cond41.preheader:                             ; preds = %for.cond37
  %cmp56 = icmp eq i32 %k.2, 0
  %.str.1..str.3 = select i1 %cmp56, ptr @.str.1, ptr @.str.3
  %call58 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str.1..str.3, i32 noundef 0)
  %inc65 = add nuw nsw i32 %k.2, 1
  br label %for.cond37, !llvm.loop !13

for.end69:                                        ; preds = %for.cond31
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %B) #5
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %A) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
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
