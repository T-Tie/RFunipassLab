; ModuleID = '<stdin>'
source_filename = "/tmp/tmp395pxiyk.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [18 x i8] c"%d %d %d %d %d %d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %shuzu = alloca [100 x [6 x i32]], align 16
  call void @llvm.lifetime.start.p0(i64 noundef 2400, ptr noundef nonnull align 16 %shuzu) #3
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %arrayidx96.sink45 = phi ptr [ %arrayidx96, %while.body ], [ %shuzu, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %while.body ], [ 0, %entry ]
  %arrayidx100 = getelementptr inbounds nuw i8, ptr %arrayidx96.sink45, i64 4
  %arrayidx103 = getelementptr inbounds nuw i8, ptr %arrayidx96.sink45, i64 8
  %arrayidx106 = getelementptr inbounds nuw i8, ptr %arrayidx96.sink45, i64 12
  %arrayidx109 = getelementptr inbounds nuw i8, ptr %arrayidx96.sink45, i64 16
  %arrayidx112 = getelementptr inbounds nuw i8, ptr %arrayidx96.sink45, i64 20
  %call113 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx96.sink45, ptr noundef nonnull %arrayidx100, ptr noundef nonnull %arrayidx103, ptr noundef nonnull %arrayidx106, ptr noundef nonnull %arrayidx109, ptr noundef nonnull %arrayidx112)
  %arrayidx18 = getelementptr inbounds nuw [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %indvars.iv
  %0 = load i32, ptr %arrayidx18, align 8, !tbaa !5
  %cmp = icmp eq i32 %0, 0
  %arrayidx22 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 4
  %1 = load i32, ptr %arrayidx22, align 4, !tbaa !5, !invariant.load !9
  %cmp23 = icmp eq i32 %1, 0
  %or.cond = select i1 %cmp, i1 %cmp23, i1 false
  br i1 %or.cond, label %land.lhs.true24, label %while.body

land.lhs.true24:                                  ; preds = %while.cond
  %arrayidx27 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 8
  %2 = load i32, ptr %arrayidx27, align 8, !tbaa !5, !invariant.load !9
  %cmp28 = icmp eq i32 %2, 0
  br i1 %cmp28, label %land.lhs.true29, label %while.body

land.lhs.true29:                                  ; preds = %land.lhs.true24
  %arrayidx32 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 12
  %3 = load i32, ptr %arrayidx32, align 4, !tbaa !5, !invariant.load !9
  %cmp33 = icmp eq i32 %3, 0
  br i1 %cmp33, label %land.lhs.true34, label %while.body

land.lhs.true34:                                  ; preds = %land.lhs.true29
  %arrayidx37 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 16
  %4 = load i32, ptr %arrayidx37, align 8, !tbaa !5, !invariant.load !9
  %cmp38 = icmp eq i32 %4, 0
  br i1 %cmp38, label %land.end, label %while.body

land.end:                                         ; preds = %land.lhs.true34
  %arrayidx41 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 20
  %5 = load i32, ptr %arrayidx41, align 4, !tbaa !5
  %cmp42.not = icmp eq i32 %5, 0
  br i1 %cmp42.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond, %land.lhs.true24, %land.lhs.true29, %land.lhs.true34, %land.end
  %6 = phi i32 [ 0, %land.lhs.true24 ], [ 0, %land.lhs.true29 ], [ 0, %land.lhs.true34 ], [ 0, %land.end ], [ %1, %while.cond ]
  %arrayidx45 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 12
  %7 = load i32, ptr %arrayidx45, align 4, !tbaa !5, !invariant.load !9
  %add = add nsw i32 %7, 12
  store i32 %add, ptr %arrayidx45, align 4, !tbaa !5
  %arrayidx48 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 8
  %8 = load i32, ptr %arrayidx48, align 8, !tbaa !5, !invariant.load !9
  %arrayidx51 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 20
  %9 = load i32, ptr %arrayidx51, align 4, !tbaa !5, !invariant.load !9
  store i32 0, ptr %arrayidx48, align 8, !tbaa !5
  store i32 0, ptr %arrayidx51, align 4, !tbaa !5
  %arrayidx63 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 4
  %inc = add nsw i32 %6, 1
  store i32 %inc, ptr %arrayidx63, align 4, !tbaa !5
  %arrayidx66 = getelementptr inbounds nuw i8, ptr %arrayidx18, i64 16
  %10 = load i32, ptr %arrayidx66, align 8, !tbaa !5, !invariant.load !9
  %reass.sub38 = sub i32 %10, %6
  %11 = mul i32 %reass.sub38, 60
  %inc79 = add nsw i32 %0, 1
  store i32 %inc79, ptr %arrayidx18, align 8, !tbaa !5
  %sub86 = sub nsw i32 %add, %inc79
  %mul87 = mul nsw i32 %sub86, 3600
  %reass.sub39 = sub i32 %9, %8
  %add72 = add i32 %reass.sub39, 3600
  %add75 = add i32 %add72, %mul87
  %add90 = add i32 %add75, %11
  %call93 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %add90)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx96 = getelementptr inbounds nuw [100 x [6 x i32]], ptr %shuzu, i64 0, i64 %indvars.iv.next
  br label %while.cond, !llvm.loop !10

while.end:                                        ; preds = %land.end
  call void @llvm.lifetime.end.p0(i64 2400, ptr nonnull %shuzu) #4
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
!9 = !{}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
