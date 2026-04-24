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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %cmp22 = icmp sgt i32 %0, 0
  br i1 %cmp22, label %while.body, label %while.end49

while.cond10.preheader:                           ; preds = %if.end
  %cmp11.not27 = icmp slt i32 %t.1, 1
  br i1 %cmp11.not27, label %while.end49, label %while.cond13.preheader

while.body:                                       ; preds = %entry, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 0, %entry ]
  %t.024 = phi i32 [ %t.1, %if.end ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = and i32 %1, 1
  %cmp4.not = icmp eq i32 %2, 0
  br i1 %cmp4.not, label %if.end, label %if.then

if.then:                                          ; preds = %while.body
  %idxprom7 = sext i32 %t.024 to i64
  %arrayidx8 = getelementptr inbounds [500 x i32], ptr %b, i64 0, i64 %idxprom7
  store i32 %1, ptr %arrayidx8, align 4, !tbaa !5
  %inc = add nsw i32 %t.024, 1
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body
  %t.1 = phi i32 [ %inc, %if.then ], [ %t.024, %while.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %4
  br i1 %cmp, label %while.body, label %while.cond10.preheader, !llvm.loop !9

while.cond13.preheader:                           ; preds = %while.cond10.preheader, %while.end34
  %indvars.iv35.in = phi i32 [ %indvars.iv35, %while.end34 ], [ %t.1, %while.cond10.preheader ]
  %s.028 = phi i32 [ %inc35, %while.end34 ], [ 1, %while.cond10.preheader ]
  %indvars.iv35 = add i32 %indvars.iv35.in, -1
  %cmp1425 = icmp sgt i32 %t.1, %s.028
  br i1 %cmp1425, label %while.body15.preheader, label %while.end34

while.body15.preheader:                           ; preds = %while.cond13.preheader
  %wide.trip.count = zext i32 %indvars.iv35 to i64
  %.pre = load i32, ptr %b, align 16, !tbaa !5
  br label %while.body15

while.body39.lr.ph:                               ; preds = %while.end34
  %5 = load i32, ptr %b, align 16
  %wide.trip.count41 = zext nneg i32 %t.1 to i64
  br label %while.body39

while.body15:                                     ; preds = %while.body15.preheader, %if.end32
  %6 = phi i32 [ %.pre, %while.body15.preheader ], [ %8, %if.end32 ]
  %indvars.iv32 = phi i64 [ 0, %while.body15.preheader ], [ %indvars.iv.next33, %if.end32 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %arrayidx19 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv.next33
  %7 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %cmp20 = icmp sgt i32 %6, %7
  br i1 %cmp20, label %if.then21, label %if.end32

if.then21:                                        ; preds = %while.body15
  %arrayidx17 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv32
  store i32 %6, ptr %arrayidx19, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx17, align 4, !tbaa !5
  br label %if.end32

if.end32:                                         ; preds = %if.then21, %while.body15
  %8 = phi i32 [ %6, %if.then21 ], [ %7, %while.body15 ]
  %exitcond.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count
  br i1 %exitcond.not, label %while.end34, label %while.body15, !llvm.loop !12

while.end34:                                      ; preds = %if.end32, %while.cond13.preheader
  %inc35 = add nuw i32 %s.028, 1
  %exitcond37.not = icmp eq i32 %s.028, %t.1
  br i1 %exitcond37.not, label %while.body39.lr.ph, label %while.cond13.preheader, !llvm.loop !13

while.body39:                                     ; preds = %while.body39.lr.ph, %if.end47
  %indvars.iv38 = phi i64 [ 0, %while.body39.lr.ph ], [ %indvars.iv.next39, %if.end47 ]
  %cmp40 = icmp eq i64 %indvars.iv38, 0
  br i1 %cmp40, label %if.then41, label %if.else

if.then41:                                        ; preds = %while.body39
  %call43 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %5)
  br label %if.end47

if.else:                                          ; preds = %while.body39
  %arrayidx45 = getelementptr inbounds nuw [500 x i32], ptr %b, i64 0, i64 %indvars.iv38
  %9 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %call46 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9)
  br label %if.end47

if.end47:                                         ; preds = %if.else, %if.then41
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %while.end49, label %while.body39, !llvm.loop !14

while.end49:                                      ; preds = %if.end47, %entry, %while.cond10.preheader
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %b) #4
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
