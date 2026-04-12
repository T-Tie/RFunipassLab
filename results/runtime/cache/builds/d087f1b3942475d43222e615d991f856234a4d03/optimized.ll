; ModuleID = '<stdin>'
source_filename = "/tmp/tmpuzu4pwcy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [500 x i32], align 16
  %a = alloca [500 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %sz) #5
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.inc15
  %indvars.iv24 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next25, %for.inc15 ]
  %k.0 = phi i32 [ 0, %for.cond3.preheader ], [ %k.1, %for.inc15 ]
  %exitcond.not = icmp eq i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond.not, label %for.cond18.preheader, label %for.body6

for.cond18.preheader:                             ; preds = %for.cond3
  %sub = add i32 %k.0, -1
  %smax31 = call i32 @llvm.smax.i32(i32 %sub, i32 0)
  %smax35 = call i32 @llvm.smax.i32(i32 %k.0, i32 -1)
  %2 = add i32 %smax35, 1
  %wide.trip.count32 = zext nneg i32 %smax31 to i64
  br label %for.cond18

for.body6:                                        ; preds = %for.cond3
  %arrayidx8 = getelementptr inbounds nuw [500 x i32], ptr %sz, i64 0, i64 %indvars.iv24
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %4 = and i32 %3, -2147483647
  %cmp9 = icmp eq i32 %4, 1
  br i1 %cmp9, label %if.then, label %for.inc15

if.then:                                          ; preds = %for.body6
  %idxprom12 = sext i32 %k.0 to i64
  %arrayidx13 = getelementptr inbounds [500 x i32], ptr %a, i64 0, i64 %idxprom12
  store i32 %3, ptr %arrayidx13, align 4, !tbaa !5
  %inc14 = add nsw i32 %k.0, 1
  br label %for.inc15

for.inc15:                                        ; preds = %for.body6, %if.then
  %k.1 = phi i32 [ %inc14, %if.then ], [ %k.0, %for.body6 ]
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond3, !llvm.loop !12

for.cond18:                                       ; preds = %for.cond18.preheader, %for.cond.cleanup25
  %l.0 = phi i32 [ %inc48, %for.cond.cleanup25 ], [ 0, %for.cond18.preheader ]
  %exitcond36 = icmp eq i32 %l.0, %2
  br i1 %exitcond36, label %for.cond51.preheader, label %for.cond23

for.cond51.preheader:                             ; preds = %for.cond18
  %5 = load i32, ptr %a, align 16
  %smax41 = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count42 = zext nneg i32 %smax41 to i64
  br label %for.cond51

for.cond23:                                       ; preds = %for.cond18, %for.cond23.backedge
  %indvars.iv28 = phi i64 [ %indvars.iv.next29, %for.cond23.backedge ], [ 0, %for.cond18 ]
  %exitcond33.not = icmp eq i64 %indvars.iv28, %wide.trip.count32
  br i1 %exitcond33.not, label %for.cond.cleanup25, label %for.body26

for.cond.cleanup25:                               ; preds = %for.cond23
  %inc48 = add nuw i32 %l.0, 1
  br label %for.cond18, !llvm.loop !13

for.body26:                                       ; preds = %for.cond23
  %arrayidx28 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv28
  %6 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  %arrayidx30 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv.next29
  %7 = load i32, ptr %arrayidx30, align 4, !tbaa !5
  %cmp31 = icmp sgt i32 %6, %7
  br i1 %cmp31, label %if.then32, label %for.cond23.backedge

for.cond23.backedge:                              ; preds = %for.body26, %if.then32
  br label %for.cond23, !llvm.loop !14

if.then32:                                        ; preds = %for.body26
  store i32 %6, ptr %arrayidx30, align 4, !tbaa !5
  store i32 %7, ptr %arrayidx28, align 4, !tbaa !5
  br label %for.cond23.backedge

for.cond51:                                       ; preds = %for.cond51.preheader, %for.inc64
  %indvars.iv37 = phi i64 [ 0, %for.cond51.preheader ], [ %indvars.iv.next38, %for.inc64 ]
  %exitcond43.not = icmp eq i64 %indvars.iv37, %wide.trip.count42
  br i1 %exitcond43.not, label %for.cond.cleanup53, label %for.body54

for.cond.cleanup53:                               ; preds = %for.cond51
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body54:                                       ; preds = %for.cond51
  %cmp55 = icmp eq i64 %indvars.iv37, 0
  br i1 %cmp55, label %if.then56, label %if.else

if.then56:                                        ; preds = %for.body54
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %5)
  br label %for.inc64

if.else:                                          ; preds = %for.body54
  %arrayidx61 = getelementptr inbounds nuw [500 x i32], ptr %a, i64 0, i64 %indvars.iv37
  %8 = load i32, ptr %arrayidx61, align 4, !tbaa !5
  %call62 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %8)
  br label %for.inc64

for.inc64:                                        ; preds = %if.then56, %if.else
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond51, !llvm.loop !15
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
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
