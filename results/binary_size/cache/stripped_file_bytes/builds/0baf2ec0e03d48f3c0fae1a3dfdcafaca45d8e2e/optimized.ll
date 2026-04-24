; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzlbsw_4v.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %a = alloca [16 x [16 x i32]], align 16
  %t = alloca [15 x i32], align 16
  %b = alloca [16 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %a) #5
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %t) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(60) %t, i8 0, i64 60, i1 false)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %b) #5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %b, i8 0, i64 64, i1 false)
  br label %for.cond1.preheader

for.cond1.preheader:                              ; preds = %entry, %if.end28
  %indvars.iv48 = phi i64 [ 0, %entry ], [ %indvars.iv.next49, %if.end28 ]
  %arrayidx19 = getelementptr inbounds nuw [15 x i32], ptr %t, i64 0, i64 %indvars.iv48
  br label %for.body3

for.body3:                                        ; preds = %for.cond1.preheader, %if.end17
  %indvars.iv = phi i64 [ 0, %for.cond1.preheader ], [ %indvars.iv.next, %if.end17 ]
  %arrayidx5 = getelementptr inbounds nuw [16 x [16 x i32]], ptr %a, i64 0, i64 %indvars.iv48, i64 %indvars.iv
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %arrayidx5)
  %0 = load i32, ptr %arrayidx5, align 4, !tbaa !5
  switch i32 %0, label %if.end17 [
    i32 -1, label %for.end
    i32 0, label %for.end
  ]

if.end17:                                         ; preds = %for.body3
  %1 = load i32, ptr %arrayidx19, align 4, !tbaa !5
  %add = add nsw i32 %1, 1
  store i32 %add, ptr %arrayidx19, align 4, !tbaa !5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.end, label %for.body3, !llvm.loop !9

for.end:                                          ; preds = %for.body3, %for.body3, %if.end17
  %j.0.lcssa = phi i64 [ %indvars.iv, %for.body3 ], [ %indvars.iv, %for.body3 ], [ 16, %if.end17 ]
  %idxprom24 = and i64 %j.0.lcssa, 4294967295
  %arrayidx25 = getelementptr inbounds nuw [16 x [16 x i32]], ptr %a, i64 0, i64 %indvars.iv48, i64 %idxprom24
  %2 = load i32, ptr %arrayidx25, align 4, !tbaa !5
  %cmp26 = icmp eq i32 %2, -1
  br i1 %cmp26, label %for.end32, label %if.end28

if.end28:                                         ; preds = %for.end
  %indvars.iv.next49 = add nuw nsw i64 %indvars.iv48, 1
  %exitcond53.not = icmp eq i64 %indvars.iv.next49, 11
  br i1 %exitcond53.not, label %for.cond36.preheader.preheader, label %for.cond1.preheader, !llvm.loop !12

for.end32:                                        ; preds = %for.end
  %indvars50.le = trunc i64 %indvars.iv48 to i32
  %cmp3443.not = icmp eq i32 %indvars50.le, 0
  br i1 %cmp3443.not, label %for.end88, label %for.cond36.preheader.preheader

for.cond36.preheader.preheader:                   ; preds = %if.end28, %for.end32
  %k.0.lcssa77 = phi i32 [ %indvars50.le, %for.end32 ], [ 11, %if.end28 ]
  %wide.trip.count68 = zext i32 %k.0.lcssa77 to i64
  br label %for.cond36.preheader

for.cond36.preheader:                             ; preds = %for.cond36.preheader.preheader, %for.inc77
  %indvars.iv65 = phi i64 [ 0, %for.cond36.preheader.preheader ], [ %indvars.iv.next66, %for.inc77 ]
  %arrayidx38 = getelementptr inbounds nuw [15 x i32], ptr %t, i64 0, i64 %indvars.iv65
  %3 = load i32, ptr %arrayidx38, align 4, !tbaa !5
  %cmp3941 = icmp sgt i32 %3, 0
  br i1 %cmp3941, label %for.body40.lr.ph, label %for.inc77

for.body40.lr.ph:                                 ; preds = %for.cond36.preheader
  %arrayidx68 = getelementptr inbounds nuw [16 x i32], ptr %b, i64 0, i64 %indvars.iv65
  %4 = add nuw i32 %3, 1
  %wide.trip.count63 = zext nneg i32 %3 to i64
  %wide.trip.count = zext i32 %4 to i64
  br label %for.body46.lr.ph

for.body82.preheader:                             ; preds = %for.inc77
  %wide.trip.count73 = zext i32 %k.0.lcssa77 to i64
  br label %for.body82

for.cond36.loopexit:                              ; preds = %for.inc71
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %for.inc77, label %for.body46.lr.ph, !llvm.loop !13

for.body46.lr.ph:                                 ; preds = %for.cond36.loopexit, %for.body40.lr.ph
  %indvars.iv60 = phi i64 [ 0, %for.body40.lr.ph ], [ %indvars.iv.next61, %for.cond36.loopexit ]
  %indvars.iv54 = phi i64 [ 1, %for.body40.lr.ph ], [ %indvars.iv.next55, %for.cond36.loopexit ]
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1
  %arrayidx50 = getelementptr inbounds nuw [16 x [16 x i32]], ptr %a, i64 0, i64 %indvars.iv65, i64 %indvars.iv60
  %5 = load i32, ptr %arrayidx50, align 4, !tbaa !5
  %mul64 = shl nsw i32 %5, 1
  br label %for.body46

for.body46:                                       ; preds = %for.body46.lr.ph, %for.inc71
  %indvars.iv56 = phi i64 [ %indvars.iv54, %for.body46.lr.ph ], [ %indvars.iv.next57, %for.inc71 ]
  %arrayidx54 = getelementptr inbounds nuw [16 x [16 x i32]], ptr %a, i64 0, i64 %indvars.iv65, i64 %indvars.iv56
  %6 = load i32, ptr %arrayidx54, align 4, !tbaa !5
  %mul = shl nsw i32 %6, 1
  %cmp55 = icmp eq i32 %5, %mul
  %cmp65 = icmp eq i32 %6, %mul64
  %or.cond = select i1 %cmp55, i1 true, i1 %cmp65
  br i1 %or.cond, label %if.then66, label %for.inc71

if.then66:                                        ; preds = %for.body46
  %7 = load i32, ptr %arrayidx68, align 4, !tbaa !5
  %inc69 = add nsw i32 %7, 1
  store i32 %inc69, ptr %arrayidx68, align 4, !tbaa !5
  br label %for.inc71

for.inc71:                                        ; preds = %for.body46, %if.then66
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 1
  %exitcond59.not = icmp eq i64 %indvars.iv.next57, %wide.trip.count
  br i1 %exitcond59.not, label %for.cond36.loopexit, label %for.body46, !llvm.loop !14

for.inc77:                                        ; preds = %for.cond36.loopexit, %for.cond36.preheader
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %for.body82.preheader, label %for.cond36.preheader, !llvm.loop !15

for.body82:                                       ; preds = %for.body82.preheader, %for.body82
  %indvars.iv70 = phi i64 [ 0, %for.body82.preheader ], [ %indvars.iv.next71, %for.body82 ]
  %arrayidx84 = getelementptr inbounds nuw [16 x i32], ptr %b, i64 0, i64 %indvars.iv70
  %8 = load i32, ptr %arrayidx84, align 4, !tbaa !5
  %call85 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %8)
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 1
  %exitcond74.not = icmp eq i64 %indvars.iv.next71, %wide.trip.count73
  br i1 %exitcond74.not, label %for.end88, label %for.body82, !llvm.loop !16

for.end88:                                        ; preds = %for.body82, %for.end32
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %b) #5
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %t) #5
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %a) #5
  ret i32 0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__isoc23_scanf(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr captures(none)) #1

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
!16 = distinct !{!16, !10, !11}
