; ModuleID = '<stdin>'
source_filename = "/tmp/tmp9qsmz9y9.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

%struct.a = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [25 x %struct.a], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count29 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.end18
  %indvars.iv25 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next26, %for.end18 ]
  %indvars.iv19 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next20, %for.end18 ]
  %exitcond30.not = icmp eq i64 %indvars.iv25, %wide.trip.count29
  br i1 %exitcond30.not, label %for.cond24.preheader, label %for.body4

for.cond24.preheader:                             ; preds = %for.cond2
  %2 = zext i32 %0 to i64
  br label %for.cond24.outer

for.cond24.outer:                                 ; preds = %if.then36, %for.cond24.preheader
  %indvars.iv32.ph = phi i64 [ %6, %if.then36 ], [ %2, %for.cond24.preheader ]
  %w.0.ph = phi i32 [ %inc44, %if.then36 ], [ undef, %for.cond24.preheader ]
  br label %for.cond24

for.body4:                                        ; preds = %for.cond2
  %arrayidx12 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv25
  br label %for.cond5

for.cond5:                                        ; preds = %for.body7, %for.body4
  %indvars.iv21 = phi i64 [ %indvars.iv.next22, %for.body7 ], [ %indvars.iv19, %for.body4 ]
  %k.0 = phi i32 [ %spec.select, %for.body7 ], [ 0, %for.body4 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.end18, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv21
  %3 = load i32, ptr %arrayidx9, align 8, !tbaa !12
  %4 = load i32, ptr %arrayidx12, align 8, !tbaa !12
  %cmp14 = icmp slt i32 %3, %4
  %inc15 = zext i1 %cmp14 to i32
  %spec.select = add nuw nsw i32 %k.0, %inc15
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond5, !llvm.loop !14

for.end18:                                        ; preds = %for.cond5
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  %y = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %indvars.iv25, i32 1
  store i32 %k.0, ptr %y, align 4, !tbaa !15
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond2, !llvm.loop !16

for.cond24:                                       ; preds = %for.cond24.outer, %for.body26
  %indvars.iv32 = phi i64 [ %6, %for.body26 ], [ %indvars.iv32.ph, %for.cond24.outer ]
  %5 = trunc nuw i64 %indvars.iv32 to i32
  %cmp25 = icmp sgt i32 %5, 1
  br i1 %cmp25, label %for.body26, label %for.end47

for.body26:                                       ; preds = %for.cond24
  %6 = add nsw i64 %indvars.iv32, -1
  %7 = add nsw i64 %indvars.iv32, -2
  %y30 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %7, i32 1
  %8 = load i32, ptr %y30, align 4, !tbaa !15
  %y33 = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %6, i32 1
  %9 = load i32, ptr %y33, align 4, !tbaa !15
  %cmp35.not = icmp sgt i32 %8, %9
  br i1 %cmp35.not, label %for.cond24, label %if.then36, !llvm.loop !17

if.then36:                                        ; preds = %for.body26
  %y30.le = getelementptr inbounds nuw [25 x %struct.a], ptr %a, i64 0, i64 %7, i32 1
  store i32 %9, ptr %y30.le, align 4, !tbaa !15
  %inc44 = add nsw i32 %w.0.ph, 1
  br label %for.cond24.outer, !llvm.loop !17

for.end47:                                        ; preds = %for.cond24
  %sub48 = sub nsw i32 %0, %w.0.ph
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %sub48)
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!12 = !{!13, !6, i64 0}
!13 = !{!"_ZTSZ4mainE1a", !6, i64 0, !6, i64 4}
!14 = distinct !{!14, !10, !11}
!15 = !{!13, !6, i64 4}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
