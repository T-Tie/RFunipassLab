; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8hka8wjz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [20000 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp11 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp11)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.end.loopexit, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp515 = icmp sgt i32 %3, 0
  br i1 %cmp515, label %for.cond7.preheader, label %for.end27

for.cond7.preheader:                              ; preds = %for.end.loopexit, %for.inc25
  %4 = phi i32 [ %15, %for.inc25 ], [ %3, %for.end.loopexit ]
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc25 ], [ 0, %for.end.loopexit ]
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv22
  %cmp813 = icmp sgt i32 %4, 0
  br i1 %cmp813, label %for.body9.lr.ph, label %for.inc25

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %5 = add nuw nsw i64 %indvars.iv22, 4294967295
  %6 = and i64 %5, 4294967295
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc22
  %7 = phi i32 [ %4, %for.body9.lr.ph ], [ %12, %for.inc22 ]
  %8 = phi i32 [ %4, %for.body9.lr.ph ], [ %13, %for.inc22 ]
  %indvars.iv19 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next20, %for.inc22 ]
  %9 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx13 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %10 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %9, %10
  br i1 %cmp14, label %for.inc25, label %if.end

if.end:                                           ; preds = %for.body9
  %cmp15 = icmp eq i64 %indvars.iv19, %6
  br i1 %cmp15, label %if.then16, label %for.inc22

if.then16:                                        ; preds = %if.end
  %putchar = call i32 @putchar(i32 32)
  %11 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %call20 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %11)
  %.pre26 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %if.end, %if.then16
  %12 = phi i32 [ %7, %if.end ], [ %.pre26, %if.then16 ]
  %13 = phi i32 [ %8, %if.end ], [ %.pre26, %if.then16 ]
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  %14 = sext i32 %13 to i64
  %cmp8 = icmp slt i64 %indvars.iv.next20, %14
  br i1 %cmp8, label %for.body9, label %for.inc25, !llvm.loop !12

for.inc25:                                        ; preds = %for.body9, %for.inc22, %for.cond7.preheader
  %15 = phi i32 [ %4, %for.cond7.preheader ], [ %7, %for.body9 ], [ %12, %for.inc22 ]
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  %16 = sext i32 %15 to i64
  %cmp5 = icmp slt i64 %indvars.iv.next23, %16
  br i1 %cmp5, label %for.cond7.preheader, label %for.end27, !llvm.loop !13

for.end27:                                        ; preds = %for.inc25, %for.end.loopexit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
!13 = distinct !{!13, !10, !11, !14}
!14 = !{!"llvm.loop.unswitch.partial.disable"}
