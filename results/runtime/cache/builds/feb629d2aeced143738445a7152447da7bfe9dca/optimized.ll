; ModuleID = '<stdin>'
source_filename = "/tmp/tmpurvoud5b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [400 x i32], align 16
  %b = alloca [400 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1600) %a, i8 0, i64 1600, i1 false)
  call void @llvm.lifetime.start.p0(i64 1600, ptr nonnull %b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1600) %b, i8 0, i64 1600, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [400 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %a, align 16, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %2)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 1)
  %wide.trip.count21 = zext nneg i32 %smax to i64
  br label %for.cond4

for.cond4:                                        ; preds = %for.inc21, %for.end
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc21 ], [ 1, %for.end ]
  %exitcond22.not = icmp eq i64 %indvars.iv18, %wide.trip.count21
  br i1 %exitcond22.not, label %for.cond24, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond4
  %arrayidx11 = getelementptr inbounds nuw [400 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [400 x i32], ptr %b, i64 0, i64 %indvars.iv18
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %for.inc18
  %indvars.iv15 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next16, %for.inc18 ]
  %exitcond.not = icmp eq i64 %indvars.iv15, %indvars.iv18
  br i1 %exitcond.not, label %for.inc21, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx13 = getelementptr inbounds nuw [400 x i32], ptr %a, i64 0, i64 %indvars.iv15
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %4, %5
  br i1 %cmp14, label %if.then, label %for.inc18

if.then:                                          ; preds = %for.body9
  %6 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %inc17 = add nsw i32 %6, 1
  store i32 %inc17, ptr %arrayidx16, align 4, !tbaa !5
  br label %for.inc18

for.inc18:                                        ; preds = %for.body9, %if.then
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1
  br label %for.cond7, !llvm.loop !12

for.inc21:                                        ; preds = %for.cond7
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond4, !llvm.loop !13

for.cond24:                                       ; preds = %for.cond4, %for.inc35
  %.pre26 = phi i32 [ %.pre, %for.inc35 ], [ %3, %for.cond4 ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc35 ], [ 1, %for.cond4 ]
  %7 = sext i32 %.pre26 to i64
  %cmp25 = icmp slt i64 %indvars.iv23, %7
  br i1 %cmp25, label %for.body26, label %for.end37

for.body26:                                       ; preds = %for.cond24
  %arrayidx28 = getelementptr inbounds nuw [400 x i32], ptr %b, i64 0, i64 %indvars.iv23
  %8 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %cmp29 = icmp eq i32 %8, 0
  br i1 %cmp29, label %if.then30, label %for.inc35

if.then30:                                        ; preds = %for.body26
  %arrayidx32 = getelementptr inbounds nuw [400 x i32], ptr %a, i64 0, i64 %indvars.iv23
  %9 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9)
  %.pre.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %for.body26, %if.then30
  %.pre = phi i32 [ %.pre26, %for.body26 ], [ %.pre.pre, %if.then30 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond24, !llvm.loop !14

for.end37:                                        ; preds = %for.cond24
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 1600, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
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
