; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8shbpkw2.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@__const.main.b = private unnamed_addr constant [6 x i32] [i32 100, i32 50, i32 20, i32 10, i32 5, i32 1], align 16
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [6 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %div = sdiv i32 %0, 100
  store i32 %div, ptr %a, align 16, !tbaa !5
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = phi i32 [ %div9, %for.body ], [ %div, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %c.0 = phi i32 [ %sub6, %for.body ], [ %0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.cond12, label %for.body

for.body:                                         ; preds = %for.cond
  %2 = add nsw i64 %indvars.iv, -1
  %arrayidx5 = getelementptr inbounds [6 x i32], ptr @__const.main.b, i64 0, i64 %2
  %3 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  %mul = mul nsw i32 %3, %1
  %sub6 = sub nsw i32 %c.0, %mul
  %arrayidx8 = getelementptr inbounds nuw [6 x i32], ptr @__const.main.b, i64 0, i64 %indvars.iv
  %4 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %div9 = sdiv i32 %sub6, %4
  %arrayidx11 = getelementptr inbounds nuw [6 x i32], ptr %a, i64 0, i64 %indvars.iv
  store i32 %div9, ptr %arrayidx11, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond12:                                       ; preds = %for.cond, %for.body15
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body15 ], [ 0, %for.cond ]
  %exitcond14.not = icmp eq i64 %indvars.iv11, 6
  br i1 %exitcond14.not, label %for.cond.cleanup14, label %for.body15

for.cond.cleanup14:                               ; preds = %for.cond12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
  ret i32 0

for.body15:                                       ; preds = %for.cond12
  %arrayidx17 = getelementptr inbounds nuw [6 x i32], ptr %a, i64 0, i64 %indvars.iv11
  %5 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %call18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %5)
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1
  br label %for.cond12, !llvm.loop !12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

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
