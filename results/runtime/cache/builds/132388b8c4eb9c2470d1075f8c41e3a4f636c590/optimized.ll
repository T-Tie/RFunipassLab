; ModuleID = '<stdin>'
source_filename = "/tmp/tmphnm36q2w.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_Z1DPiii(ptr noundef readonly captures(none) %h, i32 noundef %i, i32 noundef %n) local_unnamed_addr #0 {
entry:
  %cmp = icmp slt i32 %i, %n
  br i1 %cmp, label %for.cond.preheader, label %if.end12

for.cond.preheader:                               ; preds = %entry
  %invariant.gep = getelementptr i8, ptr %h, i64 -4
  %0 = sext i32 %i to i64
  %gep = getelementptr i32, ptr %invariant.gep, i64 %0
  %wide.trip.count = sext i32 %n to i64
  br label %for.cond.outer

for.cond.outer:                                   ; preds = %if.then7, %for.cond.preheader
  %indvars.iv.ph = phi i64 [ %indvars.iv.next, %if.then7 ], [ %0, %for.cond.preheader ]
  %z.1.ph = phi i32 [ %spec.select, %if.then7 ], [ 1, %for.cond.preheader ]
  br label %for.cond

for.cond:                                         ; preds = %for.cond.outer, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.cond.outer ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %if.end12, label %for.body

for.body:                                         ; preds = %for.cond
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %arrayidx = getelementptr inbounds i32, ptr %h, i64 %indvars.iv
  %1 = load i32, ptr %arrayidx, align 4, !tbaa !5
  %2 = load i32, ptr %gep, align 4, !tbaa !5
  %cmp6.not = icmp sgt i32 %1, %2
  br i1 %cmp6.not, label %for.cond, label %if.then7, !llvm.loop !9

if.then7:                                         ; preds = %for.body
  %3 = trunc nsw i64 %indvars.iv.next to i32
  %call = tail call noundef i32 @_Z1DPiii(ptr noundef nonnull %h, i32 noundef %3, i32 noundef %n)
  %add8 = add nsw i32 %call, 1
  %spec.select = tail call i32 @llvm.smax.i32(i32 %z.1.ph, i32 %add8)
  br label %for.cond.outer, !llvm.loop !9

if.end12:                                         ; preds = %for.cond, %entry
  %z.0 = phi i32 [ 1, %entry ], [ %z.1.ph, %for.cond ]
  ret i32 %z.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #2 {
entry:
  %n = alloca i32, align 4
  %h = alloca [25 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %h) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %1 = sext i32 %0 to i64
  %cmp = icmp slt i64 %indvars.iv, %1
  br i1 %cmp, label %for.body, label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %0, i32 0)
  br label %for.cond2

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %h, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %add.ptr)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br label %for.cond, !llvm.loop !12

for.cond2:                                        ; preds = %for.cond2.preheader, %for.body4
  %z.0 = phi i32 [ %spec.select, %for.body4 ], [ 1, %for.cond2.preheader ]
  %i.1 = phi i32 [ %add, %for.body4 ], [ 0, %for.cond2.preheader ]
  %exitcond.not = icmp eq i32 %i.1, %smax
  br i1 %exitcond.not, label %for.end10, label %for.body4

for.body4:                                        ; preds = %for.cond2
  %add = add nuw i32 %i.1, 1
  %call6 = call noundef i32 @_Z1DPiii(ptr noundef nonnull %h, i32 noundef %add, i32 noundef %0)
  %spec.select = call i32 @llvm.smax.i32(i32 %z.0, i32 %call6)
  br label %for.cond2, !llvm.loop !13

for.end10:                                        ; preds = %for.cond2
  %call11 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %z.0)
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %h) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress nofree nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
