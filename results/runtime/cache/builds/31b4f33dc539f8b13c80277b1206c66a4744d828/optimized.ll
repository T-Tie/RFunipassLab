; ModuleID = '<stdin>'
source_filename = "/tmp/tmp3609vb2d.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [100 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 400, ptr nonnull %a) #4
  br label %while.cond

while.cond:                                       ; preds = %for.end65, %entry
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %a)
  %0 = load i32, ptr %a, align 16, !tbaa !5
  %cmp = icmp eq i32 %0, -1
  br i1 %cmp, label %while.end, label %for.cond

for.cond:                                         ; preds = %while.cond, %for.cond
  %indvars.iv44 = phi i32 [ %indvars.iv.next45, %for.cond ], [ 0, %while.cond ]
  %indvars.iv37 = phi i32 [ %indvars.iv.next38, %for.cond ], [ 1, %while.cond ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.cond ], [ 1, %while.cond ]
  %arrayidx2 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv
  %call3 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx2)
  %1 = load i32, ptr %arrayidx2, align 4, !tbaa !5
  %cmp6 = icmp eq i32 %1, 0
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %indvars.iv.next38 = add nuw i32 %indvars.iv37, 1
  %indvars.iv.next45 = add nuw nsw i32 %indvars.iv44, 1
  br i1 %cmp6, label %for.end, label %for.cond, !llvm.loop !9

for.end:                                          ; preds = %for.cond
  %2 = trunc nuw nsw i64 %indvars.iv to i32
  br label %for.cond9

for.cond9:                                        ; preds = %for.cond11, %for.end
  %i.1.in = phi i32 [ %2, %for.end ], [ %i.1, %for.cond11 ]
  %i.1 = add nsw i32 %i.1.in, -1
  %cmp10 = icmp sgt i32 %i.1.in, 1
  br i1 %cmp10, label %for.cond11.preheader, label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond9
  %wide.trip.count46 = zext nneg i32 %indvars.iv44 to i64
  %wide.trip.count39 = zext i32 %indvars.iv37 to i64
  br label %for.cond36

for.cond11.preheader:                             ; preds = %for.cond9
  %wide.trip.count = zext nneg i32 %i.1 to i64
  br label %for.cond11

for.cond11:                                       ; preds = %for.cond11.backedge, %for.cond11.preheader
  %indvars.iv29 = phi i64 [ 0, %for.cond11.preheader ], [ %indvars.iv.next30, %for.cond11.backedge ]
  %exitcond.not = icmp eq i64 %indvars.iv29, %wide.trip.count
  br i1 %exitcond.not, label %for.cond9, label %for.body13, !llvm.loop !12

for.body13:                                       ; preds = %for.cond11
  %arrayidx15 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv29
  %3 = load i32, ptr %arrayidx15, align 4, !tbaa !5
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1
  %arrayidx17 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv.next30
  %4 = load i32, ptr %arrayidx17, align 4, !tbaa !5
  %cmp18 = icmp sgt i32 %3, %4
  br i1 %cmp18, label %if.then19, label %for.cond11.backedge

for.cond11.backedge:                              ; preds = %for.body13, %if.then19
  br label %for.cond11, !llvm.loop !13

if.then19:                                        ; preds = %for.body13
  store i32 %4, ptr %arrayidx15, align 4, !tbaa !5
  store i32 %3, ptr %arrayidx17, align 4, !tbaa !5
  br label %for.cond11.backedge

for.cond36:                                       ; preds = %for.cond36.preheader, %for.inc63
  %indvars.iv41 = phi i64 [ 0, %for.cond36.preheader ], [ %indvars.iv.next42, %for.inc63 ]
  %indvars.iv32 = phi i64 [ 1, %for.cond36.preheader ], [ %indvars.iv.next33, %for.inc63 ]
  %m.0 = phi i32 [ 0, %for.cond36.preheader ], [ %m.1, %for.inc63 ]
  %exitcond47.not = icmp eq i64 %indvars.iv41, %wide.trip.count46
  br i1 %exitcond47.not, label %for.end65, label %for.body39

for.body39:                                       ; preds = %for.cond36
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1
  %arrayidx47 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv41
  br label %for.cond41

for.cond41:                                       ; preds = %if.end51, %for.body39
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %if.end51 ], [ %indvars.iv32, %for.body39 ]
  %exitcond40.not = icmp eq i64 %indvars.iv34, %wide.trip.count39
  br i1 %exitcond40.not, label %for.inc63, label %for.body43

for.body43:                                       ; preds = %for.cond41
  %arrayidx45 = getelementptr inbounds nuw [100 x i32], ptr %a, i64 0, i64 %indvars.iv34
  %5 = load i32, ptr %arrayidx45, align 4, !tbaa !5
  %6 = load i32, ptr %arrayidx47, align 4, !tbaa !5
  %mul = shl nsw i32 %6, 1
  %cmp48 = icmp eq i32 %5, %mul
  br i1 %cmp48, label %if.then49, label %if.end51

if.then49:                                        ; preds = %for.body43
  %add50 = add nsw i32 %m.0, 1
  br label %for.inc63

if.end51:                                         ; preds = %for.body43
  %cmp57 = icmp sgt i32 %5, %mul
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1
  br i1 %cmp57, label %for.inc63, label %for.cond41, !llvm.loop !14

for.inc63:                                        ; preds = %for.cond41, %if.end51, %if.then49
  %m.1 = phi i32 [ %add50, %if.then49 ], [ %m.0, %if.end51 ], [ %m.0, %for.cond41 ]
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1
  br label %for.cond36, !llvm.loop !15

for.end65:                                        ; preds = %for.cond36
  %call66 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %m.0)
  br label %while.cond, !llvm.loop !16

while.end:                                        ; preds = %while.cond
  call void @llvm.lifetime.end.p0(i64 400, ptr nonnull %a) #4
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
!16 = distinct !{!16, !10, !11}
