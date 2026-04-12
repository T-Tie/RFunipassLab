; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz3y67r2d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [501 x i32], align 16
  %b = alloca [501 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2004, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2004, ptr noundef nonnull align 16 %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %j.0 = phi i32 [ %j.1, %for.inc ], [ 0, %entry ]
  %num.0 = phi i32 [ %num.1, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond
  %wide.trip.count = zext i32 %num.0 to i64
  br label %for.cond11

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [501 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %3 = and i32 %2, 1
  %cmp4.not = icmp eq i32 %3, 0
  br i1 %cmp4.not, label %for.inc, label %if.then

if.then:                                          ; preds = %for.body
  %idxprom7 = sext i32 %j.0 to i64
  %arrayidx8 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %2, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %j.0, 1
  %inc9 = add nsw i32 %num.0, 1
  br label %for.inc

for.inc:                                          ; preds = %for.body, %if.then
  %j.1 = phi i32 [ %inc, %if.then ], [ %j.0, %for.body ]
  %num.1 = phi i32 [ %inc9, %if.then ], [ %num.0, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond11:                                       ; preds = %for.cond14, %for.cond11.preheader
  %.in = phi i32 [ %num.0, %for.cond11.preheader ], [ %4, %for.cond14 ]
  %4 = add nsw i32 %.in, -1
  %cmp12 = icmp sgt i32 %.in, 0
  br i1 %cmp12, label %for.cond14, label %for.cond39.preheader

for.cond39.preheader:                             ; preds = %for.cond11
  %smax = call i32 @llvm.smax.i32(i32 %num.0, i32 noundef 1)
  %wide.trip.count50 = zext nneg i32 %smax to i64
  br label %for.cond39

for.cond14:                                       ; preds = %for.cond11, %for.inc34
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.inc34 ], [ 0, %for.cond11 ]
  %exitcond.not = icmp eq i64 %indvars.iv42, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11, label %for.body16, !llvm.loop !12

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv42
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %arrayidx20 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv.next43
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5, !invariant.load !13
  %cmp21 = icmp sgt i32 %5, %6
  br i1 %cmp21, label %if.then22, label %for.inc34

if.then22:                                        ; preds = %for.body16
  store i32 %5, ptr %arrayidx20, align 4, !tbaa !5
  store i32 %6, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.inc34

for.inc34:                                        ; preds = %for.body16, %if.then22
  br label %for.cond14, !llvm.loop !14

for.cond39:                                       ; preds = %for.cond39.preheader, %for.inc45
  %indvars.iv46 = phi i64 [ 1, %for.cond39.preheader ], [ %indvars.iv.next47, %for.inc45 ]
  %exitcond51.not = icmp eq i64 %indvars.iv46, %wide.trip.count50
  br i1 %exitcond51.not, label %for.end47, label %for.inc45

for.inc45:                                        ; preds = %for.cond39
  %arrayidx43 = getelementptr inbounds nuw [501 x i32], ptr %b, i64 0, i64 %indvars.iv46
  %7 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7) #6
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  br label %for.cond39, !llvm.loop !15

for.end47:                                        ; preds = %for.cond39
  %idxprom48 = sext i32 %num.0 to i64
  %arrayidx49 = getelementptr inbounds [501 x i32], ptr %b, i64 0, i64 %idxprom48
  %8 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %call50 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2004, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2004, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
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
