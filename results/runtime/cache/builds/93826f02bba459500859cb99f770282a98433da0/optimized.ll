; ModuleID = '<stdin>'
source_filename = "/tmp/tmp8e5mtnp8.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %conv = sext i32 %0 to i64
  %mul = shl nsw i64 %conv, 2
  %call1 = call noalias ptr @malloc(i64 noundef %mul) #7
  %call4 = call noalias ptr @malloc(i64 noundef %mul) #7
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %1 = phi i32 [ %.pre, %for.body ], [ %0, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv, %2
  br i1 %cmp, label %for.body, label %for.cond6.preheader

for.cond6.preheader:                              ; preds = %for.cond
  %3 = zext i32 %1 to i64
  br label %for.cond6

for.body:                                         ; preds = %for.cond
  %add.ptr = getelementptr inbounds nuw i32, ptr %call1, i64 %indvars.iv
  %call5 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef %add.ptr)
  %arrayidx = getelementptr inbounds nuw i32, ptr %call4, i64 %indvars.iv
  store i32 0, ptr %arrayidx, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %n, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond6:                                        ; preds = %for.cond6.preheader, %for.end24
  %indvars.iv28 = phi i64 [ %3, %for.cond6.preheader ], [ %4, %for.end24 ]
  %maxn.0 = phi i32 [ 0, %for.cond6.preheader ], [ %spec.select25, %for.end24 ]
  %4 = add nsw i64 %indvars.iv28, -1
  %5 = trunc nuw i64 %indvars.iv28 to i32
  %cmp7 = icmp sgt i32 %5, 0
  br i1 %cmp7, label %for.cond10.preheader, label %for.end36

for.cond10.preheader:                             ; preds = %for.cond6
  %arrayidx16 = getelementptr inbounds nuw i32, ptr %call1, i64 %4
  br label %for.cond10.outer

for.cond10.outer:                                 ; preds = %land.lhs.true, %for.cond10.preheader
  %j.0.in.ph = phi i32 [ %j.0, %land.lhs.true ], [ %1, %for.cond10.preheader ]
  %max.0.ph = phi i32 [ %spec.select, %land.lhs.true ], [ 0, %for.cond10.preheader ]
  br label %for.cond10

for.cond10:                                       ; preds = %for.cond10.outer, %for.body12
  %j.0.in = phi i32 [ %j.0, %for.body12 ], [ %j.0.in.ph, %for.cond10.outer ]
  %cmp11 = icmp sgt i32 %j.0.in, %5
  br i1 %cmp11, label %for.body12, label %for.end24

for.body12:                                       ; preds = %for.cond10
  %j.0 = add nsw i32 %j.0.in, -1
  %idxprom13 = zext nneg i32 %j.0 to i64
  %arrayidx14 = getelementptr inbounds nuw i32, ptr %call1, i64 %idxprom13
  %6 = load i32, ptr %arrayidx14, align 4, !tbaa !5
  %7 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %cmp17.not = icmp sgt i32 %6, %7
  br i1 %cmp17.not, label %for.cond10, label %land.lhs.true, !llvm.loop !12

land.lhs.true:                                    ; preds = %for.body12
  %arrayidx19 = getelementptr inbounds nuw i32, ptr %call4, i64 %idxprom13
  %8 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %8, i32 %max.0.ph)
  br label %for.cond10.outer, !llvm.loop !12

for.end24:                                        ; preds = %for.cond10
  %add = add nuw nsw i32 %max.0.ph, 1
  %arrayidx26 = getelementptr inbounds nuw i32, ptr %call4, i64 %4
  store i32 %add, ptr %arrayidx26, align 4, !tbaa !5
  %spec.select25 = call i32 @llvm.smax.i32(i32 %maxn.0, i32 %add)
  br label %for.cond6, !llvm.loop !13

for.end36:                                        ; preds = %for.cond6
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %maxn.0)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #6
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
