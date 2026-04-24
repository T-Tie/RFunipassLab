; ModuleID = '<stdin>'
source_filename = "/tmp/tmpwu_043ye.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%d%c%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%d+%d\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %c = alloca i8, align 1
  %s = alloca [8 x [8 x i32]], align 16
  %djl = alloca [8 x i32], align 16
  %djh = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %djl) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %djh) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %m, ptr noundef nonnull %c, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc7, %entry
  %indvars.iv41 = phi i64 [ %indvars.iv.next42, %for.inc7 ], [ 0, %entry ]
  %0 = load i32, ptr %m, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv41, %1
  br i1 %cmp, label %for.cond1, label %for.cond10.preheader

for.cond10.preheader:                             ; preds = %for.cond
  %2 = load i32, ptr %n, align 4
  %smax = call i32 @llvm.smax.i32(i32 %2, i32 0)
  %smax51 = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count52 = zext nneg i32 %smax51 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond10

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp2 = icmp slt i64 %indvars.iv, %4
  br i1 %cmp2, label %for.body3, label %for.inc7

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv41, i64 %indvars.iv
  %call6 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !9

for.inc7:                                         ; preds = %for.cond1
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond, !llvm.loop !12

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc35
  %indvars.iv47 = phi i64 [ 0, %for.cond10.preheader ], [ %indvars.iv.next48, %for.inc35 ]
  %exitcond53.not = icmp eq i64 %indvars.iv47, %wide.trip.count52
  br i1 %exitcond53.not, label %for.cond38.preheader, label %for.body12

for.cond38.preheader:                             ; preds = %for.cond10
  %wide.trip.count63 = zext nneg i32 %smax to i64
  br label %for.cond38

for.body12:                                       ; preds = %for.cond10
  %arrayidx14 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv47
  %5 = load i32, ptr %arrayidx14, align 16, !tbaa !5
  %arrayidx17 = getelementptr inbounds nuw [8 x i32], ptr %djl, i64 0, i64 %indvars.iv47
  store i32 0, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.cond18

for.cond18:                                       ; preds = %for.inc32, %for.body12
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %for.inc32 ], [ 0, %for.body12 ]
  %max.0 = phi i32 [ %max.1, %for.inc32 ], [ %5, %for.body12 ]
  %exitcond.not = icmp eq i64 %indvars.iv44, %wide.trip.count
  br i1 %exitcond.not, label %for.inc35, label %for.body20

for.body20:                                       ; preds = %for.cond18
  %arrayidx24 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv47, i64 %indvars.iv44
  %6 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %cmp25 = icmp sgt i32 %6, %max.0
  br i1 %cmp25, label %if.then, label %for.inc32

if.then:                                          ; preds = %for.body20
  %7 = trunc nuw nsw i64 %indvars.iv44 to i32
  store i32 %7, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.inc32

for.inc32:                                        ; preds = %for.body20, %if.then
  %max.1 = phi i32 [ %6, %if.then ], [ %max.0, %for.body20 ]
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  br label %for.cond18, !llvm.loop !13

for.inc35:                                        ; preds = %for.cond18
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  br label %for.cond10, !llvm.loop !14

for.cond38:                                       ; preds = %for.cond38.preheader, %for.inc65
  %indvars.iv59 = phi i64 [ 0, %for.cond38.preheader ], [ %indvars.iv.next60, %for.inc65 ]
  %exitcond64.not = icmp eq i64 %indvars.iv59, %wide.trip.count63
  br i1 %exitcond64.not, label %for.cond68, label %for.body40

for.body40:                                       ; preds = %for.cond38
  %arrayidx43 = getelementptr inbounds nuw [8 x i32], ptr %s, i64 0, i64 %indvars.iv59
  %8 = load i32, ptr %arrayidx43, align 4, !tbaa !5
  %arrayidx45 = getelementptr inbounds nuw [8 x i32], ptr %djh, i64 0, i64 %indvars.iv59
  store i32 0, ptr %arrayidx45, align 4, !tbaa !5
  br label %for.cond46

for.cond46:                                       ; preds = %for.inc62, %for.body40
  %indvars.iv54 = phi i64 [ %indvars.iv.next55, %for.inc62 ], [ 0, %for.body40 ]
  %min.0 = phi i32 [ %min.1, %for.inc62 ], [ %8, %for.body40 ]
  %exitcond58.not = icmp eq i64 %indvars.iv54, %wide.trip.count52
  br i1 %exitcond58.not, label %for.inc65, label %for.body48

for.body48:                                       ; preds = %for.cond46
  %arrayidx52 = getelementptr inbounds nuw [8 x [8 x i32]], ptr %s, i64 0, i64 %indvars.iv54, i64 %indvars.iv59
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !5
  %cmp53 = icmp slt i32 %9, %min.0
  br i1 %cmp53, label %if.then54, label %for.inc62

if.then54:                                        ; preds = %for.body48
  %10 = trunc nuw nsw i64 %indvars.iv54 to i32
  store i32 %10, ptr %arrayidx45, align 4, !tbaa !5
  br label %for.inc62

for.inc62:                                        ; preds = %for.body48, %if.then54
  %min.1 = phi i32 [ %9, %if.then54 ], [ %min.0, %for.body48 ]
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond46, !llvm.loop !15

for.inc65:                                        ; preds = %for.cond46
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1
  br label %for.cond38, !llvm.loop !16

for.cond68:                                       ; preds = %for.cond38, %for.inc86
  %.pre7172 = phi i32 [ %.pre7173, %for.inc86 ], [ %2, %for.cond38 ]
  %11 = phi i32 [ %15, %for.inc86 ], [ %2, %for.cond38 ]
  %12 = phi i32 [ %.pre, %for.inc86 ], [ %0, %for.cond38 ]
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %for.inc86 ], [ 0, %for.cond38 ]
  %f.0 = phi i32 [ %f.1, %for.inc86 ], [ 1, %for.cond38 ]
  %13 = sext i32 %12 to i64
  %cmp69 = icmp slt i64 %indvars.iv68, %13
  br i1 %cmp69, label %for.cond71.preheader, label %for.end88

for.cond71.preheader:                             ; preds = %for.cond68
  %arrayidx75 = getelementptr inbounds nuw [8 x i32], ptr %djl, i64 0, i64 %indvars.iv68
  %14 = trunc nuw nsw i64 %indvars.iv68 to i32
  br label %for.cond71

for.cond71:                                       ; preds = %for.cond71.preheader, %for.inc83
  %.pre7173 = phi i32 [ %.pre7172, %for.cond71.preheader ], [ %.pre71, %for.inc83 ]
  %15 = phi i32 [ %11, %for.cond71.preheader ], [ %.pre71, %for.inc83 ]
  %indvars.iv65 = phi i64 [ 0, %for.cond71.preheader ], [ %indvars.iv.next66, %for.inc83 ]
  %f.1 = phi i32 [ %f.0, %for.cond71.preheader ], [ %f.2, %for.inc83 ]
  %16 = sext i32 %15 to i64
  %cmp72 = icmp slt i64 %indvars.iv65, %16
  br i1 %cmp72, label %for.body73, label %for.inc86

for.body73:                                       ; preds = %for.cond71
  %17 = load i32, ptr %arrayidx75, align 4, !tbaa !5
  %18 = zext i32 %17 to i64
  %cmp76 = icmp eq i64 %indvars.iv65, %18
  br i1 %cmp76, label %land.lhs.true, label %for.inc83

land.lhs.true:                                    ; preds = %for.body73
  %arrayidx78 = getelementptr inbounds nuw [8 x i32], ptr %djh, i64 0, i64 %indvars.iv65
  %19 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %20 = zext i32 %19 to i64
  %cmp79 = icmp eq i64 %indvars.iv68, %20
  br i1 %cmp79, label %if.then80, label %for.inc83

if.then80:                                        ; preds = %land.lhs.true
  %21 = trunc nuw nsw i64 %indvars.iv65 to i32
  %call81 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %14, i32 noundef %21)
  %.pre71.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc83

for.inc83:                                        ; preds = %for.body73, %land.lhs.true, %if.then80
  %.pre71 = phi i32 [ %.pre71.pre, %if.then80 ], [ %.pre7173, %land.lhs.true ], [ %.pre7173, %for.body73 ]
  %f.2 = phi i32 [ 0, %if.then80 ], [ %f.1, %land.lhs.true ], [ %f.1, %for.body73 ]
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  br label %for.cond71, !llvm.loop !17

for.inc86:                                        ; preds = %for.cond71
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1
  %.pre = load i32, ptr %m, align 4, !tbaa !5
  br label %for.cond68, !llvm.loop !18

for.end88:                                        ; preds = %for.cond68
  %tobool.not = icmp eq i32 %f.0, 0
  br i1 %tobool.not, label %if.end91, label %if.then89

if.then89:                                        ; preds = %for.end88
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %for.end88
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %djh) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %djl) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %s) #6
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
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
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
!18 = distinct !{!18, !10, !11}
