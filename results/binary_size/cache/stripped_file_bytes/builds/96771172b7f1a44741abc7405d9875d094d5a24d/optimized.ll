; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzlrg2w3o.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" %d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [20000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 80000, ptr nonnull %a) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not.not11 = icmp sgt i32 %0, 0
  call void @llvm.assume(i1 %cmp.not.not11)
  br label %for.body

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp.not.not, label %for.body, label %for.end.loopexit, !llvm.loop !9

for.end.loopexit:                                 ; preds = %for.body
  %.pre = load i32, ptr %a, align 16, !tbaa !5
  %call3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.pre)
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %cmp6.not.not15 = icmp sgt i32 %3, 1
  br i1 %cmp6.not.not15, label %for.cond8.preheader, label %for.end29

for.cond8.preheader:                              ; preds = %for.end.loopexit, %for.inc27
  %4 = phi i32 [ %8, %for.inc27 ], [ %3, %for.end.loopexit ]
  %indvars.iv23 = phi i64 [ %indvars.iv.next24, %for.inc27 ], [ 1, %for.end.loopexit ]
  %arrayidx13 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv23
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  br label %for.body11

for.body11:                                       ; preds = %for.cond8.preheader, %if.else
  %indvars.iv18 = phi i64 [ 0, %for.cond8.preheader ], [ %indvars.iv.next19, %if.else ]
  %arrayidx15 = getelementptr inbounds nuw [20000 x i32], ptr %a, i64 0, i64 %indvars.iv18
  %6 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %cmp16 = icmp eq i32 %5, %6
  br i1 %cmp16, label %for.end20, label %if.else

if.else:                                          ; preds = %for.body11
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next19, %indvars.iv23
  br i1 %exitcond.not, label %for.end20, label %for.body11, !llvm.loop !12

for.end20:                                        ; preds = %for.body11, %if.else
  %r.0.lcssa.in = phi i64 [ %indvars.iv18, %for.body11 ], [ %indvars.iv23, %if.else ]
  %7 = and i64 %r.0.lcssa.in, 4294967295
  %cmp21 = icmp eq i64 %7, %indvars.iv23
  br i1 %cmp21, label %if.then22, label %for.inc27

if.then22:                                        ; preds = %for.end20
  %call25 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %5)
  %.pre26 = load i32, ptr %n, align 4, !tbaa !5
  br label %for.inc27

for.inc27:                                        ; preds = %for.end20, %if.then22
  %8 = phi i32 [ %4, %for.end20 ], [ %.pre26, %if.then22 ]
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  %9 = sext i32 %8 to i64
  %cmp6.not.not = icmp slt i64 %indvars.iv.next24, %9
  br i1 %cmp6.not.not, label %for.cond8.preheader, label %for.end29, !llvm.loop !13

for.end29:                                        ; preds = %for.inc27, %for.end.loopexit
  call void @llvm.lifetime.end.p0(i64 80000, ptr nonnull %a) #5
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
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
