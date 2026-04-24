; ModuleID = '<stdin>'
source_filename = "/tmp/tmpczednpyt.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %a = alloca [500 x i32], align 16
  %b = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %a) #4
  call void @llvm.lifetime.start.p0(i64 noundef 2000, ptr noundef nonnull align 16 %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %N)
  br label %while.cond

while.cond:                                       ; preds = %if.end, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %t.0 = phi i32 [ %t.1, %if.end ], [ 0, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %while.body, label %while.cond10.preheader

while.cond10.preheader:                           ; preds = %while.cond
  %smax28 = call i32 @llvm.smax.i32(i32 %t.0, i32 noundef 0)
  %2 = add nuw i32 %smax28, 1
  br label %while.cond10

while.body:                                       ; preds = %while.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %3 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %4 = and i32 %3, 1
  %cmp4.not = icmp eq i32 %4, 0
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %idxprom7 = sext i32 %t.0 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %3, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %t.0, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %t.1 = phi i32 [ %inc, %if.then ], [ %t.0, %while.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %while.cond, !llvm.loop !10

while.cond10:                                     ; preds = %while.cond10.preheader, %while.end34
  %indvars.iv25.in = phi i32 [ %t.0, %while.cond10.preheader ], [ %indvars.iv25, %while.end34 ]
  %s.0 = phi i32 [ 1, %while.cond10.preheader ], [ %inc35, %while.end34 ]
  %indvars.iv25 = add i32 %indvars.iv25.in, -1
  %exitcond29 = icmp eq i32 %s.0, %2
  br i1 %exitcond29, label %while.cond37.preheader, label %while.cond13.preheader

while.cond13.preheader:                           ; preds = %while.cond10
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv25, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %while.cond13

while.cond37.preheader:                           ; preds = %while.cond10
  %5 = load i32, ptr %b, align 16
  %wide.trip.count33 = zext nneg i32 %smax28 to i64
  br label %while.cond37

while.cond13:                                     ; preds = %while.cond13.preheader, %if.end32
  %indvars.iv21 = phi i64 [ 0, %while.cond13.preheader ], [ %indvars.iv.next22, %if.end32 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %while.end34, label %while.body15

while.body15:                                     ; preds = %while.cond13
  %arrayidx17 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv21
  %6 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !9
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %arrayidx19 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next22
  %7 = load i32, ptr %arrayidx19, align 4, !tbaa !5, !invariant.load !9
  %cmp20 = icmp sgt i32 %6, %7
  br i1 %cmp20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %while.body15
  store i32 %6, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx17, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %while.body15
  br label %while.cond13, !llvm.loop !13

while.end34:                                      ; preds = %while.cond13
  %inc35 = add nuw i32 %s.0, 1
  br label %while.cond10, !llvm.loop !14

while.cond37:                                     ; preds = %while.cond37.preheader, %if.end47
  %indvars.iv30 = phi i64 [ 0, %while.cond37.preheader ], [ %indvars.iv.next31, %if.end47 ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, %wide.trip.count33
  br i1 %exitcond34.not, label %while.end49, label %while.body39

while.body39:                                     ; preds = %while.cond37
  %cmp40 = icmp eq i64 %indvars.iv30, 0
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body39
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5)
  br label %if.end47

if.else:                                          ; preds = %while.body39
  %arrayidx45 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv30
  %8 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !9
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then41
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %while.cond37, !llvm.loop !15

while.end49:                                      ; preds = %while.cond37
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 2000, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

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
!15 = distinct !{!15, !11, !12}
