; ModuleID = '<stdin>'
source_filename = "/tmp/tmpinrpt8tz.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.str2 = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str1 = alloca [1000 x i8], align 16
  %sz = alloca [26 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %str1) #4
  call void @llvm.lifetime.start.p0(i64 104, ptr nonnull %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str1)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 26
  br i1 %exitcond.not, label %for.cond1, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [26 x i32], ptr %sz, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond1:                                        ; preds = %for.cond, %for.inc24
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc24 ], [ 0, %for.cond ]
  %exist.0 = phi i32 [ %exist.1, %for.inc24 ], [ 0, %for.cond ]
  %arrayidx3 = getelementptr inbounds nuw [1000 x i8], ptr %str1, i64 0, i64 %indvars.iv19
  %0 = load i8, ptr %arrayidx3, align 1, !tbaa !12
  %cmp4.not = icmp eq i8 %0, 0
  br i1 %cmp4.not, label %for.end26, label %for.cond6

for.cond6:                                        ; preds = %for.cond1, %for.inc21
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %for.inc21 ], [ 0, %for.cond1 ]
  %exist.1 = phi i32 [ %exist.2, %for.inc21 ], [ %exist.0, %for.cond1 ]
  %cmp10.not = icmp eq i64 %indvars.iv16, 26
  br i1 %cmp10.not, label %for.inc24, label %for.body11

for.body11:                                       ; preds = %for.cond6
  %arrayidx8 = getelementptr inbounds nuw [27 x i8], ptr @__const.main.str2, i64 0, i64 %indvars.iv16
  %1 = load i8, ptr %arrayidx8, align 1, !tbaa !12
  %cmp18 = icmp eq i8 %0, %1
  br i1 %cmp18, label %if.then, label %for.inc21

if.then:                                          ; preds = %for.body11
  %arrayidx20 = getelementptr inbounds nuw [26 x i32], ptr %sz, i64 0, i64 %indvars.iv16
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %add = add nsw i32 %2, 1
  store i32 %add, ptr %arrayidx20, align 4, !tbaa !5
  br label %for.inc21

for.inc21:                                        ; preds = %for.body11, %if.then
  %exist.2 = phi i32 [ 1, %if.then ], [ %exist.1, %for.body11 ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  br label %for.cond6, !llvm.loop !13

for.inc24:                                        ; preds = %for.cond6
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond1, !llvm.loop !14

for.end26:                                        ; preds = %for.cond1
  %cmp27 = icmp eq i32 %exist.0, 0
  br i1 %cmp27, label %if.then28, label %for.cond32

if.then28:                                        ; preds = %for.end26
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1)
  br label %if.end53

for.cond32:                                       ; preds = %for.end26, %for.inc49
  %indvars.iv22 = phi i64 [ %indvars.iv.next23, %for.inc49 ], [ 0, %for.end26 ]
  %arrayidx34 = getelementptr inbounds nuw [27 x i8], ptr @__const.main.str2, i64 0, i64 %indvars.iv22
  %3 = load i8, ptr %arrayidx34, align 1, !tbaa !12
  %conv35 = sext i8 %3 to i32
  %cmp36.not = icmp eq i64 %indvars.iv22, 26
  br i1 %cmp36.not, label %if.end53, label %for.body37

for.body37:                                       ; preds = %for.cond32
  %arrayidx39 = getelementptr inbounds nuw [26 x i32], ptr %sz, i64 0, i64 %indvars.iv22
  %4 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %cmp40.not = icmp eq i32 %4, 0
  br i1 %cmp40.not, label %for.inc49, label %if.then41

if.then41:                                        ; preds = %for.body37
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %conv35, i32 noundef %4)
  br label %for.inc49

for.inc49:                                        ; preds = %for.body37, %if.then41
  %indvars.iv.next23 = add nuw nsw i64 %indvars.iv22, 1
  br label %for.cond32, !llvm.loop !15

if.end53:                                         ; preds = %for.cond32, %if.then28
  call void @llvm.lifetime.end.p0(i64 104, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %str1) #4
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
