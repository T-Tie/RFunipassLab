; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqy939j_b.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [300 x i8], align 16
  %a = alloca [26 x i32], align 16
  %b = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 300, ptr nonnull %s) #4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %b) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %s)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 26
  br i1 %exitcond.not, label %for.cond3, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw [26 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx2, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond, %for.inc40
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc40 ], [ 0, %for.cond ]
  %f.0 = phi i32 [ %f.2, %for.inc40 ], [ 0, %for.cond ]
  %arrayidx5 = getelementptr inbounds nuw [300 x i8], ptr %s, i64 0, i64 %indvars.iv30
  %0 = load i8, ptr %arrayidx5, align 1, !tbaa !12
  %cmp6.not = icmp eq i8 %0, 0
  br i1 %cmp6.not, label %for.end42, label %for.body7

for.body7:                                        ; preds = %for.cond3
  %1 = add i8 %0, -97
  %or.cond = icmp ult i8 %1, 26
  br i1 %or.cond, label %for.inc40.sink.split, label %if.end

if.end:                                           ; preds = %for.body7
  %2 = add i8 %0, -65
  %or.cond24 = icmp ult i8 %2, 26
  br i1 %or.cond24, label %for.inc40.sink.split, label %for.inc40

for.inc40.sink.split:                             ; preds = %if.end, %for.body7
  %.sink = phi i8 [ %1, %for.body7 ], [ %2, %if.end ]
  %a.sink = phi ptr [ %a, %for.body7 ], [ %b, %if.end ]
  %sub = zext nneg i8 %.sink to i64
  %arrayidx20 = getelementptr inbounds nuw [26 x i32], ptr %a.sink, i64 0, i64 %sub
  %3 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %inc21 = add nsw i32 %3, 1
  store i32 %inc21, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc40

for.inc40:                                        ; preds = %for.inc40.sink.split, %if.end
  %f.2 = phi i32 [ %f.0, %if.end ], [ 1, %for.inc40.sink.split ]
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond3, !llvm.loop !13

for.end42:                                        ; preds = %for.cond3
  %cmp43.not = icmp eq i32 %f.0, 0
  br i1 %cmp43.not, label %if.else, label %for.cond45

for.cond45:                                       ; preds = %for.end42, %for.inc56
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc56 ], [ 0, %for.end42 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, 26
  br i1 %exitcond37.not, label %for.cond59, label %for.body47

for.body47:                                       ; preds = %for.cond45
  %arrayidx49 = getelementptr inbounds nuw [26 x i32], ptr %b, i64 0, i64 %indvars.iv33
  %4 = load i32, ptr %arrayidx49, align 4, !tbaa !5
  %cmp50.not = icmp eq i32 %4, 0
  br i1 %cmp50.not, label %for.inc56, label %if.then51

if.then51:                                        ; preds = %for.body47
  %5 = trunc i64 %indvars.iv33 to i32
  %6 = add i32 %5, 65
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6, i32 noundef %4)
  br label %for.inc56

for.inc56:                                        ; preds = %for.body47, %if.then51
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond45, !llvm.loop !14

for.cond59:                                       ; preds = %for.cond45, %for.inc71
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc71 ], [ 0, %for.cond45 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, 26
  br i1 %exitcond42.not, label %if.end75, label %for.body61

for.body61:                                       ; preds = %for.cond59
  %arrayidx63 = getelementptr inbounds nuw [26 x i32], ptr %a, i64 0, i64 %indvars.iv38
  %7 = load i32, ptr %arrayidx63, align 4, !tbaa !5
  %cmp64.not = icmp eq i32 %7, 0
  br i1 %cmp64.not, label %for.inc71, label %if.then65

if.then65:                                        ; preds = %for.body61
  %8 = trunc i64 %indvars.iv38 to i32
  %9 = add i32 %8, 97
  %call69 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %9, i32 noundef %7)
  br label %for.inc71

for.inc71:                                        ; preds = %for.body61, %if.then65
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond59, !llvm.loop !15

if.else:                                          ; preds = %for.end42
  %call74 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end75

if.end75:                                         ; preds = %for.cond59, %if.else
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 300, ptr nonnull %s) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!12 = !{!7, !7, i64 0}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
