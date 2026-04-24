; ModuleID = '<stdin>'
source_filename = "/tmp/tmpdnoy7aas.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d,\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %N = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %N) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %N)
  %0 = load i32, ptr %N, align 4, !tbaa !5
  %1 = zext i32 %0 to i64
  %2 = call ptr @llvm.stacksave.p0()
  %vla = alloca i32, i64 %1, align 16
  %3 = load i32, ptr %N, align 4, !tbaa !5
  %4 = zext i32 %3 to i64
  %vla1 = alloca i32, i64 %4, align 16
  br label %for.cond

for.cond:                                         ; preds = %for.body, %entry
  %5 = phi i32 [ %.pre, %for.body ], [ %3, %entry ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ]
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv, %6
  br i1 %cmp, label %for.body, label %for.cond3.preheader

for.cond3.preheader:                              ; preds = %for.cond
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 0)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %for.cond3

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %.pre = load i32, ptr %N, align 4, !tbaa !5
  br label %for.cond, !llvm.loop !9

for.cond3:                                        ; preds = %for.cond3.preheader, %for.body5
  %indvars.iv28 = phi i64 [ 0, %for.cond3.preheader ], [ %indvars.iv.next29, %for.body5 ]
  %exitcond.not = icmp eq i64 %indvars.iv28, %wide.trip.count
  br i1 %exitcond.not, label %for.cond11, label %for.body5

for.body5:                                        ; preds = %for.cond3
  %arrayidx7 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv28
  store i32 0, ptr %arrayidx7, align 4, !tbaa !5
  %indvars.iv.next29 = add nuw nsw i64 %indvars.iv28, 1
  br label %for.cond3, !llvm.loop !12

for.cond11:                                       ; preds = %for.cond3, %for.inc22
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.inc22 ], [ 0, %for.cond3 ]
  %a.0 = phi i32 [ %a.1, %for.inc22 ], [ 0, %for.cond3 ]
  %exitcond36.not = icmp eq i64 %indvars.iv32, %wide.trip.count
  br i1 %exitcond36.not, label %for.cond25.preheader, label %for.body13

for.cond25.preheader:                             ; preds = %for.cond11
  %smax47 = call i32 @llvm.smax.i32(i32 %5, i32 1)
  br label %for.cond25

for.body13:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw i32, ptr %vla, i64 %indvars.iv32
  %7 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %8 = and i32 %7, -2147483647
  %cmp16 = icmp eq i32 %8, 1
  br i1 %cmp16, label %if.then, label %for.inc22

if.then:                                          ; preds = %for.body13
  %inc17 = add nsw i32 %a.0, 1
  %arrayidx21 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv32
  store i32 %7, ptr %arrayidx21, align 4, !tbaa !5
  br label %for.inc22

for.inc22:                                        ; preds = %for.body13, %if.then
  %a.1 = phi i32 [ %inc17, %if.then ], [ %a.0, %for.body13 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond11, !llvm.loop !13

for.cond25:                                       ; preds = %for.cond25.preheader, %for.inc51
  %indvars.iv41.in = phi i32 [ %5, %for.cond25.preheader ], [ %indvars.iv41, %for.inc51 ]
  %k.0 = phi i32 [ 1, %for.cond25.preheader ], [ %inc52, %for.inc51 ]
  %indvars.iv41 = add i32 %indvars.iv41.in, -1
  %exitcond48.not = icmp eq i32 %k.0, %smax47
  br i1 %exitcond48.not, label %for.end53, label %for.cond28.preheader

for.cond28.preheader:                             ; preds = %for.cond25
  %smax43 = call i32 @llvm.smax.i32(i32 %indvars.iv41, i32 0)
  %wide.trip.count44 = zext nneg i32 %smax43 to i64
  br label %for.cond28

for.cond28:                                       ; preds = %for.cond28.backedge, %for.cond28.preheader
  %indvars.iv37 = phi i64 [ 0, %for.cond28.preheader ], [ %indvars.iv.next38, %for.cond28.backedge ]
  %exitcond45.not = icmp eq i64 %indvars.iv37, %wide.trip.count44
  br i1 %exitcond45.not, label %for.inc51, label %for.body30

for.body30:                                       ; preds = %for.cond28
  %arrayidx32 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv37
  %9 = load i32, ptr %arrayidx32, align 4, !tbaa !5
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %arrayidx34 = getelementptr inbounds nuw i32, ptr %vla1, i64 %indvars.iv.next38
  %10 = load i32, ptr %arrayidx34, align 4, !tbaa !5
  %cmp35 = icmp sgt i32 %9, %10
  br i1 %cmp35, label %if.then36, label %for.cond28.backedge

for.cond28.backedge:                              ; preds = %for.body30, %if.then36
  br label %for.cond28, !llvm.loop !14

if.then36:                                        ; preds = %for.body30
  store i32 %9, ptr %arrayidx34, align 4, !tbaa !5
  store i32 %10, ptr %arrayidx32, align 4, !tbaa !5
  br label %for.cond28.backedge

for.inc51:                                        ; preds = %for.cond28
  %inc52 = add nuw i32 %k.0, 1
  br label %for.cond25, !llvm.loop !15

for.end53:                                        ; preds = %for.cond25
  %sub54 = sub i32 %5, %a.0
  %11 = sext i32 %sub54 to i64
  br label %for.cond55

for.cond55:                                       ; preds = %for.body58, %for.end53
  %12 = phi i32 [ %.pre52, %for.body58 ], [ %5, %for.end53 ]
  %indvars.iv49 = phi i64 [ %indvars.iv.next50, %for.body58 ], [ %11, %for.end53 ]
  %sub56 = add nsw i32 %12, -1
  %13 = sext i32 %sub56 to i64
  %cmp57 = icmp slt i64 %indvars.iv49, %13
  br i1 %cmp57, label %for.body58, label %for.end64

for.body58:                                       ; preds = %for.cond55
  %arrayidx60 = getelementptr inbounds i32, ptr %vla1, i64 %indvars.iv49
  %14 = load i32, ptr %arrayidx60, align 4, !tbaa !5
  %call61 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %14)
  %indvars.iv.next50 = add nsw i64 %indvars.iv49, 1
  %.pre52 = load i32, ptr %N, align 4, !tbaa !5
  br label %for.cond55, !llvm.loop !16

for.end64:                                        ; preds = %for.cond55
  %arrayidx67 = getelementptr inbounds i32, ptr %vla1, i64 %13
  %15 = load i32, ptr %arrayidx67, align 4, !tbaa !5
  %call68 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %15)
  call void @llvm.stackrestore.p0(ptr %2)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %N) #6
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
