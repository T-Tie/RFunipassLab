; ModuleID = '<stdin>'
source_filename = "/tmp/tmpy6c64s_e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %1
  br i1 %cmp.not.not, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %sub10 = add nsw i32 %0, -1
  %2 = sext i32 %sub10 to i64
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc25
  %indvars.iv16 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next17, %for.inc25 ]
  %exitcond.not = icmp eq i64 %indvars.iv16, %wide.trip.count
  br i1 %exitcond.not, label %for.end27, label %for.body5

for.body5:                                        ; preds = %for.cond2
  %arrayidx7 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv16
  %3 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %cmp8 = icmp eq i32 %3, 0
  br i1 %cmp8, label %for.inc25, label %for.cond9

for.cond9:                                        ; preds = %for.body5, %for.cond9.backedge
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.cond9.backedge ], [ %indvars.iv16, %for.body5 ]
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %cmp11.not.not = icmp slt i64 %indvars.iv18, %2
  br i1 %cmp11.not.not, label %for.body12, label %for.inc25

for.body12:                                       ; preds = %for.cond9
  %4 = load i32, ptr %arrayidx7, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv.next19
  %5 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17 = icmp eq i32 %4, %5
  br i1 %cmp17, label %if.then18, label %for.cond9.backedge

for.cond9.backedge:                               ; preds = %for.body12, %if.then18
  br label %for.cond9, !llvm.loop !12

if.then18:                                        ; preds = %for.body12
  store i32 0, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.cond9.backedge

for.inc25:                                        ; preds = %for.cond9, %for.body5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond2, !llvm.loop !13

for.end27:                                        ; preds = %for.cond2
  %6 = load i32, ptr %a, align 16, !tbaa !5
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  br label %for.cond30

for.cond30:                                       ; preds = %for.inc42, %for.end27
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc42 ], [ 1, %for.end27 ]
  %7 = load i32, ptr %n, align 4, !tbaa !5
  %8 = sext i32 %7 to i64
  %cmp32.not.not = icmp slt i64 %indvars.iv23, %8
  br i1 %cmp32.not.not, label %for.body33, label %for.end44

for.body33:                                       ; preds = %for.cond30
  %arrayidx35 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv23
  %9 = load i32, ptr %arrayidx35, align 4, !tbaa !5
  %cmp36.not = icmp eq i32 %9, 0
  br i1 %cmp36.not, label %for.inc42, label %if.then37

if.then37:                                        ; preds = %for.body33
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9)
  br label %for.inc42

for.inc42:                                        ; preds = %for.body33, %if.then37
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond30, !llvm.loop !14

for.end44:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!14 = distinct !{!14, !10, !11}
