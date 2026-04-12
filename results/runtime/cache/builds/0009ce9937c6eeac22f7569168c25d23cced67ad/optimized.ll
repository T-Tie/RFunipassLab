; ModuleID = '<stdin>'
source_filename = "/tmp/tmpviewnt9e.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"NO\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %s = alloca [501 x i8], align 16
  %a = alloca [501 x [5 x i8]], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 noundef 501, ptr noundef nonnull align 16 %s) #6
  call void @llvm.lifetime.start.p0(i64 noundef 2505, ptr noundef nonnull align 16 %a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull writeonly align 16 dereferenceable(2505) %a, i8 noundef 0, i64 noundef 2505, i1 noundef false) #7
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %s)
  %call3 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #8
  %conv = trunc i64 %call3 to i32
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %sub = sub nsw i32 %conv, %0
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 noundef 0)
  %smax22 = call i32 @llvm.smax.i32(i32 %sub, i32 noundef -1)
  %1 = add i32 %smax22, 1
  %wide.trip.count23 = zext i32 %1 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc12, %entry
  %indvars.iv19 = phi i64 [ %indvars.iv.next20, %for.inc12 ], [ 0, %entry ]
  %exitcond24 = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24, label %for.cond15.preheader, label %for.cond4

for.cond15.preheader:                             ; preds = %for.cond
  %wide.trip.count30 = zext i32 %sub to i64
  br label %for.cond15

for.cond4:                                        ; preds = %for.cond, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.inc12, label %for.inc

for.inc:                                          ; preds = %for.cond4
  %2 = add nuw nsw i64 %indvars.iv, %indvars.iv19
  %arrayidx = getelementptr inbounds nuw [501 x i8], ptr %s, i64 0, i64 %2
  %3 = load i8, ptr %arrayidx, align 1, !tbaa !9, !invariant.load !10
  %arrayidx11 = getelementptr inbounds nuw [501 x [5 x i8]], ptr %a, i64 0, i64 %indvars.iv19, i64 %indvars.iv
  store i8 %3, ptr %arrayidx11, align 1, !tbaa !9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond4, !llvm.loop !11

for.inc12:                                        ; preds = %for.cond4
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond, !llvm.loop !14

for.cond15:                                       ; preds = %for.cond15.preheader, %for.inc42
  %indvars.iv25 = phi i64 [ 0, %for.cond15.preheader ], [ %indvars.iv.next26, %for.inc42 ]
  %exitcond34 = icmp eq i64 %indvars.iv25, %wide.trip.count23
  br i1 %exitcond34, label %for.cond45, label %for.cond21.preheader

for.cond21.preheader:                             ; preds = %for.cond15
  br label %for.cond21

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc39
  %indvars.iv27 = phi i64 [ %indvars.iv25, %for.cond21.preheader ], [ %indvars.iv.next28, %for.inc39 ]
  %indvars.iv.next28 = add nuw nsw i64 %indvars.iv27, 1
  %exitcond31.not = icmp eq i64 %indvars.iv27, %wide.trip.count30
  br i1 %exitcond31.not, label %for.inc42, label %for.body25

for.body25:                                       ; preds = %for.cond21
  br label %for.inc39

for.inc39:                                        ; preds = %for.body25
  br label %for.cond21, !llvm.loop !15

for.inc42:                                        ; preds = %for.cond21
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond15, !llvm.loop !16

for.cond45:                                       ; preds = %for.cond15, %for.inc66
  %k.0 = phi i32 [ %dec, %for.inc66 ], [ 500, %for.cond15 ]
  %cmp46.not = icmp eq i32 %k.0, 0
  br i1 %cmp46.not, label %if.end86, label %for.cond49

for.cond49:                                       ; preds = %for.cond45
  %exitcond39 = icmp eq i64 0, %wide.trip.count23
  br i1 %exitcond39, label %for.inc66, label %for.body53

for.body53:                                       ; preds = %for.cond49
  unreachable

for.inc66:                                        ; preds = %for.cond49
  %dec = add nsw i32 %k.0, -1
  br label %for.cond45, !llvm.loop !17

if.end86:                                         ; preds = %for.cond45
  %call70 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #9
  call void @llvm.lifetime.end.p0(i64 noundef 2505, ptr noundef nonnull %a) #9
  call void @llvm.lifetime.end.p0(i64 noundef 501, ptr noundef nonnull %s) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #4

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind }
attributes #7 = { nofree }
attributes #8 = { nounwind willreturn memory(read) }
attributes #9 = { nounwind }

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
!9 = !{!7, !7, i64 0}
!10 = !{}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = distinct !{!16, !12, !13}
!17 = distinct !{!17, !12, !13}
