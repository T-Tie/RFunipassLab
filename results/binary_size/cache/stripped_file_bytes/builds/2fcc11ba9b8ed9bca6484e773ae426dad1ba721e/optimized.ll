; ModuleID = '<stdin>'
source_filename = "/tmp/tmplrqaud1a.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: mustprogress norecurse uwtable
define dso_local noundef i32 @main() local_unnamed_addr #0 {
entry:
  %q = alloca [256 x i8], align 16
  %p = alloca [256 x i8], align 16
  %w = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %q) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %p) #6
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %w) #6
  %call = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %q)
  %call2 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %p)
  %call4 = call i32 (ptr, ...) @__isoc23_scanf(ptr noundef nonnull @.str, ptr noundef nonnull %w)
  %call6 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %q) #7
  %conv = trunc i64 %call6 to i32
  %call8 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %p) #7
  %call8.fr = freeze i64 %call8
  %conv9 = trunc i64 %call8.fr to i32
  %cmp.not24 = icmp sgt i32 %conv, 0
  br i1 %cmp.not24, label %for.body.lr.ph, label %if.else

for.body.lr.ph:                                   ; preds = %entry
  %0 = load i8, ptr %p, align 16, !tbaa !5
  %cmp1520 = icmp sgt i32 %conv9, 1
  br i1 %cmp1520, label %for.body.us.preheader, label %if.else

for.body.us.preheader:                            ; preds = %for.body.lr.ph
  %1 = add i64 %call8.fr, 4294967295
  %2 = and i64 %1, 4294967295
  %wide.trip.count = and i64 %call6, 2147483647
  %arrayidx18.le.us = getelementptr inbounds nuw [256 x i8], ptr %p, i64 0, i64 %2
  br label %for.body.us

for.body.us:                                      ; preds = %for.body.us.preheader, %for.inc29.us
  %indvars.iv = phi i64 [ 0, %for.body.us.preheader ], [ %indvars.iv.next, %for.inc29.us ]
  %arrayidx11.us = getelementptr inbounds nuw [256 x i8], ptr %q, i64 0, i64 %indvars.iv
  %3 = load i8, ptr %arrayidx11.us, align 1, !tbaa !5
  %cmp13.us = icmp eq i8 %0, %3
  br i1 %cmp13.us, label %for.body16.us.preheader, label %for.inc29.us

for.body16.us.preheader:                          ; preds = %for.body.us
  %4 = load i8, ptr %arrayidx18.le.us, align 1, !tbaa !5
  %5 = add nuw nsw i64 %2, %indvars.iv
  %arrayidx21.le.us = getelementptr inbounds nuw [256 x i8], ptr %q, i64 0, i64 %5
  %6 = load i8, ptr %arrayidx21.le.us, align 1, !tbaa !5
  %cmp23.not.le.us = icmp eq i8 %4, %6
  br i1 %cmp23.not.le.us, label %for.cond33.preheader, label %for.inc29.us

for.inc29.us:                                     ; preds = %for.body16.us.preheader, %for.body.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond36.not, label %if.else, label %for.body.us, !llvm.loop !8

for.cond33.preheader:                             ; preds = %for.body16.us.preheader
  %7 = trunc nuw nsw i64 %indvars.iv to i32
  %cmp3427.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp3427.not, label %for.end42, label %for.body35.preheader

for.body35.preheader:                             ; preds = %for.cond33.preheader
  %wide.trip.count40 = and i64 %indvars.iv, 4294967295
  br label %for.body35

for.body35:                                       ; preds = %for.body35.preheader, %for.body35
  %indvars.iv37 = phi i64 [ 0, %for.body35.preheader ], [ %indvars.iv.next38, %for.body35 ]
  %arrayidx37 = getelementptr inbounds nuw [256 x i8], ptr %q, i64 0, i64 %indvars.iv37
  %8 = load i8, ptr %arrayidx37, align 1, !tbaa !5
  %conv38 = sext i8 %8 to i32
  %putchar17 = call i32 @putchar(i32 %conv38)
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %wide.trip.count40
  br i1 %exitcond41.not, label %for.end42, label %for.body35, !llvm.loop !11

for.end42:                                        ; preds = %for.body35, %for.cond33.preheader
  %call44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %w)
  %add45 = add nsw i32 %7, %conv9
  %cmp4729 = icmp slt i32 %add45, %conv
  br i1 %cmp4729, label %for.body48.preheader, label %if.end58

for.body48.preheader:                             ; preds = %for.end42
  %9 = sext i32 %add45 to i64
  %10 = and i64 %call6, 2147483647
  br label %for.body48

for.body48:                                       ; preds = %for.body48.preheader, %for.body48
  %indvars.iv42 = phi i64 [ %9, %for.body48.preheader ], [ %indvars.iv.next43, %for.body48 ]
  %arrayidx50 = getelementptr inbounds [256 x i8], ptr %q, i64 0, i64 %indvars.iv42
  %11 = load i8, ptr %arrayidx50, align 1, !tbaa !5
  %conv51 = sext i8 %11 to i32
  %putchar = call i32 @putchar(i32 %conv51)
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  %cmp47 = icmp slt i64 %indvars.iv.next43, %10
  br i1 %cmp47, label %for.body48, label %if.end58, !llvm.loop !12

if.else:                                          ; preds = %for.inc29.us, %for.body.lr.ph, %entry
  %call57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %q)
  br label %if.end58

if.end58:                                         ; preds = %for.body48, %for.end42, %if.else
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %w) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %p) #6
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %q) #6
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
