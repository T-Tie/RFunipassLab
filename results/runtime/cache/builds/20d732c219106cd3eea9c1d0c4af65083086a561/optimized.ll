; ModuleID = '<stdin>'
source_filename = "/tmp/tmpplv93fzw.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %i = alloca i32, align 4
  %num = alloca [15 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %i) #4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %num) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end31, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %i)
  %0 = load i32, ptr %i, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %while.end33, label %if.end

if.end:                                           ; preds = %while.cond
  store i32 %0, ptr %num, align 16, !tbaa !5
  br label %while.cond1

while.cond1:                                      ; preds = %if.end6, %if.end
  %indvars.iv17 = phi i32 [ %indvars.iv.next18, %if.end6 ], [ 0, %if.end ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end6 ], [ 0, %if.end ]
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %i)
  %1 = load i32, ptr %i, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %1, 0
  br i1 %cmp4, label %for.cond.preheader, label %if.end6

for.cond.preheader:                               ; preds = %while.cond1
  %wide.trip.count21 = zext i32 %indvars.iv17 to i64
  br label %for.cond

if.end6:                                          ; preds = %while.cond1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx9 = getelementptr inbounds nuw [15 x i32], ptr %num, i64 0, i64 %indvars.iv.next
  store i32 %1, ptr %arrayidx9, align 4, !tbaa !5
  %indvars.iv.next18 = add nuw i32 %indvars.iv17, 1
  br label %while.cond1, !llvm.loop !9

for.cond:                                         ; preds = %for.cond.preheader, %for.inc29
  %indvars.iv12 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next13, %for.inc29 ]
  %out.0 = phi i32 [ 0, %for.cond.preheader ], [ %out.1, %for.inc29 ]
  %exitcond22.not = icmp eq i64 %indvars.iv12, %wide.trip.count21
  br i1 %exitcond22.not, label %for.end31, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %arrayidx17 = getelementptr inbounds nuw [15 x i32], ptr %num, i64 0, i64 %indvars.iv12
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.preheader, %for.body13
  %indvars.iv14 = phi i64 [ %indvars.iv12, %for.cond11.preheader ], [ %indvars.iv.next15, %for.body13 ]
  %out.1 = phi i32 [ %out.0, %for.cond11.preheader ], [ %out.2, %for.body13 ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %wide.trip.count21
  br i1 %exitcond.not, label %for.inc29, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %arrayidx15 = getelementptr inbounds nuw [15 x i32], ptr %num, i64 0, i64 %indvars.iv.next15
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %3 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp18 = icmp eq i32 %2, %mul
  %mul23 = shl nsw i32 %2, 1
  %cmp24 = icmp eq i32 %3, %mul23
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp24
  %inc26 = zext i1 %or.cond to i32
  %out.2 = add nsw i32 %out.1, %inc26
  br label %for.cond11, !llvm.loop !12

for.inc29:                                        ; preds = %for.cond11
  %indvars.iv.next13 = add nuw nsw i64 %indvars.iv12, 1
  br label %for.cond, !llvm.loop !13

for.end31:                                        ; preds = %for.cond
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %4, ptr %i, align 4, !tbaa !5
  %call32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %out.0)
  br label %while.cond, !llvm.loop !14

while.end33:                                      ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %num) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %i) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
