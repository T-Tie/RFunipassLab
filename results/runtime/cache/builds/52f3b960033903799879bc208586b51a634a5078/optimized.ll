; ModuleID = '<stdin>'
source_filename = "/tmp/tmptc7spoak.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@a = dso_local local_unnamed_addr global [100 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  store i32 1, ptr @a, align 16, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  br label %while.cond

while.cond:                                       ; preds = %for.cond1, %entry
  %dec18 = phi i32 [ %n.promoted, %entry ], [ %dec, %for.cond1 ]
  %k.0 = phi i32 [ 1, %entry ], [ %k.1.ph, %for.cond1 ]
  %dec = add nsw i32 %dec18, -1
  %tobool.not = icmp eq i32 %dec18, 0
  br i1 %tobool.not, label %for.cond22.preheader, label %for.cond.preheader

for.cond.preheader:                               ; preds = %while.cond
  %smax = call i32 @llvm.smax.i32(i32 %k.0, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond22.preheader:                             ; preds = %while.cond
  store i32 -1, ptr %n, align 4, !tbaa !5
  %0 = zext i32 %k.0 to i64
  br label %for.cond22

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.cond1.outer, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %mul = shl nsw i32 %1, 1
  store i32 %mul, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond1:                                        ; preds = %for.cond1.outer, %for.body3.for.inc18_crit_edge
  %indvars.iv20 = phi i64 [ %.pre, %for.body3.for.inc18_crit_edge ], [ %indvars.iv20.ph, %for.cond1.outer ]
  %cmp2 = icmp slt i64 %indvars.iv20, %6
  br i1 %cmp2, label %for.body3, label %while.cond, !llvm.loop !12

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv20
  %2 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %cmp6 = icmp sgt i32 %2, 9
  br i1 %cmp6, label %if.then, label %for.body3.for.inc18_crit_edge

for.body3.for.inc18_crit_edge:                    ; preds = %for.body3
  %.pre = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond1, !llvm.loop !13

if.then:                                          ; preds = %for.body3
  %arrayidx5.le = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %indvars.iv20
  %div = udiv i32 %2, 10
  %3 = add nuw nsw i64 %indvars.iv20, 1
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %3
  %4 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %add11 = add nsw i32 %4, %div
  store i32 %add11, ptr %arrayidx10, align 4, !tbaa !5
  %rem17 = urem i32 %2, 10
  store i32 %rem17, ptr %arrayidx5.le, align 4, !tbaa !5
  %sub = add nsw i32 %k.1.ph, -1
  %5 = zext i32 %sub to i64
  %cmp14 = icmp eq i64 %indvars.iv20, %5
  %inc16 = zext i1 %cmp14 to i32
  %spec.select = add nsw i32 %k.1.ph, %inc16
  br label %for.cond1.outer, !llvm.loop !13

for.cond1.outer:                                  ; preds = %for.cond, %if.then
  %indvars.iv20.ph = phi i64 [ %3, %if.then ], [ 0, %for.cond ]
  %k.1.ph = phi i32 [ %spec.select, %if.then ], [ %k.0, %for.cond ]
  %6 = sext i32 %k.1.ph to i64
  br label %for.cond1

for.cond22:                                       ; preds = %for.cond22.preheader, %for.body24
  %indvars.iv25 = phi i64 [ %0, %for.cond22.preheader ], [ %8, %for.body24 ]
  %7 = trunc nuw i64 %indvars.iv25 to i32
  %cmp23 = icmp sgt i32 %7, 0
  br i1 %cmp23, label %for.body24, label %for.end30

for.body24:                                       ; preds = %for.cond22
  %8 = add nsw i64 %indvars.iv25, -1
  %arrayidx26 = getelementptr inbounds nuw [100 x i32], ptr @a, i64 0, i64 %8
  %9 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %call27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %9)
  br label %for.cond22, !llvm.loop !14

for.end30:                                        ; preds = %for.cond22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
