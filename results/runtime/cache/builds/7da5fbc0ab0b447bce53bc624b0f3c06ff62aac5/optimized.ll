; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn8eldr8n.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [6 x i8] c"%d,%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%d+%d\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x [100 x i32]], align 16
  %row = alloca i32, align 4
  %col = alloca i32, align 4
  %b = alloca [10 x i32], align 16
  %c = alloca [10 x i32], align 16
  %d = alloca [10 x i32], align 16
  %e = alloca [10 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 40000, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %row) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %col) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef nonnull align 16 %b) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef nonnull align 16 %c) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef nonnull align 16 %d) #5
  call void @llvm.lifetime.start.p0(i64 noundef 40, ptr noundef nonnull align 16 %e) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %row, ptr noundef nonnull align 4 %col)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %row, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv8, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %col, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax18 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count19 = zext nneg i32 %smax18 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %3 = load i32, ptr %col, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.inc, label %for.inc7

for.inc:                                          ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv8, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc45
  %indvars.iv14 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next15, %for.inc45 ]
  %exitcond20.not = icmp eq i64 %indvars.iv14, %wide.trip.count19
  br i1 %exitcond20.not, label %for.cond48.preheader, label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.cond10
  %arrayidx30 = getelementptr inbounds nuw [10 x i32], ptr %b, i64 0, i64 %indvars.iv14
  %arrayidx18 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv14
  %arrayidx40 = getelementptr inbounds nuw [10 x i32], ptr %c, i64 0, i64 %indvars.iv14
  %5 = trunc nuw nsw i64 %indvars.iv14 to i32
  br label %for.cond13

for.cond48.preheader:                             ; preds = %for.cond10
  br label %for.cond48

for.cond13:                                       ; preds = %for.cond13.preheader, %for.inc42
  %indvars.iv11 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next12, %for.inc42 ]
  %exitcond.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond.not, label %for.inc45, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %cmp16 = icmp eq i64 %indvars.iv11, 0
  br i1 %cmp16, label %if.then, label %if.else

if.then:                                          ; preds = %for.body15
  %6 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  br label %for.inc42.gvnsink.split

if.else:                                          ; preds = %for.body15
  %arrayidx28 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv14, i64 %indvars.iv11
  %7 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %8 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %7, %8
  br i1 %cmp31, label %for.inc42.gvnsink.split, label %for.inc42

for.inc42.gvnsink.split:                          ; preds = %if.else, %if.then
  %storemerge42 = phi i32 [ %6, %if.then ], [ %7, %if.else ]
  store i32 %storemerge42, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx40, align 4, !tbaa !5
  br label %for.inc42

for.inc42:                                        ; preds = %for.inc42.gvnsink.split, %if.else
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond13, !llvm.loop !13

for.inc45:                                        ; preds = %for.cond13
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  br label %for.cond10, !llvm.loop !14

for.cond48:                                       ; preds = %for.cond48.preheader, %for.inc86
  %indvars.iv26 = phi i64 [ 0, %for.cond48.preheader ], [ %indvars.iv.next27, %for.inc86 ]
  %exitcond31.not = icmp eq i64 %indvars.iv26, %wide.trip.count
  br i1 %exitcond31.not, label %for.cond89, label %for.cond51.preheader

for.cond51.preheader:                             ; preds = %for.cond48
  %arrayidx70 = getelementptr inbounds nuw [10 x i32], ptr %d, i64 0, i64 %indvars.iv26
  %arrayidx59 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv26
  %arrayidx80 = getelementptr inbounds nuw [10 x i32], ptr %e, i64 0, i64 %indvars.iv26
  %9 = trunc nuw nsw i64 %indvars.iv26 to i32
  br label %for.cond51

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc83
  %indvars.iv21 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next22, %for.inc83 ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count19
  br i1 %exitcond25.not, label %for.inc86, label %for.body53

for.body53:                                       ; preds = %for.cond51
  %cmp54 = icmp eq i64 %indvars.iv21, 0
  br i1 %cmp54, label %if.then55, label %if.else64

if.then55:                                        ; preds = %for.body53
  %10 = load i32, ptr %arrayidx59, align 4, !tbaa !5
  br label %for.inc83.gvnsink.split

if.else64:                                        ; preds = %for.body53
  %arrayidx68 = getelementptr inbounds nuw [100 x [100 x i32]], ptr %a, i64 0, i64 %indvars.iv21, i64 %indvars.iv26
  %11 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %12 = load i32, ptr %arrayidx70, align 4, !tbaa !5
  %cmp71 = icmp slt i32 %11, %12
  br i1 %cmp71, label %for.inc83.gvnsink.split, label %for.inc83

for.inc83.gvnsink.split:                          ; preds = %if.else64, %if.then55
  %storemerge = phi i32 [ %10, %if.then55 ], [ %11, %if.else64 ]
  store i32 %storemerge, ptr %arrayidx70, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx80, align 4, !tbaa !5
  br label %for.inc83

for.inc83:                                        ; preds = %for.inc83.gvnsink.split, %if.else64
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond51, !llvm.loop !15

for.inc86:                                        ; preds = %for.cond51
  %indvars.iv.next27 = add nuw nsw i64 %indvars.iv26, 1
  br label %for.cond48, !llvm.loop !16

for.cond89:                                       ; preds = %for.cond48, %for.inc110
  %.pre3839 = phi i32 [ %.pre3840, %for.inc110 ], [ %2, %for.cond48 ]
  %13 = phi i32 [ %.pre, %for.inc110 ], [ %0, %for.cond48 ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc110 ], [ 0, %for.cond48 ]
  %i.0 = phi i32 [ %i.1, %for.inc110 ], [ 0, %for.cond48 ]
  %14 = sext i32 %13 to i64
  %cmp90 = icmp slt i64 %indvars.iv35, %14
  br i1 %cmp90, label %for.cond92.preheader, label %for.end112

for.cond92.preheader:                             ; preds = %for.cond89
  %arrayidx96 = getelementptr inbounds nuw [10 x i32], ptr %b, i64 0, i64 %indvars.iv35
  %arrayidx102 = getelementptr inbounds nuw [10 x i32], ptr %c, i64 0, i64 %indvars.iv35
  br label %for.cond92

for.cond92:                                       ; preds = %for.cond92.preheader, %for.inc107
  %.pre3840 = phi i32 [ %.pre3839, %for.cond92.preheader ], [ %.pre38, %for.inc107 ]
  %indvars.iv32 = phi i64 [ 0, %for.cond92.preheader ], [ %indvars.iv.next33, %for.inc107 ]
  %i.1 = phi i32 [ %i.0, %for.cond92.preheader ], [ %i.2, %for.inc107 ]
  %15 = sext i32 %.pre3840 to i64
  %cmp93 = icmp slt i64 %indvars.iv32, %15
  br i1 %cmp93, label %for.body94, label %for.inc110

for.body94:                                       ; preds = %for.cond92
  %16 = load i32, ptr %arrayidx96, align 4, !tbaa !5
  %arrayidx98 = getelementptr inbounds nuw [10 x i32], ptr %d, i64 0, i64 %indvars.iv32
  %17 = load i32, ptr %arrayidx98, align 4, !tbaa !5
  %cmp99 = icmp eq i32 %16, %17
  br i1 %cmp99, label %if.then100, label %for.inc107

if.then100:                                       ; preds = %for.body94
  %18 = load i32, ptr %arrayidx102, align 4, !tbaa !5
  %arrayidx104 = getelementptr inbounds nuw [10 x i32], ptr %e, i64 0, i64 %indvars.iv32
  %19 = load i32, ptr %arrayidx104, align 4, !tbaa !5
  %call105 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %18, i32 noundef %19) #6
  %.pre38.pre = load i32, ptr %col, align 4, !tbaa !5
  br label %for.inc107

for.inc107:                                       ; preds = %for.body94, %if.then100
  %.pre38 = phi i32 [ %.pre38.pre, %if.then100 ], [ %.pre3840, %for.body94 ]
  %i.2 = phi i32 [ 1, %if.then100 ], [ %i.1, %for.body94 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond92, !llvm.loop !17

for.inc110:                                       ; preds = %for.cond92
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %.pre = load i32, ptr %row, align 4, !tbaa !5
  br label %for.cond89, !llvm.loop !18

for.end112:                                       ; preds = %for.cond89
  %cmp113 = icmp eq i32 %i.0, 0
  br i1 %cmp113, label %if.then114, label %if.end116

if.then114:                                       ; preds = %for.end112
  %call115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) #6
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %for.end112
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef nonnull %e) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef nonnull %d) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %col) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %row) #6
  call void @llvm.lifetime.end.p0(i64 noundef 40000, ptr noundef nonnull %a) #6
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
