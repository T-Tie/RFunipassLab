; ModuleID = '<stdin>'
source_filename = "/tmp/tmplgfu3u9j.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"\0A%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [15 x i32], align 16
  %t = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %t) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end21, %entry
  %.str.2.sink = phi ptr [ @.str.2, %for.end21 ], [ @.str, %entry ]
  %call23 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull %.str.2.sink, ptr noundef nonnull %t)
  %0 = load i32, ptr %t, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, -1
  br i1 %cmp.not, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.body
  %indvars.iv16 = phi i32 [ %indvars.iv.next17, %for.body ], [ 0, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %while.cond ]
  %1 = phi i32 [ %.pr, %for.body ], [ %0, %while.cond ]
  %cmp1.not = icmp eq i32 %1, 0
  br i1 %cmp1.not, label %for.cond4.preheader, label %for.body

for.cond4.preheader:                              ; preds = %for.cond
  %wide.trip.count22 = zext i32 %indvars.iv16 to i64
  br label %for.cond4

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %1, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %t)
  %.pr = load i32, ptr %t, align 4, !tbaa !5
  %indvars.iv.next17 = add nuw i32 %indvars.iv16, 1
  br label %for.cond, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond4.preheader, %for.inc19
  %indvars.iv18 = phi i64 [ 0, %for.cond4.preheader ], [ %indvars.iv.next19, %for.inc19 ]
  %m.1 = phi i32 [ 0, %for.cond4.preheader ], [ %m.2, %for.inc19 ]
  %exitcond23.not = icmp eq i64 %indvars.iv18, %wide.trip.count22
  br i1 %exitcond23.not, label %for.end21, label %for.cond7.preheader

for.cond7.preheader:                              ; preds = %for.cond4
  %arrayidx11 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %2 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %for.body9
  %indvars.iv13 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next14, %for.body9 ]
  %m.2 = phi i32 [ %m.1, %for.cond7.preheader ], [ %spec.select, %for.body9 ]
  %exitcond.not = icmp eq i64 %indvars.iv13, %wide.trip.count22
  br i1 %exitcond.not, label %for.inc19, label %for.body9

for.body9:                                        ; preds = %for.cond7
  %arrayidx13 = getelementptr inbounds nuw [15 x i32], ptr %a, i64 0, i64 %indvars.iv13
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %mul = shl nsw i32 %3, 1
  %cmp14 = icmp eq i32 %2, %mul
  %inc15 = zext i1 %cmp14 to i32
  %spec.select = add nsw i32 %m.2, %inc15
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1
  br label %for.cond7, !llvm.loop !12

for.inc19:                                        ; preds = %for.cond7
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond4, !llvm.loop !13

for.end21:                                        ; preds = %for.cond4
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %m.1)
  br label %while.cond, !llvm.loop !14

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %t) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %a) #4
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
