; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnuk1qlk2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 60, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %tmp) #5
  br label %while.body

while.body:                                       ; preds = %entry, %for.end29
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %tmp)
  %0 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %while.end31, label %while.body2

while.body2:                                      ; preds = %while.body, %if.end6
  %indvars.iv14 = phi i32 [ %indvars.iv.next15, %if.end6 ], [ 0, %while.body ]
  %indvars.iv9 = phi i32 [ %indvars.iv.next10, %if.end6 ], [ 1, %while.body ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end6 ], [ 0, %while.body ]
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %tmp)
  %1 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %for.cond.preheader, label %if.end6

for.cond.preheader:                               ; preds = %while.body2
  %wide.trip.count16 = zext i32 %indvars.iv14 to i64
  %wide.trip.count = zext i32 %indvars.iv9 to i64
  br label %for.cond

if.end6:                                          ; preds = %while.body2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  store i32 %1, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next10 = add nuw i32 %indvars.iv9, 1
  %indvars.iv.next15 = add nuw i32 %indvars.iv14, 1
  br label %while.body2, !llvm.loop !9

for.cond.loopexit:                                ; preds = %for.cond9
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  %indvars.iv.next5 = add nuw nsw i64 %indvars.iv4, 1
  br label %for.cond, !llvm.loop !12

for.cond:                                         ; preds = %for.cond.loopexit, %for.cond.preheader
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.cond.loopexit ], [ 0, %for.cond.preheader ]
  %indvars.iv4 = phi i64 [ %indvars.iv.next5, %for.cond.loopexit ], [ 1, %for.cond.preheader ]
  %NO.0 = phi i32 [ %NO.1, %for.cond.loopexit ], [ 0, %for.cond.preheader ]
  %exitcond17.not = icmp eq i64 %indvars.iv11, %wide.trip.count16
  br i1 %exitcond17.not, label %for.end29, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx15 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv11
  br label %for.cond9

for.cond9:                                        ; preds = %for.body11, %for.body
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.body11 ], [ %indvars.iv4, %for.body ]
  %NO.1 = phi i32 [ %NO.2, %for.body11 ], [ %NO.0, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv6, %wide.trip.count
  br i1 %exitcond, label %for.cond.loopexit, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv6
  %2 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !13
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !13
  %mul = shl nsw i32 %3, 1
  %cmp16 = icmp eq i32 %2, %mul
  %mul21 = shl nsw i32 %2, 1
  %cmp22 = icmp eq i32 %3, %mul21
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  %inc24 = zext i1 %or.cond to i32
  %NO.2 = add nsw i32 %NO.1, %inc24
  %indvars.iv.next7 = add nuw nsw i64 %indvars.iv6, 1
  br label %for.cond9, !llvm.loop !14

for.end29:                                        ; preds = %for.cond
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %NO.0) #6
  br label %while.body, !llvm.loop !15

while.end31:                                      ; preds = %while.body
  %call32 = call i32 @getchar() #6
  %call33 = call i32 @getchar() #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %tmp) #6
  call void @llvm.lifetime.end.p0(i64 noundef 60, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nofree nounwind uwtable
declare noundef i32 @getchar() local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
