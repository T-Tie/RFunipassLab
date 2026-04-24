; ModuleID = '<stdin>'
source_filename = "/tmp/tmpib6jlq58.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [300 x i32], align 16
  %f = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %sz) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %f) #4
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %sz)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %0, 1
  br i1 %cmp15, label %for.body, label %for.cond16.preheader

for.cond16.preheader:                             ; preds = %if.end12, %entry
  %1 = phi i32 [ %0, %entry ], [ %5, %if.end12 ]
  %cmp1717 = icmp sgt i32 %1, 0
  br i1 %cmp1717, label %for.body18, label %for.end34

for.body:                                         ; preds = %entry, %if.end12
  %i.016 = phi i32 [ %i.1, %if.end12 ], [ 1, %entry ]
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %f)
  %cmp4.not13 = icmp sgt i32 %i.016, 0
  %.pre = load i32, ptr %f, align 4, !tbaa !5
  br i1 %cmp4.not13, label %for.body5.lr.ph, label %if.else

for.body5.lr.ph:                                  ; preds = %for.body
  %wide.trip.count = zext nneg i32 %i.016 to i64
  br label %for.body5

for.cond3:                                        ; preds = %for.body5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.else, label %for.body5, !llvm.loop !9

for.body5:                                        ; preds = %for.body5.lr.ph, %for.cond3
  %indvars.iv = phi i64 [ 0, %for.body5.lr.ph ], [ %indvars.iv.next, %for.cond3 ]
  %arrayidx6 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %.pre, %2
  br i1 %cmp7, label %if.then8, label %for.cond3

if.then8:                                         ; preds = %for.body5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %dec9 = add nsw i32 %3, -1
  store i32 %dec9, ptr %n, align 4, !tbaa !5
  br label %if.end12

if.else:                                          ; preds = %for.cond3, %for.body
  %idxprom10 = sext i32 %i.016 to i64
  %arrayidx11 = getelementptr inbounds [300 x i32], ptr %sz, i64 0, i64 %idxprom10
  store i32 %.pre, ptr %arrayidx11, align 4, !tbaa !5
  %4 = add nsw i32 %i.016, 1
  %.pre23 = load i32, ptr %n, align 4, !tbaa !5
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then8
  %5 = phi i32 [ %dec9, %if.then8 ], [ %.pre23, %if.else ]
  %i.1 = phi i32 [ %i.016, %if.then8 ], [ %4, %if.else ]
  %cmp = icmp slt i32 %i.1, %5
  br i1 %cmp, label %for.body, label %for.cond16.preheader, !llvm.loop !12

for.body18:                                       ; preds = %for.cond16.preheader, %for.inc32
  %6 = phi i32 [ %11, %for.inc32 ], [ %1, %for.cond16.preheader ]
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.inc32 ], [ 0, %for.cond16.preheader ]
  %sub = add nsw i32 %6, -1
  %7 = zext i32 %sub to i64
  %cmp19.not = icmp eq i64 %indvars.iv20, %7
  br i1 %cmp19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %for.body18
  %arrayidx22 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %indvars.iv20
  %8 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %call23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %.pre24 = load i32, ptr %n, align 4, !tbaa !5
  %.pre26 = add nsw i32 %.pre24, -1
  %.pre27 = zext i32 %.pre26 to i64
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.body18
  %.pre-phi = phi i64 [ %.pre27, %if.then20 ], [ %7, %for.body18 ]
  %9 = phi i32 [ %.pre24, %if.then20 ], [ %6, %for.body18 ]
  %cmp26 = icmp eq i64 %indvars.iv20, %.pre-phi
  br i1 %cmp26, label %if.then27, label %for.inc32

if.then27:                                        ; preds = %if.end24
  %arrayidx29 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %indvars.iv20
  %10 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %10)
  %.pre25 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %if.end24, %if.then27
  %11 = phi i32 [ %9, %if.end24 ], [ %.pre25, %if.then27 ]
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %12 = sext i32 %11 to i64
  %cmp17 = icmp slt i64 %indvars.iv.next21, %12
  br i1 %cmp17, label %for.body18, label %for.end34, !llvm.loop !13

for.end34:                                        ; preds = %for.inc32, %for.cond16.preheader
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %sz) #4
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
