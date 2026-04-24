; ModuleID = '<stdin>'
source_filename = "/tmp/tmpa9qu9iw_.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%d\0A%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp.not11 = icmp slt i32 %0, 1
  br i1 %cmp.not11, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %entry
  %arrayidx224 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %arrayidx325 = getelementptr inbounds nuw i8, ptr %a, i64 8
  br label %if.then

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 1, %entry ]
  %arrayidx = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp.not.not = icmp slt i64 %indvars.iv, %2
  br i1 %cmp.not.not, label %for.body, label %for.end, !llvm.loop !9

for.end:                                          ; preds = %for.body
  %arrayidx2.phi.trans.insert = getelementptr inbounds nuw i8, ptr %a, i64 4
  %.pre = load i32, ptr %arrayidx2.phi.trans.insert, align 4, !tbaa !5
  %arrayidx3.phi.trans.insert = getelementptr inbounds nuw i8, ptr %a, i64 8
  %.pre20 = load i32, ptr %arrayidx3.phi.trans.insert, align 8, !tbaa !5
  %arrayidx2 = getelementptr inbounds nuw i8, ptr %a, i64 4
  %arrayidx3 = getelementptr inbounds nuw i8, ptr %a, i64 8
  %cmp4 = icmp slt i32 %.pre, %.pre20
  br i1 %cmp4, label %if.then, label %if.end

if.then:                                          ; preds = %for.end.thread, %for.end
  %arrayidx334 = phi ptr [ %arrayidx325, %for.end.thread ], [ %arrayidx3, %for.end ]
  %arrayidx232 = phi ptr [ %arrayidx224, %for.end.thread ], [ %arrayidx2, %for.end ]
  %.lcssa30 = phi i32 [ %0, %for.end.thread ], [ %1, %for.end ]
  %arrayidx3.promoted27 = phi i32 [ undef, %for.end.thread ], [ %.pre20, %for.end ]
  store i32 %arrayidx3.promoted27, ptr %arrayidx232, align 4, !tbaa !5
  br label %if.end

if.end:                                           ; preds = %for.end, %if.then
  %arrayidx333 = phi ptr [ %arrayidx3, %for.end ], [ %arrayidx334, %if.then ]
  %arrayidx231 = phi ptr [ %arrayidx2, %for.end ], [ %arrayidx232, %if.then ]
  %.lcssa29 = phi i32 [ %1, %for.end ], [ %.lcssa30, %if.then ]
  %arrayidx3.promoted28 = phi i32 [ %.pre20, %for.end ], [ %arrayidx3.promoted27, %if.then ]
  %arrayidx2.promoted = phi i32 [ %.pre, %for.end ], [ %arrayidx3.promoted27, %if.then ]
  %cmp11.not13 = icmp slt i32 %.lcssa29, 3
  br i1 %cmp11.not13, label %for.end37, label %for.body12.preheader

for.body12.preheader:                             ; preds = %if.end
  %3 = add nuw i32 %.lcssa29, 1
  %wide.trip.count = zext i32 %3 to i64
  br label %for.body12

for.body12:                                       ; preds = %for.body12.preheader, %for.inc35
  %indvars.iv17 = phi i64 [ 3, %for.body12.preheader ], [ %indvars.iv.next18, %for.inc35 ]
  %4 = phi i32 [ %arrayidx2.promoted, %for.body12.preheader ], [ %8, %for.inc35 ]
  %5 = phi i32 [ %arrayidx3.promoted28, %for.body12.preheader ], [ %7, %for.inc35 ]
  %arrayidx14 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv17
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %cmp16 = icmp sgt i32 %6, %4
  br i1 %cmp16, label %if.then17, label %if.else23

if.then17:                                        ; preds = %for.body12
  store i32 %6, ptr %arrayidx231, align 4, !tbaa !5
  br label %for.inc35.sink.split

if.else23:                                        ; preds = %for.body12
  %cmp27 = icmp slt i32 %6, %5
  br i1 %cmp27, label %for.inc35, label %for.inc35.sink.split

for.inc35.sink.split:                             ; preds = %if.else23, %if.then17
  %.sink = phi i32 [ %4, %if.then17 ], [ %6, %if.else23 ]
  %.ph37 = phi i32 [ %6, %if.then17 ], [ %4, %if.else23 ]
  store i32 %.sink, ptr %arrayidx333, align 8, !tbaa !5
  br label %for.inc35

for.inc35:                                        ; preds = %for.inc35.sink.split, %if.else23
  %7 = phi i32 [ %5, %if.else23 ], [ %.sink, %for.inc35.sink.split ]
  %8 = phi i32 [ %4, %if.else23 ], [ %.ph37, %for.inc35.sink.split ]
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next18, %wide.trip.count
  br i1 %exitcond.not, label %for.end37, label %for.body12, !llvm.loop !12

for.end37:                                        ; preds = %for.inc35, %if.end
  %9 = phi i32 [ %arrayidx3.promoted28, %if.end ], [ %7, %for.inc35 ]
  %10 = phi i32 [ %arrayidx2.promoted, %if.end ], [ %8, %for.inc35 ]
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10, i32 noundef %9)
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #4
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
