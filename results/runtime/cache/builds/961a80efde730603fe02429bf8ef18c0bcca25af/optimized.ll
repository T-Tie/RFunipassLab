; ModuleID = '<stdin>'
source_filename = "/tmp/tmpkgv7bwg3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.sz = private unnamed_addr constant [6 x i32] [i32 100, i32 50, i32 20, i32 10, i32 5, i32 1], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [10000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.start.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40000) %a, i8 0, i64 40000, i1 false)
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %n.promoted = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %sub8 = phi i32 [ %sub.recomposed, %for.body ], [ %n.promoted, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.cond5.preheader, label %for.body

for.cond5.preheader:                              ; preds = %for.cond
  store i32 %sub8, ptr %n, align 4, !tbaa !5
  br label %for.cond5

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [6 x i32], ptr @__const.main.sz, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %div = sdiv i32 %sub8, %0
  %mul = mul nsw i32 %div, %0
  %sub.recomposed = srem i32 %sub8, %0
  %arrayidx4 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %div, ptr %arrayidx4, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond5:                                        ; preds = %for.cond5.preheader, %for.body8
  %indvars.iv10 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next11, %for.body8 ]
  %exitcond13.not = icmp eq i64 %indvars.iv10, 6
  br i1 %exitcond13.not, label %for.cond.cleanup7, label %for.body8

for.cond.cleanup7:                                ; preds = %for.cond5
  call void @llvm.lifetime.end.p0(i64 40000, ptr nonnull %a) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  ret i32 0

for.body8:                                        ; preds = %for.cond5
  %arrayidx10 = getelementptr inbounds nuw [10000 x i32], ptr %a, i64 0, i64 %indvars.iv10
  %1 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1)
  %indvars.iv.next11 = add nuw nsw i64 %indvars.iv10, 1
  br label %for.cond5, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
