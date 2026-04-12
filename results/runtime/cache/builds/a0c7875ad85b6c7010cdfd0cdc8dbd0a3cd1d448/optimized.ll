; ModuleID = '<stdin>'
source_filename = "/tmp/tmpw2j5fm38.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%c%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #4
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond, %for.inc32
  %2 = phi i32 [ %.pre, %for.inc32 ], [ %0, %for.cond ]
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc32 ], [ 0, %for.cond ]
  %3 = sext i32 %2 to i64
  %cmp3 = icmp slt i64 %indvars.iv18, %3
  br i1 %cmp3, label %for.cond5.preheader, label %for.end34

for.cond5.preheader:                              ; preds = %for.cond2
  %arrayidx9 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %.pre21 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.cond5.preheader
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.body7 ], [ 0, %for.cond5.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv15, %indvars.iv18
  br i1 %exitcond.not, label %for.end17, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [300 x i32], ptr %a, i64 0, i64 %indvars.iv15
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %.pre21, %4
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br i1 %cmp12, label %for.end17.thread, label %for.cond5, !llvm.loop !12

for.end17.thread:                                 ; preds = %for.body7
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc32

for.end17:                                        ; preds = %for.cond5
  %cmp20.not = icmp eq i32 %.pre21, 0
  br i1 %cmp20.not, label %for.inc32, label %if.then21

if.then21:                                        ; preds = %for.end17
  %cmp22 = icmp eq i64 %indvars.iv18, 0
  br i1 %cmp22, label %if.then23, label %if.else

if.then23:                                        ; preds = %if.then21
  %call26 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre21)
  br label %for.inc32

if.else:                                          ; preds = %if.then21
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef 44, i32 noundef %.pre21)
  br label %for.inc32

for.inc32:                                        ; preds = %for.end17.thread, %for.end17, %if.else, %if.then23
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond2, !llvm.loop !13

for.end34:                                        ; preds = %for.cond2
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
