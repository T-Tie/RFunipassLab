; ModuleID = '<stdin>'
source_filename = "/tmp/tmpovyyzfq6.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [7 x i8] c"%s%s%s\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %str = alloca [257 x i8], align 16
  %s = alloca [257 x i8], align 16
  %r = alloca [257 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %str) #6
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %s) #6
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %r) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %str, ptr noundef nonnull %s, ptr noundef nonnull %r)
  %call4 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %str) #7
  %conv = trunc i64 %call4 to i32
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %s) #7
  %call6.fr = freeze i64 %call6
  %conv7 = trunc i64 %call6.fr to i32
  %0 = load i8, ptr %str, align 16, !tbaa !5
  %cmp.not23 = icmp eq i8 %0, 0
  br i1 %cmp.not23, label %if.else, label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %entry
  %1 = load i8, ptr %s, align 16, !tbaa !5
  %cmp1820 = icmp sgt i32 %conv7, 0
  br i1 %cmp1820, label %while.body.us.preheader, label %while.body.lr.ph.split

while.body.us.preheader:                          ; preds = %while.body.lr.ph
  %wide.trip.count = and i64 %call6.fr, 2147483647
  br label %while.body.us

while.body.us:                                    ; preds = %while.body.us.preheader, %if.end30.us
  %indvars.iv51 = phi i64 [ 0, %while.body.us.preheader ], [ %indvars.iv.next52, %if.end30.us ]
  %2 = phi i8 [ %0, %while.body.us.preheader ], [ %7, %if.end30.us ]
  %cmp17.us = icmp eq i8 %2, %1
  br i1 %cmp17.us, label %for.body.us, label %if.end30.us

for.body.us:                                      ; preds = %while.body.us, %for.inc.us
  %indvars.iv47 = phi i64 [ %indvars.iv.next48, %for.inc.us ], [ 0, %while.body.us ]
  %3 = add nuw nsw i64 %indvars.iv47, %indvars.iv51
  %arrayidx20.us = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %3
  %4 = load i8, ptr %arrayidx20.us, align 1, !tbaa !5
  %arrayidx23.us = getelementptr inbounds nuw [257 x i8], ptr %s, i64 0, i64 %indvars.iv47
  %5 = load i8, ptr %arrayidx23.us, align 1, !tbaa !5
  %cmp25.not.us = icmp eq i8 %4, %5
  br i1 %cmp25.not.us, label %for.inc.us, label %for.end.us

for.end.us:                                       ; preds = %for.body.us
  %6 = trunc nuw nsw i64 %indvars.iv47 to i32
  %cmp27.us = icmp eq i32 %6, %conv7
  br i1 %cmp27.us, label %for.cond33.preheader, label %if.end30.us

if.end30.us:                                      ; preds = %for.end.us, %while.body.us
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1
  %arrayidx.us = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv.next52
  %7 = load i8, ptr %arrayidx.us, align 1, !tbaa !5
  %cmp.not.us = icmp eq i8 %7, 0
  br i1 %cmp.not.us, label %if.else, label %while.body.us, !llvm.loop !8

for.inc.us:                                       ; preds = %for.body.us
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond.not, label %for.cond33.preheader, label %for.body.us, !llvm.loop !11

while.body.lr.ph.split:                           ; preds = %while.body.lr.ph
  %cmp27 = icmp eq i32 %conv7, 0
  br i1 %cmp27, label %while.body.us25, label %if.else

while.body.us25:                                  ; preds = %while.body.lr.ph.split, %if.end30.us28
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end30.us28 ], [ 0, %while.body.lr.ph.split ]
  %8 = phi i8 [ %9, %if.end30.us28 ], [ %0, %while.body.lr.ph.split ]
  %cmp17.us27 = icmp eq i8 %8, %1
  br i1 %cmp17.us27, label %for.cond33.preheader, label %if.end30.us28

if.end30.us28:                                    ; preds = %while.body.us25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %arrayidx.us31 = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv.next
  %9 = load i8, ptr %arrayidx.us31, align 1, !tbaa !5
  %cmp.not.us32 = icmp eq i8 %9, 0
  br i1 %cmp.not.us32, label %if.else, label %while.body.us25, !llvm.loop !8

for.cond33.preheader:                             ; preds = %while.body.us25, %for.end.us, %for.inc.us
  %.us-phi.in = phi i64 [ %indvars.iv51, %for.inc.us ], [ %indvars.iv51, %for.end.us ], [ %indvars.iv, %while.body.us25 ]
  %.us-phi = trunc i64 %.us-phi.in to i32
  %cmp3437.not = icmp eq i32 %.us-phi, 0
  br i1 %cmp3437.not, label %for.end42, label %for.body35.preheader

for.body35.preheader:                             ; preds = %for.cond33.preheader
  %wide.trip.count56 = and i64 %.us-phi.in, 4294967295
  br label %for.body35

for.body35:                                       ; preds = %for.body35.preheader, %for.body35
  %indvars.iv53 = phi i64 [ 0, %for.body35.preheader ], [ %indvars.iv.next54, %for.body35 ]
  %arrayidx37 = getelementptr inbounds nuw [257 x i8], ptr %str, i64 0, i64 %indvars.iv53
  %10 = load i8, ptr %arrayidx37, align 1, !tbaa !5
  %conv38 = sext i8 %10 to i32
  %putchar17 = call i32 @putchar(i32 %conv38)
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count56
  br i1 %exitcond57.not, label %for.end42, label %for.body35, !llvm.loop !12

for.end42:                                        ; preds = %for.body35, %for.cond33.preheader
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %r)
  %add45 = add nsw i32 %.us-phi, %conv7
  %cmp4739 = icmp slt i32 %add45, %conv
  br i1 %cmp4739, label %for.body48.preheader, label %if.end58

for.body48.preheader:                             ; preds = %for.end42
  %11 = sext i32 %add45 to i64
  %sext = shl i64 %call4, 32
  %12 = ashr exact i64 %sext, 32
  br label %for.body48

for.body48:                                       ; preds = %for.body48.preheader, %for.body48
  %indvars.iv58 = phi i64 [ %11, %for.body48.preheader ], [ %indvars.iv.next59, %for.body48 ]
  %arrayidx50 = getelementptr inbounds [257 x i8], ptr %str, i64 0, i64 %indvars.iv58
  %13 = load i8, ptr %arrayidx50, align 1, !tbaa !5
  %conv51 = sext i8 %13 to i32
  %putchar = call i32 @putchar(i32 %conv51)
  %indvars.iv.next59 = add nsw i64 %indvars.iv58, 1
  %cmp47 = icmp slt i64 %indvars.iv.next59, %12
  br i1 %cmp47, label %for.body48, label %if.end58, !llvm.loop !13

if.else:                                          ; preds = %if.end30.us28, %if.end30.us, %while.body.lr.ph.split, %entry
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %str)
  br label %if.end58

if.end58:                                         ; preds = %for.body48, %for.end42, %if.else
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %r) #6
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %s) #6
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
