; ModuleID = '<stdin>'
source_filename = "/tmp/tmpzb6qmz1y.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [257 x i8], align 16
  %sub = alloca [257 x i8], align 16
  %re = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %str) #6
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %sub) #6
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %re) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str, ptr noundef nonnull %sub, ptr noundef nonnull %re)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %sub) #7
  %call6.fr = freeze i64 %call6
  %conv7 = trunc i64 %call6.fr to i32
  %call9 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %re) #7
  %conv10 = trunc i64 %call9 to i32
  %cmp.not32 = icmp slt i32 %conv, %conv7
  br i1 %cmp.not32, label %if.then65, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i8, ptr %sub, align 16, !tbaa !5
  %cmp17.not29 = icmp sgt i32 %conv7, 0
  %1 = add i64 %call4, 1
  %2 = sub i64 %1, %call6.fr
  %wide.trip.count55 = and i64 %2, 4294967295
  br i1 %cmp17.not29, label %for.body.us.preheader, label %for.body

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %wide.trip.count50 = and i64 %call6.fr, 2147483647
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc61.us
  %indvars.iv52 = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next53, %for.inc61.us ]
  %arrayidx.us = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv52
  %3 = load i8, ptr %arrayidx.us, align 1, !tbaa !5
  %cmp15.us = icmp eq i8 %3, %0
  br i1 %cmp15.us, label %for.body18.us, label %for.inc61.us

for.cond16.us:                                    ; preds = %for.body18.us
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1
  %exitcond51.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count50
  br i1 %exitcond51.not, label %for.cond29.preheader, label %for.body18.us, !llvm.loop !8

for.body18.us:                                    ; preds = %for.body.us, %for.cond16.us
  %indvars.iv46 = phi i64 [ %indvars.iv.next47, %for.cond16.us ], [ 0, %for.body.us ]
  %4 = add nuw nsw i64 %indvars.iv46, %indvars.iv52
  %arrayidx20.us = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %4
  %5 = load i8, ptr %arrayidx20.us, align 1, !tbaa !5
  %arrayidx23.us = getelementptr inbounds nuw [257 x i8], ptr %sub, i64 0, i64 %indvars.iv46
  %6 = load i8, ptr %arrayidx23.us, align 1, !tbaa !5
  %cmp25.not.us = icmp eq i8 %5, %6
  br i1 %cmp25.not.us, label %for.cond16.us, label %for.inc61.us

for.inc61.us:                                     ; preds = %for.body18.us, %for.body.us
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %if.then65, label %for.body.us, !llvm.loop !11

for.body:                                         ; preds = %for.body.lr.ph, %for.inc61
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc61 ], [ 0, %for.body.lr.ph ]
  %arrayidx = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv
  %7 = load i8, ptr %arrayidx, align 1, !tbaa !5
  %cmp15 = icmp eq i8 %7, %0
  br i1 %cmp15, label %for.cond29.preheader, label %for.inc61

for.cond29.preheader:                             ; preds = %for.body, %for.cond16.us
  %i.0.lcssa28.in = phi i64 [ %indvars.iv52, %for.cond16.us ], [ %indvars.iv, %for.body ]
  %i.0.lcssa28 = trunc i64 %i.0.lcssa28.in to i32
  %cmp3035.not = icmp eq i32 %i.0.lcssa28, 0
  br i1 %cmp3035.not, label %for.cond39.preheader, label %for.body31.preheader

for.body31.preheader:                             ; preds = %for.cond29.preheader
  %wide.trip.count60 = and i64 %i.0.lcssa28.in, 4294967295
  br label %for.body31

for.cond39.preheader:                             ; preds = %for.body31, %for.cond29.preheader
  %cmp4037 = icmp sgt i32 %conv10, 0
  br i1 %cmp4037, label %for.body41.preheader, label %for.end48

for.body41.preheader:                             ; preds = %for.cond39.preheader
  %wide.trip.count65 = and i64 %call9, 2147483647
  br label %for.body41

for.body31:                                       ; preds = %for.body31.preheader, %for.body31
  %indvars.iv57 = phi i64 [ 0, %for.body31.preheader ], [ %indvars.iv.next58, %for.body31 ]
  %arrayidx33 = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv57
  %8 = load i8, ptr %arrayidx33, align 1, !tbaa !5
  %conv34 = sext i8 %8 to i32
  %putchar21 = call i32 @putchar(i32 %conv34)
  %indvars.iv.next58 = add nuw nsw i64 %indvars.iv57, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next58, %wide.trip.count60
  br i1 %exitcond61.not, label %for.cond39.preheader, label %for.body31, !llvm.loop !12

for.body41:                                       ; preds = %for.body41.preheader, %for.body41
  %indvars.iv62 = phi i64 [ 0, %for.body41.preheader ], [ %indvars.iv.next63, %for.body41 ]
  %arrayidx43 = getelementptr inbounds nuw [257 x i8], ptr %re, i64 0, i64 %indvars.iv62
  %9 = load i8, ptr %arrayidx43, align 1, !tbaa !5
  %conv44 = sext i8 %9 to i32
  %putchar20 = call i32 @putchar(i32 %conv44)
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1
  %exitcond66.not = icmp eq i64 %indvars.iv.next63, %wide.trip.count65
  br i1 %exitcond66.not, label %for.end48, label %for.body41, !llvm.loop !13

for.end48:                                        ; preds = %for.body41, %for.cond39.preheader
  %add49 = add nsw i32 %i.0.lcssa28, %conv7
  %cmp5139 = icmp slt i32 %add49, %conv
  br i1 %cmp5139, label %for.body52.preheader, label %if.end68

for.body52.preheader:                             ; preds = %for.end48
  %10 = sext i32 %add49 to i64
  %sext = shl i64 %call4, 32
  %11 = ashr exact i64 %sext, 32
  br label %for.body52

for.body52:                                       ; preds = %for.body52.preheader, %for.body52
  %indvars.iv67 = phi i64 [ %10, %for.body52.preheader ], [ %indvars.iv.next68, %for.body52 ]
  %arrayidx54 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %indvars.iv67
  %12 = load i8, ptr %arrayidx54, align 1, !tbaa !5
  %conv55 = sext i8 %12 to i32
  %putchar = call i32 @putchar(i32 %conv55)
  %indvars.iv.next68 = add nsw i64 %indvars.iv67, 1
  %cmp51 = icmp slt i64 %indvars.iv.next68, %11
  br i1 %cmp51, label %for.body52, label %if.end68, !llvm.loop !14

for.inc61:                                        ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count55
  br i1 %exitcond.not, label %if.then65, label %for.body, !llvm.loop !11

if.then65:                                        ; preds = %for.inc61, %for.inc61.us, %entry
  %call67 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %str)
  br label %if.end68

if.end68:                                         ; preds = %for.body52, %for.end48, %if.then65
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %re) #6
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %sub) #6
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %str) #6
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

attributes #0 = { mustprogress norecurse uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !9, !10}
!12 = distinct !{!12, !9, !10}
!13 = distinct !{!13, !9, !10}
!14 = distinct !{!14, !9, !10}
