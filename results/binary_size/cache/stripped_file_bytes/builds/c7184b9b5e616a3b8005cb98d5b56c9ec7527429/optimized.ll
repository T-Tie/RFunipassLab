; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj0j9eeh5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.days = private unnamed_addr constant [12 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"YES\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NO\0A\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [200 x i32], align 16
  %b = alloca [200 x i32], align 16
  %c = alloca [200 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #7
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %a) #7
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %b) #7
  call void @llvm.lifetime.start.p0(i64 noundef 800, ptr noundef nonnull align 16 %c) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %if.end84, %entry
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %if.end84 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv49, %1
  br i1 %cmp, label %for.body, label %for.end94

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv49
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %b, i64 0, i64 %indvars.iv49
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %c, i64 0, i64 %indvars.iv49
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %3 = and i32 %2, 3
  %cmp8 = icmp eq i32 %3, 0
  %rem11 = srem i32 %2, 100
  %cmp12 = icmp ne i32 %rem11, 0
  %or.cond = and i1 %cmp8, %cmp12
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %smax40 = call i32 @llvm.smax.i32(i32 %4, i32 noundef 0)
  %wide.trip.count41 = zext nneg i32 %smax40 to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.inc, %if.then
  %indvars.iv37 = phi i64 [ %indvars.iv.next38, %for.inc ], [ 0, %if.then ]
  %exitcond42.not = icmp eq i64 %indvars.iv37, %wide.trip.count41
  br i1 %exitcond42.not, label %for.cond21.preheader, label %for.inc

for.cond21.preheader:                             ; preds = %for.cond14
  %5 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %smax46 = call i32 @llvm.smax.i32(i32 %5, i32 noundef 0)
  %wide.trip.count47 = zext nneg i32 %smax46 to i64
  br label %for.cond21

for.inc:                                          ; preds = %for.cond14
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  br label %for.cond14, !llvm.loop !10

for.cond21:                                       ; preds = %for.cond21.preheader, %for.inc29
  %indvars.iv43 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next44, %for.inc29 ]
  %exitcond48.not = icmp eq i64 %indvars.iv43, %wide.trip.count47
  br i1 %exitcond48.not, label %if.end84, label %for.inc29

for.inc29:                                        ; preds = %for.cond21
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  br label %for.cond21, !llvm.loop !13

if.else:                                          ; preds = %for.body
  %rem34 = srem i32 %2, 400
  %cmp35 = icmp eq i32 %rem34, 0
  %6 = load i32, ptr %arrayidx2, align 4, !tbaa !5, !invariant.load !9
  %smax28 = call i32 @llvm.smax.i32(i32 %6, i32 noundef 0)
  %wide.trip.count29 = zext nneg i32 %smax28 to i64
  br i1 %cmp35, label %for.cond38, label %for.cond62

for.cond38:                                       ; preds = %if.else, %for.inc46
  %indvars.iv25 = phi i64 [ %indvars.iv.next26, %for.inc46 ], [ 0, %if.else ]
  %exitcond30.not = icmp eq i64 %indvars.iv25, %wide.trip.count29
  br i1 %exitcond30.not, label %for.cond49.preheader, label %for.inc46

for.cond49.preheader:                             ; preds = %for.cond38
  %7 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %smax34 = call i32 @llvm.smax.i32(i32 %7, i32 noundef 0)
  %wide.trip.count35 = zext nneg i32 %smax34 to i64
  br label %for.cond49

for.inc46:                                        ; preds = %for.cond38
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1
  br label %for.cond38, !llvm.loop !14

for.cond49:                                       ; preds = %for.cond49.preheader, %for.inc57
  %indvars.iv31 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next32, %for.inc57 ]
  %exitcond36.not = icmp eq i64 %indvars.iv31, %wide.trip.count35
  br i1 %exitcond36.not, label %if.end84, label %for.inc57

for.inc57:                                        ; preds = %for.cond49
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  br label %for.cond49, !llvm.loop !15

for.cond62:                                       ; preds = %if.else, %for.inc70
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc70 ], [ 0, %if.else ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count29
  br i1 %exitcond.not, label %for.cond73.preheader, label %for.inc70

for.cond73.preheader:                             ; preds = %for.cond62
  %8 = load i32, ptr %arrayidx4, align 4, !tbaa !5, !invariant.load !9
  %smax22 = call i32 @llvm.smax.i32(i32 %8, i32 noundef 0)
  %wide.trip.count23 = zext nneg i32 %smax22 to i64
  br label %for.cond73

for.inc70:                                        ; preds = %for.cond62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond62, !llvm.loop !16

for.cond73:                                       ; preds = %for.cond73.preheader, %for.inc81
  %indvars.iv19 = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next20, %for.inc81 ]
  %exitcond24.not = icmp eq i64 %indvars.iv19, %wide.trip.count23
  br i1 %exitcond24.not, label %if.end84, label %for.inc81

for.inc81:                                        ; preds = %for.cond73
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond73, !llvm.loop !17

if.end84:                                         ; preds = %for.cond73, %for.cond49, %for.cond21
  %puts13 = call i32 @puts(ptr noundef nonnull dereferenceable(1) @str.1) #8
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1
  br label %for.cond, !llvm.loop !18

for.end94:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %c) #8
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %b) #8
  call void @llvm.lifetime.end.p0(i64 noundef 800, ptr noundef nonnull %a) #8
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #8
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nofree nounwind willreturn }
attributes #8 = { nounwind }

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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
