; ModuleID = '<stdin>'
source_filename = "/tmp/tmpyfupidbx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [999 x i32], align 16
  %b = alloca [999 x i32], align 16
  %c = alloca [999 x i32], align 16
  %d = alloca [999 x i32], align 16
  %e = alloca [999 x i32], align 16
  %f = alloca [999 x i32], align 16
  %g = alloca [999 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 3996, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 3996, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 3996, ptr nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 3996, ptr nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 3996, ptr nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 3996, ptr nonnull %f) #4
  call void @llvm.lifetime.start.p0(i64 3996, ptr nonnull %g) #4
  br label %for.cond

for.cond:                                         ; preds = %if.end, %entry
  %indvars.iv26 = phi i32 [ %indvars.iv.next27, %if.end ], [ 1, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [999 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [999 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [999 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [999 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [999 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [999 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %for.cond35.preheader, label %if.end

for.cond35.preheader:                             ; preds = %for.cond
  %wide.trip.count = zext i32 %indvars.iv26 to i64
  br label %for.cond35

if.end:                                           ; preds = %for.cond
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %4 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %5 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %reass.add = sub i32 %2, %4
  %reass.mul = mul i32 %reass.add, 60
  %reass.add20 = sub i32 %1, %0
  %reass.mul21 = mul i32 %reass.add20, 3600
  %add21 = add i32 %3, 43200
  %sub = add i32 %add21, %reass.mul21
  %sub28 = sub i32 %sub, %5
  %sub31 = add i32 %sub28, %reass.mul
  %arrayidx33 = getelementptr inbounds nuw [999 x i32], ptr %g, i64 0, i64 %indvars.iv
  store i32 %sub31, ptr %arrayidx33, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next27 = add nuw i32 %indvars.iv26, 1
  br label %for.cond, !llvm.loop !9

for.cond35:                                       ; preds = %for.cond35.preheader, %for.body37
  %indvars.iv23 = phi i64 [ 1, %for.cond35.preheader ], [ %indvars.iv.next24, %for.body37 ]
  %exitcond = icmp eq i64 %indvars.iv23, %wide.trip.count
  br i1 %exitcond, label %for.end43, label %for.body37

for.body37:                                       ; preds = %for.cond35
  %arrayidx39 = getelementptr inbounds nuw [999 x i32], ptr %g, i64 0, i64 %indvars.iv23
  %6 = load i32, ptr %arrayidx39, align 4, !tbaa !5
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %6)
  %indvars.iv.next24 = add nuw nsw i64 %indvars.iv23, 1
  br label %for.cond35, !llvm.loop !12

for.end43:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 3996, ptr nonnull %g) #4
  call void @llvm.lifetime.end.p0(i64 3996, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 3996, ptr nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 3996, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 3996, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 3996, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 3996, ptr nonnull %a) #4
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
