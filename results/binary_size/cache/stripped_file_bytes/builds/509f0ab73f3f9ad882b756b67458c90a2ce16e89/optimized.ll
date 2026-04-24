; ModuleID = '<stdin>'
source_filename = "/tmp/tmpto_oqaum.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%c=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"No\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %zfc = alloca [300 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 300, ptr noundef nonnull align 16 %zfc) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 16 %zfc)
  %call2 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %zfc) #6
  %conv = trunc i64 %call2 to i32
  %smax = call i32 @llvm.smax.i32(i32 %conv, i32 noundef 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond

for.cond:                                         ; preds = %for.inc13, %entry
  %k.0 = phi i32 [ 97, %entry ], [ %inc14, %for.inc13 ]
  %exitcond2.not = icmp eq i32 %k.0, 123
  br i1 %exitcond2.not, label %for.cond16, label %for.cond3

for.cond3:                                        ; preds = %for.cond, %for.body5
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body5 ], [ 0, %for.cond ]
  %sum.1 = phi i32 [ %spec.select, %for.body5 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx = getelementptr inbounds nuw [300 x i8], ptr %zfc, i64 0, i64 %indvars.iv
  %0 = load i8, ptr %arrayidx, align 1, !tbaa !5, !invariant.load !8
  %conv6 = sext i8 %0 to i32
  %cmp7 = icmp eq i32 %k.0, %conv6
  %inc = zext i1 %cmp7 to i32
  %spec.select = add nuw nsw i32 %sum.1, %inc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond3, !llvm.loop !9

for.end:                                          ; preds = %for.cond3
  %cmp9.not = icmp eq i32 %sum.1, 0
  br i1 %cmp9.not, label %for.inc13, label %if.then10

if.then10:                                        ; preds = %for.end
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %k.0, i32 noundef %sum.1)
  br label %for.inc13

for.inc13:                                        ; preds = %for.end, %if.then10
  %inc14 = add nuw nsw i32 %k.0, 1
  br label %for.cond, !llvm.loop !12

for.cond16:                                       ; preds = %for.cond, %for.body18
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body18 ], [ 0, %for.cond ]
  %sum.4 = phi i32 [ %sum.5, %for.body18 ], [ 0, %for.cond ]
  %exitcond7.not = icmp eq i64 %indvars.iv3, %wide.trip.count
  br i1 %exitcond7.not, label %for.end31, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %arrayidx20 = getelementptr inbounds nuw [300 x i8], ptr %zfc, i64 0, i64 %indvars.iv3
  %1 = load i8, ptr %arrayidx20, align 1, !tbaa !5, !invariant.load !8
  %2 = add i8 %1, -97
  %or.cond = icmp ult i8 %2, 26
  %sum.5 = select i1 %or.cond, i32 1, i32 %sum.4
  %indvars.iv.next4 = add nuw nsw i64 %indvars.iv3, 1
  br label %for.cond16, !llvm.loop !13

for.end31:                                        ; preds = %for.cond16
  %cmp32.not.not = icmp eq i32 %sum.4, 0
  br i1 %cmp32.not.not, label %if.then33, label %if.end35

if.then33:                                        ; preds = %for.end31
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2)
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %for.end31
  call void @llvm.lifetime.end.p0(i64 noundef 300, ptr noundef nonnull %zfc) #7
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) local_unnamed_addr #3

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nofree nounwind willreturn }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { nounwind }

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
!8 = !{}
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
