; ModuleID = '<stdin>'
source_filename = "/tmp/tmpn9rnz9v3.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [13 x i8] c"%d%d%d%d%d%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [80 x i32], align 16
  %b = alloca [80 x i32], align 16
  %c = alloca [80 x i32], align 16
  %d = alloca [80 x i32], align 16
  %e = alloca [80 x i32], align 16
  %f = alloca [80 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %a) #4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %b) #4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %c) #4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %d) #4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %e) #4
  call void @llvm.lifetime.start.p0(i64 320, ptr nonnull %f) #4
  br label %for.cond

for.cond:                                         ; preds = %if.else, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.else ], [ 0, %entry ]
  %exitcond.not = icmp eq i64 %indvars.iv, 80
  br i1 %exitcond.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw [80 x i32], ptr %a, i64 0, i64 %indvars.iv
  %arrayidx2 = getelementptr inbounds nuw [80 x i32], ptr %b, i64 0, i64 %indvars.iv
  %arrayidx4 = getelementptr inbounds nuw [80 x i32], ptr %c, i64 0, i64 %indvars.iv
  %arrayidx6 = getelementptr inbounds nuw [80 x i32], ptr %d, i64 0, i64 %indvars.iv
  %arrayidx8 = getelementptr inbounds nuw [80 x i32], ptr %e, i64 0, i64 %indvars.iv
  %arrayidx10 = getelementptr inbounds nuw [80 x i32], ptr %f, i64 0, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx, ptr noundef nonnull %arrayidx2, ptr noundef nonnull %arrayidx4, ptr noundef nonnull %arrayidx6, ptr noundef nonnull %arrayidx8, ptr noundef nonnull %arrayidx10)
  %0 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %cmp13 = icmp eq i32 %0, 0
  %.pre = load i32, ptr %arrayidx2, align 4, !tbaa !5
  br i1 %cmp13, label %land.lhs.true, label %for.body.if.else_crit_edge

for.body.if.else_crit_edge:                       ; preds = %for.body
  %.pre25 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  br label %if.else

land.lhs.true:                                    ; preds = %for.body
  %cmp16 = icmp eq i32 %.pre, 0
  %.pre26 = load i32, ptr %arrayidx4, align 4, !tbaa !5
  %cmp20 = icmp eq i32 %.pre26, 0
  %or.cond = select i1 %cmp16, i1 %cmp20, i1 false
  br i1 %or.cond, label %land.lhs.true21, label %if.else

land.lhs.true21:                                  ; preds = %land.lhs.true
  %1 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %cmp24 = icmp eq i32 %1, 0
  br i1 %cmp24, label %land.lhs.true25, label %if.else

land.lhs.true25:                                  ; preds = %land.lhs.true21
  %2 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %cmp28 = icmp eq i32 %2, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.else

land.lhs.true29:                                  ; preds = %land.lhs.true25
  %3 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %cmp32 = icmp eq i32 %3, 0
  br i1 %cmp32, label %for.end, label %if.else

if.else:                                          ; preds = %for.body.if.else_crit_edge, %land.lhs.true29, %land.lhs.true25, %land.lhs.true21, %land.lhs.true
  %4 = phi i32 [ %.pre25, %for.body.if.else_crit_edge ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true25 ], [ 0, %land.lhs.true21 ], [ %.pre26, %land.lhs.true ]
  %5 = load i32, ptr %arrayidx6, align 4, !tbaa !5
  %add43 = add nsw i32 %5, 12
  store i32 %add43, ptr %arrayidx6, align 4, !tbaa !5
  %6 = load i32, ptr %arrayidx8, align 4, !tbaa !5
  %7 = load i32, ptr %arrayidx10, align 4, !tbaa !5
  %reass.add = sub i32 %6, %.pre
  %reass.mul = mul i32 %reass.add, 60
  %reass.add22 = sub i32 %add43, %0
  %reass.mul23 = mul i32 %reass.add22, 3600
  %add50 = sub i32 %7, %4
  %add53 = add i32 %add50, %reass.mul23
  %sub = add i32 %add53, %reass.mul
  %call54 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sub)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %land.lhs.true29, %for.cond
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %f) #4
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %e) #4
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %d) #4
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %c) #4
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %b) #4
  call void @llvm.lifetime.end.p0(i64 320, ptr nonnull %a) #4
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
