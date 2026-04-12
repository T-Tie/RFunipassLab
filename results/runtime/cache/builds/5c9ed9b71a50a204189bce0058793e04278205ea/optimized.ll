; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9rc8k56q.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %sub = add nsw i32 %0, -1
  %smax19 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef 0)
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc28
  %indvars.iv17 = phi i32 [ %sub, %for.cond2.preheader ], [ %indvars.iv.next18, %for.inc28 ]
  %j.0 = phi i32 [ 0, %for.cond2.preheader ], [ %inc29, %for.inc28 ]
  %exitcond20.not = icmp eq i32 %j.0, %smax19
  br i1 %exitcond20.not, label %for.end30, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %smax = call i32 @llvm.smax.i32(i32 %indvars.iv17, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc25
  %indvars.iv14 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next15, %for.inc25 ]
  %exitcond.not = icmp eq i64 %indvars.iv14, %wide.trip.count
  br i1 %exitcond.not, label %for.inc28, label %for.body9

for.body9:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv14
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %arrayidx13 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next15
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp slt i32 %2, %3
  br i1 %cmp14, label %if.then, label %for.inc25

if.then:                                          ; preds = %for.body9
  store i32 %3, ptr %arrayidx11, align 4, !tbaa !5
  store i32 %2, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.inc25

for.inc25:                                        ; preds = %for.body9, %if.then
  br label %for.cond5, !llvm.loop !12

for.inc28:                                        ; preds = %for.cond5
  %inc29 = add nuw i32 %j.0, 1
  %indvars.iv.next18 = add i32 %indvars.iv17, -1
  br label %for.cond2, !llvm.loop !13

for.end30:                                        ; preds = %for.cond2
  %4 = load i32, ptr %a, align 16, !tbaa !5
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %5 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %call33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4, i32 noundef %5)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
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
