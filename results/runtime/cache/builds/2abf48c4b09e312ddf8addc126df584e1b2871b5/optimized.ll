; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa27_5qh_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %k = alloca i32, align 4
  %a = alloca [25 x i32], align 16
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %k) #6
  store i32 0, ptr %k, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 captures(none) dereferenceable(100) %a) #6
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %b) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %k)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %k, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond2

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc8
  %indvars.iv7 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next8, %for.inc8 ]
  %exitcond.not = icmp eq i64 %indvars.iv7, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11, label %for.inc8

for.inc8:                                         ; preds = %for.cond2
  %2 = trunc nuw nsw i64 %indvars.iv7 to i32
  %call5 = call noundef i32 @_Z2ljPiii(ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(100) %a, i32 noundef %2, i32 noundef %0) #7
  %arrayidx7 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv7
  store i32 %call5, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next8 = add nuw nsw i64 %indvars.iv7, 1
  br label %for.cond2, !llvm.loop !12

for.cond11:                                       ; preds = %for.cond2, %for.body13
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body13 ], [ 0, %for.cond2 ]
  %t.0 = phi i32 [ %spec.select, %for.body13 ], [ 0, %for.cond2 ]
  %exitcond15.not = icmp eq i64 %indvars.iv11, %wide.trip.count
  br i1 %exitcond15.not, label %for.end21, label %for.body13

for.body13:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv11
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !13
  %spec.select = call i32 @llvm.smax.i32(i32 %t.0, i32 %3)
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond11, !llvm.loop !14

for.end21:                                        ; preds = %for.cond11
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %t.0)
  %call23 = call i32 @getchar()
  %call24 = call i32 @getchar()
  %call25 = call i32 @getchar()
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %b) #7
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull %a) #7
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %k) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef range(i32 -2147483647, -2147483648) i32 @_Z2ljPiii(ptr nofree noundef readonly captures(none) %a, i32 noundef %n, i32 noundef %m) local_unnamed_addr #3 {
entry:
  %b = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 100, ptr noundef nonnull align 16 %b) #8
  %sub = add nsw i32 %m, -1
  %cmp = icmp eq i32 %n, %sub
  br i1 %cmp, label %cleanup, label %for.cond

for.cond:                                         ; preds = %entry, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 25
  br i1 %exitcond.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !15

for.end:                                          ; preds = %for.cond
  %add = add i32 %n, 1
  %idxprom7 = sext i32 %n to i64
  %arrayidx8 = getelementptr inbounds i32, ptr %a, i64 %idxprom7
  %0 = sext i32 %add to i64
  %1 = sext i32 %m to i64
  br label %for.cond2

for.cond2:                                        ; preds = %for.inc13, %for.end
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.inc13 ], [ %0, %for.end ]
  %cmp3 = icmp slt i64 %indvars.iv3, %1
  br i1 %cmp3, label %for.body4, label %for.cond20

for.body4:                                        ; preds = %for.cond2
  %arrayidx6 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv3
  %2 = load i32, ptr %arrayidx6, align 4, !tbaa !5, !invariant.load !13
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5, !invariant.load !13
  %cmp9.not = icmp sgt i32 %2, %3
  br i1 %cmp9.not, label %for.inc13, label %if.then10

if.then10:                                        ; preds = %for.body4
  %4 = trunc nsw i64 %indvars.iv3 to i32
  %call = tail call noundef i32 @_Z2ljPiii(ptr nofree noundef nonnull readonly captures(none) %a, i32 noundef %4, i32 noundef %m) #9
  %arrayidx12 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %indvars.iv3
  store i32 %call, ptr %arrayidx12, align 4, !tbaa !5
  br label %for.inc13

for.inc13:                                        ; preds = %for.body4, %if.then10
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, 1
  br label %for.cond2, !llvm.loop !16

for.cond20:                                       ; preds = %for.cond2, %for.body22
  %indvars.iv6 = phi i64 [ %indvars.iv.next7, %for.body22 ], [ %0, %for.cond2 ]
  %t.0 = phi i32 [ %spec.select, %for.body22 ], [ undef, %for.cond2 ]
  %cmp21 = icmp slt i64 %indvars.iv6, %1
  br i1 %cmp21, label %for.body22, label %for.end32

for.body22:                                       ; preds = %for.cond20
  %arrayidx24 = getelementptr inbounds [25 x i32], ptr %b, i64 0, i64 %indvars.iv6
  %5 = load i32, ptr %arrayidx24, align 4, !tbaa !5, !invariant.load !13
  %spec.select = tail call i32 @llvm.smax.i32(i32 %t.0, i32 %5)
  %indvars.iv.next7 = add nsw i64 %indvars.iv6, 1
  br label %for.cond20, !llvm.loop !17

for.end32:                                        ; preds = %for.cond20
  %add33 = add nsw i32 %t.0, 1
  br label %cleanup

cleanup:                                          ; preds = %entry, %for.end32
  %retval.0 = phi i32 [ %add33, %for.end32 ], [ 1, %entry ]
  call void @llvm.lifetime.end.p0(i64 noundef 100, ptr noundef nonnull align 16 %b) #8
  ret i32 %retval.0
}

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
declare i32 @getchar() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nofree nounwind }
attributes #9 = { nofree nosync nounwind }

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
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
