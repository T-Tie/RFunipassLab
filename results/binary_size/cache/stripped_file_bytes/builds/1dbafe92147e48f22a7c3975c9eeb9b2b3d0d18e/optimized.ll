; ModuleID = '<stdin>'
source_filename = "/tmp/tmpfpgt45ji.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main(i32 noundef %argc, ptr noundef readnone captures(none) %argv) local_unnamed_addr #0 {
entry:
  %a = alloca [25 x i32], align 16
  %b = alloca [25 x i32], align 16
  %n = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 100, ptr nonnull %b) #5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %n) #5
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %n)
  %0 = load i32, ptr %n, align 4, !tbaa !5
  %cmp17 = icmp sgt i32 %0, 0
  br i1 %cmp17, label %for.body, label %for.end36

for.cond4.preheader:                              ; preds = %for.body
  %cmp525 = icmp sgt i32 %1, 0
  br i1 %cmp525, label %for.cond7.preheader.preheader, label %for.end36

for.cond7.preheader.preheader:                    ; preds = %for.cond4.preheader
  %wide.trip.count37 = zext nneg i32 %1 to i64
  br label %for.cond7.preheader

for.body:                                         ; preds = %entry, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call1 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %arrayidx3 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv
  store i32 1, ptr %arrayidx3, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %1 = load i32, ptr %n, align 4, !tbaa !5
  %2 = sext i32 %1 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %2
  br i1 %cmp, label %for.body, label %for.cond4.preheader, !llvm.loop !9

for.cond7.preheader:                              ; preds = %for.cond7.preheader.preheader, %for.inc34
  %indvars.iv34 = phi i64 [ 0, %for.cond7.preheader.preheader ], [ %indvars.iv.next35, %for.inc34 ]
  %max.027 = phi i32 [ 1, %for.cond7.preheader.preheader ], [ %max.1.lcssa, %for.inc34 ]
  %cmp819.not = icmp eq i64 %indvars.iv34, 0
  br i1 %cmp819.not, label %for.inc34, label %for.body9.lr.ph

for.body9.lr.ph:                                  ; preds = %for.cond7.preheader
  %arrayidx11 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv34
  %arrayidx16 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %arrayidx11.promoted = load i32, ptr %arrayidx11, align 4, !tbaa !5
  br label %for.body9

for.body9:                                        ; preds = %for.body9.lr.ph, %for.inc31
  %indvars.iv31 = phi i64 [ 0, %for.body9.lr.ph ], [ %indvars.iv.next32, %for.inc31 ]
  %add24 = phi i32 [ %arrayidx11.promoted, %for.body9.lr.ph ], [ %add23, %for.inc31 ]
  %max.121 = phi i32 [ %max.027, %for.body9.lr.ph ], [ %max.2, %for.inc31 ]
  %arrayidx13 = getelementptr inbounds nuw [25 x i32], ptr %b, i64 0, i64 %indvars.iv31
  %3 = load i32, ptr %arrayidx13, align 4, !tbaa !5
  %cmp14.not = icmp sgt i32 %add24, %3
  br i1 %cmp14.not, label %for.inc31, label %land.lhs.true

land.lhs.true:                                    ; preds = %for.body9
  %4 = load i32, ptr %arrayidx16, align 4, !tbaa !5
  %arrayidx18 = getelementptr inbounds nuw [25 x i32], ptr %a, i64 0, i64 %indvars.iv31
  %5 = load i32, ptr %arrayidx18, align 4, !tbaa !5
  %cmp19.not = icmp sgt i32 %4, %5
  br i1 %cmp19.not, label %for.inc31, label %if.then

if.then:                                          ; preds = %land.lhs.true
  %add = add nsw i32 %3, 1
  store i32 %add, ptr %arrayidx11, align 4, !tbaa !5
  %spec.select = call i32 @llvm.smax.i32(i32 %max.121, i32 %add)
  br label %for.inc31

for.inc31:                                        ; preds = %if.then, %for.body9, %land.lhs.true
  %add23 = phi i32 [ %add24, %land.lhs.true ], [ %add24, %for.body9 ], [ %add, %if.then ]
  %max.2 = phi i32 [ %max.121, %land.lhs.true ], [ %max.121, %for.body9 ], [ %spec.select, %if.then ]
  %indvars.iv.next32 = add nuw nsw i64 %indvars.iv31, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next32, %indvars.iv34
  br i1 %exitcond.not, label %for.inc34, label %for.body9, !llvm.loop !12

for.inc34:                                        ; preds = %for.inc31, %for.cond7.preheader
  %max.1.lcssa = phi i32 [ %max.027, %for.cond7.preheader ], [ %max.2, %for.inc31 ]
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  %exitcond38.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond38.not, label %for.end36, label %for.cond7.preheader, !llvm.loop !13

for.end36:                                        ; preds = %for.inc34, %entry, %for.cond4.preheader
  %max.0.lcssa = phi i32 [ 1, %for.cond4.preheader ], [ 1, %entry ], [ %max.1.lcssa, %for.inc34 ]
  %call37 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %max.0.lcssa)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %n) #5
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 100, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
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
!13 = distinct !{!13, !10, !11}
