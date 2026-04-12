; ModuleID = '<stdin>'
source_filename = "/tmp/tmpq8e14lie.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  %a = alloca [600 x i32], align 16
  %b = alloca [600 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %N) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2400, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 2400, ptr noundef nonnull %b) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %N)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 1, %entry ]
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp.not = icmp sgt i64 %indvars.iv, %1
  br i1 %cmp.not, label %for.cond2.preheader, label %for.inc

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [600 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc13
  %indvars.iv11 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next12, %for.inc13 ]
  %j.0 = phi i32 [ 1, %for.cond2.preheader ], [ %j.1, %for.inc13 ]
  %c.0 = phi i32 [ 1, %for.cond2.preheader ], [ %c.1, %for.inc13 ]
  %exitcond = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond, label %for.cond16.preheader, label %for.body4

for.cond16.preheader:                             ; preds = %for.cond2
  %cmp17 = icmp sgt i32 %c.0, 1
  br i1 %cmp17, label %for.cond19, label %for.end45

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [600 x i32], ptr %a, i64 0, i64 %indvars.iv11
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !12
  %4 = and i32 %3, 1
  %cmp7.not = icmp eq i32 %4, 0
  br i1 %cmp7.not, label %for.inc13, label %if.then

if.then:                                          ; preds = %for.body4
  %idxprom10 = sext i32 %j.0 to i64
  %arrayidx11 = getelementptr inbounds [600 x i32], ptr %b, i64 0, i64 %idxprom10
  store i32 %3, ptr %arrayidx11, align 4, !tbaa !5
  %add = add nsw i32 %j.0, 1
  %add12 = add nsw i32 %c.0, 1
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then
  %j.1 = phi i32 [ %add, %if.then ], [ %j.0, %for.body4 ]
  %c.1 = phi i32 [ %add12, %if.then ], [ %c.0, %for.body4 ]
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond2, !llvm.loop !13

for.cond19:                                       ; preds = %for.cond16.preheader, %if.end39
  %5 = phi i32 [ %7, %if.end39 ], [ undef, %for.cond16.preheader ]
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %if.end39 ], [ 1, %for.cond16.preheader ]
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %arrayidx26 = getelementptr inbounds nuw [600 x i32], ptr %b, i64 0, i64 %indvars.iv.next17
  %6 = load i32, ptr %arrayidx26, align 4, !tbaa !5, !invariant.load !12
  %cmp27 = icmp sgt i32 %5, %6
  br i1 %cmp27, label %if.then28, label %if.end39

if.then28:                                        ; preds = %for.cond19
  %arrayidx23 = getelementptr inbounds nuw [600 x i32], ptr %b, i64 0, i64 %indvars.iv16
  store i32 %6, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %5, ptr %arrayidx26, align 4, !tbaa !5
  br label %if.end39

if.end39:                                         ; preds = %if.then28, %for.cond19
  %7 = phi i32 [ %5, %if.then28 ], [ %6, %for.cond19 ]
  br label %for.cond19

for.end45:                                        ; preds = %for.cond16.preheader
  %arrayidx46 = getelementptr inbounds nuw i8, ptr %b, i64 4
  %8 = load i32, ptr %arrayidx46, align 4, !tbaa !5
  %call47 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %8)
  call void @llvm.lifetime.end.p0(i64 noundef 2400, ptr noundef nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 noundef 2400, ptr noundef nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %N) #6
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
