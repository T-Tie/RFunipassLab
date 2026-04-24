; ModuleID = '<stdin>'
source_filename = "/tmp/tmp110k4kyk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %shuzu = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 64, ptr noundef nonnull align 16 %shuzu) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end30, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc25.i4, %if.end30 ]
  %idxprom = sext i32 %i.0 to i64
  %arrayidx = getelementptr inbounds [16 x i32], ptr %shuzu, i64 0, i64 %idxprom
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  switch i32 %0, label %if.end30 [
    i32 -1, label %for.end33
    i32 0, label %for.cond7.preheader
  ]

for.cond7.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 noundef %i.0, i32 noundef 0)
  %wide.trip.count24 = zext nneg i32 %smax to i64
  %wide.trip.count = zext i32 %i.0 to i64
  br label %for.cond7

for.cond7.loopexit:                               ; preds = %for.cond9
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond7

for.cond7:                                        ; preds = %for.cond7.preheader, %for.cond7.loopexit
  %indvars.iv21 = phi i64 [ 0, %for.cond7.preheader ], [ %indvars.iv.next22, %for.cond7.loopexit ]
  %indvars.iv = phi i64 [ 1, %for.cond7.preheader ], [ %indvars.iv.next, %for.cond7.loopexit ]
  %num.2 = phi i32 [ 0, %for.cond7.preheader ], [ %num.3, %for.cond7.loopexit ]
  %exitcond25.not = icmp eq i64 %indvars.iv21, %wide.trip.count24
  br i1 %exitcond25.not, label %for.end28, label %for.body

for.body:                                         ; preds = %for.cond7
  %arrayidx13 = getelementptr inbounds nuw [16 x i32], ptr %shuzu, i64 0, i64 %indvars.iv21
  br label %for.cond9

for.cond9:                                        ; preds = %for.body11, %for.body
  %indvars.iv18 = phi i64 [ %indvars.iv.next19, %for.body11 ], [ %indvars.iv, %for.body ]
  %num.3 = phi i32 [ %num.4, %for.body11 ], [ %num.2, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv18, %wide.trip.count
  br i1 %exitcond.not, label %for.cond7.loopexit, label %for.body11

for.body11:                                       ; preds = %for.cond9
  %1 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !9
  %arrayidx15 = getelementptr inbounds nuw [16 x i32], ptr %shuzu, i64 0, i64 %indvars.iv18
  %2 = load i32, ptr %arrayidx15, align 4, !tbaa !5, !invariant.load !9
  %mul = shl nsw i32 %2, 1
  %cmp16 = icmp eq i32 %1, %mul
  %mul19 = shl nsw i32 %1, 1
  %cmp22 = icmp eq i32 %mul19, %2
  %or.cond = select i1 %cmp16, i1 true, i1 %cmp22
  %inc = zext i1 %or.cond to i32
  %num.4 = add nsw i32 %num.3, %inc
  %indvars.iv.next19 = add nuw nsw i64 %indvars.iv18, 1
  br label %for.cond9

for.end28:                                        ; preds = %for.cond7
  %call29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %num.2)
  br label %if.end30

if.end30:                                         ; preds = %for.cond, %for.end28
  %i.1 = phi i32 [ -1, %for.end28 ], [ %i.0, %for.cond ]
  %inc25.i4 = add nsw i32 %i.1, 1
  br label %for.cond

for.end33:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 64, ptr noundef nonnull %shuzu) #5
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree nounwind }
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
!9 = !{}
