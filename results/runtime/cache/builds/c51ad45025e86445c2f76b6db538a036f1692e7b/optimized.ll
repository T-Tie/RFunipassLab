; ModuleID = '<stdin>'
source_filename = "/tmp/tmpi_6qhi6v.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %3 = load i32, ptr %n, align 4, !tbaa !5
  %4 = sext i32 %3 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %4
  br i1 %cmp.not.not, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %3, i32 0)
  %5 = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %5 to i64
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !9

for.cond2:                                        ; preds = %for.cond2.preheader, %for.inc28
  %indvars.iv19 = phi i64 [ 1, %for.cond2.preheader ], [ %indvars.iv.next20, %for.inc28 ]
  %exitcond = icmp eq i64 %indvars.iv19, %wide.trip.count
  br i1 %exitcond, label %for.end30, label %for.cond5.preheader

for.cond5.preheader:                              ; preds = %for.cond2
  %6 = trunc nuw nsw i64 %indvars.iv19 to i32
  %7 = xor i32 %6, -1
  %sub7 = add i32 %3, %7
  %8 = sext i32 %sub7 to i64
  br label %for.cond5

for.cond5:                                        ; preds = %for.cond5.backedge, %for.cond5.preheader
  %indvars.iv16 = phi i64 [ 0, %for.cond5.preheader ], [ %indvars.iv.next17, %for.cond5.backedge ]
  %cmp8.not = icmp sgt i64 %indvars.iv16, %8
  br i1 %cmp8.not, label %for.inc28, label %for.body9

for.body9:                                        ; preds = %for.cond5
  %arrayidx11 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv16
  %9 = load i32, ptr %arrayidx11, align 4, !tbaa !5
  %indvars.iv.next17 = add nuw nsw i64 %indvars.iv16, 1
  %arrayidx13 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv.next17
  %10 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14 = icmp sgt i32 %9, %10
  br i1 %cmp14, label %if.then, label %for.cond5.backedge

for.cond5.backedge:                               ; preds = %for.body9, %if.then
  br label %for.cond5, !llvm.loop !12

if.then:                                          ; preds = %for.body9
  store i32 %9, ptr %arrayidx13, align 4, !tbaa !5
  store i32 %10, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.cond5.backedge

for.inc28:                                        ; preds = %for.cond5
  %indvars.iv.next20 = add nuw nsw i64 %indvars.iv19, 1
  br label %for.cond2, !llvm.loop !13

for.end30:                                        ; preds = %for.cond2
  %11 = getelementptr i32, ptr %vla, i64 %4
  %arrayidx33 = getelementptr i8, ptr %11, i64 -4
  %12 = load i32, ptr %arrayidx33, align 4, !tbaa !5
  %arrayidx36 = getelementptr i8, ptr %11, i64 -8
  %13 = load i32, ptr %arrayidx36, align 4, !tbaa !5
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %12, i32 noundef %13)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare ptr @llvm.stacksave.p0() #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.stackrestore.p0(ptr) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }

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
!13 = distinct !{!13, !10, !11}
