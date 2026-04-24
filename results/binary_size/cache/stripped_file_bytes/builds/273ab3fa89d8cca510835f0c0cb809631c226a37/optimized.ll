; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwtr1nk6c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %3, 0
  br i1 %cmp22, label %for.body, label %for.end55

for.cond2.preheader:                              ; preds = %for.body
  %cmp3.not26 = icmp slt i32 %6, 1
  br i1 %cmp3.not26, label %for.end55, label %for.cond5.preheader.preheader

for.cond5.preheader.preheader:                    ; preds = %for.cond2.preheader
  %4 = zext nneg i32 %6 to i64
  %5 = add nuw i32 %6, 1
  %wide.trip.count41 = zext i32 %5 to i64
  br label %for.cond5.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %6 = load i32, ptr %n, align 4, !tbaa !5
  %7 = sext i32 %6 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond5.preheader:                              ; preds = %for.cond5.preheader.preheader, %for.inc30
  %indvars.iv37 = phi i64 [ 1, %for.cond5.preheader.preheader ], [ %indvars.iv.next38, %for.inc30 ]
  %indvars.iv35.in = phi i32 [ %6, %for.cond5.preheader.preheader ], [ %indvars.iv35, %for.inc30 ]
  %indvars.iv35 = add i32 %indvars.iv35.in, -1
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv35, i32 0)
  %8 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %8 to i64
  br label %for.body7

for.body7:                                        ; preds = %for.cond5.preheader, %for.body7
  %indvars.iv32 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next33, %for.body7 ]
  %max.025 = phi i32 [ 0, %for.cond5.preheader ], [ %spec.select, %for.body7 ]
  %arrayidx9 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv32
  %9 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %idxprom10 = zext nneg i32 %max.025 to i64
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom10
  %10 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp sgt i32 %9, %10
  %11 = trunc nuw nsw i64 %indvars.iv32 to i32
  %spec.select = select i1 %cmp12, i32 %11, i32 %max.025
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond.not, label %for.end15, label %for.body7, !llvm.loop !12

for.end15:                                        ; preds = %for.body7
  %12 = sub nsw i64 %4, %indvars.iv37
  %13 = trunc nsw i64 %12 to i32
  %cmp17.not = icmp eq i32 %spec.select, %13
  br i1 %cmp17.not, label %for.inc30, label %if.then18

if.then18:                                        ; preds = %for.end15
  %idxprom19 = zext nneg i32 %spec.select to i64
  %arrayidx20 = getelementptr inbounds nuw i32, ptr %vla, i64 %idxprom19
  %14 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds i32, ptr %vla, i64 %12
  %15 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %15, ptr %arrayidx20, align 4, !tbaa !5
  store i32 %14, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc30

for.inc30:                                        ; preds = %for.end15, %if.then18
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count41
  br i1 %exitcond42.not, label %for.body35, label %for.cond5.preheader, !llvm.loop !13

for.body35:                                       ; preds = %for.inc30, %for.inc53
  %indvars.iv43 = phi i64 [ %indvars.iv.next44, %for.inc53 ], [ 0, %for.inc30 ]
  %16 = phi i32 [ %21, %for.inc53 ], [ %6, %for.inc30 ]
  %arrayidx37 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv43
  %17 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %18 = and i32 %17, -2147483647
  %cmp38 = icmp eq i32 %18, 1
  br i1 %cmp38, label %if.then39, label %for.inc53

if.then39:                                        ; preds = %for.body35
  %sub40 = add nsw i32 %16, -2
  %19 = zext i32 %sub40 to i64
  %cmp41 = icmp eq i64 %indvars.iv43, %19
  %sub42 = add nsw i32 %16, -1
  %20 = zext i32 %sub42 to i64
  %cmp43 = icmp eq i64 %indvars.iv43, %20
  %or.cond = select i1 %cmp41, i1 true, i1 %cmp43
  %.str..str.1 = select i1 %or.cond, ptr @.str, ptr @.str.1
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %.str..str.1, i32 noundef %17)
  br label %for.inc53

for.inc53:                                        ; preds = %if.then39, %for.body35
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %21 = load i32, ptr %n, align 4, !tbaa !5
  %22 = sext i32 %21 to i64
  %cmp34 = icmp slt i64 %indvars.iv.next44, %22
  br i1 %cmp34, label %for.body35, label %for.end55, !llvm.loop !14

for.end55:                                        ; preds = %for.inc53, %entry, %for.cond2.preheader
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
