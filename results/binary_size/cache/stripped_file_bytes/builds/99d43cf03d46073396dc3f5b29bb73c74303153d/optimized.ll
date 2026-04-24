; ModuleID = '<stdin>'
source_filename = "/tmp/tmpz6slemp5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %x = alloca [310 x i32], align 16
  %y = alloca [310 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 1240, ptr noundef nonnull align 16 %x) #4
  call void @llvm.lifetime.start.p0(i64 noundef 1240, ptr noundef nonnull align 16 %y) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.inc, label %for.end

for.inc:                                          ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [310 x i32], ptr %x, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %2 = load i32, ptr %x, align 16, !tbaa !5
  store i32 %2, ptr %y, align 16, !tbaa !5
  %smax27 = call i32 @llvm.smax.i32(i32 %0, i32 1)
  %wide.trip.count28 = zext nneg i32 %smax27 to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.inc27, %for.end
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc27 ], [ 1, %for.end ]
  %k.0 = phi i32 [ %k.1, %for.inc27 ], [ 1, %for.end ]
  %exitcond29.not = icmp eq i64 %indvars.iv23, %wide.trip.count28
  br i1 %exitcond29.not, label %for.end29, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond5
  %arrayidx12 = getelementptr inbounds nuw [310 x i32], ptr %x, i64 0, i64 %indvars.iv23
  %smax = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond8

for.cond8:                                        ; preds = %for.cond8.preheader, %for.inc16
  %indvars.iv20 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next21, %for.inc16 ]
  %exitcond.not = icmp eq i64 %indvars.iv20, %wide.trip.count
  br i1 %exitcond.not, label %for.end18, label %for.body10

for.body10:                                       ; preds = %for.cond8
  %3 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !12
  %arrayidx14 = getelementptr inbounds nuw [310 x i32], ptr %y, i64 0, i64 %indvars.iv20
  %4 = load i32, ptr %arrayidx14, align 4, !tbaa !5, !invariant.load !12
  %cmp15 = icmp eq i32 %3, %4
  br i1 %cmp15, label %for.end18.split.loop.exit, label %for.inc16

for.inc16:                                        ; preds = %for.body10
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond8, !llvm.loop !13

for.end18.split.loop.exit:                        ; preds = %for.body10
  %5 = trunc nuw nsw i64 %indvars.iv20 to i32
  br label %for.end18

for.end18:                                        ; preds = %for.cond8, %for.end18.split.loop.exit
  %j.0.lcssa = phi i32 [ %5, %for.end18.split.loop.exit ], [ %smax, %for.cond8 ]
  %cmp19 = icmp eq i32 %j.0.lcssa, %k.0
  br i1 %cmp19, label %if.then20, label %for.inc27

if.then20:                                        ; preds = %for.end18
  %6 = load i32, ptr %arrayidx12, align 4, !tbaa !5, !invariant.load !12
  %idxprom23 = sext i32 %k.0 to i64
  %arrayidx24 = getelementptr inbounds [310 x i32], ptr %y, i64 0, i64 %idxprom23
  store i32 %6, ptr %arrayidx24, align 4, !tbaa !5
  %inc25 = add nsw i32 %k.0, 1
  br label %for.inc27

for.inc27:                                        ; preds = %for.end18, %if.then20
  %k.1 = phi i32 [ %inc25, %if.then20 ], [ %k.0, %for.end18 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond5, !llvm.loop !14

for.end29:                                        ; preds = %for.cond5
  %7 = load i32, ptr %y, align 16, !tbaa !5
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  %smax34 = call i32 @llvm.smax.i32(i32 %k.0, i32 1)
  %wide.trip.count35 = zext nneg i32 %smax34 to i64
  br label %for.cond32

for.cond32:                                       ; preds = %for.inc38, %for.end29
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %for.inc38 ], [ 1, %for.end29 ]
  %exitcond36.not = icmp eq i64 %indvars.iv30, %wide.trip.count35
  br i1 %exitcond36.not, label %for.end40, label %for.inc38

for.inc38:                                        ; preds = %for.cond32
  %arrayidx36 = getelementptr inbounds nuw [310 x i32], ptr %y, i64 0, i64 %indvars.iv30
  %8 = load i32, ptr %arrayidx36, align 4, !tbaa !5, !invariant.load !12
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1
  br label %for.cond32, !llvm.loop !15

for.end40:                                        ; preds = %for.cond32
  call void @llvm.lifetime.end.p0(i64 noundef 1240, ptr noundef nonnull %y) #5
  call void @llvm.lifetime.end.p0(i64 noundef 1240, ptr noundef nonnull %x) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!12 = !{}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
