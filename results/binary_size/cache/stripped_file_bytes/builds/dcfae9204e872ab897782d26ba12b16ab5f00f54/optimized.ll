; ModuleID = '<stdin>'
source_filename = "/tmp/tmpe_35yufa.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull %b) #5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond
  %2 = add i32 %0, -1
  %3 = sext i32 %2 to i64
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx2)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5.loopexit:                               ; preds = %for.cond9
  %indvars.iv.next6 = add nsw i64 %indvars.iv5, -1
  br label %for.cond5, !llvm.loop !12

for.cond5:                                        ; preds = %for.cond5.loopexit, %for.cond5.preheader
  %indvars.iv10 = phi i64 [ %indvars.iv.next11, %for.cond5.loopexit ], [ %1, %for.cond5.preheader ]
  %indvars.iv5 = phi i64 [ %indvars.iv.next6, %for.cond5.loopexit ], [ %3, %for.cond5.preheader ]
  %indvars.iv.next11 = add nsw i64 %indvars.iv10, -1
  %cmp6 = icmp sgt i64 %indvars.iv10, 0
  br i1 %cmp6, label %for.cond9.preheader, label %for.end34

for.cond9.preheader:                              ; preds = %for.cond5
  %arrayidx15 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %indvars.iv.next11
  %arrayidx21 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %indvars.iv.next11
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond9.preheader, %if.end
  %indvars.iv7 = phi i64 [ %indvars.iv5, %for.cond9.preheader ], [ %indvars.iv.next8, %if.end ]
  %cmp10 = icmp slt i64 %indvars.iv7, %1
  br i1 %cmp10, label %for.body12, label %for.cond5.loopexit

for.body12:                                       ; preds = %for.cond9
  %4 = icmp eq i64 %indvars.iv7, %indvars.iv.next11
  br i1 %4, label %if.end, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body12
  %5 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !13
  %arrayidx17 = getelementptr inbounds [25 x i32], ptr %a, i64 0, i64 %indvars.iv7
  %6 = load i32, ptr %arrayidx17, align 4, !tbaa !5, !invariant.load !13
  %cmp18.not = icmp slt i32 %5, %6
  br i1 %cmp18.not, label %if.end, label %land.lhs.true19

land.lhs.true19:                                  ; preds = %land.lhs.true
  %7 = load i32, ptr %arrayidx21, align 4, !tbaa !5, !invariant.load !13
  %arrayidx23 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %indvars.iv7
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5, !invariant.load !13
  %add = add nsw i32 %8, 1
  %spec.store.select = call i32 @llvm.smax.i32(i32 %7, i32 %add)
  store i32 %spec.store.select, ptr %arrayidx21, align 4
  br label %if.end

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true, %for.body12
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, 1
  br label %for.cond9, !llvm.loop !14

for.end34:                                        ; preds = %for.cond5
  %9 = load i32, ptr %b, align 16, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond37

for.cond37:                                       ; preds = %for.body40, %for.end34
  %indvars.iv13 = phi i64 [ %indvars.iv.next14, %for.body40 ], [ 0, %for.end34 ]
  %max.0 = phi i32 [ %spec.select, %for.body40 ], [ %9, %for.end34 ]
  %exitcond.not = icmp eq i64 %indvars.iv13, %wide.trip.count
  br i1 %exitcond.not, label %for.end50, label %for.body40

for.body40:                                       ; preds = %for.cond37
  %arrayidx42 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv13
  %10 = load i32, ptr %arrayidx42, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %10, i32 %max.0)
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond37, !llvm.loop !15

for.end50:                                        ; preds = %for.cond37
  %call51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %max.0)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
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
attributes #4 = { nofree nounwind }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = !{}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
