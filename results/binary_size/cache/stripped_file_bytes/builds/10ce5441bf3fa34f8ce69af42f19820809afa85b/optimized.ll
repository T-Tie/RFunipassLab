; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyj0rs_v4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %s = alloca [100 x i32], align 16
  %k = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %s) #5
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %k) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv32 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next33, %for.inc13 ]
  %z.0 = phi i32 [ 0, %for.cond2.preheader ], [ %z.1, %for.inc13 ]
  %exitcond.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4

for.cond16.preheader:                             ; preds = %for.cond2
  %2 = sext i32 %z.0 to i64
  %smax44 = call i32 @llvm.smax.i32(i32 %z.0, i32 noundef 0)
  %3 = add nuw i32 %smax44, 1
  %wide.trip.count45 = zext i32 %3 to i64
  br label %for.cond16

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv32
  %4 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %5 = and i32 %4, -2147483647
  %cmp7 = icmp eq i32 %5, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %z.0 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom10
  store i32 %4, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %z.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %z.1 = phi i32 [ %inc12, %if.then ], [ %z.0, %for.body4 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond2, !llvm.loop !13

for.cond16:                                       ; preds = %for.cond16.preheader, %for.inc46
  %indvars.iv54 = phi i64 [ %2, %for.cond16.preheader ], [ %indvars.iv.next55, %for.inc46 ]
  %indvars.iv39 = phi i64 [ 1, %for.cond16.preheader ], [ %indvars.iv.next40, %for.inc46 ]
  %smax56 = call i64 @llvm.smax.i64(i64 %indvars.iv54, i64 noundef 0)
  %exitcond46 = icmp eq i64 %indvars.iv39, %wide.trip.count45
  br i1 %exitcond46, label %for.end48, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.cond16
  %6 = sub nsw i64 %2, %indvars.iv39
  %arrayidx36 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %6
  %7 = trunc nsw i64 %6 to i32
  br label %for.cond19

for.cond19:                                       ; preds = %for.cond19.preheader, %for.inc43
  %indvars.iv36 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next37, %for.inc43 ]
  %m.0 = phi i32 [ 0, %for.cond19.preheader ], [ %spec.select, %for.inc43 ]
  %exitcond = icmp eq i64 %indvars.iv36, %smax56
  br i1 %exitcond, label %for.inc46, label %for.body21

for.body21:                                       ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %indvars.iv36
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !12
  %idxprom24 = zext nneg i32 %m.0 to i64
  %arrayidx25 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %idxprom24
  %9 = load i32, ptr %arrayidx25, align 4, !tbaa !5, !invariant.load !12
  %cmp26 = icmp sgt i32 %8, %9
  %10 = trunc nuw nsw i64 %indvars.iv36 to i32
  %spec.select = select i1 %cmp26, i32 %10, i32 %m.0
  %cmp30.not = icmp eq i32 %spec.select, %7
  br i1 %cmp30.not, label %for.inc43, label %if.then31

if.then31:                                        ; preds = %for.body21
  %idxprom32 = zext nneg i32 %spec.select to i64
  %arrayidx33 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %idxprom32
  %11 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %12 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  store i32 %12, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %11, ptr %arrayidx36, align 4, !tbaa !5
  br label %for.inc43

for.inc43:                                        ; preds = %for.body21, %if.then31
  %indvars.iv.next37 = add nuw nsw i64 %indvars.iv36, 1
  br label %for.cond19, !llvm.loop !14

for.inc46:                                        ; preds = %for.cond19
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %indvars.iv.next55 = add nsw i64 %indvars.iv54, -1
  br label %for.cond16, !llvm.loop !15

for.end48:                                        ; preds = %for.cond16
  %cmp49 = icmp eq i32 %z.0, 1
  %13 = load i32, ptr %k, align 16, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %13) #6
  br i1 %cmp49, label %if.end64, label %if.else

if.else:                                          ; preds = %for.end48
  %smax51 = call i32 @llvm.smax.i32(i32 %z.0, i32 noundef 1)
  %wide.trip.count52 = zext nneg i32 %smax51 to i64
  br label %for.cond55

for.cond55:                                       ; preds = %for.inc61, %if.else
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc61 ], [ 1, %if.else ]
  %exitcond53.not = icmp eq i64 %indvars.iv47, %wide.trip.count52
  br i1 %exitcond53.not, label %if.end64, label %for.inc61

for.inc61:                                        ; preds = %for.cond55
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %indvars.iv47
  %14 = load i32, ptr %arrayidx59, align 4, !tbaa !5, !invariant.load !12
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14) #6
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond55, !llvm.loop !16

if.end64:                                         ; preds = %for.cond55, %for.end48
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %k) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %s) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
