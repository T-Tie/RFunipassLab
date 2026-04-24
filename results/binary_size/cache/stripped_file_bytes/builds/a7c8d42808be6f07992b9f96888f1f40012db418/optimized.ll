; ModuleID = '<stdin>'
source_filename = "/tmp/tmp2cmrty2r.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %time = alloca [1000 x [6 x i32]], align 16
  %jg = alloca [1000 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 24000, ptr nonnull %time) #5
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %jg) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4000) %jg, i8 0, i64 4000, i1 false)
  br label %for.cond

for.cond:                                         ; preds = %for.cond, %entry
  %indvars.iv24 = phi i32 [ %indvars.iv.next25, %for.cond ], [ 0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [1000 x [6 x i32]], ptr %time, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 4
  %arrayidx7 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 8
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 12
  %arrayidx13 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 16
  %arrayidx16 = getelementptr inbounds nuw i8, ptr %arrayidx, i64 20
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx7, ptr noundef nonnull %arrayidx10, ptr noundef nonnull %arrayidx13, ptr noundef nonnull %arrayidx16)
  %0 = load i32, ptr %arrayidx, align 8, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next25 = add nuw i32 %indvars.iv24, 1
  br i1 %cmp, label %for.cond20.preheader, label %for.cond, !llvm.loop !9

for.cond20.preheader:                             ; preds = %for.cond
  %wide.trip.count = zext i32 %indvars.iv24 to i64
  br label %for.cond20

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %indvars.iv21 = phi i64 [ 0, %for.cond20.preheader ], [ %indvars.iv.next22, %for.body22 ]
  %exitcond.not = icmp eq i64 %indvars.iv21, %wide.trip.count
  br i1 %exitcond.not, label %for.end60, label %for.body22

for.body22:                                       ; preds = %for.cond20
  %arrayidx24 = getelementptr inbounds nuw [1000 x [6 x i32]], ptr %time, i64 0, i64 %indvars.iv21
  %1 = load i32, ptr %arrayidx24, align 8, !tbaa !5
  %sub = sub nsw i32 12, %1
  %mul26 = mul nsw i32 %sub, 3600
  %arrayidx29 = getelementptr inbounds nuw i8, ptr %arrayidx24, i64 4
  %2 = load i32, ptr %arrayidx29, align 4, !tbaa !5
  %mul30.neg = mul i32 %2, -60
  %sub31 = add i32 %mul30.neg, %mul26
  %arrayidx34 = getelementptr inbounds nuw i8, ptr %arrayidx24, i64 8
  %3 = load i32, ptr %arrayidx34, align 8, !tbaa !5
  %sub35 = sub i32 %sub31, %3
  %arrayidx37 = getelementptr inbounds nuw [1000 x i32], ptr %jg, i64 0, i64 %indvars.iv21
  %4 = load i32, ptr %arrayidx37, align 4, !tbaa !5
  %add = add nsw i32 %sub35, %4
  %arrayidx40 = getelementptr inbounds nuw i8, ptr %arrayidx24, i64 12
  %5 = load i32, ptr %arrayidx40, align 4, !tbaa !5
  %mul42 = mul nsw i32 %5, 3600
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %arrayidx24, i64 16
  %6 = load i32, ptr %arrayidx45, align 8, !tbaa !5
  %mul46 = mul nsw i32 %6, 60
  %arrayidx50 = getelementptr inbounds nuw i8, ptr %arrayidx24, i64 20
  %7 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %add47 = add i32 %mul42, %add
  %add51 = add i32 %add47, %mul46
  %add54 = add i32 %add51, %7
  store i32 %add54, ptr %arrayidx37, align 4, !tbaa !5
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add54)
  %indvars.iv.next22 = add nuw nsw i64 %indvars.iv21, 1
  br label %for.cond20, !llvm.loop !12

for.end60:                                        ; preds = %for.cond20
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %jg) #5
  call void @llvm.lifetime.end.p0(i64 24000, ptr nonnull %time) #5
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
!12 = distinct !{!12, !10, !11}
