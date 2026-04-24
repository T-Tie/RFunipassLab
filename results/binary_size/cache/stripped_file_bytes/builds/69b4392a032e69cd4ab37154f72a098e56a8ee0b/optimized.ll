; ModuleID = '<stdin>'
source_filename = "/tmp/tmptrlf9uf1.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [6 x [200 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 4800, ptr noundef nonnull align 16 %a) #3
  %arrayidx30 = getelementptr inbounds nuw i8, ptr %a, i64 4000
  %arrayidx10 = getelementptr inbounds nuw i8, ptr %a, i64 800
  %arrayidx15 = getelementptr inbounds nuw i8, ptr %a, i64 1600
  %arrayidx20 = getelementptr inbounds nuw i8, ptr %a, i64 2400
  %arrayidx25 = getelementptr inbounds nuw i8, ptr %a, i64 3200
  br label %for.cond

for.cond:                                         ; preds = %if.else, %entry
  %indvars.iv8 = phi i64 [ %indvars.iv.next9, %if.else ], [ 0, %entry ]
  %exitcond11.not = icmp eq i64 %indvars.iv8, 200
  br i1 %exitcond11.not, label %for.end62, label %for.cond1

for.cond1:                                        ; preds = %for.cond, %for.body3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body3 ], [ 0, %for.cond ]
  %exitcond.not = icmp eq i64 %indvars.iv, 6
  br i1 %exitcond.not, label %for.end, label %for.body3

for.body3:                                        ; preds = %for.cond1
  %arrayidx5 = getelementptr inbounds nuw [6 x [200 x i32]], ptr %a, i64 0, i64 %indvars.iv, i64 %indvars.iv8
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond1, !llvm.loop !5

for.end:                                          ; preds = %for.cond1
  %arrayidx8 = getelementptr inbounds nuw [200 x i32], ptr %a, i64 0, i64 %indvars.iv8
  %0 = load i32, ptr %arrayidx8, align 4, !tbaa !8, !invariant.load !12
  %cmp9 = icmp eq i32 %0, 0
  %arrayidx12 = getelementptr inbounds nuw [200 x i32], ptr %arrayidx10, i64 0, i64 %indvars.iv8
  %1 = load i32, ptr %arrayidx12, align 4, !tbaa !8, !invariant.load !12
  %cmp13 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp9, i1 %cmp13, i1 false
  %arrayidx17 = getelementptr inbounds nuw [200 x i32], ptr %arrayidx15, i64 0, i64 %indvars.iv8
  %2 = load i32, ptr %arrayidx17, align 4, !tbaa !8, !invariant.load !12
  br i1 %or.cond, label %land.lhs.true14, label %if.else

land.lhs.true14:                                  ; preds = %for.end
  %cmp18 = icmp eq i32 %2, 0
  br i1 %cmp18, label %land.lhs.true19, label %if.else

land.lhs.true19:                                  ; preds = %land.lhs.true14
  %arrayidx22 = getelementptr inbounds nuw [200 x i32], ptr %arrayidx20, i64 0, i64 %indvars.iv8
  %3 = load i32, ptr %arrayidx22, align 4, !tbaa !8, !invariant.load !12
  %cmp23 = icmp eq i32 %3, 0
  br i1 %cmp23, label %land.lhs.true24, label %if.else

land.lhs.true24:                                  ; preds = %land.lhs.true19
  %arrayidx27 = getelementptr inbounds nuw [200 x i32], ptr %arrayidx25, i64 0, i64 %indvars.iv8
  %4 = load i32, ptr %arrayidx27, align 4, !tbaa !8, !invariant.load !12
  %cmp28 = icmp eq i32 %4, 0
  br i1 %cmp28, label %land.lhs.true29, label %if.else

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %arrayidx32 = getelementptr inbounds nuw [200 x i32], ptr %arrayidx30, i64 0, i64 %indvars.iv8
  %5 = load i32, ptr %arrayidx32, align 4, !tbaa !8
  %cmp33 = icmp eq i32 %5, 0
  br i1 %cmp33, label %for.end62, label %if.else

if.else:                                          ; preds = %for.end, %land.lhs.true29, %land.lhs.true24, %land.lhs.true19, %land.lhs.true14
  %6 = phi i32 [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true19 ], [ %2, %land.lhs.true14 ], [ %2, %for.end ]
  %7 = phi i32 [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true19 ], [ 0, %land.lhs.true14 ], [ %1, %for.end ]
  %arrayidx47 = getelementptr inbounds nuw [200 x i32], ptr %arrayidx20, i64 0, i64 %indvars.iv8
  %8 = load i32, ptr %arrayidx47, align 4, !tbaa !8, !invariant.load !12
  %arrayidx52 = getelementptr inbounds nuw [200 x i32], ptr %arrayidx25, i64 0, i64 %indvars.iv8
  %9 = load i32, ptr %arrayidx52, align 4, !tbaa !8, !invariant.load !12
  %arrayidx57 = getelementptr inbounds nuw [200 x i32], ptr %arrayidx30, i64 0, i64 %indvars.iv8
  %10 = load i32, ptr %arrayidx57, align 4, !tbaa !8, !invariant.load !12
  %reass.add = sub i32 %9, %7
  %reass.mul = mul i32 %reass.add, 60
  %reass.add5 = sub i32 %8, %0
  %reass.mul6 = mul i32 %reass.add5, 3600
  %.neg = sub i32 0, %6
  %reass.sub = add i32 %.neg, 43200
  %add54 = add i32 %reass.sub, %10
  %add58 = add i32 %add54, %reass.mul6
  %sub = add i32 %add58, %reass.mul
  %call59 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %sub)
  %indvars.iv.next9 = add nuw nsw i64 %indvars.iv8, 1
  br label %for.cond, !llvm.loop !13

for.end62:                                        ; preds = %for.cond, %land.lhs.true29
  call void @llvm.lifetime.end.p0(i64 noundef 4800, ptr noundef nonnull align 16 %a) #4
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
attributes #3 = { nofree nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{}
!13 = distinct !{!13, !6, !7}
