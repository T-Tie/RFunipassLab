; ModuleID = '<stdin>'
source_filename = "/tmp/tmp313i9ndm.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %h1 = alloca [100 x i32], align 16
  %h2 = alloca [100 x i32], align 16
  %m1 = alloca [100 x i32], align 16
  %m2 = alloca [100 x i32], align 16
  %s1 = alloca [100 x i32], align 16
  %s2 = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %h1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %h2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %m1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %m2) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %s1) #3
  call void @llvm.lifetime.start.p0(i64 noundef 400, ptr noundef nonnull align 16 %s2) #3
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %h1, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [100 x i32], ptr %m1, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %s1, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %h2, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %m2, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr %s2, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add = add nsw i32 %1, %0
  %2 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %add17 = add nsw i32 %add, %2
  %3 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %add20 = add nsw i32 %add17, %3
  %4 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %add23 = add nsw i32 %add20, %4
  %5 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %add26 = sub i32 0, %5
  %cmp = icmp eq i32 %add23, %add26
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  br i1 %cmp, label %for.cond.preheader, label %while.cond, !llvm.loop !9

for.cond.preheader:                               ; preds = %while.cond
  %wide.trip.count = and i64 %indvars.iv, 4294967295
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv28 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next29, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx29 = getelementptr inbounds nuw [100 x i32], ptr %h2, i64 0, i64 %indvars.iv28
  %6 = load i32, ptr %arrayidx29, align 4, !tbaa !5, !invariant.load !12
  %add30 = add nsw i32 %6, 12
  store i32 %add30, ptr %arrayidx29, align 4, !tbaa !5
  %arrayidx34 = getelementptr inbounds nuw [100 x i32], ptr %h1, i64 0, i64 %indvars.iv28
  %7 = load i32, ptr %arrayidx34, align 4, !tbaa !5, !invariant.load !12
  %arrayidx36 = getelementptr inbounds nuw [100 x i32], ptr %m1, i64 0, i64 %indvars.iv28
  %8 = load i32, ptr %arrayidx36, align 4, !tbaa !5, !invariant.load !12
  %arrayidx40 = getelementptr inbounds nuw [100 x i32], ptr %s1, i64 0, i64 %indvars.iv28
  %9 = load i32, ptr %arrayidx40, align 4, !tbaa !5, !invariant.load !12
  %arrayidx46 = getelementptr inbounds nuw [100 x i32], ptr %m2, i64 0, i64 %indvars.iv28
  %10 = load i32, ptr %arrayidx46, align 4, !tbaa !5, !invariant.load !12
  %arrayidx50 = getelementptr inbounds nuw [100 x i32], ptr %s2, i64 0, i64 %indvars.iv28
  %11 = load i32, ptr %arrayidx50, align 4, !tbaa !5, !invariant.load !12
  %reass.add = sub i32 %10, %8
  %reass.mul = mul i32 %reass.add, 60
  %reass.add25 = sub i32 %add30, %7
  %reass.mul26 = mul i32 %reass.add25, 3600
  %add48 = sub i32 %reass.mul26, %9
  %add51 = add i32 %add48, %11
  %sub = add i32 %add51, %reass.mul
  %call52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sub)
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond, !llvm.loop !13

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %s2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %s1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %m2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %m1) #4
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %h2) #4
  call void @llvm.lifetime.end.p0(i64 noundef 400, ptr noundef nonnull %h1) #4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

declare i32 @printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
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
!12 = !{}
!13 = distinct !{!13, !10, !11}
