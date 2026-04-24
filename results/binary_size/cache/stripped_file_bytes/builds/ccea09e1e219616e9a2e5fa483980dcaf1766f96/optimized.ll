; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkca5ufs_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %0, 0
  br i1 %cmp25, label %for.body, label %for.end43

for.cond3.preheader:                              ; preds = %for.body
  %cmp4.not29 = icmp slt i32 %1, 1
  br i1 %cmp4.not29, label %for.end43, label %for.cond6.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %N, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond3.preheader, !llvm.loop !9

for.cond6.preheader:                              ; preds = %for.cond3.preheader, %for.inc27
  %indvars.iv44.in = phi i32 [ %indvars.iv44, %for.inc27 ], [ %1, %for.cond3.preheader ]
  %k2.030 = phi i32 [ %inc28, %for.inc27 ], [ 1, %for.cond3.preheader ]
  %indvars.iv44 = add i32 %indvars.iv44.in, -1
  %cmp727 = icmp sgt i32 %1, %k2.030
  br i1 %cmp727, label %for.body8.preheader, label %for.inc27

for.body8.preheader:                              ; preds = %for.cond6.preheader
  %wide.trip.count = zext i32 %indvars.iv44 to i64
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  br label %for.body8

for.body32.preheader:                             ; preds = %for.inc27
  %wide.trip.count50 = zext nneg i32 %1 to i64
  br label %for.body32

for.body8:                                        ; preds = %for.body8.preheader, %for.inc24
  %3 = phi i32 [ %.pre, %for.body8.preheader ], [ %5, %for.inc24 ]
  %indvars.iv41 = phi i64 [ 0, %for.body8.preheader ], [ %indvars.iv.next42, %for.inc24 ]
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %arrayidx12 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv.next42
  %4 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %3, %4
  br i1 %cmp13, label %if.then, label %for.inc24

if.then:                                          ; preds = %for.body8
  %arrayidx10 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv41
  store i32 %3, ptr %arrayidx12, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx10, align 4, !tbaa !5
  br label %for.inc24

for.inc24:                                        ; preds = %for.body8, %if.then
  %5 = phi i32 [ %4, %for.body8 ], [ %3, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv.next42, %wide.trip.count
  br i1 %exitcond.not, label %for.inc27, label %for.body8, !llvm.loop !12

for.inc27:                                        ; preds = %for.inc24, %for.cond6.preheader
  %inc28 = add nuw i32 %k2.030, 1
  %exitcond46.not = icmp eq i32 %k2.030, %1
  br i1 %exitcond46.not, label %for.body32.preheader, label %for.cond6.preheader, !llvm.loop !13

for.body32:                                       ; preds = %for.body32.preheader, %for.inc41
  %indvars.iv47 = phi i64 [ 0, %for.body32.preheader ], [ %indvars.iv.next48, %for.inc41 ]
  %arrayidx34 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv47
  %6 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %7 = and i32 %6, -2147483647
  %cmp35 = icmp eq i32 %7, 1
  br i1 %cmp35, label %if.then36, label %for.inc41

if.then36:                                        ; preds = %for.body32
  %8 = trunc nuw nsw i64 %indvars.iv47 to i32
  %call39 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %6)
  %.pre55 = load i32, ptr %N, align 4, !tbaa !5
  br label %for.end43

for.inc41:                                        ; preds = %for.body32
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count50
  br i1 %exitcond51.not, label %for.end43, label %for.body32, !llvm.loop !14

for.end43:                                        ; preds = %for.inc41, %entry, %for.cond3.preheader, %if.then36
  %9 = phi i32 [ %.pre55, %if.then36 ], [ %1, %for.cond3.preheader ], [ %0, %entry ], [ %1, %for.inc41 ]
  %first.023 = phi i32 [ %8, %if.then36 ], [ 0, %for.cond3.preheader ], [ 0, %entry ], [ %1, %for.inc41 ]
  %i.234 = add nuw nsw i32 %first.023, 1
  %cmp4635 = icmp slt i32 %i.234, %9
  br i1 %cmp4635, label %for.body47.preheader, label %for.end59

for.body47.preheader:                             ; preds = %for.end43
  %10 = zext i32 %first.023 to i64
  %11 = add nuw nsw i64 %10, 1
  br label %for.body47

for.body47:                                       ; preds = %for.body47.preheader, %for.inc57
  %12 = phi i32 [ %9, %for.body47.preheader ], [ %15, %for.inc57 ]
  %indvars.iv52 = phi i64 [ %11, %for.body47.preheader ], [ %indvars.iv.next53, %for.inc57 ]
  %arrayidx49 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv52
  %13 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %14 = and i32 %13, -2147483647
  %cmp51 = icmp eq i32 %14, 1
  br i1 %cmp51, label %if.then52, label %for.inc57

if.then52:                                        ; preds = %for.body47
  %call55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %13)
  %.pre56 = load i32, ptr %N, align 4, !tbaa !5
  br label %for.inc57

for.inc57:                                        ; preds = %for.body47, %if.then52
  %15 = phi i32 [ %12, %for.body47 ], [ %.pre56, %if.then52 ]
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %16 = trunc nuw i64 %indvars.iv.next53 to i32
  %cmp46 = icmp sgt i32 %15, %16
  br i1 %cmp46, label %for.body47, label %for.end59, !llvm.loop !15

for.end59:                                        ; preds = %for.inc57, %for.end43
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
