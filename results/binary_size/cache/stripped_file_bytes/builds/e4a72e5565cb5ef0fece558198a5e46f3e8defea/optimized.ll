; ModuleID = '<stdin>'
source_filename = "/tmp/tmp1d057wds.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %input = alloca [20000 x i32], align 16
  %output = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %input) #4
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %output) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp19 = icmp sgt i32 %0, 0
  br i1 %cmp19, label %for.body, label %if.end42

for.cond2.preheader:                              ; preds = %for.body
  %cmp323 = icmp sgt i32 %1, 0
  br i1 %cmp323, label %for.cond5.preheader.preheader, label %if.end42

for.cond5.preheader.preheader:                    ; preds = %for.cond2.preheader
  %wide.trip.count38 = zext nneg i32 %1 to i64
  %.pre = load i32, ptr %input, align 16
  br label %for.cond5.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %input, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond2.preheader, !llvm.loop !9

for.cond5.preheader:                              ; preds = %for.cond5.preheader.preheader, %for.inc25
  %indvars.iv35 = phi i64 [ 0, %for.cond5.preheader.preheader ], [ %indvars.iv.next36, %for.inc25 ]
  %k.025 = phi i32 [ 0, %for.cond5.preheader.preheader ], [ %k.1, %for.inc25 ]
  %cmp6.not21.not = icmp eq i64 %indvars.iv35, 0
  br i1 %cmp6.not21.not, label %if.then18, label %for.body7.lr.ph

for.body7.lr.ph:                                  ; preds = %for.cond5.preheader
  %arrayidx9 = getelementptr inbounds nuw [20000 x i32], ptr %input, i64 0, i64 %indvars.iv35
  %3 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.body7

for.cond28.preheader:                             ; preds = %for.inc25
  %cmp2927 = icmp sgt i32 %k.1, 1
  br i1 %cmp2927, label %for.body30.preheader, label %for.end36

for.body30.preheader:                             ; preds = %for.cond28.preheader
  %wide.trip.count = zext nneg i32 %k.1 to i64
  br label %for.body30

for.cond5:                                        ; preds = %for.body7
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next33, %indvars.iv35
  br i1 %exitcond.not, label %if.then18, label %for.body7, !llvm.loop !12

for.body7:                                        ; preds = %for.body7.lr.ph, %for.cond5
  %indvars.iv32 = phi i64 [ 0, %for.body7.lr.ph ], [ %indvars.iv.next33, %for.cond5 ]
  %arrayidx11 = getelementptr inbounds nuw [20000 x i32], ptr %input, i64 0, i64 %indvars.iv32
  %4 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %3, %4
  br i1 %cmp12, label %for.inc25, label %for.cond5

if.then18:                                        ; preds = %for.cond5, %for.cond5.preheader
  %5 = phi i32 [ %.pre, %for.cond5.preheader ], [ %3, %for.cond5 ]
  %inc19 = add nsw i32 %k.025, 1
  %idxprom22 = sext i32 %inc19 to i64
  %arrayidx23 = getelementptr inbounds [20000 x i32], ptr %output, i64 0, i64 %idxprom22
  store i32 %5, ptr %arrayidx23, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body7, %if.then18
  %k.1 = phi i32 [ %inc19, %if.then18 ], [ %k.025, %for.body7 ]
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %exitcond39.not = icmp eq i64 %indvars.iv.next36, %wide.trip.count38
  br i1 %exitcond39.not, label %for.cond28.preheader, label %for.cond5.preheader, !llvm.loop !13

for.body30:                                       ; preds = %for.body30.preheader, %for.body30
  %indvars.iv40 = phi i64 [ 1, %for.body30.preheader ], [ %indvars.iv.next41, %for.body30 ]
  %arrayidx32 = getelementptr inbounds nuw [20000 x i32], ptr %output, i64 0, i64 %indvars.iv40
  %6 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  %exitcond43.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond43.not, label %if.then38.loopexit, label %for.body30, !llvm.loop !14

for.end36:                                        ; preds = %for.cond28.preheader
  %cmp37 = icmp eq i32 %k.1, 1
  br i1 %cmp37, label %if.then38, label %if.end42

if.then38.loopexit:                               ; preds = %for.body30
  %7 = zext nneg i32 %k.1 to i64
  br label %if.then38

if.then38:                                        ; preds = %if.then38.loopexit, %for.end36
  %k.0.lcssa4852 = phi i64 [ 1, %for.end36 ], [ %7, %if.then38.loopexit ]
  %arrayidx40 = getelementptr inbounds nuw [20000 x i32], ptr %output, i64 0, i64 %k.0.lcssa4852
  %8 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %call41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8)
  br label %if.end42

if.end42:                                         ; preds = %for.cond2.preheader, %entry, %if.then38, %for.end36
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %output) #4
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %input) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
