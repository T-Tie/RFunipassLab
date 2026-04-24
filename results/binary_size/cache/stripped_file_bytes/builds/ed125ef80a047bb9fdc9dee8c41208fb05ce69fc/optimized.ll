; ModuleID = '<stdin>'
source_filename = "/tmp/tmp_hydg7f4.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [256 x i8], align 16
  %b = alloca [256 x i8], align 16
  %c = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %a) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %b) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %c) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %b)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %c)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %a) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %b) #7
  %conv9 = trunc i64 %call8 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv9, i32 0)
  %smax25 = call i32 @llvm.smax.i32(i32 %conv, i32 0)
  %wide.trip.count27 = zext nneg i32 %smax25 to i64
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.inc ], [ 0, %entry ]
  %exitcond28.not = icmp eq i64 %indvars.iv18, %wide.trip.count27
  br i1 %exitcond28.not, label %for.cond.for.end23_crit_edge, label %for.cond10

for.cond.for.end23_crit_edge:                     ; preds = %for.cond
  %.pre43 = zext nneg i32 %smax to i64
  br label %for.end23

for.cond10:                                       ; preds = %for.cond, %if.then
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %if.then ], [ %indvars.iv18, %for.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.then ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body13

for.body13:                                       ; preds = %for.cond10
  %arrayidx = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv20
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %arrayidx16 = getelementptr inbounds nuw [256 x i8], ptr %b, i64 0, i64 %indvars.iv
  %1 = load i8, ptr %arrayidx16, align 1, !tbaa !5
  %cmp18 = icmp eq i8 %0, %1
  br i1 %cmp18, label %if.then, label %for.end.split.loop.exit

if.then:                                          ; preds = %for.body13
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond10, !llvm.loop !8

for.end.split.loop.exit:                          ; preds = %for.body13
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.end

for.end:                                          ; preds = %for.cond10, %for.end.split.loop.exit
  %j.0.lcssa = phi i32 [ %2, %for.end.split.loop.exit ], [ %smax, %for.cond10 ]
  %cmp20 = icmp eq i32 %j.0.lcssa, %conv9
  br i1 %cmp20, label %for.end23split, label %for.inc

for.inc:                                          ; preds = %for.end
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond, !llvm.loop !11

for.end23split:                                   ; preds = %for.end
  %.pre = and i64 %indvars.iv18, 4294967295
  br label %for.end23

for.end23:                                        ; preds = %for.end23split, %for.cond.for.end23_crit_edge
  %wide.trip.count36.pre-phi = phi i64 [ %wide.trip.count, %for.end23split ], [ %.pre43, %for.cond.for.end23_crit_edge ]
  %.pre-phi = phi i64 [ %.pre, %for.end23split ], [ %wide.trip.count27, %for.cond.for.end23_crit_edge ]
  br label %for.cond24

for.cond24:                                       ; preds = %for.body26, %for.end23
  %indvars.iv31 = phi i64 [ %indvars.iv.next32, %for.body26 ], [ 0, %for.end23 ]
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body26 ], [ %.pre-phi, %for.end23 ]
  %exitcond37.not = icmp eq i64 %indvars.iv31, %wide.trip.count36.pre-phi
  br i1 %exitcond37.not, label %for.cond35, label %for.body26

for.body26:                                       ; preds = %for.cond24
  %arrayidx28 = getelementptr inbounds nuw [256 x i8], ptr %c, i64 0, i64 %indvars.iv31
  %3 = load i8, ptr %arrayidx28, align 1, !tbaa !5
  %arrayidx30 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv29
  store i8 %3, ptr %arrayidx30, align 1, !tbaa !5
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond24, !llvm.loop !12

for.cond35:                                       ; preds = %for.cond24, %for.body37
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.body37 ], [ 0, %for.cond24 ]
  %exitcond42.not = icmp eq i64 %indvars.iv38, %wide.trip.count27
  br i1 %exitcond42.not, label %for.end44, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx39 = getelementptr inbounds nuw [256 x i8], ptr %a, i64 0, i64 %indvars.iv38
  %4 = load i8, ptr %arrayidx39, align 1, !tbaa !5
  %conv40 = sext i8 %4 to i32
  %putchar = call i32 @putchar(i32 %conv40)
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  br label %for.cond35, !llvm.loop !13

for.end44:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %c) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %b) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %a) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
