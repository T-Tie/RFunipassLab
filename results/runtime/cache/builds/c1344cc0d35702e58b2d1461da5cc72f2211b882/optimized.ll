; ModuleID = '<stdin>'
source_filename = "/tmp/tmpob4kx_ss.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() #0 {
entry:
  %LEN = alloca i32, align 4
  %sz = alloca [1000 x i32], align 16
  %js = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %LEN) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %sz) #5
  call void @llvm.lifetime.start.p0(i64 noundef 4000, ptr noundef nonnull align 16 %js) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %LEN)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %LEN, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %2 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %2 to i64
  br label %for.cond3

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc33
  %indvars.iv60 = phi i64 [ %1, %for.cond3.preheader ], [ %indvars.iv.next61, %for.inc33 ]
  %indvars.iv35 = phi i64 [ 1, %for.cond3.preheader ], [ %indvars.iv.next36, %for.inc33 ]
  %smax62 = call i64 @llvm.smax.i64(i64 %indvars.iv60, i64 noundef 0)
  %exitcond = icmp eq i64 %indvars.iv35, %wide.trip.count
  br i1 %exitcond, label %for.cond36.preheader, label %for.cond7

for.cond36.preheader:                             ; preds = %for.cond3
  %wide.trip.count43 = zext nneg i32 %smax to i64
  br label %for.cond36

for.cond7:                                        ; preds = %for.cond3, %for.body10
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body10 ], [ 0, %for.cond3 ]
  %maxIndex.0 = phi i32 [ %spec.select, %for.body10 ], [ 0, %for.cond3 ]
  %exitcond63 = icmp eq i64 %indvars.iv32, %smax62
  br i1 %exitcond63, label %for.end18, label %for.body10

for.body10:                                       ; preds = %for.cond7
  %arrayidx12 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv32
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5
  %idxprom13 = zext nneg i32 %maxIndex.0 to i64
  %arrayidx14 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %idxprom13
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp15 = icmp sgt i32 %3, %4
  %5 = trunc nuw nsw i64 %indvars.iv32 to i32
  %spec.select = select i1 %cmp15, i32 %5, i32 %maxIndex.0
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond7, !llvm.loop !12

for.end18:                                        ; preds = %for.cond7
  %6 = sub nsw i64 %1, %indvars.iv35
  %7 = trunc nsw i64 %6 to i32
  %cmp20.not = icmp eq i32 %maxIndex.0, %7
  br i1 %cmp20.not, label %for.inc33, label %if.then21

if.then21:                                        ; preds = %for.end18
  %idxprom22 = zext nneg i32 %maxIndex.0 to i64
  %arrayidx23 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %idxprom22
  %8 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %arrayidx26 = getelementptr inbounds [1000 x i32], ptr %sz, i64 0, i64 %6
  %9 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  store i32 %9, ptr %arrayidx23, align 4, !tbaa !5
  store i32 %8, ptr %arrayidx26, align 4, !tbaa !5
  br label %for.inc33

for.inc33:                                        ; preds = %for.end18, %if.then21
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1
  %indvars.iv.next61 = add nsw i64 %indvars.iv60, -1
  br label %for.cond3, !llvm.loop !13

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc49
  %indvars.iv40 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next41, %for.inc49 ]
  %k.0 = phi i32 [ 0, %for.cond36.preheader ], [ %k.1, %for.inc49 ]
  %exitcond44.not = icmp eq i64 %indvars.iv40, %wide.trip.count43
  br i1 %exitcond44.not, label %for.end51, label %for.body38

for.body38:                                       ; preds = %for.cond36
  %arrayidx40 = getelementptr inbounds nuw [1000 x i32], ptr %sz, i64 0, i64 %indvars.iv40
  %10 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %11 = and i32 %10, 1
  %cmp41.not = icmp eq i32 %11, 0
  br i1 %cmp41.not, label %for.inc49, label %if.then42

if.then42:                                        ; preds = %for.body38
  %idxprom45 = sext i32 %k.0 to i64
  %arrayidx46 = getelementptr inbounds [1000 x i32], ptr %js, i64 0, i64 %idxprom45
  store i32 %10, ptr %arrayidx46, align 4, !tbaa !5
  %inc47 = add nsw i32 %k.0, 1
  br label %for.inc49

for.inc49:                                        ; preds = %for.body38, %if.then42
  %k.1 = phi i32 [ %inc47, %if.then42 ], [ %k.0, %for.body38 ]
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1
  br label %for.cond36, !llvm.loop !14

for.end51:                                        ; preds = %for.cond36
  %cmp52 = icmp slt i32 %k.0, 2
  br i1 %cmp52, label %for.cond54.preheader, label %for.cond66.preheader

for.cond54.preheader:                             ; preds = %for.end51
  %smax54 = call i32 @llvm.smax.i32(i32 %k.0, i32 noundef 0)
  %wide.trip.count55 = zext nneg i32 %smax54 to i64
  br label %for.cond54

for.cond66.preheader:                             ; preds = %for.end51
  %sub67 = add nsw i32 %k.0, -1
  %wide.trip.count48 = zext nneg i32 %sub67 to i64
  br label %for.cond66

for.cond54:                                       ; preds = %for.cond54.preheader, %for.inc60
  %indvars.iv50 = phi i64 [ 0, %for.cond54.preheader ], [ %indvars.iv.next51, %for.inc60 ]
  %exitcond56.not = icmp eq i64 %indvars.iv50, %wide.trip.count55
  br i1 %exitcond56.not, label %if.end80, label %for.inc60

for.inc60:                                        ; preds = %for.cond54
  %arrayidx58 = getelementptr inbounds nuw [1000 x i32], ptr %js, i64 0, i64 %indvars.iv50
  %12 = load i32, ptr %arrayidx58, align 4, !tbaa !5
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %12) #6
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1
  br label %for.cond54, !llvm.loop !15

for.cond66:                                       ; preds = %for.cond66.preheader, %for.inc73
  %indvars.iv45 = phi i64 [ 0, %for.cond66.preheader ], [ %indvars.iv.next46, %for.inc73 ]
  %exitcond49.not = icmp eq i64 %indvars.iv45, %wide.trip.count48
  br i1 %exitcond49.not, label %for.end75, label %for.inc73

for.inc73:                                        ; preds = %for.cond66
  %arrayidx71 = getelementptr inbounds nuw [1000 x i32], ptr %js, i64 0, i64 %indvars.iv45
  %13 = load i32, ptr %arrayidx71, align 4, !tbaa !5
  %call72 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %13) #6
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1
  br label %for.cond66, !llvm.loop !16

for.end75:                                        ; preds = %for.cond66
  %idxprom77 = sext i32 %sub67 to i64
  %arrayidx78 = getelementptr inbounds [1000 x i32], ptr %js, i64 0, i64 %idxprom77
  %14 = load i32, ptr %arrayidx78, align 4, !tbaa !5
  %call79 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %14) #6
  br label %if.end80

if.end80:                                         ; preds = %for.cond54, %for.end75
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %js) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4000, ptr noundef nonnull %sz) #6
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %LEN) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
