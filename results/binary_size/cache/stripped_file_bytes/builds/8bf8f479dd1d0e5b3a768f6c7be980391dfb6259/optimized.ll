; ModuleID = '<stdin>'
source_filename = "/tmp/tmpnlbbsxmi.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.d = private unnamed_addr constant [13 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31, i32 0], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d%d%d\00", align 1
@str.2 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@str.3 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [200 x i32], align 16
  %b = alloca [200 x i32], align 16
  %c = alloca [200 x i32], align 16
  %d = alloca [13 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %d) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(52) %d, ptr noundef nonnull align 16 dereferenceable(52) @__const.main.d, i64 52, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %d, i64 4
  br label %for.cond6

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %c, i64 0, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond6.preheader, %if.end80
  %2 = phi i32 [ %0, %for.cond6.preheader ], [ %.pre, %if.end80 ]
  %indvars.iv44 = phi i64 [ 0, %for.cond6.preheader ], [ %indvars.iv.next45, %if.end80 ]
  %3 = sext i32 %2 to i64
  %cmp7 = icmp slt i64 %indvars.iv44, %3
  br i1 %cmp7, label %for.body8, label %for.end83

for.body8:                                        ; preds = %for.cond6
  %arrayidx10 = getelementptr inbounds nuw [200 x i32], ptr %b, i64 0, i64 %indvars.iv44
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %arrayidx12 = getelementptr inbounds nuw [200 x i32], ptr %c, i64 0, i64 %indvars.iv44
  %5 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %cmp13 = icmp sgt i32 %4, %5
  br i1 %cmp13, label %if.then, label %if.end

if.then:                                          ; preds = %for.body8
  store i32 %5, ptr %arrayidx10, align 4, !tbaa !5
  store i32 %4, ptr %arrayidx12, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body8
  %6 = phi i32 [ %5, %if.then ], [ %4, %for.body8 ]
  %arrayidx23 = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv44
  %7 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %rem = srem i32 %7, 400
  %cmp24 = icmp eq i32 %rem, 0
  br i1 %cmp24, label %if.then33, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end
  %8 = and i32 %7, 3
  %cmp28 = icmp ne i32 %8, 0
  %rem31 = srem i32 %7, 100
  %cmp32.not = icmp eq i32 %rem31, 0
  %or.cond = or i1 %cmp28, %cmp32.not
  br i1 %or.cond, label %if.else58, label %if.then33

if.then33:                                        ; preds = %lor.lhs.false, %if.end
  store i32 29, ptr %arrayidx34, align 4, !tbaa !5
  %9 = sext i32 %6 to i64
  %smax41 = call i32 @llvm.smax.i32(i32 %5, i32 %4)
  %wide.trip.count42 = sext i32 %smax41 to i64
  br label %for.cond38

for.cond38:                                       ; preds = %for.body42, %if.then33
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.body42 ], [ %9, %if.then33 ]
  %cha.1 = phi i32 [ %add45, %for.body42 ], [ 0, %if.then33 ]
  %exitcond43.not = icmp eq i64 %indvars.iv37, %wide.trip.count42
  br i1 %exitcond43.not, label %for.end48, label %for.body42

for.body42:                                       ; preds = %for.cond38
  %10 = add nsw i64 %indvars.iv37, -1
  %arrayidx44 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 %10
  %11 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %add45 = add nsw i32 %11, %cha.1
  %indvars.iv.next38 = add nsw i64 %indvars.iv37, 1
  br label %for.cond38, !llvm.loop !12

for.end48:                                        ; preds = %for.cond38
  store i32 28, ptr %arrayidx34, align 4, !tbaa !5
  %rem52 = srem i32 %cha.1, 7
  %cmp53.not = icmp eq i32 %rem52, 0
  %str.2.str.3 = select i1 %cmp53.not, ptr @str.2, ptr @str.3
  br label %if.end80

if.else58:                                        ; preds = %lor.lhs.false
  %12 = sext i32 %6 to i64
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 %4)
  %wide.trip.count = sext i32 %smax to i64
  br label %for.cond61

for.cond61:                                       ; preds = %for.body65, %if.else58
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body65 ], [ %12, %if.else58 ]
  %cha.2 = phi i32 [ %add69, %for.body65 ], [ 0, %if.else58 ]
  %exitcond.not = icmp eq i64 %indvars.iv33, %wide.trip.count
  br i1 %exitcond.not, label %for.end72, label %for.body65

for.body65:                                       ; preds = %for.cond61
  %13 = add nsw i64 %indvars.iv33, -1
  %arrayidx68 = getelementptr inbounds [13 x i32], ptr %d, i64 0, i64 %13
  %14 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %add69 = add nsw i32 %14, %cha.2
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  br label %for.cond61, !llvm.loop !13

for.end72:                                        ; preds = %for.cond61
  %rem73 = srem i32 %cha.2, 7
  %cmp74.not = icmp eq i32 %rem73, 0
  %str.str.1 = select i1 %cmp74.not, ptr @str.2, ptr @str.3
  br label %if.end80

if.end80:                                         ; preds = %for.end72, %for.end48
  %str.1.sink = phi ptr [ %str.2.str.3, %for.end48 ], [ %str.str.1, %for.end72 ]
  %puts29 = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.sink)
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond6, !llvm.loop !14

for.end83:                                        ; preds = %for.cond6
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %d) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
