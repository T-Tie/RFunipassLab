; ModuleID = '<stdin>'
source_filename = "/tmp/tmphoynpu68.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x i32], align 16
  %d = alloca [100 x i32], align 16
  %e = alloca [100 x i32], align 16
  %f = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %f) #4
  br label %do.body

do.body:                                          ; preds = %do.body, %entry
  %indvars.iv22 = phi i32 [ %indvars.iv.next23, %do.body ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %do.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp.not = icmp eq i32 %0, 0
  %indvars.iv.next23 = add nuw i32 %indvars.iv22, 1
  br i1 %cmp.not, label %for.cond.preheader, label %do.body, !llvm.loop !9

for.cond.preheader:                               ; preds = %do.body
  %wide.trip.count = zext i32 %indvars.iv22 to i64
  br label %for.cond

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv19 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next20, %for.body ]
  %exitcond.not = icmp eq i64 %indvars.iv19, %wide.trip.count
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx16 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv19
  %1 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv19
  %2 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %sub19 = sub nsw i32 %1, %2
  %3 = mul i32 %sub19, 3600
  %mul = add i32 %3, 43200
  %arrayidx21 = getelementptr inbounds nuw [100 x i32], ptr %e, i64 0, i64 %indvars.iv19
  %4 = load i32, ptr %arrayidx21, align 4, !tbaa !5
  %arrayidx23 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv19
  %5 = load i32, ptr %arrayidx23, align 4, !tbaa !5
  %sub24 = sub nsw i32 %4, %5
  %mul25 = mul nsw i32 %sub24, 60
  %arrayidx28 = getelementptr inbounds nuw [100 x i32], ptr %f, i64 0, i64 %indvars.iv19
  %6 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %arrayidx31 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv19
  %7 = load i32, ptr %arrayidx31, align 4, !tbaa !5
  %add26 = add i32 %mul, %6
  %add29 = add i32 %add26, %mul25
  %sub32 = sub i32 %add29, %7
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sub32)
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond, !llvm.loop !12

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #4
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
