; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn97mgs_x.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %sz = alloca [100000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 400000, ptr nonnull %sz) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp18.not = icmp ne i32 %0, 0
  call void @llvm.assume(i1 %cmp18.not)
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body
  %cmp1025.not = icmp eq i32 %4, 0
  br i1 %cmp1025.not, label %for.end23, label %for.body11.preheader

for.body11.preheader:                             ; preds = %for.cond8.preheader
  %wide.trip.count = zext nneg i32 %mul to i64
  br label %for.body11

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %b.021 = phi i32 [ %b.1, %for.body ], [ 0, %entry ]
  %d.020 = phi i32 [ %d.1, %for.body ], [ undef, %entry ]
  %arrayidx = getelementptr inbounds nuw [100000 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp4 = icmp eq i32 %1, 0
  %cmp5 = icmp eq i32 %b.021, 0
  %2 = select i1 %cmp4, i1 %cmp5, i1 false
  %3 = trunc nuw nsw i64 %indvars.iv to i32
  %d.1 = select i1 %2, i32 %3, i32 %d.020
  %add = zext i1 %cmp4 to i32
  %b.1 = add nuw nsw i32 %b.021, %add
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %4 = load i32, ptr %n, align 4, !tbaa !5
  %mul = mul nsw i32 %4, %4
  %5 = zext nneg i32 %mul to i64
  %cmp = icmp samesign ult i64 %indvars.iv.next, %5
  br i1 %cmp, label %for.body, label %for.cond8.preheader, !llvm.loop !9

for.body11:                                       ; preds = %for.body11.preheader, %for.body11
  %indvars.iv34 = phi i64 [ 0, %for.body11.preheader ], [ %indvars.iv.next35, %for.body11 ]
  %f.028 = phi i32 [ 0, %for.body11.preheader ], [ %f.1, %for.body11 ]
  %e.027 = phi i32 [ undef, %for.body11.preheader ], [ %e.1, %for.body11 ]
  %arrayidx13 = getelementptr inbounds nuw [100000 x i32], ptr %sz, i64 0, i64 %indvars.iv34
  %6 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %6, 0
  %add16 = add nsw i32 %f.028, 1
  %cmp17 = icmp eq i32 %add16, %b.1
  %7 = select i1 %cmp14, i1 %cmp17, i1 false
  %8 = trunc nuw nsw i64 %indvars.iv34 to i32
  %e.1 = select i1 %7, i32 %8, i32 %e.027
  %f.1 = select i1 %cmp14, i32 %add16, i32 %f.028
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count
  br i1 %exitcond.not, label %for.end23, label %for.body11, !llvm.loop !12

for.end23:                                        ; preds = %for.body11, %for.cond8.preheader
  %e.0.lcssa = phi i32 [ undef, %for.cond8.preheader ], [ %e.1, %for.body11 ]
  %div = sdiv i32 %d.1, %4
  %rem = srem i32 %d.1, %4
  %div24 = sdiv i32 %e.0.lcssa, %4
  %rem25 = srem i32 %e.0.lcssa, %4
  %reass.sub = sub i32 %rem25, %rem
  %add26 = add i32 %reass.sub, 1
  %reass.sub30 = sub i32 %div24, %div
  %add28 = add i32 %reass.sub30, 1
  %mul29 = mul nsw i32 %add26, %add28
  %sub30 = sub nsw i32 %mul29, %b.1
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %sub30)
  call void @llvm.lifetime.end.p0(i64 400000, ptr nonnull %sz) #5
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
