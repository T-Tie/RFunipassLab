; ModuleID = '<stdin>'
source_filename = "/tmp/tmp838jj_ti.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%.0lf\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %c = alloca [100 x i32], align 16
  %d = alloca [100 x i32], align 16
  %e = alloca [100 x i32], align 16
  %f = alloca [100 x i32], align 16
  %m = alloca [100 x double], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %c) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %d) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %e) #5
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %f) #5
  call void @llvm.lifetime.start.p0(i64 800, ptr nonnull %m) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(800) %m, i8 0, i64 800, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv27 = phi i32 [ %indvars.iv.next28, %for.cond ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [100 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [100 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %0, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next28 = add nuw i32 %indvars.iv27, 1
  br i1 %cmp13, label %for.cond14.preheader, label %for.cond, !llvm.loop !9

for.cond14.preheader:                             ; preds = %for.cond
  %wide.trip.count = zext i32 %indvars.iv27 to i64
  br label %for.cond14

for.cond14:                                       ; preds = %for.cond14.preheader, %for.body16
  %indvars.iv24 = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next25, %for.body16 ]
  %exitcond.not = icmp eq i64 %indvars.iv24, %wide.trip.count
  br i1 %exitcond.not, label %for.cond44, label %for.body16

for.body16:                                       ; preds = %for.cond14
  %arrayidx18 = getelementptr inbounds nuw [100 x i32], ptr %d, i64 0, i64 %indvars.iv24
  %1 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %add = add nsw i32 %1, 12
  %arrayidx20 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv24
  %2 = load i32, ptr %arrayidx20, align 4, !tbaa !5
  %3 = xor i32 %2, -1
  %sub21 = add i32 %add, %3
  %mul22 = mul nsw i32 %sub21, 3600
  %arrayidx24 = getelementptr inbounds nuw [100 x i32], ptr %e, i64 0, i64 %indvars.iv24
  %4 = load i32, ptr %arrayidx24, align 4, !tbaa !5
  %sub26 = add nsw i32 %4, 59
  %arrayidx28 = getelementptr inbounds nuw [100 x i32], ptr %b, i64 0, i64 %indvars.iv24
  %5 = load i32, ptr %arrayidx28, align 4, !tbaa !5
  %sub29 = sub i32 %sub26, %5
  %mul30 = mul nsw i32 %sub29, 60
  %arrayidx33 = getelementptr inbounds nuw [100 x i32], ptr %f, i64 0, i64 %indvars.iv24
  %6 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %arrayidx37 = getelementptr inbounds nuw [100 x i32], ptr %c, i64 0, i64 %indvars.iv24
  %7 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %add31 = add i32 %mul22, 60
  %add34 = add i32 %add31, %6
  %add35 = add i32 %add34, %mul30
  %sub38 = sub i32 %add35, %7
  %conv = sitofp i32 %sub38 to double
  %arrayidx40 = getelementptr inbounds nuw [100 x double], ptr %m, i64 0, i64 %indvars.iv24
  store double %conv, ptr %arrayidx40, align 8, !tbaa !12
  %indvars.iv.next25 = add nuw nsw i64 %indvars.iv24, 1
  br label %for.cond14, !llvm.loop !14

for.cond44:                                       ; preds = %for.cond14, %for.body46
  %indvars.iv29 = phi i64 [ %indvars.iv.next30, %for.body46 ], [ 0, %for.cond14 ]
  %exitcond34.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond34.not, label %for.end52, label %for.body46

for.body46:                                       ; preds = %for.cond44
  %arrayidx48 = getelementptr inbounds nuw [100 x double], ptr %m, i64 0, i64 %indvars.iv29
  %8 = load double, ptr %arrayidx48, align 8, !tbaa !12
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %8)
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  br label %for.cond44, !llvm.loop !15

for.end52:                                        ; preds = %for.cond44
  call void @llvm.lifetime.end.p0(i64 800, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %f) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %e) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %d) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %c) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
