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
  call void @llvm.lifetime.start.p0(i64 noundef 4, ptr noundef nonnull align 4 %n) #4
  call void @llvm.lifetime.start.p0(i64 noundef 400000, ptr noundef nonnull align 16 %sz) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull align 4 %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %d.0 = phi i32 [ %d.1, %for.body ], [ undef, %entry ]
  %b.0 = phi i32 [ %b.1, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %mul = mul nsw i32 %0, %0
  %1 = zext nneg i32 %mul to i64
  %cmp = icmp samesign ult i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.cond
  br label %for.cond8

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [100000 x i32], ptr %sz, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %2 = load i32, ptr %arrayidx, align 4, !tbaa !5, !invariant.load !9
  %cmp4 = icmp eq i32 %2, 0
  %cmp5 = icmp eq i32 %b.0, 0
  %3 = select i1 %cmp4, i1 %cmp5, i1 false
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %d.1 = select i1 %3, i32 %4, i32 %d.0
  %add = zext i1 %cmp4 to i32
  %b.1 = add nuw nsw i32 %b.0, %add
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !10

for.cond8:                                        ; preds = %for.cond8.preheader, %for.body11
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %for.body11 ], [ 0, %for.cond8.preheader ]
  %e.0 = phi i32 [ %e.1, %for.body11 ], [ undef, %for.cond8.preheader ]
  %f.0 = phi i32 [ %f.1, %for.body11 ], [ 0, %for.cond8.preheader ]
  %exitcond.not = icmp eq i64 %indvars.iv20, %1
  br i1 %exitcond.not, label %for.end23, label %for.body11

for.body11:                                       ; preds = %for.cond8
  %arrayidx13 = getelementptr inbounds nuw [100000 x i32], ptr %sz, i64 0, i64 %indvars.iv20
  %5 = load i32, ptr %arrayidx13, align 4, !tbaa !5, !invariant.load !9
  %cmp14 = icmp eq i32 %5, 0
  %add16 = add nsw i32 %f.0, 1
  %cmp17 = icmp eq i32 %add16, %b.0
  %6 = select i1 %cmp14, i1 %cmp17, i1 false
  %7 = trunc nuw nsw i64 %indvars.iv20 to i32
  %e.1 = select i1 %6, i32 %7, i32 %e.0
  %f.1 = select i1 %cmp14, i32 %add16, i32 %f.0
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1
  br label %for.cond8, !llvm.loop !13

for.end23:                                        ; preds = %for.cond8
  %div = sdiv i32 %d.0, %0
  %rem = srem i32 %d.0, %0
  %div24 = sdiv i32 %e.0, %0
  %rem25 = srem i32 %e.0, %0
  %reass.sub25 = sub i32 %rem25, %rem
  %add26 = add i32 %reass.sub25, 1
  %reass.sub = sub i32 %div24, %div
  %add28 = add i32 %reass.sub, 1
  %mul29 = mul nsw i32 %add26, %add28
  %sub30 = sub nsw i32 %mul29, %b.0
  %call31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %sub30) #5
  call void @llvm.lifetime.end.p0(i64 noundef 400000, ptr noundef nonnull %sz) #5
  call void @llvm.lifetime.end.p0(i64 noundef 4, ptr noundef nonnull %n) #5
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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
