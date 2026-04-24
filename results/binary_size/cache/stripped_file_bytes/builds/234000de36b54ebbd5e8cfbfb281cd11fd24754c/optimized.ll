; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnuk1qlk2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  %tmp = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end29, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %tmp)
  %0 = load i32, ptr %tmp, align 4, !tbaa !5
  store i32 %0, ptr %a, align 16, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %while.end31, label %while.cond1

while.cond1:                                      ; preds = %while.cond, %if.end6
  %indvars.iv24 = phi i32 [ %indvars.iv.next25, %if.end6 ], [ 0, %while.cond ]
  %indvars.iv19 = phi i32 [ %indvars.iv.next20, %if.end6 ], [ 1, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end6 ], [ 0, %while.cond ]
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %tmp)
  %1 = load i32, ptr %tmp, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %for.cond.preheader, label %if.end6

for.cond.preheader:                               ; preds = %while.cond1
  %wide.trip.count26 = zext i32 %indvars.iv24 to i64
  %wide.trip.count = zext i32 %indvars.iv19 to i64
  br label %for.cond

if.end6:                                          ; preds = %while.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx7 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv.next
  store i32 %1, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next20 = add nuw i32 %indvars.iv19, 1
  %indvars.iv.next25 = add nuw i32 %indvars.iv24, 1
  br label %while.cond1, !llvm.loop !9

for.cond.loopexit:                                ; preds = %for.cond9
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond, !llvm.loop !12

for.cond:                                         ; preds = %for.cond.loopexit, %for.cond.preheader
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.cond.loopexit ], [ 0, %for.cond.preheader ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.cond.loopexit ], [ 1, %for.cond.preheader ]
  %NO.0 = phi i32 [ %NO.1, %for.cond.loopexit ], [ 0, %for.cond.preheader ]
  %exitcond27.not = icmp eq i64 %indvars.iv21, %wide.trip.count26
  br i1 %exitcond27.not, label %for.end29, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx15 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv21
  br label %for.cond9

for.cond9:                                        ; preds = %for.body11, %for.body
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.body11 ], [ %indvars.iv14, %for.body ]
  %NO.1 = phi i32 [ %NO.2, %for.body11 ], [ %NO.0, %for.body ]
  %exitcond = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond, label %for.cond.loopexit, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv16
  %2 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp16 = icmp eq i32 %2, %mul
  %mul21 = shl nsw i32 %2, 1
  %cmp22 = icmp eq i32 %3, %mul21
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  %inc24 = zext i1 %or.cond to i32
  %NO.2 = add nsw i32 %NO.1, %inc24
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond9, !llvm.loop !13

for.end29:                                        ; preds = %for.cond
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %NO.0)
  br label %while.cond, !llvm.loop !14

while.end31:                                      ; preds = %while.cond
  %4 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i = call i32 @getc(ptr noundef %4)
  %5 = load ptr, ptr @stdin, align 8, !tbaa !15
  %call.i12 = call i32 @getc(ptr noundef %5)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %a) #4
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
declare noundef i32 @getc(ptr noundef captures(none)) local_unnamed_addr #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = !{!16, !16, i64 0}
!16 = !{!"p1 _ZTS8_IO_FILE", !17, i64 0}
!17 = !{!"any pointer", !7, i64 0}
