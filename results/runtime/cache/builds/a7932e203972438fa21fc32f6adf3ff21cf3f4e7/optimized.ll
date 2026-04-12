; ModuleID = '<stdin>'
source_filename = "/tmp/tmp7t1mcd9z.cpp"
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
  %a = alloca [110 x [110 x i32]], align 16
  %b = alloca [110 x [110 x i32]], align 16
  %x1 = alloca i32, align 4
  %x2 = alloca i32, align 4
  %y1 = alloca i32, align 4
  %y2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 48400, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 48400, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %x2) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y1) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %y2) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(48400) %a, i8 noundef 0, i64 noundef 48400, i1 noundef false) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(48400) %b, i8 noundef 0, i64 noundef 48400, i1 noundef false) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %x1, ptr noundef nonnull align 4 %y1)
  br label %for.cond

for.cond:                                         ; preds = %for.end, %entry
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.end ], [ 1, %entry ]
  %0 = load i32, ptr %x1, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv24, %1
  br i1 %cmp.not, label %for.end11, label %for.cond3

for.cond3:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %for.cond ]
  %2 = load i32, ptr %y1, align 4, !tbaa !5
  %3 = sext i32 %2 to i64
  %cmp4.not = icmp sgt i64 %indvars.iv, %3
  br i1 %cmp4.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %a, i64 0, i64 %indvars.iv24, i64 %indvars.iv
  %call8 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx7)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond

for.end11:                                        ; preds = %for.cond
  %call12 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %x2, ptr noundef nonnull %y2)
  br label %for.cond13

for.cond13:                                       ; preds = %for.inc27, %for.end11
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc27 ], [ 1, %for.end11 ]
  %4 = load i32, ptr %x2, align 4, !tbaa !5
  %5 = sext i32 %4 to i64
  %cmp14.not = icmp sgt i64 %indvars.iv30, %5
  br i1 %cmp14.not, label %for.cond60, label %for.cond16

for.cond16:                                       ; preds = %for.cond13, %for.inc24
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.inc24 ], [ 1, %for.cond13 ]
  %6 = load i32, ptr %y2, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp17.not = icmp sgt i64 %indvars.iv27, %7
  br i1 %cmp17.not, label %for.inc27, label %for.inc24

for.inc24:                                        ; preds = %for.cond16
  %arrayidx22 = getelementptr inbounds nuw [110 x [110 x i32]], ptr %b, i64 0, i64 %indvars.iv30, i64 %indvars.iv27
  %call23 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx22)
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond16, !llvm.loop !12

for.inc27:                                        ; preds = %for.cond16
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond13, !llvm.loop !13

for.cond60:                                       ; preds = %for.cond13, %for.end73
  %i.3 = phi i32 [ %inc10.i3, %for.end73 ], [ 1, %for.cond13 ]
  %8 = load i32, ptr %x1, align 4, !tbaa !5
  %cmp61.not = icmp sgt i32 %i.3, %8
  br i1 %cmp61.not, label %for.end81, label %for.cond63

for.cond63:                                       ; preds = %for.cond60, %for.body65
  %j.3 = phi i32 [ %inc10.i2, %for.body65 ], [ 1, %for.cond60 ]
  %9 = load i32, ptr %y2, align 4, !tbaa !5
  %cmp64 = icmp slt i32 %j.3, %9
  br i1 %cmp64, label %for.body65, label %for.end73

for.body65:                                       ; preds = %for.cond63
  %call70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 undef)
  %inc10.i2 = add nuw nsw i32 %j.3, 1
  br label %for.cond63

for.end73:                                        ; preds = %for.cond63
  %call78 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 undef)
  %inc10.i3 = add nuw nsw i32 %i.3, 1
  br label %for.cond60

for.end81:                                        ; preds = %for.cond60
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %y1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x2) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %x1) #7
  call void @llvm.lifetime.end.p0(i64 noundef 48400, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 48400, ptr noundef nonnull %a) #7
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
attributes #6 = { nofree }
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
