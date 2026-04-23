; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8stcylhu.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  %b = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 80000, ptr noundef nonnull align 16 %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end17, %entry
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %if.end17 ], [ 0, %entry ]
  %s.0 = phi i32 [ %s.1, %if.end17 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv21, %1
  br i1 %cmp, label %for.body, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.cond
  %sub = add nsw i32 %s.0, -1
  %2 = zext i32 %sub to i64
  %smax = call i32 @llvm.smax.i32(i32 %s.0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond21

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv21
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  br label %for.cond2

for.cond2:                                        ; preds = %for.body4, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body4 ], [ 0, %for.body ]
  %sign.0 = phi i32 [ %spec.select, %for.body4 ], [ 0, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %indvars.iv21
  br i1 %exitcond.not, label %for.end, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %3 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !9
  %4 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %cmp9 = icmp eq i32 %3, %4
  %add = zext i1 %cmp9 to i32
  %spec.select = add nuw nsw i32 %sign.0, %add
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond2

for.end:                                          ; preds = %for.cond2
  %cmp10 = icmp eq i32 %sign.0, 0
  br i1 %cmp10, label %if.then11, label %if.end17

if.then11:                                        ; preds = %for.end
  %5 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %idxprom14 = sext i32 %s.0 to i64
  %arrayidx15 = getelementptr inbounds [20000 x i32], ptr %b, i64 0, i64 %idxprom14
  store i32 %5, ptr %arrayidx15, align 4, !tbaa !5
  %inc16 = add nsw i32 %s.0, 1
  br label %if.end17

if.end17:                                         ; preds = %if.then11, %for.end
  %s.1 = phi i32 [ %inc16, %if.then11 ], [ %s.0, %for.end ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body23
  %indvars.iv24 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next25, %for.body23 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond28.not, label %for.end35, label %for.body23

for.body23:                                       ; preds = %for.cond21
  %cmp24.not = icmp eq i64 %indvars.iv24, %2
  %6 = getelementptr inbounds nuw [20000 x i32], ptr %b, i64 0, i64 %indvars.iv24
  %7 = load i32, ptr %6, align 4, !tbaa !5, !invariant.load !9
  %spec.select19 = select i1 %cmp24.not, ptr @.str, ptr @.str.1
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %spec.select19, i32 noundef %7) #7
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond21

for.end35:                                        ; preds = %for.cond21
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 80000, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #7
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }

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
