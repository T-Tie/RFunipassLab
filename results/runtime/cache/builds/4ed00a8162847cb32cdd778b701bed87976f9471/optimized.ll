; ModuleID = '<stdin>'
source_filename = "/tmp/tmp97aupckr.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z1fPii(ptr nofree noundef readonly captures(none) %a, i32 noundef %n) #0 {
entry:
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %b) #5
  %smax = call i32 @llvm.smax.i32(i32 noundef %n, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %sub = add nsw i32 %n, -2
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc29, %for.end
  %i1.0 = phi i32 [ %sub, %for.end ], [ %dec, %for.inc29 ]
  %cmp3 = icmp sgt i32 %i1.0, -1
  br i1 %cmp3, label %for.cond6.preheader, label %for.end30

for.cond6.preheader:                              ; preds = %for.cond2
  %0 = zext nneg i32 %i1.0 to i64
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %a, i64 %0
  %arrayidx16 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %0
  br label %for.cond6

for.cond6:                                        ; preds = %for.cond6.preheader, %for.inc26
  %indvars.iv21 = phi i64 [ %0, %for.cond6.preheader ], [ %indvars.iv.next22, %for.inc26 ]
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %1 = trunc nuw i64 %indvars.iv.next22 to i32
  %cmp7 = icmp sgt i32 %n, %1
  br i1 %cmp7, label %for.body9, label %for.inc29

for.body9:                                        ; preds = %for.cond6
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv.next22
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5, !invariant.load !12
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !12
  %cmp14.not = icmp sgt i32 %2, %3
  br i1 %cmp14.not, label %for.inc26, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body9
  %4 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv.next22
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add19 = add nsw i32 %5, 1
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %4, i32 %add19)
  store i32 %spec.store.select, ptr %arrayidx16, align 4
  br label %for.inc26

for.inc26:                                        ; preds = %land.lhs.true, %for.body9
  br label %for.cond6, !llvm.loop !13

for.inc29:                                        ; preds = %for.cond6
  %dec = add nsw i32 %i1.0, -1
  br label %for.cond2, !llvm.loop !14

for.end30:                                        ; preds = %for.cond2
  %6 = load i32, ptr %b, align 16, !tbaa !5
  br label %for.cond33

for.cond33:                                       ; preds = %for.body36, %for.end30
  %indvars.iv24 = phi i64 [ %indvars.iv.next25, %for.body36 ], [ 0, %for.end30 ]
  %max.0 = phi i32 [ %spec.select, %for.body36 ], [ %6, %for.end30 ]
  %exitcond28.not = icmp eq i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond28.not, label %for.end46, label %for.body36

for.body36:                                       ; preds = %for.cond33
  %arrayidx38 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv24
  %7 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %spec.select = tail call i32 @llvm.smax.i32(i32 %7, i32 %max.0)
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond33, !llvm.loop !15

for.end46:                                        ; preds = %for.cond33
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull align 16 %b) #5
  ret i32 %max.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #2 {
entry:
  %n = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 captures(none) dereferenceable(100) %a) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !16

for.end:                                          ; preds = %for.cond
  %call2 = call noundef i32 @_Z1fPii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(100) %a, i32 noundef %0)
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %call2)
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind }
attributes #6 = { nofree nounwind willreturn }

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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
