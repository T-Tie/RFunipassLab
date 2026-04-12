; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3ddfpr2c.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %sz = alloca [16 x i32], align 16
  %result = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %sz) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %result) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end44, %entry
  %indvars.iv44 = phi i32 [ %indvars.iv.next45, %for.end44 ], [ 0, %entry ]
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %for.end44 ], [ 0, %entry ]
  br label %for.cond

for.cond:                                         ; preds = %for.body, %while.cond
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %while.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 16
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %sz)
  %0 = load i32, ptr %sz, align 16, !tbaa !5
  %cmp3 = icmp eq i32 %0, -1
  br i1 %cmp3, label %for.cond49.preheader, label %for.cond4

for.cond49.preheader:                             ; preds = %for.end
  %wide.trip.count = zext i32 %indvars.iv44 to i64
  br label %for.cond49

for.cond4:                                        ; preds = %for.end, %if.else14
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %if.else14 ], [ 1, %for.end ]
  %exitcond28.not = icmp eq i64 %indvars.iv23, 16
  br i1 %exitcond28.not, label %for.end18, label %for.body6

for.body6:                                        ; preds = %for.cond4
  %arrayidx8 = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %indvars.iv23
  %call9 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx8)
  %1 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp12 = icmp eq i32 %1, 0
  br i1 %cmp12, label %for.end18, label %if.else14

if.else14:                                        ; preds = %for.body6
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond4, !llvm.loop !12

for.end18:                                        ; preds = %for.body6, %for.cond4
  %wide.trip.count36 = and i64 %indvars.iv23, 4294967295
  br label %for.cond19

for.cond19:                                       ; preds = %for.inc42, %for.end18
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.inc42 ], [ 1, %for.end18 ]
  %n.0 = phi i32 [ %n.1, %for.inc42 ], [ 0, %for.end18 ]
  %exitcond37.not = icmp eq i64 %indvars.iv33, %wide.trip.count36
  br i1 %exitcond37.not, label %for.end44, label %for.cond22.preheader

for.cond22.preheader:                             ; preds = %for.cond19
  %arrayidx26 = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %indvars.iv33
  %2 = load i32, ptr %arrayidx26, align 4, !tbaa !5
  %mul34 = shl nsw i32 %2, 1
  br label %for.cond22

for.cond22:                                       ; preds = %for.cond22.preheader, %for.body24
  %indvars.iv29 = phi i64 [ 0, %for.cond22.preheader ], [ %indvars.iv.next30, %for.body24 ]
  %n.1 = phi i32 [ %n.0, %for.cond22.preheader ], [ %n.2, %for.body24 ]
  %exitcond32.not = icmp eq i64 %indvars.iv29, %indvars.iv33
  br i1 %exitcond32.not, label %for.inc42, label %for.body24

for.body24:                                       ; preds = %for.cond22
  %arrayidx28 = getelementptr inbounds nuw [16 x i32], ptr %sz, i64 0, i64 %indvars.iv29
  %3 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp29 = icmp eq i32 %2, %mul
  %cmp35 = icmp eq i32 %3, %mul34
  %or.cond = select i1 %cmp29, i1 true, i1 %cmp35
  %inc37 = zext i1 %or.cond to i32
  %n.2 = add nsw i32 %n.1, %inc37
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond22, !llvm.loop !13

for.inc42:                                        ; preds = %for.cond22
  %indvars.iv.next34 = add nuw nsw i64 %indvars.iv33, 1
  br label %for.cond19, !llvm.loop !14

for.end44:                                        ; preds = %for.cond19
  %arrayidx46 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv38
  store i32 %n.0, ptr %arrayidx46, align 4, !tbaa !5
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %indvars.iv.next45 = add nuw i32 %indvars.iv44, 1
  br label %while.cond, !llvm.loop !15

for.cond49:                                       ; preds = %for.cond49.preheader, %for.body51
  %indvars.iv41 = phi i64 [ 0, %for.cond49.preheader ], [ %indvars.iv.next42, %for.body51 ]
  %exitcond46.not = icmp eq i64 %indvars.iv41, %wide.trip.count
  br i1 %exitcond46.not, label %for.end57, label %for.body51

for.body51:                                       ; preds = %for.cond49
  %arrayidx53 = getelementptr inbounds nuw [100 x i32], ptr %result, i64 0, i64 %indvars.iv41
  %4 = load i32, ptr %arrayidx53, align 4, !tbaa !5
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %4)
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  br label %for.cond49, !llvm.loop !16

for.end57:                                        ; preds = %for.cond49
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %result) #4
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %sz) #4
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

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
