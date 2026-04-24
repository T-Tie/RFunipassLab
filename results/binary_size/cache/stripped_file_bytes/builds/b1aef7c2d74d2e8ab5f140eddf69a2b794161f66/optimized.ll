; ModuleID = '<stdin>'
source_filename = "/tmp/tmpj0j9eeh5.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.days = private unnamed_addr constant [12 x i32] [i32 0, i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"%d %d %d\00", align 1
@str = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@str.1 = private unnamed_addr constant [4 x i8] c"YES\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [200 x i32], align 16
  %b = alloca [200 x i32], align 16
  %c = alloca [200 x i32], align 16
  %days = alloca [12 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %days) #6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %days, ptr noundef nonnull align 16 dereferenceable(48) @__const.main.days, i64 48, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %days, i64 8
  br label %for.cond

for.cond:                                         ; preds = %if.end84, %entry
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %if.end84 ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv72, %1
  br i1 %cmp, label %for.body, label %for.end94

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv72
  %arrayidx2 = getelementptr inbounds nuw [200 x i32], ptr %b, i64 0, i64 %indvars.iv72
  %arrayidx4 = getelementptr inbounds nuw [200 x i32], ptr %c, i64 0, i64 %indvars.iv72
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str.1, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %3 = and i32 %2, 3
  %cmp8 = icmp ne i32 %3, 0
  %rem11 = srem i32 %2, 100
  %cmp12.not = icmp eq i32 %rem11, 0
  %or.cond = or i1 %cmp8, %cmp12.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  store i32 29, ptr %arrayidx13, align 8, !tbaa !5
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %smax = call i32 @llvm.smax.i32(i32 %4, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.body18, %if.then
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body18 ], [ 0, %if.then ]
  %w1.1 = phi i32 [ %add, %for.body18 ], [ 0, %if.then ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond21.preheader, label %for.body18

for.cond21.preheader:                             ; preds = %for.cond14
  %5 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %smax45 = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count46 = zext nneg i32 %smax45 to i64
  br label %for.cond21

for.body18:                                       ; preds = %for.cond14
  %arrayidx20 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv
  %6 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %add = add nsw i32 %6, %w1.1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond14, !llvm.loop !9

for.cond21:                                       ; preds = %for.cond21.preheader, %for.body25
  %indvars.iv42 = phi i64 [ 0, %for.cond21.preheader ], [ %indvars.iv.next43, %for.body25 ]
  %w2.1 = phi i32 [ 0, %for.cond21.preheader ], [ %add28, %for.body25 ]
  %exitcond47.not = icmp eq i64 %indvars.iv42, %wide.trip.count46
  br i1 %exitcond47.not, label %if.end84, label %for.body25

for.body25:                                       ; preds = %for.cond21
  %arrayidx27 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv42
  %7 = load i32, ptr %arrayidx27, align 4, !tbaa !5
  %add28 = add nsw i32 %7, %w2.1
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1
  br label %for.cond21, !llvm.loop !12

if.else:                                          ; preds = %for.body
  %rem34 = srem i32 %2, 400
  %cmp35 = icmp eq i32 %rem34, 0
  br i1 %cmp35, label %if.then36, label %if.else60

if.then36:                                        ; preds = %if.else
  store i32 29, ptr %arrayidx13, align 8, !tbaa !5
  %8 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %smax63 = call i32 @llvm.smax.i32(i32 %8, i32 0)
  %wide.trip.count64 = zext nneg i32 %smax63 to i64
  br label %for.cond38

for.cond38:                                       ; preds = %for.body42, %if.then36
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %for.body42 ], [ 0, %if.then36 ]
  %w1.3 = phi i32 [ %add45, %for.body42 ], [ 0, %if.then36 ]
  %exitcond65.not = icmp eq i64 %indvars.iv60, %wide.trip.count64
  br i1 %exitcond65.not, label %for.cond49.preheader, label %for.body42

for.cond49.preheader:                             ; preds = %for.cond38
  %9 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %smax69 = call i32 @llvm.smax.i32(i32 %9, i32 0)
  %wide.trip.count70 = zext nneg i32 %smax69 to i64
  br label %for.cond49

for.body42:                                       ; preds = %for.cond38
  %arrayidx44 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv60
  %10 = load i32, ptr %arrayidx44, align 4, !tbaa !5
  %add45 = add nsw i32 %10, %w1.3
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  br label %for.cond38, !llvm.loop !13

for.cond49:                                       ; preds = %for.cond49.preheader, %for.body53
  %indvars.iv66 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next67, %for.body53 ]
  %w2.3 = phi i32 [ 0, %for.cond49.preheader ], [ %add56, %for.body53 ]
  %exitcond71.not = icmp eq i64 %indvars.iv66, %wide.trip.count70
  br i1 %exitcond71.not, label %if.end84, label %for.body53

for.body53:                                       ; preds = %for.cond49
  %arrayidx55 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv66
  %11 = load i32, ptr %arrayidx55, align 4, !tbaa !5
  %add56 = add nsw i32 %11, %w2.3
  %indvars.iv.next67 = add nuw nsw i64 %indvars.iv66, 1
  br label %for.cond49, !llvm.loop !14

if.else60:                                        ; preds = %if.else
  store i32 28, ptr %arrayidx13, align 8, !tbaa !5
  %12 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %smax51 = call i32 @llvm.smax.i32(i32 %12, i32 0)
  %wide.trip.count52 = zext nneg i32 %smax51 to i64
  br label %for.cond62

for.cond62:                                       ; preds = %for.body66, %if.else60
  %indvars.iv48 = phi i64 [ %indvars.iv.next49, %for.body66 ], [ 0, %if.else60 ]
  %w1.4 = phi i32 [ %add69, %for.body66 ], [ 0, %if.else60 ]
  %exitcond53.not = icmp eq i64 %indvars.iv48, %wide.trip.count52
  br i1 %exitcond53.not, label %for.cond73.preheader, label %for.body66

for.cond73.preheader:                             ; preds = %for.cond62
  %13 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %smax57 = call i32 @llvm.smax.i32(i32 %13, i32 0)
  %wide.trip.count58 = zext nneg i32 %smax57 to i64
  br label %for.cond73

for.body66:                                       ; preds = %for.cond62
  %arrayidx68 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv48
  %14 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %add69 = add nsw i32 %14, %w1.4
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  br label %for.cond62, !llvm.loop !15

for.cond73:                                       ; preds = %for.cond73.preheader, %for.body77
  %indvars.iv54 = phi i64 [ 0, %for.cond73.preheader ], [ %indvars.iv.next55, %for.body77 ]
  %w2.4 = phi i32 [ 0, %for.cond73.preheader ], [ %add80, %for.body77 ]
  %exitcond59.not = icmp eq i64 %indvars.iv54, %wide.trip.count58
  br i1 %exitcond59.not, label %if.end84, label %for.body77

for.body77:                                       ; preds = %for.cond73
  %arrayidx79 = getelementptr inbounds nuw [12 x i32], ptr %days, i64 0, i64 %indvars.iv54
  %15 = load i32, ptr %arrayidx79, align 4, !tbaa !5
  %add80 = add nsw i32 %15, %w2.4
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  br label %for.cond73, !llvm.loop !16

if.end84:                                         ; preds = %for.cond21, %for.cond73, %for.cond49
  %w1.2 = phi i32 [ %w1.3, %for.cond49 ], [ %w1.4, %for.cond73 ], [ %w1.1, %for.cond21 ]
  %w2.2 = phi i32 [ %w2.3, %for.cond49 ], [ %w2.4, %for.cond73 ], [ %w2.1, %for.cond21 ]
  %sub = sub nsw i32 %w2.2, %w1.2
  %rem85 = srem i32 %sub, 7
  %cmp86 = icmp eq i32 %rem85, 0
  %str.1.str = select i1 %cmp86, ptr @str.1, ptr @str
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) %str.1.str)
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1
  br label %for.cond, !llvm.loop !17

for.end94:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %days) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %a) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!17 = distinct !{!17, !10, !11}
