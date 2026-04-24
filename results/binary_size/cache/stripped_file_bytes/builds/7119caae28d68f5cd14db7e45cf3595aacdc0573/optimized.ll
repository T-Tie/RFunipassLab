; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyn2cnzjd.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %z = alloca [300 x i8], align 16
  %h = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %s) #4
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %z) #4
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %h) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %s)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %z)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %h)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #6
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %z) #6
  %conv9 = trunc i64 %call8 to i32
  %call11 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %h) #6
  %conv12 = trunc i64 %call11 to i32
  %sub = sub nsw i32 %conv, %conv9
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 noundef 0)
  %smax38 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef -1)
  %0 = add i32 %smax38, 1
  %wide.trip.count39 = zext i32 %0 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %if.end61, %entry
  %indvars.iv55 = phi i32 [ %indvars.iv.next56, %if.end61 ], [ %conv9, %entry ]
  %indvars.iv44 = phi i32 [ %indvars.iv.next45, %if.end61 ], [ 0, %entry ]
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %if.end61 ], [ 0, %entry ]
  %exitcond40 = icmp eq i64 %indvars.iv35, %wide.trip.count39
  br i1 %exitcond40, label %for.cond67.preheader, label %for.cond13

for.cond67.preheader:                             ; preds = %for.cond
  %smax64 = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count65 = zext nneg i32 %smax64 to i64
  br label %for.cond67

for.cond13:                                       ; preds = %for.cond, %for.body15
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body15 ], [ 0, %for.cond ]
  %e.0 = phi i32 [ %spec.select, %for.body15 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body15

for.body15:                                       ; preds = %for.cond13
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %z, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %2 = add nuw nsw i64 %indvars.iv, %indvars.iv35
  %arrayidx18 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx18, align 1, !tbaa !5, !invariant.load !8
  %cmp20 = icmp eq i8 %1, %3
  %inc = zext i1 %cmp20 to i32
  %spec.select = add nuw nsw i32 %e.0, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond13, !llvm.loop !9

for.end:                                          ; preds = %for.cond13
  %cmp22 = icmp eq i32 %e.0, %conv9
  br i1 %cmp22, label %for.cond24.preheader, label %if.end61

for.cond24.preheader:                             ; preds = %for.end
  %wide.trip.count47 = zext i32 %indvars.iv44 to i64
  br label %for.cond24

for.cond24:                                       ; preds = %for.cond24.preheader, %for.body26
  %indvars.iv41 = phi i64 [ 0, %for.cond24.preheader ], [ %indvars.iv.next42, %for.body26 ]
  %exitcond48.not = icmp eq i64 %indvars.iv41, %wide.trip.count47
  br i1 %exitcond48.not, label %for.cond34.preheader, label %for.body26

for.cond34.preheader:                             ; preds = %for.cond24
  %smax52 = call i32 @llvm.smax.i32(i32 %conv12, i32 noundef 0)
  %wide.trip.count53 = zext nneg i32 %smax52 to i64
  br label %for.cond34

for.body26:                                       ; preds = %for.cond24
  %arrayidx28 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv41
  %4 = load i8, ptr %arrayidx28, align 1, !tbaa !5, !invariant.load !8
  %conv29 = sext i8 %4 to i32
  %putchar28 = call i32 @putchar(i32 noundef %conv29) #7
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond24, !llvm.loop !12

for.cond34:                                       ; preds = %for.cond34.preheader, %for.body36
  %indvars.iv49 = phi i64 [ 0, %for.cond34.preheader ], [ %indvars.iv.next50, %for.body36 ]
  %exitcond54.not = icmp eq i64 %indvars.iv49, %wide.trip.count53
  br i1 %exitcond54.not, label %for.end43, label %for.body36

for.body36:                                       ; preds = %for.cond34
  %arrayidx38 = getelementptr inbounds nuw [300 x i8], ptr %h, i64 0, i64 %indvars.iv49
  %5 = load i8, ptr %arrayidx38, align 1, !tbaa !5, !invariant.load !8
  %conv39 = sext i8 %5 to i32
  %putchar27 = call i32 @putchar(i32 noundef %conv39) #7
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond34, !llvm.loop !13

for.end43:                                        ; preds = %for.cond34
  %6 = trunc nuw nsw i64 %indvars.iv35 to i32
  %add44 = add nsw i32 %6, %conv9
  %sub45 = add nsw i32 %conv, -1
  %cmp46 = icmp slt i32 %add44, %sub45
  br i1 %cmp46, label %for.cond49.preheader, label %if.end77

for.cond49.preheader:                             ; preds = %for.end43
  %7 = sext i32 %indvars.iv55 to i64
  %sext = shl i64 %call6, 32
  %8 = ashr exact i64 %sext, 32
  br label %for.cond49

for.cond49:                                       ; preds = %for.cond49.preheader, %for.body51
  %indvars.iv58 = phi i64 [ %7, %for.cond49.preheader ], [ %indvars.iv.next59, %for.body51 ]
  %cmp50 = icmp slt i64 %indvars.iv58, %8
  br i1 %cmp50, label %for.body51, label %if.end77

for.body51:                                       ; preds = %for.cond49
  %arrayidx53 = getelementptr inbounds [300 x i8], ptr %s, i64 0, i64 %indvars.iv58
  %9 = load i8, ptr %arrayidx53, align 1, !tbaa !5, !invariant.load !8
  %conv54 = sext i8 %9 to i32
  %putchar26 = call i32 @putchar(i32 noundef %conv54) #7
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1
  br label %for.cond49, !llvm.loop !14

if.end61:                                         ; preds = %for.end
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %indvars.iv.next45 = add nuw i32 %indvars.iv44, 1
  %indvars.iv.next56 = add i32 %indvars.iv55, 1
  br label %for.cond, !llvm.loop !15

for.cond67:                                       ; preds = %for.cond67.preheader, %for.body69
  %indvars.iv61 = phi i64 [ 0, %for.cond67.preheader ], [ %indvars.iv.next62, %for.body69 ]
  %exitcond66.not = icmp eq i64 %indvars.iv61, %wide.trip.count65
  br i1 %exitcond66.not, label %if.end77, label %for.body69

for.body69:                                       ; preds = %for.cond67
  %arrayidx71 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv61
  %10 = load i8, ptr %arrayidx71, align 1, !tbaa !5, !invariant.load !8
  %conv72 = sext i8 %10 to i32
  %putchar = call i32 @putchar(i32 noundef %conv72) #7
  %indvars.iv.next62 = add nuw nsw i64 %indvars.iv61, 1
  br label %for.cond67, !llvm.loop !16

if.end77:                                         ; preds = %for.cond49, %for.cond67, %for.end43
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %h) #7
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %z) #7
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %s) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
