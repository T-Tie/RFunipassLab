; ModuleID = '<stdin>'
source_filename = "/tmp/tmp07rd_rf3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
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
  %wide.trip.count36 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %0 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc19
  %indvars.iv32 = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next33, %for.inc19 ]
  %exitcond37.not = icmp eq i64 %indvars.iv32, %wide.trip.count36
  br i1 %exitcond37.not, label %for.cond22, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %arrayidx11 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv32
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.preheader, %for.inc16
  %indvars.iv28 = phi i64 [ 1, %for.cond5.preheader ], [ %indvars.iv.next29, %for.inc16 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.inc19, label %for.body7

for.body7:                                        ; preds = %for.cond5
  %arrayidx9 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv28
  %2 = load i32, ptr %arrayidx9, align 4, !tbaa !5
  %3 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %cmp12 = icmp ne i32 %2, %3
  %cmp13.not = icmp eq i64 %indvars.iv28, %indvars.iv32
  %or.cond = or i1 %cmp13.not, %cmp12
  br i1 %or.cond, label %for.inc16, label %if.then

if.then:                                          ; preds = %for.body7
  store i32 0, ptr %arrayidx9, align 4, !tbaa !5
  br label %for.inc16

for.inc16:                                        ; preds = %for.body7, %if.then
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond5, !llvm.loop !12

for.inc19:                                        ; preds = %for.cond5
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond2, !llvm.loop !13

for.cond22:                                       ; preds = %for.cond2, %for.inc33
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.inc33 ], [ 0, %for.cond2 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %wide.trip.count36
  br i1 %exitcond42.not, label %for.cond36.preheader, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv38
  %4 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %cmp27.not = icmp eq i32 %4, 0
  br i1 %cmp27.not, label %for.inc33, label %if.then28

if.then28:                                        ; preds = %for.body24
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %4)
  %.pre = and i64 %indvars.iv38, 4294967295
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond22, %if.then28
  %indvars.iv43.ph = phi i64 [ %.pre, %if.then28 ], [ %wide.trip.count36, %for.cond22 ]
  br label %for.cond36

for.inc33:                                        ; preds = %for.body24
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond22, !llvm.loop !14

for.cond36:                                       ; preds = %for.cond36.backedge, %for.cond36.preheader
  %indvars.iv43 = phi i64 [ %indvars.iv43.ph, %for.cond36.preheader ], [ %indvars.iv.next44, %for.cond36.backedge ]
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1
  %5 = load i32, ptr %n, align 4, !tbaa !5
  %6 = sext i32 %5 to i64
  %cmp37 = icmp slt i64 %indvars.iv.next44, %6
  br i1 %cmp37, label %for.body38, label %for.end49

for.body38:                                       ; preds = %for.cond36
  %arrayidx40 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next44
  %7 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %cmp41.not = icmp eq i32 %7, 0
  br i1 %cmp41.not, label %for.cond36.backedge, label %if.then42

for.cond36.backedge:                              ; preds = %for.body38, %if.then42
  br label %for.cond36, !llvm.loop !15

if.then42:                                        ; preds = %for.body38
  %call45 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %7)
  br label %for.cond36.backedge

for.end49:                                        ; preds = %for.cond36
  %putchar = call i32 @putchar(i32 10)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #6
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

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
