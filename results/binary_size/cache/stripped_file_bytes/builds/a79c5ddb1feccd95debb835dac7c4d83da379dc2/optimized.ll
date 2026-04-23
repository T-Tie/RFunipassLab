; ModuleID = '<stdin>'
source_filename = "/tmp/tmpmbqkhuy7.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %w = alloca [300 x i32], align 16
  %s = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef nonnull align 16 %w) #4
  call void @llvm.lifetime.start.p0(i64 noundef 1200, ptr noundef nonnull align 16 %s) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %w)
  br label %for.cond

for.cond:                                         ; preds = %for.inc22, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc22 ], [ 1, %entry ]
  %k.0 = phi i32 [ %k.1, %for.inc22 ], [ 1, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond
  %sub26 = add nsw i32 %k.0, -1
  %smax = call i32 @llvm.smax.i32(i32 %sub26, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond25

for.body:                                         ; preds = %for.cond
  %arrayidx4 = getelementptr inbounds nuw [300 x i32], ptr %w, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx4)
  %2 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  br label %for.cond6

for.cond6:                                        ; preds = %for.body8, %for.body
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.body8 ], [ %indvars.iv, %for.body ]
  %f.1 = phi i32 [ %spec.select, %for.body8 ], [ 0, %for.body ]
  %cmp7 = icmp sgt i64 %indvars.iv6, 0
  br i1 %cmp7, label %for.body8, label %for.end

for.body8:                                        ; preds = %for.cond6
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, -1
  %arrayidx10 = getelementptr inbounds nuw [300 x i32], ptr %w, i64 0, i64 %indvars.iv.next7
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5, !invariant.load !9
  %cmp13 = icmp eq i32 %3, %2
  %spec.select = select i1 %cmp13, i32 1, i32 %f.1
  br label %for.cond6, !llvm.loop !10

for.end:                                          ; preds = %for.cond6
  %cmp14 = icmp eq i32 %f.1, 0
  br i1 %cmp14, label %if.then15, label %for.inc22

if.then15:                                        ; preds = %for.end
  %idxprom18 = sext i32 %k.0 to i64
  %arrayidx19 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom18
  store i32 %2, ptr %arrayidx19, align 4, !tbaa !5
  %inc20 = add nsw i32 %k.0, 1
  br label %for.inc22

for.inc22:                                        ; preds = %for.end, %if.then15
  %k.1 = phi i32 [ %inc20, %if.then15 ], [ %k.0, %for.end ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !13

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc32
  %indvars.iv10 = phi i64 [ 0, %for.cond25.preheader ], [ %indvars.iv.next11, %for.inc32 ]
  %exitcond.not = icmp eq i64 %indvars.iv10, %wide.trip.count
  br i1 %exitcond.not, label %for.end34, label %for.inc32

for.inc32:                                        ; preds = %for.cond25
  %arrayidx30 = getelementptr inbounds nuw [300 x i32], ptr %s, i64 0, i64 %indvars.iv10
  %4 = load i32, ptr %arrayidx30, align 4, !tbaa !5, !invariant.load !9
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4)
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond25, !llvm.loop !14

for.end34:                                        ; preds = %for.cond25
  %idxprom36 = sext i32 %sub26 to i64
  %arrayidx37 = getelementptr inbounds [300 x i32], ptr %s, i64 0, i64 %idxprom36
  %5 = load i32, ptr %arrayidx37, align 4, !tbaa !5, !invariant.load !9
  %call38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 noundef 1200, ptr noundef nonnull %s) #5
  call void @llvm.lifetime.end.p0(i64 noundef 1200, ptr noundef nonnull %w) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind willreturn }
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
