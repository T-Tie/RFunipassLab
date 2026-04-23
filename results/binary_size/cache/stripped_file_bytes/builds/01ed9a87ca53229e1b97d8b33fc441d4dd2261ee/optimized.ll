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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %s) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %k) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp30 = icmp sgt i32 %0, 0
  br i1 %cmp30, label %for.body, label %if.else.thread

for.cond2.preheader:                              ; preds = %for.body
  %cmp332 = icmp sgt i32 %1, 0
  br i1 %cmp332, label %for.body4.preheader, label %if.else.thread

for.body4.preheader:                              ; preds = %for.cond2.preheader
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %for.body4

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond16.preheader:                             ; preds = %for.inc13
  %cmp17.not38 = icmp slt i32 %z.1, 1
  br i1 %cmp17.not38, label %if.else.thread, label %for.cond19.preheader.preheader

for.cond19.preheader.preheader:                   ; preds = %for.cond16.preheader
  %3 = zext nneg i32 %z.1 to i64
  %4 = add nuw i32 %z.1, 1
  %wide.trip.count58 = zext i32 %4 to i64
  br label %for.cond19.preheader

for.body4:                                        ; preds = %for.body4.preheader, %for.inc13
  %indvars.iv44 = phi i64 [ 0, %for.body4.preheader ], [ %indvars.iv.next45, %for.inc13 ]
  %z.033 = phi i32 [ 0, %for.body4.preheader ], [ %z.1, %for.inc13 ]
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %s, i64 0, i64 %indvars.iv44
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %6 = and i32 %5, -2147483647
  %cmp7 = icmp eq i32 %6, 1
  br i1 %cmp7, label %if.then, label %for.inc13

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %z.033 to i64
  %arrayidx11 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %idxprom10
  store i32 %5, ptr %arrayidx11, align 4, !tbaa !5
  %inc12 = add nsw i32 %z.033, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %z.1 = phi i32 [ %inc12, %if.then ], [ %z.033, %for.body4 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count
  br i1 %exitcond.not, label %for.cond16.preheader, label %for.body4, !llvm.loop !12

for.cond19.preheader:                             ; preds = %for.cond19.preheader.preheader, %for.inc46
  %indvars.iv54 = phi i64 [ 1, %for.cond19.preheader.preheader ], [ %indvars.iv.next55, %for.inc46 ]
  %indvars.iv50.in = phi i32 [ %z.1, %for.cond19.preheader.preheader ], [ %indvars.iv50, %for.inc46 ]
  %indvars.iv50 = add i32 %indvars.iv50.in, -1
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv50, i32 0)
  %7 = add nuw i32 %smax, 1
  %8 = sub nsw i64 %3, %indvars.iv54
  %arrayidx36 = getelementptr inbounds [100 x i32], ptr %k, i64 0, i64 %8
  %wide.trip.count52 = zext i32 %7 to i64
  %9 = trunc nsw i64 %8 to i32
  br label %for.body21

for.body21:                                       ; preds = %for.cond19.preheader, %for.inc43
  %indvars.iv47 = phi i64 [ 0, %for.cond19.preheader ], [ %indvars.iv.next48, %for.inc43 ]
  %m.036 = phi i32 [ 0, %for.cond19.preheader ], [ %spec.select, %for.inc43 ]
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %indvars.iv47
  %10 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %idxprom24 = zext nneg i32 %m.036 to i64
  %arrayidx25 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %idxprom24
  %11 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp sgt i32 %10, %11
  %12 = trunc nuw nsw i64 %indvars.iv47 to i32
  %spec.select = select i1 %cmp26, i32 %12, i32 %m.036
  %cmp30.not = icmp eq i32 %spec.select, %9
  br i1 %cmp30.not, label %for.inc43, label %if.then31

if.then31:                                        ; preds = %for.body21
  %idxprom32 = zext nneg i32 %spec.select to i64
  %arrayidx33 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %idxprom32
  %13 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %14 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  store i32 %14, ptr %arrayidx33, align 4, !tbaa !5
  store i32 %13, ptr %arrayidx36, align 4, !tbaa !5
  br label %for.inc43

for.inc43:                                        ; preds = %for.body21, %if.then31
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count52
  br i1 %exitcond53.not, label %for.inc46, label %for.body21, !llvm.loop !13

for.inc46:                                        ; preds = %for.inc43
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next55, %wide.trip.count58
  br i1 %exitcond59.not, label %for.end48, label %for.cond19.preheader, !llvm.loop !14

if.else.thread:                                   ; preds = %entry, %for.cond2.preheader, %for.cond16.preheader
  %15 = load i32, ptr %k, align 16, !tbaa !5
  %call5474 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %15)
  br label %if.end64

for.end48:                                        ; preds = %for.inc46
  %16 = load i32, ptr %k, align 16, !tbaa !5
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %16)
  %cmp5640.not = icmp eq i32 %z.1, 1
  br i1 %cmp5640.not, label %if.end64, label %for.body57.preheader

for.body57.preheader:                             ; preds = %for.end48
  %wide.trip.count63 = zext nneg i32 %z.1 to i64
  br label %for.body57

for.body57:                                       ; preds = %for.body57.preheader, %for.body57
  %indvars.iv60 = phi i64 [ 1, %for.body57.preheader ], [ %indvars.iv.next61, %for.body57 ]
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %k, i64 0, i64 %indvars.iv60
  %17 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  %call60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %17)
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %if.end64, label %for.body57, !llvm.loop !15

if.end64:                                         ; preds = %for.body57, %for.end48, %if.else.thread
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %k) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %s) #5
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
!15 = distinct !{!15, !10, !11}
