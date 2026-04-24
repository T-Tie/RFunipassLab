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
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.else, %entry
  %i.0.ph = phi i32 [ %4, %if.else ], [ 1, %entry ]
  %wide.trip.count = zext nneg i32 %i.0.ph to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %if.then8
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp = icmp slt i32 %i.0.ph, %0
  br i1 %cmp, label %for.body, label %for.cond16

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %f)
  %1 = load i32, ptr %f, align 4
  br label %for.cond3

for.cond3:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.else, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx6 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp7 = icmp eq i32 %1, %2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %cmp7, label %if.then8, label %for.cond3, !llvm.loop !9

if.then8:                                         ; preds = %for.body5
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %dec9 = add nsw i32 %3, -1
  store i32 %dec9, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !12

if.else:                                          ; preds = %for.cond3
  %idxprom10 = zext nneg i32 %i.0.ph to i64
  %arrayidx11 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %idxprom10
  store i32 %1, ptr %arrayidx11, align 4, !tbaa !5
  %4 = add nuw nsw i32 %i.0.ph, 1
  br label %for.cond.outer, !llvm.loop !12

for.cond16:                                       ; preds = %for.cond, %for.inc32
  %.pre19 = phi i32 [ %.pre, %for.inc32 ], [ %0, %for.cond ]
  %indvars.iv14 = phi i64 [ %indvars.iv.next15, %for.inc32 ], [ 0, %for.cond ]
  %5 = sext i32 %.pre19 to i64
  %cmp17 = icmp slt i64 %indvars.iv14, %5
  br i1 %cmp17, label %for.body18, label %for.end34

for.body18:                                       ; preds = %for.cond16
  %sub = add nsw i32 %.pre19, -1
  %6 = zext i32 %sub to i64
  %cmp19.not = icmp eq i64 %indvars.iv14, %6
  br i1 %cmp19.not, label %if.end24, label %if.then20

if.then20:                                        ; preds = %for.body18
  %arrayidx22 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %indvars.iv14
  %7 = load i32, ptr %arrayidx22, align 4, !tbaa !5
  %call23 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  %.pre17 = load i32, ptr %n, align 4, !tbaa !5
  %.pre21 = add nsw i32 %.pre17, -1
  %.pre22 = zext i32 %.pre21 to i64
  br label %if.end24

if.end24:                                         ; preds = %if.then20, %for.body18
  %.pre-phi = phi i64 [ %.pre22, %if.then20 ], [ %6, %for.body18 ]
  %.pre18 = phi i32 [ %.pre17, %if.then20 ], [ %.pre19, %for.body18 ]
  %cmp26 = icmp eq i64 %indvars.iv14, %.pre-phi
  br i1 %cmp26, label %if.then27, label %for.inc32

if.then27:                                        ; preds = %if.end24
  %arrayidx29 = getelementptr inbounds nuw [300 x i32], ptr %sz, i64 0, i64 %indvars.iv14
  %8 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %call30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %if.end24, %if.then27
  %.pre = phi i32 [ %.pre18, %if.end24 ], [ %.pre.pre, %if.then27 ]
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond16, !llvm.loop !13

for.end34:                                        ; preds = %for.cond16
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
