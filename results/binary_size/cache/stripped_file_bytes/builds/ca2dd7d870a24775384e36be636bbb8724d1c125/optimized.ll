; ModuleID = '<stdin>'
source_filename = "/tmp/tmplypdr7bp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %0 = load i8, ptr %a, align 16, !tbaa !5
  %cmp.not18 = icmp eq i8 %0, 0
  br i1 %cmp.not18, label %for.end55, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %entry, %for.inc51
  %indvars.iv36 = phi i32 [ %indvars.iv.next37, %for.inc51 ], [ 0, %entry ]
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc51 ], [ 0, %entry ]
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5, %for.cond5.preheader
  %indvars.iv39 = phi i64 [ %indvars.iv.next40, %for.cond5 ], [ %indvars.iv30, %for.cond5.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond5 ], [ 0, %for.cond5.preheader ]
  %arrayidx7 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx7, align 1, !tbaa !5
  %2 = add nuw nsw i64 %indvars.iv, %indvars.iv30
  %arrayidx10 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx10, align 1, !tbaa !5
  %cmp12 = icmp ne i8 %1, %3
  %cmp16.not = icmp eq i8 %1, 0
  %or.cond = or i1 %cmp16.not, %cmp12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next40 = add nuw i64 %indvars.iv39, 1
  br i1 %or.cond, label %for.end, label %for.cond5, !llvm.loop !8

for.end:                                          ; preds = %for.cond5
  br i1 %cmp16.not, label %for.cond22.preheader, label %for.inc51

for.cond22.preheader:                             ; preds = %for.end
  %cmp2320.not = icmp eq i64 %indvars.iv30, 0
  br i1 %cmp2320.not, label %for.cond.cleanup24, label %for.body25.preheader

for.body25.preheader:                             ; preds = %for.cond22.preheader
  %wide.trip.count = zext i32 %indvars.iv36 to i64
  br label %for.body25

for.cond.cleanup24:                               ; preds = %for.body25, %for.cond22.preheader
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %c)
  %idxprom3822 = and i64 %2, 4294967295
  %arrayidx3923 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %idxprom3822
  %4 = load i8, ptr %arrayidx3923, align 1, !tbaa !5
  %cmp41.not24 = icmp eq i8 %4, 0
  br i1 %cmp41.not24, label %cleanup58, label %for.body43

for.body25:                                       ; preds = %for.body25.preheader, %for.body25
  %indvars.iv33 = phi i64 [ 0, %for.body25.preheader ], [ %indvars.iv.next34, %for.body25 ]
  %arrayidx27 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv33
  %5 = load i8, ptr %arrayidx27, align 1, !tbaa !5
  %conv28 = sext i8 %5 to i32
  %putchar16 = call i32 @putchar(i32 %conv28)
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next34, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup24, label %for.body25, !llvm.loop !11

for.body43:                                       ; preds = %for.cond.cleanup24, %for.body43
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %for.body43 ], [ %indvars.iv39, %for.cond.cleanup24 ]
  %6 = phi i8 [ %7, %for.body43 ], [ %4, %for.cond.cleanup24 ]
  %conv40 = sext i8 %6 to i32
  %putchar = call i32 @putchar(i32 %conv40)
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  %arrayidx39 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next43
  %7 = load i8, ptr %arrayidx39, align 1, !tbaa !5
  %cmp41.not = icmp eq i8 %7, 0
  br i1 %cmp41.not, label %cleanup58, label %for.body43, !llvm.loop !12

for.inc51:                                        ; preds = %for.end
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv.next31
  %8 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp.not = icmp eq i8 %8, 0
  %indvars.iv.next37 = add nuw i32 %indvars.iv36, 1
  br i1 %cmp.not, label %for.end55, label %for.cond5.preheader, !llvm.loop !13

for.end55:                                        ; preds = %for.inc51, %entry
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %a)
  br label %cleanup58

cleanup58:                                        ; preds = %for.body43, %for.cond.cleanup24, %for.end55
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
