; ModuleID = '<stdin>'
source_filename = "/tmp/tmpbgdu8sqy.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [256 x i8], align 16
  %sub = alloca [256 x i8], align 16
  %rep = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %str) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %sub) #7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %rep) #7
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str, ptr noundef nonnull %sub, ptr noundef nonnull %rep)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #8
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #8
  %conv7 = trunc i64 %call6 to i32
  %cmp24 = icmp sgt i32 %conv, 0
  br i1 %cmp24, label %for.cond8.preheader.lr.ph, label %if.else

for.cond8.preheader.lr.ph:                        ; preds = %entry
  %cmp920 = icmp sgt i32 %conv7, 0
  br i1 %cmp920, label %for.cond8.preheader.us.preheader, label %for.cond8.preheader.lr.ph.split

for.cond8.preheader.us.preheader:                 ; preds = %for.cond8.preheader.lr.ph
  %wide.trip.count49 = and i64 %call4, 2147483647
  %wide.trip.count = and i64 %call6, 2147483647
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  %n.vec = and i64 %call6, 2147483644
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br label %for.cond8.preheader.us

for.cond8.preheader.us:                           ; preds = %for.cond8.preheader.us.preheader, %for.inc20.us
  %indvars.iv46 = phi i64 [ 0, %for.cond8.preheader.us.preheader ], [ %indvars.iv.next47, %for.inc20.us ]
  br i1 %min.iters.check, label %for.body10.us.preheader, label %vector.body

vector.body:                                      ; preds = %for.cond8.preheader.us, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %for.cond8.preheader.us ]
  %vec.phi = phi <4 x i32> [ %5, %vector.body ], [ zeroinitializer, %for.cond8.preheader.us ]
  %0 = add nuw nsw i64 %index, %indvars.iv46
  %1 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %0
  %wide.load = load <4 x i8>, ptr %1, align 1, !tbaa !5
  %2 = getelementptr inbounds nuw [256 x i8], ptr %sub, i64 0, i64 %index
  %wide.load71 = load <4 x i8>, ptr %2, align 4, !tbaa !5
  %3 = icmp eq <4 x i8> %wide.load, %wide.load71
  %4 = zext <4 x i1> %3 to <4 x i32>
  %5 = add <4 x i32> %vec.phi, %4
  %index.next = add nuw i64 %index, 4
  %6 = icmp eq i64 %index.next, %n.vec
  br i1 %6, label %middle.block, label %vector.body, !llvm.loop !8

middle.block:                                     ; preds = %vector.body
  %7 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %5)
  br i1 %cmp.n, label %for.cond8.for.end_crit_edge.us, label %for.body10.us.preheader

for.body10.us.preheader:                          ; preds = %for.cond8.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.cond8.preheader.us ], [ %n.vec, %middle.block ]
  %e.222.us.ph = phi i32 [ 0, %for.cond8.preheader.us ], [ %7, %middle.block ]
  br label %for.body10.us

for.inc20.us:                                     ; preds = %for.cond8.for.end_crit_edge.us
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %for.end22, label %for.cond8.preheader.us, !llvm.loop !13

for.body10.us:                                    ; preds = %for.body10.us.preheader, %for.body10.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10.us ], [ %indvars.iv.ph, %for.body10.us.preheader ]
  %e.222.us = phi i32 [ %spec.select.us, %for.body10.us ], [ %e.222.us.ph, %for.body10.us.preheader ]
  %8 = add nuw nsw i64 %indvars.iv, %indvars.iv46
  %arrayidx.us = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %8
  %9 = load i8, ptr %arrayidx.us, align 1, !tbaa !5
  %arrayidx13.us = getelementptr inbounds nuw [256 x i8], ptr %sub, i64 0, i64 %indvars.iv
  %10 = load i8, ptr %arrayidx13.us, align 1, !tbaa !5
  %cmp15.us = icmp eq i8 %9, %10
  %inc.us = zext i1 %cmp15.us to i32
  %spec.select.us = add nuw nsw i32 %e.222.us, %inc.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond8.for.end_crit_edge.us, label %for.body10.us, !llvm.loop !14

for.cond8.for.end_crit_edge.us:                   ; preds = %for.body10.us, %middle.block
  %spec.select.us.lcssa = phi i32 [ %7, %middle.block ], [ %spec.select.us, %for.body10.us ]
  %cmp17.us = icmp eq i32 %spec.select.us.lcssa, %conv7
  br i1 %cmp17.us, label %for.cond25.preheader.loopexit, label %for.inc20.us

for.cond8.preheader.lr.ph.split:                  ; preds = %for.cond8.preheader.lr.ph
  %cmp17 = icmp eq i32 %conv7, 0
  %spec.select = select i1 %cmp17, i32 0, i32 %conv
  br label %for.end22

for.end22:                                        ; preds = %for.inc20.us, %for.cond8.preheader.lr.ph.split
  %i.0.lcssa = phi i32 [ %spec.select, %for.cond8.preheader.lr.ph.split ], [ %conv, %for.inc20.us ]
  %e.1 = phi i32 [ 0, %for.cond8.preheader.lr.ph.split ], [ %spec.select.us.lcssa, %for.inc20.us ]
  %cmp23 = icmp eq i32 %e.1, %conv7
  br i1 %cmp23, label %for.cond25.preheader, label %if.else

for.cond25.preheader.loopexit:                    ; preds = %for.cond8.for.end_crit_edge.us
  %11 = trunc nuw nsw i64 %indvars.iv46 to i32
  br label %for.cond25.preheader

for.cond25.preheader:                             ; preds = %for.cond25.preheader.loopexit, %for.end22
  %i.0.lcssa62 = phi i32 [ %i.0.lcssa, %for.end22 ], [ %11, %for.cond25.preheader.loopexit ]
  %cmp2639.not = icmp eq i32 %i.0.lcssa62, 0
  br i1 %cmp2639.not, label %for.end34, label %for.body27.preheader

for.body27.preheader:                             ; preds = %for.cond25.preheader
  %wide.trip.count54 = zext i32 %i.0.lcssa62 to i64
  br label %for.body27

for.body27:                                       ; preds = %for.body27.preheader, %for.body27
  %indvars.iv51 = phi i64 [ 0, %for.body27.preheader ], [ %indvars.iv.next52, %for.body27 ]
  %arrayidx29 = getelementptr inbounds nuw [256 x i8], ptr %str, i64 0, i64 %indvars.iv51
  %12 = load i8, ptr %arrayidx29, align 1, !tbaa !5
  %conv30 = sext i8 %12 to i32
  %putchar19 = call i32 @putchar(i32 %conv30)
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %exitcond55.not = icmp eq i64 %indvars.iv.next52, %wide.trip.count54
  br i1 %exitcond55.not, label %for.end34, label %for.body27, !llvm.loop !15

for.end34:                                        ; preds = %for.body27, %for.cond25.preheader
  %call36 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %rep)
  %add37 = add nsw i32 %i.0.lcssa62, %conv7
  %cmp3941 = icmp slt i32 %add37, %conv
  br i1 %cmp3941, label %for.body40.preheader, label %if.end50

for.body40.preheader:                             ; preds = %for.end34
  %13 = sext i32 %add37 to i64
  %sext = and i64 %call4, 2147483647
  br label %for.body40

for.body40:                                       ; preds = %for.body40.preheader, %for.body40
  %indvars.iv56 = phi i64 [ %13, %for.body40.preheader ], [ %indvars.iv.next57, %for.body40 ]
  %arrayidx42 = getelementptr inbounds [256 x i8], ptr %str, i64 0, i64 %indvars.iv56
  %14 = load i8, ptr %arrayidx42, align 1, !tbaa !5
  %conv43 = sext i8 %14 to i32
  %putchar = call i32 @putchar(i32 %conv43)
  %indvars.iv.next57 = add nsw i64 %indvars.iv56, 1
  %cmp39 = icmp slt i64 %indvars.iv.next57, %sext
  br i1 %cmp39, label %for.body40, label %if.end50, !llvm.loop !16

if.else:                                          ; preds = %entry, %for.end22
  %call49 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %str)
  br label %if.end50

if.end50:                                         ; preds = %for.body40, %for.end34, %if.else
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %rep) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %sub) #7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %str) #7
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 21.1.8 (https://github.com/llvm/llvm-project.git 2078da43e25a4623cab2d0d60decddf709aaea28)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = distinct !{!8, !9, !10, !11, !12}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10, !11}
!15 = distinct !{!15, !9, !10}
!16 = distinct !{!16, !9, !10}
