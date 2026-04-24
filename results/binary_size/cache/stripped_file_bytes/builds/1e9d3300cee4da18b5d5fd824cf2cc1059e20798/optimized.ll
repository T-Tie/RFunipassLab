; ModuleID = '<stdin>'
source_filename = "/tmp/tmpxkwwyxn_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca i32, align 4
  %sz = alloca [6 x i32], align 16
  %rmb = alloca [6 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %sz) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %rmb) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  store <4 x i32> <i32 100, i32 50, i32 20, i32 10>, ptr %rmb, align 16, !tbaa !5
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %rmb, i64 16
  store i32 5, ptr %arrayidx4, align 16, !tbaa !5
  %arrayidx5 = getelementptr inbounds nuw i8, ptr %rmb, i64 200
  store i32 1, ptr %arrayidx5, align 8, !tbaa !5
  %a.promoted = load i32, ptr %a, align 4, !tbaa !5
  br label %for.body

for.cond13.preheader:                             ; preds = %for.body
  store i32 %sub.recomposed, ptr %a, align 4, !tbaa !5
  br label %for.body15

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  %sub910 = phi i32 [ %a.promoted, %entry ], [ %sub.recomposed, %for.body ]
  %arrayidx6 = getelementptr inbounds nuw [6 x i32], ptr %rmb, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %div = sdiv i32 %sub910, %0
  %arrayidx8 = getelementptr inbounds nuw [6 x i32], ptr %sz, i64 0, i64 %indvars.iv
  store i32 %div, ptr %arrayidx8, align 4, !tbaa !5
  %mul = mul nsw i32 %div, %0
  %sub.recomposed = srem i32 %sub910, %0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 5
  br i1 %exitcond.not, label %for.cond13.preheader, label %for.body, !llvm.loop !9

for.body15:                                       ; preds = %for.cond13.preheader, %for.body15
  %indvars.iv14 = phi i64 [ 0, %for.cond13.preheader ], [ %indvars.iv.next15, %for.body15 ]
  %arrayidx17 = getelementptr inbounds nuw [6 x i32], ptr %sz, i64 0, i64 %indvars.iv14
  %1 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %call18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %1)
  %indvars.iv.next15 = add nuw nsw i64 %indvars.iv14, 1
  %exitcond17.not = icmp eq i64 %indvars.iv.next15, 5
  br i1 %exitcond17.not, label %for.end21, label %for.body15, !llvm.loop !12

for.end21:                                        ; preds = %for.body15
  %2 = load i32, ptr %a, align 4, !tbaa !5
  %call22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %2)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %rmb) #4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %sz) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %a) #4
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
