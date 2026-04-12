; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuub94t17.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [300 x i8], align 16
  %b = alloca [52 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 208, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %b, i8 0, i64 208, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %a, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp = icmp eq i8 %0, 0
  br i1 %cmp, label %for.cond46, label %if.else

if.else:                                          ; preds = %for.cond
  %cmp4 = icmp slt i8 %0, 65
  br i1 %cmp4, label %for.inc, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.else
  %1 = add nsw i8 %0, -91
  %or.cond = icmp ult i8 %1, 6
  %cmp17 = icmp samesign ugt i8 %0, 122
  %or.cond25 = select i1 %or.cond, i1 true, i1 %cmp17
  br i1 %or.cond25, label %for.inc, label %if.else19

if.else19:                                        ; preds = %lor.lhs.false
  %cmp28 = icmp samesign ult i8 %0, 91
  %narrow = add nsw i8 %0, -65
  %sub = zext nneg i8 %narrow to i64
  %conv38 = zext nneg i8 %0 to i64
  %add = add nsw i64 %conv38, -71
  %sub.sink = select i1 %cmp28, i64 %sub, i64 %add
  %arrayidx34 = getelementptr inbounds [52 x i32], ptr %b, i64 0, i64 %sub.sink
  %2 = load i32, ptr %arrayidx34, align 4, !tbaa !8
  %inc = add nsw i32 %2, 1
  store i32 %inc, ptr %arrayidx34, align 4, !tbaa !8
  br label %for.inc

for.inc:                                          ; preds = %if.else19, %lor.lhs.false, %if.else
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.cond46:                                       ; preds = %for.cond, %for.body
  %indvars.iv27 = phi i64 [ %indvars.iv.next28, %for.body ], [ 0, %for.cond ]
  %sum.0 = phi i32 [ %add50, %for.body ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv27, 52
  br i1 %exitcond.not, label %for.end53, label %for.body

for.body:                                         ; preds = %for.cond46
  %arrayidx49 = getelementptr inbounds nuw [52 x i32], ptr %b, i64 0, i64 %indvars.iv27
  %3 = load i32, ptr %arrayidx49, align 4, !tbaa !8
  %add50 = add nsw i32 %3, %sum.0
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  br label %for.cond46, !llvm.loop !13

for.end53:                                        ; preds = %for.cond46
  %cmp54 = icmp eq i32 %sum.0, 0
  br i1 %cmp54, label %if.then55, label %for.cond58

if.then55:                                        ; preds = %for.end53
  %call56 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end89

for.cond58:                                       ; preds = %for.end53, %for.inc70
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc70 ], [ 0, %for.end53 ]
  %exitcond34.not = icmp eq i64 %indvars.iv30, 26
  br i1 %exitcond34.not, label %for.cond73, label %for.body60

for.body60:                                       ; preds = %for.cond58
  %arrayidx62 = getelementptr inbounds nuw [52 x i32], ptr %b, i64 0, i64 %indvars.iv30
  %4 = load i32, ptr %arrayidx62, align 4, !tbaa !8
  %cmp63.not = icmp eq i32 %4, 0
  br i1 %cmp63.not, label %for.inc70, label %if.then64

if.then64:                                        ; preds = %for.body60
  %5 = trunc i64 %indvars.iv30 to i32
  %6 = add i32 %5, 65
  %call68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %6, i32 noundef %4)
  br label %for.inc70

for.inc70:                                        ; preds = %for.body60, %if.then64
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond58, !llvm.loop !14

for.cond73:                                       ; preds = %for.cond58, %for.inc86
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %for.inc86 ], [ 26, %for.cond58 ]
  %exitcond39.not = icmp eq i64 %indvars.iv35, 52
  br i1 %exitcond39.not, label %if.end89, label %for.body75

for.body75:                                       ; preds = %for.cond73
  %arrayidx77 = getelementptr inbounds nuw [52 x i32], ptr %b, i64 0, i64 %indvars.iv35
  %7 = load i32, ptr %arrayidx77, align 4, !tbaa !8
  %cmp78.not = icmp eq i32 %7, 0
  br i1 %cmp78.not, label %for.inc86, label %if.then79

if.then79:                                        ; preds = %for.body75
  %8 = trunc i64 %indvars.iv35 to i32
  %9 = add i32 %8, 71
  %call84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %9, i32 noundef %7)
  br label %for.inc86

for.inc86:                                        ; preds = %for.body75, %if.then79
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  br label %for.cond73, !llvm.loop !15

if.end89:                                         ; preds = %for.cond73, %if.then55
  call void @llvm.lifetime.end.p0(i64 208, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
