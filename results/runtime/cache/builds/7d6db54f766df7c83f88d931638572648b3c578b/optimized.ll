; ModuleID = '<stdin>'
source_filename = "/tmp/tmpqai4v_sx.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c",%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %n = alloca i32, align 4
  %a = alloca [300 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #4
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %a) #4
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %p.0 = phi ptr [ %a, %entry ], [ %incdec.ptr, %for.body ]
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %idx.ext = sext i32 %0 to i64
  %add.ptr = getelementptr inbounds i32, ptr %a, i64 %idx.ext
  %cmp = icmp ult ptr %p.0, %add.ptr
  br i1 %cmp, label %for.body, label %for.cond4

for.body:                                         ; preds = %for.cond
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %p.0)
  %incdec.ptr = getelementptr inbounds nuw i8, ptr %p.0, i64 4
  br label %for.cond, !llvm.loop !9

for.cond4:                                        ; preds = %for.cond7, %for.cond
  %indvars.iv29 = phi i64 [ 0, %for.cond ], [ %indvars.iv.next30, %for.cond7 ]
  %n.promoted27 = phi i32 [ %0, %for.cond ], [ %n.promoted26, %for.cond7 ]
  %sub = add nsw i32 %n.promoted27, -1
  %1 = sext i32 %sub to i64
  %cmp5 = icmp slt i64 %indvars.iv29, %1
  br i1 %cmp5, label %for.body6, label %for.end33

for.body6:                                        ; preds = %for.cond4
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %add.ptr11 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv29
  %2 = trunc nuw nsw i64 %indvars.iv.next30 to i32
  br label %for.cond7

for.cond7:                                        ; preds = %for.inc28, %for.body6
  %n.promoted26 = phi i32 [ %n.promoted27, %for.body6 ], [ %n.promoted25, %for.inc28 ]
  %sub2623 = phi i32 [ %n.promoted27, %for.body6 ], [ %sub2622, %for.inc28 ]
  %j.0 = phi i32 [ %2, %for.body6 ], [ %inc29, %for.inc28 ]
  %cmp8 = icmp slt i32 %j.0, %sub2623
  br i1 %cmp8, label %for.body9, label %for.cond4, !llvm.loop !12

for.body9:                                        ; preds = %for.cond7
  %3 = load i32, ptr %add.ptr11, align 4, !tbaa !5
  %idx.ext12 = sext i32 %j.0 to i64
  %add.ptr13 = getelementptr inbounds i32, ptr %a, i64 %idx.ext12
  %4 = load i32, ptr %add.ptr13, align 4, !tbaa !5
  %cmp14 = icmp eq i32 %3, %4
  br i1 %cmp14, label %for.cond16.preheader, label %for.inc28

for.cond16.preheader:                             ; preds = %for.body9
  %5 = add nsw i32 %sub2623, -1
  %wide.trip.count = sext i32 %5 to i64
  br label %for.cond16

for.cond16:                                       ; preds = %for.cond16.preheader, %for.body18
  %indvars.iv = phi i64 [ %idx.ext12, %for.cond16.preheader ], [ %indvars.iv.next, %for.body18 ]
  %exitcond.not = icmp eq i64 %indvars.iv, %wide.trip.count
  br i1 %exitcond.not, label %for.end25, label %for.body18

for.body18:                                       ; preds = %for.cond16
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %add.ptr20 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv.next
  %6 = load i32, ptr %add.ptr20, align 4, !tbaa !5
  %add.ptr23 = getelementptr inbounds i8, ptr %add.ptr20, i64 -4
  store i32 %6, ptr %add.ptr23, align 4, !tbaa !5
  br label %for.cond16, !llvm.loop !13

for.end25:                                        ; preds = %for.cond16
  store i32 %5, ptr %n, align 4, !tbaa !5
  %sub27 = add nsw i32 %j.0, -1
  br label %for.inc28

for.inc28:                                        ; preds = %for.body9, %for.end25
  %n.promoted25 = phi i32 [ %5, %for.end25 ], [ %n.promoted26, %for.body9 ]
  %sub2622 = phi i32 [ %5, %for.end25 ], [ %sub2623, %for.body9 ]
  %j.1 = phi i32 [ %sub27, %for.end25 ], [ %j.0, %for.body9 ]
  %inc29 = add nsw i32 %j.1, 1
  br label %for.cond7, !llvm.loop !14

for.end33:                                        ; preds = %for.cond4
  %7 = load i32, ptr %a, align 16, !tbaa !5
  %call34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %7)
  br label %for.cond35

for.cond35:                                       ; preds = %for.body37, %for.end33
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body37 ], [ 1, %for.end33 ]
  %8 = load i32, ptr %n, align 4, !tbaa !5
  %9 = sext i32 %8 to i64
  %cmp36 = icmp slt i64 %indvars.iv32, %9
  br i1 %cmp36, label %for.body37, label %for.end43

for.body37:                                       ; preds = %for.cond35
  %add.ptr39 = getelementptr inbounds nuw i32, ptr %a, i64 %indvars.iv32
  %10 = load i32, ptr %add.ptr39, align 4, !tbaa !5
  %call40 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %10)
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond35, !llvm.loop !15

for.end43:                                        ; preds = %for.cond35
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %a) #4
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
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
